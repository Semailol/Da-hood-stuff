game:GetService('Players').LocalPlayer.Chatted:Connect(function(v)
    if v == 'TUBULAR!' then
        game:GetService('Workspace'):FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL'):FindFirstChildWhichIsA('Sound').Volume = math.huge;
        game:GetService('Workspace'):FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL'):FindFirstChildWhichIsA('Sound').Playing = true;
        for i = 1, 26 do
            wait();
            workspace:FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL').CFrame = workspace:FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL').CFrame + Vector3.new(0, 1, 0);
        end;
        wait(5);
        game:GetService('Workspace'):FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL'):FindFirstChildWhichIsA('Sound').Playing = true;
        for i = 1, 26 do
            wait();
            workspace:FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL').CFrame = workspace:FindFirstChild('MAP'):FindFirstChild('EVIL_SPECIAL').CFrame + Vector3.new(0, -1, 0);
        end;
    elseif v == 'HACKERS_'then
        for i = 1, 100 do
            wait();
            workspace:FindFirstChild('MAP'):FindFirstChild('SPECIAL_BRIDGE').Size = workspace:FindFirstChild('MAP'):FindFirstChild('SPECIAL_BRIDGE').Size + Vector3.new(1, 0, 0);
        end;
        wait(5);
        for i = 1, 100 do
            wait();
            workspace:FindFirstChild('MAP'):FindFirstChild('SPECIAL_BRIDGE').Size = workspace:FindFirstChild('MAP'):FindFirstChild('SPECIAL_BRIDGE').Size - Vector3.new(1, 0, 0);
        end;
    end;
end);