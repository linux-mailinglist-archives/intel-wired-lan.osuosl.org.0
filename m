Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CBB114783
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2019 20:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A68B7884AA;
	Thu,  5 Dec 2019 19:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvPVauwbmvn9; Thu,  5 Dec 2019 19:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C04A388495;
	Thu,  5 Dec 2019 19:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29D391BF31C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 257D122E20
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGjaW8YMBCGz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2019 15:51:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr40084.outbound.protection.outlook.com [40.107.4.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 51052204C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 15:51:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1m2dE5+wLTdtPMxKju+0LENMAXZdMwJzPY5Urf1GvLfjbUKc3pKLCZkaeidTAkPtZKHsMcmPeyWzpQdMz5kFBqXVrLQh646FqCdnT5XLry8kHi4HKYtUzzPRxdTliIlH6NUrsuhZG2NNc7+aHQzaAfkLAK8WXdXElWFmcvR7fan7kWrIpycQsStEQddCzRuQLTqffWkxDAaQg0d/Ez7oqLSzoTjbWlAP162yx2l7XKgegbDqoP+iVrOyV33AFAnfZwtqzwX5ij14CQ+BEQ+BQHMs2U3k2yxTRqsSvjWTOxI8jAwxNlKpZrbbFOlPuZdS7kooAxw4UaC1AnwmsRSSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=INZQ5Ynhk1zqjEWL8bQkqXtZgjWjg25/mVjWINHHA7A=;
 b=MJyQspyNOcyH75x/NWEkTQ9Pun4ZGrLtgb9hq/kpIscgERjoG2iaC2YP/rKNJTxQokACbA7KM/86l39SpihXz/+8Iz72FduisM0JCUdBtTz+LJUylW7DpeeXAtikpFjPbs8xhDkqWqKdxa+P5S5wGuvmmpn1n9/urT77XqFSPHaygwk9JrmZOCwPWvM22ilfcaG+NF68fJYWv4dpxJzIFr9cVZwarpeWi1ybyImTpbMvTIs7tK7lOj1Nle9AFgKEB4wZsZgU7pHkHYcTTX2Ayrw+vsp2q8wq6oIatL6vmuc0N0BvuUc1iwzLgCWr73hyzLqfs1eVUnbrmA1i/rqTaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=INZQ5Ynhk1zqjEWL8bQkqXtZgjWjg25/mVjWINHHA7A=;
 b=bx4brbq+9tf1dyRjB5O6KEGCM/HCbuBgygYdbgIGV5gRwBwCBtmdx5WZSnLsIW8TFcZeCsNU6+PGicWZnX/B1UnvXGBpr5QQmrJihantUCEMr1vZuelH6yA9D3aMwbCE6K2BG8Nx90GQb/wN3VEESFlk6S5hlgjMeJBDRy1v3B0=
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com (20.178.119.159) by
 AM0PR05MB4851.eurprd05.prod.outlook.com (20.176.214.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 15:51:16 +0000
Received: from AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::dca5:7e63:8242:685e]) by AM0PR05MB5875.eurprd05.prod.outlook.com
 ([fe80::dca5:7e63:8242:685e%7]) with mapi id 15.20.2516.013; Thu, 5 Dec 2019
 15:51:16 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, Magnus Karlsson
 <magnus.karlsson@intel.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH bpf 3/4] net/i40e: Fix concurrency issues between config
 flow and XSK
