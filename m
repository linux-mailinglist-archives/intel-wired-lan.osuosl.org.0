Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB14E29238C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 10:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FD3B87605;
	Mon, 19 Oct 2020 08:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3h-qOmhupSu; Mon, 19 Oct 2020 08:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FD2087518;
	Mon, 19 Oct 2020 08:22:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 408371BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B9EC871F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oiTbQKbTMCDh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 08:22:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80090.outbound.protection.outlook.com [40.107.8.90])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42DA486F87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:22:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjKfV1G3wLJ59pKWVPhwuCR/o8+5zyfNtK8cW+qWl4Ie989nnrD77Gik9zIgKMjOOCCRbXaGpGKu87mhL67Vhyi0eHMKvpw2o7lbU1yc+ugiDKrz3HcaFFBYDyH+8Qxo+JtvsHNDoxiGdhdqHwGLTEHTXo2lAJVcKyN09trNmt5ITM2TgtRDY5+tpvuqPQ1foSt25XVK2YDiR/MyB3aPKYmk9V4mW28yyib3CGJ28px68PrjFJ3iJSgislfMpqArkM489sItbnGb3KXGkb8T6NzDObG+oqWUQsagWA2Duivst4AYZOeDUpBwNNRomXUcn/yuq4AWgLVEdBzSyQzKkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ML1Jr4rpGhlSJnhscDV85+BFh0iJabHWLoHDPCVXwQ=;
 b=ANMqR6ufyqZfaMBXR2Qcu8oNL46qUDXGH/8PzcEvknFcq5OmjUncG/y0nJ+HnO+YhdR+vSkAUOFGA7kvLlLEFg3+Ea5AAiX01aSv81NEo9J2Ponmm9/+3ysqYPzKzlXR/6iGzruPlNYnwp/lZp/g1ZpzOKiav6p35NBBsDzzWX/GtEgLnCL6U/NtU6mBIIDglF1Pwx1ZDd58UK3qHuucD4w6vOJaAmJwW2/3oqAY3VhshlouwyoCHWTNxHh1VXKG/g9U9tLaeLclNUBTVW/2gmGUkyIVctlwJws0+3nlMnS/To4seQ085h6nuggV9XCxiycz8RszgwwVK9+2q7tixQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ML1Jr4rpGhlSJnhscDV85+BFh0iJabHWLoHDPCVXwQ=;
 b=gS12ox6tTwUKNTGFWi88fh+HvxaxnZsWmUCLoJd1EcURgIaDqKII7CHO7cCJgk2EEsrCVPuz+A8CyQsE/HgZQn0MjY03rRJomLLbxR+cR+0AqA6W3lTvkX/ZfqK1ABYcPqMm26HNQ1d0UOiVCWPjN12gyzhlNPPwz+4yx/SW4G8=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR05MB4259.eurprd05.prod.outlook.com (2603:10a6:208:66::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.24; Mon, 19 Oct
 2020 08:05:58 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 08:05:58 +0000
From: sven.auhagen@voleatech.de
To: anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com, kuba@kernel.org
Date: Mon, 19 Oct 2020 10:05:48 +0200
Message-Id: <20201019080553.24353-2-sven.auhagen@voleatech.de>
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
 15.20.3477.23 via Frontend Transport; Mon, 19 Oct 2020 08:05:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ba4a0a7-4c25-4cdd-2de8-08d87405cfb0
X-MS-TrafficTypeDiagnostic: AM0PR05MB4259:
X-Microsoft-Antispam-PRVS: <AM0PR05MB4259D5916ED4BE1323EC8462EF1E0@AM0PR05MB4259.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:431;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IxdPDmFGPNNFemYt5EeysO/gQahWteQoYpEYfGDPmd79AvXqOKENH3TJ5xUwVkWX7I9E/tao+2seXlRn3dMGwP5tgoPMsINtsruste/W1Ha6b46t8tlcGzizYgVt9NYYDEDwKA/kZsQO//PL/4adrSM3ZEIh75P6H9iXbYjcHdZbEj2WcBOsCR3vV3uiGvlpVJLLzRJzhcJNCPUsZAVoxTYi/gx8Hqfa4O06NCAtG2PiRk2ZufGuroU1fKaffQ+XDHsx9DCQxL4ShZ24lfIF6ScTfGcl9Z9pinAd2OBm0tptpkzPnOLOH57FdD3Ouo/F
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39830400003)(376002)(136003)(396003)(346002)(366004)(52116002)(956004)(2616005)(16526019)(36756003)(6506007)(186003)(5660300002)(6486002)(4744005)(8936002)(9686003)(316002)(26005)(6512007)(8676002)(7416002)(83380400001)(6666004)(4326008)(1076003)(2906002)(478600001)(66476007)(66946007)(66556008)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: U4VD7dzAZLVH2YJNjfLyq8E9H1j3muX9FQswV3q5Z0eYpt4YxZC98GYV72WO2ueV34kiuKg036tuikUYIhkD00OKBoW9vI9Zk1bPUAA6NwCzzflQlWy1HWkN6bd0sZVw+VvzZPlgpflRshYTvj+iwTT+VpyGlyS/rF5bR6hawacqSHEEkhnmfJWBGW/eCB1ef4tPKsMKI6JtlKwUWEw0UibcSFNBJ1diXHCs79XT9WY84vo464e/VnNx1mWSX+w92LetA7nIFD5MNAuSMdX3V+0nGQaZEW3QE8hXSTgfBH/Nf65e7RIHqGHE4mLZb5fm6WJzmlRIBOO0LoJTRKy2OZUtn2xsgPCcWroFmFhyHwG619R6+8b+i5QXwBANRsIxcve0geuA6ZFOPpP/NzyAZb1BrDYSue/uyYnlV8qFQ/lrwFe3PvByl+7hVcUkLYslBCJgcWfvAHZxDMAaSNbRdLyATV5ZQCdWH/iWJB4l1h0Bz+pS8xh7LASGY8HSeV5c0OJvjo2zMeDo2dHRMwYLFkeej1Hktp8eiCaEZMJCq4wQNqsxS5IhhvUlUN7xFdesq1dsBZd9cEE/OtnHaB9trj0yQ9AlwGoDOIDGsk8EdiVZV6DT6nA/MKmPy74CqgDkgFY3eTZnSBvMmtDEt/Xmaw==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba4a0a7-4c25-4cdd-2de8-08d87405cfb0
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2020 08:05:58.4030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gdsc2JMUj22NFgZcDiBZbyXcrm8liYJ6NAwK2CW0biX1gjJaT4MtLGf5xVHlRa5/OrnDs1I8j+OkJDne9xDJk+8jvcpW3ehW5kKk0/+L0Ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4259
Subject: [Intel-wired-lan] [PATCH net v3 1/6] igb: XDP xmit back fix error
 code
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

The igb XDP xmit back function should only return
defined error codes.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 5fc2c381da55..08cc6f59aa2e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2910,7 +2910,7 @@ static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 	 */
 	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
 	if (unlikely(!tx_ring))
-		return -ENXIO;
+		return IGB_XDP_CONSUMED;
 
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
