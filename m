Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA89748792
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:14:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9427D61063;
	Wed,  5 Jul 2023 15:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9427D61063
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570089;
	bh=6uretr4Z1RrmC6D2WBIr7qgL9ezp/T/VQd0JtA0ssz0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bmh6Uo2aDnzbTT+J9R9f2ZcuMlvXuwVbxbNJYt4E2a9+FDR7BETGXPR1hcBZqRR25
	 3Oq7wcY8sTKmDHRL5SzCfer+SqCoc42P+S9V4h+WbyPb0ih6APsQWBjTKpfQe+1RD4
	 ZfITtajX3O7D6krLcJkS6dK6hcdDHhmQ4PDlB9/xTh67CK84mMq0efmxegUrTa0e1J
	 Tz9HtYB78nPWEDw1P/RfJk4nSNL37rsXx1nRzMLEAR8YrdXL5it4/KG5xUpFM6iFsK
	 UD9YRtLX5W07PACaHg1QGYfLih337Z/zTrz24Pp7P82BVkKLChyhYS13CMzaWFywOc
	 z1dr0FxLIkzBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LwSvhptfOPb; Wed,  5 Jul 2023 15:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31A3661059;
	Wed,  5 Jul 2023 15:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31A3661059
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07F321BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCB7E40967
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCB7E40967
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VE4esFNjGdad for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 09:59:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62A7A4091C
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01on2127.outbound.protection.outlook.com [40.107.15.127])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62A7A4091C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:59:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSbxb2T4XVo9Ybo/X7/bQpNhrWVzHszQy0Rlqi3QqVX6DznzrpMK4XSx6xK7Ox5bOkaxtpIBOR2YPFrE9WbdXuLwu2vtccMI/OpPDDqgFmm3FjVGdPPfOASPJG3krwbYRB1fCI5rBn+vzRVGyLXVd1m83vqCm17SaDpsytLJyKq2y4OWqSR7++Ct9g51FfcA/huiKYZKMplv4UQHaAHmZJcJRMKBICYygAWqzqd4ek/yL1q8fk2MZunVFIYc63RkD7bDHnbnrG39JTATxuxG4DYwc8Qf6UiO1BOqmDuZY5Qa/Na/0auK3g4fYnhR8AvdFk25rIPXA7O6A+xMOG4d7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJNzk6ortZTQ0/sbBAse5RTvyGBIs2ID7DgTjqYF3oE=;
 b=fUah104m7pESXscbYNGZwJyTlZPRnroGFX/OL4JAoOeh+AMaAM2XJZgYHjYefY48Z15vjd5ReWF9epvPeLaxB203jav+f1gq0hq2/mdwcfjubguyCg7oTKdMvjr6i9sNJv1O7mDq2Fl5ooth/s/MTB9oYABcChdTVk5BJJnEHro3tdeV9wQcO3fcZo672gjTD0hLFzB0PIuoOmNp7DKKPQ2FwGb44zDUNfIgQn4PQqnB7HiitiydK/FzFvylZxF1yRnZdnQxdXroKUQun+gFVsB7z9HiDpJO4RE0fCzieNl0WsHra0IkPlPV7TUNnqCwqA0LaNrWajlixYh/SJPKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AM9P189MB1571.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:306::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 09:59:22 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 09:59:22 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Tue,  4 Jul 2023 11:59:12 +0200
