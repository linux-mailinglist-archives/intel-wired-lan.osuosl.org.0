Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F068559A8B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 15:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 699EF82907;
	Fri, 24 Jun 2022 13:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 699EF82907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656078158;
	bh=U4OTfGjXZHXlfJm/gGF3GuT77gBmNoATndXWynzq2Mo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v1tvYsy+GfmpA0pNkCSZVGYWLlReX4ZSq50v39TpD6hLcmmigHr+ZxOKescOm/r8P
	 Met1/Cb0X4l5tcJizP+d8iun9ANOaMGikAwoz8xUVG2BhjcBEoGyYWYMyvdVLKXFg1
	 tjelyFOu1o96AQ9y+XBB0zD3EOA1bwpRlAAUhJGljbsfvqDmKsk8wuEPmKkZs03izW
	 eSaFcqRe0mwbClN/RkRhQWFB0L3nwwJ/k7gDfJZiUL3ssKnHmtHTxzz5W4pkes1IcC
	 PyIBNrGiPISAQgAZkNswrzfUp9+SAOZOOedtsuBgI3EANCpi9FLjEn5hr5piNzfQgL
	 q+IY1fPBa8liA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KA1-wuOzZB0J; Fri, 24 Jun 2022 13:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4263382E1A;
	Fri, 24 Jun 2022 13:42:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4263382E1A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 640571BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BA90408C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BA90408C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4f3jzwYbHHY2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 13:42:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7960D408B4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7960D408B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="278549258"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="278549258"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="539286214"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 24 Jun 2022 06:42:21 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25ODgI7X005567; Fri, 24 Jun 2022 14:42:19 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Jun 2022 15:41:31 +0200
Message-Id: <20220624134134.13605-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
References: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656078147; x=1687614147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WnVfi8H+DDoDIUjS23ueUm3dHPnJRSodAxg1Sa60KF8=;
 b=C+kn+Qdwj2KTwmJtUEsqyMde8TphG9zOW+Y1FhU7cMvma7NwsuGseSQo
 B/x9QFq/0TOuqCZuzfQOVfvNEjdRn9o67f1FY0UWX9JXQaxOEbBVhhu9Z
 x0EjpjyJF5qELkEIxRtGRhTO0wNyqDGywekuRszyHmEOS8RcOwhzF7oxA
 7tdz1vMtOabwfYQDWErxYuLTaktwIOTvlHIrV+NFAehF6XwmsUjuzCslG
 mSdeiyLW2mnEdjTeYosVzza5hcoJGQPXrYEMqmhauFzuvJ7Aem9a9ehNx
 sBLFYEVserFhj957VXVJOS6dFsi8HZsZU2AsI+jHDIuAaFlRG8qDhsDIJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C+kn+Qdw
Subject: [Intel-wired-lan] [RFC PATCH net-next 1/4] flow_dissector: Add
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
 elic@nvidia.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 zhangkaiheb@126.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
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
 include/net/flow_dissector.h | 11 ++++++++
 net/core/flow_dissector.c    | 51 +++++++++++++++++++++++++++++++-----
 2 files changed, 56 insertions(+), 6 deletions(-)

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
index 6aee04f75e3e..41933905f90b 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -895,6 +895,35 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
 	return result == BPF_OK;
 }
 
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
@@ -1221,19 +1250,29 @@ bool __skb_flow_dissect(const struct net *net,
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
