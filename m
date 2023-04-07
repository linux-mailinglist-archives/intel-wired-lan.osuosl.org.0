Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDD16DB139
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 19:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3BE240A9B;
	Fri,  7 Apr 2023 17:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3BE240A9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680887480;
	bh=xLlKJO0pccuL6uqBwk8WHjS2UlsQAlp7uITZvIY9ytI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2/eJC8ZnJOwLeONHzflpIeA3D1w1InrQfkV9O9ci/7hUTP39OrEWs0SU9wRESJ3OG
	 PpBWPpBneHvL2lUctxcRQk3b8wDDMHMazkvNA+fTcpa5lHi0aEpKhT0CXTONpRnGI8
	 aK8p9kCR/K6yJ0fq4Ep3C5LZippIvnA88Dmrp3o3391O6FlM73Rmr/EjX4KNyw3JiR
	 /87Rph5m0NEMIWVVFaiyyn8JFOe5GWp/MKCzBcxkNeu/OTtQ2wf8tE+AA9+e0xQMdv
	 pVATUMv/5Z/ayEQIYhwneuTUhRajq0V+Yr3k4atWXt7i4xjAh23MVa3YZh6tADZ29v
	 8hVUHuxpBloaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZMUYIzsG2I3c; Fri,  7 Apr 2023 17:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4F014053C;
	Fri,  7 Apr 2023 17:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4F014053C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05F0C1C2E60
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3502613E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3502613E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMnAcqm5tJFL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 17:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C263613E0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C263613E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="344805721"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="344805721"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 10:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="687569942"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="687569942"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2023 10:11:03 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Apr 2023 18:52:17 +0200
Message-Id: <20230407165219.2737504-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680887466; x=1712423466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PD3zA/NIfv4FHUUXftLod4O4JmN2d7bBe425C8L/d9Y=;
 b=IGvqqv3p2+/Qq81lgqZ5ZEnjMW8lvHU8dqYl4VzA5KCzEWGmINkxzlGD
 Iz9Lk5i5o84DiMwpkD1O4rbBiSx1YcO7BzYevzmazAX8kazwie1bF6fp5
 zhjnXh6Yp3gCeIFz6lIv7kxJYzerPUeEX2ncjFtQyV1CHxLKT41Xu7UwQ
 n9K/UUQ4VYyuuc46TLUMu1QwutoU+ZymxHtJ6xE1NL7BI6dJdO0Iz9myu
 cM+vUIubBc19KtWIucOo8LynqgXItTzuUZwP+p2X8TBSAcLWF9JAkQq63
 kdO4bGawF1fVhEo0Y0l6AKj0Y3jvb2T9mLsZWCTkc0gAAIRnwANFU1ELS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IGvqqv3p
Subject: [Intel-wired-lan] [PATCH net-next v4 3/5] ice: specify field names
 in ice_prot_ext init
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Anonymous initializers are now discouraged. Define ICE_PROTCOL_ENTRY
macro to rewrite anonymous initializers to named one. No functional
changes here.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 51 +++++++++++----------
 1 file changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index e806dfe69b90..baa61a2b82f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4540,6 +4540,11 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	return status;
 }
 
+#define ICE_PROTOCOL_ENTRY(id, ...) {		\
+	.prot_type	= id,			\
+	.offs		= {__VA_ARGS__},	\
+}
+
 /* This is mapping table entry that maps every word within a given protocol
  * structure to the real byte offset as per the specification of that
  * protocol header.
@@ -4550,29 +4555,29 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
  * structure is added to that union.
  */
 static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
-	{ ICE_MAC_OFOS,		{ 0, 2, 4, 6, 8, 10, 12 } },
-	{ ICE_MAC_IL,		{ 0, 2, 4, 6, 8, 10, 12 } },
-	{ ICE_ETYPE_OL,		{ 0 } },
-	{ ICE_ETYPE_IL,		{ 0 } },
-	{ ICE_VLAN_OFOS,	{ 2, 0 } },
-	{ ICE_IPV4_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
-	{ ICE_IPV4_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
-	{ ICE_IPV6_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
-				 26, 28, 30, 32, 34, 36, 38 } },
-	{ ICE_IPV6_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
-				 26, 28, 30, 32, 34, 36, 38 } },
-	{ ICE_TCP_IL,		{ 0, 2 } },
-	{ ICE_UDP_OF,		{ 0, 2 } },
-	{ ICE_UDP_ILOS,		{ 0, 2 } },
-	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
-	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
-	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
-	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
-	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
-	{ ICE_PPPOE,		{ 0, 2, 4, 6 } },
-	{ ICE_L2TPV3,		{ 0, 2, 4, 6, 8, 10 } },
-	{ ICE_VLAN_EX,          { 2, 0 } },
-	{ ICE_VLAN_IN,          { 2, 0 } },
+	ICE_PROTOCOL_ENTRY(ICE_MAC_OFOS, 0, 2, 4, 6, 8, 10, 12),
+	ICE_PROTOCOL_ENTRY(ICE_MAC_IL, 0, 2, 4, 6, 8, 10, 12),
+	ICE_PROTOCOL_ENTRY(ICE_ETYPE_OL, 0),
+	ICE_PROTOCOL_ENTRY(ICE_ETYPE_IL, 0),
+	ICE_PROTOCOL_ENTRY(ICE_VLAN_OFOS, 2, 0),
+	ICE_PROTOCOL_ENTRY(ICE_IPV4_OFOS, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18),
+	ICE_PROTOCOL_ENTRY(ICE_IPV4_IL,	0, 2, 4, 6, 8, 10, 12, 14, 16, 18),
+	ICE_PROTOCOL_ENTRY(ICE_IPV6_OFOS, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18,
+			   20, 22, 24, 26, 28, 30, 32, 34, 36, 38),
+	ICE_PROTOCOL_ENTRY(ICE_IPV6_IL, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20,
+			   22, 24, 26, 28, 30, 32, 34, 36, 38),
+	ICE_PROTOCOL_ENTRY(ICE_TCP_IL, 0, 2),
+	ICE_PROTOCOL_ENTRY(ICE_UDP_OF, 0, 2),
+	ICE_PROTOCOL_ENTRY(ICE_UDP_ILOS, 0, 2),
+	ICE_PROTOCOL_ENTRY(ICE_VXLAN, 8, 10, 12, 14),
+	ICE_PROTOCOL_ENTRY(ICE_GENEVE, 8, 10, 12, 14),
+	ICE_PROTOCOL_ENTRY(ICE_NVGRE, 0, 2, 4, 6),
+	ICE_PROTOCOL_ENTRY(ICE_GTP, 8, 10, 12, 14, 16, 18, 20, 22),
+	ICE_PROTOCOL_ENTRY(ICE_GTP_NO_PAY, 8, 10, 12, 14),
+	ICE_PROTOCOL_ENTRY(ICE_PPPOE, 0, 2, 4, 6),
+	ICE_PROTOCOL_ENTRY(ICE_L2TPV3, 0, 2, 4, 6, 8, 10),
+	ICE_PROTOCOL_ENTRY(ICE_VLAN_EX, 2, 0),
+	ICE_PROTOCOL_ENTRY(ICE_VLAN_IN, 2, 0),
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
