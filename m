Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 019141234A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2019 19:21:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B42CF875BB;
	Tue, 17 Dec 2019 18:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3D0SBZdb1vW8; Tue, 17 Dec 2019 18:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E0EE875E0;
	Tue, 17 Dec 2019 18:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D46E01BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 16:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B42C785205
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 16:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juKG2m3g2X64 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2019 16:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70047.outbound.protection.outlook.com [40.107.7.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6554C82492
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 16:35:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2UojAiDsy05J8kA9Ldu7b/TyjdpZIMJW/vXJYsyO+UIDXU1UoCunBTh3FOhc1YNodMCvnwC4yerPRx5bvKU9F4PCU56qky2KAay68IfeOvCGZHUMjA09pBUv359RRnEoZ65Vv3q81w2BTkR/k6BzdhOixdY45zt8N7nSGigTapGUXoZV9BzWyezyJWPMQy0nqQ0qC4Wu6AZKXHk0xHSsCGYnHed/43ZmZKnraHu5cCBRyufGNvBaIuy2x2fS6o5zuDOJulVM7kr9nB0Yo9BrT/jrd1eXiR1tjM/0sHnGfmPqgxpBq33A8Fxmu1/oSqGjej/Oo2fqkkcXCu1aEWC+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FbGVRrWKgt/aiHjekJVSyf+v0jxpLu9iTbYLzOJK+4=;
 b=QPQhL0sJtqFQ7vovwys5FsP90IZLAM78g/PB1pK17KFr3NBsbGmIbsUqkCWcKVN+mAizxKN0UERscG9p7ugl/fCGz40HxobGbey9puC6yvTK31YwoaWVj/Yp5kh09hyPiERl7IXsFnzeNIJ0QxIP5h9ZWkIAXoB71XwDtO7AT9b1aTgg03sbAwhlY1YPF9aHADXII5lRgcpeFMNMTk+5F2gEevw7sAjJZrGQF6D9jdrJEshf81t3rno0gSjDQgQzCEOHgZHXUrXzFKgxhxnQ0VJ0EbVU8CVACzNAaYEl+AKxSLtO6gPIyhIJYazpzBiERF/IzJiqVGOukJwIyA6RKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FbGVRrWKgt/aiHjekJVSyf+v0jxpLu9iTbYLzOJK+4=;
 b=VUMW68VcWbz6YVr8I6kl+Cm/vF7X0U1yUjNf7mjdGijS9Shhm4KI8Qe/ciqWLLGcHpi/xlLhbH0Mnt7DGS1yElc1eLTS2HWvi+i+Y5gpOPVvD21oPCTSJAJrBv9RjkqhKTkAno4FxLXLtrq74uJU9rs6iWAYfXyF6ZtAIXOIAHw=
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com (20.178.119.159) by
 AM0PR05MB4259.eurprd05.prod.outlook.com (52.134.126.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 16:20:44 +0000
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::259f:70b4:dab1:8f2]) by AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::259f:70b4:dab1:8f2%5]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:20:44 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, Magnus Karlsson
 <magnus.karlsson@intel.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH bpf v2 2/4] net/mlx5e: Fix concurrency issues between
 config flow and XSK
Thread-Index: AQHVtPXuHjKFWBVcckaSWrxy0C/Tdw==
Date: Tue, 17 Dec 2019 16:20:44 +0000
Message-ID: <20191217162023.16011-3-maximmi@mellanox.com>
References: <20191217162023.16011-1-maximmi@mellanox.com>
In-Reply-To: <20191217162023.16011-1-maximmi@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0106.eurprd02.prod.outlook.com
 (2603:10a6:208:154::47) To AM0PR05MB5875.eurprd05.prod.outlook.com
 (2603:10a6:208:12d::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [94.188.199.18]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5a461aa0-de15-4050-fb58-08d7830d10fa
x-ms-traffictypediagnostic: AM0PR05MB4259:|AM0PR05MB4259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR05MB4259E7C61828FA402BF035BDD1500@AM0PR05MB4259.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(346002)(396003)(39860400002)(199004)(189003)(54906003)(26005)(66556008)(6506007)(110136005)(66476007)(2906002)(7416002)(64756008)(186003)(5660300002)(66446008)(36756003)(52116002)(1076003)(8676002)(81166006)(71200400001)(86362001)(81156014)(6486002)(107886003)(2616005)(478600001)(316002)(66946007)(6512007)(8936002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4259;
 H:AM0PR05MB5875.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0uZ/Mel7IdwKMb1Jq9WBVJErdCyQrQ4++TB8NwfwtNBkGxeBBNVgM2dhPhqpjco8y3Vps+rMAk/CoPGa8cxUXRw1nskFQyDJvc5cZa8Yq+MjTPJ+jNKQfZzixCRfM7A5q3PIlgpyfnFFhYGkpmdiW5R1NW3oUFWfMxTVbNkGcjUxlxJuIn8skXGxNtBfkjm/A031LyXJq0Sss9uvd02jVlnqmh3z06hcLrFgV6C5wdOBhNYsKtxeXDgN7aWCWcgVpftD3YKDKDnGNN05Hp2r6DJYz7ljYe8nbm1c5CcE6j33TtnxZ2NO2TFmDsbLZWMehno9efxaeAeJ/Y/bhyJA7w9hoN/cSCMLeZTnC0PqNsXXUlJy0dbMvX6kM/R1sTTR0VhRSRg945+D9bJ1ai5dQPJY5WnfcSJfiy0kwKRnZemsUPw29V4iqt8pHHlqF8r8
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a461aa0-de15-4050-fb58-08d7830d10fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:20:44.0970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/Un0KQukfTGgkC+qS0IVI9E0h0f6SwH4AEqVx11MSQ6aASBhn1yz3TFYSyXsIk2INA+/rhtqmQPgp2WAGUVlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4259
X-Mailman-Approved-At: Tue, 17 Dec 2019 18:20:49 +0000
Subject: [Intel-wired-lan] [PATCH bpf v2 2/4] net/mlx5e: Fix concurrency
 issues between config flow and XSK
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
index 2c16add0b642..9c8427698238 100644
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
index 4980e80a5e85..4997b8a51994 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -3000,12 +3000,9 @@ void mlx5e_timestamp_init(struct mlx5e_priv *priv)
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
@@ -3020,8 +3017,6 @@ int mlx5e_open_locked(struct net_device *netdev)
 	return 0;
 
 err_clear_state_opened_flag:
-	if (is_xdp)
-		mlx5e_xdp_set_closed(priv);
 	clear_bit(MLX5E_STATE_OPENED, &priv->state);
 	return err;
 }
@@ -3053,8 +3048,6 @@ int mlx5e_close_locked(struct net_device *netdev)
 	if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
 		return 0;
 
-	if (priv->channels.params.xdp_prog)
-		mlx5e_xdp_set_closed(priv);
 	clear_bit(MLX5E_STATE_OPENED, &priv->state);
 
 	netif_carrier_off(priv->netdev);
@@ -4371,16 +4364,6 @@ static int mlx5e_xdp_allowed(struct mlx5e_priv *priv, struct bpf_prog *prog)
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
@@ -4415,7 +4398,7 @@ static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
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
