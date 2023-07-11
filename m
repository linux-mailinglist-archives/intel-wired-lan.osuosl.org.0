Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 444B774ED38
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 13:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCB40610B3;
	Tue, 11 Jul 2023 11:49:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCB40610B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689076182;
	bh=2BjpI8PM0w8/s74/3kd2gRsSGL70VbR0rG6C5SmEoB4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EJwOKzXn1b5vVUDsXRDXa27VZbmFyg1nn3jT9rQGus6PtgYdF1uf4vo6oCEDVBU4j
	 FHCLUQjl9eeXQDGp/hWzQPYXCow6AAL9VqOdwYEa165UOnooqCIAMghQzlVyNSeSDr
	 yyMnfzt4Ch53yfn1dWJDz/0nB6NTS/f4E0wb4G+CvBT44Rjj7xPPnlg/bpaDVUfCo+
	 GN9kXT9TRUCN5TSF2U4tfsp4qN7ByL7/gTtmk3zMBaZ2/Qa6wdFED1mMmOk8dg1a/w
	 Y+VmYliHuJsHaLsi8N+mWaVXTsWA2bW2GVL3ZUJLNo7pjGc/Fq4WnuY2ClTIN0CHWK
	 fmmYLCUlG/PlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KIcrfC8Schd; Tue, 11 Jul 2023 11:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3167B610AC;
	Tue, 11 Jul 2023 11:49:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3167B610AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71FDE1BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5892C400D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5892C400D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oo8xrjNaKnS7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 11:49:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5925840C29
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2091.outbound.protection.outlook.com [40.107.6.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5925840C29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mzlQb5ERTGP10W7gj7cXE72MRbbVzUZuTj3gr6vFhANanf3I0W/7nOpIeMohorTK6GQlAckZDVHUt0o4nZV0dyKHd/0X4t/vvEWkVdcAQiTik/JXV0ydhC/EK+C0xAYTct1QjfZjcQyDtzDgwS8PRcIzzkO3UmErft3EUe6Ct4nSI8/sldSEfQZ/7yWpGcXoYlHtzqsCcPaSFgmNtU1gjwZO4vf2aMnnGYFkcq/Lyt5AeAoLjLuEyDEGxvnnJCa0OEz+gE+4zByieQFjBQ90xFwkqi/vJRPNL80hl1a7c5TzYtPKZvDXhb5uCq/lMfjGSLmaDHYZ6QTT4zaUyGt4OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4R2q+UWNKXIp/1qilazVW2dpH9IY97tIbN7YT9tyhC4=;
 b=JVrthNXBx2N+qP2BvQiVB0hyTrnoBeWIKNWjieSIGfl7duBASh/kDfpixJNCdrtL4AIY6NfMuOoaSf1SuYMBPfWmbzAeEc6G+IWSBhxsMrPGhQoULVk65h1RwuQH0U85Z7PZgomOvGyrxXFtAIHuhchVmnhGqVxtv8fWN97a0JJ4SirkUpuDI/in23sj5bq72u8zLghlWPdSfmJXsrZc/uGIk4JbsZHoS9M1z63QE9lYC3sfOtDnp81fARgTXsVndeOu2zgThft7EY4n2QWYPzeaETGTNkfolywJVFBQ8cRFr5HMbZFvg6zjXrpwAmCRX7I396MTRxY83UBTs7u0hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AS4P189MB2088.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:517::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 11:49:17 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 11:49:17 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Tue, 11 Jul 2023 13:47:05 +0200
Message-Id: <20230711114705.22428-5-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
References: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
X-ClientProxiedBy: GV3P280CA0076.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::35) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|AS4P189MB2088:EE_
X-MS-Office365-Filtering-Correlation-Id: 16399e7a-3637-4477-49ba-08db8204db14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k7iUUaJL+6wfxR6ipUYGz+1U3Lcu1HeFSIo6jNqSu7qx2H/+G8uLZQ77ppkZW1+v3zpySm1YmHT+sB6HIxoI6wZOWQau/NuucDd4Mvj7NFJMcYbpIRDJbe7EoR6wVtqwRUaJCZf8DWoOfiRt2y7RVWJu5TXxelzyV/v0D9dBSqcCsbrTof/pxTJUUXTHdN2vfFzUJFkJJzb4Jk0Fhy2LWv4kF+uRYzWIfhOcNVgkaSsi+PKz0suNpv+bAMmkyf9yeGsRlHlMajpvEQ5lqTq5xuAyKW4PIzwXPvjZAu39iF7IxBv72ZaKgvL4IZXYF8j/hcS32LFvZBwsQ/6idzz2FyWXEep5grOF6FDdFeZCD8BA+QvTsXROSoFHo6FCRRTItRo5IhuhkIBquikDRae00B3uvgqPjshmeQJUeT1X5H/E8ZCJ57eBEEYXq4gcUlCmo9CzvG97qCnLbcJ9fkccBLAJsOk3MOyq0qcKf0wsJzpLhkwOeNhuANysfUmovfmUdrjJQ55ydwO0nDJkUUwmsO/55VQMjmBoThx9jkvO4kc85++2im462EUeDihaTUc2AwkUGe79f5ODjLUxpUptgYwS1G80McIspMkeeeB2P2u3/oiIDpjK5ZDN363Ls4gsSFNjn8k51Z04pXrwaqvcej6rLqgdLR031Jsi0xW1Lw0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39840400004)(376002)(451199021)(109986019)(6486002)(4326008)(66946007)(70586007)(66476007)(66556008)(478600001)(6666004)(26005)(1076003)(6506007)(38100700002)(54906003)(41300700001)(6512007)(316002)(8936002)(8676002)(86362001)(5660300002)(7416002)(44832011)(186003)(83380400001)(2616005)(2906002)(36756003)(266003)(37730700002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5NsPLr+0ibFS9hgXNzTc1zX94clRkfOue6N63ULMeyNhjYiIJ5Bcf1KXMCBW?=
 =?us-ascii?Q?16j7v2jSOfyzqiDJ92eiBtZnvU9+Y7wAipMzO6kIrdeh+Y6hJ9WeNe3enmGV?=
 =?us-ascii?Q?Kfu3cV3mWrgExH+GSS9vBGJViGWYRKA9uMQPrZ4oRRplCTK2eWcOTq1YRS1q?=
 =?us-ascii?Q?m6zE3SLxBaEAlBkFr3+AhIF/AlwmFu2+Jbnm210leIhEvb3j4C7O0w91Z7gJ?=
 =?us-ascii?Q?UVTLggGF/crSB3BJCpeK/FBuyZzvkofltuDPHcYq8SdwB1oAPjHT5QX33gzT?=
 =?us-ascii?Q?IZe5vU1vKYbJFKH2NELO8HSqrzvjxYjW1siATfiLAEt6yKzDWuukH0G4KLM6?=
 =?us-ascii?Q?NOibMLNiCtsoIhy9txhD9LgQw70nwlLP/zkC8ThaTx634mQzqLxczPhXCz+/?=
 =?us-ascii?Q?d9tRQUAVtzfgaVDcDWnP/9kplDBf/IXL2Y9DlWA0GJ59z1LpHPTd2TzDxqlH?=
 =?us-ascii?Q?7Mii9Km7PL44W8VSLpDjx+EQgxjmBBxdu/y30QxDaYKXUhRLzvCRv3XWh4ZA?=
 =?us-ascii?Q?c1eYrOu9xcQFQKD3pQbUo0Gz0+tbqKYEoFI+IGNgGLAME1APjJ+k6E/QBkgq?=
 =?us-ascii?Q?yEETbjTMn0qgm/kRox0DwyF1oJuuHfdtyS6SbTGlFgBHPQBGQmsnZ+XrfruG?=
 =?us-ascii?Q?ZtXOGZuDMD+WWkI7bFJpQDrbOWgsUXW7PFURNdcTKdixnbVlJtJvWD6b5CR2?=
 =?us-ascii?Q?ANfP3A0sO4byABMRkSxceSala5h8In6sWr9gZ9eT/BEtjvBMegOr99qswuKF?=
 =?us-ascii?Q?a7budS9SF4L9YpsXm01RSJz/N+rTez3+fctGvOnryADdNmuGW9W1yTqsXbkI?=
 =?us-ascii?Q?8Pnsq/M1tmgPONqO8GtYTRKmBARR/8sFb3GMhTzw8LKH+vn6Lea5nH3wROGg?=
 =?us-ascii?Q?APZyEDoiUBsbxvzEBWiwKuePOlzY0zlWIrf3mazdTr+0IVb1zi2n5pEbPVtH?=
 =?us-ascii?Q?KwhzLwSLPXtbsRq5UfHr8vuXMlNP+ptXhGUpRDU+BhDoh08+Ln2E5Gieb1rS?=
 =?us-ascii?Q?3qyITXQVqbIvMdEYRhNn9R0Uu2AqazVkPN5Y9InN4qt9E9BLHBUZ/CTQ2QQN?=
 =?us-ascii?Q?D+wR3UkjnFHOT7SZGZYTGivMaZbKAGrjNUIyJepvmiy1F3q5qHjR/lfo98vS?=
 =?us-ascii?Q?3yt3OH69Ucme0iKGsDMiHIoSuJYsWQ1+5DvN+VQOta4xLjZyY9OEGxEcpkkZ?=
 =?us-ascii?Q?+GOO0kYVyVoZ9VsZHsJGYkTFAIr5GKGcFvG6qpSSIqSzlobnukby4d4Ojd04?=
 =?us-ascii?Q?7rnajYZu19F6qKmI4GEHhIPXzZ71NOpMsFo0C1j8zSvsnu1u920BiwO89bBu?=
 =?us-ascii?Q?dLRNZdKFokAnybvxhixW94YBlURqCTX3Rhr1Jb+JQML9zWj/Tl6nuc7fI3Rb?=
 =?us-ascii?Q?wI7O2dtn+KJ7579LFjsxez6uUtqmKdMVUgC4ZP1VR+25ZKYFL9V6/PV/SiXC?=
 =?us-ascii?Q?kNtynhy8IxuujhqHMhU1v+Pk9fjynmgCkhMySk4IcGO/8+Zqnz4IXR8b3meS?=
 =?us-ascii?Q?jMuY7FZOrP/fCVQx4IJKu7g5rUZNienAHVpNYP8nws5X4SqgF58NgDbIg4Y5?=
 =?us-ascii?Q?jf/Z08mOdISxMmTTul/C0vf4jUCRxyWlfsbiYoan1EyG5p2U0qEiYO7RIYh6?=
 =?us-ascii?Q?Bg=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 16399e7a-3637-4477-49ba-08db8204db14
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 11:49:17.1069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: havfMNXS2WjXKANofHDICRCkfMu/cUpViV79P7qt+hjOxU4WDiPGeEkXhbY2XoESio/ocIiXKBXDd6x13uYNZwMR08hfZpa9T8zvvkrAJCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P189MB2088
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4R2q+UWNKXIp/1qilazVW2dpH9IY97tIbN7YT9tyhC4=;
 b=ZlOKcJqcDWW7U4b2x/aV9civWylL09DNEsCZemwL7ALwKVKng3+dhjdLNqjpFMOlqXjU/Qo3XfeHwy7nc7GMqBHDwkouaCbcCW8QuJUUkFXRR4O7juMUElg2qDBX27lV2xZFlc4p/+kbhOIpQ6m6Et98W7djpsB0qplnXTp8VWU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=ZlOKcJqc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: add AF_XDP zero-copy
 Tx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for AF_XDP zero-copy transmit path.

A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
frame was allocated from the xsk buff pool, so igb_clean_tx_ring and
igb_clean_tx_irq can clean the buffers correctly based on type.

igb_xmit_zc performs the actual packet transmit when AF_XDP zero-copy is
enabled. We share the TX ring between slow path, XDP and AF_XDP
zero-copy, so we use the netdev queue lock to ensure mutual exclusion.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +
 drivers/net/ethernet/intel/igb/igb_main.c | 56 +++++++++++++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 51 +++++++++++++++++++++
 3 files changed, 100 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 39202c40116a..f52a988fe2f0 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -257,6 +257,7 @@ enum igb_tx_flags {
 enum igb_tx_buf_type {
 	IGB_TYPE_SKB = 0,
 	IGB_TYPE_XDP,
+	IGB_TYPE_XSK
 };
 
 /* wrapper around a pointer to a socket buffer,
@@ -836,6 +837,7 @@ int igb_xsk_pool_setup(struct igb_adapter *adapter,
 bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);
 void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
 int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector, const int budget);
+bool igb_xmit_zc(struct igb_ring *tx_ring);
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 8eed3d0ab4fc..db99256ff1af 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3018,6 +3018,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(!tx_ring))
 		return -ENXIO;
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return -ENXIO;
+
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
 
@@ -4931,15 +4934,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 {
 	u16 i = tx_ring->next_to_clean;
 	struct igb_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
+	u32 xsk_frames = 0;
 
 	while (i != tx_ring->next_to_use) {
 		union e1000_adv_tx_desc *eop_desc, *tx_desc;
 
 		/* Free all the Tx ring sk_buffs or xdp frames */
-		if (tx_buffer->type == IGB_TYPE_SKB)
+		if (tx_buffer->type == IGB_TYPE_SKB) {
 			dev_kfree_skb_any(tx_buffer->skb);
-		else
+		} else if (tx_buffer->type == IGB_TYPE_XDP) {
 			xdp_return_frame(tx_buffer->xdpf);
+		} else if (tx_buffer->type == IGB_TYPE_XSK) {
+			xsk_frames++;
+			goto skip_for_xsk;
+		}
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -4970,6 +4978,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 					       DMA_TO_DEVICE);
 		}
 
