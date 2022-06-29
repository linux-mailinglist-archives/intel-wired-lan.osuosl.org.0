Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7AD56034A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 16:40:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E28341A68;
	Wed, 29 Jun 2022 14:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E28341A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656513643;
	bh=NQwVUji89QW8IADAVWEKk9AYAxy3+OIs39nliRaNoNM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TAGzC+MUssIn7Qc1GyYeuBUYaoJY/t82UhHbKDlLaDVy9Zu5Ujz/iyWIKLZ80ySE2
	 btizANJhBvg8VAi2nqmhxCwZNuYTRcBQ22yGD6rvpiA5mg2iQjUK/NCFpZy1RgL2bM
	 oEb3z1ftaJ8fv+Eyh4GkWpvwkVuHu6y91GSCWUVLHcUmw0h811SfJDY/hsgPBgzZui
	 RyZ/V/vUHkKhjaaEDY4nlcPjatCBAQYwiw2Pyu8pL6iJzvNMqCS+/ZmxytBl0DrWla
	 gc9OlO0HmxtpQpRqOMt/JqXTbMgEe3Z03BingJM5uqJJmpgCk8Im2KgWR3Am2i58JI
	 wV7QHX5JOnOmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ba1V8PK2nqpQ; Wed, 29 Jun 2022 14:40:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0AFE41799;
	Wed, 29 Jun 2022 14:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0AFE41799
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2BC71BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BFC541799
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BFC541799
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONGS3YfryZh8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:40:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84C7A408CD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84C7A408CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="343734769"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="343734769"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 07:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595255544"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 29 Jun 2022 07:40:22 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25TEeJ3Y022901; Wed, 29 Jun 2022 15:40:20 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Wed, 29 Jun 2022 16:38:56 +0200
Message-Id: <20220629143859.209028-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656513628; x=1688049628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fUfMk8igt3k0bOGaXeDUuKDrHMD7x1pl2PQxNLJeO2s=;
 b=IZXepJC5uLzJPxxyCCmptYxjPfT1IFbKBmW5nWTZ4IvVs5nqba8m3MkN
 4s0SG1p1DoL8eEsaIxMXZFRe/fiaZgMGm+Fqp8rf/bSMi62kf6faASzT1
 a52HZNCnSeotMiS8aPbNPKv/RdoflvAZcY2HzhmmLPvBj1d7HWz9RA5S+
 UZSF7Rbd4bo+TdT7WlBksmacrWlrtMbeEhwCKwctOukjM44I+CZ3jgwdJ
 5c4YcFVJ9fdrCQdgncca15uggM2QmEmuwb75Y89sAyrzxy/zcMHezMmcf
 HWf63POlKuEZ84c1Cs511I52OeIdpiI+3/Cc/JpGG3jy5i1rk2JWWIwTe
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IZXepJC5
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 1/4] flow_dissector: Add
 PPPoE dissectors
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, gnault@redhat.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, zhangkaiheb@126.com,
 pablo@netfilter.org, baowen.zheng@corigine.com, komachi.yoshiki@gmail.com,
 jhs@mojatatu.com, mostrows@earthlink.net, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, gustavoars@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Allow to dissect PPPoE specific fields which are:
- session ID (16 bits)
- ppp protocol (16 bits)

The goal is to make the following TC command possible:

  # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
      flower \
        pppoe_sid 12 \
        ppp_proto ip \
      action drop

Note that only PPPoE Session is supported.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v3: revert byte order changes in is_ppp_proto_supported from previous 
    version, add kernel-doc for is_ppp_proto_supported
v2: use ntohs instead of htons in is_ppp_proto_supported

 include/net/flow_dissector.h | 11 ++++++++
 net/core/flow_dissector.c    | 55 ++++++++++++++++++++++++++++++++----
 2 files changed, 60 insertions(+), 6 deletions(-)

diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
index a4c6057c7097..8ff40c7c3f1c 100644
--- a/include/net/flow_dissector.h
+++ b/include/net/flow_dissector.h
@@ -261,6 +261,16 @@ struct flow_dissector_key_num_of_vlans {
 	u8 num_of_vlans;
 };
 
+/**
+ * struct flow_dissector_key_pppoe:
+ * @session_id: pppoe session id
+ * @ppp_proto: ppp protocol
+ */
+struct flow_dissector_key_pppoe {
+	u16 session_id;
+	__be16 ppp_proto;
+};
+
 enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
 	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
@@ -291,6 +301,7 @@ enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
 	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
 	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
+	FLOW_DISSECTOR_KEY_PPPOE,  /* struct flow_dissector_key_pppoe */
 
 	FLOW_DISSECTOR_KEY_MAX,
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 6aee04f75e3e..42393af477a2 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -895,6 +895,39 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
 	return result == BPF_OK;
 }
 
+/**
+ * is_ppp_proto_supported - checks if inner PPP protocol should be dissected
+ * @proto: protocol type (PPP proto field)
+ */
+static bool is_ppp_proto_supported(__be16 proto)
+{
+	switch (proto) {
+	case htons(PPP_AT):
+	case htons(PPP_IPX):
+	case htons(PPP_VJC_COMP):
+	case htons(PPP_VJC_UNCOMP):
+	case htons(PPP_MP):
+	case htons(PPP_COMPFRAG):
+	case htons(PPP_COMP):
+	case htons(PPP_MPLS_UC):
+	case htons(PPP_MPLS_MC):
+	case htons(PPP_IPCP):
+	case htons(PPP_ATCP):
+	case htons(PPP_IPXCP):
+	case htons(PPP_IPV6CP):
+	case htons(PPP_CCPFRAG):
+	case htons(PPP_MPLSCP):
+	case htons(PPP_LCP):
+	case htons(PPP_PAP):
+	case htons(PPP_LQR):
+	case htons(PPP_CHAP):
+	case htons(PPP_CBCP):
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * __skb_flow_dissect - extract the flow_keys struct and return it
  * @net: associated network namespace, derived from @skb if NULL
@@ -1221,19 +1254,29 @@ bool __skb_flow_dissect(const struct net *net,
 		}
 
 		nhoff += PPPOE_SES_HLEN;
-		switch (hdr->proto) {
-		case htons(PPP_IP):
+		if (hdr->proto == htons(PPP_IP)) {
 			proto = htons(ETH_P_IP);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		case htons(PPP_IPV6):
+		} else if (hdr->proto == htons(PPP_IPV6)) {
 			proto = htons(ETH_P_IPV6);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		default:
+		} else if (is_ppp_proto_supported(hdr->proto)) {
+			fdret = FLOW_DISSECT_RET_OUT_GOOD;
+		} else {
 			fdret = FLOW_DISSECT_RET_OUT_BAD;
 			break;
 		}
+
+		if (dissector_uses_key(flow_dissector,
+				       FLOW_DISSECTOR_KEY_PPPOE)) {
+			struct flow_dissector_key_pppoe *key_pppoe;
+
+			key_pppoe = skb_flow_dissector_target(flow_dissector,
+							      FLOW_DISSECTOR_KEY_PPPOE,
+							      target_container);
+			key_pppoe->session_id = ntohs(hdr->hdr.sid);
+			key_pppoe->ppp_proto = hdr->proto;
+		}
 		break;
 	}
 	case htons(ETH_P_TIPC): {
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
