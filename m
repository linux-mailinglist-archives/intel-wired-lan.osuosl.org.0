Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A0C114782
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2019 20:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 170B425E27;
	Thu,  5 Dec 2019 19:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sz-XE6QYD-x8; Thu,  5 Dec 2019 19:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72A1E25DCD;
	Thu,  5 Dec 2019 19:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE8F11BF31C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C971088307
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0OYwnqtcx4gB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2019 15:51:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10076.outbound.protection.outlook.com [40.107.1.76])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8427588299
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kp4MESk5GOn1KfMT/a2bb2LLWGA+m9AJeleKH/HZoAtw8M0iDKKIW5muVYFIHW+za1ckC9r31ekh2RiSPsPMGiKEbKRegTxAuLA4uwzv6AmdmeWjDGPX293iuhDNp6xQVIe4W7ldfWhqHHZE9Cjy+VTLz7JDuR43RVS5frUMGHasWgSQDoJeIbbZ+qVFnjJWRko+KhaygrhxLLPBeHx7qpx83GfwDUzmOASZCIZiwcz9wTj5CwPdlcvrcOtsL0EVn8EQYgsbgoJPTEdtZhll9zJG/e+S6VMGG7OxbC8zWmvmKE298OOkLEnwNDTFBk37741NwrVedWgSOLTSXjXWVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRuwKOFMmYSodP+B1zZ0c4GlihNPibah6waj40tnEb0=;
 b=A/cICxH5SRxMdW61RJYgMezRbN90HCEMT88yub2h6djsCzAOqHK4EXg8y5iN/nLqtvqMDmXJ3sMTtWkOEs9RmJ2JzV9fZ/PKabS3/sO8PPMFfZ3lXNsk7r/iDuOlCcXHVidmzhZ5PtQMi1BMjRQ4qQAhqYdbVWrcQVwCAJhtRmLwOtFeXXkFGYq7Bl7A5LPQfyHTjksxQIhAoODfLL7jNKtnmbTqPrFZlJmn8sM3WSknbV/BUmie5hXJrBK2H0wWt7Gan2pEgCMkI/ZRGKceipm/ErG1jZeCD7WtmLeiBRpqOe7+grq6JVQsxPXVrgtHHdFMNCmZB5LVlGrmJkWy3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRuwKOFMmYSodP+B1zZ0c4GlihNPibah6waj40tnEb0=;
 b=QJyhFQl8TsatcmWEdrywazg62DTZnLv8TMNI0ladoUhjIXmrgsV/Hu77dgVe5udZfoUgy+ZGZ4qF9M/f3s2FJUNjDBqV1pIrDlwNzIcJkCjpnogUvBb8HtuB2q1CFYsVa11DiyzNyjDIvrz2LVXpmNjZx8pM3bLvVUFk8y0o9zU=
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com (20.178.119.159) by
 AM0PR05MB5988.eurprd05.prod.outlook.com (20.178.117.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Thu, 5 Dec 2019 15:51:14 +0000
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::dca5:7e63:8242:685e]) by AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::dca5:7e63:8242:685e%7]) with mapi id 15.20.2516.013; Thu, 5 Dec 2019
 15:51:14 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, Magnus Karlsson
 <magnus.karlsson@intel.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH bpf 2/4] net/mlx5e: Fix concurrency issues between config
 flow and XSK
