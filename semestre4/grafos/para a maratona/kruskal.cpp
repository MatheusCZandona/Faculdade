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

//kruskal com dsu

void make_set(int v, vector<int>&parent, vector<int>&rank) {
	parent[v] = v;
    rank[v] = 0;
}

int find_set(int v, vector<int>&parent, vector<int>&rank) {
	if (v == parent[v])
	return v;
    return parent[v] = find_set(parent[v], parent, rank);
}

void union_sets(int a, int b, vector<int>&parent, vector<int>&rank) {
	a = find_set(a, parent, rank);
    b = find_set(b, parent, rank);
    if (a != b) {
		if (rank[a] < rank[b])
		swap(a, b);
        parent[b] = a;
        if (rank[a] == rank[b])
		rank[a]++;
    }
}


int main(int argc, char *argv[]) {
	cin.tie(0)->sync_with_stdio(0);
	int n, m;
	cin >> n >> m;

		priority_queue<tuple<int, int, int>, vector<tuple<int, int, int>>, greater<tuple<int, int, int>>> q;//distance from q.second to q.third is q.first

		vector<int> parent(n+1); //for dsu struct
		vector<int>rank(n+1); //for dsu struct

		for(int i = 0; i <= n; i++){
			make_set(i, parent, rank);
		}

		for(int i = 0, j, k, l; i < m; i++){
			cin >> j >> k >> l;
			q.push({l,j,k});
		}
	
	
		int cont = 0;
		ll soma = 0;
		while(!q.empty()){
			auto [dist, x, y] = q.top();
			q.pop();
	
			if(find_set(x,parent, rank) != find_set(y,parent, rank)){
				cont++;
				soma += dist;
				union_sets(x,y,parent, rank);
			}
			if(cont == n-1)break;
		}
		
        bool v = 1;
		for(int i = 2; i <= n; i++){ 
			if(find_set(1,parent,rank) != find_set(i,parent,rank)){
				v = 0;
				break;
			}
		}
		if(!v){
			cout << "impossivel" << endl;
			return 0;
		}
		
		cout << soma << endl;
	

	return 0;
}