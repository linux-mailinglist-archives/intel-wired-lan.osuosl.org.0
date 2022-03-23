Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C04E526C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 13:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D5E184A01;
	Wed, 23 Mar 2022 12:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-njhrIAeKpS; Wed, 23 Mar 2022 12:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C7C849FF;
	Wed, 23 Mar 2022 12:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11A4F1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 004BA60808
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgWVbewMrgvy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 12:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C38E6059C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648039547; x=1679575547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9mVo7bXFbAAHL9O6QO4mkMly0Aqh3J8U1adWdVJYqXY=;
 b=h7g2lmkoqWjRGyDCMTkiGHlBw1wqT706qkqIRZGoOKEMXloAFiLWcvp3
 VZrIBaTgenrl9wgwSL7xA3CeKm2qyHIa2sqBL9yZjg8qWVThd0JOavd0R
 Uy8FJxdQ4FpOy+Kk9LIS1RCGwwaw8pPck7Gqb538HK4YMVnHXUtui/BdX
 SxBIqtCrUj7ka9dwdUxTh+j3zMvaNny+8dmh2RDXS0v9JtKN2O4YkkC3g
 i1ezu7V5ab6ygTWvzV8d9NuuIx39kyNw/dpNxSPuYy3Q194wku6p78h/M
 bgwfZqjOJHQ5CeB1HiCsP526YMtGPikMB/uXhxIJthgDQCKTKBSblhEGf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238042376"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238042376"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 05:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="717385706"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2022 05:45:43 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22NCjeuD017350; Wed, 23 Mar 2022 12:45:41 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 23 Mar 2022 13:43:52 +0100
Message-Id: <20220323124353.2762181-2-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
References: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/2] ice: fix 'scheduling while
 atomic' on aux critical err interrupt
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's a kernel BUG splat on processing aux critical error
interrupts in ice_misc_intr():

[ 2100.917085] BUG: scheduling while atomic: swapper/15/0/0x00010000
...
[ 2101.060770] Call Trace:
[ 2101.063229]  <IRQ>
[ 2101.065252]  dump_stack+0x41/0x60
[ 2101.068587]  __schedule_bug.cold.100+0x4c/0x58
[ 2101.073060]  __schedule+0x6a4/0x830
[ 2101.076570]  schedule+0x35/0xa0
[ 2101.079727]  schedule_preempt_disabled+0xa/0x10
[ 2101.084284]  __mutex_lock.isra.7+0x310/0x420
[ 2101.088580]  ? ice_misc_intr+0x201/0x2e0 [ice]
[ 2101.093078]  ice_send_event_to_aux+0x25/0x70 [ice]
[ 2101.097921]  ice_misc_intr+0x220/0x2e0 [ice]
[ 2101.102232]  __handle_irq_event_percpu+0x40/0x180
[ 2101.106965]  handle_irq_event_percpu+0x30/0x80
[ 2101.111434]  handle_irq_event+0x36/0x53
[ 2101.115292]  handle_edge_irq+0x82/0x190
[ 2101.119148]  handle_irq+0x1c/0x30
[ 2101.122480]  do_IRQ+0x49/0xd0
[ 2101.125465]  common_interrupt+0xf/0xf
[ 2101.129146]  </IRQ>
...

As Andrew correctly mentioned previously[0], the following call
ladder happens:

ice_misc_intr() <- hardirq
  ice_send_event_to_aux()
    device_lock()
      mutex_lock()
        might_sleep()
          might_resched() <- oops

Add a new PF state bit which indicates that an aux critical error
occurred and serve it in ice_service_task() in process context.
The new ice_pf::oicr_err_reg is read-write in both hardirq and
process contexts, but only 3 bits of non-critical data probably
aren't worth explicit synchronizing (and they're even in the same
byte [31:24]).

[0] https://lore.kernel.org/all/YeSRUVmrdmlUXHDn@lunn.ch

Fixes: 348048e724a0e ("ice: Implement iidc operations")
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Tested-by: Michal Kubiak <michal.kubiak@intel.com>
Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_main.c | 25 ++++++++++++++---------
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index bea1d1e39fa2..2ca887076dd4 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -290,6 +290,7 @@ enum ice_pf_state {
 	ICE_LINK_DEFAULT_OVERRIDE_PENDING,
 	ICE_PHY_INIT_COMPLETE,
 	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
+	ICE_AUX_ERR_PENDING,
 	ICE_STATE_NBITS		/* must be last */
 };
 
@@ -559,6 +560,7 @@ struct ice_pf {
 	wait_queue_head_t reset_wait_queue;
 
 	u32 hw_csum_rx_error;
+	u32 oicr_err_reg;
 	u16 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u16 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b7e8744b0c0a..296f9d5f7408 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2255,6 +2255,19 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	if (test_and_clear_bit(ICE_AUX_ERR_PENDING, pf->state)) {
+		struct iidc_event *event;
+
+		event = kzalloc(sizeof(*event), GFP_KERNEL);
+		if (event) {
+			set_bit(IIDC_EVENT_CRIT_ERR, event->type);
+			/* report the entire OICR value to AUX driver */
+			swap(event->reg, pf->oicr_err_reg);
+			ice_send_event_to_aux(pf, event);
+			kfree(event);
+		}
+	}
+
 	if (test_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags)) {
 		/* Plug aux device per request */
 		ice_plug_aux_dev(pf);
@@ -3041,17 +3054,9 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
 	if (oicr & ICE_AUX_CRIT_ERR) {
-		struct iidc_event *event;
-
+		pf->oicr_err_reg |= oicr;
+		set_bit(ICE_AUX_ERR_PENDING, pf->state);
 		ena_mask &= ~ICE_AUX_CRIT_ERR;
-		event = kzalloc(sizeof(*event), GFP_ATOMIC);
-		if (event) {
-			set_bit(IIDC_EVENT_CRIT_ERR, event->type);
-			/* report the entire OICR value to AUX driver */
-			event->reg = oicr;
-			ice_send_event_to_aux(pf, event);
-			kfree(event);
-		}
 	}
 
 	/* Report any remaining unexpected interrupts */
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
