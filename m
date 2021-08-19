Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ABC3F209C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 21:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B483F6138D;
	Thu, 19 Aug 2021 19:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUSqoTMgI9EI; Thu, 19 Aug 2021 19:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B01A60639;
	Thu, 19 Aug 2021 19:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 422A71BF59F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 908DF404C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhsnnbBCMovP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F400424F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216665554"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="216665554"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:30:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="451749599"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:29:59 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 12:29:57 -0700
Message-Id: <20210819192959.590146-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210819192959.590146-1-jesse.brandeburg@intel.com>
References: <20210819192959.590146-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim
 usage and moderation
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

The driver was having trouble with unreliable latency when doing single
threaded ping-pong tests. This was root caused to the DIM algorithm
landing on a too slow interrupt value, which caused high latency, and it
was especially present when queues were being switched frequently by the
scheduler as happens on default setups today.

In attempting to improve this, we allow the upper rate limit for
interrupts to move to rate limit of 4 microseconds as a max, which means
that no vector can generate more than 250,000 interrupts per second. The
old config was up to 100,000. The driver previously tried to program the
rate limit too frequently and if the receive and transmit side were both
active on the same vector, the INTRL would be set incorrectly, and this
change fixes that issue as a side effect of the redesign.

This driver will operate from now on with a slightly changed DIM table
with more emphasis towards latency sensitivity by having more table
entries with lower latency than with high latency (high being >= 64
microseconds).

The driver also resets the DIM algorithm state with a new stats set when
there is no work done and the data becomes stale (older than 1 second),
for the respective receive or transmit portion of the interrupt.

Add a new helper for setting rate limit, which will be used more
in a followup patch.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  25 +++++
 drivers/net/ethernet/intel/ice/ice_lib.h  |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 118 ++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  73 ++++++-------
 4 files changed, 130 insertions(+), 87 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 327b39d7cd71..b71ca3e7ea19 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1927,6 +1927,31 @@ void ice_write_itr(struct ice_ring_container *rc, u16 itr)
 	__ice_write_itr(q_vector, rc, itr);
 }
 
