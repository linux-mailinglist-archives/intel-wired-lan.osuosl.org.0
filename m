Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CCEA9BE6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 08:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3D1C415D4;
	Fri, 25 Apr 2025 06:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpFYHq0BNuRL; Fri, 25 Apr 2025 06:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0629A4163D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745561312;
	bh=/YgGlZBEulRNE0Xxq27bv7mxlhEf29KwcRtPWa9Md14=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W7E88cQP4dkMR8f9PMcO79uPp1F61KwKQKPzgd0tsCZcSykanCV9ID4Qkt/dCjbRc
	 G95lHv4qkzuyM8riyBmzw1TyLYTd/m7msuzed1+5PvYHC+LDmVyuhhIULNqSMGnXwT
	 V7+t3aPuTHErUShPCnKjDktlpa5r7B33AMASGMW6/Xv5HZ7Tga5oVLJhG9O9qmHgcR
	 7Qg08Lecnczh0IWrXQ4CIJetRb+iQJ56z9ffBfcG3L3jyLZlz7uc8GWsOnb3oVOcwC
	 LMnvsBOODnuY9zl0wk2m/zvp4E0jppIetLMFzmHOBIsZWl8wyDZSEeyHgNobmFpM2+
	 M3k572Agv8ccg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0629A4163D;
	Fri, 25 Apr 2025 06:08:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29B92C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FD8E60AD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlCI6VIqov5w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 06:08:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6554560AB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6554560AB0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6554560AB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:29 +0000 (UTC)
X-CSE-ConnectionGUID: 3uDvR0jfQ8SlNm/qzTe5XA==
X-CSE-MsgGUID: 9p0cEG2XRDOr20RtRVwU/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58578916"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="58578916"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 23:08:27 -0700
X-CSE-ConnectionGUID: HGo+9RhaTF2IkobJr9RnuQ==
X-CSE-MsgGUID: ME/HMHgBS7mZ0QCPfWtKjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132703186"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa010.jf.intel.com with ESMTP; 24 Apr 2025 23:08:26 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Fri, 25 Apr 2025 08:08:06 +0200
Message-ID: <20250425060809.3966772-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745561308; x=1777097308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ivqr/h7pnRe28nJQTWu+qhpH6A/QCdxCMJRiBxIoaEk=;
 b=k+iGL1eeLHt9jCx0FHVTtphrzh422uRX+s3on2uLlqFaxCwEupTlOu+l
 TJSYgOwiBvGsuok9G8chpb4qlPXhsuTTy9DInX6+U1oAiitzPKxFuN0Hl
 qllFWiH/reXk669j2/msku+a7DiPcPSaVYikVhkrJcvW6WFysINmZ2pFP
 +yBDtDJqT3uYAOAq93tAJ/BVX9xX27D2zjtoSe7AmZf5mOX/HNTjcsPe+
 AXFnycHBN+s8Mp4SndX1vY8bt9y8jTCmrtSeiU//Uup6Myx0Lfita4Zd7
 FpvO+RNjap29/TWSOdG0q1ejUc1FTbEGcMF8MbD4gEva6yjyJZxcGQnQg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k+iGL1ee
Subject: [Intel-wired-lan] [iwl-next v3 5/8] libie: add adminq helper for
 converting err to str
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

Add a new module for common handling of Admin Queue related logic.
Start by a helper for error to string conversion. This lives inside
libie/, but is a separate module what follows our logic of splitting
into topical modules, to avoid pulling in not needed stuff, and have
better organization in general.

Olek suggested how to better solve the error to string conversion.

It will be used in follow-up patches in ice, i40e and iavf.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/libie/Kconfig  |  6 +++
 drivers/net/ethernet/intel/libie/Makefile |  4 ++
 include/linux/net/intel/libie/adminq.h    |  2 +
 drivers/net/ethernet/intel/libie/adminq.c | 52 +++++++++++++++++++++++
 4 files changed, 64 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/libie/adminq.c

