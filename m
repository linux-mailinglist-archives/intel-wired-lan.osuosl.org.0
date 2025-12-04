Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 025B6CA329B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 11:12:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A92E406DE;
	Thu,  4 Dec 2025 10:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z8IxgvEnOs6S; Thu,  4 Dec 2025 10:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 787F4406E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764843123;
	bh=JuqMZRxhhEZrlClKbwMxKdyzWbAbSC5WYI/wMYQCvI0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jYO24aMaoW6c9R4kkc6xn9qnhj0DuRAVvrDUNy9ci7/Mo6tDpyGUEy/67zf8gC4Iw
	 omDuVxuvO/WR+wM33nJyvmy68aV622MSpiAHebkQGk5i4eq86sdSCUVAnNFj1LvEXI
	 tbawTaBPUaegAYG2/fp53y5iaawcYhf8w6ADVdGM/IdoafEDv4cdRxRBGBJduTpGO0
	 hi8U6JmNRAE76kyTrtx5Bg+zZIBykxB7GGtRnP+wIrg4NL9uxqeipzsrDOm0omiEJ0
	 406qcYThVEm4Z497qvBAX3pgP1cV4UkGkl8ZqNdIyvtsVFd6QEr7G1ZGhCzgOm7ToQ
	 NVGlNcKAXNfXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 787F4406E1;
	Thu,  4 Dec 2025 10:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A871BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E27C60AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5M95pgplJPB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 10:12:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C56760851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C56760851
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C56760851
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:12:00 +0000 (UTC)
X-CSE-ConnectionGUID: j46r8197R9qXuxqwtlLuhw==
X-CSE-MsgGUID: LX7l8yUtSb6Ri6tlB2m1Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66744380"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66744380"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:12:00 -0800
X-CSE-ConnectionGUID: eTBcSIe6Q7yNpiqqYezRxA==
X-CSE-MsgGUID: lzwrxaFmS7OxcM0Z/aOQ1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="232274531"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa001.jf.intel.com with ESMTP; 04 Dec 2025 02:11:59 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Thu,  4 Dec 2025 10:53:23 +0100
Message-Id: <20251204095323.149902-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764843121; x=1796379121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zJENULdxlhI8gfPr4TEwrhirO/FILicaVKggLKcIUFM=;
 b=goOa0kGNJJbgr6J5udjP1K/dAI8nwiyCkb0IbG7Fan50GqeWbGZb8T4S
 BUD+irkKQR3Ypyz+XcZSGQWqKchuUWy/eTt6i+s7NqIBtoQnvueHAXujG
 9qt4qn/25VHAG2JlWWyZvheC7EncOg8FS9TVvSA7GNH+xVUqAzb6TdGKJ
 o8phB/SLp2hpUI4ts2Nsvcf95rfCb0AbVG8Stmk1lZ9IbZuaLgbHzLY/j
 H1jAkc7D2YPyUfSisHKWRulfQlT2t/+8Q6BvnEqtI6HN5VnprtEtOs8YD
 0UoZK8XG4RV4geHjs0Z3rZztwWPIuks4yCylSeAO4ku/ffwXqLs5SfmaR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=goOa0kGN
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbevf: fix link setup issue
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

It may happen that VF spawned for E610 adapter has problem with setting
link up. This happens when ixgbevf supporting mailbox API 1.6 coopearates
with PF driver which doesn't support this version of API, and hence
doesn't support new approach for getting PF link data.

In that case VF asks PF to provide link data but as PF doesn't support
it, returns -EOPNOTSUPP what leads to early bail from link configuration
sequence.

Avoid such situation by using legacy VFLINKS approach whenever negotiated
API version is less than 1.6.

Fixes: 53f0eb62b4d2 ("ixgbevf: fix getting link speed data for E610 devices")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/vf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 29c5ce967938..8af88f615776 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -846,7 +846,8 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
 	if (!mac->get_link_status)
 		goto out;
 
-	if (hw->mac.type == ixgbe_mac_e610_vf) {
+	if (hw->mac.type == ixgbe_mac_e610_vf &&
+	    hw->api_version >= ixgbe_mbox_api_16) {
 		ret_val = ixgbevf_get_pf_link_state(hw, speed, link_up);
 		if (ret_val)
 			goto out;
-- 
2.31.1