Thread-Index: AQHVq4PTP1CGOF24FEqoAXqjM71N8A==
Date: Thu, 5 Dec 2019 15:51:15 +0000
Message-ID: <20191205155028.28854-4-maximmi@mellanox.com>
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
x-ms-office365-filtering-correlation-id: 54cd7592-a343-4014-5fbc-08d7799af5cf
x-ms-traffictypediagnostic: AM0PR05MB4851:|AM0PR05MB4851:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR05MB4851D0DEC9A0BAF1F6ED55CCD15C0@AM0PR05MB4851.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(366004)(189003)(199004)(6506007)(50226002)(6512007)(316002)(2906002)(81156014)(8936002)(102836004)(99286004)(8676002)(4326008)(76176011)(86362001)(305945005)(25786009)(64756008)(11346002)(2616005)(186003)(7416002)(54906003)(71190400001)(36756003)(478600001)(52116002)(14454004)(81166006)(5660300002)(66476007)(71200400001)(66946007)(6486002)(66556008)(107886003)(1076003)(110136005)(66446008)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4851;
 H:AM0PR05MB5875.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hYNR7cOb2Ra2uJ4O67sR6+URtKNTI0/xD5aLHkQwt/rIDRkOuvZXnrd77t4RX77151olIZEPXnLkn80/gHrlqBJaSn6866dXW3DJVc3uGz5NaQCdajklfilFYsCJA4vX6sqsxKCBGQEzc2lsfxXiM5owUV9Bio3DTzVPb7KwZ7srJ86YYeOClyW+v86Sq3erd5jXgnFL4jPLVOUVR6T5itqn3ktowleo7xzWgEWXzTQJJqfx807YcQQi9fC4gJVmH+DzX2tMs4SMvgGFYMlo71MIcf/IQnhOcgHD8zfMFh4T/8WHwKpM0+JCwgyZ7+mmSMCpkpAfT1ntVN079iFHLnrXDGhopCvmwRKkxPfIU8bDls61G9nuYme9LbM3z3QbiGJ/P+MtrUSoe36GxJg6+xq0noZHed/Q80uzk66FvF9A/qdwToxXvgfsd7DqEV68
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54cd7592-a343-4014-5fbc-08d7799af5cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 15:51:15.9943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WuymdsR6xRcdGffIG0iN70xAWlbkYMyaBqkkDXm7Z5tJCsLBrXpqW9GBLcuvihkkvzglqJy9Kws7SUI1oimIZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4851
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:10:00 +0000
Subject: [Intel-wired-lan] [PATCH bpf 3/4] net/i40e: Fix concurrency issues
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

Use synchronize_rcu to wait until the XSK wakeup function finishes
before destroying the resources it uses:

1. i40e_down already calls synchronize_rcu. On i40e_down either
__I40E_VSI_DOWN or __I40E_CONFIG_BUSY is set. Check the latter in
i40e_xsk_async_xmit (the former is already checked there).

2. After switching the XDP program, call synchronize_rcu to let
i40e_xsk_async_xmit exit before the XDP program is freed.

3. Changing the number of channels brings the interface down (see
i40e_prep_for_reset and i40e_pf_quiesce_all_vsi).

4. Disabling UMEM sets __I40E_CONFIG_BUSY, too.

Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 4 ++++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1ccabeafa44c..afa3a99e68e1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6823,8 +6823,8 @@ void i40e_down(struct i40e_vsi *vsi)
 	for (i = 0; i < vsi->num_queue_pairs; i++) {
 		i40e_clean_tx_ring(vsi->tx_rings[i]);
 		if (i40e_enabled_xdp_vsi(vsi)) {
-			/* Make sure that in-progress ndo_xdp_xmit
-			 * calls are completed.
+			/* Make sure that in-progress ndo_xdp_xmit and
+			 * ndo_xsk_async_xmit calls are completed.
 			 */
 			synchronize_rcu();
 			i40e_clean_tx_ring(vsi->xdp_rings[i]);
@@ -12545,6 +12545,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 		i40e_prep_for_reset(pf, true);
 
 	old_prog = xchg(&vsi->xdp_prog, prog);
+	if (old_prog)
+		/* Wait until ndo_xsk_async_xmit completes. */
+		synchronize_rcu();
 
 	if (need_reset)
 		i40e_reset_and_rebuild(pf, true, true);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index d07e1a890428..f73cd917c44f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -787,8 +787,12 @@ int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct i40e_netdev_priv *np = netdev_priv(dev);
 	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_pf *pf = vsi->back;
 	struct i40e_ring *ring;
 
+	if (test_bit(__I40E_CONFIG_BUSY, pf->state))
+		return -ENETDOWN;
+
 	if (test_bit(__I40E_VSI_DOWN, vsi->state))
 		return -ENETDOWN;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
