while wait() do
    for _,v in pairs(game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
        if v:IsA('Part') then
            if (v.Position - game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 12 then
                wait(0.01);
                fireclickdetector(v:FindFirstChildOfClass('ClickDetector'));
            end;
        end;
    end;
end;