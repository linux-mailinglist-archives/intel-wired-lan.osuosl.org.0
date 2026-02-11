Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UB65BX+ujGl/sAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:29:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E851261E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:29:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CD0940DA7;
	Wed, 11 Feb 2026 16:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UlnHVz0B6G3Q; Wed, 11 Feb 2026 16:29:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81EC4411D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770827388;
	bh=tQv05ILMKxllfl45z92SDOph56g77ozE9I5ricXOpDE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=esjOjeCnQmYUQIHR33QHzSGzuteAnXl7mrk7QwhHTNImlg2HPstXKCQYhhZcMcukf
	 1BZCTcNNFnM8L0x1STbQ39mNA7ZTw5FYuxSQ9mVAzV+jVsZ07ZuU1gv4tIkswrRCSZ
	 rpMomJqyCIVTLTjQYrs47ivh4p/G2gKnqBzJUGKk+iWk8JjpXogc0JUZf6oIdLbYjg
	 IEf0No1KOS785nhURrZ6a0bmcCzeftAa1OESGwH3P96PdeSfDWT/WckdFgK2ndGhMU
	 X1a/z1RzerkDJ5LV7f83t6JQvQv2F858g4PO5R7XWpzPAKS8oJQ6okpjeQUhEga5X4
	 z0pJDQz7jz3bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81EC4411D9;
	Wed, 11 Feb 2026 16:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BB0CBE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F71740DA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8OBw6QcJ0gl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 16:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112f; helo=mail-yw1-x112f.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 979AC40D92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 979AC40D92
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 979AC40D92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 16:29:46 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-796d0395828so3442557b3.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:29:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770827385; x=1771432185;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tQv05ILMKxllfl45z92SDOph56g77ozE9I5ricXOpDE=;
 b=aRl46uOzPDBC1t5VkMJE9Bgb4gHA9Phf79W4tSvdHIeve6LR8MZh0o1c0CT+zP34Np
 KK9Wx7k73pRLJN/HIxhVPLUhY90IYFgu1j1ewHaidWDZKChADOg3lrL1334JnpVUcbO3
 2bLwg9Zh0PZp9ECDmi0119WfTnqKHg+AYVs2+NJsvvrClkO6WOYjGO2cPsWBHtj29et/
 wX0hidYWvQtXBMzWVPg8ZO1aB5HE5HeGA5At+TEkwFl/YsV05eORIYowoCcBCNuAYvyv
 k7lmuCcQX+kmxcjjOEMuFGnShDufHc/km8DZ1EokmHB8lmqlQbURzZCJCmWOrtLRKjun
 7cBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+fEy4YVq00L9GzAKWTeUG3Op+ZSqlRNHjzW2Mwf7ZUu0jDfDRsXUCuBCmajveAbSK30P4iAmyRNAv0gjFMsQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxOzmT0Qk77VPIzzZuUV55K0mjbIKVWDW8XTv62Z/Hl8RQUulCF
 9aiHpSVwnkFNKhb0kiHDPkr6XUkbtCLeJO8pYS3/zqOisZjzwpm+8JWU
X-Gm-Gg: AZuq6aI/JUyDEs5kh8uT2Rm+Y6k7Bm3IHWGcbH/d5/FS5if06cG1uRcI+SVfcsYalO7
 4d+LEoCflDKfe1KvOizj+GIIuoeVAbT3hvmX95pRg6j7+Ob1GB8msjFOTwQnfTkx7DMxnd4Jr4s
 bukAYqy134MQrh4NG08j632UvqOre/RLFNJhlrKS5PDd63MFErPNXuCjHviho+WJXD0bZxPr/sM
 v3Jtp1WcxQvcIvOqgN0O1NRoh5yZYjLYfCwSD3MPJb7IgTcOt4OgiDHEvAMXYtEPTVELzSCVlxx
 sSMj831KlfgHmICkSF6tmsazVEF0nINKSbJCnTvEuLlzRI4YQLDEBHQpCy01f5hTATtmrlB0P+e
 58wbV0TxFeYISBwNXHQ5QOTwwMn6b5tEaa7epU57Hr4cwojKlwa29rlq3dWM/paMY4p3fIIYFal
 QedLOX10fBAAsKeXaesKf5xiQBy17aBfaGoNkADinW7QqvD+MpAAll00qgGzMcD8YreoOEjxM=
