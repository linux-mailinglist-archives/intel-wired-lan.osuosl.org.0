Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80788578209
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 14:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B6E060FBE;
	Mon, 18 Jul 2022 12:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B6E060FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658146740;
	bh=S2AX+dGzyxiaiZcyJq8NYb8F0VKeQ0Zs2JNyHhCgBWo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nhOgFwqlo1pPsCYJO3zJSZSbzQ8G6BCV3L4osYw1JtJj4ZuejErpQsWT0KgW2hfWJ
	 wnS6lXQ0TEPRqafNi8TE2LWuz4irUD93m6yEbHyF51N6LlPKMsMo/ZxCXy6LGMaaBN
	 516ASt5CgyNCnT1ygCtF/Z4+LdpyBO3pLz4OC8CCJc/WwJuMKgW6N9G4AMSMRpUrd0
	 T/ICVsa7xrcxTKPEO9PTAs0C6s5tduU44fF+c/eUYs2ItqgQrDhMqqFr918gA1btrh
	 7C41UCccDIrxHlYK/CRHG4N03WEjqp7kqNbkaA19IM+mwiZva4JcU2hA6J1SpbmT9u
	 5om0gWLnTsBhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dFWyDn5PRHGh; Mon, 18 Jul 2022 12:18:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D24A860D65;
	Mon, 18 Jul 2022 12:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D24A860D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6FC31BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0BD7408C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0BD7408C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsvDmerWux2T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 12:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D87AC4036F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D87AC4036F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="284961600"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="284961600"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="601204856"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jul 2022 05:18:45 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26ICIfCt016026; Mon, 18 Jul 2022 13:18:43 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jul 2022 14:18:10 +0200
Message-Id: <20220718121813.159102-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
References: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146730; x=1689682730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Yu6GSiJBdh7xITPMm8QeqQ8FofLc192P1AewkOJXmo=;
 b=hWYe5IHXnH6L3oMjGtkHgo39gMyQkbHveNQZXmz8WP1IbZgQBMjNjh8i
 MJJ+6thllIu4NUA4Qhs7XNGfdIOnuT07FrhVyM0Q34CRWpI7QBXulR1Mv
 8FEvVU0avRUcHsL49tBKULymYxxbbYF8Zk+ArnRabvf2jZq0mNQ5pJWEa
 4CmCuPIOF+33x88d3rKj2l4E4urf68EI2ZBN0xzh6qoQiDIr6hkk87JBp
 56wqtrXF9zw6fy9+02IVRCI70EozUAxK0e51nWkKgaGLdN1vqqH0ADQJ5
 yGiOKM4FgVz0xcEtY22A7lmBdzhi/49T0I0KFYHiZlz55oYvZSyfH+wk4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWYe5IHX
Subject: [Intel-wired-lan] [RFC PATCH net-next v6 1/4] flow_dissector: Add
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
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Allow to dissect PPPoE specific fields which are:
- session ID (16 bits)
- ppp protocol (16 bits)
- type (16 bits) - this is PPPoE ethertype, for now only
  ETH_P_PPP_SES is supported, possible ETH_P_PPP_DISC
  in the future

The goal is to make the following TC command possible:

  # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
      flower \
        pppoe_sid 12 \
        ppp_proto ip \
      action drop

Note that only PPPoE Session is supported.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v6:
  * make check for ppp proto more generic
  * fix remaining byte order issues
v5: fix endianness when processing compressed protocols
v4:
  * pppoe header validation
  * added MPLS dissection
  * added support for compressed ppp protocol field
  * flow_dissector_key_pppoe::session_id stored in __be16
  * new field: flow_dissector_key_pppoe::type
v3: revert byte order changes in is_ppp_proto_supported from
    previous version
v2: ntohs instead of htons in is_ppp_proto_supported

 include/linux/ppp_defs.h     | 14 ++++++++++
 include/net/flow_dissector.h | 13 +++++++++
 net/core/flow_dissector.c    | 53 +++++++++++++++++++++++++++++++-----
 3 files changed, 73 insertions(+), 7 deletions(-)

