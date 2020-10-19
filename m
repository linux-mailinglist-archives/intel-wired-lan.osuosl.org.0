Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA83292385
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 10:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C486875FF;
	Mon, 19 Oct 2020 08:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-VRb9e+zrEs; Mon, 19 Oct 2020 08:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CC32875E0;
	Mon, 19 Oct 2020 08:20:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25EEE1BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 229648728E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tvfvJs9YZESr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 08:20:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2090.outbound.protection.outlook.com [40.107.20.90])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8B6686F87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:20:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=er+fDsWo6/Qu21qBB2OiUGwU9l5UV1uaZGauukgrHhnPhxSJ9h1Pa9GiTJRoeGobV/u8Y1/3i3HZEBzgY6JhZjSQ40QaVrqzwBhtRsoJNL3VXZ66NVuLrBqeLr0FDOEn5aXJsY9BAf4iDeycIITLGpQqeU6lkKCBgOGYVe13Sm8OfdDT+jVCkUlD9XZsG72CrpzuqHkKZB/3ZXki3TYjI1LCMSTDLjQOK1Q2Qxycl2uGnlLSX0QuPLgRvYVFtiUdUWSenMMmSLg9HeotC1maOv7nFIB6M6d8ITeKl0Dm49fMuCnT8yVa4zNYvbpPo6bUNYExD4wfKUtiEwzVM7Z6gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6xKBZoE7AJ/CrimoPVLbhWS2WOk2RZbITZ1BIju66eY=;
 b=jJB2SRhRZtT+pqh/OS8p/hQvON4vX5RunjNP+IbgP/+04eF1YuUsWnnO6e5gmVZPOaBs7t1IohWG3Xnxu7Uy9L54wIcYVsVU1xLXMQ26yrzNFAnXf+Ya6+KnYdhavyY+sDpXYLLUiuqvA1L0Xk/Fnrx07A4811ksSv6+LXyRAzQGx990wgelyNgwVC1ChSKydagaRgo8nczvV9/DDWrhIDgr64PZmAQosg7e4rWFornEoKpgE6OYo8DH+OPwMzinWgvXa3paJ5rKhsEC8Y0CMwi00aRHdTjn1hvhW+jpys64gAs3iO2mXs4OQ2A8yZyNhz38eS/eQK/qhdIhrp0CFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6xKBZoE7AJ/CrimoPVLbhWS2WOk2RZbITZ1BIju66eY=;
 b=O5hCEhcuTZq2c5UfKONy830Dxf0/OPidnJcWOKC3rOE3PTSt9kcgx3tVOYBvO00FYT5ombwdC+hqjP9lAJzIWwK6nazPSB839UkZBzoDa/1sI5126dihb/VlHOKyX+WEimhTVo8SUyH4RvUYfRgwTn23M271MIld64VV0B8sU/o=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR05MB4403.eurprd05.prod.outlook.com (2603:10a6:208:65::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Mon, 19 Oct
 2020 08:06:02 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 08:06:02 +0000
From: sven.auhagen@voleatech.de
To: anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com, kuba@kernel.org
Date: Mon, 19 Oct 2020 10:05:53 +0200
Message-Id: <20201019080553.24353-7-sven.auhagen@voleatech.de>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20201019080553.24353-1-sven.auhagen@voleatech.de>
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
X-Originating-IP: [37.24.174.41]
X-ClientProxiedBy: AM0PR06CA0138.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::43) To AM8PR05MB7251.eurprd05.prod.outlook.com
 (2603:10a6:20b:1d4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir.hq.voleatech.com (37.24.174.41) by
 AM0PR06CA0138.eurprd06.prod.outlook.com (2603:10a6:208:ab::43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.23 via Frontend Transport; Mon, 19 Oct 2020 08:06:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93534e26-08dd-4383-9459-08d87405d25c
X-MS-TrafficTypeDiagnostic: AM0PR05MB4403:
X-Microsoft-Antispam-PRVS: <AM0PR05MB4403F7F76B2020FF3A8FB222EF1E0@AM0PR05MB4403.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mpDw5U/8k/32rW+0N8sG3cD1/MaHuH2UPEY8LYOQOcu5l+jIP7OCVS1N355ailYV3ujAFCVXH40MA5RseZrv5Sm4R/Vsm9HNT4AMVzUDOzvv3Q568EhwlVHupr4NeLYYRM7gnMY1CAHR7BB0Uf37YlwfzUyYCUeOOiVbboLSbkeMDtbg+jc+yaffodcJdM78WmYJRys/5YLP76HMa/aBGtHoN1BHtAC65YdSWUXsWuzeQkKdSDFWpjySmD/ibf95lhx+fFabkelgVvvC7bZ7l5vWlFPYbp9wo0UILYWuPgZfahO+SJi+U+Zc/E29/joa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39830400003)(366004)(396003)(346002)(36756003)(4326008)(186003)(86362001)(66476007)(66556008)(16526019)(8936002)(66946007)(2906002)(83380400001)(6512007)(8676002)(9686003)(2616005)(956004)(316002)(52116002)(5660300002)(6486002)(26005)(6506007)(478600001)(7416002)(1076003)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: g2IU9byaDk73Zdm3FYBUkmGHnIDOaRn2rxkomheVBFGfsllgfrE52wcTOMjELS5o8QXfc3+Had8ClutidyoCn7Nq2FYGh2USC+i1oz8YINvZHmd0y2a8QF9lOoCAcaOAAqUn69WJyMCpg+NH5Bb8FWrIQld9RgWDwOLInause37zTLoUt8tJ61vxwVzXYD7dtqXSWajAXZLBFOkFhCEut3c3klhAaPaTfeyF7GVJ5Rcmv/jFHTfvaZ9lagC0PqBrHmxGF6z9+OziWsgLiw6vAFSPP3uxoaEpCeUyD0s5pAG/jrniXnH6K5eUctPj8/z5dCbxl5jKn8CkOZaD92U1iVVwy6Xk3hYc/SKDPPpWCeA/03sYORb4iNLnb7GtsRq9aCbtR7aYZ1JuSuzKkJFF5wexBIW90haLwu4xleELhU9BagvBtdQ3Moxh8f6Umpl4AZyegvDP5gvoNNJXeB2wj9Yjwla0W+upqrl8jjKcGBhhdaCdTchfOhyt4JxWhF5KPzUQ4Z0G8ElZqUakaRGbpj7A7WUnRx/e+ylo0x22HyyTjiuIhgblY8XmkFKhGpOgBVlfeOBJckC0j2wMEUsaNRrwUMti23/0YcyF8jpr4Eqcmd4YKIwc23eetYbhFLuhyHgAe4dYJdFtnhywvdU3nA==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 93534e26-08dd-4383-9459-08d87405d25c
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2020 08:06:02.7608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TPfD9v3KBY9ngkXuKaLzLs/XaDeflaGe11/sDy5+vTLirf6+Q9SIqhIfRLJkkinKaU9gLZgXRBAV9uDFHXpCFwGMgTzRFE62A1H1ApUbzj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4403
Subject: [Intel-wired-lan] [PATCH net v3 6/6] igb: avoid transmit queue
 timeout in xdp path
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, davem@davemloft.net,
 sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sven Auhagen <sven.auhagen@voleatech.de>

Since we share the transmit queue with the network stack,
it is possible that we run into a transmit queue timeout.
This will reset the queue.
This happens under high load when XDP is using the
transmit queue pretty much exclusively.

netdev_start_xmit() sets the trans_start variable of the
transmit queue to jiffies which is later utilized by dev_watchdog(),
so to avoid timeout, let stack know that XDP xmit happened by
bumping the trans_start within XDP Tx routines to jiffies.

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 55e708f75187..4a082c06f48d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2916,6 +2916,8 @@ static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	nq->trans_start = jiffies;
 	ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
 	__netif_tx_unlock(nq);
 
@@ -2948,6 +2950,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
 
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	nq->trans_start = jiffies;
+
 	for (i = 0; i < n; i++) {
 		struct xdp_frame *xdpf = frames[i];
 		int err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