Message-Id: <20230704095915.9750-2-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
References: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
X-ClientProxiedBy: GV2PEPF000000FF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:1:0:9) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|AM9P189MB1571:EE_
X-MS-Office365-Filtering-Correlation-Id: 2522826c-91cd-41c3-9734-08db7c75577c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YNQdgalNqepkwmyBlHKs1yj0645vDyDOUbKXOyJLJ7LK0gOfdOxSyPO3/D6dOuMpESqkzzvXgzuN3A/uwyIplN81LL4GRF4y5HxXJ9izQ/I7RvYVNdjqHeMWYV8tixWjs99vz4lOhZVIeVyJ2Po2WQVKbRDIMmvaam77E0E6/Lbb3E6xEmQCNPFIHfrfQ5ZY245TTaKJYvJCLumxe7uEpOuYQbQ+0FiARGf6SnDVy9xXi0lb6boUppfflumwHbj8ssGsvkYRRfsmLD8gNgomkKQKkjznK6pL0HmGet/RKcLTV6T2kGDozpJ3paTv1Uixl9EtFX8bHBAhJx1QZBl5F6GouXO/Kw9Ao1jFo9q+w/eampRovSpTlLZp5RjMHDTafafICPSZeVLJTvLSDgo61nJ14ETUi2qgAjKTHWjrTLmxcB+7BGZkPDk80vhQGcEuRb7+tA5WZ/k7eXKy62Bop8F3i+Wx+1+xKQl6QzpoHBQS8G4lLUkVdICFqketuxeFGKWvHT3XmhJaD0hpt2BNjnK7bbX4j2ODPC1vvUze9JzBXBreIr8dmJyvCDpABtdvBVkRuRXUTJI4cfG3EUk9ne3bnJx8CSYt5qlWWb+dR+o00U19HsMeSKIaS3i2yTZ18SP868y6nrWUdH3i9KzIGueKTYdAns+2rrlzOMsXTp4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(376002)(39840400004)(451199021)(109986019)(2906002)(41300700001)(7416002)(5660300002)(44832011)(8676002)(8936002)(36756003)(86362001)(6512007)(6666004)(6486002)(478600001)(83380400001)(26005)(186003)(2616005)(4326008)(1076003)(66556008)(54906003)(66476007)(70586007)(6506007)(66946007)(316002)(38100700002)(266003)(37730700002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?42xiECoKgyETZqGK7HgFKdNuYIv/oqVgp95yngccjlN4P++NG1rCNlEvOqhP?=
 =?us-ascii?Q?G2sLF5Y9Nve+VbUk83kwD7xi0im6oFPJNRRSpzEXONK4DrTQ8ykUZ3sHZ1O5?=
 =?us-ascii?Q?3QARgh+bWiqC9FoHjoYFPWtc/lGKIiyZISkvH6zCrv2SyZUUdp9H5keGKFMd?=
 =?us-ascii?Q?Q+Z4jKZbv3ObKAALkEceBFVeD/rPjrVS5vM6DYKFP2Zjjl0NAER9HQdpUDpV?=
 =?us-ascii?Q?1Tph2mEBZiIQ+zJo9t79irZkw5TwIFysD1H+5wmtopczEL8z0/6YT6uFjNnF?=
 =?us-ascii?Q?oztobIXHPl3I5Owcll0SQSjIhSUI31E7nX3Bp6nCO79I7YZwY+XNrCPuzIjT?=
 =?us-ascii?Q?C7fQvRf5OBNL2MjwTyDXxhNwUJmlZIvwAq8maa+y6ooBL5vXi2X39v1udSjY?=
 =?us-ascii?Q?kOf+hzkDRTelBi/DEScHfSiCYnIC2dpmFJUTtx9rTMsIk+/bU5hZuQDpH2Bs?=
 =?us-ascii?Q?Ibym1Hgwq+LGPh2G8gSqecotd/CxG22hyN5kPup8Znny0G5zSzWfa6hvxqmz?=
 =?us-ascii?Q?6HkN89LgYVl7Ew4A/prZB/BvyZI+0djbY5y2s0yqrSSsFoOPVGdkgEDtaraO?=
 =?us-ascii?Q?yjiuN9mlPjm1RbPUiuLO5/Nlf/vPS8f4P2McAlRci7B0IQ2d+2k5MB3zLtlG?=
 =?us-ascii?Q?j5e2BJg2RTUax1euUHeIGXiB6Cvd9IJOjEJKHNNqg4jIxqd0UcHBF7I3O/la?=
 =?us-ascii?Q?MBZrNI/OlLiPhQ0juE8YpshmUVMQDU3yA0gBpwDcN1EulXb7dpTGolS4SGvp?=
 =?us-ascii?Q?lyNsnLKv3dtPm7SBbUC7LX0edrarXW8RR2dQ89iej/H2pZpxZvTn/qvL9VzN?=
 =?us-ascii?Q?ybwcTrdnOumgyahh2IYrRjSWd8VaYrRGwGQKUvE05kgEOq5PmqkUBZxjXSeK?=
 =?us-ascii?Q?aARdo6ZbsPUb/oIz9/hgPnRo3vXy3rliOPH8eQd/SAnfkzjZVuYNFdqhbrPS?=
 =?us-ascii?Q?irPjlmHbC8vEInEF7l0Nap/c/qwGKlc/liUtxgc2EzlwE5TrZOntkvz8AMo0?=
 =?us-ascii?Q?iBp5EZQ7OMo2LXUEb7xRLOoCQD/FuRQhayaokF2tnV/q5kgb7d6t5/dYc98L?=
 =?us-ascii?Q?UsoTC3fcv6Pht6qyr0fRMsa08bJoSXNoMNcLStCns1KVB7i1nQEMUOvafyU4?=
 =?us-ascii?Q?G/5iPuxdU6MgGPMXt/qAfCwPfLk/NxvOMqre7USyM6ZgrPPBn3OTQw1V9x/E?=
 =?us-ascii?Q?phk/RRKmjaZl9L1vatK1aV5hjiKJR0R5AGQq5cZzkPAt2JdY4YNd30eFlA1G?=
 =?us-ascii?Q?VEPmm3zZ0s98mtKMjCiM++kAsmC3bxM+Y0SlPklqF83aL29Ai1BFw/2PnmBv?=
 =?us-ascii?Q?7ATqPh76zJM545q7qlyE25UiCJFHPCtgVVu1bPYZueXgtePzEAZtx+FICyDp?=
 =?us-ascii?Q?jWCF/zoKNjDHDYj+GIa3jkbLmJEKAHeFas2RsBj7346bV7xb7yHjaXZcTPhX?=
 =?us-ascii?Q?t7F6vggIDb61mznKjveYzcYzgDggo77hSDBipuRQumw2mgmRIfUzU8WItc3b?=
 =?us-ascii?Q?fQMb/Bx9jyn3p8n4aS/zkhQWvmQdkMnC+wTUh4z9MYTjOhoUXxi5i5IkUdbY?=
 =?us-ascii?Q?XIMRES6nULI4Oxs+oWJdw5hRBZRBbNoQLSRWs6Mf2IfIlig2R/zZ5Tw+yAgw?=
 =?us-ascii?Q?dQ=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 2522826c-91cd-41c3-9734-08db7c75577c
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 09:59:22.5044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xYbtWTK+qvpB3RYq1Jy2yQ/d65a22XqrNNgCWBbuwnI43gyK9pCObyJoLdWaP68E13TzvDL2XudcRNzIyyG/crt2aKpwmxDCuwkGV75Ru8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P189MB1571
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJNzk6ortZTQ0/sbBAse5RTvyGBIs2ID7DgTjqYF3oE=;
 b=C68JV4pFRnqiZBZdo827rKGjSd0aIAXHwDUOdVQObcffvn1NYLY1CyvJGKSeyx+CJRPHxqPzCcGjTFyFoDe5sg1pbzeLoTkhFbg+EkajxpuHdT6gNimF2nvMBQn4U012g2g2bGs2BEMYxxYmI5QNScQZjM/2z1YyB/OPCoOFfgw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=C68JV4pF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH 1/4] igb: prepare for AF_XDP zero-copy
 support
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
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove static qualifiers on the following functions to be able to call
from XSK specific file that is added in the later patches
- igb_xdp_tx_queue_mapping
- igb_xdp_ring_update_tail
- igb_run_xdp
- igb_process_skb_fields

