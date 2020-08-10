Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9824121B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 23:08:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EAAA879AE;
	Mon, 10 Aug 2020 21:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKjN5xIULicr; Mon, 10 Aug 2020 21:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F99C87884;
	Mon, 10 Aug 2020 21:08:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAB761BF23C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D663787D80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 98pN327Nq9Tt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 21:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D70F087D41
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:08:40 +0000 (UTC)
IronPort-SDR: FkuHzzTHbusLe3L3TzovRKh0aNGeiuZkn9YAJrW0BhpDE+Wr4Z7ut88BWRaKTI/Q9nN4xYU6gz
 aDaFb8/IxvcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="171663420"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="171663420"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 14:08:40 -0700
IronPort-SDR: KakKGx1ZP9LS8MIeQg7E9e0onrzwPVxnux++dXiQJfjVwVWSjmnt6TV9E/xNXyhP07cNqy7dnf
 UrYdWFtETLqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="334361398"
Received: from cjjeffrx-ti2.amr.corp.intel.com ([10.209.119.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Aug 2020 14:08:39 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Aug 2020 14:08:30 -0700
Message-Id: <20200810210832.34699-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/3] igc: Clean RX descriptor error flags
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I225 advanced receive descriptor doesn't have the following extend error
bits: CE, SE, SEQ, CXE. In addition to that, the bit TCPE is called L4E
in the datasheet.

This patch cleans up the code accordingly, and gets rid of the macro
IGC_RXDEXT_ERR_FRAME_ERR_MASK since it doesn't make much sense anymore.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 14 +-------------
 drivers/net/ethernet/intel/igc/igc_main.c    |  5 ++---
 2 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 28885be15ee8..21695476b8a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -324,22 +324,10 @@
 /* Advanced Receive Descriptor bit definitions */
 #define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
 
-#define IGC_RXDEXT_STATERR_CE		0x01000000
-#define IGC_RXDEXT_STATERR_SE		0x02000000
-#define IGC_RXDEXT_STATERR_SEQ		0x04000000
-#define IGC_RXDEXT_STATERR_CXE		0x10000000
-#define IGC_RXDEXT_STATERR_TCPE		0x20000000
+#define IGC_RXDEXT_STATERR_L4E		0x20000000
 #define IGC_RXDEXT_STATERR_IPE		0x40000000
 #define IGC_RXDEXT_STATERR_RXE		0x80000000
 
-/* Same mask, but for extended and packet split descriptors */
-#define IGC_RXDEXT_ERR_FRAME_ERR_MASK ( \
-	IGC_RXDEXT_STATERR_CE  |	\
-	IGC_RXDEXT_STATERR_SE  |	\
-	IGC_RXDEXT_STATERR_SEQ |	\
-	IGC_RXDEXT_STATERR_CXE |	\
-	IGC_RXDEXT_STATERR_RXE)
-
 #define IGC_MRQC_RSS_FIELD_IPV4_TCP	0x00010000
 #define IGC_MRQC_RSS_FIELD_IPV4		0x00020000
 #define IGC_MRQC_RSS_FIELD_IPV6_TCP_EX	0x00040000
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b303d05e0870..298f408519f4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1437,7 +1437,7 @@ static void igc_rx_checksum(struct igc_ring *ring,
 
 	/* TCP/UDP checksum error bit is set */
 	if (igc_test_staterr(rx_desc,
-			     IGC_RXDEXT_STATERR_TCPE |
+			     IGC_RXDEXT_STATERR_L4E |
 			     IGC_RXDEXT_STATERR_IPE)) {
 		/* work around errata with sctp packets where the TCPE aka
 		 * L4E bit is set incorrectly on 64 byte (60 byte w/o crc)
@@ -1752,8 +1752,7 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
 				union igc_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
-	if (unlikely((igc_test_staterr(rx_desc,
-				       IGC_RXDEXT_ERR_FRAME_ERR_MASK)))) {
+	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_RXE))) {
 		struct net_device *netdev = rx_ring->netdev;
 
 		if (!(netdev->features & NETIF_F_RXALL)) {
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
