Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yoe3HVPMoWnowQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 17:54:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158321BB0FA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 17:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E15E7827DE;
	Fri, 27 Feb 2026 16:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kw6oFipQu5Mw; Fri, 27 Feb 2026 16:54:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6597B827E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772211277;
	bh=Aag84U4bQMRgEK4LMJHj0ESGi8aRjj2bE+3e30KaXgc=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=7N0/lUJZJMt9WPzQ6uwhijv/hkmsy56cXtJ7vJrw2FfCz4RPG6NFmKUS30TcGrHjq
	 6SoOPAklq0QnfmonbaZH3SFrHVFCPu2KqU4JzpY+nx/pL/pJij4Pl69+f7FbbHUVG9
	 RCJz0XhKqL491dqyVGT7vGB9f5We6ojPXag58rGwi5ARhwP9L1YD4E5k/6MFI310tx
	 jNZdJ4Zf6DjcICMKvNwxlz2Nro0Jtyt4ybBOoPpCZIlbFxpSw5ldKsJV33d9zLoWvr
	 O799TeG4IIMjj/FyXrRCS4sN58yG/uWp7ZctOSbB2ABmO59UqEqdsjpMhNafqsM5QQ
	 pBi7/ZofY2f2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6597B827E0;
	Fri, 27 Feb 2026 16:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63FBE131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 03:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49C03408D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 03:00:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D42aHtNoo5K7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 03:00:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3swihaqskajwonqpdanbkn9ckkcha.8ki@flex--srutherford.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 49672408CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49672408CB
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49672408CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 03:00:04 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2bdc1b30ac8so27440997eec.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 19:00:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772161203; x=1772766003;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Aag84U4bQMRgEK4LMJHj0ESGi8aRjj2bE+3e30KaXgc=;
 b=rBmrlteSZA/XR24vo4mlslAwW1ArCl5gWdhVN6CSOJfYT19L+eE2RZceJ3/mFPbpT8
 dD8ZX4/kVzDmCa9Dn9uT0mad2vvBjcOET0NEnaRSnIEAgPTzmd9Q4/y/azGGq6SqHZZB
 TH1wuJ8vpa49g0QWB+rZpqmztjB2+y9BBuMdvPzhTQAvWJo/XsSahVEIQ3PUrpniJUAw
 A5dIz683J2bALGeY+Vw3tYHDMejXwwbXx6sEV9ADVWZ/wntumuFuRWI+MJeoW4dk4oy+
 eTuUk2KluY/mF4MXkVhBGJR1j0rVCco7gGNcXaRJTTsk7lUexycdmAIzNaG6PNqxljTB
 qzZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVF379lgQlr66UCteJiPzlXtCAcyKJWCHAQm7g9n4wX0WwY7yUevGQhx5HO9N6n59bmb3xlaQOaOUCGMGAZlQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw9GSk17xV7BF3aNQAg844hPivDVYU1xwpZSqE1zZNUlh2i2DWH
 7gCKfaHOIbif9BDQhhwhMyE1Xy6b00ayIAt6Ty1vTo5yEUt2rs+KULQ6fQYNrkaL04iipO/Dc2x
 OIEXFjzB9O5S26F5dphY8zkKEUw==
X-Received: from dybkk8.prod.google.com ([2002:a05:7301:3c88:b0:2bd:b12b:3839])
 (user=srutherford job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:2325:b0:2b8:66f3:2522 with SMTP id
 5a478bee46e88-2bde1c0ef97mr761496eec.3.1772161203130; 
 Thu, 26 Feb 2026 19:00:03 -0800 (PST)
Date: Fri, 27 Feb 2026 02:59:50 +0000
In-Reply-To: <20260227025950.174755-1-srutherford@google.com>
Mime-Version: 1.0
References: <20260227025950.174755-1-srutherford@google.com>
X-Mailer: git-send-email 2.53.0.473.g4a7958ca14-goog
Message-ID: <20260227025950.174755-2-srutherford@google.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 aleksander.lobakin@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Steve Rutherford <srutherford@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 27 Feb 2026 16:54:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772161203; x=1772766003; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=Aag84U4bQMRgEK4LMJHj0ESGi8aRjj2bE+3e30KaXgc=;
 b=rZiMhhJb0P8noa6iqvAtSzn1oI4CKNZ9CvkZiFuFFcQheBbLT9iMvCP3qMzLlOPHUg
 k/SSzRPf65rzwadlQ+0uzA/SpBavXRwnf4OM/0UqGpqG1J8KyyGBycj6A1Oh9mLNzzhm
 NL1hif5oUV/HGCsF+ZXpHk4tmMfhgfn+cBQPD2nfq2JQxNUNL91F5Nix8fbjiO8ZrTGU
 yMblBPPJdrjVHuf3QdFSKyZBYwhOzTyHgAxAcRVNqgEnEJ/J8H0AbOXU7RKhxvm3FGRT
 fdsqG9upN29Hw+1w3tPQphexrio8wPVF883PCqHEiw9N4X4t93/L8Z/8Vnj5TskFThvg
 BFHQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=rZiMhhJb
Subject: [Intel-wired-lan] [RFC PATCH 1/1] Fix header clobber in IDPF with
 SWIOTLB enabled
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
From: Steve Rutherford via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Steve Rutherford <srutherford@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:srutherford@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[srutherford@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 158321BB0FA
X-Rspamd-Action: no action

When SWIOTLB and header split are enabled, IDPF sees empty packets in the
rx queue.

This is caused by libeth_rx_sync_for_cpu clobbering the synthesized header
in the workaround (i.e. overflow) path. After the header is synthesized by
idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
effectively zeroing out the buffer.

This skips the extra sync in the workaround path in most cases. The one
exception is that it calls sync to trigger a recycle for the header buffer
when it fails to find a header in the payload.

Signed-off-by: Steve Rutherford <srutherford@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 3ddf7b1e85ef..b02195fa2813 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3007,9 +3007,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			u64_stats_update_begin(&rxq->stats_sync);
 			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
 			u64_stats_update_end(&rxq->stats_sync);
-		}
 
-		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
+			/* Recycle the hdr buffer if unused */
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

