using Plots, LaTeXStrings
pgfplotsx()

# PlotSettings
default(dpi=600)
default(size=(500,350))

time = 0:24:120

ITOYI001 = [51.2536352
47.5458344
36.8059976
36.102794
13.4511144
3.3079352]

ITOYI002 = [51.2536352
33.3539072
29.710034
21.5273012
11.0179912
2.4865624]

ITOYI006 = [51.2536352
50.2307936
29.9977082
18.0752108
8.5538728
3.8581]

ITOYIV001 = [51.2536352
29.1986132
22.3263962
15.8697086
13.6370856
3.0522248]

ITOYIV002 = [51.2536352
41.2809296
32.6187398
26.9611472
14.551444
5.0359176]

ITOYIV005 = [51.2536352
26.7054368
15.7098896
14.5591928
5.5008456
1.7504264]

ITOYIII001 = [51.2536352
39.6827396
35.6553008
29.1346856
22.377732
5.3613672]

ITOYIII004 = [51.2536352
41.6005676
32.7146312
27.6963146
17.186036
3.8813464]

ITOYIII006 = [51.2536352
35.5274456
24.3081518
23.317274
15.713764
5.8882856]

pt1 = plot(time,ITOYI001, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYI001",
    ylabel=L"ATR\hspace{2mm}(g\hspace{1mm}{\cdot}\hspace{1mm}L^{-1})",
    xlabel=L"Time\hspace{2mm}(h)", xlim=(0,120), ylim=(0,60),
    xtickfont=font(10),ytickfont=font(10),guidefont=font(10),
    legend=:outerright)

plot!(time,ITOYI002, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYI002")
plot!(time,ITOYI006, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYI006")
plot!(time,ITOYIV001, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYIV001")
plot!(time,ITOYIV002, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYIV002")
plot!(time,ITOYIV005, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYIV005")
plot!(time,ITOYIII001, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYIII001")
plot!(time,ITOYIII004, marker=:auto, linewidth=1.5, framestyle=:box, lc=:auto, label="ITOYIII004"

display(pt1)
savefig("Figure 1b.png")
savefig("Figure 1b.pdf")
