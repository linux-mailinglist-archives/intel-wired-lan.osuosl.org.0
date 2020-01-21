Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 117D3144925
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2020 01:53:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B81E385F37;
	Wed, 22 Jan 2020 00:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sn_AkKEs7Yyu; Wed, 22 Jan 2020 00:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E335985F4E;
	Wed, 22 Jan 2020 00:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 105CF1BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00F2986005
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pys5kVJwmMF0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 00:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B862486812
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 16:53:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="275462999"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jan 2020 16:53:04 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Jan 2020 08:20:16 -0800
Message-Id: <20200121162021.17107-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S34 v3 1/6] ice: Create and register
 virtual bus for RDMA
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

From: Dave Ertman <david.m.ertman@intel.com>

The RDMA block does not have its own PCI function, instead it must utilize
the ice driver to gain access to the PCI device. Create a virtual bus
device so the irdma driver can register a virtual bus driver to bind to it
and receive device data. The device data contains all of the relevant
information that the irdma peer will need to access this PF's IIDC API
callbacks.

Note the header file iidc.h is located under include/linux/net/intel
as this is a unified header file to be used by all consumers of the
IIDC interface.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 MAINTAINERS                                   |   1 +
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |  13 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  15 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  31 ++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   3 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_idc.c      | 422 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |  67 +++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  11 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  56 ++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 include/linux/net/intel/iidc.h                | 337 ++++++++++++++
 16 files changed, 961 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_idc.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_idc_int.h
 create mode 100644 include/linux/net/intel/iidc.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 2549f10eb0b1..d3f8b59409ff 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8336,6 +8336,7 @@ F:	Documentation/networking/device_drivers/intel/ice.rst
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
+F:	include/linux/net/intel/iidc.h
 
 INTEL FRAMEBUFFER DRIVER (excluding 810 and 815)
 M:	Maik Broemme <mbroemme@libmpq.org>
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 90d6fb1e4b2c..8595f578fbe7 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -295,6 +295,7 @@ config ICE
 	tristate "Intel(R) Ethernet Connection E800 Series Support"
 	default n
 	depends on PCI_MSI
+	select VIRTUAL_BUS
 	---help---
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index aa6ee6af7d8b..30aa4013186d 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -19,6 +19,7 @@ ice-y := ice_main.o	\
 	 ice_txrx.o	\
 	 ice_flex_pipe.o	\
 	 ice_flow.o		\
+	 ice_idc.o		\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index cb10abb14e11..08fac12e07bd 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -33,6 +33,7 @@
 #include <linux/if_bridge.h>
 #include <linux/ctype.h>
 #include <linux/bpf.h>
+#include <linux/virtual_bus.h>
 #include <linux/avf/virtchnl.h>
 #include <net/ipv6.h>
 #include <net/xdp_sock.h>
@@ -43,6 +44,7 @@
 #include "ice_switch.h"
 #include "ice_common.h"
 #include "ice_sched.h"
+#include "ice_idc_int.h"
 #include "ice_virtchnl_pf.h"
 #include "ice_sriov.h"
 #include "ice_xsk.h"
@@ -73,6 +75,8 @@ extern const char ice_drv_ver[];
 #define ICE_MAX_SMALL_RSS_QS	8
 #define ICE_RES_VALID_BIT	0x8000
 #define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
+#define ICE_RDMA_NUM_VECS	4
+#define ICE_RES_RDMA_VEC_ID	(ICE_RES_MISC_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
 