diff --git a/include/linux/ppp_defs.h b/include/linux/ppp_defs.h
index 9d2b388fae1a..b7e57fdbd413 100644
--- a/include/linux/ppp_defs.h
+++ b/include/linux/ppp_defs.h
@@ -11,4 +11,18 @@
 #include <uapi/linux/ppp_defs.h>
 
 #define PPP_FCS(fcs, c) crc_ccitt_byte(fcs, c)
+
+/**
+ * ppp_proto_is_valid - checks if PPP protocol is valid
+ * @proto: PPP protocol
+ *
+ * Assumes proto is not compressed.
+ * Protocol is valid if the value is odd and the least significant bit of the
+ * most significant octet is 0 (see RFC 1661, section 2).
+ */
+static inline bool ppp_proto_is_valid(u16 proto)
+{
+	return !!((proto & 0x0101) == 0x0001);
+}
+
 #endif /* _PPP_DEFS_H_ */
diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
index 0f9544a9bb9e..6c74812d64b2 100644
--- a/include/net/flow_dissector.h
+++ b/include/net/flow_dissector.h
@@ -277,6 +277,18 @@ struct flow_dissector_key_num_of_vlans {
 	u8 num_of_vlans;
 };
 
+/**
+ * struct flow_dissector_key_pppoe:
+ * @session_id: pppoe session id
+ * @ppp_proto: ppp protocol
+ * @type: pppoe eth type
+ */
+struct flow_dissector_key_pppoe {
+	__be16 session_id;
+	__be16 ppp_proto;
+	__be16 type;
+};
+
 enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
 	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
@@ -307,6 +319,7 @@ enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
 	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
 	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
+	FLOW_DISSECTOR_KEY_PPPOE, /* struct flow_dissector_key_pppoe */
 
 	FLOW_DISSECTOR_KEY_MAX,
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 6aee04f75e3e..237d396b6e41 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -895,6 +895,11 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
 	return result == BPF_OK;
 }
 
+static bool is_pppoe_ses_hdr_valid(struct pppoe_hdr hdr)
+{
+	return hdr.ver == 1 && hdr.type == 1 && hdr.code == 0;
+}
+
 /**
  * __skb_flow_dissect - extract the flow_keys struct and return it
  * @net: associated network namespace, derived from @skb if NULL
@@ -1214,26 +1219,60 @@ bool __skb_flow_dissect(const struct net *net,
 			struct pppoe_hdr hdr;
 			__be16 proto;
 		} *hdr, _hdr;
+		u16 ppp_proto;
+
 		hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
 		if (!hdr) {
 			fdret = FLOW_DISSECT_RET_OUT_BAD;
 			break;
 		}
 
-		nhoff += PPPOE_SES_HLEN;
-		switch (hdr->proto) {
-		case htons(PPP_IP):
+		if (!is_pppoe_ses_hdr_valid(hdr->hdr)) {
+			fdret = FLOW_DISSECT_RET_OUT_BAD;
+			break;
+		}
+
+		/* least significant bit of the most significant octet
+		 * indicates if protocol field was compressed
+		 */
+		ppp_proto = ntohs(hdr->proto);
+		if (ppp_proto & 0x0100) {
+			ppp_proto = ppp_proto >> 8;
+			nhoff += PPPOE_SES_HLEN - 1;
+		} else {
+			nhoff += PPPOE_SES_HLEN;
+		}
+
+		if (ppp_proto == PPP_IP) {
 			proto = htons(ETH_P_IP);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		case htons(PPP_IPV6):
+		} else if (ppp_proto == PPP_IPV6) {
 			proto = htons(ETH_P_IPV6);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		default:
+		} else if (ppp_proto == PPP_MPLS_UC) {
+			proto = htons(ETH_P_MPLS_UC);
+			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
+		} else if (ppp_proto == PPP_MPLS_MC) {
+			proto = htons(ETH_P_MPLS_MC);
+			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
+		} else if (ppp_proto_is_valid(ppp_proto)) {
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
+			key_pppoe->session_id = hdr->hdr.sid;
+			key_pppoe->ppp_proto = htons(ppp_proto);
+			key_pppoe->type = htons(ETH_P_PPP_SES);
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
