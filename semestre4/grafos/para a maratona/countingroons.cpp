#include <bits/stdc++.h>
#define ll  long long
#define ull unsigned long long
#define endl '\n'
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()
#define pb push_back
using namespace std;


int dx[] = {-1, 0, 1, 0};
int dy[] = { 0, 1, 0,-1};

int main (int argc, char *argv[]){
    cin.tie(0)->sync_with_stdio(0);

    int n, m;
    cin >> n >> m;
        vector<vector<char>> a(n, vector<char>(m));
        
        for(int i = 0; i < n; i++){
            for(int j = 0; j < m; j++){
                cin >> a[i][j];
            }
        }
		int cont = 0;

		for(int i = 0; i < n; i++){
			for(int j = 0; j < m; j++){
				if(a[i][j] == '#') continue;
				queue<pair<int,int>> q;
				q.push({i, j});
				while (!q.empty()) {
					int x, y;
					tie(x, y) = q.front(), q.pop();
		
					if(a[x][y] == '#') continue;//importante
					a[x][y] = '#';
		
					for(int i = 0; i < 4; i++){
						int k = x + dx[i];
						int l = y + dy[i];
		
						if(k < 0 || l < 0 || k >= n || l >= m) continue;
						if(a[k][l] == '#') continue;
						q.push({k ,l});
					}
				}
				cont++;
			}
		}
		cout << cont << endl;

    

    return 0;
}
