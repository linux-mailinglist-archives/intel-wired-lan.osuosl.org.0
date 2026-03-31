Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIXKET7oy2myMQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:29:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB26836BAB8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7A3941065;
	Tue, 31 Mar 2026 15:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5haFiEzkEDTI; Tue, 31 Mar 2026 15:28:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E070140A02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774970933;
	bh=I1a10m3pLXA3wRfYM8rz+VnsqAqaaOO8EqeoT5jwSGY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eoy6wgD9+1+h2nRupRAAoN2FiCMFDx3ka+2uqNmbpqVznXwMmYchlHXvR9lkGHJ8p
	 X7ltypc2VKP1EnrqcRTbJPv/rJajpbHbzQcPSvgHlyFGHNnr9mA3d6+C0Fb9FcHHHP
	 z/Yx6H25Gyeoi+PYPPh0UO/m6Y4FSA4bXXuqKBXtm7VTvSmbheEfLkraA/WAyeuvZO
	 aJX0NeYOkq9z6zLaKy5I+lZKG7gGS51WwkZwc+YkPpC8XKdb/JWvNTBDwhvH9pm15o
	 1bD/lTMSP0KUWCnpSIZIJg/Lowj8pVOUXpQmDxAQEvgbGp7Q/96VlhvhywrjFZ6/Di
	 y5yTPP2pAchsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E070140A02;
	Tue, 31 Mar 2026 15:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 403CEE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 322D74067C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id auJ3sxXEuUCZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 10:43:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=daiky0325@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 979F8404C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 979F8404C1
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 979F8404C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:34 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-82cd9d0eceaso507320b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:43:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774953814; x=1775558614;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=I1a10m3pLXA3wRfYM8rz+VnsqAqaaOO8EqeoT5jwSGY=;
 b=NQ2aWniV9Qpp0pcFx+4H5QWL01ZRQdrqV3FnShSi35Rz/ZHpdKjQ/i1KML7Znxc1PK
 DaTf1CKcheC0qga3kJw3o9S++zR4fHtH67qXGLTYUqjyzuFxC7vQrQUNY6Nem+IlW0LI
 lt2VOct+dTLj3ew0njfad22Qh/wHcEcLPTOfvCtstJ7YtFTp/c+/lWEUgTCUGugCqPhs
 xoIFZ7bZP4a/JLpqEyQxSZ4V2CGurep4vSOfSo5NP648XQK2XvcaVHQxJL9xfGA0RPM6
 E6172odwCaOONs4cFhf1KcqGEC8z3o9KtI9RvBQquTizN2sulV1iGgjojdD+2H3kE4BD
 cA3Q==
X-Gm-Message-State: AOJu0YzruR1+dJ6Am5vV1p9cXr0UZbcETcjKg8DKKp6Km0v27OlSP6Sc
 0hHGuFUwI+yHw71cqI+XTIPggARnueRBRPjlZPj60zyIOVguztWXbFkqBrZlXqYPQxo=
X-Gm-Gg: ATEYQzykGQNcAHoTo2EUYlf8FeTyv/oIzhQRxwelUS7GZCHQnn7HRQpy98gIRPYrxlx
 EkPUUTMGoC/YaDD9SNRGLxf1D3iLSlLZARFa596KlgS9hkIShNhLMvfOC3Gt1aMTzvH0dOkzjPs
 YrsFoRlpueKPsPGQ374YYtehHtm5veCqxM0Usv4BXCzvVGpn3kuxFjcjVLXl7jz6OwhzCLjfI9F
 /aOyA/L4O8rWafqiv6l2NpjOTRYaNgj0CpqNKoptCY6812Kbqo5w8Q1Vp84qZHi5t7fYFw4+Lvv
 9gPfTcrIPfYkyFBmZLz+MbcBH4vQ7x4WsO+sq3JFdmY8nzKx308cJ2voZy3xIDcRCgPgxsKTA/4
 f408Kq0+26j6Lt+/03w1GMGnHhXCKVIhPFL1Zr8qpKPWRkhA5OyudCEnG5I3/oj7s99RQ1Zwkss
 W0rnmEcJcdgCok84l80ZJSr6MudoIslYU6M4JcjVONXa2HwSYN7ozQ6stI6EjMhcA3Y8pZ8S4Jp
 8MjwG/+ny1aMMGvtm3qQOgegsHY3irURqyElU1c1dVOPzHZJkxG/iE4OA==
X-Received: by 2002:a05:6a00:2da9:b0:829:7553:afbe with SMTP id
 d2e1a72fcca58-82c96086c7fmr14819397b3a.57.1774953813791; 
 Tue, 31 Mar 2026 03:43:33 -0700 (PDT)
Received: from ip-10-1-46-91.ap-northeast-1.compute.internal
 (ec2-176-32-72-196.ap-northeast-1.compute.amazonaws.com. [176.32.72.196])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82ca85fc72asm9996026b3a.48.2026.03.31.03.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2026 03:43:33 -0700 (PDT)
From: Daiki Harada <daiky0325@gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Daiki Harada <daiky0325@gmail.com>,
 Kohei Enju <kohei@enjuk.jp>
Date: Tue, 31 Mar 2026 10:39:19 +0000
Message-ID: <20260331103924.36422-2-daiky0325@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331103924.36422-1-daiky0325@gmail.com>
References: <20260331103924.36422-1-daiky0325@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 31 Mar 2026 15:28:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774953814; x=1775558614; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I1a10m3pLXA3wRfYM8rz+VnsqAqaaOO8EqeoT5jwSGY=;
 b=cELdb8ZcEwrJGupOIns+6QIN+wG+mmEvwL2LTo+dClHm4uwYxqBuyGzMk0cS3JkDdZ
 Gr/+pvthoPhd76B1N/sdel4tnGDLGXeoTeo2bkernO/U4a7opNbxa8Vv1LdQR7rHUjsw
 wxNJQDANqcJA9aDoBxhEp9Xf7dTTV+7lW3ENgE8U2MzGAmapkPhKf5qPJH3F5ApfM3CA
 HwbLw73hq8l4q2GruFuGJCE9tBLShJPdEF24v/GAq6+ViUYkk+R/HKRmsLpjqp7zzlfF
 xQq5yPx915FJO6cK01obXviF6rUtjhsS4q8TuQKQLnuuIzmAkSlffs9jTB9qL+/5M5u2
 oH5A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=cELdb8Zc
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: use
 napi_schedule_irqoff() instead of napi_schedule()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,enjuk.jp:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[daiky0325@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB26836BAB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace napi_schedule() with napi_schedule_irqoff() 
in the interrupt handler path in igb driver

Tested on QEMU with igb NIC emulation (-nic user,model=igb)

Suggested-by: Kohei Enju <kohei@enjuk.jp>
Signed-off-by: Daiki Harada <daiky0325@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ee99fd8fd513..d7a6ae938cc5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7158,7 +7158,7 @@ static irqreturn_t igb_msix_ring(int irq, void *data)
 	/* Write the ITR value calculated from the previous interrupt. */
 	igb_write_itr(q_vector);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
@@ -8199,7 +8199,7 @@ static irqreturn_t igb_intr_msi(int irq, void *data)
 	if (icr & E1000_ICR_TS)
 		igb_tsync_interrupt(adapter);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
@@ -8245,7 +8245,7 @@ static irqreturn_t igb_intr(int irq, void *data)
 	if (icr & E1000_ICR_TS)
 		igb_tsync_interrupt(adapter);
 
-	napi_schedule(&q_vector->napi);
+	napi_schedule_irqoff(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
-- 
2.53.0

