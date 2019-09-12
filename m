Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EBFB167D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 00:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 253348745C;
	Thu, 12 Sep 2019 22:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qD3aP6fka6FR; Thu, 12 Sep 2019 22:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EA5E8759C;
	Thu, 12 Sep 2019 22:54:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 720331BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6DC2320031
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQ7KJNUOduFd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 22:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 17D0220113
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:54:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 15:54:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="269238040"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2019 15:54:04 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2019 07:24:29 -0700
Message-Id: <20190912142430.48490-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 1/2] ice: Initialize and register
 multi-function device to provide RDMA
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

The RDMA block does not advertise on the PCI bus or any other bus.
Thus the ice driver needs to provide access to the RDMA hardware block
via a virtual bus; utilize a multi-function device to provide this access.

This patch initializes the driver to support RDMA as well as creates
and registers a multi-function device for the RDMA driver to register to.
At this point the driver is fully initialized to register a platform
driver, however, can not yet register as the ops have not been
implemented.

We refer to the interaction of this platform device as Inter-Driver
Communication (IDC); where the platform device is referred to as the peer
device and the platform driver is referred to as the peer driver.

Note that the header file iidc.h has been located under
include/linux/net/intel as this file is a unified header file to be used by
the ice and irdma driver.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 MAINTAINERS                                   |   1 +
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |  16 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  31 ++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   3 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_idc.c      | 442 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |  81 ++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  11 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 include/linux/net/intel/iidc.h                | 355 ++++++++++++++
 16 files changed, 1015 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_idc.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_idc_int.h
 create mode 100644 include/linux/net/intel/iidc.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 84bb34727f81..46da88bb9d5f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8144,6 +8144,7 @@ F:	Documentation/networking/device_drivers/intel/ice.rst
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
+F:	include/linux/net/intel/iidc.h
 
 INTEL FRAMEBUFFER DRIVER (excluding 810 and 815)
 M:	Maik Broemme <mbroemme@libmpq.org>
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 154e2e818ec6..48ec63f27869 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -294,6 +294,7 @@ config ICE
 	tristate "Intel(R) Ethernet Connection E800 Series Support"
 	default n
 	depends on PCI_MSI
+	select MFD_CORE
 	---help---
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 2d140ba83781..1500f7724b6f 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -15,6 +15,7 @@ ice-y := ice_main.o	\
 	 ice_sched.o	\
 	 ice_lib.o	\
 	 ice_txrx.o	\
+	 ice_idc.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b36e1cf0e461..c2e1f3f9f403 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -30,6 +30,7 @@
 #include <linux/ipv6.h>
 #include <linux/if_bridge.h>
 #include <linux/avf/virtchnl.h>
+#include <linux/mfd/core.h>
 #include <net/ipv6.h>
 #include "ice_devids.h"
 #include "ice_type.h"
@@ -38,6 +39,7 @@
 #include "ice_switch.h"
 #include "ice_common.h"
 #include "ice_sched.h"
+#include "ice_idc_int.h"
 #include "ice_virtchnl_pf.h"
 #include "ice_sriov.h"
 
@@ -68,6 +70,7 @@ extern const char ice_drv_ver[];
 #define ICE_MAX_SMALL_RSS_QS	8
 #define ICE_RES_VALID_BIT	0x8000
 #define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
+#define ICE_RES_RDMA_VEC_ID	(ICE_RES_MISC_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
 