X-Received: by 2002:a05:690c:6602:b0:794:d887:726e with SMTP id
 00721157ae682-7952ab3c507mr154210237b3.57.1770827385211; 
 Wed, 11 Feb 2026 08:29:45 -0800 (PST)
Received: from gmail.com (21.33.48.34.bc.googleusercontent.com. [34.48.33.21])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-7966c16e7c6sm21293957b3.1.2026.02.11.08.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Feb 2026 08:29:44 -0800 (PST)
Date: Wed, 11 Feb 2026 11:29:43 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Willem de Bruijn <willemb@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Paul Menzel <pmenzel@molgen.mpg.de>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <willemdebruijn.kernel.2759f838d176e@gmail.com>
In-Reply-To: <87qzqr5vos.fsf@jax.kurt.home>
References: <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
 <willemdebruijn.kernel.2e6213a98660b@gmail.com>
 <20260210121207.9kLHroS0@linutronix.de>
 <willemdebruijn.kernel.cceee43f5b9b@gmail.com>
 <87qzqr5vos.fsf@jax.kurt.home>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770827385; x=1771432185; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tQv05ILMKxllfl45z92SDOph56g77ozE9I5ricXOpDE=;
 b=Xcles/uvv25nGkmxWBuYPvxPhkchIZQhmc3V8bxuefy6Rgvbn0OtCjLQ+nTxAsY0tn
 LWdfF0+hj+ViUbYMK6/fYg4c2YvmObg9onRZGen8hQNuDXKdFSeReppNE63Bri/mCJLJ
 tlMTA0m5x+p+jo3Po0JsOMtva4aqrboEAfJsIU7IBI5/49K1B5jUT3D7tzRbtRMFZIo9
 CJ9/toOAHqjxEl/9euly/RFcYXbhmqvUUDMw4l1jw1nghezCymE1rpUdC5w+IEflqBy+
 T53tJWHoIyBWm7YZ4NQXpIetA4V8OLo471h45rHIy+aExsZ6igelQH6+YUFNZbkSCFAd
 e8tw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Xcles/uv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:willemdebruijn.kernel@gmail.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linutronix.de,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,google.com,kernel.org,redhat.com,davemloft.net,intel.com,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 86E851261E7
X-Rspamd-Action: no action

Kurt Kanzenbach wrote:
> On Tue Feb 10 2026, Willem de Bruijn wrote:
> > The core issue seems to be that the ptp_tx_work is not scheduled
> > quickly enough. I wonder if that is the issue to be fixed. When/why
> > is this too slow?
> 
> The igb driver uses schedule_work() for the Tx timestamp retrieval. That
> means the ptp_tx_work item is queued to the kernel-global workqueue. In
> case there is load on the system, the kworker which handles ptp_tx_work
> might be delayed too much, which results in ptp4l timeouts.
> 
> Easy solution would be to tune the priority/affinity of the
> kworker. However, we have to figure which kworker it is. Furthermore,
> this kworker might handle other things as well, which are not related to
> igb timestamping at all. Therefore, tuning the priority of the kworker
> is not practical.
> 
> Moving the timestamping in IRQ looked like a good solution, because the
> device already signals that the Tx timestamp is available now. No need
> to schedule any worker/work at all. So, it'd be very nice if
> skb_tstamp_tx() could be called from IRQ context. BTW other drivers like
> igc call this function in IRQ context as well.
> 
> Alternative solution for igb is to move from schedule_work() to PTP AUX
> worker. That is a dedicated PTP worker thread called ptpX, which could
> handle the timestamping. This can be easily tuned with taskset and
> chrt. However, there's one difference to the kworker approach: The
> kworker always runs on the same CPU, where the IRQ triggered, the AUX
> worker not necessarily. This means, Miroslav needs to be aware of this
> and tune the AUX worker for his NTP use cases.
> 
> I hope, that makes the motivation for this patch and discussion clear.

It does thanks.

I think we should look at the locking. It is not clear to me that
sk_callback_lock needs to be held here at all.

From the lock documentation itself its use is more limited.

sk->sk_socket->file is indeed dereferenced elsewhere without holding
such locks.

sk_capable is another indication.
