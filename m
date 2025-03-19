Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D6BA68989
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 11:26:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA22740876;
	Wed, 19 Mar 2025 10:26:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6f17DR8zux10; Wed, 19 Mar 2025 10:26:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38419407BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742380016;
	bh=bVqYEppXH5Ay8ZuM4WwVPsIdI6zdDIi+KShL59kFbbY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KmldDSACf3xBsTBG7AbgOk3rURcxLbapf3LEQT0aIfQA7C1ID8Et3lvmJuFzq8Pno
	 22DI5Z+ggf57y5T7cvzm6wLMwJjxPl8vbhcMs4YaU2w3XwDuE0IKWqFfXNcYrVL7lk
	 NLn7NOgbWNuPlfd6dJniDtytP+F0WhRuBbtqiTLGWyDLey534sk4aiWsxXMRJmTe9n
	 AUCMXNVyHmY35xnKl94fO6onTbOXbiay8sLB/4dV9fPLWDBDF97WFnVxd9CXAe3Tzb
	 x34AtGVaATyHon+NlOs1igGQD80xENiAG5s5aqgCe7bcnAb8bOdHFRXh6m7GhuC+yq
	 4bf1J8ienedtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38419407BB;
	Wed, 19 Mar 2025 10:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E9BBCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69AC98146A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C2NwsKXdufbp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9283E81468
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9283E81468
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9283E81468
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 19 Mar 2025 11:26:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-igb_irq-v3-3-b9ee902143dd@linutronix.de>
References: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
In-Reply-To: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Rinitha S <sx.rinitha@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1224; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=xpJo7BniFeJ3qScURG1VqRE0BIITF7LM9GR7lZ/lQ20=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn2pvlwE/G17ZGwoTPzdOYfKeLHidnmvgijXbf2
 votplR2quaJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ9qb5QAKCRDBk9HyqkZz
 gpA+D/4kOhRIgomm0Ihhn1CykXlP9YXhPZl2ltxqFBZRFZ4ENKMa5rQJeNbhV9mwhVew7yVYJzF
 5WCHACvaOn9pA3OoAsIYpUlTaI5u8UE79xRxnTaW3WYxVjEnXNZCPFTnGA7ZyiM6/s+GVB1eIDC
 U11JQF89MGI2xpu91xaTfxwkTZ0Exr8TdOtR4ep9XS0QdnsIcivVbBt2onSvSYSF3v6ZaK+5VHW
 2WFZjjbk8MtxnIubCio7LgMGfSgz7ZDu/0gAUtLqOlpADbzM4zMJucrZWPpae0+uzsTLD7HWvvx
 3u1RkxeLWQuAEp1C6EQopr/6Xa/j/ljoUtG4F+a6GK1eIeNGN4CeOoS2BebMbV59LKm/JOFr0V9
 /7MGAj1f6a0tXx1uze8N6opYbljdGoUjE+q3ETHUMJfqDQAnXV9W4h8gmVr2cWfOEF1QCSSGd3b
 bk5afaC1pboX60gk2PTpok3zNpcG8ZnCfq0ElHFbwWt1SY5zo4/9/y4a/71/VIcYNDaJUg1tn/i
 anqO+j0UolNrOiqMbWRgG3Vqqsn2+cxz3WyC9aIjxDF6lcDuDR22ysqhhjrGwVLKah06hYq4hog
 e/pBGFjLFceAcfqpnWL/Id3+07bmjIvutirHqlFK4fKd+kRlr60NJ6/MH1yrJqOaLxG2Au1GWbT
 rQ95mNxcGY9rkiw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742380009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bVqYEppXH5Ay8ZuM4WwVPsIdI6zdDIi+KShL59kFbbY=;
 b=VRC3lGlv37Y8RgWJR26Eoztiy5KVcUgjLKLKVmKImq1iGtGn9tJF8T4NbxTu9DS1dL8OpZ
 o+PA+lGxl6yZGdFCuRt+rnj618g7ShuLj3MxgFDIDfGbzqM7fHFQRoSoQ5oaK3i6pJkzoo
 kCd0qF5F1rCKsLpCT5pnw3YezlrqubOBDenQhM3parnBGJaJzda+HkNZwU/86XplGW8dBI
 O4HuP/mP2hDJM1Tha73FbHZBZoPArw360wEl6Nx7xqd+uBuoUTUfQjglob4/WqBoZUuoSe
 aBQGGvMaXYX41Hz1vl87ohxn5ODn3PZhY77nTocl3oBXCljsoEyjeFz5VCwVWg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742380009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bVqYEppXH5Ay8ZuM4WwVPsIdI6zdDIi+KShL59kFbbY=;
 b=t/rPAshR3XTT9hxQEo+sRIcAUD0B0FZjRZVblI3dGn72dwI1B5yFmM62h2B2sb9nz1O43I
 CmSlr0rhofmIIzDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=VRC3lGlv; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=t/rPAshR
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] igb: Add support for
 persistent NAPI config
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

Use netif_napi_add_config() to assign persistent per-NAPI config.

This is useful for preserving NAPI settings when changing queue counts or
for user space programs using SO_INCOMING_NAPI_ID.

Reviewed-by: Joe Damato <jdamato@fastly.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 6870803a42455aa1d31f39beb027cf282064388f..054376d648da883f35d1dee5f879487b8adfd540 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1197,7 +1197,8 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 		return -ENOMEM;
 
 	/* initialize NAPI */
-	netif_napi_add(adapter->netdev, &q_vector->napi, igb_poll);
+	netif_napi_add_config(adapter->netdev, &q_vector->napi, igb_poll,
+			      v_idx);
 
 	/* tie q_vector and adapter together */
 	adapter->q_vector[v_idx] = q_vector;

-- 
2.39.5

