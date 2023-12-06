Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAF48063D5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B49C61426;
	Wed,  6 Dec 2023 01:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B49C61426
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824506;
	bh=Nh19sAVDGw032J3AMVpqKKOeHeo0nNc4iexbzSjUP9E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mBhdRyrRA+B3TTWOdEWas+2hZ28v5LcB8Co3956q+vhcafHdF2nGUaynoO6X1XYms
	 NpT4jodk0ZVGaXYdwJg84eA3gJ0c9WgrZZsMNXT4yzsQtQH1gi1C1mxzml3LUOb6cx
	 Yvf87lJS4wigCQtnvBItiXtvgm0mZ/rpSDo+NMO1RGfFFEwDKsl1lbc0vMReo+4bGl
	 rJLDgWOXf2RAj8sON/z60opqLFrTN7yMRm6tM5Wc20bBIVFoPpepvvO7NjNW60DinH
	 6dmbQtoLB+1VuJe+ymTQVlAft6RVZtemH/e1HQDePP9Py//Sr1WHZeBzUNkBBwUgbF
	 GQPQADuM3IQBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7IBNQayF5Hay; Wed,  6 Dec 2023 01:01:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8190610E0;
	Wed,  6 Dec 2023 01:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8190610E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FCE71BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0EC8382C35
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EC8382C35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id agIN-QyuMqVC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B983B82272
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B983B82272
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700278"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700278"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655232"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655232"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:31 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:01 -0800
Message-Id: <20231206010114.2259388-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824494; x=1733360494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YhWRBTHSOQ27ywOCaCv/yDPG0uywhWxKEWH20W0l27Y=;
 b=hB5it7pLL/4+L/tOjvMAjVALY5vHXfpjuJmEmtKYE/JgkpO6gHRYzGDk
 5AMMBh+SINVxfY3phaQPlSlx1kxvUUnCt0+A+3n/5Drzo649MiSeGKEGk
 LkS8+xd2fc2+A9IiMi0l5iL8H8U/INr/xHFpxYDRPMdNeL4ti5pfSgEmj
 CP3yQSTS0NQgw2UJmkfS+FJxgS4sskZg+eaBZyemzYeKf1IDUlb6QnTOO
 Za6lkFRtpbmMOYCsUsc75FgHwSriFSXknRBXEOSGJuzrUSliVMblAPhIh
 yVPy7xEDyaqWY8Q0ksGewEfuTZvToak1Xn9N1ee6Bo77oNPJEwbGaxIRg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hB5it7pL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/15] intel: add bit macro
 includes where needed
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series is introducing the use of FIELD_GET and FIELD_PREP which
requires bitfield.h to be included. Fix all the includes in this one
change, and rearrange includes into alphabetical order to ease
readability and future maintenance.

virtchnl.h and it's usage was modified to have it's own includes as it
should. This required including bits.h for virtchnl.h.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c   |  1 +
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |  1 +
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c   |  1 +
 drivers/net/ethernet/intel/i40e/i40e_common.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  1 +
 drivers/net/ethernet/intel/iavf/iavf_common.c |  3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  5 ++--
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  1 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  1 +
 drivers/net/ethernet/intel/igb/e1000_i210.c   |  4 +--
 drivers/net/ethernet/intel/igb/e1000_nvm.c    |  4 +--
 drivers/net/ethernet/intel/igb/e1000_phy.c    |  4 +--
 drivers/net/ethernet/intel/igbvf/netdev.c     | 28 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_i225.c     |  1 +
 drivers/net/ethernet/intel/igc/igc_phy.c      |  1 +
 include/linux/avf/virtchnl.h                  |  1 +
 17 files changed, 37 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 4542e2bc28e8..4576511c99f5 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -5,6 +5,7 @@
  * Shared functions for accessing and configuring the MAC
  */
 
+#include <linux/bitfield.h>
 #include "e1000.h"
 
 static s32 e1000_check_downshift(struct e1000_hw *hw);
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index af1b0cde3670..ae700a1807c6 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2019 Intel Corporation. */
 
+#include <linux/bitfield.h>
 #include "fm10k_pf.h"
 #include "fm10k_vf.h"
 
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
index dc8ccd378ec9..c50928ec14ff 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2019 Intel Corporation. */
 
+#include <linux/bitfield.h>
 #include "fm10k_vf.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index bd52b73cf61f..522cf2e5f365 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2021 Intel Corporation. */
 
 #include <linux/avf/virtchnl.h>
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 498728e16a37..0d334036ab8b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2021 Intel Corporation. */
 
