Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E434C05F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D4FF408F4;
	Wed, 23 Feb 2022 00:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkS-B-61FBhO; Wed, 23 Feb 2022 00:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 340DA408D5;
	Wed, 23 Feb 2022 00:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 945E01BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5884B60BAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nH02pZ-WopUd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 321DB60625
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qvBtiupVt6UfEDzhQ5KTu7RdwEJe6Rv8IMBPl931TZ0=;
 b=CmOktcJSGxOfC5aO6xcDWFoK6Cs7ZUYJGdrKWcIYf8XNFk/xcISqX8Ly
 /nIK8WO18PnOYBUx5LCdIGtC8fLxG5Ep+Y/fcv+JYWQk1GEgL0uqAzSap
 CkBkBzcJ909RURih6oPLaWrDX/xoGQtVvLwfMhHlkYW+b2QvJpcqfxe2C
 RU25pA84bB5ziSeoYeONUyjwfmvmuzR9gtgvQDyAdld80YmbGahOwDyoe
 ESwGBjyJqWU+wZjI3Xir7+DCfieP8R4zYFwMFCvbSdhbnteFGS3g+Scg/
 vzDWZ9xrh612eVjY7wjZ938XjNefLW27FphpxvIQJ3hG+2wQKIZTBdhFK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468967"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468967"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728002"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:50 -0800
Message-Id: <20220223002712.2771809-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 03/25] ice: remove circular
 header dependencies on ice.h
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

Several headers in the ice driver include ice.h even though they are
themselves included by that header. The most notable of these is
ice_common.h, but several other headers also do this.

Such a recursive inclusion is problematic as it forces headers to be
included in a strict order, otherwise compilation errors can result. The
circular inclusions do not trigger an endless loop due to standard
header inclusion guards, however other errors can occur.

For example, ice_flow.h defines ice_rss_hash_cfg, which is used by
ice_sriov.h as part of the definition of ice_vf_hash_ip_ctx.

ice_flow.h includes ice_acl.h, which includes ice_common.h, and which
finally includes ice.h. Since ice.h itself includes ice_sriov.h, this
creates a circular dependency.

The definition in ice_sriov.h requires things from ice_flow.h, but
ice_flow.h itself will lead to trying to load ice_sriov.h as part of its
process for expanding ice.h. The current code avoids this issue by
having an implicit dependency without the include of ice_flow.h.

If we were to fix that so that ice_sriov.h explicitly depends on
ice_flow.h the following pattern would occur:

  ice_flow.h -> ice_acl.h -> ice_common.h -> ice.h -> ice_sriov.h

At this point, during the expansion of, the header guard for ice_flow.h
is already set, so when ice_sriov.h attempts to load the ice_flow.h
header it is skipped. Then, we go on to begin including the rest of
ice_sriov.h, including structure definitions which depend on
ice_rss_hash_cfg. This produces a compiler warning because
ice_rss_hash_cfg hasn't yet been included. Remember, we're just at the
start of ice_flow.h!

If the order of headers is incorrect (ice_flow.h is not implicitly
loaded first in all files which include ice_sriov.h) then we get the
same failure.

Removing this recursive inclusion requires fixing a few cases where some
headers depended on the header inclusions from ice.h. In addition, a few
other changes are also required.

Most notably, ice_hw_to_dev is implemented as a macro in ice_osdep.h,
which is the likely reason that ice_common.h includes ice.h at all. This
macro implementation requires the full definition of ice_pf in order to
properly compile.

Fix this by moving it to a function declared in ice_main.c, so that we
do not require all files to depend on the layout of the ice_pf
structure.

Note that this change only fixes circular dependencies, but it does not
fully resolve all implicit dependencies where one header may depend on
the inclusion of another. I tried to fix as many of the implicit
dependencies as I noticed, but fixing them all requires a somewhat
tedious analysis of each header and attempting to compile it separately.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h           |  3 ---
 drivers/net/ethernet/intel/ice/ice_arfs.h      |  3 +++
 drivers/net/ethernet/intel/ice/ice_common.h    |  4 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.h       |  1 +
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  1 +
 drivers/net/ethernet/intel/ice/ice_flow.c      |  1 +
 drivers/net/ethernet/intel/ice/ice_flow.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_idc_int.h   |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c      | 15 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_osdep.h     | 11 +++++++++--
 drivers/net/ethernet/intel/ice/ice_repr.h      |  1 -
 drivers/net/ethernet/intel/ice/ice_sriov.h     |  1 -
 drivers/net/ethernet/intel/ice/ice_type.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_xsk.h       |  1 -
 14 files changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 0fd15b45ce23..a30fe86b1a14 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -54,9 +54,6 @@
 #include <net/gre.h>
 #include <net/udp_tunnel.h>
 #include <net/vxlan.h>
-#if IS_ENABLED(CONFIG_DCB)
-#include <scsi/iscsi_proto.h>
-#endif /* CONFIG_DCB */
 #include "ice_devids.h"
 #include "ice_type.h"
 #include "ice_txrx.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
index 80ed76f0cace..9669ad9bf7b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.h
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -3,6 +3,9 @@
 
 #ifndef _ICE_ARFS_H_
 #define _ICE_ARFS_H_
