Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPmKJsS+umkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CCF2BDCD8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1EE040BC9;
	Wed, 18 Mar 2026 15:03:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmwoP13Y0Dw1; Wed, 18 Mar 2026 15:03:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8003840BD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846209;
	bh=HbyBRqP1dM0VO6fEJ4blZH7JfwL0DV5fAiX12aFZ5no=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YjiQyxU5mF0Vzc9E+yDK6DCoHKRt1y9+9QoZ2SaGok8JyneupYRb4DktsJYC4qIWv
	 QiEGdCZxh+Ufv1VrGOtPUrElnufep3Mx2JyBOIIzNE21TGJ0rKw8YhiFjcejqnlSch
	 NTbDVMBZP9qeAli8BRefr8LdmY+d3w31X9zzm6bGxKGkTs61RZBMFWnovkxR0S63hq
	 YExTZ6yZKyjcjkcjP0wP5SktzTNglGKXDq1A4wOPxQPS/RNinwq7xHyOgfArZ6jHdc
	 BoYNmNbF8wW5nbfGKk7Lyzhg3uc7gLgM7ifaVdaSmSJQym7dkkAgbk2nRcT7AVaUiD
	 cfqXmQxk3kcEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8003840BD1;
	Wed, 18 Mar 2026 15:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 52F0D1BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38F9140407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rpKfSVho1ZhA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:03:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.50;
 helo=mail-dl1-f50.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 349D7402D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 349D7402D7
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 349D7402D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:27 +0000 (UTC)
Received: by mail-dl1-f50.google.com with SMTP id
 a92af1059eb24-126ea4e9694so2428613c88.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:03:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773846206; x=1774451006;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HbyBRqP1dM0VO6fEJ4blZH7JfwL0DV5fAiX12aFZ5no=;
 b=RjnAcwbxlK4Rex0RcDFwD5fcYTpbhudL8dd+ckkFgeY/LuxsNQy5LUc0131G3TCKAf
 M02ZGkSRojRbGCwZEbLHn8O+Ezgnyx0w7HDUvfvGbmDwNgl09DnLnqcFLxhXqSkcvQF/
 Uc8FfQF8f+aEI0yOQeniiaggQEiFuh/splWRSnHjY+nq9CiU6Wjalw8cSfOJs7cF6Nhp
 e435GdB8U9pJ7zf9aCiQkBRTSiKvaWO1V9va8z3ZDGwAZpIFmEqCK6T7afdYIbANKfKu
 MYzhO+kscJMbLPfabpJfJPB6Y74K6YG147BzhJ1X3kWyvbpr4QF5Cop2JGPo6qsdc0FX
 QAOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFkqLOss+x2K5EipbHdQYtYD//avNyLVqaenxtZMx8qMocU3ltOt2629VYhUiWx17KcbLaeCkqOnuQiIcIXK0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzt5Td6OdJTBiGjrMub0yRcz7735uN1do2bIeEK+x4qG1wK5Ack
 3W6ASY2VRd5U3aSEWiDqzZQVNy6E2D6HBjFOlQVRW/HGDGz3fpZtyFw=
X-Gm-Gg: ATEYQzxMV/yVdBaMhQWF/9i6hDtzLmSReDhxNVSoRDjMcLtqN7PSyZHovgGQFe4msg8
 ffaEdVn4paloVCmY3WBa2kRGXFavbDy9ZocIzcOw39Ce5QKr0uxg4YQcfE9U/2Wkl3N9cy9rdQr
 j5DKHcub8Nr8V2wDffecwZdvR2DWvEHrRkRN60shWb6qNYnTwTe5gO+WLPJPth2eC5qI+TkdnDs
 e2zSSKRYHTH/Toe9kPO3As5nmLEB3zc5ESn5iChdALNGea8VhiM4pCfwFV9IbN3HhmUAnl3HvJE
 3DrA9mJlzCVMq2ht/ouUP+pqMKQ+vtTzhStayo4P239jTEwWrQj78mBhRP0axGLMgzQq4LuvSic
 bO37VqqyfYMIepU7zfKEQ2ZmvSni8Twhoncz1jrHJUcKBfLpSFd8JsroGLpZLnpl+6eRjR7C4Fu
 dYeXqe4dI3yQ3q/q8aHsC/RsqYiKckycinhga2WxJ9YlVc9QXFryz1S2s/El5o/2pzRxdB3Okfi
 rg3muWkLTgWTMbeew==
X-Received: by 2002:a05:7022:b9f:b0:128:d51a:5161 with SMTP id
 a92af1059eb24-129a715e828mr2027441c88.27.1773846205882; 
 Wed, 18 Mar 2026 08:03:25 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-129b41271aasm3384562c88.11.2026.03.18.08.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 08:03:25 -0700 (PDT)
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
Date: Wed, 18 Mar 2026 08:03:03 -0700
Message-ID: <20260318150305.123900-12-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318150305.123900-1-sdf@fomichev.me>
References: <20260318150305.123900-1-sdf@fomichev.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v2 11/13] dummy: convert to
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[fomichev.me];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 66CCF2BDCD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert dummy driver from ndo_set_rx_mode to ndo_set_rx_mode_async.
The dummy driver's set_multicast_list is a no-op, so the conversion
is straightforward: update the signature and the ops assignment.

Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
---
 drivers/net/dummy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dummy.c b/drivers/net/dummy.c
index d6bdad4baadd..f8a4eb365c3d 100644
--- a/drivers/net/dummy.c
+++ b/drivers/net/dummy.c
@@ -47,7 +47,9 @@
 static int numdummies = 1;
 
 /* fake multicast ability */
-static void set_multicast_list(struct net_device *dev)
+static void set_multicast_list(struct net_device *dev,
+			       struct netdev_hw_addr_list *uc,
+			       struct netdev_hw_addr_list *mc)
 {
 }
 
@@ -87,7 +89,7 @@ static const struct net_device_ops dummy_netdev_ops = {
 	.ndo_init		= dummy_dev_init,
 	.ndo_start_xmit		= dummy_xmit,
 	.ndo_validate_addr	= eth_validate_addr,
-	.ndo_set_rx_mode	= set_multicast_list,
+	.ndo_set_rx_mode_async	= set_multicast_list,
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_get_stats64	= dummy_get_stats64,
 	.ndo_change_carrier	= dummy_change_carrier,
-- 
2.53.0

