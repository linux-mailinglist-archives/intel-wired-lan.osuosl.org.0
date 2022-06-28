Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0E655C0B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 13:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8121382437;
	Tue, 28 Jun 2022 11:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8121382437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656415804;
	bh=UYetqUPMasGfo1Xmm76dBixoUomVcsXGh9128GCvmAc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=izEtWscMoZ63P1dvfuPj4bPCCuqS9SCsUFNrApISxkFEQ32nhMOxJxpUNul2Q9cFJ
	 i8gMk7roOWEW4zck6nUxMVqVank/LGKTuNreVG+SU+a1rfvQFC7SSDF5BMh4a8oi3N
	 V2wrzEeSdY4NxRqz8pSn7wdSXKk8FLn3NJD1tKkU8R9w0osku3g+5wA+6RWjfcaeIY
	 u/HWk2SLonJgh7pmKorbsaMXn8wgn57858Ceqboy7HowOdUj8KCV2k6rZAZTFbDwQx
	 PlAx8d972RcVygN3TBgbSQ81+Z1H+qsXm6knq37aSpRElfFzOABNUNThM9ChoygY4G
	 /uaEKb+QRIfIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqcUqNIJftyT; Tue, 28 Jun 2022 11:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7299A81771;
	Tue, 28 Jun 2022 11:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7299A81771
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 383F01BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA0A840A0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA0A840A0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iN9-kEnWoRiD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 11:29:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F7C440ACC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F7C440ACC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="279260750"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="279260750"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="680007288"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2022 04:29:43 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25SBTb6a005664; Tue, 28 Jun 2022 12:29:41 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 Jun 2022 13:29:17 +0200
Message-Id: <20220628112918.11296-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
References: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656415788; x=1687951788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tHizgFNnSXkpG46Dn3nJDt/CPuSpOnuIsvpe7rCWWTo=;
 b=TxB+97a+C15boBEwve8h/pn/judHDDzkLOE+ZB/IUBgZMOkIQ+6TQxl1
 Gv2dtBcSe39W7lyNUo39zV6icqe43p3/DY1wFyBdzlo5eW8xDQqT5CCc5
 eDZrvVIPiMkanSnTyiBtawigcapCurwXoua3F6kMBeRz8E7/1MOnIFS0e
 Knt+YCaLt6A1xWXP4hFtjPMOqapwjFWWVYCTojnxELwkd5+rgqyzSsef3
 XKVsVRQSVC/nuVHDhYVcrfW9AZsNUYS9RXbag7rZcTp87/Qc3Z2LqUJi5
 e2Dho/zPLfeEb0WhgT+lkH1aBrHDw2AKQ4FxZt1iOdVNMeuK0RF9ekXWr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TxB+97a+
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 3/4] flow_offload:
 Introduce flow_match_pppoe
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

Allow to offload PPPoE filters by adding flow_rule_match_pppoe.
Drivers can extract PPPoE specific fields from now on.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/flow_offload.h | 6 ++++++
 net/core/flow_offload.c    | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/include/net/flow_offload.h b/include/net/flow_offload.h
index 6484095a8c01..50283a30b97b 100644
--- a/include/net/flow_offload.h
+++ b/include/net/flow_offload.h
@@ -72,6 +72,10 @@ struct flow_match_ct {
 	struct flow_dissector_key_ct *key, *mask;
 };
 
+struct flow_match_pppoe {
+	struct flow_dissector_key_pppoe *key, *mask;
+};
+
 struct flow_rule;
 
 void flow_rule_match_meta(const struct flow_rule *rule,
@@ -116,6 +120,8 @@ void flow_rule_match_enc_opts(const struct flow_rule *rule,
 			      struct flow_match_enc_opts *out);
 void flow_rule_match_ct(const struct flow_rule *rule,
 			struct flow_match_ct *out);
+void flow_rule_match_pppoe(const struct flow_rule *rule,
+			   struct flow_match_pppoe *out);
 
 enum flow_action_id {
 	FLOW_ACTION_ACCEPT		= 0,
diff --git a/net/core/flow_offload.c b/net/core/flow_offload.c
index 929f6379a279..d13d293e3de2 100644
--- a/net/core/flow_offload.c
+++ b/net/core/flow_offload.c
@@ -223,6 +223,13 @@ void flow_rule_match_ct(const struct flow_rule *rule,
 }
 EXPORT_SYMBOL(flow_rule_match_ct);
 
+void flow_rule_match_pppoe(const struct flow_rule *rule,
+			   struct flow_match_pppoe *out)
+{
+	FLOW_DISSECTOR_MATCH(rule, FLOW_DISSECTOR_KEY_PPPOE, out);
+}
+EXPORT_SYMBOL(flow_rule_match_pppoe);
+
 struct flow_block_cb *flow_block_cb_alloc(flow_setup_cb_t *cb,
 					  void *cb_ident, void *cb_priv,
 					  void (*release)(void *cb_priv))
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
