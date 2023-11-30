Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FF77FEDA7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 12:16:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F38A76F687;
	Thu, 30 Nov 2023 11:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F38A76F687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701342991;
	bh=0w0iJGRljM+J8ddgE6oYGFxjqSA9t0eCzM0XRelNrjg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LoT+cYLfNkbGu1XVdhbVGPruLybe1k/5eim+4gK+i32HOY3iKxrd30dFl8cufmcEv
	 B3VTI7l5bNuqtt+vYAVuiOxyi0sV3aTXtA9OxuPhBDGgy3d8FdxlV2FXRKDa3CPyyl
	 nDA1eRFNzYMQyolLxNxSnUgtrUNXiUPPx0pDRRIU/OErcS8d1FY/StmhNQc7f+puos
	 L8MlhvnQ3Uxec1enacGRMM9g2nCB7vXPM/uvIZtCYGudm+A52h8XRb+3LNcvateKbo
	 MqWOfIL9L70ZcKNps0Kr8oDLIM6LeNgdU1U2+nTFDqaxkAdrIOLoB1xBh7h8pgAL9H
	 3kFF4rPgO0TOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3J69XhQTQll; Thu, 30 Nov 2023 11:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEE156F57B;
	Thu, 30 Nov 2023 11:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEE156F57B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 127451BF83B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD87941DA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD87941DA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqhe24SbyOLT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 236F741DAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 236F741DAB
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="6531878"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="6531878"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 03:15:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="17368584"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 30 Nov 2023 03:15:58 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.155.228])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5F16E36C38;
 Thu, 30 Nov 2023 11:15:56 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Nov 2023 06:55:39 +0100
Message-Id: <20231130055540.12692-2-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130055540.12692-1-lukasz.plachno@intel.com>
References: <20231130055540.12692-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701342980; x=1732878980;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tujfVmvuWqb2JNd839plHLk22r3f650e8v4i7D9S3MM=;
 b=cdorlcOmix73yrn13cd1rCMUloK/es53H80oL4Iz5Jq7ca8UZu4GdIK8
 clneJYJL8mvI4eCQ84TtMP1TyWdcMnRzSyBHtrTBxVPcI7DscfjyeOVeW
 DAyeuIWc3mSCVHqmUoOKRnII4tKI0hw0TATEr0IGYEfM3ioa+vVZlvGOE
 QRq9foh/YR1oddl49MkUk3rEIhWTczQAdYRlzWx8IObGLgj7qC9RrmiiQ
 00orJ4JjAMZ4HxZhH77pjRyCn6Um4o03h4RCSVIPtNvkmSN7IiyzJusLO
 orRITbINnL4f74L3Y5v+ZONGmK8n0bGwpT9/dTS9ObkyJ6znJHaJIncwR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cdorlcOm
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Remove unnecessary
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Passing v6 argument is unnecessary as flow_type is still
analyzed inside the function.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c | 83 ++++++++++-------------
 1 file changed, 37 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index ae089d32ee9d..ce24db2baed5 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -1212,52 +1212,52 @@ static int ice_cmp_ipv6_addr(__be32 *a, __be32 *b)
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
 	}
 
 	return false;
@@ -1276,19 +1276,10 @@ bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input)
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
