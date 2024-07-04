Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 127EE927608
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 14:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B318B408DE;
	Thu,  4 Jul 2024 12:30:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDFucaXUDMZC; Thu,  4 Jul 2024 12:30:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B73F840977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720096244;
	bh=BCqvTZ/LEl7mGiOKdfu2qVXNBfZ8aoKGWtgmAca0QXQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UzPN7oxsB+zY+aCFB2/+evo4rbgPJAT8rbPVv+kqwEqnKfjYd8/Y2c1LSVW7CCG+3
	 G+zEheM3xeL+mDpBE4q52baiQj+42iiPxpVmNcFD/jj9LzPwtSkKzFByVceXsh6NzJ
	 lcHEIeMKpyQogZ/rmdr4ddi7ycdLfixxxX6nHRbpwssCkCRJ4d5akHjddueOF8VSNG
	 icf7p/geVH8D6xn1KZHJDMSq+8cUIZlFcqFXaBUqvXkXxW2LLja2s8IG3quAX22nIG
	 1Muqd+Rxz0pKRfpjOWXSFmYPSFK2cq5BPH8M4W33WMMA5rBYKGfUdA9Ww7c0AZEeJ7
	 cXM/xGhgUpWIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B73F840977;
	Thu,  4 Jul 2024 12:30:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8ABA01BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 772DE60649
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:30:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1uPdLOpR1CQY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 12:30:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C614D60822
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C614D60822
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C614D60822
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:30:41 +0000 (UTC)
X-CSE-ConnectionGUID: LCx5jMpGTli6hfEjaU90wg==
X-CSE-MsgGUID: +Mjx279CT/2e5/SgjlI36Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="17484151"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="17484151"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 05:30:41 -0700
X-CSE-ConnectionGUID: FmGCh7V5Sz6kwpfPYzU94A==
X-CSE-MsgGUID: YnaiJZuTRFaitEcU+VGGtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46550307"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.61])
 by fmviesa008.fm.intel.com with ESMTP; 04 Jul 2024 05:30:40 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jul 2024 14:26:53 +0200
Message-ID: <20240704122655.39671-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
References: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720096241; x=1751632241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I3HHJCYyOawm3B2PrzYQZA6DulgXKucpF/TAE489InI=;
 b=eEM++TN9so/75tjTH9I9qRfqkLx2WuvGL7Nidl/I0iTqRjb65k4RDA8Z
 fAI4LFEfEr8Ocnyl7Y4NF2ayOSRp0OdbOLE4ywAVHW1iaikg/zKCNGDkO
 59VCI6YrgfoSEXsnUVF8wZSFfyNBP+QuKLtIugApWBhbFC18eZTlNDRP1
 TmqLZpcLwKL1K/r7Ahsd8SG6zNgSEUv89sDfrIDmZIatqGQDt+0wsz3OD
 F35vcOepC21zemWZBT7uC32P2KWTFr9Hc5wZZjxY/Eeg81GWTcyj2ybnr
 gyMtpLdscQSuFYIFQvx83ys/DXygZGvmFJcsOO/vaGbB7XOpgrVxVMRg0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eEM++TN9
Subject: [Intel-wired-lan] [PATCH iwl-next v8 5/7] ixgbe: Add ixgbe_x540
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
 horms@kernel.org
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
2.43.0

