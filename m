Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9B29E3CD6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 15:33:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57B9A84087;
	Wed,  4 Dec 2024 14:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cWS0b2ecotQW; Wed,  4 Dec 2024 14:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A96E4820E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733322794;
	bh=eBxmNrn7qAv5ToAovediHtKgz05NHE4wpm5tzf5Mg+M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a2cu0XlOyjGFOjMlZ8G2SBegOM4pEEwzJ0GbhfKb8hCAz4VmFqBi025gcx9drMmie
	 Nyhsga93t2yAese6b3SGfumun6nUH0ctH2doKVGWYujNFuNm6wBONJm9f7F7k6/B96
	 IUfyY0AW8+UCEF+eNmqYfvUmuIoeDgxEgJXfNM6Zqtij81ATpbFmbu1w2ClOk5m0jR
	 PCB5H4PZU47hdUTVGZuwoUXopxF7MflbbD83gzLAYMOklPBLft9hzZbI2XgWJ0R2to
	 HFSv2CQxp8SPFKGgF+CirlIuS5vWnbKMxr3/fDDChya4sIxVGbiSp/uhMwWzAwruvH
	 0vI0iTE5ciVjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A96E4820E1;
	Wed,  4 Dec 2024 14:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A30C51DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9189F60741
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mpevu1fY9jJC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 14:33:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C977C6073B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C977C6073B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C977C6073B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:11 +0000 (UTC)
X-CSE-ConnectionGUID: oYb6CGLjQ2GM4aox+VfAHQ==
X-CSE-MsgGUID: b0YP6/nPQeGUkNcJpTpldg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44621850"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44621850"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:33:12 -0800
X-CSE-ConnectionGUID: HMMfnvVOTXOJ3Jbf/waJfg==
X-CSE-MsgGUID: 8zQA6SZwSfy//v6f9YmT3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93456620"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa006.fm.intel.com with ESMTP; 04 Dec 2024 06:33:10 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed,  4 Dec 2024 15:31:10 +0100
Message-ID: <20241204143112.29411-7-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241204143112.29411-1-piotr.kwapulinski@intel.com>
References: <20241204143112.29411-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733322792; x=1764858792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3bDeFwvAxQpwhTqS+naTgeHPWQZXlwaQCZQSnPeKaw4=;
 b=AwJ9YFAv/BdaEOvGqFgaYdNlaG9FsAJyI3WcmJ6pvMosYMIDK5tJWdfi
 95GptLZaL5iAo2JgJDNbDmtQ24SoKno9z6vu1zfrKf978kp1hLWZccP1k
 8eLefyAFw3p7YM+jxNKAk5NPSOYpbek6C0Vxzu1/0sUjPevdRGdE/7/nj
 AN7eEdeBQIVDmXE+xpL9nvmv05buC3G2AT5jgks/kWGUq5tRkcpyxsanE
 RAthqO4l0WmiRl4tWSvhrMktySgmMv/ZsS2vdGIk7SiIQi5sSabNYdACg
 5Q5YabMDJf3T/hALq/cuGlvoxHyOI5V6MEFJTtWN5q7dLQyVa7GFcNE1W
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AwJ9YFAv
Subject: [Intel-wired-lan] [PATCH iwl-next v11 6/8] ixgbe: Add ixgbe_x540
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

