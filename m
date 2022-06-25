Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C3255A58E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 02:33:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B7D64158B;
	Sat, 25 Jun 2022 00:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B7D64158B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656117223;
	bh=N7XJLn7fSkmXuYYB/KjU21EllHWFQrf76nC8bNjhLQ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pCJ4XNqH0Zg0lJSCXq9UQ2di7cr2jIN2Xthw87wik+8rGWjX8osK/n4NIA+V1Fp9B
	 RdvyQlUDz8tqypl0LbQvOQc/0I6wXvYma7E17e+AyFbUF6Iy1pWsRuyj3tV0I7hahd
	 FHLdaHT41MI35fGPyURgAVK0JmJ8lskHA1FOGXHJTD7vWrBSQx6iqCsLN7mpQlLU84
	 Eo9eb+B/eu10ZdjiMELyNBiSA0Nr19gA51EH1ZZSYj1Mjwds5cYQnUhDKYmPp9NROu
	 e8lXapKixu2+BthWDeP/MYgykqLs0MGV9DDFtoLhVHGfw6+LkD+VQE3YvpAp6co6B1
	 36O4P8KHMenTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_vUZTiUoCTv; Sat, 25 Jun 2022 00:33:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2278410B4;
	Sat, 25 Jun 2022 00:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2278410B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BC061BF423
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 00:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C250410B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 00:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C250410B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSzq8D3KaQfE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 00:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359F2410E3
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 359F2410E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 00:33:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="306593184"
X-IronPort-AV: E=Sophos;i="5.92,220,1650956400"; d="scan'208";a="306593184"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 17:33:18 -0700
X-IronPort-AV: E=Sophos;i="5.92,220,1650956400"; d="scan'208";a="915886370"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 17:33:18 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jun 2022 17:33:02 -0700
Message-Id: <20220625003302.3501801-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220625003302.3501801-1-jesse.brandeburg@intel.com>
References: <20220625003302.3501801-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656117210; x=1687653210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JJTbdSB6fgNKfukSsITQ4SmfttqtwuSHiD8ckrBtyMQ=;
 b=bSq/Komu4y+h9KvHxO1FPvIwrJoALuj0oCtRpIsnmogdzG4SA4DrDbRK
 jh9j4+dOoPXMqsGAP0Us9mqfc7KUgdRM0Ot9zFtFcjVJIFJ8FhNx2jlZv
 YaiPGqr9WkmR6QVa03+DOloxeSglkyK5Zl5zXbwtCeWrmRL6FHXU2ZMwm
 1DO6KVSWwdmh4hMLrFiI9PeK/bf+vmGVQFIKiTbd0DtI3k0Mm00iGpEHg
 tqnYslAvVBtUwzkV+NBT/mR+TpZKnwDm7NRaIZX9MgJ7oKATxe9PbDAbF
 lr4Llprc6peII4r00AnmvyM+CLj8/pIriVaATOqTs1fu6F1gJ0p5jzPN7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bSq/Komu