Introduce igb_xdp_is_enabled() to check if an XDP program is assigned to
the device.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
---
 drivers/net/ethernet/intel/igb/igb.h      | 13 +++++++++++++
 drivers/net/ethernet/intel/igb/igb_main.c | 23 ++++++++++++-----------
 2 files changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 015b78144114..94440af6cf4b 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -718,6 +718,8 @@ extern char igb_driver_name[];
 int igb_xmit_xdp_ring(struct igb_adapter *adapter,
 		      struct igb_ring *ring,
 		      struct xdp_frame *xdpf);
+struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter);
+void igb_xdp_ring_update_tail(struct igb_ring *ring);
 int igb_open(struct net_device *netdev);
 int igb_close(struct net_device *netdev);
 int igb_up(struct igb_adapter *);
@@ -737,6 +739,12 @@ void igb_setup_tctl(struct igb_adapter *);
 void igb_setup_rctl(struct igb_adapter *);
 void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
 netdev_tx_t igb_xmit_frame_ring(struct sk_buff *, struct igb_ring *);
+struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
+			    struct igb_ring *rx_ring,
+			    struct xdp_buff *xdp);
+void igb_process_skb_fields(struct igb_ring *rx_ring,
+			    union e1000_adv_rx_desc *rx_desc,
+			    struct sk_buff *skb);
 void igb_alloc_rx_buffers(struct igb_ring *, u16);
 void igb_update_stats(struct igb_adapter *);
 bool igb_has_link(struct igb_adapter *adapter);
