Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB056B997
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 14:25:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24318847BC;
	Fri,  8 Jul 2022 12:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24318847BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657283108;
	bh=FJ0x+58tMfe/gBYvLNsRMpqnbIX6V/A9fS9p4zaXxBc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZQddq52f3yYarVjSqnF878Z/F+2kO8+AB/Wq5eDlnZn9jYqnfeHwNokTb8jyvSRW/
	 mmq/qWFl8Wi2qC1RjY1RBiYQCj+rUk/uDA/+lhRUX2IZFQkC9rc2QQ0YBz+xRJKUe1
	 gpshMqR5D5vevSlKcqOFp4/GX4vxUqAR+t3iS1uuL5NMmnI+XBjPi1xnKmWZjnmPqb
	 yncIPxxS67DEWUA4FmtOEgwTbnAQeNU2+1znB6nzpTOHEw9gu8wSbCw6El8AE9Nr4/
	 xSOk1ES8nG9B7//STk0Zo5sXWdtMX3cO+f3dEoV4XopY51l5jCsb3Ff30xVaByNJem
	 awWO8ss8/c3Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o19S3iRjYkRo; Fri,  8 Jul 2022 12:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0694A847B4;
	Fri,  8 Jul 2022 12:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0694A847B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB4551BF32A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A58E34014C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A58E34014C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sP2U8nKH911P for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 12:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF851415CF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF851415CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="285010638"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="285010638"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 05:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="626690552"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 08 Jul 2022 05:24:52 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 268COncZ014111; Fri, 8 Jul 2022 13:24:50 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri,  8 Jul 2022 14:24:18 +0200
Message-Id: <20220708122421.19309-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657283097; x=1688819097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vhu0bGUnfx4aV9E3l3WX7x6CMLQLOMg9VAG97jK0HNw=;
 b=WYsok9PxA1MvDX1U4blm809TYYbl3IKc38c7h62/xTaF3vQu2Z0rmJN8
 1O3o32OFK9xlQDf7yuCMIp9x9Mk5S8xuFucglFbAyA+hbCZF+J3/eu2fj
 beufwkv89vaQ70yzrwuUg6PWXRO+h1UcHOVg5BgsxqeLbermAH8L1yztg
 AvjD9auKL8QCtQ4l7QGtRKYAWDOeIR5lKPlKc6Fb+Q7f8K5gP+sD0Nxgl
 wVHIDPwAKqxmdizOOt0p4bULxOCYoiyExvvI+fQBpjeooCoHwz8ZJMWtE
 Vtw1cXgIhVsaXFmXzFoWseNnHEonN2VqC7qCGeYVDDp52tVkMnCo9a6xU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WYsok9Px
Subject: [Intel-wired-lan] [RFC PATCH net-next v4 1/4] flow_dissector: Add
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
v4:
  * pppoe header validation
  * added MPLS dissection
  * added support for compressed ppp protocol field
  * flow_dissector_key_pppoe::session_id stored in __be16
  * new field: flow_dissector_key_pppoe::type
v3: revert byte order changes in is_ppp_proto_supported from
    previous version
v2: ntohs instead of htons in is_ppp_proto_supported

 include/net/flow_dissector.h | 13 ++++++
 net/core/flow_dissector.c    | 84 +++++++++++++++++++++++++++++++++---
 2 files changed, 90 insertions(+), 7 deletions(-)

diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
index a4c6057c7097..af0d429b9a26 100644
--- a/include/net/flow_dissector.h
+++ b/include/net/flow_dissector.h
@@ -261,6 +261,18 @@ struct flow_dissector_key_num_of_vlans {
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
@@ -291,6 +303,7 @@ enum flow_dissector_key_id {
 	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
 	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
 	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
+	FLOW_DISSECTOR_KEY_PPPOE, /* struct flow_dissector_key_pppoe */
 
 	FLOW_DISSECTOR_KEY_MAX,
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 6aee04f75e3e..3a90219d2354 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -895,6 +895,42 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
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
+static bool is_pppoe_ses_hdr_valid(struct pppoe_hdr hdr)
+{
+	return hdr.ver == 1 && hdr.type == 1 && hdr.code == 0;
+}
+
 /**
  * __skb_flow_dissect - extract the flow_keys struct and return it
  * @net: associated network namespace, derived from @skb if NULL
@@ -1214,26 +1250,60 @@ bool __skb_flow_dissect(const struct net *net,
 			struct pppoe_hdr hdr;
 			__be16 proto;
 		} *hdr, _hdr;
+		__be16 ppp_proto;
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
+		/* least significant bit of the first byte
+		 * indicates if protocol field was compressed
+		 */
+		if (hdr->proto & 1) {
+			ppp_proto = hdr->proto << 8;
+			nhoff += PPPOE_SES_HLEN - 1;
+		} else {
+			ppp_proto = hdr->proto;
+			nhoff += PPPOE_SES_HLEN;
+		}
+
+		if (ppp_proto == htons(PPP_IP)) {
 			proto = htons(ETH_P_IP);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		case htons(PPP_IPV6):
+		} else if (ppp_proto == htons(PPP_IPV6)) {
 			proto = htons(ETH_P_IPV6);
 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
-			break;
-		default:
+		} else if (ppp_proto == htons(PPP_MPLS_UC)) {
+			proto = htons(ETH_P_MPLS_UC);
+			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
+		} else if (ppp_proto == htons(PPP_MPLS_MC)) {
+			proto = htons(ETH_P_MPLS_MC);
+			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
+		} else if (is_ppp_proto_supported(ppp_proto)) {
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
+			key_pppoe->ppp_proto = ppp_proto;
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
