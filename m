Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GA+qM4V5emkC7AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 22:03:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3799A8E69
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 22:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B87A40A2A;
	Wed, 28 Jan 2026 21:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDNnKM0k3_ZS; Wed, 28 Jan 2026 21:02:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F32840A1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769634178;
	bh=k9W28nGGwiu1y7DkBsW+fHTPqZ7XCT4PNHFHX5C5Iws=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uSb6coM7RMp/nWsIKE7qbDuFgFG7qlNfYoOKNfSc0kdExfT4AFd6IH89O0ymnCZSz
	 3CSeGGpqrNCb15qlWfGYKasyESKh+mDbbjPMvK8Ez3jIXlv5O3WkwPPL+itZhJXY43
	 21Oxaoqyv6bSt1egNglJC1Q5CQsBPbDBzOfMIiI5N9x87VuDbfHWsnMTtkDos59LMS
	 78HNOzmySDiju70WsjJaizt/FcZ6mC/jjD9hMrcFGwblx7hHw4mblpoLUlrANSUGsG
	 2tslzSU0u4BkQI2HmzYZqbCYlaJvZd5Rt/AD8MciQs0yFqEL25aJXeizlrGpnVg+RF
	 fonGYr3Pl5Y1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F32840A1B;
	Wed, 28 Jan 2026 21:02:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78E911AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 21:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CD1340735
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 21:02:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iDhhHdpGjtku for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 21:02:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B3594070D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B3594070D
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B3594070D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 21:02:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C00DB60007;
 Wed, 28 Jan 2026 21:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9049C4CEF1;
 Wed, 28 Jan 2026 21:02:50 +0000 (UTC)
Date: Wed, 28 Jan 2026 22:02:48 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20260128220248.7a0d5b9f@foz.lan>
In-Reply-To: <5b8fe4ae-25a2-4967-bb83-a52dd5907951@intel.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
 <5b8fe4ae-25a2-4967-bb83-a52dd5907951@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769634173;
 bh=Em+1CFVsGAsUe/PMauooL4Cb4HFJrPLZWLtlAhkW/CA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L9sud/OjQlo/A8mfYVJG4RYoCHr0nhu15eOZV8viCBJwMyvP70iv5PR2+yhazk3UH
 8r9nOrBDvFeEtCKI0Pxd7lB4HmSf9Y4kCqCaF2uyICd/VipWRTepNSW3SVTtgmKRSg
 9jlyZD3nNL/djj9ed/Ic1JMP32OVh/NddE/JTxt5zzrSOsRiWA1XugXm8DYPde+73e
 4HgePSHGO0Peu97Z1U/vMnJ6/KZs5aKjw3G5m9oM/GnRs8f1Yu/1la43tFdlHnevBp
 FPLBMoFxCIFt2CJuj7me5PshlVjXA+mGBCyQfySrEZjO3R9ZeqLzGIRwjXAG1ZLNu1
 mNF9JwPDdqq7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=L9sud/Oj
Subject: Re: [Intel-wired-lan] [PATCH v2 23/25]
 tools/lib/python/unittest_helper.py
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E3799A8E69
X-Rspamd-Action: no action

Hi Jacob,

On Wed, 28 Jan 2026 10:09:18 -0800
Jacob Keller <jacob.e.keller@intel.com> wrote:

> On 1/28/2026 8:50 AM, Mauro Carvalho Chehab wrote:
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---  
> 
> What is this patch trying to do? the title is not descriptive, and its 
> contents don't make sense.
> 
> >   tools/lib/python/unittest_helper.py | 16 +---------------
> >   1 file changed, 1 insertion(+), 15 deletions(-)
> > 
> > diff --git a/tools/lib/python/unittest_helper.py b/tools/lib/python/unittest_helper.py
> > index e438472fa704..3cf1075b1de4 100755
> > --- a/tools/lib/python/unittest_helper.py
> > +++ b/tools/lib/python/unittest_helper.py
> > @@ -8,21 +8,7 @@
> >   Helper class to better display unittest results.
> >   
> >   Those help functions provide a nice colored output summary of each
> > -executed test and, when a test fails, it shows the different in diff
> > -format when running in verbose mode, like::
> > -
> > -    $ tools/unittests/nested_match.py -v
> > -    ...
> > -    Traceback (most recent call last):
> > -    File "/new_devel/docs/tools/unittests/nested_match.py", line 69, in test_count_limit
> > -        self.assertEqual(replaced, "bar(a); bar(b); foo(c)")
> > -        ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > -    AssertionError: 'bar(a) foo(b); foo(c)' != 'bar(a); bar(b); foo(c)'
> > -    - bar(a) foo(b); foo(c)
> > -    ?       ^^^^
> > -    + bar(a); bar(b); foo(c)
> > -    ?       ^^^^^
> > -    ...
> > +executed test.
> >     
> 
> You delete a bunch of the output here, but don't explain why. If this 
> part of the doc is no longer valid this should be squashed into whatever 
> patch made it invalid. I suspect this is the result of the new wrapper 
> you added?

This patch came from a tool I wrote about one year ago for my own
personal usage. 

It was meant to be merged with patch 21/25, as it cleans up
the module description. I ended removing a function that was
requiring:

	from difflib import unified_diff

as it was unused, but, a second look at it, I guess we can just
drop this patch, as this is plain unittest output.

Anyway, I'll handle it either way at the next version.

Thanks,
Mauro
