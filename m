Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BBFB16359
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 17:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F3594102E;
	Wed, 30 Jul 2025 15:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X-VYOH09BUQm; Wed, 30 Jul 2025 15:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 737B441001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753888120;
	bh=50RwbDJ/nYxrnqu4c6E0bR5DZtLztv2nW0VEauDRttA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HNwF3C5g50Q1a4gfCDRH8aqhIdRkYJtk6tLaX2uDBAZOq9ZK6Mgz7JIIjYIU14we6
	 xKjKSOtSVHp469OWfu4t2QtApiLB4dZfRmy3mk22A9X9eScAqvOGAZnDshIig++ety
	 FLFFOIjPdusFqL2rlC2pcrE2TE6uH5F11bVWg1m4rpbiuF54gT0jjNqgA8e6ps0vnV
	 npxtz6XRL4htXg8+ko+oz8fuShYW8ZQe/aMtiUbIHIAPAnXYAw5f9sXzdUDZIfTPhI
	 N7TYECkM02nP9n8iHOLRi18UcOVu4eYLisaf77GGZJEDkhxvXCz1xZivgn/+Ts+QHL
	 SjzotvxJ19khw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 737B441001;
	Wed, 30 Jul 2025 15:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D03B13D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A00C408B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:08:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ll7wnARuHmt1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 15:08:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6C924026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6C924026F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6C924026F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:08:37 +0000 (UTC)
X-CSE-ConnectionGUID: A4nv0EwtTyKhcNoRu3G8bQ==
X-CSE-MsgGUID: lwDChZnIQJK4dYIcVzCiWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56079839"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56079839"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 08:08:37 -0700
X-CSE-ConnectionGUID: DllWJNIeRI63WFtRgOKtow==
X-CSE-MsgGUID: h5LE7lPiRDaTG4t3oXaJ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="200184582"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa001.jf.intel.com with ESMTP; 30 Jul 2025 08:08:36 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 30 Jul 2025 16:52:09 +0200
Message-Id: <20250730145209.1670909-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753888118; x=1785424118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RJ3rDAj4sWeP/zmJ+H5foZYfyHgKgRPaIkyolVDqA2o=;
 b=DfAS8tgHERu9kDSnJTtSSq3zIgBtSUjo6weuSEb2xtnGhdiFKLUs117b
 070gDXoueMxjNUM2c6bw2odmSiRxvgO8Ukji6uCzWIsyyZ6OyGzlKr5vl
 z1cT0BJ3i0iSNUXxfeCwz5yqdGXGxoVXvr6xFBtIyJ/TC8hs0PJuZTccW
 UdrdO4VE2XEGZnyXLROZVWLY/PZtd2qEcXfOmAUd6t2oVWTabGi8yyo5k
 FBIEy/GD+sj7CxRcM+huaaSvwpj5menTCkqrOTFDdK6hjIR+F5mWZcBvk
 4+aNizCh4ggbQppY8icBL0JITtL2GQQXjE2qT5fWz/Bcc5oe+xYbKbFcE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DfAS8tgH
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix
 ixgbe_orom_civd_info struct layout
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

The current layout of struct ixgbe_orom_civd_info causes incorrect data
storage due to compiler-inserted padding. This results in issues when
writing OROM data into the structure.

Add the __packed attribute to ensure the structure layout matches the
expected binary format without padding.

Fixes: 70db0788a262 ("ixgbe: read the OROM version information")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 09df67f03cf4..38a41d81de0f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -1150,7 +1150,7 @@ struct ixgbe_orom_civd_info {
 	__le32 combo_ver;	/* Combo Image Version number */
 	u8 combo_name_len;	/* Length of the unicode combo image version string, max of 32 */
 	__le16 combo_name[32];	/* Unicode string representing the Combo Image version */
-};
+} __packed;
 
 /* Function specific capabilities */
 struct ixgbe_hw_func_caps {
-- 
2.31.1

