Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A116A859543
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 08:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11C93404AB;
	Sun, 18 Feb 2024 07:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AgJMTaATZ3LU; Sun, 18 Feb 2024 07:33:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16AC4401CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708241597;
	bh=jBTkuYrQqbypZFPsqTHM3dv/VqLlsUdVXQbWGXzdYgs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8Fxsi/lZQvM9TOtbP31ATJ+JkAVE8aOKVCZ5k6FMds00HPCms3lT1dFoahu42t23S
	 DGGnvXqDhPilQKOPfrwxSgW7ubBbXCkWyRWYf6r3/XvyimlDwOBcsjorhqIIJym3iy
	 3qVYZdNiaBtTuMye8A01NAyKCNIG22/1jOGQ/5XlT8b4cEUvMN1OVFZ6gEqOXvfQyq
	 QhhddX3rAqbVAF1BeZOyCSimEMAKTrruanDpO6FqBssnnglE1ETVxeCepmROlRRoFa
	 CiAb8tCYvQFcJF43IkWESoTI8qTZTr6bAZ5XdhEBXEaKl5ncaEGT29djSaJQWBjQaX
	 atoxMXKJ6eAAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16AC4401CC;
	Sun, 18 Feb 2024 07:33:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 229381BF83C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 07:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 097544049C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 07:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4cf3LSaTfWyc for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 07:33:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0898401CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0898401CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0898401CC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 07:33:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="12881511"
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; d="scan'208";a="12881511"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2024 23:33:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="4507007"
Received: from ccdpc698.iil.intel.com ([143.185.162.247])
 by orviesa007.jf.intel.com with ESMTP; 17 Feb 2024 23:33:11 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	jesse.brandeburg@intel.com
Date: Sun, 18 Feb 2024 09:42:21 +0200
Message-Id: <20240218074221.108927-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708241594; x=1739777594;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=azUJ7rZdGyI7TutcR8QuDn6RTBQA70zUaqzaBCBt204=;
 b=lgAXb2FrvEGFRmvUY2eAl7aAWgXA9Tc6jip3Pl6jQVrvfDFfkTtrXgzq
 OzMOQqgHwgtZnxw+BIl3yabSCJmzSo+mSonEVWO5L5J//Cc9QYNXChy04
 GUaoN8oA7DVs8D60j4AJdWRksN3Ry3+in9b7glsfmKnxbkXqvv8uGX+QU
 4qFuOJcOVwSFmZLgalWr6nhFQzWnmyVNS7Uj2PLHJ4W+fTGaym5bvuR8X
 CjM1sgOu7fC+7/88aa5J75teFLqD+deAV6R2MbGo3qVrt5dPHjg11Pz+3
 MhjP6wqrp1irqykpCQIX4Frkn5FR+M9wTFI3lX+ms20Y6wd8CeplDpNKT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lgAXb2Fr
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] intel: legacy: Partially
 revert of field get conversion
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactoring of the field gets conversion introduced a regression in the
legacy Wake On Lan from a magic packet with i219 devices. Rx address
copied not correctly from MAC to PHY with FIELD_GET macro.

Fixes: b9a452545075 ("intel: legacy: field get conversion")
Suggested-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index a2788fd5f8bb..bdf32222344c 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -2559,7 +2559,8 @@ void e1000_copy_rx_addrs_to_phy_ich8lan(struct e1000_hw *hw)
 		hw->phy.ops.write_reg_page(hw, BM_RAR_H(i),
 					   (u16)(mac_reg & 0xFFFF));
 		hw->phy.ops.write_reg_page(hw, BM_RAR_CTRL(i),
-					   FIELD_GET(E1000_RAH_AV, mac_reg));
+					   (u16)((mac_reg & E1000_RAH_AV)
+					   >> 16));
 	}
 
 	e1000_disable_phy_wakeup_reg_access_bm(hw, &phy_reg);
-- 
2.30.2

