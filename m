Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBNbGMOypWlMEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 16:54:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4171DC395
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 16:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAA0441C93;
	Mon,  2 Mar 2026 15:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gx1DpnWhFpCp; Mon,  2 Mar 2026 15:54:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E28141C8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772466880;
	bh=uoDsUjmNtIKrn5Kz6/l+roZEKktY4DgB5luIjppuxUo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JE9WI2lq1XaiMG05WlZfxekP7Vb+rYzrtI1aOA5MZEC+hTDZb74DP5sfvWm+GeUHl
	 j3ZRu2r5L4x7aH+m+9y9p5/fc2TEZiG3HPpvtVuysmkx17HqiwKjrgVj4FogJKmJnc
	 Qexn0yWqlyUYeMAdqfIHcm8Oa5COlQq3OfsubS3PVXqWiz8hXwR3XasJjLQpoqTAyr
	 faQ2lPBToMpkTA3D3ykSs5+deq7pdXn6j5QO8kFQOCQHoyC7oatzBB7YTLaEYaubXi
	 D9f3rg7D7RghTsOQBHOaeIW2p/WkN5f02dR46WDIY9U22NGs1+jcVy/HAnpebhdoJR
	 STXME5cX8WSOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E28141C8C;
	Mon,  2 Mar 2026 15:54:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 24EEF25B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 15:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15E6483DDF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 15:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IPie-xugv247 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 15:54:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6201883DDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6201883DDB
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6201883DDB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 15:54:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 11A98600AD;
 Mon,  2 Mar 2026 15:54:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D4EC2BC87;
 Mon,  2 Mar 2026 15:54:36 +0000 (UTC)
Received: from localhost ([::1]) by mail.kernel.org with esmtp (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vx5bO-0000000GuZ0-2ElO; Mon, 02 Mar 2026 16:54:34 +0100
Date: Mon, 2 Mar 2026 16:54:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>, Kees Cook
 <kees@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Randy Dunlap
 <rdunlap@infradead.org>, Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20260302165433.27f11148@localhost>
In-Reply-To: <87sear2kbm.fsf@trenco.lwn.net>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <87sear2kbm.fsf@trenco.lwn.net>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772466876;
 bh=3BQmq9dvDpl2+fop+k6JBpifN8Rg7E6/3o3+NwzLUys=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jgDRLpR1lV5Tw0Ecq/vLiVK0zxCyZGfh1QQbGSPkdVdk1kFg7jD5JrKWWujT+3ecn
 RjXtWbXFBDkmX7zxn30hP1eQwct2sf7gJb1MzO1hPFScV+HwOVAPZ5NAFNcsGl/JbI
 eAVuF1oT4mtua5qCAOSkJ0A3nSHPDpAMyGacFS/ugKah1ihP+Fr8LZy6rriEy4chT7
 f4eyrHL4vKxvgQ02eB5Fz+VSkK9pN0/GX8il4ctbFuZcp5j4Afl5dTpoP058MHmxwM
 DXYNh6GjhipUwJDF3NojaQIG5EBzIqcCyrCtCTW6IsPV+/P3ZOFPNIPM61nOqBe5cr
 Tn9PETygu4k/Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jgDRLpR1
Subject: Re: [Intel-wired-lan] [PATCH 00/38] docs: several improvements to
 kernel-doc
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
X-Rspamd-Queue-Id: 4B4171DC395
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:aleksander.lobakin@intel.com,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[huawei];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 14:58:53 -0700
Jonathan Corbet <corbet@lwn.net> wrote:

> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:
> 
> > Hi Jon,
> >
> > This series contain several improvements for kernel-doc.
> >
> > Most of the patches came from v4 of this series:
> > 	https://lore.kernel.org/linux-doc/cover.1769867953.git.mchehab+huawei@kernel.org/  
> 
> So I will freely confess to having lost the plot with this stuff; I'm
> now trying to get back up to speed. 

Yeah, I kinda figure it out ;-)

> But, before I dig into this big
> series, can you say whether you think it's ready, or whether there's
> another one on the horizon that I should wait for?

There are more things undergoing, but I need some time to reorganize
the patchset... currently, there are 60+ patches on my pile.

So, instead of merging this patchset, I'll be sending you
a smaller series with the basic stuff, in a way that it would
be easier to review. My plan is to send patches along this week
on smaller chunks, and after checking the differences before/after,
in terms of man/rst/error output.

-- 
Thanks,
Mauro
