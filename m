Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLYKKXomGWq9rAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 07:39:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4B75FD697
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 07:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AC896109F;
	Fri, 29 May 2026 05:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOAtQmOnR-qE; Fri, 29 May 2026 05:39:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E43D4610A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780033142;
	bh=scjxYyFpRmQYuRgng8VwXwWgC9x8xEgFY8Y2guA6c+c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tPGTpCGMmpSPB7vBWZLZBYFfzOh9MYwh31h60lNuAwwcHFfnkUv1Ibywbw3veb8pA
	 JcqX65XBbTZu0wH/DlUU5R8yF0dUWNB+uRUxZhHrnUaaRz5fhfNGPGUAUI0G1dLVzY
	 N0dNqnT7p1Ck1OGCoVyl3DbnGReg+RV27gKablLUnOWJWO8brCSLBEUS9hJ0FLedW4
	 wgpKI5Q2FUzm+8CR/36hw5NK+QJMY1JOJSddBhpGR3QnbPiNyp/ql6EMA9LmQpQVAu
	 wG34MqoNo2cfgxRxaXZ+YDeRVb4g96rMChXz7vgArjbXVO8aubgpxXJDDUc9SGQfsw
	 WTeFtqOIcjEeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E43D4610A7;
	Fri, 29 May 2026 05:39:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B312928E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:39:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9458282BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZJseJfWntFKw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 05:38:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.173.142.173;
 helo=smtp-usa2.onexmail.com; envelope-from=zhaojinming@uniontech.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2646882BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2646882BC3
Received: from smtp-usa2.onexmail.com (smtp-usa2.onexmail.com [35.173.142.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2646882BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:38:56 +0000 (UTC)
X-QQ-mid: zesmtpsz5t1780033079t1893b861
X-QQ-Originating-IP: bqlM5PUpKuW9q4mcwmUyQdBpA/ORLNdebwjuAb5O2kU=
Received: from localhost.localdomain ( [124.126.19.250])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 29 May 2026 13:37:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 6071481676437275183
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
Date: Fri, 29 May 2026 13:37:33 +0800
Message-Id: <20260529053733.764996-3-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260529053733.764996-1-zhaojinming@uniontech.com>
References: <20260528171202.2659491-3-horms@kernel.org>
 <20260529053733.764996-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NT3X+pH9p5L2pZ62hzv13pstuF0ARHVhJdEp033zSDDgVYYJ49wBEZ8O
 jAnIyrQMtCqCsDWjM6s+o7cnke5W0pmge92VDhcN1lVFz1FpJKrAkZ0vsQyAEXp8DaIMRH1
 W0uDrE8Y6h/dpf6DPHN3ToMRm/hAHqYBGWIKNwnYbo/j5SwOP+KiUjHk8770cWc9KZTQygX
 IHXOxj7YNHwBkHmlOEz3+TBt68AMg10Sos+P5xpTYaCPkw9LVSjK5U8yiUL6zBa14QUOkYb
 CM3IQTMJDs81J25VHSyWsbN8xEBibKSByicxUSQt5OBfdzQAhUr1H+7TtzYzzECwHRWHn8S
 UT/a+vhGnU60JcULN2bFalA8rlzS8hVXjZ2zpa7JCUIUwqUs+E2ozu/Op9k7GfhDHD7s6aY
 WaY09qQHa7XGAFhQhU3NxEUVLMVTJNkZ6Fm90J6Azpnr/QSfacoO3irXGIfB6lffXdzvH7V
 A37m1bZB9GFy4PdY1UcaINE0fGuHEE8B2Fq8A5YDlx7gkU2gM1p96ObNio0aSnMrMi59SAX
 NP88qInBhm1q/7HQw8eqRVOZkcATpFkkxTAOuKJDxRxm3oVUqTQ5vJMhLKUN60HWiJpZM1Q
 7pOVh7DVELcLfL61xp+21pgMKHMLYyKmSVuga9e9t1YUizF9ifHkxK0NwDCAtiJrkFqDcGG
 YR5joZ45bgWPZqXgXgFFSyPjm/VD9Hh3e1YLQHgkfMyEEZJ7ZJcFbdqZdw0reqzCeSPVwHJ
 8+xHyiBhn0OXDcqOGb5OZRETN3NEJSW8/+e1C+6CN9vA57ZYc+0X9Ith8gzoZv/5PKYmTSs
 7tKy99CF+8O1lMHcSCooWIfe+9+TLi5egpL8nR3bZxb8iROFU97ut7TbbBNYW/Wd+AwbSKM
 x2wkdPoHLhwBjcOTsGb2rk1R9GBD+nfresGvxqNG/l3DQwp0ixBiw0a6+ENDpCv+6xDVZA5
 cu/0PP4kUSnX6VBRJ/1iXqua1ggk1GYxy+XDaj1fplfDiIEGyLfq/KhbL3F89WJTw112cEw
 tSpkGWDY2bjvvtHzLAyLQY0TvxfRlMQMY2UyqU1d4j7KXWb9V4MymYjKjK5DcbneVgfLX3z
 EOy0HxNapHA97ZHiI4FTFS52M/Ltsk0IQ==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uniontech.com; s=onoh2408; t=1780033098;
 bh=scjxYyFpRmQYuRgng8VwXwWgC9x8xEgFY8Y2guA6c+c=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=bYIDdlP3OJF2+o3nK2zwXklVHBe4CfOM2F9K6aJSDIl1U8Hyj/Pxr0xADvJEuSpLt
 Zz/8bkb5Njx7Ds+9fgBkYVuZeJaS2hMClz1VtmZhFWT6126weJ+uclhudh9i57Ni0u
 IGVVqt9I8r3zXspIuigoRk9BS82DpY7fdnqV/ZFE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=uniontech.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=uniontech.com header.i=@uniontech.com
 header.a=rsa-sha256 header.s=onoh2408 header.b=bYIDdlP3
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak in
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,uniontech.com:mid,uniontech.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[zhaojinming@uniontech.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1E4B75FD697
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
index 99bb308255cc..7240152f1655 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -4345,12 +4345,16 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 
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
@@ -4375,12 +4379,12 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
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

