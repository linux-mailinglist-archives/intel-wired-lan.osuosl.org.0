Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68435A2C0D0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:44:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21700849E3;
	Fri,  7 Feb 2025 10:44:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QNmQHaTSUo8S; Fri,  7 Feb 2025 10:43:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7777481156
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738925039;
	bh=jge2LPuED4/JvlwxqN3gcqcNJq55iArVNvWPZJas7Ng=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=03pB1uhNbNsjAXcvDzeat3A0CvzdiddlUCrgeA7xFQPqzwNO4VVYpiXuswJ45STH5
	 WoPJVqbDdbJnRV8ibrFsgDl9BmeahOwTibCKfXTd443QlEwvCUvUVfY7PLXAPABYeh
	 vhNH2TUY3LVBQx7zyoYbveOoxjQCho6cIp3J0PUdWcrDQdBicNPBLQfV07lHgtUsuj
	 WPasQpI0gx8KzSJimBt4bVdOtrUElsqR+RjRaXv3KLU0/5baKAkF0s5Hq52mqst77q
	 65BuyHP/C0Wa2FGHiHHQrbL+CHRlNLyNSr8S6YZjgwpQmf15bePluyV5yVxQtkNj0g
	 koddP42Gk1y1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7777481156;
	Fri,  7 Feb 2025 10:43:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA008C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 960B440621
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BXBL1J4Uji2e for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:43:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC9D7403FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC9D7403FC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC9D7403FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:55 +0000 (UTC)
X-CSE-ConnectionGUID: npsgia+5ThK9DxlUf32fEw==
X-CSE-MsgGUID: SJY5bwSCTPS2nOY42VLFJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="62039838"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="62039838"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:43:55 -0800
X-CSE-ConnectionGUID: TXUMPOXhRJe7TjHzjln/DA==
X-CSE-MsgGUID: NhDAWSaoRFmSFYHEnbpdGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="116429797"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 07 Feb 2025 02:43:53 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com
Date: Fri,  7 Feb 2025 11:43:43 +0100
Message-ID: <20250207104343.2791001-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738925036; x=1770461036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHIZhOnQWDaCXWMrQoRrd//50wLkIlZSPyndib5X0CA=;
 b=OaI5XUL98TZh0A8+CISjCxQvGIg4FURZZkSCTXN2KQzTm6OO6Y0qa+qf
 tNoOwRvaxTJbRAGPgAG7vxYrrqnP2wkJl88xAiS2e94zmLYbRzdJC6hrE
 26QBkng/iuU8fG3SSKNHR68w+joVgnbTvaHxw5xIGXzmmDUYKpO/wP9q/
 +NLh7jtMVUtOfR2kHIvA9sBsGuFCLMQ9pNBCSW9fKbZXm8t+SVI7yfj6y
 6mS7d4xxysupk7cmnMP9LNzhr4Eg7MgXBXvJq1mjH8Yd4WifWtReXbJ81
 PoUVxeTSCH7wmkpYIXjmMhSZ2MYv2jkop0/YpfZtY0Nn9hp2BA0vCmN8W
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OaI5XUL9
Subject: [Intel-wired-lan] [iwl-next v1 4/4] ixgbe: turn off MDD while
 modifying SRRCTL
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

From: Radoslaw Tyl <radoslawx.tyl@intel.com>

Modifying SRRCTL register can generate MDD event.

Turn MDD off during SRRCTL register write to prevent generating MDD.

Fix RCT in ixgbe_set_rx_drop_en().

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 5c1c067ffb7c..6bb2a0edf2ea 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4100,8 +4100,12 @@ void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 static void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 #endif
 {
-	int i;
 	bool pfc_en = adapter->dcb_cfg.pfc_mode_enable;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int i;
+
+	if (hw->mac.ops.disable_mdd)
+		hw->mac.ops.disable_mdd(hw);
 
 	if (adapter->ixgbe_ieee_pfc)
 		pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
@@ -4123,6 +4127,9 @@ static void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 		for (i = 0; i < adapter->num_rx_queues; i++)
 			ixgbe_disable_rx_drop(adapter, adapter->rx_ring[i]);
 	}
+
+	if (hw->mac.ops.enable_mdd)
+		hw->mac.ops.enable_mdd(hw);
 }
 
 #define IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT 2
-- 
2.42.0

