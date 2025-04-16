Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C2CA8AE02
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 04:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8604383EC8;
	Wed, 16 Apr 2025 02:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDMChlJnN5_A; Wed, 16 Apr 2025 02:16:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C529383BA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744769777;
	bh=RVTjPWuanuX9QPoDFpZw0Mx8GDNjeUct7TD9jWFrMzw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=inKPLdrULOug1AI/R56FMKptjGS5D5J4/6HPQIaat29zFi3EGZ/r+CFALiJtzEniU
	 udHXExwR57Vcxwb+n2H3GUlsFrIIllCtjY5tAH8DdU4iWPVb27KlALEUNlXNGCTIiW
	 3P5f1MKyOmIVetebUWKV7P8yGJp8+B0bYLBXA46Ri0HUcnJL3k0wJ6eMjo2vczyk7r
	 3XPhLHmuksrFE+EBS69jgCQ66DKL4zL8Wdhl3Ol5HasRg8fVHwU/fhbtjuM8XNEHaY
	 TDmnXhmVxoj8gyiOVTlY1RUbRjvLVYw7cZobMgU42zbbF+GBq9qvJXe6Q9XMeMrpRW
	 NhKnojASEal1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C529383BA5;
	Wed, 16 Apr 2025 02:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 13538435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F41E83EC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X6faPOBu_7br for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 745EB83EC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 745EB83EC5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 745EB83EC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
X-CSE-ConnectionGUID: 8/ISR0sIRYKN7mnQ02+pfw==
X-CSE-MsgGUID: fiGvC0eBRWqFh/r70PI3zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50125564"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="50125564"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:13 -0700
X-CSE-ConnectionGUID: ta8xRsepS8+ybMA18p2GKg==
X-CSE-MsgGUID: Gz1cvMVzSwyfS92iPYvYQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="130605797"
Received: from bnkannan-mobl1.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.114.218])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:12 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org
Date: Tue, 15 Apr 2025 21:15:47 -0500
Message-ID: <20250416021549.606-4-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744769773; x=1776305773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Eugl+iwPYiUbcjjg4YiJWs7t0iy+ISFbBlQ++IkUipA=;
 b=TudAqUQHQjGxugo0YWB4TaMZ9HQCTeFesqv4G7ZQGP4OItHIn6upoG5M
 K1q8gsef6AejiJ/0WbGD4Q+8OTvtTsc5SjhBrwNu5xz4d+3i2VFloiZQ6
 aXzYTUf6eFZEVBV9uOzvRKBuDXMsXNa7b0D+iMvzxqExxmpkarf4qhscA
 HYBWfyT2lSLsvxXKrfQP7LJhGFhFZeFtwfvKCZt9M3sq/M0eYOc53M4jW
 Mb1NSXmv0Vpfqeq7p5guoRT+bRfttZD/X27h9go8IZ/+vP+dpH49gpEv1
 E3TXCyqLzvuqHm/FHHVxk+O5VakmT8ec5LnH4Z5EFSlxqH2cEuaHVlou4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TudAqUQH
Subject: [Intel-wired-lan] [iwl-next v5 3/5] iidc/ice/irdma: Break iidc.h
 into two headers
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

From: Dave Ertman <david.m.ertman@intel.com>

In preparation of supporting more than a single core PCI driver
for RDMA, break the iidc_rdma.h header file into two more focused
headers.

Only the elements universal to all Intel drivers will remain in
the generic iidc_rdma.h header. Move the ice specific information
to an ice specific header file named iidc_rdma_ice.h.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc_int.h |  1 +
 include/linux/net/intel/iidc_rdma.h          | 14 +-------------
 include/linux/net/intel/iidc_rdma_ice.h      | 19 +++++++++++++++++++
 3 files changed, 21 insertions(+), 13 deletions(-)
 create mode 100644 include/linux/net/intel/iidc_rdma_ice.h

diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index 03cd7d8d1aaa..17dbfcfb6a2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -5,6 +5,7 @@
 #define _ICE_IDC_INT_H_
 
 #include <linux/net/intel/iidc_rdma.h>
+#include <linux/net/intel/iidc_rdma_ice.h>
 
 struct ice_pf;
 
diff --git a/include/linux/net/intel/iidc_rdma.h b/include/linux/net/intel/iidc_rdma.h
index 2b24a9912fa0..1e8136395154 100644
--- a/include/linux/net/intel/iidc_rdma.h
+++ b/include/linux/net/intel/iidc_rdma.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2021, Intel Corporation. */
+/* Copyright (C) 2021-2025, Intel Corporation. */
 
 #ifndef _IIDC_RDMA_H_
 #define _IIDC_RDMA_H_
@@ -71,18 +71,6 @@ struct iidc_rdma_event {
 	u32 reg;
 };
 
-struct ice_pf;
-
-int ice_add_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
-int ice_del_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
-int ice_rdma_request_reset(struct ice_pf *pf,
-			   enum iidc_rdma_reset_type reset_type);
-int ice_rdma_update_vsi_filter(struct ice_pf *pf, u16 vsi_id, bool enable);
-void ice_get_qos_params(struct ice_pf *pf,
-			struct iidc_rdma_qos_params *qos);
-int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
-void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
-
 /* Structure representing auxiliary driver tailored information about the core
  * PCI dev, each auxiliary driver using the IIDC interface will have an
  * instance of this struct dedicated to it.
diff --git a/include/linux/net/intel/iidc_rdma_ice.h b/include/linux/net/intel/iidc_rdma_ice.h
new file mode 100644
index 000000000000..78d10003d776
--- /dev/null
+++ b/include/linux/net/intel/iidc_rdma_ice.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2021-2025, Intel Corporation. */
+
+#ifndef _IIDC_RDMA_ICE_H_
+#define _IIDC_RDMA_ICE_H_
+
+struct ice_pf;
+
+int ice_add_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
+int ice_del_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
+int ice_rdma_request_reset(struct ice_pf *pf,
+			   enum iidc_rdma_reset_type reset_type);
+int ice_rdma_update_vsi_filter(struct ice_pf *pf, u16 vsi_id, bool enable);
+void ice_get_qos_params(struct ice_pf *pf,
+			struct iidc_rdma_qos_params *qos);
+int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
+void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
+
+#endif /* _IIDC_RDMA_ICE_H_*/
-- 
2.37.3

