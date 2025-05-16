Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 648D4AB9F10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 16:58:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DC2810B9;
	Fri, 16 May 2025 14:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2xTbLAVHFBu9; Fri, 16 May 2025 14:58:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4111783CB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747407512;
	bh=Q3b7tjzw/uzY47jA/wAv1sQ93sfnY+PVYNwAv41o1mA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UFBm03GmUxQadfDnSdySFLm4WW3sXtycvmHNiP18a+4VVWCAq9Hv/lvU9Cr1HnfEN
	 BCOpP0YDow4u1Y1IOja041ONIAlC/dFHRofeOK96sgCh8Msle4PGKYWq2pgu8ncNRl
	 0YUiDQ5PkWm3tFrrDIaYu4X2gAgpPLzNN/gBYQzY5BCyI5fXFCjWzA7bhIPe3RewOL
	 yTSdHll/MrSbCYJFFsXn9jbMA3SmUg9Cz4EHqS7+MtzTDjK07egWBc6+ve8sslB7OY
	 tjETyyCDKe2NSDP6kyiS0tOivyao5Our0FavR+XWlRWdIhkelBcbKQXWwMazcj5Sw6
	 4LNiMFcVEDPaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4111783CB6;
	Fri, 16 May 2025 14:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CF4A91AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F0C4412BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mSAZ0syzc-o2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 14:58:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 304F2406CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 304F2406CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 304F2406CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:27 +0000 (UTC)
X-CSE-ConnectionGUID: MpbshFvwSTmDlVjPs6UTYA==
X-CSE-MsgGUID: kXgpATvFS3um9nk6FATukA==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49308560"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49308560"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:58:26 -0700
X-CSE-ConnectionGUID: KgRETfrYSIKuPDhhgqQ3Zg==
X-CSE-MsgGUID: vf4QgB7VShuiPDKx6fRslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="142717900"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 16 May 2025 07:58:19 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5440834325;
 Fri, 16 May 2025 15:58:17 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Fri, 16 May 2025 16:57:58 +0200
Message-ID: <20250516145814.5422-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250516145814.5422-1-larysa.zaremba@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747407507; x=1778943507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4glugB8A0n6IrrKJxDh5499l6rYwwzq3CDdKQt264QQ=;
 b=VDKHL3OBMXcCEdvaUM8lm2g6N4ad4wSGr5JiU815OYHN/8QkVdpD4Wgj
 N7GbRXJCdO98aGj9NdoCUxDaww+aIvPR3JAX2MyaL22PSKsluwLLuZqDZ
 8DVa8oMiCbEYkflJyq3/W/Dd5cBJglQ7nLrRnxUXsHQJ0JbQHhHeonM8y
 RWmicjM0bzKEZiyhrHdKH1tYMl8odLqpBUMAmb/abXNw8qr1R2w90kH6+
 ieVc2U5pC7uKhn5EJ6DCIti82ePB+UZ+b9sQe1NhfrGZpVhAEXuPFiyS1
 SHAiaKpGsjaQfpcGgi9zDwEDSw4a7xwGSMPtrmelLVOsf2q7ei0pS9O3D
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VDKHL3OB
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/15] virtchnl: create
 'include/linux/intel' and move necessary header files
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

From: Victor Raj <victor.raj@intel.com>

include/linux/net houses a single folder "intel", meanwhile
include/linux/intel is vacant. On top of that, it would be useful to place
all iavf headers together with other intel networking headers.

Move abovementioned intel header files into new folder include/linux/intel.
Also, assign new folder to both intel and general networking maintainers.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 MAINTAINERS                                                 | 6 +++---
 drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
 drivers/infiniband/hw/irdma/main.h                          | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h           | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c              | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c                 | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
 drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h           | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
 drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h             | 2 +-
 drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
 drivers/net/ethernet/intel/ice/ice_flow.h                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_idc_int.h                | 4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h               | 2 +-
 drivers/net/ethernet/intel/idpf/idpf.h                      | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h          | 2 +-
 drivers/net/ethernet/intel/libie/adminq.c                   | 2 +-
 drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
 include/linux/{net => }/intel/i40e_client.h                 | 0
 include/linux/{net => }/intel/iidc_rdma.h                   | 0
 include/linux/{net => }/intel/iidc_rdma_ice.h               | 0
 include/linux/{net => }/intel/libie/adminq.h                | 0
 include/linux/{net => }/intel/libie/pctype.h                | 0
 include/linux/{net => }/intel/libie/rx.h                    | 0
 include/linux/{avf => intel}/virtchnl.h                     | 0
 .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
 .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
 44 files changed, 41 insertions(+), 43 deletions(-)
 rename include/linux/{net => }/intel/i40e_client.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma_ice.h (100%)
 rename include/linux/{net => }/intel/libie/adminq.h (100%)
 rename include/linux/{net => }/intel/libie/pctype.h (100%)
 rename include/linux/{net => }/intel/libie/rx.h (100%)
 rename include/linux/{avf => intel}/virtchnl.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 84e99e991f53..1a809db89df8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11900,8 +11900,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
 F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
