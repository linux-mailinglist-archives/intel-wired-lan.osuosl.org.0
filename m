Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13688A81738
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 22:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5B64411B7;
	Tue,  8 Apr 2025 20:55:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uMcJg2haxuIZ; Tue,  8 Apr 2025 20:55:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1134940DC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744145732;
	bh=wLd4SQHL4L6tV6vm9JHwHK4adGUSDaLBk6vnyguHm/E=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=stMaXRQaP9E+yfufQRLcfii1sB5wg1nY0ylKNCfw0YPCHq8VHnTISDg2rkcYrKZzj
	 Ic1bWjiuedS1zXzAfY7yS2e8tvwFguLxN6cUNLf8vbyXBKC/OfZVRbtm5uZBHRv8Ta
	 k+DTJF8O5F/IttKba2aA53weG9EFVfx6qLDZC5evY0Mim2IkjP9sXMwcak0hJ4BkcI
	 X3hSxwoORw3voZqbxqLdwEI+8KhWRcklJQUw/8pHFKFrT//mQ8FFG2lRNMRGAxmzPP
	 9JjD+T+rwfYlN7DZKR4cWEGpUIV2tmSYzKB3MCNu5Y+wGA+m/xRdE9NzRgIKBGamRN
	 O8z7BFUjBQBHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1134940DC4;
	Tue,  8 Apr 2025 20:55:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 362931F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BE1482893
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8jbB5ZVBRsUG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 20:55:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AFEAD8284B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFEAD8284B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFEAD8284B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:28 +0000 (UTC)
X-CSE-ConnectionGUID: BNWWQoOOSD63Iy1Bl8KE/Q==
X-CSE-MsgGUID: agg3uWOoTJWhZsXAi/nr9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56970728"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="56970728"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 13:55:28 -0700
X-CSE-ConnectionGUID: m3y3plS3RjeGoocfpKRHQA==
X-CSE-MsgGUID: GOIXkC+gQ2WnAtaXv1aXIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="151563680"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 13:55:27 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 08 Apr 2025 13:55:14 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250408-jk-supported-perout-flags-v1-1-d2f8e3df64f3@intel.com>
References: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
In-Reply-To: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, Horatiu Vultur <horatiu.vultur@microchip.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Andrei Botila <andrei.botila@oss.nxp.com>, 
 Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744145729; x=1775681729;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=8UeMWlxSAlztGUlYlCGbwob8VubNyOhtJtxgCyhV9k0=;
 b=anWAjm4RA9dDqecENjtop+M0QjazHHXhJ7+wRAjeA7JilEe0wpmeaphe
 sj2HV1L7YB6OrPnlJNEzm57lZ/skX7yhcn0GFD783irPPK0mtg+O93/L/
 zjHOVXHB4snzXBfzhZzQ9aQOmHtK1E3WFyAB5DepxwKr2mhYr3nXquv6U
 uqOHbBabEd3NXBPm4lLzIK1D8J4ensK9hAWzQCsgbLw91at2NlX8NgFsk
 pFfW2MngzqSqDvI6Z4kLwb2nPbep9VLmojBpPDwKqQCh9jrVArt5XWsUQ
 +CSrLcyPAcm8A+vhk7ycOUQyooG7ICw6NWfYLWlk+UKzGxLOZ9LxFRiPK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=anWAjm4R
Subject: [Intel-wired-lan] [PATCH net-next 1/2] net: ptp: introduce
 .supported_extts_flags to ptp_clock_info
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PTP_EXTTS_REQUEST(2) ioctl has a flags field which specifies how the
external timestamp request should behave. This includes which edge of the
signal to timestamp, as well as a specialized "offset" mode. It is expected
that more flags will be added in the future.

Driver authors routinely do not check the flags, often accepting requests
with flags which they do not support. Even drivers which do check flags may
not be future-proofed to reject flags not yet defined. Thus, any future
flag additions often require manually updating drivers to reject these
flags.

This approach of hoping we catch flag checks during review, or playing
whack-a-mole after the fact is the wrong approach.

Introduce the "supported_extts_flags" field to the ptp_clock_info
structure. This field defines the set of flags the device actually
supports.