@@ -329,11 +333,13 @@ struct ice_q_vector {
 
 enum ice_pf_flags {
 	ICE_FLAG_FLTR_SYNC,
+	ICE_FLAG_IWARP_ENA,
 	ICE_FLAG_RSS_ENA,
 	ICE_FLAG_SRIOV_ENA,
 	ICE_FLAG_SRIOV_CAPABLE,
 	ICE_FLAG_DCB_CAPABLE,
 	ICE_FLAG_DCB_ENA,
+	ICE_FLAG_PEER_ENA,
 	ICE_FLAG_ADV_FEATURES,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_NO_MEDIA,
@@ -375,6 +381,8 @@ struct ice_pf {
 	struct mutex sw_mutex;		/* lock for protecting VSI alloc flow */
 	struct mutex tc_mutex;		/* lock to protect TC changes */
 	u32 msg_enable;
+	u32 num_rdma_msix;	/* Total MSIX vectors for RDMA driver */
+	u32 rdma_base_vector;
 	u32 hw_csum_rx_error;
 	u32 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u32 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
@@ -401,6 +409,7 @@ struct ice_pf {
 	unsigned long tx_timeout_last_recovery;
 	u32 tx_timeout_recovery_level;
 	char int_name[ICE_INT_NAME_STR_LEN];
+	struct ice_peer_dev_int **peers;
 	u32 sw_int_count;
 };
 
@@ -514,6 +523,10 @@ int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
+int ice_init_peer_devices(struct ice_pf *pf);
+int
+ice_for_each_peer(struct ice_pf *pf, void *data,
+		  int (*fn)(struct ice_peer_dev_int *, void *));
 int ice_open(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 4459bc564b11..11086b4a2985 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -108,6 +108,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_TXQS				0x0042
 #define ICE_AQC_CAPS_MSIX				0x0043
 #define ICE_AQC_CAPS_MAX_MTU				0x0047
+#define ICE_AQC_CAPS_IWARP				0x0051
 
 	u8 major_ver;
 	u8 minor_ver;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e0de4d41e927..7e299b98cc39 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1776,6 +1776,11 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 				  "%s: msix_vector_first_id = %d\n", prefix,
 				  caps->msix_vector_first_id);
 			break;
+		case ICE_AQC_CAPS_IWARP:
+			caps->iwarp = (number == 1);
+			ice_debug(hw, ICE_DBG_INIT,
+				  "%s: iwarp = %d\n", prefix, caps->iwarp);
+			break;
 		case ICE_AQC_CAPS_MAX_MTU:
 			caps->max_mtu = number;
 			ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
@@ -1799,6 +1804,16 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 		ice_debug(hw, ICE_DBG_INIT,
 			  "%s: maxtc = %d (based on #ports)\n", prefix,
 			  caps->maxtc);
+		if (caps->iwarp) {
+			ice_debug(hw, ICE_DBG_INIT, "%s: forcing RDMA off\n",
+				  prefix);
+			caps->iwarp = 0;
+		}
+
+		/* print message only when processing device capabilities */
+		if (dev_p)
+			dev_info(ice_hw_to_dev(hw),
+				 "RDMA functionality is not available with the current device configuration.\n");
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 0664e5b8d130..b0b957e22bf3 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -726,6 +726,37 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 	return 0;
 }
 
+/**
+ * ice_setup_dcb_qos_info - Setup DCB QoS information
+ * @pf: ptr to ice_pf
+ * @qos_info: QoS param instance
+ */
+void ice_setup_dcb_qos_info(struct ice_pf *pf, struct iidc_qos_params *qos_info)
+{
+	struct ice_dcbx_cfg *dcbx_cfg;
+	u32 up2tc;
+	int i;
+
+	dcbx_cfg = &pf->hw.port_info->local_dcbx_cfg;
+	up2tc = rd32(&pf->hw, PRTDCB_TUP2TC);
+	qos_info->num_apps = dcbx_cfg->numapps;
+
+	qos_info->num_tc = ice_dcb_get_num_tc(dcbx_cfg);
+
+	for (i = 0; i < IIDC_MAX_USER_PRIORITY; i++)
+		qos_info->up2tc[i] = (up2tc >> (i * 3)) & 0x7;
+
+	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
+		qos_info->tc_info[i].rel_bw =
+			dcbx_cfg->etscfg.tcbwtable[i];
+
+	for (i = 0; i < qos_info->num_apps; i++) {
+		qos_info->apps[i].priority = dcbx_cfg->app[i].priority;
+		qos_info->apps[i].prot_id = dcbx_cfg->app[i].prot_id;
+		qos_info->apps[i].selector = dcbx_cfg->app[i].selector;
+	}
+}
+
 /**
  * ice_dcb_process_lldp_set_mib_change - Process MIB change
  * @pf: ptr to ice_pf
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index f15e5776f287..bb53edf462ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -28,6 +28,8 @@ int
 ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 			      struct ice_tx_buf *first);
 void
+ice_setup_dcb_qos_info(struct ice_pf *pf, struct iidc_qos_params *qos_info);
+void
 ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 				    struct ice_rq_event_info *event);
 void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
@@ -81,6 +83,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring __always_unused *tx_ring,
 #define ice_update_dcb_stats(pf) do {} while (0)
 #define ice_pf_dcb_recfg(pf) do {} while (0)
 #define ice_vsi_cfg_dcb_rings(vsi) do {} while (0)
+#define ice_setup_dcb_qos_info(pf, qos_info) do {} while (0)
 #define ice_dcb_process_lldp_set_mib_change(pf, event) do {} while (0)
 #define ice_set_cgd_num(tlan_ctx, ring) do {} while (0)
 #define ice_vsi_cfg_netdev_tc(vsi, ena_tc) do {} while (0)
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index f2cababf2561..b2502c7fd6ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -58,6 +58,7 @@
 #define PRTDCB_GENS				0x00083020
 #define PRTDCB_GENS_DCBX_STATUS_S		0
 #define PRTDCB_GENS_DCBX_STATUS_M		ICE_M(0x7, 0)
+#define PRTDCB_TUP2TC				0x001D26C0
 #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
 #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
 #define GLFLXP_RXDID_FLX_WRD_0(_i)		(0x0045c800 + ((_i) * 4))
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
new file mode 100644
index 000000000000..834cf005597d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -0,0 +1,422 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2019, Intel Corporation. */
+
+/* Inter-Driver Communication */
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_dcb_lib.h"
+
+static struct peer_dev_id ice_peers[] = ASSIGN_PEER_INFO;
+
+/**
+ * ice_peer_state_change - manage state machine for peer
+ * @peer_dev: pointer to peer's configuration
+ * @new_state: the state requested to transition into
+ * @locked: boolean to determine if call made with mutex held
+ *
+ * This function handles all state transitions for peer devices.
+ * The state machine is as follows:
+ *
+ *     +<-----------------------+<-----------------------------+
+ *				|<-------+<----------+	       +
+ *				\/	 +	     +	       +
+ *    INIT  --------------> PROBED --> OPENING	  CLOSED --> REMOVED
+ *					 +           +
+ *				       OPENED --> CLOSING
+ *					 +	     +
+ *				       PREP_RST	     +
+ *					 +	     +
+ *				      PREPPED	     +
+ *					 +---------->+
+ */
+static void
+ice_peer_state_change(struct ice_peer_dev_int *peer_dev, long new_state,
+		      bool locked)
+{
+	struct device *dev = NULL;
+
+	if (!peer_dev)
+		return;
+	dev = &peer_dev->peer_dev.vdev->dev;
+
+	if (!locked)
+		mutex_lock(&peer_dev->peer_dev_state_mutex);
+
+	switch (new_state) {
+	case ICE_PEER_DEV_STATE_INIT:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_REMOVED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_INIT, peer_dev->state);
+			dev_dbg(dev, "state transition from _REMOVED to _INIT\n");
+		} else {
+			set_bit(ICE_PEER_DEV_STATE_INIT, peer_dev->state);
+			if (dev)
+				dev_dbg(dev, "state set to _INIT\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_PROBED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_INIT,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev->state);
+			dev_dbg(dev, "state transition from _INIT to _PROBED\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_REMOVED,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev->state);
+			dev_dbg(dev, "state transition from _REMOVED to _PROBED\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENING,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev->state);
+			dev_dbg(dev, "state transition from _OPENING to _PROBED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_OPENING:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PROBED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENING, peer_dev->state);
+			dev_dbg(dev, "state transition from _PROBED to _OPENING\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSED,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENING, peer_dev->state);
+			dev_dbg(dev, "state transition from _CLOSED to _OPENING\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_OPENED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENING,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENED, peer_dev->state);
+			dev_dbg(dev, "state transition from _OPENING to _OPENED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_PREP_RST:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PREP_RST, peer_dev->state);
+			dev_dbg(dev, "state transition from _OPENED to _PREP_RST\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_PREPPED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PREP_RST,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PREPPED, peer_dev->state);
+			dev_dbg(dev, "state transition _PREP_RST to _PREPPED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_CLOSING:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSING, peer_dev->state);
+			dev_dbg(dev, "state transition from _OPENED to _CLOSING\n");
+		}
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PREPPED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSING, peer_dev->state);
+			dev_dbg(dev, "state transition _PREPPED to _CLOSING\n");
+		}
+		/* NOTE - up to peer to handle this situation correctly */
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PREP_RST,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSING, peer_dev->state);
+			dev_warn(dev, "WARN: Peer state PREP_RST to _CLOSING\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_CLOSED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSING,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSED, peer_dev->state);
+			dev_dbg(dev, "state transition from _CLOSING to _CLOSED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_REMOVED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state) ||
+		    test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_REMOVED, peer_dev->state);
+			dev_dbg(dev, "state from _OPENED/_CLOSED to _REMOVED\n");
+			/* Clear registration for events when peer removed */
+			bitmap_zero(peer_dev->events, ICE_PEER_DEV_STATE_NBITS);
+		}
+		break;
+	default:
+		break;
+	}
+
+	if (!locked)
+		mutex_unlock(&peer_dev->peer_dev_state_mutex);
+}
+
+/**
+ * ice_for_each_peer - iterate across and call function for each peer dev
+ * @pf: pointer to private board struct
+ * @data: data to pass to function on each call
+ * @fn: pointer to function to call for each peer
+ */
+int
+ice_for_each_peer(struct ice_pf *pf, void *data,
+		  int (*fn)(struct ice_peer_dev_int *, void *))
+{
+	int i;
+
+	if (!pf->peers)
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(ice_peers); i++) {
+		struct ice_peer_dev_int *peer_dev_int;
+
+		peer_dev_int = pf->peers[i];
+		if (peer_dev_int) {
+			int ret = fn(peer_dev_int, data);
+
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_unreg_peer_device - unregister specified device
+ * @peer_dev_int: ptr to peer device internal
+ * @data: ptr to opaque data
+ *
+ * This function invokes device unregistration, removes ID associated with
+ * the specified device.
+ */
+int
+ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int,
+		      void __always_unused *data)
+{
+	struct ice_peer_drv_int *peer_drv_int;
+	struct iidc_peer_dev *peer_dev;
+	struct pci_dev *pdev;
+	struct device *dev;
+	struct ice_pf *pf;
+
+	if (!peer_dev_int)
+		return 0;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	pdev = peer_dev->pdev;
+	if (!pdev)
+		return 0;
+
+	pf = pci_get_drvdata(pdev);
+	if (!pf)
+		return 0;
+	dev = ice_pf_to_dev(pf);
+
+	virtbus_dev_unregister(peer_dev_int->peer_dev.vdev);
+
+	peer_drv_int = peer_dev_int->peer_drv_int;
+
+	if (peer_dev_int->ice_peer_wq) {
+		if (peer_dev_int->peer_prep_task.func)
+			cancel_work_sync(&peer_dev_int->peer_prep_task);
+		destroy_workqueue(peer_dev_int->ice_peer_wq);
+	}
+
+	devm_kfree(dev, peer_drv_int);
+
+	devm_kfree(dev, peer_dev_int);
+
+	return 0;
+}
+
+/**
+ * ice_unroll_peer - destroy peers and peer_wq in case of error
+ * @peer_dev_int: ptr to peer device internal struct
+ * @data: ptr to opaque data
+ *
+ * This function releases resources in the event of a failure in creating
+ * peer devices or their individual work_queues. Meant to be called from
+ * a ice_for_each_peer invocation
+ */
+int
+ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int,
+		void __always_unused *data)
+{
+	struct iidc_peer_dev *peer_dev;
+	struct ice_pf *pf;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	if (!peer_dev)
+		return 0;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	if (!pf)
+		return 0;
+
+	if (peer_dev_int->ice_peer_wq)
+		destroy_workqueue(peer_dev_int->ice_peer_wq);
+	devm_kfree(ice_pf_to_dev(pf), peer_dev_int);
+
+	return 0;
+}
+
+/**
+ * ice_reserve_peer_qvector - Reserve vector resources for peer drivers
+ * @pf: board private structure to initialize
+ */
+static int ice_reserve_peer_qvector(struct ice_pf *pf)
+{
+	if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+		int index;
+
+		index = ice_get_res(pf, pf->irq_tracker, pf->num_rdma_msix,
+				    ICE_RES_RDMA_VEC_ID);
+		if (index < 0)
+			return index;
+		pf->num_avail_sw_msix -= pf->num_rdma_msix;
+		pf->rdma_base_vector = index;
+	}
+	return 0;
+}
+
+/**
+ * ice_peer_vdev_release - function to map to virtbus_devices release callback
+ * @vdev: pointer to virtbus_device to free
+ */
+static void ice_peer_vdev_release(struct virtbus_device *vdev)
+{
+	struct iidc_virtbus_object *vbo;
+
+	vbo = container_of(vdev, struct iidc_virtbus_object, vdev);
+	kfree(vbo);
+}
+
+/**
+ * ice_init_peer_devices - initializes peer devices
+ * @pf: ptr to ice_pf
+ *
+ * This function initializes peer devices on the virtual bus.
+ */
+int ice_init_peer_devices(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = pf->vsi[0];
+	struct pci_dev *pdev = pf->pdev;
+	struct device *dev = &pdev->dev;
+	int status = 0;
+	int i;
+
+	/* Reserve vector resources */
+	status = ice_reserve_peer_qvector(pf);
+	if (status < 0) {
+		dev_err(dev, "failed to reserve vectors for peer drivers\n");
+		return status;
+	}
+	for (i = 0; i < ARRAY_SIZE(ice_peers); i++) {
+		struct ice_peer_dev_int *peer_dev_int;
+		struct ice_peer_drv_int *peer_drv_int;
+		struct iidc_qos_params *qos_info;
+		struct iidc_virtbus_object *vbo;
+		struct msix_entry *entry = NULL;
+		struct iidc_peer_dev *peer_dev;
+		struct virtbus_device *vdev;
+		int j;
+
+		/* structure layout needed for container_of's looks like:
+		 * ice_peer_dev_int (internal only ice peer superstruct)
+		 * |--> iidc_peer_dev
+		 * |--> *ice_peer_drv_int
+		 *
+		 * iidc_virtbus_object (container_of parent for vdev)
+		 * |--> virtbus_device
+		 * |--> *iidc_peer_dev (pointer from internal struct)
+		 *
+		 * ice_peer_drv_int (internal only peer_drv struct)
+		 */
+		peer_dev_int = devm_kzalloc(dev, sizeof(*peer_dev_int),
+					    GFP_KERNEL);
+		if (!peer_dev_int)
+			return -ENOMEM;
+
+		vbo = kzalloc(sizeof(*vbo), GFP_KERNEL);
+		if (!vbo) {
+			devm_kfree(dev, peer_dev_int);
+			return -ENOMEM;
+		}
+
+		peer_drv_int = devm_kzalloc(dev, sizeof(*peer_drv_int),
+					    GFP_KERNEL);
+		if (!peer_drv_int) {
+			devm_kfree(dev, peer_dev_int);
+			kfree(vbo);
+			return -ENOMEM;
+		}
+
+		pf->peers[i] = peer_dev_int;
+		vbo->peer_dev = &peer_dev_int->peer_dev;
+		peer_dev_int->peer_drv_int = peer_drv_int;
+		peer_dev_int->peer_dev.vdev = &vbo->vdev;
+
+		/* Initialize driver values */
+		for (j = 0; j < IIDC_EVENT_NBITS; j++)
+			bitmap_zero(peer_drv_int->current_events[j].type,
+				    IIDC_EVENT_NBITS);
+
+		mutex_init(&peer_dev_int->peer_dev_state_mutex);
+
+		peer_dev = &peer_dev_int->peer_dev;
+		peer_dev->peer_ops = NULL;
+		peer_dev->hw_addr = (u8 __iomem *)pf->hw.hw_addr;
+		peer_dev->peer_dev_id = ice_peers[i].id;
+		peer_dev->pf_vsi_num = vsi->vsi_num;
+		peer_dev->netdev = vsi->netdev;
+
+		peer_dev_int->ice_peer_wq =
+			alloc_ordered_workqueue("ice_peer_wq_%d", WQ_UNBOUND,
+						i);
+		if (!peer_dev_int->ice_peer_wq)
+			return -ENOMEM;
+
+		peer_dev->pdev = pdev;
+		qos_info = &peer_dev->initial_qos_info;
+
+		/* setup qos_info fields with defaults */
+		qos_info->num_apps = 0;
+		qos_info->num_tc = 1;
+
+		for (j = 0; j < IIDC_MAX_USER_PRIORITY; j++)
+			qos_info->up2tc[j] = 0;
+
+		qos_info->tc_info[0].rel_bw = 100;
+		for (j = 1; j < IEEE_8021QAZ_MAX_TCS; j++)
+			qos_info->tc_info[j].rel_bw = 0;
+
+		/* for DCB, override the qos_info defaults. */
+		ice_setup_dcb_qos_info(pf, qos_info);
+
+		/* make sure peer specific resources such as msix_count and
+		 * msix_entries are initialized
+		 */
+		switch (ice_peers[i].id) {
+		case IIDC_PEER_RDMA_ID:
+			if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+				peer_dev->msix_count = pf->num_rdma_msix;
+				entry = &pf->msix_entries[pf->rdma_base_vector];
+			}
+			break;
+		default:
+			break;
+		}
+
+		peer_dev->msix_entries = entry;
+		ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_INIT,
+				      false);
+
+		vdev = &vbo->vdev;
+		vdev->name = ice_peers[i].name;
+		vdev->release = ice_peer_vdev_release;
+		vdev->dev.parent = &pdev->dev;
+
+		status = virtbus_dev_register(vdev);
+		if (status) {
+			virtbus_dev_unregister(vdev);
+			vdev = NULL;
+			return status;
+		}
+	}
+
+	return status;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
new file mode 100644
index 000000000000..daac19c45490
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2019, Intel Corporation. */
+
+#ifndef _ICE_IDC_INT_H_
+#define _ICE_IDC_INT_H_
+
+#include <linux/net/intel/iidc.h>
+#include "ice.h"
+
+enum ice_peer_dev_state {
+	ICE_PEER_DEV_STATE_INIT,
+	ICE_PEER_DEV_STATE_PROBED,
+	ICE_PEER_DEV_STATE_OPENING,
+	ICE_PEER_DEV_STATE_OPENED,
+	ICE_PEER_DEV_STATE_PREP_RST,
+	ICE_PEER_DEV_STATE_PREPPED,
+	ICE_PEER_DEV_STATE_CLOSING,
+	ICE_PEER_DEV_STATE_CLOSED,
+	ICE_PEER_DEV_STATE_REMOVED,
+	ICE_PEER_DEV_STATE_API_RDY,
+	ICE_PEER_DEV_STATE_NBITS,               /* must be last */
+};
+
+enum ice_peer_drv_state {
+	ICE_PEER_DRV_STATE_MBX_RDY,
+	ICE_PEER_DRV_STATE_NBITS,               /* must be last */
+};
+
+struct ice_peer_drv_int {
+	struct iidc_peer_drv *peer_drv;
+
+	/* States associated with peer driver */
+	DECLARE_BITMAP(state, ICE_PEER_DRV_STATE_NBITS);
+
+	/* if this peer_dev is the originator of an event, these are the
+	 * most recent events of each type
+	 */
+	struct iidc_event current_events[IIDC_EVENT_NBITS];
+};
+
+struct ice_peer_dev_int {
+	struct ice_peer_drv_int *peer_drv_int; /* driver private structure */
+	struct iidc_peer_dev peer_dev;
+
+	/* if this peer_dev is the originator of an event, these are the
+	 * most recent events of each type
+	 */
+	struct iidc_event current_events[IIDC_EVENT_NBITS];
+	/* Events a peer has registered to be notified about */
+	DECLARE_BITMAP(events, IIDC_EVENT_NBITS);
+
+	/* States associated with peer device */
+	DECLARE_BITMAP(state, ICE_PEER_DEV_STATE_NBITS);
+	struct mutex peer_dev_state_mutex; /* peer_dev state mutex */
+
+	/* per peer workqueue */
+	struct workqueue_struct *ice_peer_wq;
+
+	struct work_struct peer_prep_task;
+	struct work_struct peer_close_task;
+
+	enum iidc_close_reason rst_type;
+};
+
+int ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int, void *data);
+int ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
+#endif /* !_ICE_IDC_INT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1874c9f51a32..98060ab6f696 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -493,6 +493,17 @@ bool ice_is_safe_mode(struct ice_pf *pf)
 	return !test_bit(ICE_FLAG_ADV_FEATURES, pf->flags);
 }
 
+/**
+ * ice_is_peer_ena
+ * @pf: pointer to the PF struct
+ *
+ * returns true if peer devices/drivers are supported, false otherwise
+ */
+bool ice_is_peer_ena(struct ice_pf *pf)
+{
+	return test_bit(ICE_FLAG_PEER_ENA, pf->flags);
+}
+
 /**
  * ice_vsi_clean_rss_flow_fld - Delete RSS configuration
  * @vsi: the VSI being cleaned up
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 68fd0d4505c2..c350a10a0d8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -104,6 +104,8 @@ ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
 
+bool ice_is_peer_ena(struct ice_pf *pf);
+
 bool ice_is_dflt_vsi_in_use(struct ice_sw *sw);
 
 bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5ae671609f98..543749d39f5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2661,6 +2661,12 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 {
 	struct ice_hw_func_caps *func_caps = &pf->hw.func_caps;
 
+	clear_bit(ICE_FLAG_IWARP_ENA, pf->flags);
+	clear_bit(ICE_FLAG_PEER_ENA, pf->flags);
+	if (func_caps->common_cap.iwarp) {
+		set_bit(ICE_FLAG_IWARP_ENA, pf->flags);
+		set_bit(ICE_FLAG_PEER_ENA, pf->flags);
+	}
 	clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 	if (func_caps->common_cap.dcb)
 		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
@@ -2742,6 +2748,16 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	v_budget += needed;
 	v_left -= needed;
 
+	/* reserve vectors for RDMA peer driver */
+	if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+		needed = ICE_RDMA_NUM_VECS;
+		if (v_left < needed)
+			goto no_hw_vecs_left_err;
+		pf->num_rdma_msix = needed;
+		v_budget += needed;
+		v_left -= needed;
+	}
+
 	pf->msix_entries = devm_kcalloc(dev, v_budget,
 					sizeof(*pf->msix_entries), GFP_KERNEL);
 
@@ -2767,16 +2783,19 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		dev_warn(dev,
 			 "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
 			 v_budget, v_actual);
-/* 2 vectors for LAN (traffic + OICR) */
+/* 2 vectors for LAN and RDMA (traffic + OICR) */
 #define ICE_MIN_LAN_VECS 2
+#define ICE_MIN_RDMA_VECS 2
+#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS)
 
-		if (v_actual < ICE_MIN_LAN_VECS) {
+		if (v_actual < ICE_MIN_VECS) {
 			/* error if we can't get minimum vectors */
 			pci_disable_msix(pf->pdev);
 			err = -ERANGE;
 			goto msix_err;
 		} else {
 			pf->num_lan_msix = ICE_MIN_LAN_VECS;
+			pf->num_rdma_msix = ICE_MIN_RDMA_VECS;
 		}
 	}
 
@@ -2793,6 +2812,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	err = -ERANGE;
 exit_err:
 	pf->num_lan_msix = 0;
+	pf->num_rdma_msix = 0;
 	return err;
 }
 