+/**
+ * ice_set_q_vector_intrl - set up interrupt rate limiting
+ * @q_vector: the vector to be configured
+ *
+ * Interrupt rate limiting is local to the vector, not per-queue so we must
+ * detect if either ring container has dynamic enabled to decide what to set
+ * the interrupt rate limit to via INTRL settings. In the case of dynamic
+ * disabled on both, write the value with the cached setting to make sure
+ * INTRL matches user visible value.
+ */
+void ice_set_q_vector_intrl(struct ice_q_vector *q_vector)
+{
+	if (ITR_IS_DYNAMIC(&q_vector->tx) || ITR_IS_DYNAMIC(&q_vector->rx)) {
+		/* in the case of dynamic enabled, cap each vector to no more
+		 * than (4 us) 250,000 ints/sec, which allows low latency
+		 * but still less than 500,000 interrupts per second, which
+		 * reduces CPU a bit in the case of the lowest latency
+		 * setting. The 4 here is a value in microseconds.
+		 */
+		ice_write_intrl(q_vector, 4);
+	} else {
+		ice_write_intrl(q_vector, q_vector->intrl);
+	}
+}
+
 /**
  * ice_vsi_cfg_msix - MSIX mode Interrupt Config in the HW
  * @vsi: the VSI being configured
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index ddb5e641d164..79908a2bd82b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -103,6 +103,7 @@ int ice_status_to_errno(enum ice_status err);
 
 void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
+void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
 
 enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 802a59345bfa..cc1b454232e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5513,77 +5513,59 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 }
 
 /* THEORY OF MODERATION:
- * The below code creates custom DIM profiles for use by this driver, because
- * the ice driver hardware works differently than the hardware that DIMLIB was
+ * The ice driver hardware works differently than the hardware that DIMLIB was
  * originally made for. ice hardware doesn't have packet count limits that
  * can trigger an interrupt, but it *does* have interrupt rate limit support,
- * and this code adds that capability to be used by the driver when it's using
- * DIMLIB. The DIMLIB code was always designed to be a suggestion to the driver
- * for how to "respond" to traffic and interrupts, so this driver uses a
- * slightly different set of moderation parameters to get best performance.
+ * which is hard-coded to limit to 250,000 ints/second.
+ * If not using dynamic moderation, the INTRL value can be modified
+ * by ethtool rx-usecs-high.
  */
 struct ice_dim {
 	/* the throttle rate for interrupts, basically worst case delay before
 	 * an initial interrupt fires, value is stored in microseconds.
 	 */
 	u16 itr;
-	/* the rate limit for interrupts, which can cap a delay from a small
-	 * ITR at a certain amount of interrupts per second. f.e. a 2us ITR
-	 * could yield as much as 500,000 interrupts per second, but with a
-	 * 10us rate limit, it limits to 100,000 interrupts per second. Value
-	 * is stored in microseconds.
-	 */
-	u16 intrl;
 };
 
 /* Make a different profile for Rx that doesn't allow quite so aggressive
- * moderation at the high end (it maxes out at 128us or about 8k interrupts a
- * second. The INTRL/rate parameters here are only useful to cap small ITR
- * values, which is why for larger ITR's - like 128, which can only generate
- * 8k interrupts per second, there is no point to rate limit and the values
- * are set to zero. The rate limit values do affect latency, and so must
- * be reasonably small so to not impact latency sensitive tests.
+ * moderation at the high end (it maxxes out at 126us or about 8k interrupts a
+ * second.
  */
 static const struct ice_dim rx_profile[] = {
-	{2, 10},
-	{8, 16},
-	{32, 0},
-	{96, 0},
-	{128, 0}
+	{2},    /* 500,000 ints/s, capped at 250K by INTRL */
+	{8},    /* 125,000 ints/s */
+	{16},   /*  62,500 ints/s */
+	{62},   /*  16,129 ints/s */
+	{126}   /*   7,936 ints/s */
 };
 
 /* The transmit profile, which has the same sorts of values
  * as the previous struct
  */
 static const struct ice_dim tx_profile[] = {
-	{2, 10},
-	{8, 16},
-	{64, 0},
-	{128, 0},
-	{256, 0}
+	{2},    /* 500,000 ints/s, capped at 250K by INTRL */
+	{8},    /* 125,000 ints/s */
+	{40},   /*  16,125 ints/s */
+	{128},  /*   7,812 ints/s */
+	{256}   /*   3,906 ints/s */
 };
 
 static void ice_tx_dim_work(struct work_struct *work)
 {
 	struct ice_ring_container *rc;
-	struct ice_q_vector *q_vector;
 	struct dim *dim;
-	u16 itr, intrl;
+	u16 itr;
 
 	dim = container_of(work, struct dim, work);
-	rc = container_of(dim, struct ice_ring_container, dim);
-	q_vector = container_of(rc, struct ice_q_vector, tx);
+	rc = (struct ice_ring_container *)dim->priv;
 
-	if (dim->profile_ix >= ARRAY_SIZE(tx_profile))
-		dim->profile_ix = ARRAY_SIZE(tx_profile) - 1;
+	WARN_ON(dim->profile_ix >= ARRAY_SIZE(tx_profile));
 
 	/* look up the values in our local table */
 	itr = tx_profile[dim->profile_ix].itr;
-	intrl = tx_profile[dim->profile_ix].intrl;
 
-	ice_trace(tx_dim_work, q_vector, dim);
+	ice_trace(tx_dim_work, container_of(rc, struct ice_q_vector, tx), dim);
 	ice_write_itr(rc, itr);
-	ice_write_intrl(q_vector, intrl);
 
 	dim->state = DIM_START_MEASURE;
 }
