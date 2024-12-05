Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 622C49E501B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 09:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D59E84726;
	Thu,  5 Dec 2024 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bL2elroQ1yjW; Thu,  5 Dec 2024 08:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A80C84706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733388374;
	bh=eBxmNrn7qAv5ToAovediHtKgz05NHE4wpm5tzf5Mg+M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WrXFlKIl62zQoB+bZ6m9ptSNQGQa4xkMJxh9X6alrWIicKAE6GDouBZPPfaiwnVjF
	 OYBT0bhrOjeH3q6rEuDBhuD8fxQYHdz2Lusg1uOp16J2dpXRxbBKffZAqolE9oZwb1
	 dvXp/2osRuHLFlUDBF5wDAaZOHdq47UfRQnRVsuE3FaqD0Zvv3zAVCpytYiaWpSGiM
	 ESYpoY+0lYNjLWX44Ik/zHUsMLflYyCVMX3mZx0KsWOJ5SLR76n/c5ns6CB7/WhgGZ
	 w2jR4WvRMV23XC8uU1+y0FiEL+XlFYFZcoV8mtVGYAF5MgVK02IdJ5t7ADVuL8lzHu
	 aXj700lcieEvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A80C84706;
	Thu,  5 Dec 2024 08:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65733AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4F7D84709
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I2mCNU3xK_Y3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 08:46:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1829C84706
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1829C84706
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1829C84706
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:09 +0000 (UTC)
X-CSE-ConnectionGUID: bVx/wbpdQ5qwJVa+PxBsxA==
X-CSE-MsgGUID: XqWdlUJKSBiCEcsK7J72mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37623286"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37623286"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 00:46:02 -0800
X-CSE-ConnectionGUID: kZ2i5K9jTia22h77mcnd8A==
X-CSE-MsgGUID: bcDKNca3QAWn+BJAQPWlNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94864192"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.2.76])
 by orviesa008.jf.intel.com with ESMTP; 05 Dec 2024 00:46:00 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Thu,  5 Dec 2024 09:44:48 +0100
Message-ID: <20241205084450.4651-7-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733388370; x=1764924370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3bDeFwvAxQpwhTqS+naTgeHPWQZXlwaQCZQSnPeKaw4=;
 b=gJhdoMSGH2+Az9RlICybuH9UXfyb0x7NAh+gMvtB0rOcgAM07eEFuzGB
 vqpvRSeHkHSDfVuHX9Ju/AcPDPTVdOFJSq1wDctdcjZq34Grh5rygIGj2
 bH5+9hx+fen3qVt2ZDx5Qua6p8vjC2UdeFpycrkSPz7GjCC/M9WNpTS0Z
 XLcm/jWWPxp+aY8+tKKeFDxpQizuaa7YQBRQzx8c3VWMiQSLa/BMPPbIZ
 DTyAYxh82sMOQ5O3eKj53du64nXXBhMX/b1N1wVeyY4N8Bh2oG+OnNX0w
 04aRsj8rgC82NR3/NUn5d7XlgBzjWw9KYf04w7neXT5X8CWA4f3OHDvlM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gJhdoMSG
Subject: [Intel-wired-lan] [PATCH iwl-next v12 6/8] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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

Required to adopt x540 specific functions by E610 device.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
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