diff --git a/drivers/net/ethernet/intel/libie/Kconfig b/drivers/net/ethernet/intel/libie/Kconfig
index 33aff6bc8f81..e6072758e3d8 100644
--- a/drivers/net/ethernet/intel/libie/Kconfig
+++ b/drivers/net/ethernet/intel/libie/Kconfig
@@ -8,3 +8,9 @@ config LIBIE
 	  libie (Intel Ethernet library) is a common library built on top of
 	  libeth and containing vendor-specific routines shared between several
 	  Intel Ethernet drivers.
+
+config LIBIE_ADMINQ
+	tristate
+	help
+	  Helper functions used by Intel Ethernet drivers for administration
+	  queue command interface (aka adminq).
diff --git a/drivers/net/ethernet/intel/libie/Makefile b/drivers/net/ethernet/intel/libie/Makefile
index ffd27fab916a..e98f00b865d3 100644
--- a/drivers/net/ethernet/intel/libie/Makefile
+++ b/drivers/net/ethernet/intel/libie/Makefile
@@ -4,3 +4,7 @@
 obj-$(CONFIG_LIBIE)	+= libie.o
 
 libie-y			:= rx.o
+
+obj-$(CONFIG_LIBIE_ADMINQ) 	+= libie_adminq.o
+
+libie_adminq-y			:= adminq.o
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index 989de2eb6d19..1dd5d5924aee 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -304,4 +304,6 @@ static inline void *libie_aq_raw(struct libie_aq_desc *desc)
 	return &desc->params.raw;
 }
 
+const char *libie_aq_str(enum libie_aq_err err);
+
 #endif /* __LIBIE_ADMINQ_H */
diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
new file mode 100644
index 000000000000..55356548e3f0
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/adminq.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include <linux/module.h>
+#include <linux/net/intel/libie/adminq.h>
+
+static const char * const libie_aq_str_arr[] = {
+#define LIBIE_AQ_STR(x)					\
+	[LIBIE_AQ_RC_##x]	= "LIBIE_AQ_RC" #x
+	LIBIE_AQ_STR(OK),
+	LIBIE_AQ_STR(EPERM),
+	LIBIE_AQ_STR(ENOENT),
+	LIBIE_AQ_STR(ESRCH),
+	LIBIE_AQ_STR(EIO),
+	LIBIE_AQ_STR(EAGAIN),
+	LIBIE_AQ_STR(ENOMEM),
+	LIBIE_AQ_STR(EACCES),
+	LIBIE_AQ_STR(EBUSY),
+	LIBIE_AQ_STR(EEXIST),
+	LIBIE_AQ_STR(EINVAL),
+	LIBIE_AQ_STR(ENOSPC),
+	LIBIE_AQ_STR(ENOSYS),
+	LIBIE_AQ_STR(EMODE),
+	LIBIE_AQ_STR(ENOSEC),
+	LIBIE_AQ_STR(EBADSIG),
+	LIBIE_AQ_STR(ESVN),
+	LIBIE_AQ_STR(EBADMAN),
+	LIBIE_AQ_STR(EBADBUF),
+#undef LIBIE_AQ_STR
+	"LIBIE_AQ_RC_UNKNOWN",
+};
+
+#define __LIBIE_AQ_STR_NUM (ARRAY_SIZE(libie_aq_str_arr) - 1)
+
+/**
+ * libie_aq_str - get error string based on aq error
+ * @err: admin queue error type
+ *
+ * Return: error string for passed error code
+ */
+const char *libie_aq_str(enum libie_aq_err err)
+{
+	if (err >= ARRAY_SIZE(libie_aq_str_arr) ||
+	    !libie_aq_str_arr[err])
+		err = __LIBIE_AQ_STR_NUM;
+
+	return libie_aq_str_arr[err];
+}
+EXPORT_SYMBOL_NS_GPL(libie_aq_str, "LIBIE_ADMINQ");
+
+MODULE_DESCRIPTION("Intel(R) Ethernet common library - adminq helpers");
+MODULE_LICENSE("GPL");
-- 
2.42.0

