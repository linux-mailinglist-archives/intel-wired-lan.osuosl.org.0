Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJGvAJrrs2n5dAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 11:48:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE07D281BB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 11:48:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A90360AC3;
	Fri, 13 Mar 2026 10:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u23BSRodWE7U; Fri, 13 Mar 2026 10:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6B4760AC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773398934;
	bh=C7jpPLiaZh6P4aahd2Qs4UwhEL0fct7r13QMtJvtHEI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qtXFDg4PY6GBf+lnxJNfpZLwu1mf0tsDo7CRL/eG4Sphn8sYLERINDCfW5m0iAQ7u
	 mEGgT41DliRJo9EugNT3etZkedjSZEqxB7bLXHEy7VBJrAgjPeAgmmcyigxQ/1JKI3
	 VKxjZOnakaaTGF+GaLhdCRIxotDuBa60KRtmxuxnH0RwFt054Ly4wy1qOPz92JzsmK
	 MCA0z3NjdTowCbrsXwnJ9tje9lhV2xdCHfsh7EvUk//gBwtCcLhIe3ZvUl+IhnadSE
	 PRcLXZ+QunyvUVLZul+vzAjHHE1rT/YpDAUXYZbj5c7ogE/nIh7TLxm3gnahTqCDSY
	 mqSF2RhWa9S4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6B4760AC4;
	Fri, 13 Mar 2026 10:48:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D80E81AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 10:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9AA44092C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 10:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFPvbC__5o0y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 10:48:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 722F4407FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 722F4407FC
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 722F4407FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 10:48:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A334060130;
 Fri, 13 Mar 2026 10:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E063C19421;
 Fri, 13 Mar 2026 10:48:49 +0000 (UTC)
Received: from localhost ([::1]) by mail.kernel.org with esmtp (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1w104V-0000000DgCV-0VdX; Fri, 13 Mar 2026 11:48:47 +0100
Date: Fri, 13 Mar 2026 11:48:45 +0100
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
Message-ID: <20260313114845.53eb8611@localhost>
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
 d=kernel.org; s=k20201202; t=1773398929;
 bh=hcIKGzxi9FPC6ciwT2qD9crW1zuaPgbtuY9uGNw5N0A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ARydesxEfRdZSJh5YH1nLEXtBYDGtQUZ9qBJjuESJTSIXFTaEjFyeLBydy0K721ir
 2HkppxDSs75wl/niZhL66IRKxOSD+/IycCgdzOyMtehhtBi3NbG8LGtoxpM4Q0015+
 ioUdObR2FM250f2wYqd/2GVsCxUJtEpgg+E9mQN6c9f1miCrai8ehWTTpndwtWrbkz
 9tH9sqt92Yr1KlG9KwbchKFdud0b9rjS1WQGb9SsRyx9zLrugJEO78t47P99vI52D2
 EGDJg1SGs/nFASKjoDzWCS61dHVNMc1WcEdn+rADrzbEobfWchwcG7ooj1f0dPUF7A
 7/BFpBjZUhjYA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ARydesxE
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:corbet@lwn.net,m:aleksander.lobakin@intel.com,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lwn.net:email,kdoc_parser.py:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: EE07D281BB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
> 
> So yeah, there are definitely tradeoffs there. But it's not like this
> constant patching of kernel-doc is exactly burden free either. 

On my tests with a simple C tokenizer:

	https://lore.kernel.org/linux-doc/cover.1773326442.git.mchehab+huawei@kernel.org/

The tokenizer is working fine and didn't make it much slow: it
increases the time to pass the entire Kernel tree from 37s to 47s
for man pages generation, but should not change much the time for
htmldocs, as right now only ~4 seconds is needed to read files
pointed by Documentation kernel-doc tags and parse them.

The code can still be cleaned up, as there are still some things
hardcoded on the various dump_* functions that could be better
implemented (*).

The advantage of the approach I'm using is that it allows to
gradually migrate to rely at the tokenized code, as it can be done
incrementally.

(*) for instance, __attribute__ and a couple of other macros are parsed
    twice at dump_struct() logic, on different places.

> I don't
> know, is it just me, but I'd like to think as a profession we'd be past
> writing ad hoc C parsers by now.

Probably not, but I don't think we need a C parser, as kernel-doc
just needs to understand data types (enum, struct, typedef, union,
vars) and function/macro prototypes.

For such purpose, a tokenizer sounds enough.

Now, there is the code that it is now inside:
	https://github.com/mchehab/linux/blob/tokenizer-v5/tools/lib/python/kdoc/xforms_lists.py

which contains a list of C/gcc/clang keywords that will
be ignored, like:

	__attribute__
	static
	extern
	inline

Together with a sanitized version of the kernel macros it needs
to handle or ignore:

	DECLARE_BITMAP
	DECLARE_HASHTABLE
 	__acquires
	__init
	__exit
	struct_group
	...


Once we finish cleaning up kdoc_parser.py to rely only
on it for prototype transformations, this will be the only file
that will require changes when more macros start affecting 
kernel-doc.

As this is complex, and may require manual adjustments, it
is probably better to not try to auto-generate xforms list
in runtime. A better approach is, IMO, to have a C pre-processor
code to help periodically update it, like using a target like:

	make kdoc-xforms

that would use either cpp or clang to generate a patch to
update xforms_list content after adding new macros that
affect docs generation.

-- 
Thanks,
Mauro
