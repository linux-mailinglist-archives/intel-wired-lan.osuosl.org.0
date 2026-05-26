Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKw4Kdq7FWrKYQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F45D8B22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A018683684;
	Tue, 26 May 2026 15:27:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52zIq6ziYW68; Tue, 26 May 2026 15:27:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D023C8364B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779809237;
	bh=Nu4cPXwroNrz2D4CRSWAeI/sb3BYOBt4r8Pa4FG9tSg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=knUINHV6QAwlyBSWFWYPE2esPt1RXpPYy9d0Yoys/xn2QiCAAjHTjtCI+jysIyvKN
	 V4vNQKXdbR01aDoateAN3Xcv/84n7jjAr4NfavoXTWMgAO1IJ7u1JTiwT2+k7W7Hzw
	 XgRf0ipLxpy0iOh42hHOEcVMEc95O0lmK8Wyf2XJKnO9v85TN/0sKumj1cnvVvuTMp
	 F3E0t5SxGPGA98cGmxG/3zeCQDChFKrGM8KUcxxLkfuGsnWEEcbx/9B/NONn9PBe+e
	 jovdGjh3BFFai/uoQui0XxbFe7IYXsXCQ+GgxLszFwZUZjpmawpAGZ57z3k6/aBZdg
	 V3ZFoF8xY+1vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D023C8364B;
	Tue, 26 May 2026 15:27:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 696B1297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 02:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F27940414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 02:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3p8aVmhY6QFQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 02:18:54 +0000 (UTC)
X-Greylist: delayed 311 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 May 2026 02:18:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 20FE64033F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20FE64033F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.173.142.173;
 helo=smtp-usa2.onexmail.com; envelope-from=zhaojinming@uniontech.com;
 receiver=<UNKNOWN> 
