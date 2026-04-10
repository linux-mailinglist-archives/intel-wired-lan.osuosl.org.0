Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE96Jp+r2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E63B3D3949
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A107960BAB;
	Fri, 10 Apr 2026 07:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVe3tYXeRBKh; Fri, 10 Apr 2026 07:49:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04941608B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807381;
	bh=Jwcl3Qdav8RvydIKl0s+Wt5lhJ2UrYGx01R1Tp4cJr0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZnLGAO2J3ABa8gJmvfIsGK4r5V6U9BVPllbTsjcGbctWI0MsqGfXbzAHWSjdX+Z7m
	 mz6PkDjO/8+RDAzOLT/UoUqZOmfC2VQszj55lPqu0qIMahiS074r3wn0BeHEZy2kNR
	 CFSAaqmNnEAwJb89QTJDO52vdyg1FjZ6ErNGezg06OqaW9RRQJMpgMr204BDFem1od
	 5KTc3iPGhfrBvjBsvYKGG6P0SA8zDOoojzUGRdYVMvV5tPbw7MlVajEaPzGKBJIT77
	 znXgxFbMrOl5R/ugUGbG6YM1LqRy1WOo+bYdwlmZpluLg0YNkFME5W7q90EUILJetr
	 4FIt+5BHxA9EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04941608B6;
	Fri, 10 Apr 2026 07:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 735CE1F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 598A981A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hd_umFQIDaV5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5B26C816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B26C816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B26C816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:38 +0000 (UTC)
X-CSE-ConnectionGUID: maUm4tOgQOqq8wc4aVh2QA==
X-CSE-MsgGUID: 8hR+Nq77SAq05rYLIuGeFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007945"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007945"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:38 -0700
X-CSE-ConnectionGUID: zT8ceFmrThObprmwK0C0cg==
X-CSE-MsgGUID: b+wSATUkTWCA7gjGbjtZlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941906"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Larysa Zaremba <larysa.zaremba@intel.com>
Date: Fri, 10 Apr 2026 09:49:20 +0200
Message-ID: <20260410074921.1254213-10-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807378; x=1807343378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/GsckPs+NdN9rChj/2Ywk80a8qYQmlKLwO31lOo/oAA=;
 b=GTbEJEHzMxvfC9iI0ml3AGy7t/6T6ycaZNp+yI/r1TVHch4mbMV8K1yP
 d1TQt3eAWhINmbV/MH29Ek3xadMWBpT5nDS4/WzBjS0QOJ9VPP1k8Ubm4
 Kf+V75ZzM0ymS6jf3u7PUb+S7OodvG86HqA+agBmxscZSnOLS3wo4Mtde
 nvFPHE3qSk7cLt5NaN1NCX2VHwMTjLLkQHLs+Z3KURAfUxiiOOZr9F5UT
 16VQOKY73MiuJ6Y7mYGHYAbaoqRV/gCqDwbtGt3Z83XExPNN0aaKCE+54
 ZFo1sEBeO0Cbuav0sv125ezCjAIIKD20A/GgB06n2isk2n7y8dViUIsBp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GTbEJEHz
Subject: [Intel-wired-lan] [PATCH iwl-next 9/10] ice: use inline helpers
 instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4E63B3D3949
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace static full_ipv6_addr_mask / zero_ipv6_addr_mask structs
and the associated memcmp() calls in ice_ethtool_fdir.c with the
kernel-provided ipv6_addr_any() helper and a new ice_ipv6_mask_full()
inline, reducing boilerplate and making intent clearer.

Suggested-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 57 ++++++-------------
 1 file changed, 16 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index aceec18..1d7c595 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -8,23 +8,10 @@
 #include "ice_fdir.h"
 #include "ice_flow.h"
 
-static struct in6_addr full_ipv6_addr_mask = {
-	.in6_u = {
-		.u6_addr8 = {
-			0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-			0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-		}
-	}
-};
-
-static struct in6_addr zero_ipv6_addr_mask = {
-	.in6_u = {
-		.u6_addr8 = {
-			0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
-			0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
-		}
-	}
-};
+static bool ice_ipv6_mask_full(const __be32 *a)
+{
+	return (a[0] & a[1] & a[2] & a[3]) == cpu_to_be32(0xffffffff);
+}
 
 /* calls to ice_flow_add_prof require the number of segments in the array
  * for segs_cnt. In this code that is one more than the index.
@@ -1070,10 +1057,8 @@ ice_set_fdir_ip6_seg(struct ice_flow_seg_info *seg,
 	enum ice_flow_field src_port, dst_port;
 
 	/* make sure we don't have any empty rule */
