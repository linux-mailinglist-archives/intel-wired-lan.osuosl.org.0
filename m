Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 579FD8D04B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 16:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB8AE608F0;
	Mon, 27 May 2024 14:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2r3-QupireH; Mon, 27 May 2024 14:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20380608E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716821608;
	bh=AzXLcJfj1JWDDaReWqGRmewXHNvOObHw/awXW9Qzjow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uXptlHuMrx7EZMymdh8L0DaVYsagV9RRTIcX4KdAzPSYp2Tinv03KtqfM+qCtQOSQ
	 dYU9GZMHH3yVDB8iuRLLmSk1BvhvmVDTMjxdNHnHACk0AwBM9uUxk25b69xHlJXT9s
	 ZWWUXjE4ujQfypwRx/bcWsl+Vl1xfGhAPITEs9Yc4aeapcxidYS3VT84yDQKBl/W4T
	 QQ0E1BV4B+w1g34Cnf0KJMAlFuYgimp0d9+h/j4+w4mPMRWytNIT5vjL+Yr0qhJyRr
	 JcRn9dLnMZSyLSsMy+OOKM2kOFS6wEzwcgZDBmH5GKTyWSAZnXGt1k4ubnkUpja+o+
	 7G+BoxYiunagA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20380608E4;
	Mon, 27 May 2024 14:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D05E11D1E16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA9A640253
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaJMl4S9ooGk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 14:53:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3AC7F4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AC7F4016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AC7F4016B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:22 +0000 (UTC)
X-CSE-ConnectionGUID: rI2DN257TWeffS7eEPXJRg==
X-CSE-MsgGUID: 6tXIK7dHQiiKtpiW4gMXQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="11715265"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="11715265"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 07:53:22 -0700
X-CSE-ConnectionGUID: G6fimsMWR3u98lq2bcryxA==
X-CSE-MsgGUID: 49CSnowzTzO3nVizef+Ghg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39192017"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by fmviesa005.fm.intel.com with ESMTP; 27 May 2024 07:53:19 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 17:10:21 +0200
Message-Id: <20240527151023.3634-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716821602; x=1748357602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yAlmKvQNAV/yUXqHSOBMs6ZT4KrFx6wmrNXDkPsKJTs=;
 b=V5E624/hJe/T6e4180TK+lxhIiRR3O5X7pOF3hWNIPbpabOuciuSILrN
 1ZoTMa+wHM9mWDsgdY11TcGVR17eXHKIiaKzWfZL819CzcNUgVyYgBiws
 JdBRWWdVeB2Ce26YzPlOGP4M1G9Qtd+UDhBFoXt3xH9Qexeg0plIMDtR4
 DqRWhTs12ZAiNaDhrQUCjkUTmmGANr8FFuA1FtCdDTTdvtvU6tnXyCIew
 DXXL4wYZJm2BUUprd2h95aao4mShiSZWnd2NyhfclfTpj2U5XIbA+8HbT
 nGpM68KDp7FusMyfRadyfddDyIl8iGNQw1O7jM6j4Xu4jFPmLWdZDHGuS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V5E624/h
Subject: [Intel-wired-lan] [PATCH iwl-next v7 5/7] ixgbe: Add ixgbe_x540
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
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

