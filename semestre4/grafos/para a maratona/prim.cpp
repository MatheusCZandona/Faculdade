#include <stdio.h>
#include <stdlib.h>
#include <bits/stdc++.h>
#define ll long long
#define ull unsigned long long
#define endl '\n'
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()
#define pb push_back
#define rb pop_back
#include <string.h>

using namespace std;

int main(int argc, char *argv[]) {
	cin.tie(0)->sync_with_stdio(0);
	int n, m;
	cin >> n >> m;
	vector<vector<pair<int, int>>>g(n+1); // from node g[i] to j -> g[i](j, w) with weight w
	priority_queue<tuple<ll, int, int>, vector<tuple<ll, int, int>>, greater<tuple<ll, int, int>>> q;//distance to q.second is q.first
	vector<int>d(n+1, 1e9);//distance vector
	vector<bool>seem(n+1, 0);// seem vector
	vector<int> father(n+1, -1); // in case to track the sortest path
	for(int i = 0, j, k, l; i < m; i++){
		cin >> j >> k >> l;
		g[j].pb({k, l});
		g[k].pb({j, l});
	}

	d[1] = 0;
    q.push({0, 1, -1});

	
	//para pegar a distancia do nó de origem pra outro basta tirar os 2 dist + d[parent] de comentário

	//deste jeito se soma o peso de todas arestas da MST, logo, a distancia total das arestas
	while(!q.empty()){
		auto [dist, x, parent] = q.top();
        q.pop();

        if (seem[x]) continue;
        seem[x] = true;
        father[x] = parent;
		//if(parent != -1) d[x] = dist + d[parent];
		d[x] = dist;

        //cout << "===============" << endl;
        //cout << "Processando no " << x << " com distancia " << dist << endl;

        for (auto &[to, w] : g[x]) {
            if (!seem[to] && w < d[to]) {
                //d[to] = w + d[x];
				d[to] = w;
                q.push({w, to, x});
                //cout << "  -> add " << to << " com peso " << w << endl;
            }
        }

	}

	bool v = 1;
	for(int i = 1; i <= n; i++){ 
		//cout << "pai de " << i << " = " << father[i] << endl; 
		if(d[i] == 1e9 && father[i] == -1){
			v = 0;
			break;
		}
	}

	if(!v){
		cout << "impossivel" << endl;
		return 0;
	}

	ll soma = 0;
	for(int i = 1; i <= n; i++){ 
		soma += d[i];
		//cout << "distancia de 1 ate " << i << " = " << d[i] << endl; 
	}
	
	cout << soma << endl;

	return 0;
}