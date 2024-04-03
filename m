Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6924A896C2E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 12:24:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4577416F7;
	Wed,  3 Apr 2024 10:24:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 91ncCgF9GJv9; Wed,  3 Apr 2024 10:24:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA388416C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712139866;
	bh=cmgIifpNFYKev12UcE1onwLquFJvu0ujMypZAcr1mCY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CXIAgCOWuwtPz5MdJbeMF6PddZteZLkOa9KV2uuML/YB+h2rnGTgMPiD4jS4NFPSv
	 Vzg4KlaSVzVehOeLWkUgeS+lXTvr9ufARzjUS/igym6CpWAAjM/Ci4ga/Zog1ULkfb
	 2DohpQNNNUD1Ip8DUJyJEb2m1EBSsEJWSX/Qr2lD7DPjfYcFTy7eqNkT5qVSEFKqRX
	 ydeEFdlI2e7CjNd2FF5A2QNeGneFCAGB2FE5LZcXjS678htLH9OZkk1uKijivtLRlC
	 DDCfi35ujiWfpTZB/+Bh3ZcejeVQJB67C9eWI1BXYzaiWLht7ky5/pTQ3cZNKzDq1L
	 nJfTM9cm6+QVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA388416C3;
	Wed,  3 Apr 2024 10:24:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A1DB1BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 747C5416B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDB11bdG5Xkp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 10:24:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7BCCC40127
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BCCC40127
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BCCC40127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:20 +0000 (UTC)
X-CSE-ConnectionGUID: zfdwL7iiQoeffiJsVVvrhg==
X-CSE-MsgGUID: 67QMrN9VSKqrfi+qgO5G3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7282822"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7282822"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:24:20 -0700
X-CSE-ConnectionGUID: N2oaGIkWSSyFIXp7onUurA==
X-CSE-MsgGUID: V/GV9NrxTIulVAs9sPdlcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18292413"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2024 03:24:18 -0700
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.245.83.30])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 348AF36C0A;
 Wed,  3 Apr 2024 11:24:15 +0100 (IST)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 12:24:01 +0200
Message-Id: <20240403102402.20144-2-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403102402.20144-1-lukasz.plachno@intel.com>
References: <20240403102402.20144-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712139860; x=1743675860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWjf5u8uCTcqsXkwFfvAdAy3pN2rItiEp6vfgZPOcBI=;
 b=bpQRWHjJIoH40azhxF5j0VfG4I9ew0FyL/PGt5KzeY004jrppR326fQ+
 F5omidswYTgpwrX9EvSs2TvEodhwCZKnBTOSdbKYcK/u0ftS8vpiTIMFk
 mbitDuIGqSNSv7biIer9MHzIuV0/5QiGU4mpGvqg6ryIdMVRq+Xbm5LAT
 49kpaOy82LIavBXbUPQq6HjIoCMnfLx52JUPZw3iAOHokguPjsBA/A+R4
 sknI48RMsxDFbJmEn38W0bXsXA8ZqvviwqJGQraE2S6fTR8PR8W7Ybqk/
 FnL5VrsOzJ5A4qA2+Qs7eyyBi9a16rtCIUkaJhEr6Hf1j79QAKlQxnK+p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bpQRWHjJ
Subject: [Intel-wired-lan] [PATCH iwl-next v8 1/2] ice: Remove unnecessary
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, Lukasz Plachno <lukasz.plachno@intel.com>,
 horms@kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
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