+skip_for_xsk:
 		tx_buffer->next_to_watch = NULL;
 
 		/* move us one more past the eop_desc for start of next pkt */
@@ -4984,6 +4993,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 	/* reset BQL for queue */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
 
+	if (tx_ring->xsk_pool && xsk_frames)
+		xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+
 	/* reset next_to_use and next_to_clean */
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
@@ -6517,6 +6529,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 		return NETDEV_TX_BUSY;
 	}
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return NETDEV_TX_BUSY;
+
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 	first->type = IGB_TYPE_SKB;
@@ -8290,13 +8305,17 @@ static int igb_poll(struct napi_struct *napi, int budget)
  **/
 static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 {
-	struct igb_adapter *adapter = q_vector->adapter;
-	struct igb_ring *tx_ring = q_vector->tx.ring;
-	struct igb_tx_buffer *tx_buffer;
-	union e1000_adv_tx_desc *tx_desc;
 	unsigned int total_bytes = 0, total_packets = 0;
+	struct igb_adapter *adapter = q_vector->adapter;
 	unsigned int budget = q_vector->tx.work_limit;
+	struct igb_ring *tx_ring = q_vector->tx.ring;
 	unsigned int i = tx_ring->next_to_clean;
+	union e1000_adv_tx_desc *tx_desc;
+	struct igb_tx_buffer *tx_buffer;
+	int cpu = smp_processor_id();
+	bool xsk_xmit_done = true;
+	struct netdev_queue *nq;
+	u32 xsk_frames = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
 		return true;
@@ -8327,10 +8346,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 		total_packets += tx_buffer->gso_segs;
 
 		/* free the skb */
-		if (tx_buffer->type == IGB_TYPE_SKB)
+		if (tx_buffer->type == IGB_TYPE_SKB) {
 			napi_consume_skb(tx_buffer->skb, napi_budget);
-		else
+		} else if (tx_buffer->type == IGB_TYPE_XDP) {
 			xdp_return_frame(tx_buffer->xdpf);
+		} else if (tx_buffer->type == IGB_TYPE_XSK) {
+			xsk_frames++;
+			goto skip_for_xsk;
+		}
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -8362,6 +8385,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 			}
 		}
 
