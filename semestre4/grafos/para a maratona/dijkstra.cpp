#include <bits/stdc++.h>
#define ll long long
#define ull unsigned long long
#define endl '\n'
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()
#define pb push_back
#define rb pop_back
#define INF 0x3f3f3f3f
const ll INFLL = (1LL << 60);
#include <string.h>

using namespace std;

int main(int argc, char *argv[]){
    cin.tie(0)->sync_with_stdio(0);

    int n, m;
    cin >> n >> m;
    vector<vector<pair<int, int>>> g(n + 1);
    priority_queue<pair<ll, ll>, vector<pair<ll, ll>>, greater<pair<ll, ll>>> q;
    vector<ll> d(n + 1, INFLL);
    vector<bool> ma(n + 1, false);

    for (int i = 0, j, k, l; i < m; i++){
        cin >> j >> k >> l;
        g[j].pb({k, l});
    }

    d[1] = 0;
    q.push({0, 1});

    while (!q.empty()){
        auto [dist, x] = q.top(); q.pop();
        if (ma[x])continue;
        ma[x] = true;

        for (auto &[y, w] : g[x]){
            if (d[y] > d[x] + w){
                d[y] = d[x] + w;
                q.push({d[y], y});
            }
        }
    }

    for (int i = 1; i <= n; i++)cout << d[i] << " ";
    cout << endl;

    return 0;
}