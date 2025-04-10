Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2CFA83FCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA17C61AF4;
	Thu, 10 Apr 2025 10:01:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uTCiFT3KSLKh; Thu, 10 Apr 2025 10:01:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25E8261AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279301;
	bh=5h8O+oVCjdj3lSmmvc+0QohElKMYNFmkuBqIoR4n7u4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=obwpm2h9wHPTdJeZ4sg8NN+EHp2/kZHc/MIwdSEEmRhca3Ys8w4iQGhg9Ed25cge8
	 PxXbUDvYu1wCGD5SBmOi8hJQxz9DBf4x2+vXLjUV1NusHrlJlQCXvJuFmXDlP/haCk
	 cnPNzC9rZbs/eML0YkXZa6mvcF+a9MxjPgtsfmsDOeBDLSrhL3H7HwGrXwE0U0w328
	 /CpV2X8veoGSyuNZ72KsBehylgLeTxK4LwHh0NcGZ2i1GCJu33iDa35BWpHJcsyuk+
	 dKPibClB1vHAilMcs0SjNKVp+AeQA12A7BPOZHGslmRSmXHd/ktv4yRDvXnp1ih+Nu
	 YaEMLWArE5Ijg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25E8261AD3;
	Thu, 10 Apr 2025 10:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1D99108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F1474027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6lG8b-1S3U2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0A594012E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0A594012E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0A594012E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:38 +0000 (UTC)
X-CSE-ConnectionGUID: cflzK9UdTX+qK/Ubtn6pjg==
X-CSE-MsgGUID: k4LfoLTDTXWlB1FhFG/2Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183911"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183911"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:38 -0700
X-CSE-ConnectionGUID: 6UGYSyQdTD69AeclcCjX6w==
X-CSE-MsgGUID: pMuOyp1fTTa9U4tujiSrPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819751"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:36 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:18 +0200
Message-ID: <20250410100121.2353754-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279299; x=1775815299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GNdUSs8oh/thvERmuTya+pDN15XjoQ+57AH97V3Yb+0=;
 b=M/VyHaeq7kD+RI5KTSd2KqsZKsnasRCD8/1WGqsjufIIGu/7Er4oCz0H
 zY1J95FQfufccIo9YT+ZmiGP1bImDtCCkRhPrjEx3aVFi1N6aX4G6XTGR
 +QaGbhgFuQRQoTXbLn0gfnoMUytTy5mXh0AENoxt4QofEvX8kxn8nTdso
 oXccH3TlIWrbW99B9B9XxJWqlsKNB6C+0cIvyHAXs4ez3LwgUHDmE7rw8
 3GqAYi8STqByUdFPGSiS2fQvRaIVuP/56i739RrjbgvWg++f9YeaYVWhr
 exbqLr+UcN6FImYofRIGD1EQkzgMoum9Vazu8D0oOp91yYemBZVzk4lvh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/VyHaeq
Subject: [Intel-wired-lan] [iwl-next v2 5/8] libie: add adminq helper for
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
 drivers/net/ethernet/intel/libie/adminq.c | 50 +++++++++++++++++++++++
 4 files changed, 62 insertions(+)
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
index f8b3194b0742..92ec15f308b2 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -301,4 +301,6 @@ static inline void *libie_aq_raw(struct libie_aq_desc *desc)
 	return &desc->params.raw;
 }
 
+const char *libie_aq_str(enum libie_aq_err err);
+
 #endif /* __LIBIE_ADMINQ_H */
diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
new file mode 100644
index 000000000000..6c95619d1f2b
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/adminq.c
@@ -0,0 +1,50 @@
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

