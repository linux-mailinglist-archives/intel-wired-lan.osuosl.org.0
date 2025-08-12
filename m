Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A8AB22904
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B16441DB3;
	Tue, 12 Aug 2025 13:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ljvtXx_rwrh; Tue, 12 Aug 2025 13:46:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BD341D8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006392;
	bh=yLqd22C/3jDyG4i0jPF+qejDHlDnv1wyG3m/KZNiD4M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yrN8gZtt04U529UerI6i7CU1bMUVe2LCAyGwXv513iEKCUGj04FRw0X/ouOjzI5KZ
	 5qshBo72utZgSVFUaJGl9hOGnBxk42fi+vxZUxSYXU4rOfemf3v+uIMsKijVddG2tt
	 eVW7t6d2x/FmBQF6JEA2LFpRe4mIKmXDT2OXM+T2t6Okj//EYabhz8U6KXuOe7toPw
	 qTvEyx0O4CPBxEogiAR62aLZGZw/ivV4oNUiNfcOeEVOBUHa3EQVjIKOvMw/T2nZcy
	 fLwKT9jTEPoQZxaYDBlLMJzi4wNut8QgYhgn4YJflGgGWwVc6LpiyAlduvtlUakI7O
	 4X+6WFLUFU7ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BD341D8D;
	Tue, 12 Aug 2025 13:46:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 74E9D158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FFAD40102
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rfAk9r9to9a6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29A6440190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29A6440190
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29A6440190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:28 +0000 (UTC)
X-CSE-ConnectionGUID: ovp/t8JZTYuC/G0CCiurig==
X-CSE-MsgGUID: XiWOrXqlRGmb/wiC8X89Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994343"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994343"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:12 -0700
X-CSE-ConnectionGUID: LpZLaE6lTj+JmmJo2fagRw==
X-CSE-MsgGUID: L9USNADAQSyQsUKBUWtCNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416118"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:09 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5BE7E32CBF;
 Tue, 12 Aug 2025 14:39:08 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 12 Aug 2025 15:29:10 +0200
Message-Id: <20250812132910.99626-13-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755006389; x=1786542389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f5V+h35fOmxSuofQ8rkyxWHyf5niUINuAoyLWS0X/u0=;
 b=WB7obtj5E6SzU+T0FAsPNNOg9EjLSpW5U9CgjSWG2waFMjeEy5vAcL4L
 EMGYlRy5tBdmG0+t1O7SiOMZwCaM3x4Clu84FCLD4FDs8uE1BQSS/QGAP
 2BMGhRlho/lJUyoa31hNEqHSEf0510HOPHzpUuSXqzmrN6kVKGJng/Y9o
 LHBpK9r5ATUgsTCQ1Yw6xo1G1POQvfKkek1t51M2ufsF0gNbZQG8wXHyd
 grJ3d/HP8OI3lfns4C7B/eVRitUEGdSMN49Cfvxs9MxUMkDwWfk+OoJJQ
 f3HdoXqD5basRHmBiHEBhDMU77nQZbamq3OQ4IyI9xtB2KgNJptE7b3Dl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WB7obtj5
Subject: [Intel-wired-lan] [PATCH 12/12] ice: add virt/ and move
 ice_virtchnl* files there
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

Introduce virt/ directory to collect virtchnl files.
We are going to implement a few sizable extensions soon, each of them
increasing virt/ size, so it looks sensible to introduce a new dir.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_sriov.h             |  4 ++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.h            |  2 +-
 .../net/ethernet/intel/ice/{ => virt}/ice_virtchnl.h   |  0
 .../intel/ice/{ => virt}/ice_virtchnl_allowlist.h      |  0
 .../ethernet/intel/ice/{ => virt}/ice_virtchnl_fdir.h  |  0
 .../intel/ice/{ => virt}/ice_virtchnl_queues.h         |  0
 .../ethernet/intel/ice/{ => virt}/ice_virtchnl_rss.h   |  0
 drivers/net/ethernet/intel/ice/ice_sriov.c             |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c            |  2 +-
 .../net/ethernet/intel/ice/{ => virt}/ice_virtchnl.c   |  0
 .../intel/ice/{ => virt}/ice_virtchnl_allowlist.c      |  0
 .../ethernet/intel/ice/{ => virt}/ice_virtchnl_fdir.c  |  0
 .../intel/ice/{ => virt}/ice_virtchnl_queues.c         |  0
 .../ethernet/intel/ice/{ => virt}/ice_virtchnl_rss.c   |  0
 15 files changed, 10 insertions(+), 10 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl.h (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_allowlist.h (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_fdir.h (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_queues.h (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_rss.h (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl.c (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_allowlist.c (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_fdir.c (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_queues.c (100%)
 rename drivers/net/ethernet/intel/ice/{ => virt}/ice_virtchnl_rss.c (100%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index ccee078931f3..8b58bbbbd363 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -47,11 +47,11 @@ ice-y := ice_main.o	\
 	 ice_adapter.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
-	ice_virtchnl.o		\
-	ice_virtchnl_allowlist.o \
-	ice_virtchnl_fdir.o	\
-	ice_virtchnl_queues.o	\
-	ice_virtchnl_rss.o	\
+	virt/ice_virtchnl.o	\
+	virt/ice_virtchnl_allowlist.o	\
+	virt/ice_virtchnl_fdir.o	\
+	virt/ice_virtchnl_queues.o	\
+	virt/ice_virtchnl_rss.o	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index d1a998a4bef6..10e5a79e98af 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -3,9 +3,9 @@
 
 #ifndef _ICE_SRIOV_H_
 #define _ICE_SRIOV_H_
-#include "ice_virtchnl_fdir.h"
+#include "virt/ice_virtchnl_fdir.h"
 #include "ice_vf_lib.h"
-#include "ice_virtchnl.h"
+#include "virt/ice_virtchnl.h"
 
 /* Static VF transaction/status register def */
 #define VF_DEVICE_STATUS		0xAA
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index ffe1f9f830ea..97e3e9ccdc1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -13,7 +13,7 @@
 #include <linux/avf/virtchnl.h>
 #include "ice_type.h"
 #include "ice_flow.h"
-#include "ice_virtchnl_fdir.h"
+#include "virt/ice_virtchnl_fdir.h"
 #include "ice_vsi_vlan_ops.h"
 
 #define ICE_MAX_SRIOV_VFS		256
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl.h
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl.h
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_allowlist.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_allowlist.h
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_fdir.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_fdir.h
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.h b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_queues.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_queues.h
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_queues.h
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_rss.h b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_rss.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_rss.h
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_rss.h
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 9ce4c4db400e..f53080984853 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -9,7 +9,7 @@
 #include "ice_dcb_lib.h"
 #include "ice_flow.h"
 #include "ice_eswitch.h"
-#include "ice_virtchnl_allowlist.h"
+#include "virt/ice_virtchnl_allowlist.h"
 #include "ice_flex_pipe.h"
 #include "ice_vf_vsi_vlan_ops.h"
 #include "ice_vlan.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 5ee74f3e82dc..abf69f4be72a 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -5,7 +5,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
-#include "ice_virtchnl_allowlist.h"
+#include "virt/ice_virtchnl_allowlist.h"
 
 /* Public functions which may be accessed by all driver files */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl.c
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl.c
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_allowlist.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_allowlist.c
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_fdir.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_fdir.c
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_queues.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_queues.c
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_rss.c b/drivers/net/ethernet/intel/ice/virt/ice_virtchnl_rss.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_rss.c
rename to drivers/net/ethernet/intel/ice/virt/ice_virtchnl_rss.c
-- 
2.39.3

