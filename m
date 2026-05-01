Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDYQMf4A9Gkw9gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 03:25:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C744A99D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 03:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBDA9411E9;
	Fri,  1 May 2026 01:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fd-O0cYmrPcI; Fri,  1 May 2026 01:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63B15411C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777598715;
	bh=oVNJyuWqlMR4ml4qJTrmF4Dl7mhOJUtG2QO1Cc6843I=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=iNKbrwSpz1E39kptOJgZBQvotalh/oOPuWOoI5cEnu0gHm2Kr8tFxTeWSBjeaD/Fc
	 0SP+IdYTfMgVMleVt+rEz/+piPCx2rr1yzHiOiYoMmlPEGvuPvjrr06KjxWmHKZ1kf
	 YPf9je3+fpWyyYldpYaHAkSPSWVvVBdbNLGLBxeZY9v5RXpQSFJ9rYuvunffUHdT1u
	 uZqagG7eKf9DoevntoGHy0KsCzUf5Y5tUGe6blO8M35ZV5YH0RB5rxKRBBxAzXK6tF
	 8rCCgMSVRgYCUHiDFos7tTcanZKu7W+wLQnuhBNyNgQTFlUbuibMZXLhf0OJW41yro
	 qC/DtLBY5mtiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63B15411C3;
	Fri,  1 May 2026 01:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 27A47127
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:25:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1942083BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4WlY56wK5Skg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2026 01:25:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=39gd0aqykdx86jjggdbjjbg9.7jhdio9g-rdm98-g5igdnon.jnpjng.jmb@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E38F83AE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E38F83AE6
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E38F83AE6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:25:12 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2ba8013a9e3so2434212eec.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 18:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777598711; x=1778203511;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oVNJyuWqlMR4ml4qJTrmF4Dl7mhOJUtG2QO1Cc6843I=;
 b=jH173uenUqw0oXiUApl3d9ERpRc+qH6jYlCqMcOu29VSlRRQy1OHp6SaEbio1/boRw
 74GCguFeLIvAl0WDNjMe3cOUfI2ZG4gzgpEyIDg5/WYe2/xB86rFAdJFd6e3eXAOE+ZK
 CjQ49s04iSBI7lVkxsFANDt6YY2FRrom1mjyVc1vN5cO3muktf0KW0ZkKZkNAgqGR2ch
 da97HOhA1ivpsTKspixVYVNuia9j1CFU6k0LwTkO9GaNtpcFq6OkGgPxRsXkQS8v6VBK
 X6f0QdIO1XZpKHMPSSjyHOrgMuI6Lm5ILcMJU3wt1mHF0+3yYbF77AfugU+7CtjMTeiW
 29Kw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/sq7oND1zGq40KsUkuroakT9AeYUbD3BBPs7NELo3vxWG4CEu4hT6F1Qi49TXlOkM4XoRcaVY+5XHzs4snUVs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzhp9qgt/TLwTidlVx6ITMhtIZB+BRdnhH48P9Urn2EMaC1bn7F
 Jeznmbt04L4wCD7Zcf8pigyCOP3xJHhuAbcl3pcP8LqPZI+1s/yyERsIRPPluu6uOvI5WwDvEX4
 80frDiQ==
X-Received: from dybvi26.prod.google.com
 ([2002:a05:7301:531a:b0:2d8:dd18:baee])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7301:6743:b0:2d9:bc8d:f62a
 with SMTP id 5a478bee46e88-2ed3e486c61mr2586087eec.16.1777598710661; Thu, 30
 Apr 2026 18:25:10 -0700 (PDT)
Date: Fri,  1 May 2026 01:25:07 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
Message-ID: <20260501012507.461044-1-boolli@google.com>
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
 d=google.com; s=20251104; t=1777598711; x=1778203511; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=oVNJyuWqlMR4ml4qJTrmF4Dl7mhOJUtG2QO1Cc6843I=;
 b=JHPXaRqqkdaXV272idJ4VNgEsTN/W2GomXKaXQCvAQg+w+IsJAIte3wcWR7GE03mU+
 k5eWJtZnSdGtnwVRsyoMGSFrSa4OPH5YM0I8vZioU2ymWbfCRHYL5WYsU0QzlP3DJhPd
 REaOow/3YtW82H6HZuMjPr9fsf3qDRO/+dut8ZFnCCXTk89GN1AjjReZofYmXoFmQHjY
 yhHEEEsPMFjlIzurmlr3F3iA8tAcl8Inaa0K/qa0ZZUxR+tE0MhVmlX6OOhlJL37qYZE
 k0dK0j5Bfe4O9dwcaOR6em5cbGlLQtvLD9dpmsNsXZYPeWYlVTp/XAXrobI5fOTbFaHR
 zFVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=JHPXaRqq
Subject: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
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
X-Rspamd-Queue-Id: 97C744A99D9
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
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
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

Tested: Built & booted on a test machine and synthetically produced a
virtual failure to produce the following log:

idpf 0000:01:00.0: Non-zero virtchnl ret val 6 (msg op: 1, data_len: 8);
xn id: 0, cookie: 0
idpf 0000:01:00.0: Transaction failed (op 1, xn state:
3, id: 0, cookie: 0, size: 8)

Signed-off-by: Li Li <boolli@google.com>
---
v4:
 - Simplify logging to reduce redundant "ret val"s.
 - Use %u for xn->state.
v3:
 - Use dev_err_ratelimited in both logs.
 - Move log placement to after virtchnl field validation.
 - Remove redundant op/cookie fields since they were validated.
v2:
 - Use dev_warn_ratelimited instead of dev_notice_ratelimited based on
   reviewer feedback.
 drivers/net/ethernet/intel/libie/controlq.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/ethernet/intel/libie/controlq.c
index ebc05355e39d..e1bc19d6cdbf 100644
--- a/drivers/net/ethernet/intel/libie/controlq.c
+++ b/drivers/net/ethernet/intel/libie/controlq.c
@@ -766,6 +766,14 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv_params *params,
 	    msg_cookie != xn->cookie)
 		return false;
 
+	if (ctlq_msg->chnl_retval) {
+		dev_err_ratelimited(
+			params->ctlq->dev,
+			"Non-zero virtchnl ret val %u (msg op: %u, data_len: %u); xn id: %u, cookie: %u\n",
+			ctlq_msg->chnl_retval, ctlq_msg->chnl_opcode,
+			ctlq_msg->data_len, xn->index, xn->cookie);
+	}
+
 	spin_lock(&xn->xn_lock);
 	if (xn->state != LIBIE_CTLQ_XN_ASYNC &&
 	    xn->state != LIBIE_CTLQ_XN_WAITING) {
@@ -1011,6 +1019,11 @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params)
 		params->recv_mem = xn->recv_mem;
 		break;
 	default:
+		dev_err_ratelimited(
+			params->ctlq->dev,
+			"Transaction failed (op %u, xn state: %u, id: %u, cookie: %u, size: %zu)\n",
+			params->chnl_opcode, xn->state, xn->index, xn->cookie,
+			xn->recv_mem.iov_len);
 		ret = -EBADMSG;
 		break;
 	}
-- 
2.54.0.545.g6539524ca2-goog