Update the core character device logic to check this field and reject
unsupported requests. Getting this right is somewhat tricky. First, to
avoid unnecessary repetition and make basic functionality work when
.supported_extts_flags is 0, the core always accepts the PTP_ENABLE_FEATURE
flag. This flag is used to set the 'on' parameter to the .enable function
and is thus always 'supported' by all drivers.

For backwards compatibility, the PTP_RISING_EDGE and PTP_FALLING_EDGE flags
are merely "hints" when using the old PTP_EXTTS_REQUEST ioctl, and are not
expected to be enforced. If the user issues PTP_EXTTS_REQUEST2, the
PTP_STRICT_FLAGS flag is added which is supposed to inform the driver to
strictly validate the flags and reject unsupported requests. To handle
this, first check if the driver reports PTP_STRICT_FLAGS support. If it
does not, then always allow the PTP_RISING_EDGE and PTP_FALLING_EDGE flags.
This keeps backwards compatibility with the original PTP_EXTTS_REQUEST
ioctl where these flags are not guaranteed to be honored.

This way, drivers which do not set the supported_extts_flags will continue
to accept requests for the original PTP_EXTTS_REQUEST ioctl. The core will
automatically reject requests with new flags, and correctly reject requests
with PTP_STRICT_FLAGS, where the driver is supposed to strictly validate
the flags.

Update the various drivers, refactoring their validation logic into the
.supported_extts_flags field.

Note the following driver files set n_ext_ts to a non-zero value but did
not check flags at all:

 • drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c
 • drivers/net/ethernet/freescale/enetc/enetc_ptp.c
 • drivers/net/ethernet/intel/i40e/i40e_ptp.c
 • drivers/net/ethernet/marvell/octeontx2/nic/otx2_ptp.c
 • drivers/net/ethernet/renesas/ravb_ptp.c
 • drivers/net/ethernet/renesas/rtsn.c
 • drivers/net/ethernet/renesas/rtsn.h
 • drivers/net/ethernet/ti/am65-cpts.c
 • drivers/net/ethernet/ti/cpts.h
 • drivers/net/ethernet/ti/icssg/icss_iep.c
 • drivers/net/ethernet/xscale/ptp_ixp46x.c
 • drivers/net/phy/bcm-phy-ptp.c
 • drivers/ptp/ptp_ocp.c
 • drivers/ptp/ptp_pch.c
 • drivers/ptp/ptp_qoriq.c

These drivers behavior does change slightly: they will now reject the
PTP_EXTTS_REQUEST2 ioctl, because they do not strictly validate their
flags. This also makes them no longer incorrectly accept PTP_EXT_OFFSET.

Finally, the renesas ravb driver just has its checks removed while keeping
the .supported_extts_flags as 0. This makes the core logic fall back to
accepting requests with PTP_RISING_EDGE and/or PTP_FALLING_EDGE but
rejecting requests with PTP_STRICT_FLAGS.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 include/linux/ptp_clock_kernel.h                     | 12 ++++++++++++
 drivers/net/dsa/mv88e6xxx/ptp.c                      | 12 +++++-------
 drivers/net/dsa/sja1105/sja1105_ptp.c                | 10 +++-------
 drivers/net/ethernet/intel/ice/ice_ptp.c             | 12 ++++--------
 drivers/net/ethernet/intel/igb/igb_ptp.c             | 20 ++++++--------------
 drivers/net/ethernet/intel/igc/igc_ptp.c             | 11 ++++-------
 drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c  | 11 ++++-------
 drivers/net/ethernet/microchip/lan743x_ptp.c         |  9 +++------
 drivers/net/ethernet/microchip/lan966x/lan966x_ptp.c |  9 +++------
 drivers/net/ethernet/renesas/ravb_ptp.c              |  6 ------
 drivers/net/phy/dp83640.c                            | 11 ++++-------
 drivers/net/phy/micrel.c                             |  8 +++-----
 drivers/net/phy/nxp-c45-tja11xx.c                    | 10 ++++------
 drivers/ptp/ptp_chardev.c                            | 14 +++++++++++++-
 drivers/ptp/ptp_clockmatrix.c                        | 18 ++++++------------
 drivers/ptp/ptp_fc3.c                                |  1 +
 drivers/ptp/ptp_idt82p33.c                           | 16 ++++------------
 17 files changed, 79 insertions(+), 111 deletions(-)

diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index 0d68d09bedd14c70a5d56b7e61ecd62c8d1571cd..25cba2e5ee69c6a52f0d8a95653988371da379a2 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -68,6 +68,17 @@ struct ptp_system_timestamp {
  * @n_per_out: The number of programmable periodic signals.
  * @n_pins:    The number of programmable pins.
  * @pps:       Indicates whether the clock supports a PPS callback.
+ *
+ * @supported_extts_flags:  The set of flags the driver supports for the
+ *                          PTP_EXTTS_REQUEST ioctl. The PTP core will use
+ *                          this list to reject unsupported requests.
+ *                          PTP_ENABLE_FEATURE is assumed and does not need to
+ *                          be included. If PTP_STRICT_FLAGS is *not* set,
+ *                          then both PTP_RISING_EDGE and PTP_FALLING_EDGE
+ *                          will be assumed. Note that PTP_STRICT_FLAGS must
+ *                          be set if the drivers wants to honor
+ *                          PTP_EXTTS_REQUEST2 and any future flags.
+ *
  * @pin_config: Array of length 'n_pins'. If the number of
  *              programmable pins is nonzero, then drivers must
  *              allocate and initialize this array.
@@ -174,6 +185,7 @@ struct ptp_clock_info {
 	int n_per_out;
 	int n_pins;
 	int pps;
+	unsigned int supported_extts_flags;
 	struct ptp_pin_desc *pin_config;
 	int (*adjfine)(struct ptp_clock_info *ptp, long scaled_ppm);
 	int (*adjphase)(struct ptp_clock_info *ptp, s32 phase);
diff --git a/drivers/net/dsa/mv88e6xxx/ptp.c b/drivers/net/dsa/mv88e6xxx/ptp.c
index aed4a4b07f34b1643a8bf51c2501d1f61ef0cf0b..4c037d4853fdbb86b5082437efe2ae7308559d66 100644
--- a/drivers/net/dsa/mv88e6xxx/ptp.c
+++ b/drivers/net/dsa/mv88e6xxx/ptp.c
@@ -332,13 +332,6 @@ static int mv88e6352_ptp_enable_extts(struct mv88e6xxx_chip *chip,
 	int pin;
 	int err;
 
-	/* Reject requests with unsupported flags */
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_RISING_EDGE |
-				PTP_FALLING_EDGE |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	/* Reject requests to enable time stamping on both edges. */
 	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
 	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -566,6 +559,11 @@ int mv88e6xxx_ptp_setup(struct mv88e6xxx_chip *chip)
 	chip->ptp_clock_info.verify	= ptp_ops->ptp_verify;
 	chip->ptp_clock_info.do_aux_work = mv88e6xxx_hwtstamp_work;
 
+	chip->ptp_clock_info.supported_extts_flags = PTP_ENABLE_FEATURE |
+						     PTP_RISING_EDGE |
+						     PTP_FALLING_EDGE |
+						     PTP_STRICT_FLAGS;
+
 	if (ptp_ops->set_ptp_cpu_port) {
 		struct dsa_port *dp;
 		int upstream = 0;
diff --git a/drivers/net/dsa/sja1105/sja1105_ptp.c b/drivers/net/dsa/sja1105/sja1105_ptp.c
index 08b45fdd1d2482b0f1f922aae4ff18db8e279f09..a7e9f9ab7a19a8413f2f450c3b4b3f636a177c67 100644
--- a/drivers/net/dsa/sja1105/sja1105_ptp.c
+++ b/drivers/net/dsa/sja1105/sja1105_ptp.c
@@ -820,13 +820,6 @@ static int sja1105_extts_enable(struct sja1105_private *priv,
 	if (extts->index != 0)
 		return -EOPNOTSUPP;
 
-	/* Reject requests with unsupported flags */
-	if (extts->flags & ~(PTP_ENABLE_FEATURE |
-			     PTP_RISING_EDGE |
-			     PTP_FALLING_EDGE |
-			     PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	/* We can only enable time stamping on both edges, sadly. */
 	if ((extts->flags & PTP_STRICT_FLAGS) &&
 	    (extts->flags & PTP_ENABLE_FEATURE) &&
@@ -912,6 +905,9 @@ int sja1105_ptp_clock_register(struct dsa_switch *ds)
 		.n_pins		= 1,
 		.n_ext_ts	= 1,
 		.n_per_out	= 1,
+		.supported_extts_flags = PTP_ENABLE_FEATURE |
+					 PTP_EXTTS_EDGES |
+					 PTP_STRICT_FLAGS,
 	};
 
 	/* Only used on SJA1105 */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1fd1ae03eb90960d1e3e20acb0638baecaa995f5..96f68c356fe81b6954653f8903faf433ef6018f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1624,14 +1624,6 @@ static int ice_ptp_cfg_extts(struct ice_pf *pf, struct ptp_extts_request *rq,
 	int pin_desc_idx;
 	u8 tmr_idx;
 
-	/* Reject requests with unsupported flags */
-
-	if (rq->flags & ~(PTP_ENABLE_FEATURE |
-			  PTP_RISING_EDGE |
-			  PTP_FALLING_EDGE |
-			  PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	chan = rq->index;
 
@@ -2737,6 +2729,10 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->enable = ice_ptp_gpio_enable;
 	info->verify = ice_verify_pin;
 
+	info->supported_extts_flags = PTP_RISING_EDGE |
+				      PTP_FALLING_EDGE |
+				      PTP_STRICT_FLAGS;
+
 	switch (pf->hw.mac_type) {
 	case ICE_MAC_E810:
 		ice_ptp_set_funcs_e810(pf);
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index f323e1c1989f1bfbbf1f04043c2c0f14ae8c716f..7dd5bf02ca32506666ce422ae3da23e66b0adfca 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -502,13 +502,6 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
-		/* Reject requests with unsupported flags */
-		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-					PTP_RISING_EDGE |
-					PTP_FALLING_EDGE |
-					PTP_STRICT_FLAGS))
-			return -EOPNOTSUPP;
-
 		/* Both the rising and falling edge are timestamped */
 		if (rq->extts.flags & PTP_STRICT_FLAGS &&
 		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -658,13 +651,6 @@ static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
-		/* Reject requests with unsupported flags */
-		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-					PTP_RISING_EDGE |
-					PTP_FALLING_EDGE |
-					PTP_STRICT_FLAGS))
-			return -EOPNOTSUPP;
-
 		/* Reject requests failing to enable both edges. */
 		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
 		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -1356,6 +1342,10 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
 		adapter->ptp_caps.n_pins = IGB_N_SDP;
 		adapter->ptp_caps.pps = 0;
+		adapter->ptp_caps.supported_extts_flags = PTP_ENABLE_FEATURE |
+							  PTP_RISING_EDGE |
+							  PTP_FALLING_EDGE |
+							  PTP_STRICT_FLAGS;
 		adapter->ptp_caps.pin_config = adapter->sdp_config;
 		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
 		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
@@ -1378,6 +1368,8 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		adapter->ptp_caps.n_ext_ts = IGB_N_EXTTS;
 		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
 		adapter->ptp_caps.n_pins = IGB_N_SDP;
+		adapter->ptp_caps.supported_extts_flags = PTP_EXTTS_EDGES |
+							  PTP_STRICT_FLAGS;
 		adapter->ptp_caps.pps = 1;
 		adapter->ptp_caps.pin_config = adapter->sdp_config;
 		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 946edbad43022c9fdb5f2196b72c0e2d07436ed5..66a3a3ff1d8e3a91481c04d0055b48f177c13039 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -257,13 +257,6 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
-		/* Reject requests with unsupported flags */
-		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-					PTP_RISING_EDGE |
-					PTP_FALLING_EDGE |
-					PTP_STRICT_FLAGS))
-			return -EOPNOTSUPP;
-
 		/* Reject requests failing to enable both edges. */
 		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
 		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -1146,6 +1139,10 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		adapter->ptp_caps.pin_config = adapter->sdp_config;
 		adapter->ptp_caps.n_ext_ts = IGC_N_EXTTS;
 		adapter->ptp_caps.n_per_out = IGC_N_PEROUT;
+		adapter->ptp_caps.supported_extts_flags = PTP_ENABLE_FEATURE |
+							  PTP_RISING_EDGE |
+							  PTP_FALLING_EDGE |
+							  PTP_STRICT_FLAGS;
 		adapter->ptp_caps.n_pins = IGC_N_SDP;
 		adapter->ptp_caps.verify = igc_ptp_verify_pin;
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
index 65a94e46edcf167e93d8bd72f001d653dc433d8c..3eee84430ac98b7fe61469be684a0d1e92a03b39 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
@@ -643,13 +643,6 @@ static int mlx5_extts_configure(struct ptp_clock_info *ptp,
 	int pin = -1;
 	int err = 0;
 
-	/* Reject requests with unsupported flags */
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_RISING_EDGE |
-				PTP_FALLING_EDGE |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	/* Reject requests to enable time stamping on both edges. */
 	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
 	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -1034,6 +1027,10 @@ static void mlx5_init_pin_config(struct mlx5_core_dev *mdev)
 	clock->ptp_info.verify = mlx5_ptp_verify;
 	clock->ptp_info.pps = 1;
 
+	clock->ptp_info.supported_extts_flags = PTP_RISING_EDGE |
+						PTP_FALLING_EDGE |
+						PTP_STRICT_FLAGS;
+
 	for (i = 0; i < clock->ptp_info.n_pins; i++) {
 		snprintf(clock->ptp_info.pin_config[i].name,
 			 sizeof(clock->ptp_info.pin_config[i].name),
diff --git a/drivers/net/ethernet/microchip/lan743x_ptp.c b/drivers/net/ethernet/microchip/lan743x_ptp.c
index 0be44dcb339387e9756f36f909f65c20870bc49b..c3dd4f493bd22dab65a65db42ff9a3b2d4b3696d 100644
--- a/drivers/net/ethernet/microchip/lan743x_ptp.c
+++ b/drivers/net/ethernet/microchip/lan743x_ptp.c
@@ -942,12 +942,6 @@ static int lan743x_ptp_io_extts(struct lan743x_adapter *adapter, int on,
 
 	extts = &ptp->extts[index];
 
-	if (extts_request->flags & ~(PTP_ENABLE_FEATURE |
-				     PTP_RISING_EDGE |
-				     PTP_FALLING_EDGE |
-				     PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	if (on) {
 		extts_pin = ptp_find_pin(ptp->ptp_clock, PTP_PF_EXTTS, index);
 		if (extts_pin < 0)
@@ -1543,6 +1537,9 @@ int lan743x_ptp_open(struct lan743x_adapter *adapter)
 	ptp->ptp_clock_info.n_per_out = LAN743X_PTP_N_EVENT_CHAN;
 	ptp->ptp_clock_info.n_pins = n_pins;
 	ptp->ptp_clock_info.pps = LAN743X_PTP_N_PPS;
+	ptp->ptp_clock_info.supported_extts_flags = PTP_STRICT_FLAGS |
+						    PTP_RISING_EDGE |
+						    PTP_FALLING_EDGE;
 	ptp->ptp_clock_info.pin_config = ptp->pin_config;
 	ptp->ptp_clock_info.adjfine = lan743x_ptpci_adjfine;
 	ptp->ptp_clock_info.adjtime = lan743x_ptpci_adjtime;
diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_ptp.c b/drivers/net/ethernet/microchip/lan966x/lan966x_ptp.c
index 63905bb5a63a838516f394ca051a00202c9a82a7..1ba1b595ab935f8992120f15073af1d2d6e6de8b 100644
--- a/drivers/net/ethernet/microchip/lan966x/lan966x_ptp.c
+++ b/drivers/net/ethernet/microchip/lan966x/lan966x_ptp.c
@@ -917,12 +917,6 @@ static int lan966x_ptp_extts(struct ptp_clock_info *ptp,
 	if (lan966x->ptp_ext_irq <= 0)
 		return -EOPNOTSUPP;
 
-	/* Reject requests with unsupported flags */
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_RISING_EDGE |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	pin = ptp_find_pin(phc->clock, PTP_PF_EXTTS, rq->extts.index);
 	if (pin == -1 || pin >= LAN966X_PHC_PINS_NUM)
 		return -EINVAL;
@@ -978,6 +972,9 @@ static struct ptp_clock_info lan966x_ptp_clock_info = {
 	.n_per_out	= LAN966X_PHC_PINS_NUM,
 	.n_ext_ts	= LAN966X_PHC_PINS_NUM,
 	.n_pins		= LAN966X_PHC_PINS_NUM,
+	.supported_extts_flags = PTP_ENABLE_FEATURE |
+				 PTP_RISING_EDGE |
+				 PTP_STRICT_FLAGS,
 };
 
 static int lan966x_ptp_phc_init(struct lan966x *lan966x,
diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c b/drivers/net/ethernet/renesas/ravb_ptp.c
index b4365906669f3bd40953813e263aeaafd2e1eb70..93c8ca49e97a714af62bf2f4d3edce6bc5969835 100644
--- a/drivers/net/ethernet/renesas/ravb_ptp.c
+++ b/drivers/net/ethernet/renesas/ravb_ptp.c
@@ -176,12 +176,6 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
 	struct net_device *ndev = priv->ndev;
 	unsigned long flags;
 
-	/* Reject requests with unsupported flags */
-	if (req->flags & ~(PTP_ENABLE_FEATURE |
-			   PTP_RISING_EDGE |
-			   PTP_FALLING_EDGE))
-		return -EOPNOTSUPP;
-
 	if (req->index)
 		return -EINVAL;
 
diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
index 85e231451093f0ed1e7cec3341889f37f8d8935a..694e6125ead8c37af1cdde9db264d1e75180698d 100644
--- a/drivers/net/phy/dp83640.c
+++ b/drivers/net/phy/dp83640.c
@@ -478,13 +478,6 @@ static int ptp_dp83640_enable(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
-		/* Reject requests with unsupported flags */
-		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-					PTP_RISING_EDGE |
-					PTP_FALLING_EDGE |
-					PTP_STRICT_FLAGS))
-			return -EOPNOTSUPP;
-
 		/* Reject requests to enable time stamping on both edges. */
 		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
 		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
@@ -1002,6 +995,10 @@ static void dp83640_clock_init(struct dp83640_clock *clock, struct mii_bus *bus)
 	clock->caps.n_per_out	= N_PER_OUT;
 	clock->caps.n_pins	= DP83640_N_PINS;
 	clock->caps.pps		= 0;
+	clock->caps.supported_extts_flags = PTP_ENABLE_FEATURE |
+					    PTP_RISING_EDGE |
+					    PTP_FALLING_EDGE |
+					    PTP_STRICT_FLAGS;
 	clock->caps.adjfine	= ptp_dp83640_adjfine;
 	clock->caps.adjtime	= ptp_dp83640_adjtime;
 	clock->caps.gettime64	= ptp_dp83640_gettime;
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 24882d30f68589b2b821d13decdb9f858cdaa609..f469aaa423ecf71acc99d1abe75cf5a26f77b7b3 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -3406,11 +3406,6 @@ static int lan8814_ptp_extts(struct ptp_clock_info *ptpci,
 	struct phy_device *phydev = shared->phydev;
 	int pin;
 
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_EXTTS_EDGES |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	pin = ptp_find_pin(shared->ptp_clock, PTP_PF_EXTTS,
 			   rq->extts.index);
 	if (pin == -1 || pin != LAN8814_PTP_EXTTS_NUM)
@@ -3917,6 +3912,9 @@ static int lan8814_ptp_probe_once(struct phy_device *phydev)
 	shared->ptp_clock_info.n_ext_ts = LAN8814_PTP_EXTTS_NUM;
 	shared->ptp_clock_info.n_pins = LAN8814_PTP_GPIO_NUM;
 	shared->ptp_clock_info.pps = 0;
+	shared->ptp_clock_info.supported_extts_flags = PTP_ENABLE_FEATURE |
+						       PTP_EXTTS_EDGES |
+						       PTP_STRICT_FLAGS;
 	shared->ptp_clock_info.pin_config = shared->pin_config;
 	shared->ptp_clock_info.n_per_out = LAN8814_PTP_PEROUT_NUM;
 	shared->ptp_clock_info.adjfine = lan8814_ptpci_adjfine;
diff --git a/drivers/net/phy/nxp-c45-tja11xx.c b/drivers/net/phy/nxp-c45-tja11xx.c
index 250a018d5546854b65aa118b21ac3ada673a6fd4..1f74a30ea790b222ed5e373d83c2a6babc7ab4c2 100644
--- a/drivers/net/phy/nxp-c45-tja11xx.c
+++ b/drivers/net/phy/nxp-c45-tja11xx.c
@@ -861,12 +861,6 @@ static int nxp_c45_extts_enable(struct nxp_c45_phy *priv,
 	const struct nxp_c45_phy_data *data = nxp_c45_get_data(priv->phydev);
 	int pin;
 
-	if (extts->flags & ~(PTP_ENABLE_FEATURE |
-			      PTP_RISING_EDGE |
-			      PTP_FALLING_EDGE |
-			      PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
 	/* Sampling on both edges is not supported */
 	if ((extts->flags & PTP_RISING_EDGE) &&
 	    (extts->flags & PTP_FALLING_EDGE) &&
@@ -962,6 +956,10 @@ static int nxp_c45_init_ptp_clock(struct nxp_c45_phy *priv)
 		.n_pins		= ARRAY_SIZE(nxp_c45_ptp_pins),
 		.n_ext_ts	= 1,
 		.n_per_out	= 1,
+		.supported_extts_flags = PTP_ENABLE_FEATURE |
+					 PTP_RISING_EDGE |
+					 PTP_FALLING_EDGE |
+					 PTP_STRICT_FLAGS,
 	};
 
 	priv->ptp_clock = ptp_clock_register(&priv->caps,
diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index 4380e6ddb8495cef98bb89931ce3796a9892441e..c24228c139549d14d95a1ff080e75c28420f40bd 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -162,6 +162,7 @@ long ptp_ioctl(struct posix_clock_context *pccontext, unsigned int cmd,
 {
 	struct ptp_clock *ptp =
 		container_of(pccontext->clk, struct ptp_clock, clock);
+	unsigned int i, pin_index, supported_extts_flags;
 	struct ptp_sys_offset_extended *extoff = NULL;
 	struct ptp_sys_offset_precise precise_offset;
 	struct system_device_crosststamp xtstamp;
@@ -172,7 +173,6 @@ long ptp_ioctl(struct posix_clock_context *pccontext, unsigned int cmd,
 	struct ptp_clock_request req;
 	struct ptp_clock_caps caps;
 	struct ptp_clock_time *pct;
-	unsigned int i, pin_index;
 	struct ptp_pin_desc pd;
 	struct timespec64 ts;
 	int enable, err = 0;
@@ -240,6 +240,18 @@ long ptp_ioctl(struct posix_clock_context *pccontext, unsigned int cmd,
 			err = -EINVAL;
 			break;
 		}
+		supported_extts_flags = ptp->info->supported_extts_flags;
+		/* The PTP_ENABLE_FEATURE flag is always supported. */
+		supported_extts_flags |= PTP_ENABLE_FEATURE;
+		/* If the driver does not support strictly checking flags, the
+		 * PTP_RISING_EDGE and PTP_FALLING_EDGE flags are merely
+		 * hints which are not enforced.
+		 */
+		if (!(supported_extts_flags & PTP_STRICT_FLAGS))
+			supported_extts_flags |= PTP_EXTTS_EDGES;
+		/* Reject unsupported flags */
+		if (req.extts.flags & ~supported_extts_flags)
+			return -EOPNOTSUPP;
 		req.type = PTP_CLK_REQ_EXTTS;
 		enable = req.extts.flags & PTP_ENABLE_FEATURE ? 1 : 0;
 		if (mutex_lock_interruptible(&ptp->pincfg_mux))
diff --git a/drivers/ptp/ptp_clockmatrix.c b/drivers/ptp/ptp_clockmatrix.c
index fbb3fa8fc60b2f6571519491620ace7d7a9f8a1a..ce78f4cd9fe6d1b89a693de082ba580ea7c9a325 100644
--- a/drivers/ptp/ptp_clockmatrix.c
+++ b/drivers/ptp/ptp_clockmatrix.c
@@ -283,18 +283,6 @@ static int idtcm_extts_enable(struct idtcm_channel *channel,
 	idtcm = channel->idtcm;
 	old_mask = idtcm->extts_mask;
 
-	/* Reject requests with unsupported flags */
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_RISING_EDGE |
-				PTP_FALLING_EDGE |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
-	/* Reject requests to enable time stamping on falling edge */
-	if ((rq->extts.flags & PTP_ENABLE_FEATURE) &&
-	    (rq->extts.flags & PTP_FALLING_EDGE))
-		return -EOPNOTSUPP;
-
 	if (index >= MAX_TOD)
 		return -EINVAL;
 
@@ -2043,6 +2031,9 @@ static const struct ptp_clock_info idtcm_caps = {
 	.n_per_out	= 12,
 	.n_ext_ts	= MAX_TOD,
 	.n_pins		= MAX_REF_CLK,
+	.supported_extts_flags = PTP_ENABLE_FEATURE |
+				 PTP_RISING_EDGE |
+				 PTP_STRICT_FLAGS,
 	.adjphase	= &idtcm_adjphase,
 	.getmaxphase	= &idtcm_getmaxphase,
 	.adjfine	= &idtcm_adjfine,
@@ -2060,6 +2051,9 @@ static const struct ptp_clock_info idtcm_caps_deprecated = {
 	.n_per_out	= 12,
 	.n_ext_ts	= MAX_TOD,
 	.n_pins		= MAX_REF_CLK,
+	.supported_extts_flags = PTP_ENABLE_FEATURE |
+				 PTP_RISING_EDGE |
+				 PTP_STRICT_FLAGS,
 	.adjphase	= &idtcm_adjphase,
 	.getmaxphase    = &idtcm_getmaxphase,
 	.adjfine	= &idtcm_adjfine,
diff --git a/drivers/ptp/ptp_fc3.c b/drivers/ptp/ptp_fc3.c
index cfced36c70bcb2bca4bfd21b9524c32c4999dba9..ab856c1f34a474d76c2f3e436aa5a4100fe6ff0f 100644
--- a/drivers/ptp/ptp_fc3.c
+++ b/drivers/ptp/ptp_fc3.c
@@ -592,6 +592,7 @@ static const struct ptp_clock_info idtfc3_caps = {
 	.max_adj	= MAX_FFO_PPB,
 	.n_per_out	= 1,
 	.n_ext_ts	= 1,
+	.supported_extts_flags = PTP_ENABLE_FEATURE | PTP_STRICT_FLAGS | PTP_EXT_OFFSET,
 	.adjphase	= &idtfc3_adjphase,
 	.adjfine	= &idtfc3_adjfine,
 	.adjtime	= &idtfc3_adjtime,
diff --git a/drivers/ptp/ptp_idt82p33.c b/drivers/ptp/ptp_idt82p33.c
index b2fd94d4f863129a5fccbb1233ce0c94602de2a5..d7d3e4dd2ce7f6cb5cdf90b1cc306f888ec8a3a3 100644
--- a/drivers/ptp/ptp_idt82p33.c
+++ b/drivers/ptp/ptp_idt82p33.c
@@ -246,18 +246,6 @@ static int idt82p33_extts_enable(struct idt82p33_channel *channel,
 	idt82p33  = channel->idt82p33;
 	old_mask = idt82p33->extts_mask;
 
-	/* Reject requests with unsupported flags */
-	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
-				PTP_RISING_EDGE |
-				PTP_FALLING_EDGE |
-				PTP_STRICT_FLAGS))
-		return -EOPNOTSUPP;
-
-	/* Reject requests to enable time stamping on falling edge */
-	if ((rq->extts.flags & PTP_ENABLE_FEATURE) &&
-	    (rq->extts.flags & PTP_FALLING_EDGE))
-		return -EOPNOTSUPP;
-
 	if (index >= MAX_PHC_PLL)
 		return -EINVAL;
 
@@ -1187,6 +1175,10 @@ static void idt82p33_caps_init(u32 index, struct ptp_clock_info *caps,
 
 	caps->pin_config = pin_cfg;
 
+	caps->supported_extts_flags = PTP_ENABLE_FEATURE |
+				      PTP_RISING_EDGE |
+				      PTP_STRICT_FLAGS;
+
 	for (i = 0; i < max_pins; ++i) {
 		ppd = &pin_cfg[i];
 

-- 
2.48.1.397.gec9d649cc640

