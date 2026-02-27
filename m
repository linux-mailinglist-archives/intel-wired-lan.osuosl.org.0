Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMVUJyEAoml4yAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 21:35:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D95C1BDB22
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 21:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D4CA417A0;
	Fri, 27 Feb 2026 20:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHZYZU3qE4a7; Fri, 27 Feb 2026 20:35:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 137D34179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772224543;
	bh=Tc/Ht2b5cgI4g8P5Sjsh2iQU8CklCHOBQlWuRX9SNTQ=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36cgH4ECkvjawx8G8jYKQkKPDvhtAtq8GuDGl4y34Vt0gAaNJMP5RScgFnN/c8F6x
	 wZrMhau07Sow8xlxB9bt8kgV8CNVIAKIGaLov9v3K/D4oNNDotbMptao6sivR8ZeE9
	 Szb5CM13rRSk/CfWBicWNCRETNupEyHjHewh558Q5ByTmy/gQMsKPxt5zQltUIK8Z0
	 0latL0rx10rsWAaODEtBICFVjLJ94s+usvsKb8OLQ5hkylmFUwrzo8Q77lJAR4KcDG
	 4I9mhBMgxtQlOAPOGo7PTr6bDj7INYiutIk5tesLXfZvcKCsAasQ2Cc1pQOfVz4qMW
	 TTNAFrvB4jvnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 137D34179B;
	Fri, 27 Feb 2026 20:35:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CA74131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 20:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A0B64178F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 20:35:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LzCH5R3niLkY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 20:35:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3gwciaqskapyqpsrfcpdmpbemmejc.amk@flex--srutherford.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B2324178E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B2324178E
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B2324178E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 20:35:40 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2bdc0bb5ea0so2068412eec.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 12:35:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772224539; x=1772829339;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Tc/Ht2b5cgI4g8P5Sjsh2iQU8CklCHOBQlWuRX9SNTQ=;
 b=MU/TZ9ASC6w3mLjmu6j0N8MfKKm2LfdjnLMWfQ2g/H3GgvOPsMV3qu7AMFy+V2tO29
 Fi+oCK7fwzFrPy7XC4ozSO1uqTKxB672YC4cCnEyGKEgqds5z7GXsLJGNvawTCBGofl3
 8mxNxwu39etgDmKTAcYeCnjnAw1EDpNJR3sgUVe6GTggBGwo69iZZS3FphJUBMERi++L
 xpXCJPIPYKav6V2YRf1n5auL0rpIT5bmajqNnKehhKFpw0FSLPmDb++IyJgksULOL3JZ
 a3GUe9Dxgo0ywZX6RQajh23ngVloGYjZLQZpmPPRiaKLJ/zEXzywi36pTmQBauFv1d8O
 CMsA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvfIOkMNXYt/xSR3fEJNei/VVUFDZoDfClYbUdKZO+MNlkSCRqjhc+WuYBRw9XHvmo8a5O6D9RhC+aOFvqJfM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwOCT+lHTX25eiA7PppogkkRpsjPf7aNHTfoF8Ioe+nGJTpA5kS
 uRpNyPHxvyKXWUiJjj+je19I15fAmmk7E/sdS9Xr60MvFA9hknrdPl1Zm4rqhVfaTbVcYNtbaSs
 WgRsSAkfChTWOAJovshMw/LkAaA==
X-Received: from dycmf14.prod.google.com
 ([2002:a05:693c:248e:b0:2ba:9d01:ecf2])
 (user=srutherford job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:d506:b0:2bd:cebf:e48e with SMTP id
 5a478bee46e88-2bde1c3f057mr1355544eec.7.1772224539217; 
 Fri, 27 Feb 2026 12:35:39 -0800 (PST)
Date: Fri, 27 Feb 2026 20:34:57 +0000
In-Reply-To: <20260227203457.558196-1-srutherford@google.com>
Mime-Version: 1.0
References: <20260227203457.558196-1-srutherford@google.com>
X-Mailer: git-send-email 2.53.0.473.g4a7958ca14-goog
Message-ID: <20260227203457.558196-2-srutherford@google.com>
From: Steve Rutherford <srutherford@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, aleksander.lobakin@intel.com, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com, 
 Steve Rutherford <srutherford@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772224539; x=1772829339; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=Tc/Ht2b5cgI4g8P5Sjsh2iQU8CklCHOBQlWuRX9SNTQ=;
 b=Buuk2gz/k1F4XdWU2sjU+jK6hUjK4XFvm8iG2RCArTzi2ooqXPieINGwwpyvhf8+yh
 PW8939DoP4/Tnz6Cj+pNPW5KstNg4CJWyVbObV5PVDFjqrnNXQ3nuH6nGs2q2G/yeKyP
 /4YgJVkOMX8ZkDYdMePXXwVHTyuZWpNU07NNXgVRdrlcpTQkmItkfHkp3y5ofXc+5wCo
 x4wV6I+T/3dbiPDXTcC/45pCQ4oVwYBT4Y5yl1WE0rY6KEQMTWz6MYg6CNls+9Suo6O3
 1yfDwEfzNiXKLUKoblGYMFookulTJjip+cvnMWB4LP4Rs0obz6gZQQVd11RuEycfokqD
 hf+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=Buuk2gz/
Subject: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.79 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,m:srutherford@google.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[srutherford@google.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[srutherford@google.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 2D95C1BDB22
X-Rspamd-Action: no action

When SWIOTLB and header split are enabled, IDPF sees empty packets in the
rx queue.

This is caused by libeth_rx_sync_for_cpu clobbering the synthesized header
in the workaround (i.e. overflow) path. After the header is synthesized by
idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
effectively zeroing out the buffer.

This skips the extra sync in the workaround path in most cases. The one
exception is that it calls sync to trigger a recycle the header buffer when
it fails to find a header in the payload.

Fixes: 90912f9f4f2d1 ("idpf: convert header split mode to libeth + napi_build_skb()")
Signed-off-by: Steve Rutherford <srutherford@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 3ddf7b1e85ef..946203a6bd86 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3007,9 +3007,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			u64_stats_update_begin(&rxq->stats_sync);
 			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
 			u64_stats_update_end(&rxq->stats_sync);
-		}
 
-		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
+			/* Recycle the hdr buffer if unused.*/
+			if (!hdr_len)
+				libeth_rx_sync_for_cpu(hdr, 0);
+		} else if (!libeth_rx_sync_for_cpu(hdr, hdr_len))
+			hdr_len = 0;
+
+		if (hdr_len) {
 			skb = idpf_rx_build_skb(hdr, hdr_len);
 			if (!skb)
 				break;
-- 
2.53.0.473.g4a7958ca14-goog

