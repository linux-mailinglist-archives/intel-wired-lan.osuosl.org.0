Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E889C2AF770
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 18:38:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0A8387176;
	Wed, 11 Nov 2020 17:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cc0sA4i+BHbM; Wed, 11 Nov 2020 17:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03AB987195;
	Wed, 11 Nov 2020 17:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 130821BF322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A7072DEC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3ujpEcWu35j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 17:37:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2114.outbound.protection.outlook.com [40.107.20.114])
 by silver.osuosl.org (Postfix) with ESMTPS id C08FE2042E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZY7g/wXc5WtgG55Np47alQgbnMmeOQA1jXDJUv6vzyFvE7x7PU1t/IrY/IuYKuiW6pIYl4Uy5U2wDC5dLEqS6F773dI1La7mCw9213bb3984QoVN4V88m9w+vLhKlYXYqZyeBHM44bPcKy2qFGQjVdZQ6U8BlEHU4RAK+/xpvdaked76yjHSvg/nXSNwXxu0m3IwinDqVq9SVCqK3E/0QtkEMU/HrJsPMhg0Gg3yRLr+sNr6KN/zcF64Gv5NvVWwjRzNG5DZd35hICVMVrwbhaMOn5YY72JoS7faxBm66C2BDU+Deo/tA/kDQFTFvYBviyqVCHpMCL8LMTrmhrHKoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ASVDWPz8RaTBk+vB7+8fCVTfRs2E3tTi8roz6xqgeI8=;
 b=RxfadpcVr7yCmYg8paAyY7WDOsbkghwobrpCLjtSRW1g25KoYARsa582mldNXwNbooVL5uu2ByzmPuKxV2sUE6TTlzIXs/THnK36A54Nb5DZY65B2DtzPoq/VNn7wimFQ7Kv08u00Nuqr5Pja1aP0dXLnbok2+wJpomqPAZlu2BuOFJdOiMMC/ByZsueuPtmrcljpVb7gpN2HYGnOEsuCy2lTlaudA5Y4VrtHDfw89KYdyS/w9/4auRhIcJV3aXlRLtEO9A3INIklwD0rveY6Kcov9ymTCwP04Rdwi62mb+7ou9/CVq4tcfb7fjenPCmR5QAc/tDi6ZcczxtlkC1oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ASVDWPz8RaTBk+vB7+8fCVTfRs2E3tTi8roz6xqgeI8=;
 b=gBWSqlEEME5bKVEYGXbLYw4/1f+GYP72mbixrqyJc/XQn2th7Y5KRyKHQ923zK3US7ib/yXFvzEUM/kLgxfoRXQbUDzKXGxRpbTEMP3S/Lv+l8oKlbjjjmbrwqZYCjFNFiE3tqltEgMpoYDiUb7n8eIKiOmvA+AjNkFWSSbVo4A=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR0502MB3921.eurprd05.prod.outlook.com (2603:10a6:208:17::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.30; Wed, 11 Nov
 2020 17:05:01 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 17:05:01 +0000
From: sven.auhagen@voleatech.de
To: anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com, kuba@kernel.org
Date: Wed, 11 Nov 2020 18:04:53 +0100
Message-Id: <20201111170453.32693-7-sven.auhagen@voleatech.de>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20201111170453.32693-1-sven.auhagen@voleatech.de>
References: <20201111170453.32693-1-sven.auhagen@voleatech.de>
X-Originating-IP: [37.209.79.82]
X-ClientProxiedBy: FR2P281CA0013.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::23) To AM8PR05MB7251.eurprd05.prod.outlook.com
 (2603:10a6:20b:1d4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (37.209.79.82) by
 FR2P281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3564.21 via Frontend Transport; Wed, 11 Nov 2020 17:05:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cf2ab15-feb3-4e64-32d0-08d88663ed17
X-MS-TrafficTypeDiagnostic: AM0PR0502MB3921:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB392132E38D785DD47C80013DEFE80@AM0PR0502MB3921.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5CpW6J6A3xp1nouX7YzDoKKAuI3EvbZKm+Pm6rceiMfiRcY1q2wEshuO2nlbyvv16y64uq7cdrj1qEjrkMvhaKlvtZtYT6rSFyOiUAfjOvA0QQ9OuIRldn22Zb2ucbTuqThbPSB39onH5CzsQaJF2c/AxCgxMc/eDCZGEYAvnrZuZeog/ArWw7cd5uGAnJ3sohal2vbD37opTdmjDsxuV0M/l3qghfuOnGXkDIm9IzZqEDWFHkhl9jLMFFHLQasSUIWU6G+IZ8Jao4bGJ2glIy9MgiB5X4n0s1ceUnltk8b3hrmDXgcSin71ULIMJ6sNuaMCOR9IiVzTrt00/m3Ci13GFJ3YY44efPMsYRoqoCWNkZoleEn2RVGfz303FDVR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(366004)(39830400003)(376002)(16526019)(186003)(5660300002)(52116002)(69590400008)(316002)(8676002)(4326008)(66556008)(7416002)(86362001)(66476007)(66946007)(478600001)(83380400001)(9686003)(1076003)(6666004)(8936002)(26005)(956004)(6506007)(2906002)(2616005)(36756003)(6512007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: TrFf9LEZp05mrnMfCYczrd7adv1PyWU8M5ZrXK6Ipr4ip5HcksfPzYL3J1aj8hq6JkKUDAgq2IU4qvmR+hxzFkFk/983UleGZN6kAcRg/bXDb4f5u8PLVuC0oa7WrLOEBF0YCt8FKpf8pyI7fIRYdDRXuI1EwsxuNwR0mAdr2yHBdLKbONV6ZHeeGrzdMdzH4qHcxWNn9vMeXEF9yQ4OgYEM/bjUNO8oWz+ETnSOqOOY2GobwrPc4nafNohqYTgQnHg0EQp6xJsMSJGOzuAPr9iiFx5ph2gbumoMkdI3qdjLBKaJngay+trV52bAPZZ74M0LUsG3KbFJixhzNcOG7+FLKoEZ5L6H66Oqc6D2cdPIT9/zcrs6cu/htKHOVnbNF/QtyiD23KTiqZjnmO3MKs2XnOgKZyVo44b6xVyA+yjyMTMs0n32uY17y48hbJUtRQNdWRdOsl3M7JGK0/dcxFyzV+qLiqrGsFQzraHOn1cdPi+BngyCc3iWY0TZx1LRL7z4Dt1kykRr8Rfq0ldp9yfc6KMKw6eKmjW4DbvtpIAG5tAffbdfqWI3UpgsQ8M1EauUtcjI+yAOTWD0edDeuah2Dyvnh2AOaH0NzvE0dAQO4vHV+NZa43pEx5SX9R9GH5Yu5aeK28kteiK+Tb+FiQ==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf2ab15-feb3-4e64-32d0-08d88663ed17
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2020 17:05:01.3337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ICRdfNfN//IvxPmMyQlobgO+AAjI932oeYBbDmQwUGHxGIrC05g89AG3hLTLXlVW7HQX/3kk/TQi8hRpLr1b6rfVMGWDoKkL5cMuQtCK17g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB3921
Subject: [Intel-wired-lan] [PATCH v4 6/6] igb: avoid transmit queue timeout
 in xdp path
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
Cc: pmenzel@molgen.mpg.de, nhorman@redhat.com, netdev@vger.kernel.org,
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
index b6c793441585..74f0f06bedff 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2919,6 +2919,8 @@ static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
+	/* Avoid transmit queue timeout since we share it with the slow path */
+	nq->trans_start = jiffies;
 	ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
 	__netif_tx_unlock(nq);
 
@@ -2951,6 +2953,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
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
