Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A05D812E7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 12:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B2B36F61C;
	Thu, 14 Dec 2023 11:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B2B36F61C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702553133;
	bh=13ehiWPvxuuqkt4gtPuROB0X4Ee1PUcwiGNs9X52V5Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AwYx+nl2J3irrMEKB8BYI9d+s1Nl+lYe4la/WcvZJF2mnDaZQaaSfLQ7JmT0PY4gU
	 noeLW+Lvw/vFMKLJfLjsIGxjNyLQJS0AvNL9b0lHJGkoBTTbsrNhDi5GA65SGkUJHH
	 GHRQRmhJvAc5pCd/aVtclpmMHvLKAfNsyNc6RjpEvs0GAqX2cdki1EMIlwPaUA9v3E
	 mJMtjbBCvfmoF0IS1FZsfj1aoIuwrlQVzGm4wc7hbwK2GPHRRzTEQ24+f48zaP82+w
	 iYVGWaGBv2kKQKv/iBDtxrjnOawflzunk2uVrL+zLFJigtTy4sDW5DZ/WQK1n2KyeA
	 UuCykrXjRLhJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQ4HYilq_sQV; Thu, 14 Dec 2023 11:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C438B60792;
	Thu, 14 Dec 2023 11:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C438B60792
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51D111BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E558940129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E558940129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMRIL4KOmGQN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 11:25:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C603E409C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C603E409C8
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="393977391"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="393977391"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:25:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="750503278"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="750503278"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 14 Dec 2023 03:25:03 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.145.51])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1ECA43A3D5;
 Thu, 14 Dec 2023 11:25:01 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Dec 2023 05:34:48 +0100
Message-Id: <20231214043449.15835-2-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214043449.15835-1-lukasz.plachno@intel.com>
References: <20231214043449.15835-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702553105; x=1734089105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OZ5n0YQNgYisJAyGNQGsrKgqrrk1uGfJnL/orTtqmtU=;
 b=CsUoQ8rdrWJJ6kIITN61bOPmZ4+8UnrI7NdzrjcrWl/BZcKfxhiEtgeK
 vJOAj2TV3Ysin9VrdZxSDw+VZa0komXKyZjKsuf+bX+0v2wYcleJSVRMB
 gzB3sYRpkLbFIdm7h0+20J5dt5u22kE//YpZPhQqsku4fNN+RJj0FxDms
 61nA2YBjiqSWOxfpAOxD5Y7bi8fbFUxkRB7EUEVtxiE+CH/mYGtTvc9ST
 jZKcPS/oulVJRFz+gkah470pkImxy8pcrHTxnjSJjaQ4dGNz9s8IiJz5L
 dz37ZDprD3Wn+NMSbsBbf/7fcmJc4oTn3ibX8oSIfQinXOuzxNZlMQ+nq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CsUoQ8rd
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: Remove unnecessary
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Passing v6 argument is unnecessary as flow_type is still
analyzed inside the function.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c | 85 +++++++++++------------
 1 file changed, 39 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index ae089d32ee9d..d6053cdad686 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -1212,52 +1212,54 @@ static int ice_cmp_ipv6_addr(__be32 *a, __be32 *b)
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
@@ -1276,19 +1278,10 @@ bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input)
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

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