Thread-Index: AQHVq4PS6Uynt1LTbkm/KSdAo9x1xA==
Date: Thu, 5 Dec 2019 15:51:13 +0000
Message-ID: <20191205155028.28854-3-maximmi@mellanox.com>
References: <20191205155028.28854-1-maximmi@mellanox.com>
In-Reply-To: <20191205155028.28854-1-maximmi@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0044.eurprd06.prod.outlook.com
 (2603:10a6:208:aa::21) To AM0PR05MB5875.eurprd05.prod.outlook.com
 (2603:10a6:208:12d::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [94.188.199.18]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 446d4fbf-445e-4bb1-a5f4-08d7799af4f8
x-ms-traffictypediagnostic: AM0PR05MB5988:|AM0PR05MB5988:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR05MB598816DED076585640780F0ED15C0@AM0PR05MB5988.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(199004)(189003)(71200400001)(71190400001)(52116002)(305945005)(7416002)(186003)(66476007)(54906003)(99286004)(110136005)(14444005)(26005)(316002)(4326008)(6512007)(8676002)(6506007)(1076003)(8936002)(6486002)(102836004)(76176011)(107886003)(50226002)(14454004)(81166006)(2616005)(36756003)(11346002)(25786009)(81156014)(5660300002)(66946007)(66446008)(64756008)(66556008)(2906002)(478600001)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB5988;
 H:AM0PR05MB5875.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: goAXb1whxJ1vdgdwYGt2dKefcIi0A4k+qb9QOinbQYN5TuZOlVkmNcLnjMUlfNOkF2IVHf1dPFEePPNe5xr+1LCJ8hzepe5pr1Rx0UhBuGCZ8PbSfgXNbTMEncBQAHV3i6q3HvDVBkYFXfTd4vj6Z+uHId013IjtiqeFEUveYhknOizuRFiYXkAPnMHV9mWfymsiKdiXhpJd27T5oIK0EdQA3mG/l3f+IPMOrcniVsA4h+Nxhq/fBN2ec504GfRYCKXPVFPzg4/+9MwfmF6dsqSWbxogENjSWpahUB2yV5aWK0r2gTUg+dZMIfYB86mStY+fHKCxLbgMRvxljiRZczmnxP5tPLBMIrVrixqs3tvVj6fNcQjWU6Npul2e2wrQRZMXzp3jkDjbyf0wkybJCQbyQ/rdfVtRuyBGnt43TODFqMD1GVd3dffmlInNc+Js
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 446d4fbf-445e-4bb1-a5f4-08d7799af4f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 15:51:13.9784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksd4x5EI+7pvKm3HdNcriNOSKQa5wmQF9LDD+gnniQZXfNWmNz62udBOl8zJGYUu1Bje9tTwDVq18N09sBvLxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5988
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:10:00 +0000
Subject: [Intel-wired-lan] [PATCH bpf 2/4] net/mlx5e: Fix concurrency issues
 between config flow and XSK
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After disabling resources necessary for XSK (the XDP program, channels,
XSK queues), use synchronize_rcu to wait until the XSK wakeup function
finishes, before freeing the resources.

Suspend XSK wakeups during switching channels. If the XDP program is
being removed, synchronize_rcu before closing the old channels to allow
XSK wakeup to complete.

Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |  2 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.h  | 22 ++++++++-----------
 .../mellanox/mlx5/core/en/xsk/setup.c         |  1 +
 .../ethernet/mellanox/mlx5/core/en/xsk/tx.c   |  2 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c | 19 +---------------
 5 files changed, 13 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index f1a7bc46f1c0..61084c3744ba 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -760,7 +760,7 @@ enum {
 	MLX5E_STATE_OPENED,
 	MLX5E_STATE_DESTROYING,
 	MLX5E_STATE_XDP_TX_ENABLED,
-	MLX5E_STATE_XDP_OPEN,
+	MLX5E_STATE_XDP_ACTIVE,
 };
 
 struct mlx5e_rqt {
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
index 36ac1e3816b9..d7587f40ecae 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
@@ -75,12 +75,18 @@ int mlx5e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 static inline void mlx5e_xdp_tx_enable(struct mlx5e_priv *priv)
 {
 	set_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
+
+	if (priv->channels.params.xdp_prog)
+		set_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
 }
 
 static inline void mlx5e_xdp_tx_disable(struct mlx5e_priv *priv)
 {
+	if (priv->channels.params.xdp_prog)
+		clear_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
+
 	clear_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
-	/* let other device's napi(s) see our new state */
+	/* Let other device's napi(s) and XSK wakeups see our new state. */
 	synchronize_rcu();
 }
 
@@ -89,19 +95,9 @@ static inline bool mlx5e_xdp_tx_is_enabled(struct mlx5e_priv *priv)
 	return test_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
 }
 
-static inline void mlx5e_xdp_set_open(struct mlx5e_priv *priv)
-{
-	set_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
-}
-
-static inline void mlx5e_xdp_set_closed(struct mlx5e_priv *priv)
-{
-	clear_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
-}
-
-static inline bool mlx5e_xdp_is_open(struct mlx5e_priv *priv)
+static inline bool mlx5e_xdp_is_active(struct mlx5e_priv *priv)
 {
-	return test_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
+	return test_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
 }
 
 static inline void mlx5e_xmit_xdp_doorbell(struct mlx5e_xdpsq *sq)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
index 631af8dee517..c28cbae42331 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
@@ -144,6 +144,7 @@ void mlx5e_close_xsk(struct mlx5e_channel *c)
 {
 	clear_bit(MLX5E_CHANNEL_STATE_XSK, c->state);
 	napi_synchronize(&c->napi);
+	synchronize_rcu(); /* Sync with the XSK wakeup. */
 
 	mlx5e_close_rq(&c->xskrq);
 	mlx5e_close_cq(&c->xskrq.cq);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
index 87827477d38c..fe2d596cb361 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
@@ -14,7 +14,7 @@ int mlx5e_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct mlx5e_channel *c;
 	u16 ix;
 
-	if (unlikely(!mlx5e_xdp_is_open(priv)))
+	if (unlikely(!mlx5e_xdp_is_active(priv)))
 		return -ENETDOWN;
 
 	if (unlikely(!mlx5e_qid_get_ch_if_in_group(params, qid, MLX5E_RQ_GROUP_XSK, &ix)))
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index 09ed7f5f688b..fe1a42fa214b 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -3006,12 +3006,9 @@ void mlx5e_timestamp_init(struct mlx5e_priv *priv)
 int mlx5e_open_locked(struct net_device *netdev)
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
-	bool is_xdp = priv->channels.params.xdp_prog;
 	int err;
 
 	set_bit(MLX5E_STATE_OPENED, &priv->state);
-	if (is_xdp)
-		mlx5e_xdp_set_open(priv);
 
 	err = mlx5e_open_channels(priv, &priv->channels);
 	if (err)
@@ -3026,8 +3023,6 @@ int mlx5e_open_locked(struct net_device *netdev)
 	return 0;
 
 err_clear_state_opened_flag:
-	if (is_xdp)
-		mlx5e_xdp_set_closed(priv);
 	clear_bit(MLX5E_STATE_OPENED, &priv->state);
 	return err;
 }
@@ -3059,8 +3054,6 @@ int mlx5e_close_locked(struct net_device *netdev)
 	if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
 		return 0;
 
-	if (priv->channels.params.xdp_prog)
-		mlx5e_xdp_set_closed(priv);
 	clear_bit(MLX5E_STATE_OPENED, &priv->state);
 
 	netif_carrier_off(priv->netdev);
@@ -4377,16 +4370,6 @@ static int mlx5e_xdp_allowed(struct mlx5e_priv *priv, struct bpf_prog *prog)
 	return 0;
 }
 
-static int mlx5e_xdp_update_state(struct mlx5e_priv *priv)
-{
-	if (priv->channels.params.xdp_prog)
-		mlx5e_xdp_set_open(priv);
-	else
-		mlx5e_xdp_set_closed(priv);
-
-	return 0;
-}
-
 static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
@@ -4421,7 +4404,7 @@ static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
 		mlx5e_set_rq_type(priv->mdev, &new_channels.params);
 		old_prog = priv->channels.params.xdp_prog;
 
-		err = mlx5e_safe_switch_channels(priv, &new_channels, mlx5e_xdp_update_state);
+		err = mlx5e_safe_switch_channels(priv, &new_channels, NULL);
 		if (err)
 			goto unlock;
 	} else {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
