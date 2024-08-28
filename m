Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5631E963333
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 793AF60E36;
	Wed, 28 Aug 2024 20:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rviqd4Egqylu; Wed, 28 Aug 2024 20:57:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C407160DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878663;
	bh=u19/4neSXjdJK1gyIyJiBzEjcPc+qoiWty3+60AIEc0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VuzRg7DWu2LuzzTG1sj3dCgpxtx9dJ1jZgOAzsjowUCukni8nd3SmheL56Y9I1AQr
	 v88aL+Xp0hH07Ei9S6jI/Kph1rFQn8gO7z5fZJGl9jKdo34WitijyoClwmdqhBAlzr
	 z8RII1S26vuKweEf6dpXbDU/lIlpndC8CJqnR6NODr8CHtma5UdVMUlgUSp08Q+Hjj
	 48tf7w2mzL9/FESum7iOJgMjXR5agEDVT0bzEJAqq1P3a3LJQbUvBmNb3Tx4byPiCI
	 cSjVo0w3ihswztdxW2109ORwLWFNo7oV40uw3CA5M+X4ZI74qNLbdSmqhIueBJ43Qy
	 yUpS5a/szs03w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C407160DEF;
	Wed, 28 Aug 2024 20:57:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EE5D1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5134E60DEF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExWHcV6b4pVa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A55D860B1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A55D860B1E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A55D860B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: jfbIuEAZQqSXWEHyQNdBOw==
X-CSE-MsgGUID: D250VfntR2K1UFEM9IqD5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592611"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592611"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: d7/ATIAZTXW2LjZm7CWq1w==
X-CSE-MsgGUID: yVuYwNKwS2KYeqVJfOMbug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049983"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:25 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-9-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878652; x=1756414652;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=rvmC66yA+I0aGyEit1QKoFYvswf4szFpjtBzQkKHhd4=;
 b=IBkxHGOc4iO3e5ClHYKX+AQTsmiv7898y4RydpV1K7WWMSzPGFsSb46g
 lNOddmPxcsm1a0uxwl8cfnZX+JRexj2AzNUe/dtvjxk3/nzjs5PgfqG0M
 oDlszR7xGi4jT1MGDH/rIdv0oc1IleA8GXeb5EzQD4VgDG5Pgrfgb+vW5
 UZpO9it2cz5Ec2RFeG+m1oF8Tq1f9yij8huxA4asMTzGpuvH/mpCF02s9
 G5GMTo26bFJjQPsPWq4XRd9rswB3SGy6lQfAnEivu0JXK9isXSQvp2KqA
 Skrz1lJRx2O8k+ijZ3BeD+mwfIXrPgrX5pz/NBCDq86Nket4vIi97mxDL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IBkxHGOc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 09/13] ice: remove int_q_state
 from ice_tlan_ctx
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The int_q_state field of the ice_tlan_ctx structure represents the internal
queue state. However, we never actually need to assign this or read this
during normal operation. In fact, trying to unpack it would not be possible
as it is larger than a u64. Remove this field from the ice_tlan_ctx
structure, and remove its packing field from the ice_tlan_ctx_info array.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 1 -
 drivers/net/ethernet/intel/ice/ice_common.c    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 611577ebc29d..0e8ed8c226e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -590,7 +590,6 @@ struct ice_tlan_ctx {
 	u8 drop_ena;
 	u8 cache_prof_idx;
 	u8 pkt_shaper_prof_idx;
-	u8 int_q_state;	/* width not needed - internal - DO NOT WRITE!!! */
 };
 
 #endif /* _ICE_LAN_TX_RX_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..c4b24ba36b5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1467,7 +1467,6 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
 	ICE_CTX_STORE(ice_tlan_ctx, drop_ena,			1,	165),
 	ICE_CTX_STORE(ice_tlan_ctx, cache_prof_idx,		2,	166),
 	ICE_CTX_STORE(ice_tlan_ctx, pkt_shaper_prof_idx,	3,	168),
-	ICE_CTX_STORE(ice_tlan_ctx, int_q_state,		122,	171),
 	{ 0 }
 };
 

-- 
2.46.0.124.g2dc1a81c8933

