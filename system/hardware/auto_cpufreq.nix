{
  # Configure auto-cpufreq
  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        turbo = "never";
        governor = "powersave";
      };
      charger = {
        turbo = "always";
        governor = "performance";
      };
    };
  };
}
