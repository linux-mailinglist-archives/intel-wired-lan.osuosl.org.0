Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E273A22B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 15:49:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D4A883C11;
	Thu, 22 Jun 2023 13:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D4A883C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687441753;
	bh=Fqxzs4LrL/9h+VM50X805ZxkPtzfjK3zmMEutUjQk98=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cUaRUGIJkM0/pQU1pcC+qxnERt5JaolG1XCmvx3foRyZEpWpEqi6n7T9gf9Mclq2x
	 WmBTp8uwFyVR1kbd/r5/fl/t2/GTI+4VizDm+Afz/nDUHmIERcoKzr633NAVV6sGKz
	 S+AOZ2zAf2sIM4Rhi0q32bmBFXX7g+qra4KwYLYkg1mBxDXLC0W4/lY3Vv50PHrHMO
	 1iwl5cLYcrJW1eUQMexL1QKQB82k69YR83uWB7q0c9OfeWEi4Sab1uzrufmm4NtM9Q
	 XJXSgvNTARb72ezUeGN9vEeFlGu7At6umdwq91PbmkZf9Bbdxd8qUdtHsIEbiBujOg
	 KYDcfq904QGew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLl9OdPWcF3Y; Thu, 22 Jun 2023 13:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B11583BBE;
	Thu, 22 Jun 2023 13:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B11583BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6BA41BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 416AE60AAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 416AE60AAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFwiD4n8qjuV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92CBD60BE7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92CBD60BE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="390234097"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="390234097"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804791814"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="804791814"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2023 06:48:59 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6C3FC34947;
 Thu, 22 Jun 2023 14:48:58 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Jun 2023 15:35:13 +0200
Message-Id: <20230622133513.28551-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
References: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687441740; x=1718977740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2U8ba/PFFG8NcXM4ie8ydtVJGrdtthQJRmmJQI+Koik=;
 b=VhAS9XjcorueQPPqjXSMQOyYT/XziI6sAVpm3L7Rpc03Bz0AZBSYBjv0
 VHYmRzFPpnOvcL+CtGuqbAc0TFjYsXMF8GLjxfwZo4L0CPFO7Gu4qWeq7
 y8Y+dCRwuMoEQ9RC5+n8xz174b6ULgpjQIdbRrw9gSapfZio7aLkC+SFa
 QV2+VnpqhIcqkM6mlCQbmm0woSAs9DySGvISsX/U7+Lt4k15HMzZARdaR
 GYQN8uuKmllfDwEJzQ1EGz+GEASL6HFVQ7HXL+iyfuzMffFDwZUeUqsb1
 fAfDrWKoEkGXB4oYX3z/3iBSmqdH6YsDrvejEpUSjQLJNL2OiLQgzxus1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VhAS9Xjc
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: Rename enum
 ice_pkt_flags values
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

enum ice_pkt_flags contains values such as ICE_PKT_FLAGS_VLAN and
ICE_PKT_FLAGS_TUNNEL, but actually the flags words which they refer to
contain a range of unrelated values - e.g. word 0 (ICE_PKT_FLAGS_VLAN)
contains fields such as from_network and ucast, which have nothing to do
with VLAN. Rename each enum value to ICE_PKT_FLAGS_MDID<number>, so it's
clear in which flags word does some value reside.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_protocol_type.h | 8 ++++----
 drivers/net/ethernet/intel/ice/ice_switch.c        | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 82491f6af6d0..755a9c55267c 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -404,10 +404,10 @@ enum ice_hw_metadata_offset {
 };
 
 enum ice_pkt_flags {
-	ICE_PKT_FLAGS_VLAN = 0,
-	ICE_PKT_FLAGS_TUNNEL = 1,
-	ICE_PKT_FLAGS_TCP = 2,
-	ICE_PKT_FLAGS_ERROR = 3,
+	ICE_PKT_FLAGS_MDID20 = 0,
+	ICE_PKT_FLAGS_MDID21 = 1,
+	ICE_PKT_FLAGS_MDID22 = 2,
+	ICE_PKT_FLAGS_MDID23 = 3,
 };
 
 struct ice_hw_metadata {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 28fb175f0fe4..f962d3350332 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6143,21 +6143,21 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 void ice_rule_add_tunnel_metadata(struct ice_adv_lkup_elem *lkup)
 {
 	lkup->type = ICE_HW_METADATA;
-	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_TUNNEL] |=
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_MDID21] |=
 		cpu_to_be16(ICE_PKT_TUNNEL_MASK);
 }
 
 void ice_rule_add_direction_metadata(struct ice_adv_lkup_elem *lkup)
 {
 	lkup->type = ICE_HW_METADATA;
-	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_VLAN] |=
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_MDID20] |=
 		cpu_to_be16(ICE_PKT_FROM_NETWORK);
 }
 
 void ice_rule_add_vlan_metadata(struct ice_adv_lkup_elem *lkup)
 {
 	lkup->type = ICE_HW_METADATA;
-	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_VLAN] |=
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_MDID20] |=
 		cpu_to_be16(ICE_PKT_VLAN_MASK);
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
