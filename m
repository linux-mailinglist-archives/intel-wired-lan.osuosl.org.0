Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH/XJgFt8mkMrAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 22:41:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B6549A38E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 22:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC0FD845E2;
	Wed, 29 Apr 2026 20:41:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIr8NEOh8nwH; Wed, 29 Apr 2026 20:41:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BA13844F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777495295;
	bh=Dombmj9ny0RyT7dLXRXjIRy7HfDUGhjx5FcWbglB77o=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=I/l1v+MF34B9C/vejmtexcyRszKsMpVrZK9Mb2r4UX86xN24no/Uium4wvBl/LQ9E
	 j0j6Da5tlgpwZjTnUuCyT5zD3P8z980Sx6t0mJDYHBAHMa6tFy+JuhXbFea0ULUqdZ
	 n8Wu7XTJOPQZgUS8BFjhCVFs7QemhcH56HDFeH3sVZJ0kj/vzhEZO2i3ePTBT4zev8
	 I7heF2hCmv6QqwH1XOJ7u7DZfGJPsZbj1emRwb7JXsuAeMVPOiToyeXIrrcwyrNq+1
	 aoV5F8r75qCEpr4dbwyOdeHIjwVDpxBg03Vv8kqfn78Huwd1z2+9xRH/ST2lsMuHJS
	 sRojs+ac1d5IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BA13844F0;
	Wed, 29 Apr 2026 20:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B4C9018E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A8E242622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:41:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftjwbvQTFe-1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 20:41:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3-2zyaqykd_qxkkhheckkcha.ykiejpah-senaz-hwjheopo.koqkoh.knc@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED7BD42615
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED7BD42615
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED7BD42615
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:41:32 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2d93379001eso974335eec.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 13:41:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777495292; x=1778100092;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Dombmj9ny0RyT7dLXRXjIRy7HfDUGhjx5FcWbglB77o=;
 b=NnQdsqjVw43t8hCkLTW37gav+giLGULJgrda1z80x8atp0m3F3FxbTob8aLvkS5W4U
 tdB+g+LbA4nhwZsxBK8kN8ZiI403gHj450h/ySn6vuWWXIPyVF4cKbtPAxxS8/ooQoKy
 qJUdCfwnROdei61l8YqV2SFpvdLbQES06rBywgNewUNYnEcgv6Wq38baOJ/koTnk7hEK
 jh9rvojPwK2UjYde7N7Uef5gYpTqJeffKU6LvA5wtsItXsyQnibBJmwKe3EmUhyhQuRM
 i6ihKTqkx/4pNyNCGQQPPZXSMe+AwRPs90/vyyFzeFQzdGqC+yMN2Pl+5lwIwTVpMs75
 pkBQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8/ypRD/vNDZ+Q7KMkg7JjlX4LTcfPYb/sSv5lrORoylYiXW7MUHZvUNF0v0DWTpMa5ahoWvfSawkZ0uTkio/U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxli4eXtoVWc5ikBs+3h2OhXHL/ZrDQdq8gZ75U6GOoc+JfQB3t
 S+DT03C9I4csF+QdByfWjUrjZm3jryDpRSg2DVE6yYYhgmpzU1dOEMxNHuTtyrV7h/KbIoFccpv
 Zi6EeKw==
X-Received: from dycmd10.prod.google.com
 ([2002:a05:693c:23ca:b0:2dd:7012:2d3b])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:dc93:b0:2cb:8d2f:e247
 with SMTP id 5a478bee46e88-2ed0a099154mr4072247eec.13.1777495291613; Wed, 29
 Apr 2026 13:41:31 -0700 (PDT)
Date: Wed, 29 Apr 2026 20:41:28 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
Message-ID: <20260429204128.2865817-1-boolli@google.com>
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
 d=google.com; s=20251104; t=1777495292; x=1778100092; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Dombmj9ny0RyT7dLXRXjIRy7HfDUGhjx5FcWbglB77o=;
 b=aUjB3wq9C3B5olyvGeuL99eQsSG67vwQ9Onop5JXwXoCRlQ2TL1ZvUEDvOzaQ7+9fN
 CCYv9t49Je1qYOiTP6TUUUmWuLEZRqynXrEbMDv3zJtrmKG5fGaTizPtPM/f4UZGJAT7
 cxLIt3PjQjVdiE5jvcgaC8cCeF4aq094xw6WiY8OmEwiiTSRwcc6V4/b1RRf+j174Xts
 YVJjT/iNzQq761CniEyQyADtFvajlDUkNkziYhabcMC2OFDZTuGP2DFOYLchW7rUikPj
 6a0r0p4MCzsjFKekPzJcEABbBUKs668X6AdDHnQogVvfGJGFPjYA1kWC3diHCGnLGfEq
 eZXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=aUjB3wq9
Subject: [Intel-wired-lan] [PATCH iwl-next v3] libie: log more info when
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
X-Rspamd-Queue-Id: 10B6549A38E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.951];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

Virtchnl failures can be hard to debug without logs. Logging the details
of virtchnl transactions can be useful for debugging virtchnl-related
issues.

Tested: Built & booted on a test machine and synthetically produced a
virtual failure to produce the following log:

idpf 0000:01:00.0: Non-zero virtchnl ret val (msg op: 1, ret val: 6,
data_len: 8); xn id: 0, cookie: 0
idpf 0000:01:00.0: Transaction failed (op 1, xn state:
3, id: 0, cookie: 0, size: 8)

Signed-off-by: Li Li <boolli@google.com>
---
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
index ebc05355e39d..ceca8a076d79 100644
--- a/drivers/net/ethernet/intel/libie/controlq.c
+++ b/drivers/net/ethernet/intel/libie/controlq.c
@@ -766,6 +766,14 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv_params *params,
 	    msg_cookie != xn->cookie)
 		return false;
 
+	if (ctlq_msg->chnl_retval) {
+		dev_err_ratelimited(
+			params->ctlq->dev,
+			"Non-zero virtchnl ret val (msg op: %u, ret val: %u, data_len: %u); xn id: %u, cookie: %u\n",
+			ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
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
+			"Transaction failed (op %u, xn state: %d, id: %u, cookie: %u, size: %zu)\n",
+			params->chnl_opcode, xn->state, xn->index, xn->cookie,
+			xn->recv_mem.iov_len);
 		ret = -EBADMSG;
 		break;
 	}
-- 
2.54.0.545.g6539524ca2-goog

