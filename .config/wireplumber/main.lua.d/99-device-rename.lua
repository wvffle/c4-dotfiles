-- Rename Main Output
table.insert(alsa_monitor.rules, {
  matches = {
    {
      { "node.name", "equals", "alsa_output.platform-sound.hdmi-stereo" },
    },
  },
  apply_properties = {
    ["node.description"] = "Microlab SOLO9C",
  },
})