Subject: [Intel-wired-lan] [PATCH net v1 2/2] intel: remove unused macros
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As found by the compile option -Wunused-macros, remove these macros
that are never used by the code.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
.../intel/e1000e/param.c:105: warning: macro "MIN_INTMODE" is not used [-Wunused-macros]
.../intel/e1000e/param.c:104: warning: macro "MAX_INTMODE" is not used [-Wunused-macros]
.../intel/ixgb/ixgb_param.c:144: warning: macro "XSUMRX_DEFAULT" is not used [-Wunused-macros]
.../intel/igc/igc_ptp.c:18: warning: macro "IGC_SYSTIM_OVERFLOW_PERIOD" is not used [-Wunused-macros]
.../intel/e1000/e1000_param.c:98: warning: macro "FLOW_CONTROL_DEFAULT" is not used [-Wunused-macros]
.../intel/e1000/e1000_param.c:85: warning: macro "AUTONEG_ADV_MASK" is not used [-Wunused-macros]
.../intel/ixgb/ixgb_main.c:1707: warning: macro "IXGB_MAX_INTR" is not used [-Wunused-macros]
.../intel/e100.c:1433: warning: macro "ADVERTISE_FC_SUPPORTED" is not used [-Wunused-macros]
.../intel/ixgbevf/ethtool.c:133: warning: macro "IXGBE_GET_STAT" is not used [-Wunused-macros]
.../intel/ixgbevf/ethtool.c:20: warning: macro "IXGBE_ALL_RAR_ENTRIES" is not used [-Wunused-macros]
.../intel/ixgbe/ixgbe_ptp.c:141: warning: macro "MAX_TIMADJ" is not used [-Wunused-macros]
.../intel/ixgbe/ixgbe_ethtool.c:21: warning: macro "IXGBE_ALL_RAR_ENTRIES" is not used [-Wunused-macros]
.../intel/i40e/i40e_ptp.c:30: warning: macro "to_dev" is not used [-Wunused-macros]
.../intel/ixgbe/ixgbe_dcb_nl.c:16: warning: macro "BIT_LINKSPEED" is not used [-Wunused-macros]
.../intel/ixgbe/ixgbe_dcb_nl.c:11: warning: macro "BIT_DCB_MODE" is not used [-Wunused-macros]
.../intel/i40e/i40e_txrx.c:375: warning: macro "IP_HEADER_OFFSET" is not used [-Wunused-macros]
.../intel/i40e/i40e_ethtool.c:239: warning: macro "I40E_QUEUE_STAT" is not used [-Wunused-macros]
---
 drivers/net/ethernet/intel/e100.c                | 1 -
 drivers/net/ethernet/intel/e1000/e1000_param.c   | 2 --
 drivers/net/ethernet/intel/e1000e/param.c        | 2 --
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c   | 2 --
 drivers/net/ethernet/intel/i40e/i40e_ptp.c       | 1 -
 drivers/net/ethernet/intel/i40e/i40e_txrx.c      | 1 -
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c  | 4 ----
 drivers/net/ethernet/intel/igc/igc_ptp.c         | 1 -
 drivers/net/ethernet/intel/ixgb/ixgb_main.c      | 1 -
 drivers/net/ethernet/intel/ixgb/ixgb_param.c     | 2 --
 drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c  | 2 --
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 --
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c     | 1 -
 drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 4 ----
 14 files changed, 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 36418b510dde..11a884aa5082 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1430,7 +1430,6 @@ static int e100_phy_check_without_mii(struct nic *nic)
 #define MII_NSC_CONG		MII_RESV1
 #define NSC_CONG_ENABLE		0x0100
 #define NSC_CONG_TXREADY	0x0400
