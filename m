Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E84B8AB235
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 17:44:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75FC34175A;
	Fri, 19 Apr 2024 15:44:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2gZfQnKf7vJ; Fri, 19 Apr 2024 15:44:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CF4E4179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713541489;
	bh=wrGZQ2wnJPb/Ca6azawq2sBsoo1HHUc3iCK8FhFNw2U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xinE5YQPNb+PX0d5qH2CV8rU+JbJeKrgKk4ujZE8uzb1RbOkUfCKsJVLzruZhC9y0
	 go58gg5tUDP1f8kgWDr4SVztbze/ANZ99RYMpKogSiU3d7I8gpfpL35wu3rIInXROz
	 bbva0jOY9H3d8njaHkYcvN9XenPub7MAkDtpiDBCrqunjxVCezGU5Kq5fIplsCt7Hj
	 ll/RJcHU8EHD6ZUH4lyD8KHR5E0I0RHsJXJVuW+1Kxf7FBSMPfb4oXoPNHsXs4Ehi7
	 fvqozKEJ6441W2lpoP5JZdDwD49aePJ8oOqPkGz4xJLtil8PLWjFpGQVMfvPftDH43
	 JQu0okeB2gSxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CF4E4179B;
	Fri, 19 Apr 2024 15:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C0C71BF59D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 15:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82D3A821D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 15:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 87Ws6_izrU5r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 15:44:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D3A2C821D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3A2C821D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3A2C821D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 15:44:46 +0000 (UTC)
X-CSE-ConnectionGUID: jToZjHbJTZuU8rS2E5TQLw==
X-CSE-MsgGUID: qVUExfKtTXuw7ilyVQpvuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="31629922"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="31629922"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 08:44:45 -0700
X-CSE-ConnectionGUID: dzOtSHshQ9ixHU2iR58kZQ==
X-CSE-MsgGUID: OU4rZZTXQAyLRNLozvPKEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="60810356"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa001.jf.intel.com with ESMTP; 19 Apr 2024 08:44:45 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 11:35:23 -0400
Message-ID: <20240419153523.1617216-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713541487; x=1745077487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AE+Qs3YqaNXXyGQKhCyy1w0xy0/FDbfi7mTCPac5czI=;
 b=c3ytz664twa9ET8wFfTbDvHwX7eDJxLeUqz9Qzf1SRnX+GEdvoIugnvi
 +n41I6GURb05TV6JUP08jSFLrPCf4zP4h111r1VidiRTXS0EZtO6P5bYf
 on8jabMPp/yUi7NOfBvQ9J6SH/KC/dJQ1jYzf0qgYbtPbrafP6P6T/JUL
 ICklkCMFNPZVXZx4IsOcftytXYN2KrfryAHeK8B9MBpMlabtIEhN5uj41
 gcEUk+IshDmqDSY2SqNtuuis0WrD0S6GwZ/mPxYqbIaDAnIc5r0wA1FIW
 OzEj61izqBTPMLpG9fhtpdOSu5XmOW7w6ge9CaIrF3M0GQExk4Q12+OJv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c3ytz664
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G PHY types to
 link speed mapping
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 24407a01e57c ("ice: Add 200G speed/phy type use") added support
for 200G PHY speeds, but did not include the mapping of 200G PHY types
to link speed. As a result the driver is returning UNKNOWN link speed
when setting 200G ethtool advertised link modes.

To fix this add 200G PHY types to link speed mapping to
ice_get_link_speed_based_on_phy_type().

Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d9f6cc71d900..e7d28432ba03 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3135,6 +3135,16 @@ ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
 	case ICE_PHY_TYPE_HIGH_100G_AUI2:
 		speed_phy_type_high = ICE_AQ_LINK_SPEED_100GB;
 		break;
+	case ICE_PHY_TYPE_HIGH_200G_CR4_PAM4:
+	case ICE_PHY_TYPE_HIGH_200G_SR4:
+	case ICE_PHY_TYPE_HIGH_200G_FR4:
+	case ICE_PHY_TYPE_HIGH_200G_LR4:
+	case ICE_PHY_TYPE_HIGH_200G_DR4:
+	case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
+	case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
+	case ICE_PHY_TYPE_HIGH_200G_AUI4:
+		speed_phy_type_high = ICE_AQ_LINK_SPEED_200GB;
+		break;
 	default:
 		speed_phy_type_high = ICE_AQ_LINK_SPEED_UNKNOWN;
 		break;
-- 
2.41.0

