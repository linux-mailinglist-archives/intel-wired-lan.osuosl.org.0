Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB4B98A160
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:04:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0DD4606E0;
	Mon, 30 Sep 2024 12:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-yU9ysGOa_F; Mon, 30 Sep 2024 12:04:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 223856068A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727697869;
	bh=DwVe2afRN/OOWqNiDF0A0A9ebFk81QLK4uAYa/z30Fw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=usxb9NGvJKqYn1AGrI5UiyFSiTZjvJ2mUQ20vQ9f8Mk3vdJd12NV6mgAZGjAMAdEn
	 4KZDKkg7pPrT1pL2c93bGJ12Z/oXsqkhi9UIhw6nQDqtd9ItjdbC7JI8Xm4TMpQ8c8
	 MPy8gWGdn6+f5aoOulzwiUG6tKlnC1vonc2XVjHGuUBC90kVJdLqlWJ8f7iu/1v55f
	 w9AiAd+BFBOkSIjebrtKwWEMl6lnKfI+RG2mm66P+W9zVgOKxzD5xQChvfYk43ZgJy
	 9LpomDmF+xXB3QzAYGRf5b8tydaZHyE3KkX43PBgKU8j+5xE71WGAyHjHI084Z0Ses
	 /Y67ILeh0ziNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 223856068A;
	Mon, 30 Sep 2024 12:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B30C21BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9233980F3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MMWGEwNsNzho for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:04:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D86880F0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D86880F0F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D86880F0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:20 +0000 (UTC)
X-CSE-ConnectionGUID: fISWxn+4RGu9dqQGzTfRJg==
X-CSE-MsgGUID: uQKa/1/PSb64G3E9OjpPsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="29665573"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="29665573"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:04:20 -0700
X-CSE-ConnectionGUID: dcqN7gxuQ1mncOR+GF3tWg==
X-CSE-MsgGUID: IYq685GCT0mm3Q/c6GUSzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77363519"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 30 Sep 2024 05:04:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:03:59 +0200
Message-ID: <20240930120402.3468-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727697860; x=1759233860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fFRdLH1r9RtZMg2le43g6EXxLM8StAN53tR1DQCQ/7g=;
 b=XRhhP+xQhkrr5N0mM6R9/+bdJXZXUBdp14bgm+eec1ErAg3y/bNqaTtd
 aDNfHT/r0z7zKJ/HZmOUWwGdfHHROP3NqlpmzFdC1cUCFSbbohIa5X2VA
 kFGkK+ETIOvZEAZwj0+BHhFpmYsEHz3ANYfmATfwBwwH7pJXX+ekixAPC
 j/5z01CwU9EviTAAH0RNHbIX5BLk5bMpy/BTPvvya7wjJJlknn4rUYZRQ
 QidCH233u90BeQLZ6/F5sSOLSar+zR9N2mrd8aSYMyq0JGKZYkLQ2GAgS
 GfRauu4AYOKiFXCNn1JJP7O2F5CyZ1IHEp68Pf8wgDYfkr/Y/5PLjUpjQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XRhhP+xQ
Subject: [Intel-wired-lan] [iwl-next v4 5/8] ice: treat dyn_allowed only as
 suggestion
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It can be needed to have some MSI-X allocated as static and rest as
dynamic. For example on PF VSI. We want to always have minimum one MSI-X
on it, because of that it is allocated as a static one, rest can be
dynamic if it is supported.

Change the ice_get_irq_res() to allow using static entries if they are
free even if caller wants dynamic one.

Adjust limit values to the new approach. Min and max in limit means the
values that are valid, so decrease max and num_static by one.

Set vsi::irq_dyn_alloc if dynamic allocation is supported.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_irq.c | 25 ++++++++++++------------
 drivers/net/ethernet/intel/ice/ice_lib.c |  2 ++
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index f1d5e43251ad..85840f3ad5c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -45,7 +45,7 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
 /**
  * ice_get_irq_res - get an interrupt resource
  * @pf: board private structure
- * @dyn_only: force entry to be dynamically allocated
+ * @dyn_allowed: allow entry to be dynamically allocated
  *
  * Allocate new irq entry in the free slot of the tracker. Since xarray
  * is used, always allocate new entry at the lowest possible index. Set
@@ -53,11 +53,12 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
  *
  * Returns allocated irq entry or NULL on failure.
  */
-static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
+static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
+					     bool dyn_allowed)
 {
-	struct xa_limit limit = { .max = pf->irq_tracker.num_entries,
+	struct xa_limit limit = { .max = pf->irq_tracker.num_entries - 1,
 				  .min = 0 };
-	unsigned int num_static = pf->irq_tracker.num_static;
+	unsigned int num_static = pf->irq_tracker.num_static - 1;
 	struct ice_irq_entry *entry;
 	unsigned int index;
 	int ret;
@@ -66,9 +67,9 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 	if (!entry)
 		return NULL;
 
-	/* skip preallocated entries if the caller says so */
-	if (dyn_only)
-		limit.min = num_static;
+	/* only already allocated if the caller says so */
+	if (!dyn_allowed)
+		limit.max = num_static;
 
 	ret = xa_alloc(&pf->irq_tracker.entries, &index, entry, limit,
 		       GFP_KERNEL);
@@ -78,7 +79,7 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 		entry = NULL;
 	} else {
 		entry->index = index;
-		entry->dynamic = index >= num_static;
+		entry->dynamic = index > num_static;
 	}
 
 	return entry;
@@ -128,7 +129,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 /**
  * ice_alloc_irq - Allocate new interrupt vector
  * @pf: board private structure
- * @dyn_only: force dynamic allocation of the interrupt
+ * @dyn_allowed: allow dynamic allocation of the interrupt
  *
  * Allocate new interrupt vector for a given owner id.
  * return struct msi_map with interrupt details and track
@@ -141,20 +142,20 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
  * interrupt will be allocated with pci_msix_alloc_irq_at.
  *
  * Some callers may only support dynamically allocated interrupts.
- * This is indicated with dyn_only flag.
+ * This is indicated with dyn_allowed flag.
  *
  * On failure, return map with negative .index. The caller
  * is expected to check returned map index.
  *
  */
-struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_only)
+struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_allowed)
 {
 	int sriov_base_vector = pf->sriov_base_vector;
 	struct msi_map map = { .index = -ENOENT };
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_irq_entry *entry;
 
-	entry = ice_get_irq_res(pf, dyn_only);
+	entry = ice_get_irq_res(pf, dyn_allowed);
 	if (!entry)
 		return map;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 26cfb4b67972..99af78daa5e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -572,6 +572,8 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 			return -ENOMEM;
 	}
 
+	vsi->irq_dyn_alloc = pci_msix_can_alloc_dyn(vsi->back->pdev);
+
 	switch (vsi->type) {
 	case ICE_VSI_PF:
 	case ICE_VSI_SF:
-- 
2.42.0

