#include <bits/stdc++.h>
#define ll  long long
#define ull unsigned long long
#define endl '\n'
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()
#define pb push_back
#define pv(x) for(auto &i : x) cout << i << " ";cout << endl;
#define linf 0x3f3f3f3f3f3f3f3fll
using namespace std;


int main (int argc, char *argv[]){
    cin.tie(0)->sync_with_stdio(0);
 
    int tt = 1;
    //cin >> tt;
    while(tt--){
        int n, m, q;
        cin >> n >> m >> q;
        ll d[n][n];
        
        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < n; ++j) {
                if(i == j)d[i][j] = 0;
                else d[i][j] =  linf;
            }
        }

        for(int i = 0; i < m; i++){
            ll x, y, z;
            cin >> x >> y >> z;
            x--;y--;
            d[x][y] = min(d[x][y], z);
            d[y][x] = min(d[y][x], z);
        }



        for (int k = 0; k < n; ++k) {
            for (int i = 0; i < n; ++i) {
                for (int j = 0; j < n; ++j) {
                    d[i][j] = min(d[i][j], d[i][k] + d[k][j]); 
                    //if (d[i][k] < INF && d[k][j] < INF) arestas negativas
                        //d[i][j] = min(d[i][j], d[i][k] + d[k][j]); 
                }
            }
        }

        while(q--){
            int a, b;
            cin >> a >> b;
            a--;b--;
            if(d[a][b] == linf){
                cout << -1 << endl;
            }
            else cout << d[a][b] << endl;
        }

    }

    return 0;
}