@@ -5591,28 +5573,64 @@ static void ice_tx_dim_work(struct work_struct *work)
 static void ice_rx_dim_work(struct work_struct *work)
 {
 	struct ice_ring_container *rc;
-	struct ice_q_vector *q_vector;
 	struct dim *dim;
-	u16 itr, intrl;
+	u16 itr;
 
 	dim = container_of(work, struct dim, work);
-	rc = container_of(dim, struct ice_ring_container, dim);
-	q_vector = container_of(rc, struct ice_q_vector, rx);
+	rc = (struct ice_ring_container *)dim->priv;
 
-	if (dim->profile_ix >= ARRAY_SIZE(rx_profile))
-		dim->profile_ix = ARRAY_SIZE(rx_profile) - 1;
+	WARN_ON(dim->profile_ix >= ARRAY_SIZE(rx_profile));
 
 	/* look up the values in our local table */
 	itr = rx_profile[dim->profile_ix].itr;
-	intrl = rx_profile[dim->profile_ix].intrl;
 
-	ice_trace(rx_dim_work, q_vector, dim);
+	ice_trace(rx_dim_work, container_of(rc, struct ice_q_vector, rx), dim);
 	ice_write_itr(rc, itr);
-	ice_write_intrl(q_vector, intrl);
 
 	dim->state = DIM_START_MEASURE;
 }
 
+#define ICE_DIM_DEFAULT_PROFILE_IX 1
+
+/**
+ * ice_init_moderation - set up interrupt moderation
+ * @q_vector: the vector containing rings to be configured
+ *
+ * Set up interrupt moderation registers, with the intent to do the right thing
+ * when called from reset or from probe, and whether or not dynamic moderation
+ * is enabled or not. Take special care to write all the registers in both
+ * dynamic mode or not in order to make sure hardware is in a known state.
+ */
+static void ice_init_moderation(struct ice_q_vector *q_vector)
+{
+	struct ice_ring_container *rc;
+	bool tx_dynamic, rx_dynamic;
+
+	rc = &q_vector->tx;
+	INIT_WORK(&rc->dim.work, ice_tx_dim_work);
+	rc->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	rc->dim.profile_ix = ICE_DIM_DEFAULT_PROFILE_IX;
+	rc->dim.priv = rc;
+	tx_dynamic = ITR_IS_DYNAMIC(rc);
+
+	/* set the initial TX ITR to match the above */
+	ice_write_itr(rc, tx_dynamic ?
+		      tx_profile[rc->dim.profile_ix].itr : rc->itr_setting);
+
+	rc = &q_vector->rx;
+	INIT_WORK(&rc->dim.work, ice_rx_dim_work);
+	rc->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	rc->dim.profile_ix = ICE_DIM_DEFAULT_PROFILE_IX;
+	rc->dim.priv = rc;
+	rx_dynamic = ITR_IS_DYNAMIC(rc);
+
+	/* set the initial RX ITR to match the above */
+	ice_write_itr(rc, rx_dynamic ? rx_profile[rc->dim.profile_ix].itr :
+				       rc->itr_setting);
+
+	ice_set_q_vector_intrl(q_vector);
+}
+
 /**
  * ice_napi_enable_all - Enable NAPI for all q_vectors in the VSI
  * @vsi: the VSI being configured
@@ -5627,11 +5645,7 @@ static void ice_napi_enable_all(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		INIT_WORK(&q_vector->tx.dim.work, ice_tx_dim_work);
-		q_vector->tx.dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
-
-		INIT_WORK(&q_vector->rx.dim.work, ice_rx_dim_work);
-		q_vector->rx.dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+		ice_init_moderation(q_vector);
 
 		if (q_vector->rx.ring || q_vector->tx.ring)
 			napi_enable(&q_vector->napi);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4da9420df1b0..fec95ea486e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1232,6 +1232,30 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	return failure ? budget : (int)total_rx_pkts;
 }
 
+static void __ice_update_sample(struct ice_q_vector *q_vector,
+				struct ice_ring_container *rc,
+				struct dim_sample *sample)
+{
+	u64 packets = 0, bytes = 0;
+	struct ice_ring *ring;
+
+	ice_for_each_ring(ring, *rc) {
+		packets += ring->stats.pkts;
+		bytes += ring->stats.bytes;
+	}
+
+	dim_update_sample(q_vector->total_events, packets, bytes, sample);
+	sample->comp_ctr = 0;
+
+	/* if dim settings get stale, like when not updated for 1
+	 * second or longer, force it to start again. This addresses the
+	 * freqent case of an idle queue being switched to by the
+	 * scheduler. The 1,000 here means 1,000 milliseconds.
+	 */
+	if (ktime_ms_delta(sample->time, rc->dim.start_sample.time) >= 1000)
+		rc->dim.state = DIM_START_MEASURE;
+}
+
 /**
  * ice_net_dim - Update net DIM algorithm
  * @q_vector: the vector associated with the interrupt
@@ -1247,34 +1271,16 @@ static void ice_net_dim(struct ice_q_vector *q_vector)
 	struct ice_ring_container *rx = &q_vector->rx;
 
 	if (ITR_IS_DYNAMIC(tx)) {
-		struct dim_sample dim_sample = {};
-		u64 packets = 0, bytes = 0;
-		struct ice_ring *ring;
-
-		ice_for_each_ring(ring, q_vector->tx) {
-			packets += ring->stats.pkts;
-			bytes += ring->stats.bytes;
-		}
-
-		dim_update_sample(q_vector->total_events, packets, bytes,
-				  &dim_sample);
+		struct dim_sample dim_sample;
 
+		__ice_update_sample(q_vector, tx, &dim_sample);
 		net_dim(&tx->dim, dim_sample);
 	}
 
 	if (ITR_IS_DYNAMIC(rx)) {
-		struct dim_sample dim_sample = {};
-		u64 packets = 0, bytes = 0;
-		struct ice_ring *ring;
-
-		ice_for_each_ring(ring, q_vector->rx) {
-			packets += ring->stats.pkts;
-			bytes += ring->stats.bytes;
-		}
-
-		dim_update_sample(q_vector->total_events, packets, bytes,
-				  &dim_sample);
+		struct dim_sample dim_sample;
 
+		__ice_update_sample(q_vector, rx, &dim_sample);
 		net_dim(&rx->dim, dim_sample);
 	}
 }
@@ -1301,15 +1307,14 @@ static u32 ice_buildreg_itr(u16 itr_idx, u16 itr)
 }
 
 /**
- * ice_update_ena_itr - Update ITR moderation and re-enable MSI-X interrupt
+ * ice_enable_interrupt - re-enable MSI-X interrupt
  * @q_vector: the vector associated with the interrupt to enable
  *
- * Update the net_dim() algorithm and re-enable the interrupt associated with
- * this vector.
- *
- * If the VSI is down, the interrupt will not be re-enabled.
+ * If the VSI is down, the interrupt will not be re-enabled. Also,
+ * when enabling the interrupt always reset the wb_on_itr to false
+ * and trigger a software interrupt to clean out internal state.
  */
