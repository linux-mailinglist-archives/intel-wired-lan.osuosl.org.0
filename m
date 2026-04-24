Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIv3JXng6mkNFAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 05:16:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1221F459670
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 05:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB04940B80;
	Fri, 24 Apr 2026 03:16:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DBMZf6QcekiE; Fri, 24 Apr 2026 03:16:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 335B840B7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777000565;
	bh=SbAAeoe+lCfBByxTKPuDEe/gKzpl0DVHWMIRbJcx2qg=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=Zb3JVTX0c+SojbiDj4NEjvvR6DIEcXc73T6N+WdpYv+0Txg9+cdcKJ88jovhnqUOf
	 I3xXDHbMMFHlFyHx2FAk/lKr/gZy29RXejELeVEBYe+S+4Xit51w4YuP4ytw0SQ+I0
	 uoesHknqZc5QFcp56grpqYmnP90RvjaAx86TcJRypmVRvol7InudO6h1rZb0MUAR5w
	 MHfAn+6dRrGEsFk68+SMs8C1u9bljiS2R4UcNSQQHGzkV6AnwJwUchzroSThsnkFsg
	 OLCr2mCQBSygAiMMsey7DQ8jcCZRqsBpL72X++AkmkeJx6Q4uSv4vXa+vvGUESf+4y
	 nuopaSOdJ6+vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 335B840B7E;
	Fri, 24 Apr 2026 03:16:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CD72D24D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B32AE4076B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 461YgAp5rAY7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 03:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::134a; helo=mail-dy1-x134a.google.com;
 envelope-from=3cedqaqykdzqreebbyweewbu.secydjub-myhut-bqdbyiji.eikeib.ehw@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B45340594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B45340594
Received: from mail-dy1-x134a.google.com (mail-dy1-x134a.google.com
 [IPv6:2607:f8b0:4864:20::134a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B45340594
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:16:02 +0000 (UTC)
Received: by mail-dy1-x134a.google.com with SMTP id
 5a478bee46e88-2bdf75bc88fso9463654eec.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 20:16:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777000562; x=1777605362;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SbAAeoe+lCfBByxTKPuDEe/gKzpl0DVHWMIRbJcx2qg=;
 b=OMcb5sZKNU1N3tMwZcBh4eqEpu7le5HfinfKI3WpGMfZ+w6QY/p5X5gOtNkCp21jT0
 hy0pA7ppCGyIlG6W1882Z56cpQFzNMKGlmwqFHSM6KRgybtrB8VB1f2jXCgbLUR5x3Kw
 FitxTxhIHh1F9Hs4j92c0CFngoRvW0MUTTxm6EPPtFzuOi8WgcEluBcCKkXaaZR/oK/V
 xuaemgJo8vNLc+g1Fe/t0IYLazQB/c1mptVlWX9dwx1q399zN6AUbuGj1NNldbWO1VVH
 mpdVbcGjK8+blCWdz4Oi6+XioNOkiXX9YetrTqPB8f2nNix1TAO2Vfpy+cHotp2HtHmw
 479Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ9rYwDrzb6evxvkNGw1Z54Q5DFZgYl1zv9eG8Tx1ENulx5zLYT95Y9KybR0RgGytJqEVoKLHRKWvzKCGHXtkmE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzxyRvUaodmPqDu5xsvLzSosh/W2v84DMJHcwc4AAcC9UGYkywu
 MGInsTx/TUsZF1g7sZwAbYyZFEZnWf3W0aSSuF7DnK9Si458mAfkbmMpjswsxSCXo14HiaQjQY2
 woooYKQ==
X-Received: from dycog19.prod.google.com
 ([2002:a05:7301:9a93:b0:2dd:53c4:1b43])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:fb94:b0:2c4:61be:1d33
 with SMTP id 5a478bee46e88-2e464eaa230mr15160221eec.6.1777000561536; Thu, 23
 Apr 2026 20:16:01 -0700 (PDT)
Date: Fri, 24 Apr 2026 03:15:45 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.rc2.544.gc7ae2d5bb8-goog
Message-ID: <20260424031545.3777023-1-boolli@google.com>
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
 d=google.com; s=20251104; t=1777000562; x=1777605362; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=SbAAeoe+lCfBByxTKPuDEe/gKzpl0DVHWMIRbJcx2qg=;
 b=HQWMn/4+CKFtL9eOGo/STby/r75C2iKt+loCn0R4B/jp7MnB/2EmLLuqHXxmy4fXLN
 Oin3rX/NSbF5vc0CqMbuREoypU+il8lrLg7BlKNyo0mPuvcqAfKMFUH7RdOjvsL0qzWN
 EUdTz4fvZj3eJML8LFHJaTKw89uHlFpSpDMD2qQM0nIRuFjfOmHWCXRISvgL27VArEkh
 wF7OINBz4/nCbiBqqqjzjHAG08YOErEvfa6xcaQjtwwEq8mKp/F0djCNZyCi1v01BvvN
 V/UFYS0+n5K7u+wkSYEK+P2Ky2XXalDwMR9tnp6PImlXb8lm1WypWgcDHBpQhOb+yf2e
 +gwQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=HQWMn/4+
Subject: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: 1221F459670
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]

Virtchnl failures can be hard to debug without logs. Logging the details
of virtchnl transactions can be useful for debugging virtchnl-related
issues.

Tested: Built and booted on a test machine.

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/libie/controlq.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/ethernet/intel/libie/controlq.c
index ebc05355e39d..7eaa77413621 100644
--- a/drivers/net/ethernet/intel/libie/controlq.c
+++ b/drivers/net/ethernet/intel/libie/controlq.c
@@ -762,6 +762,16 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv_params *params,
 	status = ctlq_msg->chnl_retval ? -EFAULT : 0;
 
 	xn = &xnm->ring[xn_index];
+
+	if (ctlq_msg->chnl_retval) {
+		dev_err_ratelimited(
+			params->ctlq->dev,
+			"Non-zero virtchnl ret val (msg op: %u, ret val: %u, msg_cookie: %u, data_len: %u); xn op: %u, id: %u, cookie: %u\n",
+			ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
+			msg_cookie, ctlq_msg->data_len, xn->virtchnl_opcode,
+			xn->index, xn->cookie);
+	}
+
 	if (ctlq_msg->chnl_opcode != xn->virtchnl_opcode ||
 	    msg_cookie != xn->cookie)
 		return false;
@@ -1011,6 +1021,11 @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params)
 		params->recv_mem = xn->recv_mem;
 		break;
 	default:
+		dev_notice_ratelimited(
+			params->ctlq->dev,
+			"Transaction failed (op %u, xn state: %d, id: %u, cookie: %u, size: %zu)\n",
+			params->chnl_opcode, xn->state, xn->index, xn->cookie,
+			xn->recv_mem.iov_len);
 		ret = -EBADMSG;
 		break;
 	}
-- 
2.54.0.rc2.544.gc7ae2d5bb8-goog

