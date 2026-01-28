Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJZcL0hJemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:37:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5EFA701C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D57640910;
	Wed, 28 Jan 2026 17:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T4ChQPB19SOl; Wed, 28 Jan 2026 17:37:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D294C408F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769621829;
	bh=9oqJ9si/9jKjG6XLNNme1EVuvBefXUOVtMWR2s7pbuo=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bggv/bJAdWrShUe7gslFIfYqt1BRc25vep8G2K2xuSmoqNBb16PV4lAo0eH1D7tPH
	 /dDRMlUebSx1dORMbu6vQ06xCQdeKYUa7QdXnCo26hMx3XVMG+86SMwWZ/SeE/sxdV
	 iQERYrs/mFfHIU09NiR+IhH2QSvmVGltOliaCRbU8LYmuE8q1XmIP0AOIA2ty7rEZK
	 EXFhiWgOli6fBerBwumOVweLYU87Mn2UkV13DOfmr3y/ewnMf8zKtFXGuRzc9gRdXA
	 yhe6zdk+kSON9ym+NtxOoRvaHvvz5iyYgJOVnKEoe7uop/ylGS7kaa7z3hgbd060uE
	 5UxGBTnTiSClQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D294C408F0;
	Wed, 28 Jan 2026 17:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A8EC1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C65E405B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:37:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jkYycbNfW_RI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:37:07 +0000 (UTC)
X-Greylist: delayed 546 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 28 Jan 2026 17:37:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BAF9B40593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAF9B40593
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c01:e000:3a1::42; helo=ms.lwn.net;
 envelope-from=corbet@lwn.net; receiver=<UNKNOWN> 
Received: from ms.lwn.net (ms.lwn.net [IPv6:2600:3c01:e000:3a1::42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAF9B40593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 7611940C89
Received: from localhost (unknown [IPv6:2601:280:4600:27b::1fe])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 7611940C89;
 Wed, 28 Jan 2026 17:27:59 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Richard Cochran
 <richardcochran@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, Randy Dunlap
 <rdunlap@infradead.org>, Shuah Khan <skhan@linuxfoundation.org>, Stanislav
 Fomichev <sdf@fomichev.me>
In-Reply-To: <cover.1769617841.git.mchehab+huawei@kernel.org>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
Date: Wed, 28 Jan 2026 10:27:58 -0700
Message-ID: <87ecn97ild.fsf@trenco.lwn.net>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lwn.net; s=20201203; 
 t=1769621279; bh=9oqJ9si/9jKjG6XLNNme1EVuvBefXUOVtMWR2s7pbuo=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=FvvmNFLxw5Ixj5K56aynw58anknAfhai2s7OzYhzSWz+WqCBGTcPjmRYlUU8Ur18G
 RJbtmjQ/aPzgrX5oRxL1CQsunZTEoNLfXH0GZ7M1S+QjSVgifNiVDWYe4aCAEG+dgB
 oAWhO03n415iJQ9OvoiMClOgu2EUrzvAP2c4ZKjzBjezPFP0Xnbq/k2X0wQsfEpOm+
 hfCw2xwJilzVMBQhq7IIOiB7zJ9l/B2WDFXNBe4mgzGhoQp1T8XcL0CafkebwxmbaL
 F55T2oCjglGqFPiei9xUqE+NK0BcPNAl+b/Pf8KPmTXfd11jJs9DUGAI7z8B6QG1q6
 F5Fn+En/4i0lw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lwn.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=lwn.net header.i=@lwn.net header.a=rsa-sha256
 header.s=20201203 header.b=FvvmNFLx
Subject: Re: [Intel-wired-lan] [PATCH v2 00/25] kernel-doc: make it parse
 new functions and structs
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
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lwn.net : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:davem@davemloft.net,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:kuba@kernel.org,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mchehab@kernel.org,m:richardcochran@gmail.com,m:bpf@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sdf@fomichev.me,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,davemloft.net,intel.com,iogearbox.net,gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corbet@lwn.net,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corbet@lwn.net,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3D5EFA701C
X-Rspamd-Action: no action

Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:

> Hi Jon,
>
> It is impressive how a single patch became a series with 25 ones ;-)

*sigh*

I will try to have a good look at these shortly.  It seems pretty clear
that this isn't 7.0 material at this point, though.

One thing that jumped at me:

> Ah, due to the complexity of NestedMatch, I opted to write
> some unit tests to verify that the logic there is correct.
> We can use it to add other border cases.
>
> Using it is as easy as running:
>
> 	$ tools/unittests/nested_match.py
>
> (I opted to create a separate directory for it, as this
> is not really documentation)

Do we really need another unit-testing setup in the kernel?  I can't say
I'm familiar enough with kunit to say whether it would work for
non-kernel code; have you looked and verified that it isn't suitable?

Thanks,

jon
