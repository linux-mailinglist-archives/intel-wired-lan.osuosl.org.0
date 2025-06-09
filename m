Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4783DAD2879
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 987D061542;
	Mon,  9 Jun 2025 21:11:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XG1otWXDDnd8; Mon,  9 Jun 2025 21:11:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 110176153C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503473;
	bh=C3nnJ6oQlD2ATaLqTA6oRPsA/tHUx1YHfphzrgtRO4Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZuqlZPrK1vwsenKxXX85P5CKhR99VMPx6k/8Jhiws0KD75gSzVipc4x4S60Y1bbMP
	 f8mx5KonyoEPW4J2p3e/7pmazZ93WEeAVSFELGMwrMgHzRI6uYZy862ufuDO97ER5n
	 I9+QplSY2vRT6BJm9ki/G6rumf/537IxH5aD1PD5VHcBn4NKuSL6DzWMbqJ8yP/R4f
	 9WXra0+dhGYuC4bdH7fp7fEi78ZbqXLnr49IjAj+t/HgbMHzQ5zrFRKtCZeUenRrBb
	 BhHcdTfQMZo2bP6jUpO/pZWP//NBbw2ABL3FzZ5eGeF/QWxJULZshzbWekXTYQszgv
	 rmBuHS8s7NdMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 110176153C;
	Mon,  9 Jun 2025 21:11:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19CDB1A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 006236153C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJRFLfIQsQkU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 590966151D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 590966151D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 590966151D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: K6dg2f/fTt63AKc6hpP2lA==
X-CSE-MsgGUID: UUyaiua8TsmfCU734N/TmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703103"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703103"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: fjyeOtxIR3GH6IIu4/q8UA==
X-CSE-MsgGUID: BmkTU0DYTOmZE5oM4HEnjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540437"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  9 Jun 2025 15:11:34 +0200
Message-ID: <20250609131141.758051-3-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503470; x=1781039470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z2es/tY4Vv86xArJxnQz8mDZrDjH7nKpNM4N584f5TE=;
 b=Ezhb4P7nmtrHrZqRT9aijD58vzktHxjst3FNgPXYuSuCQ+HzzlQuDpwb
 9cgROu9nJNhizbBxeEAEvQdDwFgexbUL6uD5spWAsliqDUrua3fyoGOFj
 RQ7oQuXApZbH3XXVAxNLndP/inOjP6lXBDbRnLhdf+q7VI+bzPu9P+Xd2
 UzK0KIQHPEqZ1IHdJY2UdpE0D1uhU2vY/W7yD3yEHii4lfUDsE6aU9oMo
 IBWMBPYWCYFLZc/cF+1IIXEsdg6cn6VBExck7AwCtr8XZNhfJM2pcdVKP
 AjvuX32GWwBh4yLT9Ju6lBmdmCkX8VCv+W5t9ruJZUkPz7Z59eNqxCult
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ezhb4P7n
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ice: replace u8 elements
 with bool where
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

appropriate

In preparation for the new LAG functionality implementation, there are
a couple of existing LAG elements of the capabilities struct that should
be bool instead of u8.  Since we are adding a new element to this struct
that should also be a bool, fix the existing LAG u8 in this patch and
eliminate !! operators where possible.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_type.h   | 5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f7fd0a2451de..29a02a0348b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2219,10 +2219,10 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  caps->reset_restrict_support);
 		break;
 	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
-		caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
+		caps->roce_lag = number & ICE_AQC_BIT_ROCEV2_LAG;
 		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %u\n",
 			  prefix, caps->roce_lag);
-		caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
+		caps->sriov_lag = number & ICE_AQC_BIT_SRIOV_LAG;
 		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
 			  prefix, caps->sriov_lag);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 3d68f465952d..e40ea754f91b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -293,8 +293,9 @@ struct ice_hw_common_caps {
 	u8 dcb;
 	u8 ieee_1588;
 	u8 rdma;
-	u8 roce_lag;
-	u8 sriov_lag;
+
+	bool roce_lag;
+	bool sriov_lag;
 
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
-- 
2.49.0