-F:	include/linux/avf/virtchnl.h
-F:	include/linux/net/intel/*/
+F:	include/linux/intel/
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
 M:	Mustafa Ismail <mustafa.ismail@intel.com>
@@ -13550,7 +13549,7 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 T:	git https://github.com/alobakin/linux.git
 F:	drivers/net/ethernet/intel/libie/
-F:	include/linux/net/intel/libie/
+F:	include/linux/intel/libie/
 K:	libie
 
 LIBNVDIMM BTT: BLOCK TRANSLATION TABLE
@@ -16886,6 +16885,7 @@ F:	include/linux/fddidevice.h
 F:	include/linux/hippidevice.h
 F:	include/linux/if_*
 F:	include/linux/inetdevice.h
+F:	include/linux/intel/
 F:	include/linux/ism.h
 F:	include/linux/netdev*
 F:	include/linux/platform_data/wiznet.h
diff --git a/drivers/infiniband/hw/irdma/i40iw_if.c b/drivers/infiniband/hw/irdma/i40iw_if.c
index cc50a7070371..cfd71fe5bd79 100644
--- a/drivers/infiniband/hw/irdma/i40iw_if.c
+++ b/drivers/infiniband/hw/irdma/i40iw_if.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2015 - 2021 Intel Corporation */
 #include "main.h"
 #include "i40iw_hw.h"
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/i40e_client.h>
 
 static struct i40e_client i40iw_client;
 
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 674acc952168..8bd0e6605293 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -29,8 +29,8 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #endif
 #include <linux/auxiliary_bus.h>
-#include <linux/net/intel/iidc_rdma.h>
-#include <linux/net/intel/iidc_rdma_ice.h>
+#include <linux/intel/iidc_rdma.h>
+#include <linux/intel/iidc_rdma_ice.h>
 #include <rdma/ib_smi.h>
 #include <rdma/ib_verbs.h>
 #include <rdma/ib_pack.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6250f5203c15..766f3acc7563 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -8,8 +8,8 @@
 #include <linux/pci.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/types.h>
-#include <linux/avf/virtchnl.h>
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/virtchnl.h>
+#include <linux/intel/i40e_client.h>
 #include <net/devlink.h>
 #include <net/pkt_cls.h>
 #include <net/udp_tunnel.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 76d872b91a38..c75b5bd680c3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_ADMINQ_CMD_H_
 #define _I40E_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 #include <linux/bits.h>
 #include <linux/types.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 5f1a405cbbf8..3c9c95a87489 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -3,7 +3,7 @@
 
 #include <linux/list.h>
 #include <linux/errno.h>
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/i40e_client.h>
 
 #include "i40e.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 270e7e8cf9cf..f36870b2e460 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2021 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/etherdevice.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 07b5c3c233f2..e421d4f461b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3,7 +3,7 @@
 
 /* ethtool support for i40e */
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include "i40e_devids.h"
 #include "i40e_diag.h"
 #include "i40e_txrx_common.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 871100086375..7bfccd8d370c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3,7 +3,7 @@
 
 #include <generated/utsrelease.h>
 #include <linux/crash_dump.h>
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index aef5de53ce3b..3872bc57e2a2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -5,7 +5,7 @@
 #define _I40E_PROTOTYPE_H_
 
 #include <linux/ethtool.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "i40e_debug.h"
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 048c33039130..dc304eddd6fa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2,8 +2,8 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
-#include <linux/net/intel/libie/pctype.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/pctype.h>
+#include <linux/intel/libie/rx.h>
 #include <linux/prefetch.h>
 #include <linux/sctp.h>
 #include <net/mpls.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 1e5fd63d47f4..e630493e9139 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_TXRX_H_
 #define _I40E_TXRX_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include <net/xdp.h>
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 5cf74f16f433..acaae2f6d00b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_VIRTCHNL_PF_H_
 #define _I40E_VIRTCHNL_PF_H_
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/netdevice.h>
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index eb86cca38be2..37e01d1d8a59 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -37,7 +37,7 @@
 #include <net/net_shaper.h>
 
 #include "iavf_type.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
