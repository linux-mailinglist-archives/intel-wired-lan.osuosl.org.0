Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9A222C9A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jul 2020 18:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DA86235B8;
	Fri, 24 Jul 2020 16:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwhHxIgfX-mj; Fri, 24 Jul 2020 16:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED06023491;
	Fri, 24 Jul 2020 16:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4F51BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 16:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18DC3884D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 16:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1Sy50AWzES5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 16:00:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAF3C885B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 16:00:06 +0000 (UTC)
IronPort-SDR: h4HTteRJRrK46in690CLabQM8wA7ZO4jY7lW9u2NLiQnly72vn3LswHlLFl26Rb+yv2q3KFMvU
 xGvwqhW7QMpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="130804470"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="130804470"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 09:00:03 -0700
IronPort-SDR: iHGqxwiC9YMTygQ2JlDDHnxQHMqpKp4JwtXd4Xr1mxI4zzTp2kYk4TUt7QyeMM+7SujvEyorrC
 G1ExkAuaVS/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="271377538"
Received: from pkwapuli-mobl.ger.corp.intel.com (HELO
 pkwapuli-vbox.igk.intel.com) ([10.213.24.81])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jul 2020 09:00:01 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jul 2020 17:59:48 +0200
Message-Id: <20200724155948.9434-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
References: <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
Subject: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external
 synchronization clock
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for external synchronization clock via GPIOs.
1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
SDP3_3 and GPIO_4.
Previously it was not possible to use the external PTP
synchronization clock.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  74 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  18 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 748 +++++++++++++++++-
 .../net/ethernet/intel/i40e/i40e_register.h   |   2 +
 4 files changed, 822 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index e95b8da..639b913 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -206,6 +206,11 @@ enum i40e_fd_stat_idx {
 #define I40E_FD_ATR_TUNNEL_STAT_IDX(pf_id) \
 			(I40E_FD_STAT_PF_IDX(pf_id) + I40E_FD_STAT_ATR_TUNNEL)
 
+/* get PTP pins for ioctl */
+#define SIOCGPINS	(SIOCDEVPRIVATE + 0)
+/* set PTP pins for ioctl */
+#define SIOCSPINS	(SIOCDEVPRIVATE + 1)
+
 /* The following structure contains the data parsed from the user-defined
  * field of the ethtool_rx_flow_spec structure.
  */
@@ -437,6 +442,8 @@ struct i40e_channel {
 	struct i40e_vsi *parent_vsi;
 };
 
+struct i40e_ptp_pins_settings;
+
 static inline bool i40e_is_channel_macvlan(struct i40e_channel *ch)
 {
 	return !!ch->fwd;
@@ -625,12 +632,72 @@ struct i40e_pf {
 
 	struct i40e_filter_control_settings filter_settings;
 
+/* GPIO defines used by PTP */
+#define I40E_SDP3_2			18
+#define I40E_SDP3_3			19
+#define I40E_GPIO_4			20
+#define I40E_LED2_0			26
+#define I40E_LED2_1			27
+#define I40E_LED3_0			28
+#define I40E_LED3_1			29
+#define I40E_GLGEN_GPIO_SET_SDP_DATA_HI \
+	(1 << I40E_GLGEN_GPIO_SET_SDP_DATA_SHIFT)
+#define I40E_GLGEN_GPIO_SET_DRV_SDP_DATA \
+	(1 << I40E_GLGEN_GPIO_SET_DRIVE_SDP_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PRT_NUM_0 \
+	(0 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PRT_NUM_1 \
+	(1 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_RESERVED	BIT(2)
+#define I40E_GLGEN_GPIO_CTL_DIR_OUT \
+	(1 << I40E_GLGEN_GPIO_CTL_PIN_DIR_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TRI_DRV_HI \
+	(1 << I40E_GLGEN_GPIO_CTL_TRI_CTL_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_OUT_HI_RST \
+	(1 << I40E_GLGEN_GPIO_CTL_OUT_CTL_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TIMESYNC_0 \
+	(3 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TIMESYNC_1 \
+	(4 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN \
+	(0x3F << I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PORT_0_IN_TIMESYNC_0 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
+#define I40E_GLGEN_GPIO_CTL_PORT_1_IN_TIMESYNC_0 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
+#define I40E_GLGEN_GPIO_CTL_PORT_0_OUT_TIMESYNC_1 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 | I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
+	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
+#define I40E_GLGEN_GPIO_CTL_PORT_1_OUT_TIMESYNC_1 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 | I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
+	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
+#define I40E_PRTTSYN_AUX_1_INSTNT \
+	(1 << I40E_PRTTSYN_AUX_1_INSTNT_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_ENABLE \
+	(1 << I40E_PRTTSYN_AUX_0_OUT_ENA_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_CLK_MOD	(3 << I40E_PRTTSYN_AUX_0_OUTMOD_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_ENABLE_CLK_MOD \
+	(I40E_PRTTSYN_AUX_0_OUT_ENABLE | I40E_PRTTSYN_AUX_0_OUT_CLK_MOD)
+#define I40E_PTP_HALF_SECOND		500000000LL /* nano seconds */
+#define I40E_PTP_2_SEC_DELAY		2
+
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct sk_buff *ptp_tx_skb;
 	unsigned long ptp_tx_start;
 	struct hwtstamp_config tstamp_config;
 	struct timespec64 ptp_prev_hw_time;
+	struct work_struct ptp_pps_work;
+	struct work_struct ptp_extts0_work;
+	struct work_struct ptp_extts1_work;
 	ktime_t ptp_reset_start;
 	struct mutex tmreg_lock; /* Used to protect the SYSTIME registers. */
 	u32 ptp_adj_mult;
@@ -638,10 +705,14 @@ struct i40e_pf {
 	u32 tx_hwtstamp_skipped;
 	u32 rx_hwtstamp_cleared;
 	u32 latch_event_flags;
+	u64 ptp_pps_start;
+	u32 pps_delay;
 	spinlock_t ptp_rx_lock; /* Used to protect Rx timestamp registers. */
+	struct ptp_pin_desc ptp_pin[3];
 	unsigned long latch_events[4];
 	bool ptp_tx;
 	bool ptp_rx;
+	struct i40e_ptp_pins_settings *ptp_pins;
 	u16 rss_table_size; /* HW RSS table size */
 	u32 max_bw;
 	u32 min_bw;
@@ -1138,10 +1209,13 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index);
 void i40e_ptp_set_increment(struct i40e_pf *pf);
 int i40e_ptp_set_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
 int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
+int i40e_ptp_set_pins_ioctl(struct i40e_pf *pf, struct ifreq *ifr);
+int i40e_ptp_get_pins(struct i40e_pf *pf, struct ifreq *ifr);
 void i40e_ptp_save_hw_time(struct i40e_pf *pf);
 void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
 void i40e_ptp_init(struct i40e_pf *pf);
 void i40e_ptp_stop(struct i40e_pf *pf);
+int i40e_ptp_alloc_pins(struct i40e_pf *pf);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
 i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
 i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 56ecd6c..2a9251e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2679,7 +2679,15 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	case SIOCGHWTSTAMP:
 		return i40e_ptp_get_ts_config(pf, ifr);
 	case SIOCSHWTSTAMP:
+		if (!capable(CAP_SYS_ADMIN))
+			return -EACCES;
 		return i40e_ptp_set_ts_config(pf, ifr);
+	case SIOCSPINS:
+		if (!capable(CAP_SYS_ADMIN))
+			return -EACCES;
+		return i40e_ptp_set_pins_ioctl(pf, ifr);
+	case SIOCGPINS:
+		return i40e_ptp_get_pins(pf, ifr);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -4028,10 +4036,13 @@ static irqreturn_t i40e_intr(int irq, void *data)
 	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
 		u32 prttsyn_stat = rd32(hw, I40E_PRTTSYN_STAT_0);
 
-		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK) {
-			icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
+		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_EVENT0_MASK)
+			schedule_work(&pf->ptp_extts0_work);
+
+		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK)
 			i40e_ptp_tx_hwtstamp(pf);
-		}
+
+		icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
 	}
 
 	/* If a critical error is pending we have no choice but to reset the
@@ -15007,6 +15018,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (is_valid_ether_addr(hw->mac.port_addr))
 		pf->hw_features |= I40E_HW_PORT_ID_VALID;
 
+	i40e_ptp_alloc_pins(pf);
 	pci_set_drvdata(pdev, pf);
 	pci_save_state(pdev);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 9bf1ad4..514aa7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -3,6 +3,7 @@
 
 #include "i40e.h"
 #include <linux/ptp_classify.h>
+#include <linux/posix-clock.h>
 
 /* The XL710 timesync is very much like Intel's 82599 design when it comes to
  * the fundamental clock design. However, the clock operations are much simpler
@@ -19,10 +20,230 @@
 #define I40E_PTP_40GB_INCVAL		0x0199999999ULL
 #define I40E_PTP_10GB_INCVAL_MULT	2
 #define I40E_PTP_1GB_INCVAL_MULT	20
+#define I40E_ISGN			0x80000000
 
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V2  (2 << \
 					I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
+#define I40E_SUBDEV_ID_25G_PTP_PIN	0xB
+#define to_dev(obj) container_of(obj, struct device, kobj)
+
+enum i40e_ptp_pin {
+	SDP3_2 = 0,
+	SDP3_3,
+	GPIO_4
+};
+
+static struct ptp_pin_desc sdp_desc[] = {
+	/* name     idx      func      chan */
+	{"SDP3_2", SDP3_2, PTP_PF_NONE, 0},
+	{"SDP3_3", SDP3_3, PTP_PF_NONE, 1},
+	{"GPIO_4", GPIO_4, PTP_PF_NONE, 1},
+};
+
+enum i40e_ptp_gpio_pin_state {
+	end = -2,
+	invalid,
+	off,
+	in_A,
+	in_B,
+	out_A,
+	out_B,
+};
+
+static const char * const i40e_ptp_gpio_pin_state2str[] = {
+	"off", "in_A", "in_B", "out_A", "out_B"
+};
+
+enum i40e_ptp_led_pin_state {
+	low = 0,
+	high,
+};
+
+struct i40e_ptp_pins_settings {
+	enum i40e_ptp_gpio_pin_state sdp3_2;
+	enum i40e_ptp_gpio_pin_state sdp3_3;
+	enum i40e_ptp_gpio_pin_state gpio_4;
+	enum i40e_ptp_led_pin_state led2_0;
+	enum i40e_ptp_led_pin_state led2_1;
+	enum i40e_ptp_led_pin_state led3_0;
+	enum i40e_ptp_led_pin_state led3_1;
+};
+
+static const struct i40e_ptp_pins_settings
+	i40e_ptp_pin_led_allowed_states[] = {
+	{off,	off,	off,		high,	high,	high,	high},
+	{off,	in_A,	off,		high,	high,	high,	low},
+	{off,	out_A,	off,		high,	low,	high,	high},
+	{off,	in_B,	off,		high,	high,	high,	low},
+	{off,	out_B,	off,		high,	low,	high,	high},
+	{in_A,	off,	off,		high,	high,	high,	low},
+	{in_A,	in_B,	off,		high,	high,	high,	low},
+	{in_A,	out_B,	off,		high,	low,	high,	high},
+	{out_A,	off,	off,		high,	low,	high,	high},
+	{out_A,	in_B,	off,		high,	low,	high,	high},
+	{in_B,	off,	off,		high,	high,	high,	low},
+	{in_B,	in_A,	off,		high,	high,	high,	low},
+	{in_B,	out_A,	off,		high,	low,	high,	high},
+	{out_B,	off,	off,		high,	low,	high,	high},
+	{out_B,	in_A,	off,		high,	low,	high,	high},
+	{off,	off,	in_A,		high,	high,	low,	high},
+	{off,	out_A,	in_A,		high,	low,	low,	high},
+	{off,	in_B,	in_A,		high,	high,	low,	low},
+	{off,	out_B,	in_A,		high,	low,	low,	high},
+	{out_A,	off,	in_A,		high,	low,	low,	high},
+	{out_A,	in_B,	in_A,		high,	low,	low,	high},
+	{in_B,	off,	in_A,		high,	high,	low,	low},
+	{in_B,	out_A,	in_A,		high,	low,	low,	high},
+	{out_B,	off,	in_A,		high,	low,	low,	high},
+	{off,	off,	out_A,		low,	high,	high,	high},
+	{off,	in_A,	out_A,		low,	high,	high,	low},
+	{off,	in_B,	out_A,		low,	high,	high,	low},
+	{off,	out_B,	out_A,		low,	low,	high,	high},
+	{in_A,	off,	out_A,		low,	high,	high,	low},
+	{in_A,	in_B,	out_A,		low,	high,	high,	low},
+	{in_A,	out_B,	out_A,		low,	low,	high,	high},
+	{in_B,	off,	out_A,		low,	high,	high,	low},
+	{in_B,	in_A,	out_A,		low,	high,	high,	low},
+	{out_B,	off,	out_A,		low,	low,	high,	high},
+	{out_B,	in_A,	out_A,		low,	low,	high,	high},
+	{off,	off,	in_B,		high,	high,	low,	high},
+	{off,	in_A,	in_B,		high,	high,	low,	low},
+	{off,	out_A,	in_B,		high,	low,	low,	high},
+	{off,	out_B,	in_B,		high,	low,	low,	high},
+	{in_A,	off,	in_B,		high,	high,	low,	low},
+	{in_A,	out_B,	in_B,		high,	low,	low,	high},
+	{out_A,	off,	in_B,		high,	low,	low,	high},
+	{out_B,	off,	in_B,		high,	low,	low,	high},
+	{out_B,	in_A,	in_B,		high,	low,	low,	high},
+	{off,	off,	out_B,		low,	high,	high,	high},
+	{off,	in_A,	out_B,		low,	high,	high,	low},
+	{off,	out_A,	out_B,		low,	low,	high,	high},
+	{off,	in_B,	out_B,		low,	high,	high,	low},
+	{in_A,	off,	out_B,		low,	high,	high,	low},
+	{in_A,	in_B,	out_B,		low,	high,	high,	low},
+	{out_A,	off,	out_B,		low,	low,	high,	high},
+	{out_A,	in_B,	out_B,		low,	low,	high,	high},
+	{in_B,	off,	out_B,		low,	high,	high,	low},
+	{in_B,	in_A,	out_B,		low,	high,	high,	low},
+	{in_B,	out_A,	out_B,		low,	low,	high,	high},
+	{end,	end,	end,		end,	end,	end,	end}
+};
+
+static int i40e_ptp_set_pins(struct i40e_pf *pf,
+			     struct i40e_ptp_pins_settings *pins);
+
+/**
+ * i40e_ptp_extts0_work - workqueue task function
+ * @work: workqueue task structure
+ *
+ * Service for PTP external clock event
+ **/
+static void i40e_ptp_extts0_work(struct work_struct *work)
+{
+	struct i40e_pf *pf = container_of(work, struct i40e_pf,
+					  ptp_extts0_work);
+	struct i40e_hw *hw = &pf->hw;
+	struct ptp_clock_event event;
+	u32 hi, lo;
+
+	/* Event time is captured by one of the two matched registers
+	 *      PRTTSYN_EVNT_L: 32 LSB of sampled time event
+	 *      PRTTSYN_EVNT_H: 32 MSB of sampled time event
+	 * Event is defined in PRTTSYN_EVNT_0 register
+	 */
+	lo = rd32(hw, I40E_PRTTSYN_EVNT_L(0));
+	hi = rd32(hw, I40E_PRTTSYN_EVNT_H(0));
+
+	event.timestamp = (((u64)hi) << 32) | lo;
+
+	event.type = PTP_CLOCK_EXTTS;
+	event.index = 0;
+
+	/* fire event */
+	ptp_clock_event(pf->ptp_clock, &event);
+}
+
+/**
+ * i40e_is_ptp_pin_dev - check if device supports PTP pins
+ * @hw: pointer to the hardware structure
+ *
+ * Return true if device supports PTP pins, false otherwise.
+ **/
+static bool i40e_is_ptp_pin_dev(struct i40e_hw *hw)
+{
+	return hw->device_id == I40E_DEV_ID_25G_SFP28 &&
+	       hw->subsystem_device_id == I40E_SUBDEV_ID_25G_PTP_PIN;
+}
+
+/**
+ * i40e_can_do_pins - check possibility of manipulating the pins
+ * @pf: board private structure
+ *
+ * Check if all conditions are satisfied to manipulate PTP pins.
+ * Return true if pins can be manipulated or false otherwise.
+ **/
+static bool i40e_can_do_pins(struct i40e_pf *pf)
+{
+	if (!i40e_is_ptp_pin_dev(&pf->hw)) {
+		dev_warn(&pf->pdev->dev,
+			 "PTP external clock not supported.\n");
+		return false;
+	}
+
+	if (!pf->ptp_pins || pf->hw.pf_id) {
+		dev_warn(&pf->pdev->dev,
+			 "PTP PIN reading allowed for PF0 only.\n");
+		return false;
+	}
+
+	return true;
+}
+
+/**
+ * i40_ptp_reset_timing_events - Reset PTP timing events
+ * @pf: Board private structure
+ *
+ * This function resets timing events for pf.
+ **/
+static void i40_ptp_reset_timing_events(struct i40e_pf *pf)
+{
+	u32 i;
+
+	spin_lock_bh(&pf->ptp_rx_lock);
+	for (i = 0; i <= I40E_PRTTSYN_RXTIME_L_MAX_INDEX; i++) {
+		/* reading and automatically clearing timing events registers */
+		rd32(&pf->hw, I40E_PRTTSYN_RXTIME_L(i));
+		rd32(&pf->hw, I40E_PRTTSYN_RXTIME_H(i));
+		pf->latch_events[i] = 0;
+	}
+	/* reading and automatically clearing timing events registers */
+	rd32(&pf->hw, I40E_PRTTSYN_TXTIME_L);
+	rd32(&pf->hw, I40E_PRTTSYN_TXTIME_H);
+
+	pf->tx_hwtstamp_timeouts = 0;
+	pf->tx_hwtstamp_skipped = 0;
+	pf->rx_hwtstamp_cleared = 0;
+	pf->latch_event_flags = 0;
+	spin_unlock_bh(&pf->ptp_rx_lock);
+}
+
+/**
+ * i40e_ptp_verify - check pins
+ * @ptp: ptp clock
+ * @pin: pin index
+ * @func: assigned function
+ * @chan: channel
+ *
+ * Check pins consistency.
+ * Return 0 on success or error on failure.
+ **/
+static int i40e_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
+			   enum ptp_pin_function func, unsigned int chan)
+{
+	/* TODO: implement pin checking */
+	return 0;
+}
 
 /**
  * i40e_ptp_read - Read the PHC time from the device
@@ -135,6 +356,37 @@ static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
 	return 0;
 }
 
+/**
+ * i40e_ptp_set_1pps_signal_hw - configure 1PPS PTP signal for pins
+ * @pf: the PF private data structure
+ *
+ * Configure 1PPS signal used for PTP pins
+ **/
+static void i40e_ptp_set_1pps_signal_hw(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
+	struct timespec64 now;
+	u64 ns;
+
+	wr32(hw, I40E_PRTTSYN_AUX_0(1), 0);
+	wr32(hw, I40E_PRTTSYN_AUX_1(1), I40E_PRTTSYN_AUX_1_INSTNT);
+	wr32(hw, I40E_PRTTSYN_AUX_0(1), I40E_PRTTSYN_AUX_0_OUT_ENABLE);
+
+	i40e_ptp_read(pf, &now, NULL);
+	now.tv_sec += I40E_PTP_2_SEC_DELAY;
+	now.tv_nsec = 0;
+	ns = timespec64_to_ns(&now);
+
+	/* I40E_PRTTSYN_TGT_L(1) */
+	wr32(hw, I40E_PRTTSYN_TGT_L(1), ns & 0xFFFFFFFF);
+	/* I40E_PRTTSYN_TGT_H(1) */
+	wr32(hw, I40E_PRTTSYN_TGT_H(1), ns >> 32);
+	wr32(hw, I40E_PRTTSYN_CLKO(1), I40E_PTP_HALF_SECOND);
+	wr32(hw, I40E_PRTTSYN_AUX_1(1), I40E_PRTTSYN_AUX_1_INSTNT);
+	wr32(hw, I40E_PRTTSYN_AUX_0(1),
+	     I40E_PRTTSYN_AUX_0_OUT_ENABLE_CLK_MOD);
+}
+
 /**
  * i40e_ptp_adjtime - Adjust the PHC time
  * @ptp: The PTP clock structure
@@ -145,14 +397,35 @@ static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
 static int i40e_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
 {
 	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
-	struct timespec64 now, then;
+	struct i40e_hw *hw = &pf->hw;
 
-	then = ns_to_timespec64(delta);
 	mutex_lock(&pf->tmreg_lock);
 
-	i40e_ptp_read(pf, &now, NULL);
-	now = timespec64_add(now, then);
-	i40e_ptp_write(pf, (const struct timespec64 *)&now);
+	if (delta > -999999900LL && delta < 999999900LL) {
+		int neg_adj = 0;
+		u32 timadj;
+		u64 tohw;
+
+		if (delta < 0) {
+			neg_adj = 1;
+			tohw = -delta;
+		} else {
+			tohw = delta;
+		}
+
+		timadj = tohw & 0x3FFFFFFF;
+		if (neg_adj)
+			timadj |= I40E_ISGN;
+		wr32(hw, I40E_PRTTSYN_ADJ, timadj);
+	} else {
+		struct timespec64 then, now;
+
+		then = ns_to_timespec64(delta);
+		i40e_ptp_read(pf, &now, NULL);
+		now = timespec64_add(now, then);
+		i40e_ptp_write(pf, (const struct timespec64 *)&now);
+		i40e_ptp_set_1pps_signal_hw(pf);
+	}
 
 	mutex_unlock(&pf->tmreg_lock);
 
@@ -183,7 +456,7 @@ static int i40e_ptp_gettimex(struct ptp_clock_info *ptp, struct timespec64 *ts,
 /**
  * i40e_ptp_settime - Set the time of the PHC
  * @ptp: The PTP clock structure
- * @ts: timespec structure that holds the new time value
+ * @ts: timespec64 structure that holds the new time value
  *
  * Set the device clock to the user input value. The conversion from timespec
  * to ns happens in the write function.
@@ -201,18 +474,140 @@ static int i40e_ptp_settime(struct ptp_clock_info *ptp,
 }
 
 /**
- * i40e_ptp_feature_enable - Enable/disable ancillary features of the PHC subsystem
+ * i40e_pps_configure - configure PPS events
+ * @ptp: ptp clock
+ * @rq: clock request
+ * @on: status
+ *
+ * Configure PPS events for external clock source.
+ * Return 0 on success or error on failure.
+ **/
+static int i40e_pps_configure(struct ptp_clock_info *ptp,
+			      struct ptp_clock_request *rq,
+			      int on)
+{
+	/* TODO: implement PPS events */
+	return 0;
+}
+
+/**
+ * i40e_pin_state - determine PIN state
+ * @index: PIN index
+ * @func: function assigned to PIN
+ *
+ * Determine PIN state based on PIN index and function assigned.
+ * Return PIN state.
+ **/
+static enum i40e_ptp_gpio_pin_state i40e_pin_state(int index, int func)
+{
+	enum i40e_ptp_gpio_pin_state state = off;
+
+	if (index == 0 && func == PTP_PF_EXTTS)
+		state = in_A;
+	if (index == 1 && func == PTP_PF_EXTTS)
+		state = in_B;
+	if (index == 0 && func == PTP_PF_PEROUT)
+		state = out_A;
+	if (index == 1 && func == PTP_PF_PEROUT)
+		state = out_B;
+
+	return state;
+}
+
+/**
+ * i40e_ptp_enable_pin - enable PINs.
+ * @pf: private board structure
+ * @chan: channel
+ * @func: PIN function
+ * @on: state
+ *
+ * Enable PTP pins for external clock source.
+ * Return 0 on success or error code on failure.
+ **/
+static int i40e_ptp_enable_pin(struct i40e_pf *pf, unsigned int chan,
+			       enum ptp_pin_function func, int on)
+{
+	enum i40e_ptp_gpio_pin_state *pin = NULL;
+	struct i40e_ptp_pins_settings pins;
+	int pin_index;
+
+	/* Preserve previous state of pins that we don't touch */
+	pins.sdp3_2 = pf->ptp_pins->sdp3_2;
+	pins.sdp3_3 = pf->ptp_pins->sdp3_3;
+	pins.gpio_4 = pf->ptp_pins->gpio_4;
+
+	/* To turn on the pin - find the corresponding one based on
+	 * the given index. To to turn the function off - find
+	 * which pin had it assigned. Don't use ptp_find_pin here
+	 * because it tries to lock the pincfg_mux which is locked by
+	 * ptp_pin_store() that calls here.
+	 */
+	if (on) {
+		pin_index = ptp_find_pin(pf->ptp_clock, func, chan);
+		if (pin_index < 0)
+			return -EBUSY;
+
+		switch (pin_index) {
+		case SDP3_2:
+			pin = &pins.sdp3_2;
+			break;
+		case SDP3_3:
+			pin = &pins.sdp3_3;
+			break;
+		case GPIO_4:
+			pin = &pins.gpio_4;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		*pin = i40e_pin_state(chan, func);
+	} else {
+		if (pins.sdp3_2 == i40e_pin_state(chan, func))
+			pins.sdp3_2 = off;
+		if (pins.sdp3_3 == i40e_pin_state(chan, func))
+			pins.sdp3_3 = off;
+		if (pins.gpio_4 == i40e_pin_state(chan, func))
+			pins.gpio_4 = off;
+	}
+
+	return i40e_ptp_set_pins(pf, &pins) ? -EINVAL : 0;
+}
+
+/**
+ * i40e_ptp_feature_enable - Enable external clock pins
  * @ptp: The PTP clock structure
- * @rq: The requested feature to change
- * @on: Enable/disable flag
+ * @rq: The PTP clock request structure
+ * @on: To turn feature on/off
  *
- * The XL710 does not support any of the ancillary features of the PHC
- * subsystem, so this function may just return.
+ * Setting on/off PTP PPS feature for pin.
  **/
 static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
-				   struct ptp_clock_request *rq, int on)
+				   struct ptp_clock_request *rq,
+				   int on)
 {
-	return -EOPNOTSUPP;
+	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
+
+	enum ptp_pin_function func;
+	unsigned int chan;
+
+	/* TODO: Implement flags handling for EXTTS and PEROUT */
+	switch (rq->type) {
+	case PTP_CLK_REQ_EXTTS:
+		func = PTP_PF_EXTTS;
+		chan = rq->extts.index;
+		break;
+	case PTP_CLK_REQ_PEROUT:
+		func = PTP_PF_PEROUT;
+		chan = rq->perout.index;
+		break;
+	case PTP_CLK_REQ_PPS:
+		return i40e_pps_configure(ptp, rq, on);
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return i40e_ptp_enable_pin(pf, chan, func, on);
 }
 
 /**
@@ -259,7 +654,6 @@ static u32 i40e_ptp_get_rx_events(struct i40e_pf *pf)
 /**
  * i40e_ptp_rx_hang - Detect error case when Rx timestamp registers are hung
  * @pf: The PF private data structure
- * @vsi: The VSI with the rings relevant to 1588
  *
  * This watchdog task is scheduled to detect error case where hardware has
  * dropped an Rx packet that was timestamped when the ring is full. The
@@ -524,6 +918,245 @@ int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr)
 		-EFAULT : 0;
 }
 
+/**
+ * i40e_ptp_free_pins - free memory used by PTP pins
+ * @pf: Board private structure
+ *
+ * Release memory allocated for PTP pins.
+ **/
+static void i40e_ptp_free_pins(struct i40e_pf *pf)
+{
+	if (pf->hw.pf_id == 0 && i40e_is_ptp_pin_dev(&pf->hw)) {
+		kfree(pf->ptp_pins);
+		kfree(pf->ptp_caps.pin_config);
+		pf->ptp_pins = NULL;
+	}
+}
+
+/**
+ * i40e_ptp_set_pin_hw - Set HW GPIO pin
+ * @hw: pointer to the hardware structure
+ * @pin: pin index
+ * @state: pin state
+ *
+ * Set status of GPIO pin for external clock handling.
+ **/
+static void i40e_ptp_set_pin_hw(struct i40e_hw *hw,
+				unsigned int pin,
+				enum i40e_ptp_gpio_pin_state state)
+{
+	switch (state) {
+	case off:
+		wr32(hw, I40E_GLGEN_GPIO_CTL(pin), 0);
+		break;
+	case in_A:
+		wr32(hw, I40E_GLGEN_GPIO_CTL(pin),
+		     I40E_GLGEN_GPIO_CTL_PORT_0_IN_TIMESYNC_0);
+		break;
+	case in_B:
+		wr32(hw, I40E_GLGEN_GPIO_CTL(pin),
+		     I40E_GLGEN_GPIO_CTL_PORT_1_IN_TIMESYNC_0);
+		break;
+	case out_A:
+		wr32(hw, I40E_GLGEN_GPIO_CTL(pin),
+		     I40E_GLGEN_GPIO_CTL_PORT_0_OUT_TIMESYNC_1);
+		break;
+	case out_B:
+		wr32(hw, I40E_GLGEN_GPIO_CTL(pin),
+		     I40E_GLGEN_GPIO_CTL_PORT_1_OUT_TIMESYNC_1);
+		break;
+	default:
+		break;
+	}
+}
+
+/**
+ * i40e_ptp_set_led_hw - Set HW GPIO led
+ * @hw: pointer to the hardware structure
+ * @led: led index
+ * @state: led state
+ *
+ * Set status of GPIO led for external clock handling.
+ **/
+static void i40e_ptp_set_led_hw(struct i40e_hw *hw,
+				unsigned int led,
+				enum i40e_ptp_gpio_pin_state state)
+{
+	switch (state) {
+	case low:
+		wr32(hw, I40E_GLGEN_GPIO_SET,
+		     I40E_GLGEN_GPIO_SET_DRV_SDP_DATA | led);
+		break;
+	case high:
+		wr32(hw, I40E_GLGEN_GPIO_SET,
+		     I40E_GLGEN_GPIO_SET_DRV_SDP_DATA |
+		     I40E_GLGEN_GPIO_SET_SDP_DATA_HI | led);
+		break;
+	default:
+		break;
+	}
+}
+
+/**
+ * i40e_ptp_set_pins_hw - Set HW GPIO pins
+ * @pf: Board private structure
+ *
+ * This function sets GPIO pins for PTP
+ **/
+static void i40e_ptp_set_pins_hw(struct i40e_pf *pf)
+{
+	const struct i40e_ptp_pins_settings *pins = pf->ptp_pins;
+	struct i40e_hw *hw = &pf->hw;
+
+	/* pin must be disabled before it may be used */
+	i40e_ptp_set_pin_hw(hw, I40E_SDP3_2, off);
+	i40e_ptp_set_pin_hw(hw, I40E_SDP3_3, off);
+	i40e_ptp_set_pin_hw(hw, I40E_GPIO_4, off);
+
+	i40e_ptp_set_pin_hw(hw, I40E_SDP3_2, pins->sdp3_2);
+	i40e_ptp_set_pin_hw(hw, I40E_SDP3_3, pins->sdp3_3);
+	i40e_ptp_set_pin_hw(hw, I40E_GPIO_4, pins->gpio_4);
+
+	i40e_ptp_set_led_hw(hw, I40E_LED2_0, pf->ptp_pins->led2_0);
+	i40e_ptp_set_led_hw(hw, I40E_LED2_1, pf->ptp_pins->led2_1);
+	i40e_ptp_set_led_hw(hw, I40E_LED3_0, pf->ptp_pins->led3_0);
+	i40e_ptp_set_led_hw(hw, I40E_LED3_1, pf->ptp_pins->led3_1);
+
+	dev_info(&pf->pdev->dev,
+		 "PTP configuration set to: SDP3_2: %s,  SDP3_3: %s,  GPIO_4: %s.\n",
+		 i40e_ptp_gpio_pin_state2str[pins->sdp3_2],
+		 i40e_ptp_gpio_pin_state2str[pins->sdp3_3],
+		 i40e_ptp_gpio_pin_state2str[pins->gpio_4]);
+}
+
+/**
+ * i40e_ptp_set_pins - set PTP pins in HW
+ * @pf: Board private structure
+ * @pins: PTP pins to be applied
+ *
+ * Validate and set PTP pins in HW for specific PF.
+ * Return 0 on success or negative value on error.
+ **/
+static int i40e_ptp_set_pins(struct i40e_pf *pf,
+			     struct i40e_ptp_pins_settings *pins)
+{
+	int i = 0;
+
+	if (!i40e_can_do_pins(pf))
+		return -EOPNOTSUPP;
+
+	if (pins->sdp3_2 == invalid)
+		pins->sdp3_2 = pf->ptp_pins->sdp3_2;
+	if (pins->sdp3_3 == invalid)
+		pins->sdp3_3 = pf->ptp_pins->sdp3_3;
+	if (pins->gpio_4 == invalid)
+		pins->gpio_4 = pf->ptp_pins->gpio_4;
+	while (i40e_ptp_pin_led_allowed_states[i].sdp3_2 != end) {
+		if (pins->sdp3_2 == i40e_ptp_pin_led_allowed_states[i].sdp3_2 &&
+		    pins->sdp3_3 == i40e_ptp_pin_led_allowed_states[i].sdp3_3 &&
+		    pins->gpio_4 == i40e_ptp_pin_led_allowed_states[i].gpio_4) {
+			pins->led2_0 =
+				i40e_ptp_pin_led_allowed_states[i].led2_0;
+			pins->led2_1 =
+				i40e_ptp_pin_led_allowed_states[i].led2_1;
+			pins->led3_0 =
+				i40e_ptp_pin_led_allowed_states[i].led3_0;
+			pins->led3_1 =
+				i40e_ptp_pin_led_allowed_states[i].led3_1;
+			break;
+		}
+		i++;
+	}
+	if (i40e_ptp_pin_led_allowed_states[i].sdp3_2 == end) {
+		dev_warn(&pf->pdev->dev,
+			 "Unsupported PTP pin configuration: SDP3_2: %s,  SDP3_3: %s,  GPIO_4: %s.\n",
+			 i40e_ptp_gpio_pin_state2str[pins->sdp3_2],
+			 i40e_ptp_gpio_pin_state2str[pins->sdp3_3],
+			 i40e_ptp_gpio_pin_state2str[pins->gpio_4]);
+
+		return -EPERM;
+	}
+	memcpy(pf->ptp_pins, pins, sizeof(*pins));
+	i40e_ptp_set_pins_hw(pf);
+	i40_ptp_reset_timing_events(pf);
+
+	return 0;
+}
+
+/**
+ * i40e_ptp_set_pins_ioctl - ioctl interface to set the HW timestamping
+ *                           gpio pins
+ * @pf: board private structure
+ * @ifr: ioctl data
+ *
+ * Set the current hardware timestamping pins for current PF.
+ **/
+int i40e_ptp_set_pins_ioctl(struct i40e_pf *pf, struct ifreq *ifr)
+{
+	struct i40e_ptp_pins_settings pins;
+	int err;
+
+	if (!i40e_can_do_pins(pf))
+		return -EOPNOTSUPP;
+
+	err = copy_from_user(&pins, ifr->ifr_data, sizeof(pins));
+	if (err) {
+		dev_warn(&pf->pdev->dev, "Cannot read user data during SIOCSPINS ioctl.\n");
+		return -EIO;
+	}
+
+	return i40e_ptp_set_pins(pf, &pins);
+}
+
+/**
+ * i40e_ptp_alloc_pins - allocate PTP pins structure
+ * @pf: Board private structure
+ *
+ * allocate PTP pins structure
+ **/
+int i40e_ptp_alloc_pins(struct i40e_pf *pf)
+{
+	if (pf->hw.pf_id || !i40e_is_ptp_pin_dev(&pf->hw))
+		return 0;
+
+	pf->ptp_pins =
+		kzalloc(sizeof(struct i40e_ptp_pins_settings), GFP_KERNEL);
+
+	if (!pf->ptp_pins) {
+		dev_warn(&pf->pdev->dev, "Cannot allocate memory for PTP pins structure.\n");
+		return -I40E_ERR_NO_MEMORY;
+	}
+
+	pf->ptp_pins->sdp3_2 = off;
+	pf->ptp_pins->sdp3_3 = off;
+	pf->ptp_pins->gpio_4 = off;
+	pf->ptp_pins->led2_0 = high;
+	pf->ptp_pins->led2_1 = high;
+	pf->ptp_pins->led3_0 = high;
+	pf->ptp_pins->led3_1 = high;
+
+	i40e_ptp_set_pins_hw(pf);
+
+	return 0;
+}
+
+/**
+ * i40e_ptp_get_pins - ioctl interface to read the HW timestamping gpio pins
+ * @pf: Board private structure
+ * @ifr: ioctl data
+ *
+ * Obtain the current hardware timestamping gpio pins settigs as requested.
+ **/
+int i40e_ptp_get_pins(struct i40e_pf *pf, struct ifreq *ifr)
+{
+	if (!i40e_can_do_pins(pf))
+		return -EOPNOTSUPP;
+
+	return copy_to_user(ifr->ifr_data, pf->ptp_pins,
+			    sizeof(*pf->ptp_pins))
+	       ? -EFAULT : 0;
+}
+
 /**
  * i40e_ptp_set_timestamp_mode - setup hardware for requested timestamp mode
  * @pf: Board private structure
@@ -542,6 +1175,21 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 	struct i40e_hw *hw = &pf->hw;
 	u32 tsyntype, regval;
 
+	/* Selects external trigger to cause event */
+	regval = rd32(hw, I40E_PRTTSYN_AUX_0(0));
+	/* Bit 17:16 is EVNTLVL, 01B rising edge */
+	regval &= 0;
+	regval |= (1 << I40E_PRTTSYN_AUX_0_EVNTLVL_SHIFT);
+	/* regval: 0001 0000 0000 0000 0000 */
+	wr32(hw, I40E_PRTTSYN_AUX_0(0), regval);
+
+	/* Enabel interrupts */
+	regval = rd32(hw, I40E_PRTTSYN_CTL0);
+	regval |= 1 << I40E_PRTTSYN_CTL0_EVENT_INT_ENA_SHIFT;
+	wr32(hw, I40E_PRTTSYN_CTL0, regval);
+
+	INIT_WORK(&pf->ptp_extts0_work, i40e_ptp_extts0_work);
+
 	/* Reserved for future extensions. */
 	if (config->flags)
 		return -EINVAL;
@@ -684,6 +1332,48 @@ int i40e_ptp_set_ts_config(struct i40e_pf *pf, struct ifreq *ifr)
 		-EFAULT : 0;
 }
 
+/**
+ * i40e_init_pin_config - initialize pins.
+ * @pf: private board structure
+ *
+ * Initialize pins for external clock source.
+ * Return 0 on success or error code on failure.
+ **/
+static int i40e_init_pin_config(struct i40e_pf *pf)
+{
+	int i;
+
+	if (pf->hw.pf_id != 0)
+		return -EOPNOTSUPP;
+
+	pf->ptp_caps.n_pins = 3;
+	pf->ptp_caps.n_ext_ts = 2;
+	pf->ptp_caps.pps = 1;
+	pf->ptp_caps.n_per_out = 2;
+
+	pf->ptp_caps.pin_config = kcalloc(pf->ptp_caps.n_pins,
+					  sizeof(*pf->ptp_caps.pin_config),
+					  GFP_KERNEL);
+	if (!pf->ptp_caps.pin_config)
+		return -ENOMEM;
+
+	for (i = 0; i < pf->ptp_caps.n_pins; i++) {
+		snprintf(pf->ptp_caps.pin_config[i].name,
+			 sizeof(pf->ptp_caps.pin_config[i].name),
+			 "%s", sdp_desc[i].name);
+		pf->ptp_caps.pin_config[i].index = sdp_desc[i].index;
+		pf->ptp_caps.pin_config[i].func = PTP_PF_NONE;
+		pf->ptp_caps.pin_config[i].chan = sdp_desc[i].chan;
+	}
+
+	pf->ptp_caps.verify = i40e_ptp_verify;
+	pf->ptp_caps.enable = i40e_ptp_feature_enable;
+
+	pf->ptp_caps.pps = 1;
+
+	return 0;
+}
+
 /**
  * i40e_ptp_create_clock - Create PTP clock device for userspace
  * @pf: Board private structure
@@ -704,13 +1394,16 @@ static long i40e_ptp_create_clock(struct i40e_pf *pf)
 		sizeof(pf->ptp_caps.name) - 1);
 	pf->ptp_caps.owner = THIS_MODULE;
 	pf->ptp_caps.max_adj = 999999999;
-	pf->ptp_caps.n_ext_ts = 0;
-	pf->ptp_caps.pps = 0;
 	pf->ptp_caps.adjfreq = i40e_ptp_adjfreq;
 	pf->ptp_caps.adjtime = i40e_ptp_adjtime;
 	pf->ptp_caps.gettimex64 = i40e_ptp_gettimex;
 	pf->ptp_caps.settime64 = i40e_ptp_settime;
-	pf->ptp_caps.enable = i40e_ptp_feature_enable;
+	if (i40e_is_ptp_pin_dev(&pf->hw)) {
+		int err = i40e_init_pin_config(pf);
+
+		if (err)
+			return err;
+	}
 
 	/* Attempt to register the clock before enabling the hardware. */
 	pf->ptp_clock = ptp_clock_register(&pf->ptp_caps, &pf->pdev->dev);
@@ -840,6 +1533,8 @@ void i40e_ptp_init(struct i40e_pf *pf)
 		/* Restore the clock time based on last known value */
 		i40e_ptp_restore_hw_time(pf);
 	}
+
+	i40e_ptp_set_1pps_signal_hw(pf);
 }
 
 /**
@@ -851,6 +1546,9 @@ void i40e_ptp_init(struct i40e_pf *pf)
  **/
 void i40e_ptp_stop(struct i40e_pf *pf)
 {
+	struct i40e_hw *hw = &pf->hw;
+	u32 regval;
+
 	pf->flags &= ~I40E_FLAG_PTP;
 	pf->ptp_tx = false;
 	pf->ptp_rx = false;
@@ -869,4 +1567,20 @@ void i40e_ptp_stop(struct i40e_pf *pf)
 		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
 			 pf->vsi[pf->lan_vsi]->netdev->name);
 	}
+
+	/* Set GPIO4 as an input */
+	wr32(hw, I40E_GLGEN_GPIO_CTL(I40E_SDP3_2), 0x0);
+	wr32(hw, I40E_GLGEN_GPIO_CTL(I40E_SDP3_3), 0x0);
+	wr32(hw, I40E_GLGEN_GPIO_CTL(I40E_GPIO_4), 0x0);
+
+	regval = rd32(hw, I40E_PRTTSYN_AUX_0(0));
+	regval &= ~I40E_PRTTSYN_AUX_0_PTPFLAG_MASK;
+	wr32(hw, I40E_PRTTSYN_AUX_0(0), regval);
+
+	/* Disable interrupts */
+	regval = rd32(hw, I40E_PRTTSYN_CTL0);
+	regval &= ~I40E_PRTTSYN_CTL0_EVENT_INT_ENA_MASK;
+	wr32(hw, I40E_PRTTSYN_CTL0, regval);
+
+	i40e_ptp_free_pins(pf);
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index d35d690..ae81324 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -2897,6 +2897,8 @@
 #define I40E_PRTTSYN_AUX_0_PULSEW_MASK I40E_MASK(0xF, I40E_PRTTSYN_AUX_0_PULSEW_SHIFT)
 #define I40E_PRTTSYN_AUX_0_EVNTLVL_SHIFT 16
 #define I40E_PRTTSYN_AUX_0_EVNTLVL_MASK I40E_MASK(0x3, I40E_PRTTSYN_AUX_0_EVNTLVL_SHIFT)
+#define I40E_PRTTSYN_AUX_0_PTPFLAG_SHIFT 17
+#define I40E_PRTTSYN_AUX_0_PTPFLAG_MASK  I40E_MASK(0x1, I40E_PRTTSYN_AUX_0_PTPFLAG_SHIFT)
 #define I40E_PRTTSYN_AUX_1(_i) (0x001E42E0 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
 #define I40E_PRTTSYN_AUX_1_MAX_INDEX 1
 #define I40E_PRTTSYN_AUX_1_INSTNT_SHIFT 0
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
