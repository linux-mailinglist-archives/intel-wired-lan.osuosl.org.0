Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1335A9640
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA62F41A5F;
	Thu,  1 Sep 2022 12:04:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA62F41A5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662033898;
	bh=bs4zcBORXQyIaEz9l77iL+OZqbMra6+A12R96WSnXbw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vMp57aWLfDWqZo3UI4Z0kq7/4LXDiAGpfP6eZ5IkVuOys3FKa7D4pu37qfO/lvXIM
	 X5pBbRoviRJz9SOAgGYW31IjsQl6UJuOAbze333EsA989LeC8t2+d81/ZIi6QrxyLD
	 qGJXt1BF90eLG9jYwkX18TQaLQwmU+dnT1kteulOsaBtHrGhRmoKc3EC6hLeTgPhQ5
	 i8uUFmioeSDKpr0tPRFxIcgZHFwDriHp9H6i0BIoeycN8lha8YF/Yt9RiTnhUepLaY
	 kR/vPB1PixfsZqTSJFYfKQ/WZdZpGknzFCYCB6zqbNCLBZqOtRRonuEpw3vX/E1HUy
	 N5hGPVCo46SGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMEtzqwmTOLQ; Thu,  1 Sep 2022 12:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EBE641A5C;
	Thu,  1 Sep 2022 12:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EBE641A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF36D1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A75D060C25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A75D060C25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEQFuV6fGwlL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00F5260BE4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00F5260BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="293274365"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="293274365"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="608532261"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 01 Sep 2022 05:04:38 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 281C4XRi024211; Thu, 1 Sep 2022 13:04:36 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Sep 2022 14:01:28 +0200
Message-Id: <20220901120131.1373568-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220901120131.1373568-1-wojciech.drewek@intel.com>
References: <20220901120131.1373568-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662033883; x=1693569883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4amD39zOEmluCPQYQNAg9eXou38dE6G14ogv0QNFbVo=;
 b=RxvvXLiod2tiDkKPTX+3zIs/g45hmjzfB88uZnCyQeKwf0A0RGkfBQSu
 NxyKsOVMSAv4jcsd71/nM1WQc00WIh3Tg44kTdaczsMvlisN08S4KPIlU
 3yaAcd1yy9l30WFnw9E/IDdEw+62XWeB2xZtMRXqG87RHV6fAOEGdvtfq
 DmxsuYM0KJJNe5pEh30AGSRmkW64XfMO4mjXu2BHK7AFnrVoZgw5hSCln
 fG/GI5cykINhaYJIn812/Bi3Uw1dQYkRbzgTzzOtjZ66PS8R6vNgyzQZc
 BfHnTBiG1vaBBSoFk9lSZytz8C7IS/IfqRg7Lh8Xk4PA0CoyaJRe0oIow
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RxvvXLio
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 2/5] flow_dissector: Add
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

Acked-by: Guillaume Nault <gnault@redhat.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v3: move !dissector_uses_key() check before calling
    __skb_header_pointer
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
index 764c4cb3fe8f..8180e65ab8e2 100644
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
+	if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_L2TPV3))
+		return;
+
+	hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
+	if (!hdr)
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
