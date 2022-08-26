Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C15A2675
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 634AD419F0;
	Fri, 26 Aug 2022 11:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 634AD419F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661511888;
	bh=LOkggR6Qd40+/PmHT22F99rm5NIoXi9iDyj4dtkEMGw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DO/6tPbNh7eX4M1W2UCjCEKCB6NK8/pOwtncwcVxkhhLV5T9qGyxVivQlJ8SnCQSo
	 hphBp821wXAF3F9B03L4ZotYEq30V0rp1kppwocWx9CExgDHYRiBO9nBjiiiOFT9Ja
	 8/9iv+0VWr9Z/Bu/Adh/LdqsBJbjsD5TO21vjdTIUvijOCEX8OFu82X4rrrm2m4u/h
	 CFHZ/pOIcOn1dGMVFLKFeaT/jmdRpYpt+bkv8MpOgBjxqsj+cfaqF1f8/1Y8rU7jtl
	 zAtCc2zC2vn0+ZqUo5a442wedqpH7ro8yiPo7IyWqqK+zXslEG+V5aAfiVsvyuw9YT
	 e35ZsKBZc3gzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHLd58GX_Ji4; Fri, 26 Aug 2022 11:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04E50419F1;
	Fri, 26 Aug 2022 11:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04E50419F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAEA81BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6696610D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6696610D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFOOeAcP52HU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:04:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3B8360B8D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3B8360B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380775333"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="380775333"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 04:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="640017551"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2022 04:04:17 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27QB4CLs024087; Fri, 26 Aug 2022 12:04:15 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Aug 2022 13:00:56 +0200
Message-Id: <20220826110059.119927-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220826110059.119927-1-wojciech.drewek@intel.com>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661511868; x=1693047868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xKLv1G8WfQWG4cBP9vyucBTiuVq6O/R1cI+hNgRFNlU=;
 b=HbbxftrdMtANyP8tc9VhZpm71N6MjYMcWE7qYsEXFsOQOYhElI8GM2lr
 GD9OcOnQsAXHcUNqpQockaFLt9ZcjtamQZ1om5XdfCU3F8b49WgQ8W1NH
 XQQU46ciZg5Ml+gZ+lk3ENNiMNQ2AvvyE1xffCh6S+N2wZekbYi9W/A8u
 8AoZFr9OuAz0igYTpTh82TV7OJe7fdRtVAhIVTgXkGeI5ZJnEP9rlATTB
 s1/F7gRJkRyunOWGsT7pIPFwOEKyiSvhEyMqSbva4eYfkCTBuEc+YzmU+
 3+urroq461w+d8DKxgcWOAjPUIrd6AHGT4jyPxIZzktrIDUKrvwG5rJVg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hbbxftrd
Subject: [Intel-wired-lan] [RFC PATCH net-next 2/5] flow_dissector: Add
 L2TPv3 dissectors
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, gnault@redhat.com, intel-wired-lan@lists.osuosl.org,
 vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow to dissect L2TPv3 specific field which is:
- session ID (32 bits)

L2TPv3 might be transported over IP or over UDP,
this ipmplementation is only about L2TPv3 over IP.
IP protocold carries L2TPv3 when ip_proto is
IPPROTO_L2TP (115).

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/flow_dissector.h |  9 +++++++++
 net/core/flow_dissector.c    | 28 ++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
index 6c74812d64b2..5ccf52ef8809 100644
--- a/include/net/flow_dissector.h
+++ b/include/net/flow_dissector.h
@@ -289,6 +289,14 @@ struct flow_dissector_key_pppoe {
 	__be16 type;
 };
 
+/**
+ * struct flow_dissector_key_l2tpv3:
+ * @session_id: identifier for a l2tp session
+ */
+struct flow_dissector_key_l2tpv3 {
+	__be32 session_id;
+};
+
 enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
 	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
@@ -320,6 +328,7 @@ enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
 	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
 	FLOW_DISSECTOR_KEY_PPPOE, /* struct flow_dissector_key_pppoe */
+	FLOW_DISSECTOR_KEY_L2TPV3, /* struct flow_dissector_key_l2tpv3 */
 
 	FLOW_DISSECTOR_KEY_MAX,
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 764c4cb3fe8f..dbd944de4129 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -204,6 +204,30 @@ static void __skb_flow_dissect_icmp(const struct sk_buff *skb,
 	skb_flow_get_icmp_tci(skb, key_icmp, data, thoff, hlen);
 }
 
+static void __skb_flow_dissect_l2tpv3(const struct sk_buff *skb,
+				      struct flow_dissector *flow_dissector,
+				      void *target_container, const void *data,
+				      int nhoff, int hlen)
+{
+	struct flow_dissector_key_l2tpv3 *key_l2tpv3;
+	struct {
+		__be32 session_id;
+	} *hdr, _hdr;
+
+	hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
+	if (!hdr)
+		return;
+
+	if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_L2TPV3))
+		return;
+
+	key_l2tpv3 = skb_flow_dissector_target(flow_dissector,
+					       FLOW_DISSECTOR_KEY_L2TPV3,
+					       target_container);
+
+	key_l2tpv3->session_id = hdr->session_id;
+}
+
 void skb_flow_dissect_meta(const struct sk_buff *skb,
 			   struct flow_dissector *flow_dissector,
 			   void *target_container)
@@ -1497,6 +1521,10 @@ bool __skb_flow_dissect(const struct net *net,
 		__skb_flow_dissect_icmp(skb, flow_dissector, target_container,
 					data, nhoff, hlen);
 		break;
+	case IPPROTO_L2TP:
+		__skb_flow_dissect_l2tpv3(skb, flow_dissector, target_container,
+					  data, nhoff, hlen);
+		break;
 
 	default:
 		break;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