Received: from smtp-usa2.onexmail.com (smtp-usa2.onexmail.com [35.173.142.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20FE64033F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 02:18:52 +0000 (UTC)
X-QQ-mid: zesmtpgz8t1779761542t12c70da1
X-QQ-Originating-IP: 9R+XQFF3b2N4mWBsn5+y7WnzSY0UZJ/G8lJY3+QFoic=
Received: from localhost.localdomain ( [1.202.39.170])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 26 May 2026 10:12:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 3026031675004668251
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ZhaoJinming <zhaojinming@uniontech.com>
Date: Tue, 26 May 2026 10:11:54 +0800
Message-Id: <20260526021154.2774526-1-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NN51gi9eLBwab6pKm0u/ZtOm3QTXZ4sXDii3qjGvQj0OnHie56EI2lt3
 uqKT+Rw/s+fxPq0GqpQGHDdETFEDaPw6+d2OITLegkYCishog8GfT3FUFHrIQ5uRwWM5Gip
 NjcCDZyHUW3dB5CHPPAXGOQOACLXUoImK4F5/Uvedo1ZXK9GIgy3oofGD3jozH33MrHdNMv
 J5vbwDkLz1yyVHWH5l1KAPLHArjHoB6gBKy22k/JKp2RFxFAuOQXw5DsUykN79vjLfpTIVq
 2hB6bX7/n9UbxG/bVm4OkEsf/vB1dlRs/L+mlWf1n5BRu/uzM6CTmM2HLO1HvELxhBPa7Os
 pXu0qf0kOMNBFXKfSLL7tGzfz1J735YyLFPRCELei24eeVxFqnCqwsc9focS8KscB2gVC8G
 /DJg4pg7MEX//aOmfSm8tlWcQhm9xaHse3kywD7DzsIs8uZ4OxlG4kYuGZZCG2322ipPTQg
 SoiMN6fBymZKDtzfUlU6l6gS5ldOUirpgzgLOvOVuFpMQxiHtpeDUAJu80eoXBiUwQdwNK0
 QX9DYzEPTrYLvg6XgjPn2gOFMrgV7xHuilogEkMedyKI/2ezcegySDZfeeqT8xwLLBtdpGU
 DStcvPEa/fLxBRMJcQCQwng0PmHrWWGPygkEackVZBslgVq3lEbGsBgHHRiycSCvc9LvPee
 P6756tvbtBPPNOnQLaHNlA28BW9GLiB1LPuul203hP9Ggovv7ojQYgunWgWreoHTAWGPTSQ
 8eEmqFtvjUS3WqA+fOx9SZrFL23UG/n756P+fLfFb6ZrUIEYnjrqDREwT8pRhEGcN1/RDnJ
 cbFGyWyaCxg8OE9Jg7FaMTCKh3HLr7HShNfmHo7Ubelx7f7gBNsQFDmrqLfQ3vClLPFv4vF
 aj03f6UVIMubA3tuDLJoQltHte0wc3iVDfhMptdxxzS7NDkHJbUmplZw8n6q1rC21YwPHnO
 IbKD/FhKcpdcK0BedtEpIx2EOWuSE7gJprYV+A8Wc/q+yAa0qUdafiVZRLrc7LEsmV/MFIf
 aOfqy4FZmRbjJooNYg
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
X-Mailman-Approved-At: Tue, 26 May 2026 15:27:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uniontech.com; s=onoh2408; t=1779761904;
 bh=Nu4cPXwroNrz2D4CRSWAeI/sb3BYOBt4r8Pa4FG9tSg=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=jzh9liINCp9lxrj1HyMN7heypJxHk3nJUHF0h/YxBq4hsixXpl28GYbK8Qfz0rYv/
 I9bmbVI1nkHWUVyuK52+X0IIRCtX4hjsbaZWDb/Do83zGjYyuTgh8Po2j0/QygRWz1
 ofHvTrU3ccxCULVVu+BHEOUE7lJ/7gU2yIT1fvFg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=uniontech.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=uniontech.com header.i=@uniontech.com
 header.a=rsa-sha256 header.s=onoh2408 header.b=jzh9liIN
Subject: [Intel-wired-lan] [PATCH net] ice: dpll: fix memory leak in
 ice_dpll_init_info error paths
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[uniontech.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[zhaojinming@uniontech.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:zhaojinming@uniontech.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,uniontech.com:mid,uniontech.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[zhaojinming@uniontech.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.929];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 546F45D8B22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Several error return paths in ice_dpll_init_info() directly return
without freeing previously allocated resources, causing memory leaks:

- When de->input_prio allocation fails, d->inputs is leaked
- When dp->input_prio allocation fails, d->inputs and de->input_prio
  are leaked
- When ice_get_cgu_rclk_pin_info() fails, all previously allocated
  inputs/outputs/input_prio are leaked
- When ice_dpll_init_pins_info(RCLK_INPUT) fails, same resources
  are leaked

Fix this by jumping to the deinit_info label which properly calls
ice_dpll_deinit_info() to free all allocated resources.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 892bc7c2e28b..3cf098e67563 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -4341,12 +4341,16 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 
 	alloc_size = sizeof(*de->input_prio) * d->num_inputs;
 	de->input_prio = kzalloc(alloc_size, GFP_KERNEL);
-	if (!de->input_prio)
-		return -ENOMEM;
+	if (!de->input_prio) {
+		ret = -ENOMEM;
+		goto deinit_info;
+	}
 
 	dp->input_prio = kzalloc(alloc_size, GFP_KERNEL);
-	if (!dp->input_prio)
-		return -ENOMEM;
+	if (!dp->input_prio) {
+		ret = -ENOMEM;
+		goto deinit_info;
+	}
 
 	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
 	if (ret)
@@ -4371,12 +4375,12 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
 					&pf->dplls.rclk.num_parents);
 	if (ret)
-		return ret;
+		goto deinit_info;
 	for (i = 0; i < pf->dplls.rclk.num_parents; i++)
 		pf->dplls.rclk.parent_idx[i] = d->base_rclk_idx + i;
 	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
 	if (ret)
-		return ret;
+		goto deinit_info;
 	de->mode = DPLL_MODE_AUTOMATIC;
 	dp->mode = DPLL_MODE_AUTOMATIC;
 
-- 
2.20.1

