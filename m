Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FeCG+SmnWmgQwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:25:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE1D187A08
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1576B41C6F;
	Tue, 24 Feb 2026 13:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RktMfoKIrzuP; Tue, 24 Feb 2026 13:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5873D41C24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771939553;
	bh=qnc7aUMFOtH/pK5n/TvqiYl46ADMU/T2ju52s1mtTuY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GVxi7Jf1y2MeSQlLGDZ+GI7KFh1vvKC17V1dGI2mt68BokPoKm0h1Exrf52Lttfqa
	 r82AzMrt2M4XbCEjz5hU3xy4ufbghoVXSPnkzHPAfRe0PcoYrEwkwgPvijNeBJo+IQ
	 WnmO7Ij15bgjeLhl/OwQgSILYiNmp5hgxuJueOucbjf8CTPlDdOftikrpK1eQqGUx3
	 OQHFiEWsPZm+6UTgjwfmqcw4CRNOgXyzuMBR/4q7u8eQwPPRP1LaERHoL2Nuo6kuO+
	 Ub1PzjE/KtBGYBY0iNC0tc2Gz5HAQLPt1m79SJ76rnU1k6QR8W5FMza5xkQ/1+ZB4I
	 pZ1HlgN7NFytA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5873D41C24;
	Tue, 24 Feb 2026 13:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FC4D249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 856AD41B7E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGKsw-eAk4XK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 13:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B650640AF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B650640AF2
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B650640AF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:25:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 19C734178B;
 Tue, 24 Feb 2026 13:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2C34C19422;
 Tue, 24 Feb 2026 13:25:49 +0000 (UTC)
Received: from localhost ([::1]) by mail.kernel.org with esmtp (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vusQ7-0000000Gpru-39rz; Tue, 24 Feb 2026 14:25:47 +0100
Date: Tue, 24 Feb 2026 14:25:46 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Kees Cook <kees@kernel.org>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20260224142546.3eb7c38b@localhost>
In-Reply-To: <878qcj8pvw.fsf@trenco.lwn.net>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <33d214091909b9a060637f56f81fb8f525cf433b@intel.com>
 <878qcj8pvw.fsf@trenco.lwn.net>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771939550;
 bh=OH226xpf6OFBkdLB/rlmhdXNbboVu+PgHRuJNn31ygA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MaoJ9568OOoCR1H3e1IZa3TXWhhHUxPVWefiXSWJ2H04Ml2WRp0YZFrfYixr85VSq
 xgLhEU4O++7qwHs4z7H6w+2Z83T8ixWcwtEoznNyTXw3SQRBIbxl7vnfiIFdMeDwb6
 D58Fq4EwRtzjQUa2SQ6x0QZyq15d4tjJXkhZMfYnAzbYXstciiMANFs7Mqr2MlvcxE
 nGme0QMlaUWVcc0XIS9/p+yJC0bk35W57YSjtBmnMj05sAvqYGbrv783MqSmT2s88s
 lQso4Cd6fZP60LmlsXOD22HuXICgwgDsLtgOtpb2uhpjH3wq6r9GHsBW9AnSZIduyL
 UMPdivEE1xDbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MaoJ9568
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
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:jani.nikula@linux.intel.com,m:aleksander.lobakin@intel.com,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,lwn.net:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BFE1D187A08
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 08:02:11 -0700
Jonathan Corbet <corbet@lwn.net> wrote:

> Jani Nikula <jani.nikula@linux.intel.com> writes:
> 
> > There's always the question, if you're putting a lot of effort into
> > making kernel-doc closer to an actual C parser, why not put all that
> > effort into using and adapting to, you know, an actual C parser?  
> 
> Not speaking to the current effort but ... in the past, when I have
> contemplated this (using, say, tree-sitter), the real problem is that
> those parsers simply strip out the comments.  Kerneldoc without comments
> ... doesn't work very well.  If there were a parser without those
> problems, and which could be made to do the right thing with all of our
> weird macro usage, it would certainly be worth considering.

Parser is only needed for statement prototypes. There, stripping
comments (after we parse public/private) should be OK. Yet, we
want a python library to do the parsing, using it only for the
things we want to be parsed.

Assuming we have something like that, we'll still need to teach
the parser about the macro transforms, as those are very Linux
specific.

Maybe something like: https://github.com/eliben/pycparser would
help (didn't test nor tried to check if it does what we want).

There is an additional problem that this will add an extra
dependency for the Kernel build itself, because kernel-doc can
run at Kernel build time.


-- 
Thanks,
Mauro
