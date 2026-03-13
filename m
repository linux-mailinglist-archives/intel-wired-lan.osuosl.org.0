Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHwtHEYutGkEigAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 16:33:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 564192860F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 16:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87B2E60BD1;
	Fri, 13 Mar 2026 15:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7-Vj7Xi4897g; Fri, 13 Mar 2026 15:33:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDB5E60BCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773416000;
	bh=urDXnIwW2W/IeIM0EjZ2m3KkRF3QCtGaKXO+zv+xEPE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3sN6PkRl6HNFpVH5aowXEeveEUfSH+dYwtnMKFYuKsSGtpDZSeXez4PMtjgbl2tcV
	 ckXXkHqt1gyBPD2QedsUohtFUNpI5IsvBq2N7PtOA9uDUwATl9arXcU6hRPtH98+PK
	 WDmMQDSincZ38UXQVkrY0i9FCYUHHeZiuff8YDuIc6Um6Z95C6oVA8El0V4j/xGfFy
	 AAnwFrDlwhSeojZSQkA3Ec9R6ZQTvE3Bs41RSXvHaA/wyg6qiuTjBWYgJydGJT+NGF
	 Qr8qyN7kIKReP7MCpTJKUV30MNIBYawIeEw0O/Evmm7mUHspB8QgOKNrK+ShqFB02u
	 Rfu9oJ2etvQwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDB5E60BCC;
	Fri, 13 Mar 2026 15:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 37F3F1AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 15:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 298FC4097F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 15:09:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3bgaJBVj5y9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 15:09:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com;
 envelope-from=marco.crivellari@suse.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D4A14097C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D4A14097C
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D4A14097C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 15:09:26 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-439fe4985efso2063903f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 08:09:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773414564; x=1774019364;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=urDXnIwW2W/IeIM0EjZ2m3KkRF3QCtGaKXO+zv+xEPE=;
 b=SBB9iHeLihiqMmRaTx/yHvW8+YrTw91AWj0PFjBxuPon/UhZRz0l2yuHvGsnsyv71s
 tywlq9Ave8RI9nMaIa1oTqpkpqyfl4xoGsxl8Jqp8GOhmJM6hYmxYRMH9ab6lCeLGcCW
 I2zT1pr0NZpyu9zqLV19LTC8hn7i63A/6wNUZOl6zWnNWJMsKoA5m3pqD11feef1/OVn
 Fj5yyLPZ2zrYiZk/cdYq2Eq6GUKo1B1SLQNgk9OvuHzQPu83WfXvyZgQKBP983dvmtXv
 d4pWFk87wJv+jIgkoSjXLH+Nd8fCkd0R6TTVw92J3BURcOeGZesqbiGK69wdkvq5rH8N
 n/Rg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXks5EhAfrNLLUfgkiJ3OxWECfS6W3eZAVm8KbXu/sE0VYGYh1/DW6JEBsuUw8ealA3wyClHfZhqLEoJb8ZFQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YysE/w2wAHGXiToKH+ky+uyERsROYj08vKtEdoufFZ018uU78fj
 IwUQgMKtX5CRvUYK0u0Rc2tkyZ5/tjmZhTF6Y2ybPth5/uf76enp5fpEYP6+/BlYCnI=
X-Gm-Gg: ATEYQzwSEJfGE8UBlCza2k7Q0LSGAYQjVcBAlArk3VGyUbD8PDxpDJb/Pf4TOT+uyOj
 u3JtEmeK2fcLkNLupTdjvgzhjbftn5W3T/9/22GD9a8VtpiUYjTjkVBcuKyhKrMPpIGZunYXV34
 6cMsyXCp4sRch+ODvEd1ltSz1/NdYJYx5ajZ/SsKxYsowXVzx3dDL8uSsctA0SdzyMZZrM8Zw5x
 2x+pg3G2dtvpw27hc/6XA/vAngUle0wDRprwZupd9UQOZ59qHzznTKW/XlVgYcfLFkKrRiELZpw
 c37Sl+cszNRk4MnhNugHYaFF9dq/MiMAHp/6X8LvmzuAalWrryiBgH28LlL87SvB2Xf+bfHq2ji
 7TR2yO3VQhhuh31myJ24YyAAkXn/scIBxDPu+h4TggcYniMIx7dWQNIIcPLc84RimzfqEfPi5mK
 lms3JCNDy287BES0oOxiCjVqWgPO8Ci2NwGG6ZivqKFwmfcR2kEw==
X-Received: by 2002:a05:6000:1885:b0:439:cd8c:209f with SMTP id
 ffacd0b85a97d-43a04d87c31mr7656964f8f.23.1773414564529; 
 Fri, 13 Mar 2026 08:09:24 -0700 (PDT)
Received: from linux.fritz.box ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-439fe22f3a4sm18494305f8f.38.2026.03.13.08.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 08:09:24 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Michal Hocko <mhocko@suse.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 13 Mar 2026 16:09:17 +0100
Message-ID: <20260313150917.271086-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 13 Mar 2026 15:33:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1773414564; x=1774019364; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=urDXnIwW2W/IeIM0EjZ2m3KkRF3QCtGaKXO+zv+xEPE=;
 b=c065TU9i871fN3XVhQkyEB35zVtQYBhcy7Vl/OsAU1KZKyUeW2CnecCLfcnmn6sGFR
 MswOaRSWWJM/d3aoA7oMpcBbvb79fjo9XjOUHoR5Z8PL5AfHcD8t8sgU7SHCKc4E3BCQ
 sZZ6S7G1hAYHCC+pStQaLHReoftDoj7WR5qB0oKxgOpkOpFtaJQ2125x0yS0wL5/NC8I
 TgfSwbe8VZAtjJ5/obHNX58ODFoJY2ztpjIwYr3xdSFaKbd76jv2H8tPbkIeyTfM0gct
 tcBZMlu8BFBmeSs9b2W8T6f67UOuYeqzp5AIHUOVZNbhqRj7iexYv683+bvojvogCmXJ
 TafA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=suse.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=suse.com header.i=@suse.com header.a=rsa-sha256
 header.s=google header.b=c065TU9i
Subject: [Intel-wired-lan] [PATCH] idpf: Replace use of system_unbound_wq
 with system_dfl_wq
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
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:tj@kernel.org,m:jiangshanlai@gmail.com,m:frederic@kernel.org,m:bigeasy@linutronix.de,m:marco.crivellari@suse.com,m:mhocko@suse.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[marco.crivellari@suse.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linutronix.de,suse.com,intel.com,lunn.ch,davemloft.net,google.com,redhat.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marco.crivellari@suse.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 564192860F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch continues the effort to refactor workqueue APIs, which has begun
with the changes introducing new workqueues and a new alloc_workqueue flag:

   commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
   commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

The point of the refactoring is to eventually alter the default behavior of
workqueues to become unbound by default so that their workload placement is
optimized by the scheduler.

Before that to happen, workqueue users must be converted to the better named
new workqueues with no intended behaviour changes:

   system_wq -> system_percpu_wq
   system_unbound_wq -> system_dfl_wq

This way the old obsolete workqueues (system_wq, system_unbound_wq) can be
removed in the future.

Link: https://lore.kernel.org/all/20250221112003.1dSuoGyc@linutronix.de/
Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 252259993022..6b84e728d29d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2022,7 +2022,7 @@ static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
 		/* Fetch timestamp from completion descriptor through
 		 * virtchnl msg to report to stack.
 		 */
-		queue_work(system_unbound_wq, txq->tstamp_task);
+		queue_work(system_dfl_wq, txq->tstamp_task);
 		break;
 	}
 
-- 
2.53.0

