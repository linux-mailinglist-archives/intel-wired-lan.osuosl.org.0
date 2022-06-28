Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D5E55C0AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 13:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A84040ACC;
	Tue, 28 Jun 2022 11:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A84040ACC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656415796;
	bh=/kQxrQHIQfjZQ6zHFYa2d+Iig0/vK3hbDfVqlyBXW4E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=isCJpXwg2rbque07Novip8Ql4CLEeqA7AFzgANRW4yF32hQtVkfrxpcJFtdP/+BzG
	 ErfgwlADJ/FkqTyXfRV1Hl5owr02CbM/vBgCkSuN/5kE0AKI8yFvy0kJW6jFdUNGlP
	 5Y8JWKNbF0I7APGmahuU5DuHD+y8VpdyR1NyI1IM8tUwiRi74GuO2MZxLpdGp6EDUq
	 jRjayjNei5bS3OvkZ38UPPso5SwBilDblR4UwaSdVk/VOgBxEZpOYcFpe4feayMUOR
	 6jke2LGfvm1sKbrtUtI944xl1k8A3dEkoemH87B9fWCiBp0Pb4RnjqwHM2AAwsKhK7
	 wrXY1Ds+CsFZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9hhRCy99fgk; Tue, 28 Jun 2022 11:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03A6B400BF;
	Tue, 28 Jun 2022 11:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03A6B400BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFA821BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A21A40A0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A21A40A0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nJpNoBYcd4Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 11:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC0A3400BF
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC0A3400BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="345711398"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="345711398"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="658104070"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jun 2022 04:29:40 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25SBTb6Y005664; Tue, 28 Jun 2022 12:29:39 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 Jun 2022 13:29:15 +0200
Message-Id: <20220628112918.11296-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
References: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656415785; x=1687951785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A3r3EmhL3fwtRlg+q82huXXBvvQ6aLsRZ3mOHYUzX74=;
 b=KiU8uZ+VjvGkQ48zWfqtuA1SXrLylktU85Sa6v/lARHm99szr/0h6C9X
 z1tIdkDDnAQBDGhxaELXF4r91uJt9sheDJLhzbVKY0Jvbt5TJgISXt3Zl
 cC5/bEWWtLmNvjJtGve2VVURXEOnCl/LhgzaY/6sLrSJ0VkH+KK3XzrmH
 RoCTM/J2PSkxuV0QVunO21ePLc7q86tlYMeCfJAAWaer15QavAWWzF53y
 +ROMtfDnoUbwXhqLX5/YzDTmQ8CQl8Yj1qW3Yqt6GOM1E4wt/cDi7jBJY
 JUFfIuORtIKF0cHwd4mIlS03J+6jL032O1AY3JJG7uaQNCl0zeSqi6M7a
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KiU8uZ+V
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 1/4] flow_dissector: Add
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
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
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
v2: use ntohs instead of htons in is_ppp_proto_supported

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
index 6aee04f75e3e..a758b1980e4a 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -895,6 +895,35 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
 	return result == BPF_OK;
 }
 
+static bool is_ppp_proto_supported(__be16 proto)
+{
+	switch (ntohs(proto)) {
+	case PPP_AT:
+	case PPP_IPX:
+	case PPP_VJC_COMP:
+	case PPP_VJC_UNCOMP:
+	case PPP_MP:
+	case PPP_COMPFRAG:
+	case PPP_COMP:
+	case PPP_MPLS_UC:
+	case PPP_MPLS_MC:
+	case PPP_IPCP:
+	case PPP_ATCP:
+	case PPP_IPXCP:
+	case PPP_IPV6CP:
+	case PPP_CCPFRAG:
+	case PPP_MPLSCP:
+	case PPP_LCP:
+	case PPP_PAP:
+	case PPP_LQR:
+	case PPP_CHAP:
+	case PPP_CBCP:
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
