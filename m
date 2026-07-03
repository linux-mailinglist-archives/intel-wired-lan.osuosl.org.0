Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gv//L3rIS2q2aAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 17:23:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 394D6712863
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 17:23:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=KE8FsvOY;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDD5540A66;
	Mon,  6 Jul 2026 15:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNryOEzDkay2; Mon,  6 Jul 2026 15:23:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9D1D40A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783351414;
	bh=4mjd3S3mD4H3ly0J/O0woiYTVd9pmAc7B7F5gVF6+rg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KE8FsvOYt9r1TP845RU5F9uA4HlYTf/CVhqGUvcfKeaVHKszb4Ttrfdy1rWeM5jKC
	 OYA92tBQQA97GeCU3kWZvdTYNvyeZ7WKg9vpdKqpE7nUN9Dwikb0T4sEmEQrNX+XLq
	 dB2LFGhg/l84IwTLlSDRAGRYllCkHclS+WwBH1n8EbnIz6u5S5YZbd4GMnT2gd2VFN
	 qQtf5J4TMRzjXy9MXlzPsKS0n4yDWxldVgjuP8sTNOMDgYY6d9uMq+m/puji64EY0G
	 bNEvBzNr1EDCBgRNJnjm7lRhifGbJCcSnL+XCaiFtw1LZeEXkCkWkYS3yxeg+f9vsR
	 YDnf/UnqcSSpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9D1D40A69;
	Mon,  6 Jul 2026 15:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E5DA316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 05:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C727403C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 05:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yqu1uih1ycAE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 05:03:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f33; helo=mail-qv1-xf33.google.com;
 envelope-from=dbgh9129@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 935D040378
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 935D040378
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 935D040378
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 05:03:38 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-8e9c9d63815so364046d6.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2026 22:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783055017; x=1783659817;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4mjd3S3mD4H3ly0J/O0woiYTVd9pmAc7B7F5gVF6+rg=;
 b=bWNiEzAFKDM3vYJdAHv/KmGrsTT/06WbRK6oX3xSRKPzIhL4E07rG5zqEph7GmL8mK
 H95laNtHgKvFSYYw0j6U+JwtUkSntE9kZQPX6LC+bUnb1ZjLhtwj4sgIbfZDW0NY6tFW
 gDiwLAz6BIVaitrqPrlyLtJfSXb7X/elHIo+R8TLakBOHPxb/Q1NQ+JdwNBTDwY8D830
 dfYznUenTuFbzbf+MxRwWhij278/JIkGkAZaDNWszI7FgcAZ/d6c2xY/99/+c46UDAu/
 mZMkz2TQXFJG0HzUuor5YVYartaiK050yDbgft1BrWqxSDSlfFveb4hsA8KtcqViScXE
 zMMA==
X-Gm-Message-State: AOJu0YwLUdItSEOk8+iVhpMzMgTrdD6nLky6yCK4HQ8l7WR0yPuQhoF5
 li3k+mGmyaQZ6iWQSmT4BRMd0pjoqLwrOac1ncVM33e9HtOFM2zh8vQC
X-Gm-Gg: AfdE7cn6rtaMckG41dnZ5KCHbvNC55TYjKLqS7bVC4Oxxn5xjyU8xriIeq+5am36mUV
 0uG8cuNzOOJ3C0fv31gHiqpkWjYj13F6pRcGd46BI33yyBs8CL8sqJyAmQFXVZggSLyF8YlGGsM
 cn/iyx+VyVUcHHX97Dz4OfMgj43/I9KqVpLqudZzDpGY6/brpdPZH3drfdqLww9Xys7YBFIs9C6
 9CRbJCKNs2AgnjtmgKFhRJk6lpn+hJ/bcL9HiCcx0Gy9KJL1LRBVFQgEcnYhs4AbYfzoIR/auAC
 imKPpAfRHozS4CAfarQQMnaas4ZiwTSYfYjZbjgmF2T/5xwB6kkMtljXn5LCT+MZXpTaDTESzGE
 ITNDIGxg7Ssi78iHTgD5fKDVF1V+5xgZdG16T43bOpUZrLykAk2uQRUJQJ+70mrmxt4ylWXO1tg
 c7Qe4JAsyOsEvUVfAn1zNRq3YtSTQPN/gYC1xhCvHLMETD1QljPqEg+//mlL28uX4iRNepk7VP/
 OVbzoD2Zds/BFw=
X-Received: by 2002:a05:6214:4302:b0:8e7:d752:ab34 with SMTP id
 6a1803df08f44-8f3c66c558amr133708806d6.12.1783055017034; 
 Thu, 02 Jul 2026 22:03:37 -0700 (PDT)
Received: from i4-gl-tmk5904.ad.psu.edu ([130.203.156.186])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8f46e27d53fsm46576866d6.5.2026.07.02.22.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2026 22:03:36 -0700 (PDT)
From: Yuho Choi <dbgh9129@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuho Choi <dbgh9129@gmail.com>
Date: Fri,  3 Jul 2026 01:03:32 -0400
Message-ID: <20260703050332.121551-1-dbgh9129@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 06 Jul 2026 15:23:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783055017; x=1783659817; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4mjd3S3mD4H3ly0J/O0woiYTVd9pmAc7B7F5gVF6+rg=;
 b=ZGqevHAYh79OWJpqRaFkkLbZVMD2120Wg7EbWD6McGpFPg/fah1FqpiogNJAU1jJWv
 3sldtoXyCSPihCSChOrE/imJ1vsN2cIuaeQumbHcnP30t8+Jo4BokIdgKGPU9PnOloX9
 Xs8tlGr6cXiK64QfC67R9Q6mtvE/w/3vfFVzPN/Va/eUKFRghMA2QxxI6RqqMf4GK1+m
 Hl2cX1aN58k0/A4hL9J5l597klnHpzX6Ly+4WH0YLT4H/QyRSGNY8TYMZVzFnoexnPiZ
 oQ/YvuGVGbNeah6qcVmxhyyS0BvHrVr/l2nCmiuM5Mg1UBOBwPlpeO315sZ7uO2ej/rr
 XMwQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=ZGqevHAY
Subject: [Intel-wired-lan] [PATCH net v2] idpf: Fix mailbox IRQ name leak on
 request failure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[82];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dbgh9129@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dbgh9129@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dbgh9129@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 394D6712863

idpf_mb_intr_req_irq() allocates the mailbox IRQ name before calling
request_irq(). On success, the name is released later through
kfree(free_irq()), but request_irq() failure returns without freeing it.

Free the allocated name on the request_irq() failure path.

Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
Signed-off-by: Yuho Choi <dbgh9129@gmail.com>
---
Changes in v2:
- Add net tag for the patch subject line.
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index cf966fe6c759..bb81e620c5c8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -139,7 +139,7 @@ static int idpf_mb_intr_req_irq(struct idpf_adapter *adapter)
 	if (err) {
 		dev_err(&adapter->pdev->dev,
 			"IRQ request for mailbox failed, error: %d\n", err);
-
+		kfree(name);
 		return err;
 	}
 
-- 
2.43.0

