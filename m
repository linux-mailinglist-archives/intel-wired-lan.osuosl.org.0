Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D851C757D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFBE36F4C6;
	Thu, 20 Nov 2025 16:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ls6UK0cyYTFv; Thu, 20 Nov 2025 16:57:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 682556F4C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657869;
	bh=cvISy07VIA/AKkC9M8n4y95kRPVksg4kGFuj1zstQHo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kSjhdxkfTJcxEnYtapwF32/CP62sb3TTMoEaq39AEREnJSPjTkK+GleM1pXym0uXH
	 npzkLAQyEv8iBywoRIIgO740EOYy6eKbQtA+mox9Sfn8MuL6s5MpEgv27vCWQ7yAmF
	 9ehRbcXFKls6ZJVBbq8/4g6IHxIMYM3DZuIOZPn7KbvBD4nAqfE7ibdN4DGVH6elq6
	 l8F7GCc0camHNd37m1T1pqMTDo0rW3ibcpByN7NUSl7D/4/43Hfr/NoF5VkNPAiyyf
	 E/aqIzwryh1zrkzxNmCqp0CYMr2PeFRWNP3EwOC1lkFjJgjS2ZXN5bIGThwgTLgPgu
	 BrA02v1LLni1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 682556F4C9;
	Thu, 20 Nov 2025 16:57:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6765A37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E80F6125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pe0l7XIQp2gt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A98CE61073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A98CE61073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A98CE61073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:18 +0000 (UTC)
X-CSE-ConnectionGUID: VeYDcR2+SjqhO7qXAJgSFQ==
X-CSE-MsgGUID: IcDiHdAvQ9yDPbd1nGsx5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599285"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599285"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:18 -0800
X-CSE-ConnectionGUID: Fq2BGUNARu2f/f/s3Bq9EA==
X-CSE-MsgGUID: gSbIR6DNQG+Z1/wDh9w5+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531281"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:17 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:06 +0100
Message-ID: <20251120162813.37942-2-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120162813.37942-1-jakub.slepecki@intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656098; x=1795192098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fq3t0sobCfSkZ8rkAOl15NszCcSbPhZftbWaCIEfhF0=;
 b=QbMIkM7xkH8R9D0SM7zo/C/9bsgDtP3LUJKiT3fGHSkyzTyYBEQWMQSI
 ZvpH5+LIUdABn01gmECZRxiWKfA9FRaaUa4iLifCptsdr+OeUlI+q3ZUK
 lBqe9xgzfGijlmFQroa07WSbIxM0MQfhv1jHj4Gc+awCVhGr7PezpZGqo
 kJjEJkQM5EhnF2qSRUONul6AxHVhU6eQ3Hnb9NA+niyng+B++HN1nSFdX
 PQwfk9oz4xsycu4GAN3jv7xsrLPo8Rt+jut/BfmWGbPnDmAroTXS0id2J
 2301RabrEzbtq8n+tsbNfxNKStWtS28p4lbF7Js29zntMv4bt5Ftvv/Yk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QbMIkM7x
Subject: [Intel-wired-lan] [PATCH iwl-next 1/8] ice: in dvm,
 use outer VLAN in MAC, VLAN lookup
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

In double VLAN mode (DVM), outer VLAN is located a word earlier in
the field vector compared to the single VLAN mode.  We already modify
ICE_SW_LKUP_VLAN to use it but ICE_SW_LKUP_MAC_VLAN was left untouched,
causing the lookup to match any packet with one or no layer of Dot1q.
This change enables to fix cross-vlan loopback traffic using MAC,VLAN
lookups.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vlan_mode.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
index fb526cb84776..68a7b05de44e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
@@ -198,6 +198,7 @@ static bool ice_is_dvm_supported(struct ice_hw *hw)
 #define ICE_SW_LKUP_VLAN_LOC_LKUP_IDX			1
 #define ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX		2
 #define ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX		2
+#define ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX		4
 #define ICE_PKT_FLAGS_0_TO_15_FV_IDX			1
 static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
 	{
@@ -234,6 +235,17 @@ static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
 		.mask_valid = false,  /* use pre-existing mask */
 		.lkup_idx = ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX,
 	},
+	{
+		/* Similarly to ICE_SW_LKUP_VLAN, change to outer/single VLAN in
+		 * DVM
+		 */
+		.rid = ICE_SW_LKUP_MAC_VLAN,
+		.fv_idx = ICE_EXTERNAL_VLAN_ID_FV_IDX,
+		.ignore_valid = true,
+		.mask = 0,
+		.mask_valid = false,
+		.lkup_idx = ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX,
+	},
 };
 
 /**
-- 
2.43.0