@@ -302,11 +305,13 @@ struct ice_q_vector {
 
 enum ice_pf_flags {
 	ICE_FLAG_FLTR_SYNC,
+	ICE_FLAG_IWARP_ENA,
 	ICE_FLAG_RSS_ENA,
 	ICE_FLAG_SRIOV_ENA,
 	ICE_FLAG_SRIOV_CAPABLE,
 	ICE_FLAG_DCB_CAPABLE,
 	ICE_FLAG_DCB_ENA,
+	ICE_FLAG_PEER_ENA,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_FW_LLDP_AGENT,
@@ -345,6 +350,9 @@ struct ice_pf {
 	struct mutex avail_q_mutex;	/* protects access to avail_[rx|tx]qs */
 	struct mutex sw_mutex;		/* lock for protecting VSI alloc flow */
 	u32 msg_enable;
+	/* Total number of MSIX vectors reserved for base driver */
+	u32 num_rdma_msix;
+	u32 rdma_base_vector;
 	u32 hw_csum_rx_error;
 	u32 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u32 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
@@ -371,6 +379,8 @@ struct ice_pf {
 	unsigned long tx_timeout_last_recovery;
 	u32 tx_timeout_recovery_level;
 	char int_name[ICE_INT_NAME_STR_LEN];
+	struct ice_peer_dev_int **peers;
+	int peer_idx;
 	u32 sw_int_count;
 };
 
@@ -378,6 +388,8 @@ struct ice_netdev_priv {
 	struct ice_vsi *vsi;
 };
 
+extern struct ida ice_peer_index_ida;
+
 /**
  * ice_irq_dynamic_ena - Enable default interrupt generation settings
  * @hw: pointer to HW struct
@@ -433,6 +445,10 @@ int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
+int ice_init_peer_devices(struct ice_pf *pf);
+int
+ice_for_each_peer(struct ice_pf *pf, void *data,
+		  int (*fn)(struct ice_peer_dev_int *, void *));
 #ifdef CONFIG_DCB
 int ice_pf_ena_all_vsi(struct ice_pf *pf, bool locked);
 void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked);
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 4da0cde9695b..d2be61d8ee5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -97,6 +97,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_TXQS				0x0042
 #define ICE_AQC_CAPS_MSIX				0x0043
 #define ICE_AQC_CAPS_MAX_MTU				0x0047
+#define ICE_AQC_CAPS_IWARP				0x0051
 
 	u8 major_ver;
 	u8 minor_ver;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8b2c46615834..483c4c9f3a0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1647,6 +1647,11 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
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
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 97c22d4aae1d..75bb9c820c57 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -571,6 +571,37 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
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
index 819081053ff5..9445092f7675 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -20,6 +20,8 @@ int
 ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 			      struct ice_tx_buf *first);
 void
+ice_setup_dcb_qos_info(struct ice_pf *pf, struct iidc_qos_params *qos_info);
+void
 ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 				    struct ice_rq_event_info *event);
 static inline void
@@ -56,6 +58,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring __always_unused *tx_ring,
 
 #define ice_update_dcb_stats(pf) do {} while (0)
 #define ice_vsi_cfg_dcb_rings(vsi) do {} while (0)
+#define ice_setup_dcb_qos_info(pf, qos_info) do {} while (0)
 #define ice_dcb_process_lldp_set_mib_change(pf, event) do {} while (0)
 #define ice_set_cgd_num(tlan_ctx, ring) do {} while (0)
 #endif /* CONFIG_DCB */
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 6f78ff5534af..f20ab60e7f82 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -55,6 +55,7 @@
 #define PRTDCB_GENS				0x00083020
 #define PRTDCB_GENS_DCBX_STATUS_S		0
 #define PRTDCB_GENS_DCBX_STATUS_M		ICE_M(0x7, 0)
+#define PRTDCB_TUP2TC				0x001D26C0
 #define GLFLXP_RXDID_FLAGS(_i, _j)		(0x0045D000 + ((_i) * 4 + (_j) * 256))
 #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S	0
 #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M	ICE_M(0x3F, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
new file mode 100644
index 000000000000..0850773ee679
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -0,0 +1,442 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2019, Intel Corporation. */
+
+/* Inter-Driver Communication */
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_dcb_lib.h"
+
+DEFINE_IDA(ice_peer_index_ida);
+
+static struct mfd_cell ice_mfd_cells[] = ASSIGN_PEER_INFO;
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
+	struct device *dev;
+
+	dev = bus_find_device_by_name(&platform_bus_type, NULL,
+				      peer_dev->plat_name);
+
+	if (!locked)
+		mutex_lock(&peer_dev->peer_dev_state_mutex);
+
+	switch (new_state) {
+	case ICE_PEER_DEV_STATE_INIT:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_REMOVED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_INIT, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _REMOVED to _INIT\n");
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
+			dev_dbg(dev,
+				"state transition from _INIT to _PROBED\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_REMOVED,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _REMOVED to _PROBED\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENING,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _OPENING to _PROBED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_OPENING:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PROBED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENING, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _PROBED to _OPENING\n");
+		} else if (test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSED,
+					      peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENING, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _CLOSED to _OPENING\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_OPENED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENING,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_OPENED, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _OPENING to _OPENED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_PREP_RST:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PREP_RST, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _OPENED to _PREP_RST\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_PREPPED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_PREP_RST,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_PREPPED, peer_dev->state);
+			dev_dbg(dev,
+				"state transition _PREP_RST to _PREPPED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_CLOSING:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSING, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _OPENED to _CLOSING\n");
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
+			dev_warn(dev,
+				 "WARN: Peer state PREP_RST to _CLOSING\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_CLOSED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSING,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_CLOSED, peer_dev->state);
+			dev_dbg(dev,
+				"state transition from _CLOSING to _CLOSED\n");
+		}
+		break;
+	case ICE_PEER_DEV_STATE_REMOVED:
+		if (test_and_clear_bit(ICE_PEER_DEV_STATE_OPENED,
+				       peer_dev->state) ||
+		    test_and_clear_bit(ICE_PEER_DEV_STATE_CLOSED,
+				       peer_dev->state)) {
+			set_bit(ICE_PEER_DEV_STATE_REMOVED, peer_dev->state);
+			dev_dbg(dev,
+				"state from _OPENED/_CLOSED to _REMOVED\n");
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
+ * ice_peer_update_vsi - update the pf_vsi info in peer_dev struct
+ * @peer_dev_int: pointer to peer dev internal struct
+ * @data: opaque pointer - VSI to be updated
+ */
+int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data)
+{
+	struct ice_vsi *vsi = (struct ice_vsi *)data;
+	struct iidc_peer_dev *peer_dev;
+
+	peer_dev = ice_get_peer_dev(peer_dev_int);
+	if (!peer_dev)
+		return 0;
+
+	peer_dev->pf_vsi_num = vsi->vsi_num;
+	return 0;
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
+	for (i = 0; i < ARRAY_SIZE(ice_mfd_cells); i++) {
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
+	struct ice_pf *pf;
+
+	if (!peer_dev_int)
+		return 0;
+
+	peer_dev = ice_get_peer_dev(peer_dev_int);
+	pdev = peer_dev->pdev;
+	if (!pdev)
+		return 0;
+
+	pf = pci_get_drvdata(pdev);
+	if (!pf)
+		return 0;
+
+	mfd_remove_devices(&pdev->dev);
+
+	peer_drv_int = peer_dev_int->peer_drv_int;
+
+	if (peer_dev_int->ice_peer_wq) {
+		if (peer_dev_int->peer_prep_task.func)
+			cancel_work_sync(&peer_dev_int->peer_prep_task);
+
+		if (peer_dev_int->peer_close_task.func)
+			cancel_work_sync(&peer_dev_int->peer_close_task);
+		destroy_workqueue(peer_dev_int->ice_peer_wq);
+	}
+
+	devm_kfree(&pf->pdev->dev, peer_drv_int);
+
+	devm_kfree(&pf->pdev->dev, peer_dev_int);
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
+	peer_dev = ice_get_peer_dev(peer_dev_int);
+	if (!peer_dev)
+		return 0;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	if (!pf)
+		return 0;
+
+	if (peer_dev_int->ice_peer_wq)
+		destroy_workqueue(peer_dev_int->ice_peer_wq);
+	devm_kfree(&pf->pdev->dev, peer_dev_int);
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
+ * ice_init_peer_devices - initializes peer devices
+ * @pf: ptr to ice_pf
+ *
+ * This function initializes peer devices and associates them with specified
+ * pci_dev as their parent.
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
+	for (i = 0; i < ARRAY_SIZE(ice_mfd_cells); i++) {
+		struct iidc_peer_dev_platform_data *platform_data;
+		struct ice_peer_dev_int *peer_dev_int;
+		struct ice_peer_drv_int *peer_drv_int;
+		struct iidc_qos_params *qos_info;
+		struct msix_entry *entry = NULL;
+		struct iidc_peer_dev *peer_dev;
+		int j;
+
+		peer_dev_int = devm_kzalloc(dev, sizeof(*peer_dev_int),
+					    GFP_KERNEL);
+		if (!peer_dev_int)
+			return -ENOMEM;
+		pf->peers[i] = peer_dev_int;
+
+		peer_drv_int = devm_kzalloc(dev, sizeof(*peer_drv_int),
+					    GFP_KERNEL);
+		if (!peer_drv_int) {
+			devm_kfree(&pf->pdev->dev, peer_dev_int);
+			return -ENOMEM;
+		}
+
+		peer_dev_int->peer_drv_int = peer_drv_int;
+
+		/* Initialize driver values */
+		for (j = 0; j < IIDC_EVENT_NBITS; j++)
+			bitmap_zero(peer_drv_int->current_events[j].type,
+				    IIDC_EVENT_NBITS);
+
+		mutex_init(&peer_dev_int->peer_dev_state_mutex);
+
+		peer_dev = ice_get_peer_dev(peer_dev_int);
+		peer_dev_int->plat_data.peer_dev = peer_dev;
+		platform_data = &peer_dev_int->plat_data;
+		peer_dev->peer_ops = NULL;
+		peer_dev->hw_addr = (u8 __iomem *)pf->hw.hw_addr;
+		peer_dev->ver.major = IIDC_PEER_MAJOR_VER;
+		peer_dev->ver.minor = IIDC_PEER_MINOR_VER;
+		peer_dev->peer_dev_id = ice_mfd_cells[i].id;
+		peer_dev->pf_vsi_num = vsi->vsi_num;
+		peer_dev->netdev = vsi->netdev;
+
+		ice_mfd_cells[i].platform_data = platform_data;
+		ice_mfd_cells[i].pdata_size = sizeof(*platform_data);
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
+		switch (ice_mfd_cells[i].id) {
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
+	}
+
+	status = ida_simple_get(&ice_peer_index_ida, 0, 0, GFP_KERNEL);
+	if (status < 0) {
+		dev_err(&pdev->dev,
+			"failed to get unique index for device\n");
+		return status;
+	}
+
+	pf->peer_idx = status;
+
+	status = mfd_add_devices(dev, pf->peer_idx, ice_mfd_cells,
+				 ARRAY_SIZE(ice_mfd_cells), NULL, 0, NULL);
+	if (status)
+		dev_err(dev, "Failure adding MFD devs for peers: %d\n", status);
+
+	for (i = 0; i < ARRAY_SIZE(ice_mfd_cells); i++) {
+		snprintf(pf->peers[i]->plat_name, ICE_MAX_PEER_NAME, "%s.%d",
+			 ice_mfd_cells[i].name,
+			 pf->peer_idx + ice_mfd_cells[i].id);
+		dev = bus_find_device_by_name(&platform_bus_type, NULL,
+					      pf->peers[i]->plat_name);
+		dev_dbg(dev, "Peer Created: %s %d\n", pf->peers[i]->plat_name,
+			pf->peer_idx);
+	}
+
+	return status;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
new file mode 100644
index 000000000000..26ecd45faf16
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -0,0 +1,81 @@
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
+#define ICE_MAX_PEER_NAME 64
+
+struct ice_peer_dev_int {
+	struct iidc_peer_dev peer_dev;
+	struct ice_peer_drv_int *peer_drv_int; /* driver private structure */
+	char plat_name[ICE_MAX_PEER_NAME];
+	struct iidc_peer_dev_platform_data plat_data;
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
+int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data);
+int ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int, void *data);
+int ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
+
+static inline struct
+iidc_peer_dev *ice_get_peer_dev(struct ice_peer_dev_int *peer_dev_int)
+{
+	if (peer_dev_int)
+		return &peer_dev_int->peer_dev;
+	else
+		return NULL;
+}
+#endif /* !_ICE_IDC_INT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7cd8c5d13bcc..b7760309bfc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -752,6 +752,17 @@ void ice_vsi_put_qs(struct ice_vsi *vsi)
 	mutex_unlock(&pf->avail_q_mutex);
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
  * ice_rss_clean - Delete RSS related VSI structures that hold user inputs
  * @vsi: the VSI being removed
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 7faf8db844f6..3ef31f8f1315 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -123,4 +123,5 @@ u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran);
 enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
+bool ice_is_peer_ena(struct ice_pf *pf);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f8be9ada2447..cd76e174c8eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2264,6 +2264,10 @@ static void ice_deinit_pf(struct ice_pf *pf)
 static int ice_init_pf(struct ice_pf *pf)
 {
 	bitmap_zero(pf->flags, ICE_PF_FLAGS_NBITS);
+	if (pf->hw.func_caps.common_cap.iwarp) {
+		set_bit(ICE_FLAG_IWARP_ENA, pf->flags);
+		set_bit(ICE_FLAG_PEER_ENA, pf->flags);
+	}
 	if (pf->hw.func_caps.common_cap.dcb)
 		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 #ifdef CONFIG_PCI_IOV
@@ -2334,6 +2338,17 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	v_budget += needed;
 	v_left -= needed;
 
+	/* reserve vectors for RDMA peer driver */
+	if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+		/* RDMA peer driver needs one extra to handle misc causes */
+		needed = min_t(int, num_online_cpus(), v_left) + 1;
+		if (v_left < needed)
+			goto no_hw_vecs_left_err;
+		pf->num_rdma_msix = needed;
+		v_budget += needed;
+		v_left -= needed;
+	}
+
 	pf->msix_entries = devm_kcalloc(&pf->pdev->dev, v_budget,
 					sizeof(*pf->msix_entries), GFP_KERNEL);
 
@@ -2359,16 +2374,19 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		dev_warn(&pf->pdev->dev,
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
 
@@ -2385,6 +2403,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	err = -ERANGE;
 exit_err:
 	pf->num_lan_msix = 0;
+	pf->num_rdma_msix = 0;
 	return err;
 }
 
@@ -2621,10 +2640,39 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_alloc_sw_unroll;
 	}
 
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
 	ice_verify_cacheline_size(pf);
 
 	return 0;
 
+	/* Unwind non-managed device resources, etc. if something failed */
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
@@ -2666,6 +2714,7 @@ static void ice_remove(struct pci_dev *pdev)
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
 		ice_free_vfs(pf);
 	ice_vsi_release_all(pf);
+	ice_for_each_peer(pf, NULL, ice_unreg_peer_device);
 	ice_free_irq_msix_misc(pf);
 	ice_for_each_vsi(pf, i) {
 		if (!pf->vsi[i])
@@ -2870,6 +2919,7 @@ static int __init ice_module_init(void)
 	if (status) {
 		pr_err("failed to register PCI driver, err %d\n", status);
 		destroy_workqueue(ice_wq);
+		ida_destroy(&ice_peer_index_ida);
 	}
 
 	return status;
@@ -2886,6 +2936,10 @@ static void __exit ice_module_exit(void)
 {
 	pci_unregister_driver(&ice_driver);
 	destroy_workqueue(ice_wq);
+	/* release all cached layer within ida tree, associated with
+	 * ice_peer_index_ida object
+	 */
+	ida_destroy(&ice_peer_index_ida);
 	pr_info("module unloaded\n");
 }
 module_exit(ice_module_exit);
@@ -3915,7 +3969,15 @@ static void ice_rebuild(struct ice_pf *pf)
 		dev_err(dev, "misc vector setup failed: %d\n", err);
 		goto err_vsi_rebuild;
 	}
+	if (ice_is_peer_ena(pf)) {
+		struct ice_vsi *vsi = ice_get_main_vsi(pf);
 
+		if (!vsi) {
+			dev_err(dev, "No PF_VSI to update peer\n");
+			goto err_vsi_rebuild;
+		}
+		ice_for_each_peer(pf, vsi, ice_peer_update_vsi);
+	}
 	/* restart the VSIs that were rebuilt and running before the reset */
 	err = ice_pf_ena_all_vsi(pf, false);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 4501d50a7dcc..bdf464cd0b71 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -164,6 +164,7 @@ struct ice_hw_common_caps {
 	u8 rss_table_entry_width;	/* RSS Entry width in bits */
 
 	u8 dcb;
+	u8 iwarp;
 };
 
 /* Function specific capabilities */
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
new file mode 100644
index 000000000000..406169084a95
--- /dev/null
+++ b/include/linux/net/intel/iidc.h
@@ -0,0 +1,355 @@
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
+
+/* This major and minor version represent IDC API version information.
+ * During peer driver registration, peer driver specifies major and minor
+ * version information (via. peer_driver:ver_info). It gets checked against
+ * following defines and if mismatch, then peer driver registration
+ * fails and appropriate message gets logged.
+ */
+#define IIDC_PEER_MAJOR_VER		8
+#define IIDC_PEER_MINOR_VER		0
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
+	IIDC_REASON_EMPR_REQ,
+	IIDC_REASON_PFR_REQ,
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
+/* This information is needed to handle peer driver registration,
+ * instead of adding more params to peer_drv_registration function,
+ * let's get it thru' peer_drv object.
+ */
+struct iidc_ver_info {
+	u16 major;
+	u16 minor;
+	u64 support;
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
+#define IIDC_PEER_RDMA_NAME	"iidc_rdma"
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
+	struct iidc_ver_info ver;
+	struct pci_dev *pdev; /* PCI device of corresponding to main function */
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
+struct iidc_peer_dev_platform_data {
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
+	struct iidc_ver_info ver;
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