+
+#include "ice_fdir.h"
+
 enum ice_arfs_fltr_state {
 	ICE_ARFS_INACTIVE,
 	ICE_ARFS_ACTIVE,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 893333b8b738..fe71b67e05a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -4,12 +4,12 @@
 #ifndef _ICE_COMMON_H_
 #define _ICE_COMMON_H_
 
-#include "ice.h"
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
-#include "ice_switch.h"
 #include <linux/avf/virtchnl.h>
+#include "ice_switch.h"
+#include "ice_fdir.h"
 
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index d73348f279f7..6abf28a14291 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -5,6 +5,7 @@
 #define _ICE_DCB_H_
 
 #include "ice_type.h"
+#include <scsi/iscsi_proto.h>
 
 #define ICE_DCBX_STATUS_NOT_STARTED	0
 #define ICE_DCBX_STATUS_IN_PROGRESS	1
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 38fe0a7e6975..015806e388e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -4,6 +4,7 @@
 #include "ice_common.h"
 #include "ice_flex_pipe.h"
 #include "ice_flow.h"
+#include "ice.h"
 
 /* For supporting double VLAN mode, it is necessary to enable or disable certain
  * boost tcam entries. The metadata labels names that match the following
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index beed4838dcbe..ef103e47a8dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -3,6 +3,7 @@
 
 #include "ice_common.h"
 #include "ice_flow.h"
+#include <net/gre.h>
 
 /* Describe properties of a protocol header field */
 struct ice_flow_field_info {
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 84b6e4464a21..b465d27d9b80 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_FLOW_H_
 #define _ICE_FLOW_H_
 
+#include "ice_flex_type.h"
+
 #define ICE_FLOW_ENTRY_HANDLE_INVAL	0
 #define ICE_FLOW_FLD_OFF_INVAL		0xffff
 
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index b7796b8aecbd..4b0c86757df9 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -5,7 +5,6 @@
 #define _ICE_IDC_INT_H_
 
 #include <linux/net/intel/iidc.h>
-#include "ice.h"
 
 struct ice_pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2d736c375836..133860071174 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -48,6 +48,21 @@ static DEFINE_IDA(ice_aux_ida);
 DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
 EXPORT_SYMBOL(ice_xdp_locking_key);
 
+/**
+ * ice_hw_to_dev - Get device pointer from the hardware structure
+ * @hw: pointer to the device HW structure
+ *
+ * Used to access the device pointer from compilation units which can't easily
+ * include the definition of struct ice_pf without leading to circular header
+ * dependencies.
+ */
+struct device *ice_hw_to_dev(struct ice_hw *hw)
+{
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+
+	return &pf->pdev->dev;
+}
+
 static struct workqueue_struct *ice_wq;
 static const struct net_device_ops ice_netdev_safe_mode_ops;
 static const struct net_device_ops ice_netdev_ops;
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index 380e8ae94fc9..82bc54fec7f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -5,7 +5,14 @@
 #define _ICE_OSDEP_H_
 
 #include <linux/types.h>
+#include <linux/ctype.h>
+#include <linux/delay.h>
 #include <linux/io.h>
+#include <linux/bitops.h>
+#include <linux/ethtool.h>
+#include <linux/etherdevice.h>
+#include <linux/if_ether.h>
+#include <linux/pci_ids.h>
 #ifndef CONFIG_64BIT
 #include <linux/io-64-nonatomic-lo-hi.h>
 #endif
@@ -25,8 +32,8 @@ struct ice_dma_mem {
 	size_t size;
 };
 
-#define ice_hw_to_dev(ptr)	\
-	(&(container_of((ptr), struct ice_pf, hw))->pdev->dev)
+struct ice_hw;
+struct device *ice_hw_to_dev(struct ice_hw *hw);
 
 #ifdef CONFIG_DYNAMIC_DEBUG
 #define ice_debug(hw, type, fmt, args...) \
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 0c77ff050d15..378a45bfa256 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -5,7 +5,6 @@
 #define _ICE_REPR_H_
 
 #include <net/dst_metadata.h>
-#include "ice.h"
 
 struct ice_repr {
 	struct ice_vsi *src_vsi;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 18a2dd537f9f..de5ee9db13fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -3,7 +3,6 @@
 
 #ifndef _ICE_SRIOV_H_
 #define _ICE_SRIOV_H_
-#include "ice.h"
 #include "ice_virtchnl_fdir.h"
 #include "ice_vsi_vlan_ops.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e82d23b3bc96..7a3e620457e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -9,6 +9,7 @@
 #define ICE_CHNL_MAX_TC		16
 
 #include "ice_hw_autogen.h"
+#include "ice_devids.h"
 #include "ice_osdep.h"
 #include "ice_controlq.h"
 #include "ice_lan_tx_rx.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 0cbb5793b5b8..335d2976942e 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -4,7 +4,6 @@
 #ifndef _ICE_XSK_H_
 #define _ICE_XSK_H_
 #include "ice_txrx.h"
-#include "ice.h"
 
 #define PKTS_PER_BATCH 8
 
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
