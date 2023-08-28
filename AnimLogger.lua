_G.Skid = "DawnoSan"
while wait() do
    for i,v in pairs(game:GetService("Players")[_G.Skid].Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
        if (v.Animation.AnimationId:match("rbxassetid")) then
            print(v.Animation.AnimationId)
        end
    end
end