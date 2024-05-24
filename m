Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DACE8CE766
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 16:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76B69409E0;
	Fri, 24 May 2024 14:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mY_cXrtaHUfZ; Fri, 24 May 2024 14:56:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8925409A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716562580;
	bh=AzXLcJfj1JWDDaReWqGRmewXHNvOObHw/awXW9Qzjow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jEsDNEJCmnm3hRPvZeJ7JU+F3czv2PBmnH+VQgOOPLGL5rFjkA8xvtx2AxVEo88nK
	 gZV9xuyDZrn6x12W3BQjMEx7dEo97R4g0p6/BZbQ3BDYVKjqTc8715eclSK0rgDwLe
	 yVtmsiZ7Jnq0thJWKiAf1HcU+/xAq4nipeuqBuDw5XncoBIi7ZhcoYQ6EEfT4pHG9p
	 Ndn0mEs+ZuX9K/xrul3pZIvz2mMBc0Jk55mWXpy+/EgBU+AQs+7KnparS6CDEWZzR4
	 5rTwgetyLCmiOiAjgv3uUCezXAKNNPk50PePjjSkX2bVo/teg7qkkqmUqxxasfneSW
	 eYiQpUZjW4KtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8925409A2;
	Fri, 24 May 2024 14:56:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 995B51BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78C7640998
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Af2t_aiGMVFe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 14:56:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0AEF5409C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AEF5409C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AEF5409C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:15 +0000 (UTC)
X-CSE-ConnectionGUID: hAaJ5UCERIKbrCNnSHXswg==
X-CSE-MsgGUID: bfjwkeYKS+2ySBKlHjT2Uw==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="24070390"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="24070390"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 07:56:16 -0700
X-CSE-ConnectionGUID: tLAR01f2TWeFIr1N+Wn4AA==
X-CSE-MsgGUID: cXWDh18iTGGKJtXE7DwvGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="33946100"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by orviesa010.jf.intel.com with ESMTP; 24 May 2024 07:56:15 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 May 2024 17:13:09 +0200
Message-Id: <20240524151311.78939-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240524151311.78939-1-piotr.kwapulinski@intel.com>
References: <20240524151311.78939-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716562577; x=1748098577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yAlmKvQNAV/yUXqHSOBMs6ZT4KrFx6wmrNXDkPsKJTs=;
 b=BpyMYNqTm3owrolPOguWDMq3lH+eJvbz+K1ti/ZpxyGttcEyKHF/q7jr
 Hl+GsO1jq4dX+6wMbsJH249aD1kS+4w476fS256CsVlS9yEPBCrdBvjgu
 O1OD5h++nnKzcmb1QKLeu1rRPZ51u9Dahc13r6vv9U1rDetFCjdwFSf72
 3tRra0pdM2Z8BiMfdFMyCQYwBLbVdz4hrPGyC1VhdQVpN21DbEVNaPgdq
 Ho5Vu73TPCtUc/5rgsIqAqatlhL2epsY1r3OW1VIW5KTLvMLYaOMzCJFm
 drHdqx0ySQENNhwCRkjJ9gLAmlj4RnTiqXaWvZJziphJtQXtKsw04GTCS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BpyMYNqT
Subject: [Intel-wired-lan] [PATCH iwl-next v6 5/7] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 pmenzel@molgen.mpg.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Required to adopt x540 specific functions by E610 device.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
index b69a680..6ed360c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
@@ -1,5 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 1999 - 2018 Intel Corporation. */
+/* Copyright(c) 1999 - 2024 Intel Corporation. */
+
+#ifndef _IXGBE_X540_H_
+#define _IXGBE_X540_H_
 
 #include "ixgbe_type.h"
 
@@ -17,3 +20,5 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw);
 int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
+
+#endif /* _IXGBE_X540_H_ */
-- 
2.31.1