@@ -3358,6 +3378,26 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	/* initialize DDP driven features */
 
+	/* init peers only if supported */
+	if (ice_is_peer_ena(pf)) {
+		pf->peers = devm_kcalloc(dev, IIDC_MAX_NUM_PEERS,
+					 sizeof(*pf->peers), GFP_KERNEL);
+		if (!pf->peers) {
+			err = -ENOMEM;
+			goto err_init_peer_unroll;
+		}
+
+		err = ice_init_peer_devices(pf);
+		if (err) {
+			dev_err(dev, "Failed to initialize peer devices: 0x%x\n",
+				err);
+			err = -EIO;
+			goto err_init_peer_unroll;
+		}
+	} else {
+		dev_warn(dev, "RDMA is not supported on this device\n");
+	}
+
 	/* Note: DCB init failure is non-fatal to load */
 	if (ice_init_pf_dcb(pf, false)) {
 		clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
@@ -3371,6 +3411,14 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	return 0;
 
+err_init_peer_unroll:
+	if (ice_is_peer_ena(pf)) {
+		ice_for_each_peer(pf, NULL, ice_unroll_peer);
+		if (pf->peers) {
+			devm_kfree(dev, pf->peers);
+			pf->peers = NULL;
+		}
+	}
 err_alloc_sw_unroll:
 	set_bit(__ICE_SERVICE_DIS, pf->state);
 	set_bit(__ICE_DOWN, pf->state);
@@ -3412,6 +3460,10 @@ static void ice_remove(struct pci_dev *pdev)
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
 		ice_free_vfs(pf);
 	ice_vsi_release_all(pf);
+	if (ice_is_peer_ena(pf)) {
+		ice_for_each_peer(pf, NULL, ice_unreg_peer_device);
+		devm_kfree(&pdev->dev, pf->peers);
+	}
 	ice_free_irq_msix_misc(pf);
 	ice_for_each_vsi(pf, i) {
 		if (!pf->vsi[i])
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b361ffabb0ca..3a9da4d4d6fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -189,6 +189,7 @@ struct ice_hw_common_caps {
 	u8 rss_table_entry_width;	/* RSS Entry width in bits */
 
 	u8 dcb;
+	u8 iwarp;
 };
 
 /* Function specific capabilities */
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
new file mode 100644
index 000000000000..c0455cc2aba4
--- /dev/null
+++ b/include/linux/net/intel/iidc.h
@@ -0,0 +1,337 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2019, Intel Corporation. */
+
+#ifndef _IIDC_H_
+#define _IIDC_H_
+
+#include <linux/dcbnl.h>
+#include <linux/device.h>
+#include <linux/if_ether.h>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/virtual_bus.h>
+
+enum iidc_event_type {
+	IIDC_EVENT_LINK_CHANGE,
+	IIDC_EVENT_MTU_CHANGE,
+	IIDC_EVENT_TC_CHANGE,
+	IIDC_EVENT_API_CHANGE,
+	IIDC_EVENT_MBX_CHANGE,
+	IIDC_EVENT_NBITS		/* must be last */
+};
+
+enum iidc_res_type {
+	IIDC_INVAL_RES,
+	IIDC_VSI,
+	IIDC_VEB,
+	IIDC_EVENT_Q,
+	IIDC_EGRESS_CMPL_Q,
+	IIDC_CMPL_EVENT_Q,
+	IIDC_ASYNC_EVENT_Q,
+	IIDC_DOORBELL_Q,
+	IIDC_RDMA_QSETS_TXSCHED,
+};
+
+enum iidc_peer_reset_type {
+	IIDC_PEER_PFR,
+	IIDC_PEER_CORER,
+	IIDC_PEER_CORER_SW_CORE,
+	IIDC_PEER_CORER_SW_FULL,
+	IIDC_PEER_GLOBR,
+};
+
+/* reason notified to peer driver as part of event handling */
+enum iidc_close_reason {
+	IIDC_REASON_INVAL,
+	IIDC_REASON_HW_UNRESPONSIVE,
+	IIDC_REASON_INTERFACE_DOWN, /* Administrative down */
+	IIDC_REASON_PEER_DRV_UNREG, /* peer driver getting unregistered */
+	IIDC_REASON_PEER_DEV_UNINIT,
+	IIDC_REASON_GLOBR_REQ,
+	IIDC_REASON_CORER_REQ,
+	/* Reason #7 reserved */
+	IIDC_REASON_PFR_REQ = 8,
+	IIDC_REASON_HW_RESET_PENDING,
+	IIDC_REASON_RECOVERY_MODE,
+	IIDC_REASON_PARAM_CHANGE,
+};
+
+enum iidc_rdma_filter {
+	IIDC_RDMA_FILTER_INVAL,
+	IIDC_RDMA_FILTER_IWARP,
+	IIDC_RDMA_FILTER_ROCEV2,
+	IIDC_RDMA_FILTER_BOTH,
+};
+
+/* Struct to hold per DCB APP info */
+struct iidc_dcb_app_info {
+	u8  priority;
+	u8  selector;
+	u16 prot_id;
+};
+
+struct iidc_peer_dev;
+
+#define IIDC_MAX_USER_PRIORITY		8
+#define IIDC_MAX_APPS			8
+
+/* Struct to hold per RDMA Qset info */
+struct iidc_rdma_qset_params {
+	u32 teid;	/* qset TEID */
+	u16 qs_handle; /* RDMA driver provides this */
+	u16 vsi_id; /* VSI index */
+	u8 tc; /* TC branch the QSet should belong to */
+	u8 reserved[3];
+};
+
+struct iidc_res_base {
+	/* Union for future provision e.g. other res_type */
+	union {
+		struct iidc_rdma_qset_params qsets;
+	} res;
+};
+
+struct iidc_res {
+	/* Type of resource. Filled by peer driver */
+	enum iidc_res_type res_type;
+	/* Count requested by peer driver */
+	u16 cnt_req;
+
+	/* Number of resources allocated. Filled in by callee.
+	 * Based on this value, caller to fill up "resources"
+	 */
+	u16 res_allocated;
+
+	/* Unique handle to resources allocated. Zero if call fails.
+	 * Allocated by callee and for now used by caller for internal
+	 * tracking purpose.
+	 */
+	u32 res_handle;
+
+	/* Peer driver has to allocate sufficient memory, to accommodate
+	 * cnt_requested before calling this function.
+	 * Memory has to be zero initialized. It is input/output param.
+	 * As a result of alloc_res API, this structures will be populated.
+	 */
+	struct iidc_res_base res[1];
+};
+
+struct iidc_qos_info {
+	u64 tc_ctx;
+	u8 rel_bw;
+	u8 prio_type;
+	u8 egress_virt_up;
+	u8 ingress_virt_up;
+};
+
+/* Struct to hold QoS info */
+struct iidc_qos_params {
+	struct iidc_qos_info tc_info[IEEE_8021QAZ_MAX_TCS];
+	u8 up2tc[IIDC_MAX_USER_PRIORITY];
+	u8 vsi_relative_bw;
+	u8 vsi_priority_type;
+	u32 num_apps;
+	struct iidc_dcb_app_info apps[IIDC_MAX_APPS];
+	u8 num_tc;
+};
+
+union iidc_event_info {
+	/* IIDC_EVENT_LINK_CHANGE */
+	struct {
+		struct net_device *lwr_nd;
+		u16 vsi_num; /* HW index of VSI corresponding to lwr ndev */
+		u8 new_link_state;
+		u8 lport;
+	} link_info;
+	/* IIDC_EVENT_MTU_CHANGE */
+	u16 mtu;
+	/* IIDC_EVENT_TC_CHANGE */
+	struct iidc_qos_params port_qos;
+	/* IIDC_EVENT_API_CHANGE */
+	u8 api_rdy;
+	/* IIDC_EVENT_MBX_CHANGE */
+	u8 mbx_rdy;
+};
+
+/* iidc_event elements are to be passed back and forth between the device
+ * owner and the peer drivers. They are to be used to both register/unregister
+ * for event reporting and to report an event (events can be either device
+ * owner generated or peer generated).
+ *
+ * For (un)registering for events, the structure needs to be populated with:
+ *   reporter - pointer to the iidc_peer_dev struct of the peer (un)registering
+ *   type - bitmap with bits set for event types to (un)register for
+ *
+ * For reporting events, the structure needs to be populated with:
+ *   reporter - pointer to peer that generated the event (NULL for ice)
+ *   type - bitmap with single bit set for this event type
+ *   info - union containing data relevant to this event type
+ */
+struct iidc_event {
+	struct iidc_peer_dev *reporter;
+	DECLARE_BITMAP(type, IIDC_EVENT_NBITS);
+	union iidc_event_info info;
+};
+
+/* Following APIs are implemented by device owner and invoked by peer
+ * drivers
+ */
+struct iidc_ops {
+	/* APIs to allocate resources such as VEB, VSI, Doorbell queues,
+	 * completion queues, Tx/Rx queues, etc...
+	 */
+	int (*alloc_res)(struct iidc_peer_dev *peer_dev,
+			 struct iidc_res *res,
+			 int partial_acceptable);
+	int (*free_res)(struct iidc_peer_dev *peer_dev,
+			struct iidc_res *res);
+
+	int (*is_vsi_ready)(struct iidc_peer_dev *peer_dev);
+	int (*peer_register)(struct iidc_peer_dev *peer_dev);
+	int (*peer_unregister)(struct iidc_peer_dev *peer_dev);
+	int (*request_reset)(struct iidc_peer_dev *dev,
+			     enum iidc_peer_reset_type reset_type);
+
+	void (*notify_state_change)(struct iidc_peer_dev *dev,
+				    struct iidc_event *event);
+
+	/* Notification APIs */
+	void (*reg_for_notification)(struct iidc_peer_dev *dev,
+				     struct iidc_event *event);
+	void (*unreg_for_notification)(struct iidc_peer_dev *dev,
+				       struct iidc_event *event);
+	int (*update_vsi_filter)(struct iidc_peer_dev *peer_dev,
+				 enum iidc_rdma_filter filter, bool enable);
+	int (*vc_send)(struct iidc_peer_dev *peer_dev, u32 vf_id, u8 *msg,
+		       u16 len);
+};
+
+/* Following APIs are implemented by peer drivers and invoked by device
+ * owner
+ */
+struct iidc_peer_ops {
+	void (*event_handler)(struct iidc_peer_dev *peer_dev,
+			      struct iidc_event *event);
+
+	/* Why we have 'open' and when it is expected to be called:
+	 * 1. symmetric set of API w.r.t close
+	 * 2. To be invoked form driver initialization path
+	 *     - call peer_driver:open once device owner is fully
+	 *     initialized
+	 * 3. To be invoked upon RESET complete
+	 */
+	int (*open)(struct iidc_peer_dev *peer_dev);
+
+	/* Peer's close function is to be called when the peer needs to be
+	 * quiesced. This can be for a variety of reasons (enumerated in the
+	 * iidc_close_reason enum struct). A call to close will only be
+	 * followed by a call to either remove or open. No IDC calls from the
+	 * peer should be accepted until it is re-opened.
+	 *
+	 * The *reason* parameter is the reason for the call to close. This
+	 * can be for any reason enumerated in the iidc_close_reason struct.
+	 * It's primary reason is for the peer's bookkeeping and in case the
+	 * peer want to perform any different tasks dictated by the reason.
+	 */
+	void (*close)(struct iidc_peer_dev *peer_dev,
+		      enum iidc_close_reason reason);
+
+	int (*vc_receive)(struct iidc_peer_dev *peer_dev, u32 vf_id, u8 *msg,
+			  u16 len);
+	/* tell RDMA peer to prepare for TC change in a blocking call
+	 * that will directly precede the change event
+	 */
+	void (*prep_tc_change)(struct iidc_peer_dev *peer_dev);
+};
+
+#define IIDC_PEER_RDMA_NAME	"ice_rdma"
+#define IIDC_PEER_RDMA_ID	0x00000010
+#define IIDC_MAX_NUM_PEERS	4
+
+/* The const struct that instantiates peer_dev_id needs to be initialized
+ * in the .c with the macro ASSIGN_PEER_INFO.
+ * For example:
+ * static const struct peer_dev_id peer_dev_ids[] = ASSIGN_PEER_INFO;
+ */
+struct peer_dev_id {
+	char *name;
+	int id;
+};
+
+#define ASSIGN_PEER_INFO						\
+{									\
+	{ .name = IIDC_PEER_RDMA_NAME, .id = IIDC_PEER_RDMA_ID },	\
+}
+
+#define iidc_peer_priv(x) ((x)->peer_priv)
+
+/* Structure representing peer specific information, each peer using the IIDC
+ * interface will have an instance of this struct dedicated to it.
+ */
+struct iidc_peer_dev {
+	struct pci_dev *pdev; /* PCI device of corresponding to main function */
+	struct virtbus_device *vdev; /* virtual  device for this peer */
+	/* KVA / Linear address corresponding to BAR0 of underlying
+	 * pci_device.
+	 */
+	u8 __iomem *hw_addr;
+	int peer_dev_id;
+
+	/* Opaque pointer for peer specific data tracking.  This memory will
+	 * be alloc'd and freed by the peer driver and used for private data
+	 * accessible only to the specific peer.  It is stored here so that
+	 * when this struct is passed to the peer via an IDC call, the data
+	 * can be accessed by the peer at that time.
+	 * The peers should only retrieve the pointer by the macro:
+	 *    iidc_peer_priv(struct iidc_peer_dev *)
+	 */
+	void *peer_priv;
+
+	u8 ftype;	/* PF(false) or VF (true) */
+
+	/* Data VSI created by driver */
+	u16 pf_vsi_num;
+
+	struct iidc_qos_params initial_qos_info;
+	struct net_device *netdev;
+
+	/* Based on peer driver type, this shall point to corresponding MSIx
+	 * entries in pf->msix_entries (which were allocated as part of driver
+	 * initialization) e.g. for RDMA driver, msix_entries reserved will be
+	 * num_online_cpus + 1.
+	 */
+	u16 msix_count; /* How many vectors are reserved for this device */
+	struct msix_entry *msix_entries;
+
+	/* Following struct contains function pointers to be initialized
+	 * by device owner and called by peer driver
+	 */
+	const struct iidc_ops *ops;
+
+	/* Following struct contains function pointers to be initialized
+	 * by peer driver and called by device owner
+	 */
+	const struct iidc_peer_ops *peer_ops;
+
+	/* Pointer to peer_drv struct to be populated by peer driver */
+	struct iidc_peer_drv *peer_drv;
+};
+
+struct iidc_virtbus_object {
+	struct virtbus_device vdev;
+	struct iidc_peer_dev *peer_dev;
+};
+
+/* structure representing peer driver
+ * Peer driver to initialize those function ptrs and it will be invoked
+ * by device owner as part of driver_registration via bus infrastructure
+ */
+struct iidc_peer_drv {
+	u16 driver_id;
+#define IIDC_PEER_DEVICE_OWNER		0
+#define IIDC_PEER_RDMA_DRIVER		4
+
+	const char *name;
+
+};
+#endif /* _IIDC_H_*/
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