@@ -797,6 +805,11 @@ static inline struct netdev_queue *txring_txq(const struct igb_ring *tx_ring)
 	return netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 }
 
+static inline bool igb_xdp_is_enabled(struct igb_adapter *adapter)
+{
+	return !!adapter->xdp_prog;
+}
+
 int igb_add_filter(struct igb_adapter *adapter,
 		   struct igb_nfc_filter *input);
 int igb_erase_filter(struct igb_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9a2561409b06..dadc3d423cfd 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2939,7 +2939,8 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	}
 }
 
-static void igb_xdp_ring_update_tail(struct igb_ring *ring)
+/* This function assumes __netif_tx_lock is held by the caller. */
+void igb_xdp_ring_update_tail(struct igb_ring *ring)
 {
 	/* Force memory writes to complete before letting h/w know there
 	 * are new descriptors to fetch.
@@ -2948,7 +2949,7 @@ static void igb_xdp_ring_update_tail(struct igb_ring *ring)
 	writel(ring->next_to_use, ring->tail);
 }
 
-static struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
+struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
 {
 	unsigned int r_idx = smp_processor_id();
 
@@ -3025,11 +3026,11 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 		nxmit++;
 	}
 
-	__netif_tx_unlock(nq);
-
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		igb_xdp_ring_update_tail(tx_ring);
 
+	__netif_tx_unlock(nq);
+
 	return nxmit;
 }
 
@@ -6631,7 +6632,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int max_frame = new_mtu + IGB_ETH_PKT_HDR_PAD;
 
-	if (adapter->xdp_prog) {
+	if (igb_xdp_is_enabled(adapter)) {
 		int i;
 
 		for (i = 0; i < adapter->num_rx_queues; i++) {
@@ -8600,9 +8601,9 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
-				   struct igb_ring *rx_ring,
-				   struct xdp_buff *xdp)
+struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
+			    struct igb_ring *rx_ring,
+			    struct xdp_buff *xdp)
 {
 	int err, result = IGB_XDP_PASS;
 	struct bpf_prog *xdp_prog;
@@ -8798,9 +8799,9 @@ static bool igb_cleanup_headers(struct igb_ring *rx_ring,
  *  order to populate the hash, checksum, VLAN, timestamp, protocol, and
  *  other fields within the skb.
  **/
-static void igb_process_skb_fields(struct igb_ring *rx_ring,
-				   union e1000_adv_rx_desc *rx_desc,
-				   struct sk_buff *skb)
+void igb_process_skb_fields(struct igb_ring *rx_ring,
+			    union e1000_adv_rx_desc *rx_desc,
+			    struct sk_buff *skb)
 {
 	struct net_device *dev = rx_ring->netdev;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
