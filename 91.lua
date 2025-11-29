import React, { useState } from 'react';

const CLIMB_SCRIPT = `-- 可通过 delta 注入器动态注入的人物爬墙脚本
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

local climbing = true

-- 持续将 Humanoid 的状态置为“Climbing”
local function forceClimb()
    if humanoid and climbing then
        humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
    end
end

-- 每 0.1 秒强制保持 Climbing 状态
local heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
    forceClimb()
end)

-- 可选：提供移除/停止机制，便于 delta 注入器管理
local function stopClimbing()
    climbing = false
    if heartbeat then heartbeat:Disconnect() end
end

-- 导出/绑定 stopClimbing 方便外部调用
_G.StopClimbingDelta = stopClimbing`;

const DeltaPanel = ({ title = "Delta 注入 UI 面板", onClose }) => {
  const [copied, setCopied] = useState(false);

  const handleCopy = () => {
    navigator.clipboard.writeText(CLIMB_SCRIPT);
    setCopied(true);
    setTimeout(() => setCopied(false), 1200);
  };

  // 示例注入函数，可替换为实际 delta 注入器 API
  const handleInject = () => {
    alert('请将脚本粘贴到你的 delta 注入器环境并执行。\n（这里是交互示例，可以根据实际 delta 注入器接口定制）');
  };

  return (
    <div style={{
      position: 'fixed',
      right: '20px',
      top: '20px',
      width: '400px',
      background: '#fff',
      border: '1px solid #666',
      borderRadius: '8px',
      boxShadow: '0 2px 8px rgba(0,0,0,0.15)',
      zIndex: 9999,
      padding: '20px'
    }}>
      <div style={{
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        marginBottom: '12px'
      }}>
        <span style={{ fontWeight: 'bold', fontSize: '18px' }}>{title}</span>
        <button style={{ cursor: 'pointer' }} onClick={onClose}>关闭</button>
      </div>
      <div style={{ marginBottom: '12px' }}>
        <div>将以下 Lua 脚本通过 delta 注入器执行后，人物会持续保持爬墙（Climb）状态：</div>
      </div>
      <pre style={{
        background: '#f7f7f7',
        padding: '12px',
        borderRadius: '6px',
        fontSize: '14px',
        lineHeight: '1.45',
        maxHeight: '250px',
        overflow: 'auto',
        marginBottom: '10px'
      }}>
        {CLIMB_SCRIPT}
      </pre>
      <div style={{ display: 'flex', gap: '10px' }}>
        <button onClick={handleCopy}>
          {copied ? '已复制!' : '复制脚本'}
        </button>
        <button onClick={handleInject}>
          一键注入（示例按钮，无实际注入）
        </button>
      </div>
    </div>
  );
};

export default DeltaPanel;
