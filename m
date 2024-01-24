Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A840883B402
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 22:34:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34A8A40A42;
	Wed, 24 Jan 2024 21:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34A8A40A42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706132094;
	bh=cmgIifpNFYKev12UcE1onwLquFJvu0ujMypZAcr1mCY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wM/GYLOG/mXmnNI815+ZPrUuh/vFT43pqypk8KXR+ARwy7kj2zTL9qz2Y3sv/HVSv
	 41FXWfCfPgk8wAvakNX4491aC1i7zrJc3z2qiI95499BmKfE29rk6uIYMo663nKqSW
	 /NYNCfAWuLhU4M+rTxpYjoV73Eo+eh7xS0fJ4hwY7buhbhspGl6lDVSBwxORWeFQWz
	 E8+TnChRcQuWYuHtyTt3L91hu0y0S51dusBD5BUxv7Z59LOjnNiUUPF7B/LpQVBr83
	 oHeDpDbKbXA1yhOsPRkOW2JL3AnA+NRoWPMEED3l7CFQvZurIuPepegpOAftYjMRkE
	 fpzMrEKkMIaJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wUYtVR5u8-A; Wed, 24 Jan 2024 21:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6DE54035D;
	Wed, 24 Jan 2024 21:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6DE54035D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 053FA1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D634241811
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D634241811
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9l3uoJnOGOF9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 21:34:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E013341523
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E013341523
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8636685"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8636685"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 13:34:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2004810"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 24 Jan 2024 13:34:42 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.246.2.62])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 900969A4B1;
 Wed, 24 Jan 2024 15:21:45 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jan 2024 16:21:40 +0100
Message-Id: <20240124152141.15077-2-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240124152141.15077-1-lukasz.plachno@intel.com>
References: <20240124152141.15077-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706132086; x=1737668086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWjf5u8uCTcqsXkwFfvAdAy3pN2rItiEp6vfgZPOcBI=;
 b=MB3/LN4joq1lPqJnrrHR3oY7RgSSFtWP1RZL0p6cFnpxxMyjKR3CDo0S
 fdmePq6f78Xubc2bPTMNOcENOQNeAedDKP53AvR0u8g7cB6dZ6tcdefyF
 bUCCeh3mQeNbY1bK8oRLPjaGj6f+1pJKUaB+jG1QYxSqn91Rl2OwjdO+n
 i9rznxe0jaYEVjCsyGWw+AA/3W6zp3MjqBTAWw8yy/4VoY4sQGkHGTWzp
 a2Oz6ve77woMl7+zLBYqP89y6LvPJcHCt7+RAtyn4GCQY71MG7Y0iVBiT
 fBKH1U5ikWWr6eHsfvKHabN9C+4iMJYxX2vySu6oNGqaSaTEvveNUDK6b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MB3/LN4j
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ice: Remove unnecessary
 argument from ice_fdir_comp_rules()
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
Cc: netdev@vger.kernel.org, Lukasz Plachno <lukasz.plachno@intel.com>,
 brett.creeley@amd.com, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Passing v6 argument is unnecessary as flow_type is still
analyzed inside the function.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c | 85 +++++++++++------------
 1 file changed, 39 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 5840c3e04a5b..1f7b26f38818 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -1189,52 +1189,54 @@ static int ice_cmp_ipv6_addr(__be32 *a, __be32 *b)
  * ice_fdir_comp_rules - compare 2 filters
  * @a: a Flow Director filter data structure
  * @b: a Flow Director filter data structure
- * @v6: bool true if v6 filter
  *
  * Returns true if the filters match
  */
 static bool
-ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b, bool v6)
+ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
 {
 	enum ice_fltr_ptype flow_type = a->flow_type;
 
 	/* The calling function already checks that the two filters have the
 	 * same flow_type.
 	 */
-	if (!v6) {
-		if (flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_SCTP) {
-			if (a->ip.v4.dst_ip == b->ip.v4.dst_ip &&
-			    a->ip.v4.src_ip == b->ip.v4.src_ip &&
-			    a->ip.v4.dst_port == b->ip.v4.dst_port &&
-			    a->ip.v4.src_port == b->ip.v4.src_port)
-				return true;
-		} else if (flow_type == ICE_FLTR_PTYPE_NONF_IPV4_OTHER) {
-			if (a->ip.v4.dst_ip == b->ip.v4.dst_ip &&
-			    a->ip.v4.src_ip == b->ip.v4.src_ip &&
-			    a->ip.v4.l4_header == b->ip.v4.l4_header &&
-			    a->ip.v4.proto == b->ip.v4.proto &&
-			    a->ip.v4.ip_ver == b->ip.v4.ip_ver &&
-			    a->ip.v4.tos == b->ip.v4.tos)
-				return true;
-		}
-	} else {
-		if (flow_type == ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV6_SCTP) {
-			if (a->ip.v6.dst_port == b->ip.v6.dst_port &&
-			    a->ip.v6.src_port == b->ip.v6.src_port &&
-			    !ice_cmp_ipv6_addr(a->ip.v6.dst_ip,
-					       b->ip.v6.dst_ip) &&
-			    !ice_cmp_ipv6_addr(a->ip.v6.src_ip,
-					       b->ip.v6.src_ip))
-				return true;
-		} else if (flow_type == ICE_FLTR_PTYPE_NONF_IPV6_OTHER) {
-			if (a->ip.v6.dst_port == b->ip.v6.dst_port &&
-			    a->ip.v6.src_port == b->ip.v6.src_port)
-				return true;
-		}
+	switch (flow_type) {
+	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
+		if (a->ip.v4.dst_ip == b->ip.v4.dst_ip &&
+		    a->ip.v4.src_ip == b->ip.v4.src_ip &&
+		    a->ip.v4.dst_port == b->ip.v4.dst_port &&
+		    a->ip.v4.src_port == b->ip.v4.src_port)
+			return true;
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
+		if (a->ip.v4.dst_ip == b->ip.v4.dst_ip &&
+		    a->ip.v4.src_ip == b->ip.v4.src_ip &&
+		    a->ip.v4.l4_header == b->ip.v4.l4_header &&
+		    a->ip.v4.proto == b->ip.v4.proto &&
+		    a->ip.v4.ip_ver == b->ip.v4.ip_ver &&
+		    a->ip.v4.tos == b->ip.v4.tos)
+			return true;
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
+		if (a->ip.v6.dst_port == b->ip.v6.dst_port &&
+		    a->ip.v6.src_port == b->ip.v6.src_port &&
+		    !ice_cmp_ipv6_addr(a->ip.v6.dst_ip,
+				       b->ip.v6.dst_ip) &&
+		    !ice_cmp_ipv6_addr(a->ip.v6.src_ip,
+				       b->ip.v6.src_ip))
+			return true;
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
+		if (a->ip.v6.dst_port == b->ip.v6.dst_port &&
+		    a->ip.v6.src_port == b->ip.v6.src_port)
+			return true;
+		break;
+	default:
+		break;
 	}
 
 	return false;
@@ -1253,19 +1255,10 @@ bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input)
 	bool ret = false;
 
 	list_for_each_entry(rule, &hw->fdir_list_head, fltr_node) {
-		enum ice_fltr_ptype flow_type;
-
 		if (rule->flow_type != input->flow_type)
 			continue;
 
-		flow_type = input->flow_type;
-		if (flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_SCTP ||
-		    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
-			ret = ice_fdir_comp_rules(rule, input, false);
-		else
-			ret = ice_fdir_comp_rules(rule, input, true);
+		ret = ice_fdir_comp_rules(rule, input);
 		if (ret) {
 			if (rule->fltr_id == input->fltr_id &&
 			    rule->q_index != input->q_index)
-- 
2.34.1

