Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC24A270EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 13:05:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42B938119B;
	Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zBPwqclvgzKY; Tue,  4 Feb 2025 12:05:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71EC3811A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738670752;
	bh=9hqGBicGNFJtRXXK28CdCokgL5Tm4Xkzx9CZ2hkpr2c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QiO00eIFluKRt/zftasFuxTMBDI1D0f2eg0WFmUYCzW+tlRyY+0DFDNBg9ULShHxU
	 UwEzhu7+N0yxaKZl9hiScKiJaHNyYh24+aFVpwauS5e9yA7l73jJ5IyM+tYY1ym+V6
	 AvPp+UuEcRNdUA7b2cSsrtKMaSVMkRE1kmhsvEBR3TKqa98Ht/wGcfIwxE/GryWVFz
	 VItep/G6PRsbqwf12+p94tQiE88AX32UxXiWg9JaYTKmvs87F6zwRWRB5SOAt8wInT
	 FhwBP70Ob2XbUkxu8/w+OLv18/w+NU6I1vL12OhMc6ALmxQRXqAo3PQ/XX+KEPcegz
	 TZeU9GaTCvmpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71EC3811A5;
	Tue,  4 Feb 2025 12:05:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1359712F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02F1F60071
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ueqGYNovtEak for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 12:05:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25167607BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25167607BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25167607BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:49 +0000 (UTC)
X-CSE-ConnectionGUID: 5qrGfUeXTCG5NXJZU5mAmw==
X-CSE-MsgGUID: ZkRudDCKTtqYeTprLOWV3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38424801"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38424801"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 04:05:49 -0800
X-CSE-ConnectionGUID: y/ziNlRhRFW6OLQaIDoGBw==
X-CSE-MsgGUID: +NvJNivaQvuK8yuad4IN2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147783219"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Feb 2025 04:05:45 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8D37A32CA9;
 Tue,  4 Feb 2025 12:05:44 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Tue,  4 Feb 2025 12:50:51 +0100
Message-ID: <20250204115111.1652453-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204115111.1652453-1-larysa.zaremba@intel.com>
References: <20250204115111.1652453-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738670749; x=1770206749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M2eCGgxLh5c6cE335IWn+xf91G0/3FE3wsl1N+36ZVc=;
 b=Zn2/5zhNRulESdCSWLPxa16skCArJOGlUXA+r00aBRx1QpZ1wZaLiLHB
 mSeOgwFyp+BqGNZGEajI6IbQ1Q76LoWxLsG7+6EGCl0OM0NObY4qDXPTl
 L0vhcMMyW9dl1lfPwXh+Dd8dWckva4krA9s7e4GXUH7nVIcMH2N41NVYB
 smaGdSM7BOuDtRFKUFfu3zRAzZOU2/wkzPEqhGcTP+yydexV9W4xOTf62
 NKwEmjTmyrcN08Eqm8LTzy/FXl+IkwjknRbRZbzi2jJBSfPO8lDBLFggo
 e7GhORXFGx8pCOasQ57XEmCPDK4/p0tQ5qbmRM+W3g6IM+LOTIdcOIXLw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zn2/5zhN
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/6] ice: fix check for
 existing switch rule
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

From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>

In case the rule already exists and another VSI wants to subscribe to it
new VSI list is being created and both VSIs are moved to it.
Currently, the check for already existing VSI with the same rule is done
based on fdw_id.hw_vsi_id, which applies only to LOOKUP_RX flag.
Change it to vsi_handle. This is software VSI ID, but it can be applied
here, because vsi_map itself is also based on it.

Additionally change return status in case the VSI already exists in the
VSI map to "Already exists". Such case should be handled by the caller.

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 4a91e0aaf0a5..9d9a7edd3618 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3146,7 +3146,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 		u16 vsi_handle_arr[2];
 
 		/* A rule already exists with the new VSI being added */
-		if (cur_fltr->fwd_id.hw_vsi_id == new_fltr->fwd_id.hw_vsi_id)
+		if (cur_fltr->vsi_handle == new_fltr->vsi_handle)
 			return -EEXIST;
 
 		vsi_handle_arr[0] = cur_fltr->vsi_handle;
@@ -5978,7 +5978,7 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
-			return 0;
+			return -EEXIST;
 
 		/* Update the previously created VSI list set with
 		 * the new VSI ID passed in
-- 
2.43.0

