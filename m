Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJupCDvoy2myMQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:28:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5978536BAB0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 17:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22D294103E;
	Tue, 31 Mar 2026 15:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMPzNqHZwban; Tue, 31 Mar 2026 15:28:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5258C4103F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774970932;
	bh=hkDa9izHEIAJX9uc+HQPy+UKJAsfOUb53e+2UosqcTo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VbLDZX9SltFir+qESOm6i6A+3AusqY057SCJXaB7zPCbx8xocJqyv/n6MtLHjh1Cs
	 auVQhJGg8FdvywomfU7LJLcI/OjXPEh9NBfWEqaMGnbxFz1vIA440eTI5TjXRJMiHp
	 mGxrKm5G/X7urjrtXI7l94BHm08ex+3kTbS6or5tilVL/Kk+fhWvQtsS28JI6edDsp
	 Vi5aypV+3trrnQ8HDHWbECmpWpNIu+WGpsJgIHMRg59YD/lM/jquX/bWGNPc3zogNH
	 b1q239iCNy6pyXAWSkqeAANiVWqY/QuOKinFEOVjhDFT2Tibn2b+ipKbkMHl3KkRp3
	 EJ/R9vbUs1f8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5258C4103F;
	Tue, 31 Mar 2026 15:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E613E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB79940869
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lIFzq2XDGq1P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 10:43:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=daiky0325@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 39EB140863
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39EB140863
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39EB140863
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 10:43:10 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-35d971fb6f1so2419187a91.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:43:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774953789; x=1775558589;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hkDa9izHEIAJX9uc+HQPy+UKJAsfOUb53e+2UosqcTo=;
 b=GrBB3J3x0LnEkhueQQ6Ke4XHGbmx0jQ0DC9XlsaLVx0KSYwcZK3WV10m7xgChEQsDk
 yv7RExbPR2vcTGAQwQsCavnXGMbrt+0Xg3cMZFR2aLVcii78I1PAaosrT/irY8xLg9Ab
 1udkQeTmfthrQPkGyUYwY3zRgMG2l6PXG0Ib0FwChhIBMb9vpCyOhkNc/XJ3nK08aML3
 vJR0cr8jc9VswYVquoLPDgGX0zWQF/GObIXBe92GjBTmkVc9KzinMiipFz5Cte+lMxCE
 EcOja0J8QSAN/9/PKxLsrh/ibSRvjGfir65Ib4LcB0+836sw93pbPZMhQ/BYD00LskJg
 5YTA==
X-Gm-Message-State: AOJu0Yxkh3CsNZGo+i/rgf3BdT2LGeYEggaXsQdOM+yVnQIpTyda5TdL
 aiitB8YnouEVXQ0kbCNWxsaftECLNgKkxk00HctsPYqD+k/SH6xGZ5c7K1A4jPo46K4=
X-Gm-Gg: ATEYQzxAVdyc9lSNh3hQpFAPTscp3lfqYySwmF1O9HQ2JQCxjM2vpxDBubfNYX7piMg
 hmNmbE4Lem42/B33xo+Ac9jcQQcbS/S0Vdwa5DbhkcK1F6TJkunaYCiewP9sIWe3og0sKghQ3h+
 TyVZm547nsOazJP56Hs0JNQzhHRs1+2J7HFsFVM1k/TbCOBNXqX0YZNxuX1Pu6BG+0no6FnhjMP
 +nsZOlj717WblK/A5vNfBSPlYflihotpT/mKLOOvOFZX7IHVNbXDcf1/aWpLxpx8iFl8BlvJMwK
 FjlmDDfKtkVpepTbv4PEdIWY5qz32iHmMRpCN7rjNImG5Tjw95nSVOTXrWpHfbMx/grtwSpaLNN
 gx7JImprbj1fGi/Pl1FmawTLFHJ4X8k7KvUE0mkIbqkjtwCr4mZVRebZgPk90vCRAsOirQIRy14
 rzbPLVAFR8j1Q1mxRnjyvCxFGo0kfsQArpjzM0objZpjq4UBC2UjGyheCW/oK9xSvq+zpsVsjd8
 5X6Zznr7GzDknWkDorFoqAFSwD08gKMyxkJC75ykWi/iEh7xEfWX3cscg==
X-Received: by 2002:a17:902:d4cd:b0:2b2:53f5:4627 with SMTP id
 d9443c01a7336-2b253f548afmr65878125ad.4.1774953789256; 
 Tue, 31 Mar 2026 03:43:09 -0700 (PDT)
Received: from ip-10-1-46-91.ap-northeast-1.compute.internal
 (ec2-176-32-72-196.ap-northeast-1.compute.amazonaws.com. [176.32.72.196])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b2427658e4sm134280415ad.48.2026.03.31.03.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2026 03:43:08 -0700 (PDT)
From: Daiki Harada <daiky0325@gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Daiki Harada <daiky0325@gmail.com>
Date: Tue, 31 Mar 2026 10:39:18 +0000
Message-ID: <20260331103924.36422-1-daiky0325@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 31 Mar 2026 15:28:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774953789; x=1775558589; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hkDa9izHEIAJX9uc+HQPy+UKJAsfOUb53e+2UosqcTo=;
 b=FUfgnuWJmtLC6d6jEDNdpNgx19JX/h1Yx5gJ6pncJeNUGoRgu8P+5IHDwx15MUtEbr
 /EYGsX5XBVhDzzaYKt/EZ69PnsTkVaXqv8X/D/7ad35W2gqp66TeBGTRej5uhqkFaClx
 yd+SVM3HBmgqRJouu948HO6tW5MuCOpzw/SDLY2TpKeT/5FKDz7ZQcvstwUIqHcObfxE
 WOO7bNA+dpFJTjWFBrhJGorN0ljxmpuoSybh4icfT1J8aNr5mAjkUnFP5ytXpvUJaU7h
 M0i4AHbN0MqrXdPWvXiAChkZpnJBQTIog/JxR09A9JKrBh71NnoYCmWBzBe1nFT4gZ33
 oHkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=FUfgnuWJ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] igb/igc: use
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[daiky0325@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5978536BAB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch set is meant to replace the calls to napi_schedule with
napi_schedule_irqoff as this should help to reduce the interrupt overhead
slightly by removing the unneeded call to local_irq_save and
local_irq_restore.

In the interrupt path, callers of napi_schedule() are invoked with local
IRQ disabled, so napi_schedule_irqoff() can be used instead.

This series applies the same optimization that was done for other drivers
in [1] to the igb/igc driver.

Link: https://lore.kernel.org/intel-wired-lan/20150929215117.3388.48642.stgit@ahduyck-vm-fedora22/ [1]

Daiki Harada (2):
  igb: use napi_schedule_irqoff() instead of napi_schedule()
  igc: use napi_schedule_irqoff() instead of napi_schedule()

 drivers/net/ethernet/intel/igb/igb_main.c | 6 +++---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.53.0

