function ret = select (individuals,sizepop)

fitnessl=10./individuals.fitness;

sumfitness = sum(fitnessl);
sumf = fitnessl./sumfitness;

index=[];
for i = 1:sizepop
    pick = rand;
    while pick pick == 0
        pick =rand;
    end
    for i=1 : sizepop
        pick=pick - sumf(i);
        if pick < 0
            index=[index i];
            break;
        end
    end
end

individuals.chrom=individuals.chrom(index,:);
individuals.fitness=individuals.fitness(index);
ret=individuals;