-#define ADVERTISE_FC_SUPPORTED	0x0400
 static int e100_phy_init(struct nic *nic)
 {
 	struct net_device *netdev = nic->netdev;
diff --git a/drivers/net/ethernet/intel/e1000/e1000_param.c b/drivers/net/ethernet/intel/e1000/e1000_param.c
index 4d4f5bf1e516..f4154ca7fcb4 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_param.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_param.c
@@ -82,7 +82,6 @@ E1000_PARAM(Duplex, "Duplex setting");
  */
 E1000_PARAM(AutoNeg, "Advertised auto-negotiation setting");
 #define AUTONEG_ADV_DEFAULT  0x2F
-#define AUTONEG_ADV_MASK     0x2F
 
 /* User Specified Flow Control Override
  *
@@ -95,7 +94,6 @@ E1000_PARAM(AutoNeg, "Advertised auto-negotiation setting");
  * Default Value: Read flow control settings from the EEPROM
  */
 E1000_PARAM(FlowControl, "Flow Control setting");
-#define FLOW_CONTROL_DEFAULT FLOW_CONTROL_FULL
 
 /* XsumRX - Receive Checksum Offload Enable/Disable
  *
diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index ebe121db4307..3132d8f2f207 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -101,8 +101,6 @@ E1000_PARAM(InterruptThrottleRate, "Interrupt Throttling Rate");
  * demoted to the most advanced interrupt mode available.
  */
 E1000_PARAM(IntMode, "Interrupt Mode");
-#define MAX_INTMODE	2
-#define MIN_INTMODE	0
 
 /* Enable Smart Power Down of the PHY
  *
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 19704f5c8291..3f8e7a5039d8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -236,8 +236,6 @@ static void __i40e_add_stat_strings(u8 **p, const struct i40e_stats stats[],
 	I40E_STAT(struct i40e_cp_veb_tc_stats, _name, _stat)
 #define I40E_PFC_STAT(_name, _stat) \
 	I40E_STAT(struct i40e_pfc_stats, _name, _stat)
-#define I40E_QUEUE_STAT(_name, _stat) \
-	I40E_STAT(struct i40e_ring, _name, _stat)
 
 static const struct i40e_stats i40e_gstrings_net_stats[] = {
 	I40E_NETDEV_STAT(rx_packets),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 61e5789d78db..57a71fa17ed5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -27,7 +27,6 @@
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V2  (2 << \
 					I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
 #define I40E_SUBDEV_ID_25G_PTP_PIN	0xB
-#define to_dev(obj) container_of(obj, struct device, kobj)
 
 enum i40e_ptp_pin {
 	SDP3_2 = 0,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 7bc1174edf6b..d889282db96e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -372,7 +372,6 @@ static void i40e_change_filter_num(bool ipv4, bool add, u16 *ipv4_filter_num,
 	}
 }
 
-#define IP_HEADER_OFFSET		14
 #define I40E_UDPIP_DUMMY_PACKET_LEN	42
 #define I40E_UDPIP6_DUMMY_PACKET_LEN	62
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 1603e99bae4a..0265eaeb100a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -5,10 +5,6 @@
 #include "iavf_prototype.h"
 #include "iavf_client.h"
 
-/* busy wait delay in msec */
-#define IAVF_BUSY_WAIT_DELAY 10
-#define IAVF_BUSY_WAIT_COUNT 50
-
 /**
  * iavf_send_pf_msg
  * @adapter: adapter structure
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 653e9f1e35b5..8dbb9f903ca7 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -15,7 +15,6 @@
 #define INCVALUE_MASK		0x7fffffff
 #define ISGN			0x80000000
 
-#define IGC_SYSTIM_OVERFLOW_PERIOD	(HZ * 60 * 9)
 #define IGC_PTP_TX_TIMEOUT		(HZ * 15)
 
 #define IGC_PTM_STAT_SLEEP		2
diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_main.c b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
index affdefcca7e3..bca53625da33 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_main.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
@@ -1704,7 +1704,6 @@ ixgb_update_stats(struct ixgb_adapter *adapter)
 	netdev->stats.tx_window_errors = 0;
 }
 
-#define IXGB_MAX_INTR 10
 /**
  * ixgb_intr - Interrupt Handler
  * @irq: interrupt number
diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_param.c b/drivers/net/ethernet/intel/ixgb/ixgb_param.c
index f0cadd532c53..d40f96250691 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_param.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_param.c
@@ -141,8 +141,6 @@ IXGB_PARAM(IntDelayEnable, "Transmit Interrupt Delay Enable");
 #define MAX_RDTR			 0xFFFF
 #define MIN_RDTR			      0
 
-#define XSUMRX_DEFAULT		 OPTION_ENABLED
-
 #define DEFAULT_FCRTL	  		0x28000
 #define DEFAULT_FCRTH			0x30000
 #define MIN_FCRTL			      0
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
index 72e6ebffea33..e85f7d2e8810 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
@@ -8,12 +8,10 @@
 #include "ixgbe_sriov.h"
 
 /* Callbacks for DCB netlink in the kernel */
-#define BIT_DCB_MODE	0x01
 #define BIT_PFC		0x02
 #define BIT_PG_RX	0x04
 #define BIT_PG_TX	0x08
 #define BIT_APP_UPCHG	0x10
-#define BIT_LINKSPEED   0x80
 
 /* Responses for the DCB_C_SET_ALL command */
 #define DCB_HW_CHG_RST  0  /* DCB configuration changed with reset */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 628d0eb0599f..04f453eabef6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -18,8 +18,6 @@
 #include "ixgbe_phy.h"
 
 
-#define IXGBE_ALL_RAR_ENTRIES 16
-
 enum {NETDEV_STATS, IXGBE_STATS};
 
 struct ixgbe_stats {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 336426a67ac1..27a71fa26d3c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -138,7 +138,6 @@
 #define IXGBE_X550_BASE_PERIOD 0xC80000000ULL
 #define INCVALUE_MASK	0x7FFFFFFF
 #define ISGN		0x80000000
-#define MAX_TIMADJ	0x7FFFFFFF
 
 /**
  * ixgbe_ptp_setup_sdp_X540
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 3b41f83c8dff..fed46872af2b 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -17,8 +17,6 @@
 
 #include "ixgbevf.h"
 
-#define IXGBE_ALL_RAR_ENTRIES 16
-
 enum {NETDEV_STATS, IXGBEVF_STATS};
 
 struct ixgbe_stats {
@@ -130,8 +128,6 @@ static void ixgbevf_set_msglevel(struct net_device *netdev, u32 data)
 	adapter->msg_enable = data;
 }
 
-#define IXGBE_GET_STAT(_A_, _R_) (_A_->stats._R_)
-
 static int ixgbevf_get_regs_len(struct net_device *netdev)
 {
 #define IXGBE_REGS_LEN 45
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
