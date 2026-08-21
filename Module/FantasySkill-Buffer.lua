local ClassModule = {}

-- ฟังก์ชันช่วยสร้าง Buffer
local function createSkillBuffers(skillName)
    local baseBuffer = buffer.fromstring(string.char(31, 0, #skillName, 0) .. skillName)
    local buffers = { baseBuffer }
    for i = 1, 6 do
        local tierSkillName = skillName .. "-" .. i
        local packetString = string.char(31, 0, #tierSkillName, 0) .. tierSkillName
        table.insert(buffers, buffer.fromstring(packetString))
    end
    return buffers
end

-- สร้าง Buffer แต่ละสกิล
local mageExplosion      = createSkillBuffers("ManaExplosion")
local bardInsult         = createSkillBuffers("Insult")
local bardInspiration    = createSkillBuffers("Inspiration")
local pyroBurst          = createSkillBuffers("FireBurst")
local wizardBolt         = createSkillBuffers("LightningBolt")
local wizardStorm        = createSkillBuffers("LightningStorm")
local druidWisp          = createSkillBuffers("WispSummon")
local druidAura          = createSkillBuffers("EntanglingAura")
local warlockSpirit      = createSkillBuffers("GreaterManaSpiritSummon")
local warlockConvergence = createSkillBuffers("ManaConvergance")

-- สกิล Wand
local magmaExplosion     = createSkillBuffers("MagmaExplosion")

-- จัดหมวดหมู่ Class
ClassModule.Classes = {
    ["Mage"]       = { mageExplosion },
    ["Bard"]       = { bardInsult, bardInspiration },
    ["Pyromancer"] = { pyroBurst },
    ["Wizard"]     = { wizardBolt, wizardStorm },
    ["Druid"]      = { druidWisp, druidAura },
    ["Warlock"]    = { warlockSpirit, warlockConvergence }
}

-- จัดหมวดหมู่ Wand
ClassModule.Wands = {
    ["Magma Wand"]       = { magmaExplosion }
}

return ClassModule