+#include <linux/bitfield.h>
+#include "i40e_adminq.h"
 #include "i40e_alloc.h"
 #include "i40e_dcb.h"
 #include "i40e_prototype.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index bebf9d4e9068..70215ae92b0c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include "i40e_alloc.h"
 #include "i40e_prototype.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 89d2bce529ae..af5cc69f26e3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/avf/virtchnl.h>
+#include <linux/bitfield.h>
 #include "iavf_type.h"
 #include "iavf_adminq.h"
 #include "iavf_prototype.h"
-#include <linux/avf/virtchnl.h>
 
 /**
  * iavf_aq_str - convert AQ err code to a string
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 7e58a578f3d4..11150bdc63d0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1,11 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/bitfield.h>
+#include <linux/uaccess.h>
+
 /* ethtool support for iavf */
 #include "iavf.h"
 
-#include <linux/uaccess.h>
-
 /* ethtool statistics helpers */
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 03e774bd2a5b..65ddcd81c993 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -3,6 +3,7 @@
 
 /* flow director ethtool support for iavf */
 
+#include <linux/bitfield.h>
 #include "iavf.h"
 
 #define GTPU_PORT	2152
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index d64c4997136b..fb7edba9c2f8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/bitfield.h>
 #include <linux/prefetch.h>
 
 #include "iavf.h"
diff --git a/drivers/net/ethernet/intel/igb/e1000_i210.c b/drivers/net/ethernet/intel/igb/e1000_i210.c
index b9b9d35494d2..53b396fd194a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_i210.c
+++ b/drivers/net/ethernet/intel/igb/e1000_i210.c
@@ -5,9 +5,9 @@
  * e1000_i211
  */
 
-#include <linux/types.h>
+#include <linux/bitfield.h>
 #include <linux/if_ether.h>
-
+#include <linux/types.h>
 #include "e1000_hw.h"
 #include "e1000_i210.h"
 
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index fa136e6e9328..0da57e89593a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2007 - 2018 Intel Corporation. */
 
-#include <linux/if_ether.h>
+#include <linux/bitfield.h>
 #include <linux/delay.h>
-
+#include <linux/if_ether.h>
 #include "e1000_mac.h"
 #include "e1000_nvm.h"
 
diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index a018000f7db9..3c1b562a3271 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2007 - 2018 Intel Corporation. */
 
-#include <linux/if_ether.h>
+#include <linux/bitfield.h>
 #include <linux/delay.h>
-
+#include <linux/if_ether.h>
 #include "e1000_mac.h"
 #include "e1000_phy.h"
 
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index fd712585af27..e6c1fbee049e 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -3,25 +3,25 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#include <linux/module.h>
-#include <linux/types.h>
-#include <linux/init.h>
-#include <linux/pci.h>
-#include <linux/vmalloc.h>
-#include <linux/pagemap.h>
+#include <linux/bitfield.h>
 #include <linux/delay.h>
-#include <linux/netdevice.h>
-#include <linux/tcp.h>
-#include <linux/ipv6.h>
-#include <linux/slab.h>
-#include <net/checksum.h>
-#include <net/ip6_checksum.h>
-#include <linux/mii.h>
 #include <linux/ethtool.h>
 #include <linux/if_vlan.h>
+#include <linux/init.h>
+#include <linux/ipv6.h>
+#include <linux/mii.h>
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <linux/pagemap.h>
+#include <linux/pci.h>
 #include <linux/prefetch.h>
 #include <linux/sctp.h>
-
+#include <linux/slab.h>
+#include <linux/tcp.h>
+#include <linux/types.h>
+#include <linux/vmalloc.h>
+#include <net/checksum.h>
+#include <net/ip6_checksum.h>
 #include "igbvf.h"
 
 char igbvf_driver_name[] = "igbvf";
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 17546a035ab1..d2562c8e8015 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c)  2018 Intel Corporation */
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 
 #include "igc_hw.h"
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 53b77c969c85..d0d9e7170154 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c)  2018 Intel Corporation */
 
+#include <linux/bitfield.h>
 #include "igc_phy.h"
 
 /**
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 6b3acf15be5c..99ae7960a8d1 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -5,6 +5,7 @@
 #define _VIRTCHNL_H_
 
 #include <linux/bitops.h>
+#include <linux/bits.h>
 #include <linux/overflow.h>
 #include <uapi/linux/if_ether.h>
 
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
