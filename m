Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNDaDSdmimnpJwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 23:56:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB56115481
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 23:56:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DBFA60B74;
	Mon,  9 Feb 2026 22:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id STph-XNg1tkh; Mon,  9 Feb 2026 22:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E49160C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770677796;
	bh=oXcdE+dCCg1DeJ80lcF+E7Xz9tNNb1S/uNq8kkMlQg4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tqz2OKIBiSwvmH0OKfdGb4MTIXWTswZFyvQPphD5xyZKIDOZ91VMsTQMhFDP3boDY
	 meBe9fmr9Z+P9g8rzSc4bi3gylGcBycY4aWQ/7Sn4h0jXsdrWCvSH2i0odLVaf5y0p
	 +F4hV5l+w7wd/jf5bqvjzl5KFHvchH3ZFTLHQnzdJehXjH7ZhsPMaZjYWw7bzBT2tJ
	 eut2j6+ZY7KvN8XIPX8yIzAjupXfAP0yxqvCFVxwLoVrBiQd1dUgxyyAKZMLYetxA6
	 q+bFbXbURnSTLIsEJfr3xJCxEP/clgsKYsIYHjd8MIiHUN7Vx8lI85TimvHT/QT+XZ
	 O+x0X7249jP3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E49160C28;
	Mon,  9 Feb 2026 22:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2248EF2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06F3F4026E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVYYXm6BLnn8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 22:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=tglx@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5987F40249
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5987F40249
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5987F40249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:56:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 138A760008;
 Mon,  9 Feb 2026 22:56:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A334C116C6;
 Mon,  9 Feb 2026 22:56:32 +0000 (UTC)
From: Thomas Gleixner <tglx@kernel.org>
To: Joe Damato <joe@dama.to>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
In-Reply-To: <aYpalNvTIiD4nym4@devvm20253.cco0.facebook.com>
References: <87v7g8zv2o.ffs@tglx>
 <aYpalNvTIiD4nym4@devvm20253.cco0.facebook.com>
Date: Mon, 09 Feb 2026 23:56:29 +0100
Message-ID: <87a4xhbk6a.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770677792;
 bh=trw4gZg3u5netF1WY9Edyh3HqtUonFyD0wBYk7S4QxA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=r5kEeuHy3lfzpJAInS+BRw3PmZL6CXsXz14Urxz8g6Z5va/QaUMHUDabPMIGZ+oYl
 F2tdFDYonNJcgd172JM6S7+/wpqy8viblrbx9bSbjsspn5MZUQa22gKskjS+mNZZu/
 fEVmEEhQSRGh2sV5RjCGbVzSNRAeQukzkotxIEahoybo78CIOrPSwok3BFQ/wiJC70
 MI/p/2hl38F+smbf6l/zw+2brV89ESzA0VtL+phuesuY+dJX/HUHtHikHIA1eCUfZq
 gewriuu0KzRb+bIJlXW8EJ48pn7DnAM40x70avjyMyJYDb3CnvimyA4pzCQiynhKQh
 rMHmHEx+jjP8A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=r5kEeuHy
Subject: Re: [Intel-wired-lan] i40e: Fix preempt count leak in napi poll
 tracepoint
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
X-Spamd-Result: default: False [5.79 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[tglx@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:joe@dama.to,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7FB56115481
X-Rspamd-Action: no action

On Mon, Feb 09 2026 at 14:07, Joe Damato wrote:

> On Sat, Feb 07, 2026 at 11:50:23AM +0100, Thomas Gleixner wrote:
>> Using get_cpu() in the tracepoint assignment causes an obvious preempt
>> count leak because nothing invokes put_cpu() to undo it:
>> 
>>   softirq: huh, entered softirq 3 NET_RX with preempt_count 00000100, exited with 00000101?
>> 
>> This clearly has seen a lot of testing in the last 3+ years...
>
> I'm the author who introduced the bug. FWIW, I did use it quite a bit when I
> had i40e devices.

Right, but always with PREEMPT_NONE and no debug option which would
enforce PREEMPT_COUNT ...
  
