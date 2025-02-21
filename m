Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C326A3F676
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 14:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 002C781FC4;
	Fri, 21 Feb 2025 13:53:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmu5GwQmWmm9; Fri, 21 Feb 2025 13:53:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 376D681FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740146013;
	bh=xa97NSAj2C3nLiOSt4fAkYGrg13UAiIBZWtxAVJPudQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cDXoWlWUbgVkvJYi0mBxJHqvVHPAupZWG3dMrQBZjZSCImi5ec18eEZDexSF/YqEl
	 cfsoz2/fQcu0EnHIsnxwAfG5/VFKVmqxKcqfd7+a0p9Vr8D4b6zl8WUGbkExLKOX1e
	 0SeNYU+fKvxfHq7zd9aIM4u4vAxDa9HZPqYvHY+W6hSw4jiGo2IS+fvJxr+R0ogOH+
	 Y1OPikYM2KURrdbHigQ8uBriOn2LtRqtmwA2edsS1dF+MYQ/xuyySyrAh8kifr6FQV
	 QT1RPwq2m46NB5OVZ3u8HYzs7SUTY/qHZ4vsbFPZ+ttrrAZsvVvd+cTGv6RtkJNdyB
	 l12S1llC84IxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 376D681FF5;
	Fri, 21 Feb 2025 13:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B5D46B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0EE4581FEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_O38wFYlLHj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 13:53:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53EB481FC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53EB481FC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53EB481FC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:53:30 +0000 (UTC)
X-CSE-ConnectionGUID: GEBr5rHpTSSEfhfJOj+2kg==
X-CSE-MsgGUID: qPtdep2DTbyaI8IMB+SmxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="66329002"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="66329002"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:53:20 -0800
X-CSE-ConnectionGUID: Np+g1ynGReOYo1NG/v908g==
X-CSE-MsgGUID: MT3b49uxQHONawmjxFBjgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="115905473"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.0.65])
 by fmviesa010.fm.intel.com with ESMTP; 21 Feb 2025 05:53:19 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de, andrew@lunn.ch,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 21 Feb 2025 14:53:15 +0100
Message-ID: <20250221135315.5105-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740146010; x=1771682010;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QoZFiFZcge5y8/gZT2+9YlDQ0HWRHX2zKe13LthsFRk=;
 b=I6OpIG0yNkGlEhTg/Kx18/9/vdV10jrbZ8h+Qkt4MTHPsCA+YVcchcEw
 McB1xPnaJCfB8llNKerwHH9atuU0BMrrrNsyuEBoowc41OxLk9Lp3etpd
 G1WPJNS57pe+uUvr1zu0vWvTPz4EH6E5wsFJvTz7welNxleADCT+GoVOn
 KVKPUSs8r3QC1h7rabRBbIyYaszpsmwFXSErBAUIZ6R447tsVGM4VAFlY
 NTWgjpNGuCpV/LgeG9eoHgfZNxRzOckwtQmyT7/IYBZZWHw6Ko7xi5qzO
 UKTaWBn+siX0pmTHEJXOBTu8j7zndNHA52vqNqjlYuMBaPuV9DlZ/eZWb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I6OpIG0y
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix media type
 detection for E610 device
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

The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
device") introduced incorrect media type detection for E610 device. It
reproduces when advertised speed is modified after driver reload. Clear
the previous outdated PHY type high value.

Reproduction steps:
modprobe ixgbe
ethtool -s eth0 advertise 0x1000000000000
rmmod ixgbe
modprobe ixgbe
ethtool -s eth0 advertise 0x1000000000000

Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v1 -> v2
  More commit message details and reproduction steps added
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668..0dfefd2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1453,9 +1453,11 @@ enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
 			hw->link.link_info.phy_type_low = 0;
 		} else {
 			highest_bit = fls64(le64_to_cpu(pcaps.phy_type_low));
-			if (highest_bit)
+			if (highest_bit) {
 				hw->link.link_info.phy_type_low =
 					BIT_ULL(highest_bit - 1);
+				hw->link.link_info.phy_type_high = 0;
+			}
 		}
 	}
 
-- 
2.43.0

