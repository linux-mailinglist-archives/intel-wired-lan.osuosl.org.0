Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 506A5950C37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 20:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE7B140714;
	Tue, 13 Aug 2024 18:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uXRDfSX22Q9t; Tue, 13 Aug 2024 18:28:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDDA540711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723573692;
	bh=l/Sac5m4oGMZ3mG4jh/NoF4fykuTzT6XDGolN2ik8MI=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iBTTnl06aDDbayDNwHb4pgo1XAWwGWmtEVq/gdfk8kI3/TaaziSrq1bhBVs83DRrq
	 fe7K5aVV4wfQ4xWWi28H86pgjg9ulM6/I8CETF60BSGvYdiRwTtrOPJjdkkWns2pcW
	 rZqFZOwMzgceGXf6aByWCX4Kp773rTw3Kwp87ot4YvHNowP+kjmzCmxpbGD4AkAqSc
	 0EZ6v8DO421eiqxERG2h74MAOjOYMGzF3NvApHEm6/IfLXia/3O/FnvA+2mR51LkXw
	 Lsqf8FqYUfqoFZJXpeM1jXezEbXxCBHuPrfV+j+NT8ganYFhTkeHgm1tEsxPQmzGmp
	 DBT2a0xOoQnqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDDA540711;
	Tue, 13 Aug 2024 18:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D87E11BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D320E60703
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_i-4abVntlj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 18:28:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::114a; helo=mail-yw1-x114a.google.com;
 envelope-from=3t6w7zgokdy4wkxytfscriqyyqvo.mywsxdov-gsbon-vkxvscdc.yceycv.ybq@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F059860629
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F059860629
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F059860629
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:08 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-672bea19c63so139343767b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723573688; x=1724178488;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l/Sac5m4oGMZ3mG4jh/NoF4fykuTzT6XDGolN2ik8MI=;
 b=UOLcX2IUGXsptmPJsH5esIzDO5R/55DyTRYWY/5CYEgxgGSCQVYOIZCzYcYigBkvow
 6imZ+oFEN1+YInfWyUCZDX3qdeH7bFdMs9G3MVGJC3ZNC74abYs1flLBskQULruaZpvX
 kcqiNbSZvViluJOnPDC85jwDFCcsostR5XmrFM1pb7jwvOG9HA0hHBz5KBr1D1ALjKCw
 uZAC9r+6dqYYOez0WASACGY37TGS6FWyELA7x9HYDxpUtdRr4ZATvcVN+8q9XV9HNvGZ
 +JWmOy/tnploYLPWI3rnkcJSpBKkD1y7sO7eI2e0/zMCMJD0aZ8HZNWHo/VqyOPhNyv2
 OJfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOVbDf6g6yYyC3/sR3fQLXeUN1FHYH3Byw9iz/KNhMKJ9pC7leWlCYCSXMUm9PsZ67QG9+bOh+enp18oESMdaU3NwVnQLl6QSVLC+qKkqx8w==
X-Gm-Message-State: AOJu0YzIWXJ8GBzEk60qsvjIdfUjcJMJNQDlyQ4xAcCpbEiqeRsffBls
 h5EMKRz2kpRH/CfuUyfV8USQ5m0YZLdeN2SBvgvW25KFjYBJ4mNevgvdAaK/3eTDYBMMp6HJna3
 7uDMTH6ltWOqvR2Rz/w==
X-Google-Smtp-Source: AGHT+IGMc7q2tq4LDbjY97g5fn1H9eJpq9yMVM8n/S+oYbY7lnb67UbACWQriHtyDPG5G0lfyfbpfMowGW8x+pG6
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a81:b810:0:b0:64b:5cc7:bcb7 with SMTP
 id 00721157ae682-6ac954aa2acmr70637b3.1.1723573687771; Tue, 13 Aug 2024
 11:28:07 -0700 (PDT)
Date: Tue, 13 Aug 2024 18:27:46 +0000
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240813182747.1770032-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813182747.1770032-5-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723573688; x=1724178488; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=l/Sac5m4oGMZ3mG4jh/NoF4fykuTzT6XDGolN2ik8MI=;
 b=4qks60lQfzIl6wFGH7JgHJidtp/hgh859azwFTAfy9ZH1DuQiAgkmyY0OEzP/dqzK0
 t1TUQkOCsaN2Hzwr8/rrE3OZgeSL2E5bWhQxNriSlhSecJndby9t4NPoiNlAdmVEsTpl
 HjOrFCufNgeC5raVcmj95FHltDGm6sF0LNslJvRR3O/DIMa4ap9HyC4cuWr998eguTpF
 fP5F71sq4Nu8TnHzf+q2WmrNfVXTZO/hRRlPvWVOsLeXzfmmuwNe8nxMi/LFAQhkL5Ly
 vgqEDpBP+CAEjwzmPy8aH0aZgWuPnwVZaq2c771PLQhv6cTazLtt1P8sa5+GT8QUmZs3
 E9yw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=4qks60lQ
Subject: [Intel-wired-lan] [PATCH v1 4/5] idpf: more info during virtchnl
 transaction time out
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add more information related to the transaction like cookie, vc_op, salt
when transaction times out and include info like state, vc_op, chnl_opcode
when transaction salt does not match.

Sample output for transaction timeout:
-------------------
Transaction timed-out (op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
-------------------

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 30eec674d594..07239afb285e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -517,8 +517,9 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 		retval = -ENXIO;
 		goto only_unlock;
 	case IDPF_VC_XN_WAITING:
-		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
-				       params->vc_op, params->timeout_ms);
+		dev_notice_ratelimited(&adapter->pdev->dev,
+				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
+				       params->vc_op, cookie, xn->vc_op, xn->salt, params->timeout_ms);
 		retval = -ETIME;
 		break;
 	case IDPF_VC_XN_COMPLETED_SUCCESS:
@@ -615,8 +616,8 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
-				    xn->salt, salt);
+		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
+				    xn->vc_op, xn->salt, xn->state, ctlq_msg->cookie.mbx.chnl_opcode, salt);
 		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
-- 
2.46.0.76.ge559c4bf1a-goog

