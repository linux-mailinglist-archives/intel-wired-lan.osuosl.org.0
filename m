Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEuFNQKivGns1gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A7D2D4A8D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B45B3616B2;
	Fri, 20 Mar 2026 01:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dDD6m9fp7yPO; Fri, 20 Mar 2026 01:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A328616B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773969920;
	bh=RnwqqwAxnRG8s2vaRYDrbUdfVznpcDcr1raRDlnvaSE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U3NLnQQz3guW5O5j29JVwZNLbZmD7JcyMNyKA29lWuIkYhEP/U+VqKIcdKeNaXzex
	 8SaC2sZFBBqJDnBQrqMfZlyTFlHEMXF6WEKb/Q3mLYC5qAjq5pf0qIgSr8kpLcBrUj
	 JgVnOKLWOZ91l4cD0+LViINPaAcuHBWdRlsV0m/4R8NZ7pFPnqY4LMJdIzt/nBa1cS
	 HVnhEDFh/zogIxZ5oulP1CYyOnjbdiUHdq+0e/fwTeB7Eq5kN2IN8u63JcBLkFRn/H
	 c+S2dGKUdPsVwVet1YsRxHYc3QkdnkiFNNb+bptLApxk5zSLZem+fY7dxZwKZDn8rF
	 Er1vroZbJ90xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A328616B1;
	Fri, 20 Mar 2026 01:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 193C6298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B339941BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5CiuSz_GidQu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 01:25:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.48;
 helo=mail-dl1-f48.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12C8341BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12C8341BC3
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12C8341BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:16 +0000 (UTC)
Received: by mail-dl1-f48.google.com with SMTP id
 a92af1059eb24-12732e6a123so2875051c88.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773969916; x=1774574716;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RnwqqwAxnRG8s2vaRYDrbUdfVznpcDcr1raRDlnvaSE=;
 b=dI72OyOY2thG7dTW8YCEyTxS2P6XjsVJ4PKajUy7FtL54f3irPzOQTy3I/xjZtCxb5
 TNEdvbVtCGmISRZvK+X2J1zAdn+y0yUWzTXT3TDewA7d4xM9z5/WOIiC2tT83/QFtq8h
 xz9HDRsxWkV4cXDVeyYq96BG675N+PwUFyrva5VtCAG1uTG2YOGXwndmL9ZcxWW/F77e
 55+d8OR0FhfqMxactY+J61E9xOAw/dZLPTM6X2tFn1D+o9BmJzRcGho35/YpLFBieccr
 h6my5SCaGl7qgN140mAEFl5chFA9D0J7GAb0I6FZzBmbKSihRCmoX88mKHTWHrhpK9a0
 Y/Ag==
X-Forwarded-Encrypted: i=1;
 AJvYcCWu+HMAdrpC8SiGSMW67XOsKl1iKd7+2rvyb3kmfiDbes8tRPf4sPaqz/ln92t8XImFFVx86/lU8AwgfBc34xE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YykY5IgmEqd0ecPlZErifUvZegvRkTKYEZtnJWC7fg0I4QXj/0R
 JbIaFHUThe4bpxEEiHw27q588DCfc8TVoTnDoGSSX+Rj+I7Wb7aI/A8=
X-Gm-Gg: ATEYQzzvlEzMYGUmiWyK+z3gkhJxHv/kXhGJ4embpG02ABseZNcKxk5UUN0aTxVqP5Z
 7e7BChr0n16TnOkXGrM+V5xSnzn5IIM2EgYpkFoGTVw2ZHpn0UJ27ehvN8Vlu+xoPiX8CJd7VSt
 eS9I9eJkz19KJZWCxTT9eLLNkEc3GXGZHdQgzlmgD0BzeBJxRID4ZL18W28FWbZgqrenn39+6IC
 /GzAKBrcSlt8t6Q4rVI+JKsrM+3bgi65lChUyrBRY8RY2DDgwxEsAu091cn/aUrVif67KtoRwMC
 pKtOdOhMe0YE3ziS/6O13JuDy8GIrnlhp1h1bRIQ40MtucRGytqWJFN0WeROoaSOkghU84ireRX
 igfNp5Vx+EaH2MxCLREKZMMYE2FIRnbQYM1yiMGi7I4D/2NtUSUPWSlVG0gD7BRuxjUx/mGcSeu
 0V45/1XmDg8WXp6DCOxTV7AThwq9U49TJCiDT9ni7fiM7FiqjeZMP3O88cyrLzD+hbftJYbR8hc
 iwcEBMj2F3URc6o/jbq+n549U1u
X-Received: by 2002:a05:7301:4083:b0:2c0:cc90:a71 with SMTP id
 5a478bee46e88-2c1095c78d8mr746759eec.8.1773969915768; 
 Thu, 19 Mar 2026 18:25:15 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c10b1a88e5sm1421784eec.13.2026.03.19.18.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 18:25:15 -0700 (PDT)
From: Stanislav Fomichev <sdf@fomichev.me>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 sdf@fomichev.me, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 aleksandr.loktionov@intel.com, kees@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Thu, 19 Mar 2026 18:24:58 -0700
Message-ID: <20260320012501.2033548-11-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320012501.2033548-1-sdf@fomichev.me>
References: <20260320012501.2033548-1-sdf@fomichev.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v3 10/13] netdevsim: convert to
 ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[fomichev.me];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 55A7D2D4A8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert netdevsim from ndo_set_rx_mode to ndo_set_rx_mode_async.
The callback is a no-op stub so just update the signature and
ops struct wiring.

Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
---
 drivers/net/netdevsim/netdev.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 5ec028a00c62..9c9217792125 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -182,7 +182,9 @@ static netdev_tx_t nsim_start_xmit(struct sk_buff *skb, struct net_device *dev)
 	return NETDEV_TX_OK;
 }
 
-static void nsim_set_rx_mode(struct net_device *dev)
+static void nsim_set_rx_mode(struct net_device *dev,
+			     struct netdev_hw_addr_list *uc,
+			     struct netdev_hw_addr_list *mc)
 {
 }
 
@@ -641,7 +643,7 @@ static const struct net_shaper_ops nsim_shaper_ops = {
 
 static const struct net_device_ops nsim_netdev_ops = {
 	.ndo_start_xmit		= nsim_start_xmit,
-	.ndo_set_rx_mode	= nsim_set_rx_mode,
+	.ndo_set_rx_mode_async	= nsim_set_rx_mode,
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_change_mtu		= nsim_change_mtu,
@@ -664,7 +666,7 @@ static const struct net_device_ops nsim_netdev_ops = {
 
 static const struct net_device_ops nsim_vf_netdev_ops = {
 	.ndo_start_xmit		= nsim_start_xmit,
-	.ndo_set_rx_mode	= nsim_set_rx_mode,
+	.ndo_set_rx_mode_async	= nsim_set_rx_mode,
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_change_mtu		= nsim_change_mtu,
-- 
2.53.0

