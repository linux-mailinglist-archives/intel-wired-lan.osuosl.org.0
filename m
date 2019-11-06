Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFC0F1C40
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2019 18:18:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 409EE228EC;
	Wed,  6 Nov 2019 17:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lVqHvpsGs1CX; Wed,  6 Nov 2019 17:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94F4F2291C;
	Wed,  6 Nov 2019 17:18:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1331BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 17:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6CDD9228EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 17:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtHtI-4BT7Tq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2019 17:18:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 74F712042C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 17:18:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 09:18:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="214312105"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.244.172])
 by orsmga002.jf.intel.com with ESMTP; 06 Nov 2019 09:18:24 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  6 Nov 2019 09:18:23 -0800
Message-Id: <20191106171823.30554-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net] igb/igc: use ktime accessors for skb->tstamp
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

When implementing launch time support in the igb and igc drivers, the
skb->tstamp value is assumed to be a s64, but it's declared as a ktime_t
value.

Although ktime_t is typedef'd to s64 it wasn't always, and the kernel
provides accessors for ktime_t values.

Use the ktime_to_timespec64 and ktime_set accessors instead of directly
assuming that the variable is always an s64.

This improves portability if the code is ever moved to another kernel
version, or if the definition of ktime_t ever changes again in the
future.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9148c62d9ac5..ed7e667d7eb2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5675,8 +5675,8 @@ static void igb_tx_ctxtdesc(struct igb_ring *tx_ring,
 	 * should have been handled by the upper layers.
 	 */
 	if (tx_ring->launchtime_enable) {
-		ts = ns_to_timespec64(first->skb->tstamp);
-		first->skb->tstamp = 0;
+		ts = ktime_to_timespec64(first->skb->tstamp);
+		first->skb->tstamp = ktime_set(0, 0);
 		context_desc->seqnum_seed = cpu_to_le32(ts.tv_nsec / 32);
 	} else {
 		context_desc->seqnum_seed = 0;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8e424dfab12e..24888676f69b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -824,8 +824,8 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 	 * should have been handled by the upper layers.
 	 */
 	if (tx_ring->launchtime_enable) {
-		ts = ns_to_timespec64(first->skb->tstamp);
-		first->skb->tstamp = 0;
+		ts = ktime_to_timespec64(first->skb->tstamp);
+		first->skb->tstamp = ktime_set(0, 0);
 		context_desc->launch_time = cpu_to_le32(ts.tv_nsec / 32);
 	} else {
 		context_desc->launch_time = 0;
-- 
2.23.0.245.gf157bbb9169d

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