-static void ice_update_ena_itr(struct ice_q_vector *q_vector)
+static void ice_enable_interrupt(struct ice_q_vector *q_vector)
 {
 	struct ice_vsi *vsi = q_vector->vsi;
 	bool wb_en = q_vector->wb_on_itr;
@@ -1324,10 +1329,6 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 	if (wb_en)
 		q_vector->wb_on_itr = false;
 
-	/* This will do nothing if dynamic updates are not enabled. */
-	ice_net_dim(q_vector);
-
-	/* net_dim() updates ITR out-of-band using a work item */
 	itr_val = ice_buildreg_itr(ICE_ITR_NONE, 0);
 	/* trigger an immediate software interrupt when exiting
 	 * busy poll, to make sure to catch any pending cleanups
@@ -1449,10 +1450,12 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	/* Exit the polling mode, but don't re-enable interrupts if stack might
 	 * poll us due to busy-polling
 	 */
-	if (likely(napi_complete_done(napi, work_done)))
-		ice_update_ena_itr(q_vector);
-	else
+	if (likely(napi_complete_done(napi, work_done))) {
+		ice_net_dim(q_vector);
+		ice_enable_interrupt(q_vector);
+	} else {
 		ice_set_wb_on_itr(q_vector);
+	}
 
 	return min_t(int, work_done, budget - 1);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
