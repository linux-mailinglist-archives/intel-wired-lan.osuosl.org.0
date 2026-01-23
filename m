Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKt+B9oGc2knrwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 06:27:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C139C706F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 06:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75F460710;
	Fri, 23 Jan 2026 05:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ETwE_GWml9q2; Fri, 23 Jan 2026 05:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FD976071E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769146070;
	bh=IAZSzyn91YlrkG1tCKbVc9M2F6+GonYziUiLWmXHc7s=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=UPQO1l+Tt/GQtYfeDrO0omOQ1mwBAYKZ0uTEZXEvmVB7TK6n0VShAwZPvUCzKqAy6
	 XN9ga4VXoTYcmIuLH1hxQZ7hBKh1ZxZ+8+w654cctsmW9JWX0h7DhUBmH0UEmKxxnM
	 1/sV9oqvwGS35yCK5FpTtTWD0ecHNeQFH9edoSyiCqSuMgngL+A1BQO+82wfTAxZBf
	 KMzQ+2T8irp89UYJHMoY4uWccTto9yMVgc/8xGKT+IYNJsmEmNI54wfLQDGIxXVTBk
	 cCEG0FEcOz91V5JII3TF545Oj4vbYi0O+bvA58efIREIuaddQ4yEeHOojS337XCZUU
	 PjdeC6xLEZHJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FD976071E;
	Fri, 23 Jan 2026 05:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7749B158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 05:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57F154025E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 05:27:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oe_cnqxFxPlB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 05:27:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=30gzzaqykd_0gttqqnlttlqj.htrnsyjq-1nwji-qfsqnxyx.txztxq.twl@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 611A640024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 611A640024
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 611A640024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 05:27:47 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2b72a9a9715so6226495eec.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 21:27:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769146066; x=1769750866;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IAZSzyn91YlrkG1tCKbVc9M2F6+GonYziUiLWmXHc7s=;
 b=az8vSYNg/zzoKTJss9dY4WhNP93Phpa4wRtCIlwfUSMPdNcsaXx07ymfFBJnvrJsaO
 ziATmvXGR9v3Yr6rJVx5CD0SSKeOLVGJ9iE8p5oRmU435EWP9w40d/wsbfQ/OIN9WGen
 RCJk+0xf36xsslU5VAZx9lUeJfmLsrobcs2dlSYG/qUv8JBptF4RI6zUdUiaWP0Wv2Ko
 JNGNcUekuNgJ3wAJ43/95cLmKGA2J6gmmdq7UWURuMxaPMnVuZJ83dlF47gROyumKTX7
 zGwEuf6+ABtfOT8DmUO+FU5nJDGjwV52a3AWS7QUJJbGkN00OI634yVBXm+0QSrpTSFm
 +Azw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUolh2X8wj9ZJZXDAHNcgBB2wclEemNsB0uN+9hhX5NtlgrAXMcQ/npSw6sCMyXRMOaLViJ6VHwSrXswZVGKQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzKZ5swz/znqMJE0GLuVBGO1SzD3B8wNTiYxmwRxrl+xzy+hbQa
 VTEF9AtuWTp5sFd9HNc7uEgT7+2DYG6250O+WjfuRsttZ8ZEr5mVX+eFmvFkWwDg/cmsBJ4nbF3
 +z6KQqQ==
X-Received: from dycmg13.prod.google.com
 ([2002:a05:693c:250d:b0:2b6:ad52:b359])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:6425:b0:2ab:9f55:d15a
 with SMTP id 5a478bee46e88-2b739bbffb6mr874638eec.29.1769146066294; Thu, 22
 Jan 2026 21:27:46 -0800 (PST)
Date: Fri, 23 Jan 2026 05:27:21 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260123052721.3765743-1-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769146066; x=1769750866; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IAZSzyn91YlrkG1tCKbVc9M2F6+GonYziUiLWmXHc7s=;
 b=HiwSFGMp9v+XC721JbCD3eqFTju4aktb0WPxqEJD7FqHa+FcRsDCgWA5s6uNVCk+1P
 SG49ryFogX6xxWsTRfXPF3YyO6P8dwFAexf454TUerx9vlGjtX5cFsM2y+K5CiTnIWfj
 nNZqp9AycFLIWAjp9pVh4NUsKP688ptX6YhVDiIy7tPJZm3m8+DvrSdQERk0wqIvaQBx
 ihiLpmT/KD+QcXCFW+A3h6ooJA/Z36YVaPGwm9uh2mo/09mUjsWsTQaMUuQVXfj6dRHN
 c4DDJMM4y0QjoAmlhujGVxJtUQ3IioBSsBQleRckaN6k3g7GOJfrXahkxYjWxDNDq4BU
 xiMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=HiwSFGMp
Subject: [Intel-wired-lan] [PATCH] idpf: nullify pointers after they are
 freed
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	HAS_REPLYTO(0.00)[boolli@google.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C139C706F7
X-Rspamd-Action: no action

rss_data->rss_key and vport->q_vector_idxs need to be nullified after
they are freed. Checks like "if (!rss_data->rss_key)" and
"if (!vport->q_vector_idxs)" in the code could fail if they are not
nullified.

Tested: built and booted the kernel.

Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early ethtool operations")
Fixes: 8a558cbda51b ("idpf: fix potential memory leak on kcalloc() failure")
Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 131a8121839bd..7af4214ec44de 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1308,8 +1308,10 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 free_rss_key:
 	kfree(rss_data->rss_key);
+	rss_data->rss_key = NULL;
 free_vector_idxs:
 	kfree(vport->q_vector_idxs);
+	vport->q_vector_idxs = NULL;
 free_vport:
 	kfree(vport);
 
-- 
2.52.0.457.g6b5491de43-goog