index 0482c9ce9b9c..12e84e1e971b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _IAVF_ADMINQ_CMD_H_
 #define _IAVF_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 /* This header file defines the iavf Admin Queue commands and is shared between
  * iavf Firmware and Software.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 614a886bca99..9bc8bdc339c7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/bitfield.h>
 #include "iavf_type.h"
 #include "iavf_adminq.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e4c28c1545a0..84c73bd2c533 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <net/netdev_lock.h>
 
 #include "iavf.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 7f9f9dbf959a..a3348b063723 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -6,7 +6,7 @@
 
 #include "iavf_type.h"
 #include "iavf_alloc.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 
 /* Prototypes for shared code functions that are not in
  * the standard function pointer structures.  These are
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 35d353d38129..ae797d387c08 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -2,7 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bitfield.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <linux/prefetch.h>
 
 #include "iavf.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index df49b0b1d54a..bc8a6068461d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,7 +4,7 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
diff --git a/drivers/net/ethernet/intel/iavf/iavf_types.h b/drivers/net/ethernet/intel/iavf/iavf_types.h
index a095855122bf..270bc35f933d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_types.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_types.h
@@ -4,9 +4,7 @@
 #ifndef _IAVF_TYPES_H_
 #define _IAVF_TYPES_H_
 
-#include "iavf_types.h"
-
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/ptp_clock_kernel.h>
 
 /* structure used to queue PTP commands for processing */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 34a422a4a29c..a296fc3aef52 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 
 #include "iavf.h"
 #include "iavf_ptp.h"
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b500b900e8ca..c86bc68ae091 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -36,7 +36,7 @@
 #include <linux/bpf.h>
 #include <linux/btf.h>
 #include <linux/auxiliary_bus.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
 #include <linux/gnss.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 11e55e1d1424..8ed7a85e4676 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_ADMINQ_CMD_H_
 #define _ICE_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 /* This header file defines the Admin Queue commands, error codes and
  * descriptor format. It is shared between Firmware and Software.
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 3f74570b99bf..487259786cd2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -11,7 +11,7 @@
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
 #include "ice_parser.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 52f906d89eca..6858e9dd16c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_FLOW_H_
 #define _ICE_FLOW_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 
 #include "ice_flex_type.h"
 #include "ice_parser.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index 17dbfcfb6a2a..abe91f313441 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -4,8 +4,8 @@
 #ifndef _ICE_IDC_INT_H_
 #define _ICE_IDC_INT_H_
 
-#include <linux/net/intel/iidc_rdma.h>
-#include <linux/net/intel/iidc_rdma_ice.h>
+#include <linux/intel/iidc_rdma.h>
+#include <linux/intel/iidc_rdma_ice.h>
 
 struct ice_pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 45cfaabc41cb..fb90916e7ef7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include <linux/filter.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 
 #include "ice_txrx_lib.h"
 #include "ice_eswitch.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 482f4285fd35..5cdc98985523 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -10,7 +10,7 @@
 #include <linux/mutex.h>
 #include <linux/pci.h>
 #include <net/devlink.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_type.h"
 #include "ice_flow.h"
 #include "ice_virtchnl_fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index b3eece8c6780..d8eb3c70413d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -7,7 +7,7 @@
 #include <linux/types.h>
 #include <linux/bitops.h>
 #include <linux/if_ether.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_vf_lib.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index aa2e97e2cd32..47931b7593eb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -20,7 +20,7 @@ struct idpf_rss_data;
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
 
-#include "virtchnl2.h"
+#include <linux/intel/virtchnl2.h>
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index e52c5033b25b..fbe09413cdf6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -11,7 +11,7 @@
 #include <net/netdev_queues.h>
 
 #include "idpf_lan_txrx.h"
-#include "virtchnl2_lan_desc.h"
+#include <linux/intel/virtchnl2_lan_desc.h>
 
 #define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index d2f22d8558f8..d76334b8fbad 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -4,7 +4,7 @@
 #ifndef _IXGBE_TYPE_E610_H_
 #define _IXGBE_TYPE_E610_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 #define BYTES_PER_DWORD	4
 
diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
index 55356548e3f0..35eefecec144 100644
--- a/drivers/net/ethernet/intel/libie/adminq.c
+++ b/drivers/net/ethernet/intel/libie/adminq.c
@@ -2,7 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include <linux/module.h>
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 static const char * const libie_aq_str_arr[] = {
 #define LIBIE_AQ_STR(x)					\
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 66a9825fe11f..668785974727 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2024 Intel Corporation */
 
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/intel/i40e_client.h
similarity index 100%
rename from include/linux/net/intel/i40e_client.h
rename to include/linux/intel/i40e_client.h
diff --git a/include/linux/net/intel/iidc_rdma.h b/include/linux/intel/iidc_rdma.h
similarity index 100%
rename from include/linux/net/intel/iidc_rdma.h
rename to include/linux/intel/iidc_rdma.h
diff --git a/include/linux/net/intel/iidc_rdma_ice.h b/include/linux/intel/iidc_rdma_ice.h
similarity index 100%
rename from include/linux/net/intel/iidc_rdma_ice.h
rename to include/linux/intel/iidc_rdma_ice.h
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/intel/libie/adminq.h
similarity index 100%
rename from include/linux/net/intel/libie/adminq.h
rename to include/linux/intel/libie/adminq.h
diff --git a/include/linux/net/intel/libie/pctype.h b/include/linux/intel/libie/pctype.h
similarity index 100%
rename from include/linux/net/intel/libie/pctype.h
rename to include/linux/intel/libie/pctype.h
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/intel/libie/rx.h
similarity index 100%
rename from include/linux/net/intel/libie/rx.h
rename to include/linux/intel/libie/rx.h
diff --git a/include/linux/avf/virtchnl.h b/include/linux/intel/virtchnl.h
similarity index 100%
rename from include/linux/avf/virtchnl.h
rename to include/linux/intel/virtchnl.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/include/linux/intel/virtchnl2.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2.h
rename to include/linux/intel/virtchnl2.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h b/include/linux/intel/virtchnl2_lan_desc.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
rename to include/linux/intel/virtchnl2_lan_desc.h
-- 
2.47.0

