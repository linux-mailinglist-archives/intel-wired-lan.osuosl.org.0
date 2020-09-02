Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A12325B75F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Sep 2020 01:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0040A872E1;
	Wed,  2 Sep 2020 23:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VqqEQuPJZ8Cz; Wed,  2 Sep 2020 23:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C96787323;
	Wed,  2 Sep 2020 23:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 537481BF410
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BA8187318
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jYWpl1xqhHah for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 23:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 67EDB872E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:06 +0000 (UTC)
IronPort-SDR: K9mPFVJdZlrG9xvKPPRu019uaFX/ys63uzZsLbr8i/xolXvg7znoiFlCQ9XGQH2oXqvpAZ0WTc
 mKXNLYvEAMpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="145186763"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="145186763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 16:37:05 -0700
IronPort-SDR: ycSEUlrtAu/TrGDaLTTnby1CL+i/x16kINYgYdKNiv4QDvZxyQhm4rK0lOFZ6qKSEaYQ/XT0bM
 VdPgQitlJ6GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="405312965"
Received: from shwethas-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.109.56])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2020 16:37:05 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 16:36:56 -0700
Message-Id: <20200902233657.4051914-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Export a way to
 read the PTP timer
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The next patch will need a way to retrieve the current timestamp from
the NIC's PTP clock.

The 'i225' suffix is removed, if anything model specific is needed,
those specifics should be hidden by this function.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h     | 1 +
 drivers/net/ethernet/intel/igc/igc_ptp.c | 7 +++----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 2e5720d34a16..35baae900c1f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -550,6 +550,7 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
+void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 344bb67018f1..927af8ae2bef 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -17,8 +17,7 @@
 #define IGC_PTP_TX_TIMEOUT		(HZ * 15)
 
 /* SYSTIM read access for I225 */
-static void igc_ptp_read_i225(struct igc_adapter *adapter,
-			      struct timespec64 *ts)
+void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 sec, nsec;
@@ -75,7 +74,7 @@ static int igc_ptp_adjtime_i225(struct ptp_clock_info *ptp, s64 delta)
 
 	spin_lock_irqsave(&igc->tmreg_lock, flags);
 
-	igc_ptp_read_i225(igc, &now);
+	igc_ptp_read(igc, &now);
 	now = timespec64_add(now, then);
 	igc_ptp_write_i225(igc, (const struct timespec64 *)&now);
 
@@ -517,7 +516,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 
 static void igc_ptp_time_save(struct igc_adapter *adapter)
 {
-	igc_ptp_read_i225(adapter, &adapter->prev_ptp_time);
+	igc_ptp_read(adapter, &adapter->prev_ptp_time);
 	adapter->ptp_reset_start = ktime_get();
 }
 
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