+skip_for_xsk:
 		/* move us one more past the eop_desc for start of next pkt */
 		tx_buffer++;
 		tx_desc++;
@@ -8390,6 +8414,20 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 	q_vector->tx.total_bytes += total_bytes;
 	q_vector->tx.total_packets += total_packets;
 
+	if (tx_ring->xsk_pool) {
+		if (xsk_frames)
+			xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+		if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
+			xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
+
+		nq = txring_txq(tx_ring);
+		__netif_tx_lock(nq, cpu);
+		/* Avoid transmit queue timeout since we share it with the slow path */
+		txq_trans_cond_update(nq);
+		xsk_xmit_done = igb_xmit_zc(tx_ring);
+		__netif_tx_unlock(nq);
+	}
+
 	if (test_bit(IGB_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
 		struct e1000_hw *hw = &adapter->hw;
 
@@ -8452,7 +8490,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 		}
 	}
 
-	return !!budget;
+	return !!budget && xsk_xmit_done;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index f5133e6d5b9c..221507d5fb01 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -432,6 +432,57 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector, const int budget)
 	return failure ? budget : (int)total_packets;
 }
 
+bool igb_xmit_zc(struct igb_ring *tx_ring)
+{
+	unsigned int budget = igb_desc_unused(tx_ring);
+	struct xsk_buff_pool *pool = tx_ring->xsk_pool;
+	struct xdp_desc *descs = pool->tx_descs;
+	union e1000_adv_tx_desc *tx_desc = NULL;
+	struct igb_tx_buffer *tx_buffer_info;
+	u32 cmd_type, nb_pkts, i = 0;
+	unsigned int total_bytes = 0;
+	dma_addr_t dma;
+
+	nb_pkts = xsk_tx_peek_release_desc_batch(pool, budget);
+	if (!nb_pkts)
+		return true;
+
+	while (nb_pkts-- > 0) {
+		dma = xsk_buff_raw_get_dma(pool, descs[i].addr);
+		xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);
+
+		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+		tx_buffer_info->bytecount = descs[i].len;
+		tx_buffer_info->type = IGB_TYPE_XSK;
+		tx_buffer_info->xdpf = NULL;
+		tx_buffer_info->gso_segs = 1;
+
+		tx_desc = IGB_TX_DESC(tx_ring, tx_ring->next_to_use);
+		tx_desc->read.buffer_addr = cpu_to_le64(dma);
+
+		/* put descriptor type bits */
+		cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
+			   E1000_ADVTXD_DCMD_IFCS;
+
+		cmd_type |= descs[i].len | IGB_TXD_DCMD;
+		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_desc->read.olinfo_status = 0;
+
+		total_bytes += descs[i].len;
+
+		i++;
+		tx_ring->next_to_use++;
+		tx_buffer_info->next_to_watch = tx_desc;
+		if (tx_ring->next_to_use == tx_ring->count)
+			tx_ring->next_to_use = 0;
+	}
+
+	netdev_tx_sent_queue(txring_txq(tx_ring), total_bytes);
+	igb_xdp_ring_update_tail(tx_ring);
+
+	return nb_pkts < budget;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
