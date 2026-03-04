Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EKjOoojqGl3ogAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 13:20:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E8D1FF9DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 13:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FF76607C8;
	Wed,  4 Mar 2026 12:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhUdk3V6ugLM; Wed,  4 Mar 2026 12:20:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96FF8607CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772626818;
	bh=q3OLhhPpaFZZDGaiPghN0BdEty+YAByaYVxPtN3eJsU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tbbz6mxAV0HfbIi1Kj4Y35x3k9pZoqMEh+CetKunlHcxV8lbwESSrGC7hDzkZYXna
	 nlN+dzQS30C+7vWyyjX63a+nBjzpiEJjq02iccmIJYzHdlxfr7UKwBdO90272NcfKN
	 kNVNwTYi36MOh+ltdnbJ1rP31DtlspG0yhM/RUaZ+9gKDR8dLX2dG+hikOjsWB27le
	 3Z48Rv9USfKnKYacCo+bzptNH5Nwr0cTVvKVkB/9WmSAVTALvmEHPTAGoJlTf0EtBc
	 injchsUDL/cQR2dWwyNZOLxgeE9c7VkHKnnClybaerlinB83be2hG3IXTpPl6ghcxR
	 o7D7RFKXy+8XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96FF8607CC;
	Wed,  4 Mar 2026 12:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 663C025B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 12:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AB24607BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 12:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XUSELxVRcOPs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 12:20:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C3FB6075E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C3FB6075E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C3FB6075E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 12:20:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id ECA8F43AB0;
 Wed,  4 Mar 2026 12:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C382BC19423;
 Wed,  4 Mar 2026 12:20:14 +0000 (UTC)
Received: from localhost ([::1]) by mail.kernel.org with esmtp (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vxlD2-0000000BmbB-2bXO; Wed, 04 Mar 2026 13:20:12 +0100
Date: Wed, 4 Mar 2026 13:20:11 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Kees Cook <kees@kernel.org>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20260304132011.1a9567b7@localhost>
In-Reply-To: <352c3f9f8ffd2d031c86a476e532a8ea6ffcf1ed@intel.com>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <33d214091909b9a060637f56f81fb8f525cf433b@intel.com>
 <878qcj8pvw.fsf@trenco.lwn.net>
 <352c3f9f8ffd2d031c86a476e532a8ea6ffcf1ed@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772626814;
 bh=WnoeAiH2zeYFOAvm4hMpg8jxN72aiERbJc4YfUHDZDQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CsaHi6sBwsPfp+NPjbz2Ilf7H2PfoN78U0IiIBUR7ZEsgvy/StYpQiCXoCbsVjdVh
 uIajtSgfMOWXoR5kBOMZgxml5ZKxV8s4pVAs1I9rDpqJnu4cYOvuJneB/aLBPwECrH
 FjWIvg1nw7NqJdX9gDc3RWowg5IRaYCCywN7nBxuZLSbYT7npvOGy713OjEla6wbf1
 caFy362tRt7y/cuxjfFkh7Ur+qpOjZ54lm7TjUcdH4Km4lTEPbzyTPJSeAa00bBy5h
 eLhgctkNXLFCEeRs6EgEflzgOR+9ThZEI1kmWEvK/daxZ2qRS5JJb115fYSW+VQ8Eg
 8TwoXf5+SjXLQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CsaHi6sB
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
X-Rspamd-Queue-Id: 24E8D1FF9DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:corbet@lwn.net,m:aleksander.lobakin@intel.com,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action


On Wed, 04 Mar 2026 12:07:45 +0200
Jani Nikula <jani.nikula@linux.intel.com> wrote:

> On Mon, 23 Feb 2026, Jonathan Corbet <corbet@lwn.net> wrote:
> > Jani Nikula <jani.nikula@linux.intel.com> writes:
> >  
> >> There's always the question, if you're putting a lot of effort into
> >> making kernel-doc closer to an actual C parser, why not put all that
> >> effort into using and adapting to, you know, an actual C parser?  
> >
> > Not speaking to the current effort but ... in the past, when I have
> > contemplated this (using, say, tree-sitter), the real problem is that
> > those parsers simply strip out the comments.  Kerneldoc without comments
> > ... doesn't work very well.  If there were a parser without those
> > problems, and which could be made to do the right thing with all of our
> > weird macro usage, it would certainly be worth considering.  
> 
> I think e.g. libclang and its Python bindings can be made to work. The
> main problems with that are passing proper compiler options (because
> it'll need to include stuff to know about types etc. because it is a
> proper parser), preprocessing everything is going to take time, you need
> to invest a bunch into it to know how slow exactly compared to the
> current thing and whether it's prohitive, and it introduces an extra
> dependency.

It is not just that. Assume we're parsing something like this:

	static __always_inline int _raw_read_trylock(rwlock_t *lock)
		__cond_acquires_shared(true, lock);


using a cpp (or libclang). We would need to define/undefine 3 symbols:

	#if defined(WARN_CONTEXT_ANALYSIS) && !defined(__CHECKER__) && !defined(__GENKSYMS__)

(in this particular case, the default is OK, but on others, it may not
be)

This is by far more complex than just writing a logic that would
convert the above into:

	static int _raw_read_trylock(rwlock_t *lock);

which is the current kernel-doc approach.

-

Using a C preprocessor, we might have a very big prototype - and even have
arch-specific defines affecting it, as some includes may be inside 
arch/*/include.

So, we would need a kernel-doc ".config" file with a set of defines
that can be hard to maintain.

> So yeah, there are definitely tradeoffs there. But it's not like this
> constant patching of kernel-doc is exactly burden free either. I don't
> know, is it just me, but I'd like to think as a profession we'd be past
> writing ad hoc C parsers by now.

I'd say that the binding logic and the ".config" kernel-doc defines will
be complex to maintain. Maybe more complex than kernel-doc patching and
a simple C parser, like the one on my test.

> > On Mon, 23 Feb 2026 15:47:00 +0200
> > Jani Nikula <jani.nikula@linux.intel.com> wrote:  
> >> There's always the question, if you're putting a lot of effort into
> >> making kernel-doc closer to an actual C parser, why not put all that
> >> effort into using and adapting to, you know, an actual C parser?  
> >
> > Playing with this idea, it is not that hard to write an actual C
> > parser - or at least a tokenizer.  
> 
> Just for the record, I suggested using an existing parser, not going all
> NIH and writing your own.

I know, but I suspect that a simple tokenizer similar to my example might
do the job without any major impact, but yeah, tests are needed.


-- 
Thanks,
Mauro
