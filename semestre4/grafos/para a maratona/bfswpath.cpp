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
 
int main(int argc, char *argv[]){
	cin.tie(0)->sync_with_stdio(0);
	int n, m;
	cin >> n >> m;
	vector<vector<int> > a(n+1);
	for(int i = 1, c, b; i <= m; i++){
		cin >> b >> c;
		a[b].pb(c);
		a[c].pb(b);
	}
	queue<int>q;
	vector<bool>seen(n+1);
	vector<int>father(n+1, -1);
	
    q.push(1);
	seen[1] = 1;
	while(!q.empty()){
		int x = q.front(); q.pop();
		
		for(auto &i : a[x]){
			if(seen[i]) continue;
			q.push(i);
			father[i] = x;
			seen[i] = 1;
		}
		if(x == n) break;
	}

	if(!seen[n]){ //if the destiny cant be reached
		cout << "IMPOSSIBLE" << endl;
		return 0;
	}

	vector<int>p;//to track the path
	int c = n;
	while(c != -1){
		p.pb(c);
		c = father[c];
	}
	cout << p.size() << endl;//size of the path
	for(int i = p.size()-1; i >= 0; i--){
		cout << p[i] << " ";
	}
	cout << endl;
 
	return 0;
}