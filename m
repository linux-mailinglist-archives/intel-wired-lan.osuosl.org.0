Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2C94AlJdumnFUgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C522B7851
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85849608FD;
	Wed, 18 Mar 2026 08:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9BlUTjIFgc1Y; Wed, 18 Mar 2026 08:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 074B560901
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773821263;
	bh=qfO6LRNCVs3bhBoA47/zWK1gG62swW8c6ySP3LLpou0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tg7dEE52FCYQyrjJmvLd8hgMc6ElY07RzJ78jAIPuVUjSgEbXVHKGYw3EJoQPSZ8L
	 +ZLCK/PvyHEB21Yq398r6dz90yivIVlLFNBkitx9IMns2pznAgq7/SXrRhYli0i/uu
	 +PGcbjp3yHvS24E9TDUU+AOz4ridid80LXcIfEJnn0llq+AR5hjOfeG6cIjWPUIBS6
	 2LADp8kW7nsiTQ0Ok4Q6saRuX5gynkgGgIeN6HkqvPEduVvDf0Z9bA8n3cgOsqsIVY
	 oSRr+LHFi9JUSTnOqi6Gz5Z5BAdGnv+xsAFLpqjZKfGFwIxOCy7lzPs8ZdbuPMoKZn
	 gr9CJ3O/5t65g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 074B560901;
	Wed, 18 Mar 2026 08:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 37145D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C8F540BE1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PolAXBbTRLhz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 08:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D58F40B82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D58F40B82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D58F40B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: dKDra2AgTLitZeEAWo85uA==
X-CSE-MsgGUID: /1efvYvKQsqVe2U3fGrxRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74755245"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74755245"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 01:07:41 -0700
X-CSE-ConnectionGUID: jdC19aAIR+2gvK0MrbS1bw==
X-CSE-MsgGUID: nV1zGSKUSb67sYXQUFbPUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="221628545"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 18 Mar 2026 01:07:39 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed, 18 Mar 2026 09:07:35 +0100
Message-ID: <20260318080737.3012293-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
References: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773821261; x=1805357261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=84LnzcZCMYp6duMUvt8hli/mHgvmoXyWC9z9VVw9BfA=;
 b=MI+/NFXbZfUTOY0MBWmoqBqro309j80moFVkpTCkzUlSxp7opGhhLvV9
 +kOkdgWVu1V/51zoxy62MsE8SWbzdt6+1vNblm967IwdNB5Iy446TPSIB
 g6/Mh4NTRDd7aKcrwpDwYVzTe5joxBRV2bMoO5fzfmJEhCUI1CDdIK0SD
 HUjTqrae6EaS8qd6+NICrz/IdFLT/o6LKiWq6UEUzWmZCC3Ovrhhr7Gnb
 cGMhslN6NRZbHk0ZLTw9scXZxOEGPS6Q0km+H5Eu4VGwWAHdBcyi+i01R
 5EwvTxysew0PvkffyjwZRq3DNRRM/sGuw+Qc9OtdgICLdH7+RkfChW9p6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MI+/NFXb
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] virtchnl: add
 VIRTCHNL_VLAN_ETHERTYPE_88E7 support
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 57C522B7851
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

IEEE 802.1ah (Provider Backbone Bridging) uses ethertype 0x88E7 as the
Backbone Service Tag (B-TAG). Some deployments stack 802.1ah on top of
existing QinQ or single-tagged VLAN infrastructure, creating scenarios
where a VF needs to negotiate support for the 0x88E7 ethertype with the
PF in order to install correct VLAN filters.

Add VIRTCHNL_VLAN_ETHERTYPE_88E7 = BIT(3) to the virtchnl_vlan_support
capability bitmask so that VF drivers can advertise and negotiate 0x88E7
VLAN ethertype support through the existing VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
handshake.

The new bit follows the established BIT(N) pattern of the enum and does
not conflict with any existing flag.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 include/linux/avf/virtchnl.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 11bdab5..511c882 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -636,6 +636,7 @@ enum virtchnl_vlan_support {
 	VIRTCHNL_VLAN_ETHERTYPE_8100 =		BIT(0),
 	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		BIT(1),
 	VIRTCHNL_VLAN_ETHERTYPE_9100 =		BIT(2),
+	VIRTCHNL_VLAN_ETHERTYPE_88E7 =		BIT(3),
 	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	BIT(8),
 	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	BIT(9),
 	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	BIT(10),
-- 
2.52.0

