Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pZeIFzG+VmoEAwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 00:54:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1158C7594AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 00:54:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=kFzO7teJ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E08A6073A;
	Tue, 14 Jul 2026 22:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xULcQENS0BNL; Tue, 14 Jul 2026 22:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E92C360743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784069678;
	bh=akt6QgIGACeYYOmSTe2Ca3+zVAkuk0kMPhYLokTQESY=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=kFzO7teJXeJEgYggH/c3tMrQYNEuS+oZrS9rSlGbdsPleZHgW6ByxG/hUpzgxuuL+
	 X1SS1t66We4K8SWKBDN5ljt9MaOPhxiRf1/dW1ORJYziBb/UWB4aVfBwp7HKivk7ft
	 1+aqobLt969Sdhc06SAbFFEhSZvzJ1Bk4hwQo4TP8tv+XLfXyJk40tTMLxYWnpmRE+
	 W2d3myPashbKL45IL5kiHS6VKg+mGDyGiFal3DGgOj/Ifw3AbPcHtJV6EVxb6fsZ+I
	 fiLvNfVAh+bAJ+Ik2zS4NWtBQ3zAS7RUri8Ckvg/6g+pAqMv+sq+9puuzwUKlp9iOW
	 PW615ZDBZAwUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E92C360743;
	Tue, 14 Jul 2026 22:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B75C49D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 22:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 080C380F05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 22:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PoCFuJD6I_Hr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 22:54:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::649; helo=mail-pl1-x649.google.com;
 envelope-from=3kr5waggkd1ssanrb87b9hh9e7.5hfbgm7e-pbk76-e3geblml.hlnhle.hk9@flex--zhuyifei.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5165480F02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5165480F02
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5165480F02
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 22:54:35 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-2cc77a6943eso33329285ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 15:54:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784069674; x=1784674474;
 h=content-type:cc:to:from:subject:message-id:references:mime-version
 :in-reply-to:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=akt6QgIGACeYYOmSTe2Ca3+zVAkuk0kMPhYLokTQESY=;
 b=PpwdTAsFcv7YOebosCJMnUJ8Xu2ox+KZv1t+OuGEJyJRYC0AnL4uDdGS070XiqVJyH
 Kq1pTUXbHimrWcLYDMaD8+BalULxRnNH0ITvWwzBBft2XE3odMn6cmZaWlXVOpIQeG1L
 7DCkil046QJ/tM16i61AJ+RJ6iGx3nR4SFCN8ShaZowyoFqRyVSS9HAHDmWBupMCOEKo
 Z1BKZXxlyl1NTW8AkBsxOZn5xoqJ+Jbk75q9v8xjoGVZynCuKGRR3uQxNQ1DVl8DqbzD
 7r6DEDyIKmixbOF7KZDvAdaJVza5X4ttAZi0AAWgYYQ9bPlCCPtoeSXWoc86bX2/OL7E
 HCeg==
X-Forwarded-Encrypted: i=1;
 AHgh+Rpz3z27gyBewfdw01DSfO0ZpcrAoGVIIH7N4i+ga8elKKfeQLXp9iFZn4IIYEKoRXrptbkXToRE959SG8E6+6s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwxOtfIEyPxDE+JlJvLcZtLb6VVtlX/6okpFYHKY9pqgXipjV6K
 eR8O/rBGHHdIvqa0Kh2ptb1c7qKQAaLY4HlMvHvBO/uLC3AEtJ3DOdwu9d3W29gm2vgsDs6HgCM
 t9M3N1KYkAjKdvg==
X-Received: from dlbph10.prod.google.com
 ([2002:a05:7022:370a:b0:13b:9d10:4fe5])
 (user=zhuyifei job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:7286:b0:3bd:203b:b587 with SMTP id
 adf61e73a8af0-3c1107757femr17791649637.40.1784069674363; 
 Tue, 14 Jul 2026 15:54:34 -0700 (PDT)
Date: Tue, 14 Jul 2026 22:54:17 +0000
In-Reply-To: <20260708151327.1091570-1-aleksander.lobakin@intel.com>
Mime-Version: 1.0
References: <20260708151327.1091570-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.55.0.141.g00534a21ce-goog
Message-ID: <20260714225418.264994-1-zhuyifei@google.com>
To: aleksander.lobakin@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net, 
 edumazet@google.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 nxne.cnse.osdt.itp.upstreaming@intel.com, pabeni@redhat.com, 
 przemyslaw.kitszel@intel.com, YiFei Zhu <zhuyifei@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1784069674; x=1784674474; darn=lists.osuosl.org;
 h=content-type:cc:to:from:subject:message-id:references:mime-version
 :in-reply-to:date:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=akt6QgIGACeYYOmSTe2Ca3+zVAkuk0kMPhYLokTQESY=;
 b=EHyPAdNG3AOXipanoM2VNmCL9H+nSfOdZdjoKU1JqDXAoNSD3y50QIRQ3wsytlzp4p
 5YoyGLkKPJkVMXfjyMg0skpBA6paw6ekno7SDo+LRinGXfMpgUVhjy7iRYvRuJRpLFAY
 moru7eXJWw670edFcM1dvmZpUm/82T1u92SgLoagktSsumSOS9lcWcIQsXtLRN7ZeKZS
 WcX9ECLG2fhPsfea9rJOp78TLxZzpjBHZWWbdt1QnCXSzbtWeuFkV+yLXfg+3xR5OXGd
 udKUlAtv6Jf+yU1Qay+DC7jS05s/zD/Td+UAim0i/Q7se/X+/mcQBErwYZZyYUv04u6W
 NGeg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=EHyPAdNG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add flow-based XDP
 fallback for FWs without Tx FIFO support
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
From: YiFei Zhu via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: YiFei Zhu <zhuyifei@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:zhuyifei@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_REPLYTO(0.00)[zhuyifei@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1158C7594AD

> From the first days of XDP implementation in idpf, it relied and
> worked solely on top of the queue-based scheduling Tx mode, which
> basically means simple FIFO. However, turned out not every firmware
> supports this mode and XDP doesn't work there at all.
> 
> Since the flow-based scheduling Tx mode is mandatory and supported
> by every FW, introduce a simple fallback guarded by a static key
> to not hurt the more performant mode. The FB mode generates a
> completion for each Tx descriptor and never guarantees that there
> won't be any out-of-order completions. Serialize that using a
> bitmap of completed descriptors and report contiguous blocks of
> free bits to match XDP and XSk expectations and avoid further
> code complication.
> 
> The usage of a bitmap on hotpath might sound scary, but this
> fallback is able to reach around 70% of the QB mode's performance,
> which is comparable to what ice gives us. The main bottlenecks are
> unlikely()s and one completion per each descriptor, while in the QB
> mode we have one completion per batch (which might contain 64 or
> even 128 frames), plus the size of the completion descriptor is
> 8 bytes in this mode (4 bytes in the QB mode), which means a lot
> of additional PCI traffic.
> 
> bloat-o-meter shows .text increase in about 2 Kb without adding new
> functions or uninlining any of the existing ones. I played a bunch
> with inlining and uninlining certain pieces or the whole fallback,
> but the compiler collapses and optimizes libeth templates so hardly
> so that each additional external call only makes things worse.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Tested-by: YiFei Zhu <zhuyifei@google.com>