-	if (!memcmp(tcp_ip6_spec->ip6src, &zero_ipv6_addr_mask,
-		    sizeof(struct in6_addr)) &&
-	    !memcmp(tcp_ip6_spec->ip6dst, &zero_ipv6_addr_mask,
-		    sizeof(struct in6_addr)) &&
+	if (ipv6_addr_any((struct in6_addr *)tcp_ip6_spec->ip6src) &&
+	    ipv6_addr_any((struct in6_addr *)tcp_ip6_spec->ip6dst) &&
 	    !tcp_ip6_spec->psrc && !tcp_ip6_spec->pdst)
 		return -EINVAL;
 
@@ -1097,24 +1082,20 @@ ice_set_fdir_ip6_seg(struct ice_flow_seg_info *seg,
 	*perfect_fltr = true;
 	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV6 | l4_proto);
 
-	if (!memcmp(tcp_ip6_spec->ip6src, &full_ipv6_addr_mask,
-		    sizeof(struct in6_addr)))
+	if (ice_ipv6_mask_full(tcp_ip6_spec->ip6src))
 		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_IPV6_SA,
 				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
 				 ICE_FLOW_FLD_OFF_INVAL, false);
-	else if (!memcmp(tcp_ip6_spec->ip6src, &zero_ipv6_addr_mask,
-			 sizeof(struct in6_addr)))
+	else if (ipv6_addr_any((struct in6_addr *)tcp_ip6_spec->ip6src))
 		*perfect_fltr = false;
 	else
 		return -EOPNOTSUPP;
 
-	if (!memcmp(tcp_ip6_spec->ip6dst, &full_ipv6_addr_mask,
-		    sizeof(struct in6_addr)))
+	if (ice_ipv6_mask_full(tcp_ip6_spec->ip6dst))
 		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_IPV6_DA,
 				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
 				 ICE_FLOW_FLD_OFF_INVAL, false);
-	else if (!memcmp(tcp_ip6_spec->ip6dst, &zero_ipv6_addr_mask,
-			 sizeof(struct in6_addr)))
+	else if (ipv6_addr_any((struct in6_addr *)tcp_ip6_spec->ip6dst))
 		*perfect_fltr = false;
 	else
 		return -EOPNOTSUPP;
@@ -1167,33 +1148,27 @@ ice_set_fdir_ip6_usr_seg(struct ice_flow_seg_info *seg,
 	if (usr_ip6_spec->l4_proto)
 		return -EOPNOTSUPP;
 	/* empty rules are not valid */
-	if (!memcmp(usr_ip6_spec->ip6src, &zero_ipv6_addr_mask,
-		    sizeof(struct in6_addr)) &&
-	    !memcmp(usr_ip6_spec->ip6dst, &zero_ipv6_addr_mask,
-		    sizeof(struct in6_addr)))
+	if (ipv6_addr_any((struct in6_addr *)usr_ip6_spec->ip6src) &&
+	    ipv6_addr_any((struct in6_addr *)usr_ip6_spec->ip6dst))
 		return -EINVAL;
 
 	*perfect_fltr = true;
 	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV6);
 
-	if (!memcmp(usr_ip6_spec->ip6src, &full_ipv6_addr_mask,
-		    sizeof(struct in6_addr)))
+	if (ice_ipv6_mask_full(usr_ip6_spec->ip6src))
 		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_IPV6_SA,
 				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
 				 ICE_FLOW_FLD_OFF_INVAL, false);
-	else if (!memcmp(usr_ip6_spec->ip6src, &zero_ipv6_addr_mask,
-			 sizeof(struct in6_addr)))
+	else if (ipv6_addr_any((struct in6_addr *)usr_ip6_spec->ip6src))
 		*perfect_fltr = false;
 	else
 		return -EOPNOTSUPP;
 
-	if (!memcmp(usr_ip6_spec->ip6dst, &full_ipv6_addr_mask,
-		    sizeof(struct in6_addr)))
+	if (ice_ipv6_mask_full(usr_ip6_spec->ip6dst))
 		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_IPV6_DA,
 				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
 				 ICE_FLOW_FLD_OFF_INVAL, false);
-	else if (!memcmp(usr_ip6_spec->ip6dst, &zero_ipv6_addr_mask,
-			 sizeof(struct in6_addr)))
+	else if (ipv6_addr_any((struct in6_addr *)usr_ip6_spec->ip6dst))
 		*perfect_fltr = false;
 	else
 		return -EOPNOTSUPP;
-- 
2.52.0

