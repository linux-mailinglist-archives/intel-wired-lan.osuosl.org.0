Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F76A78E2B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 14:22:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0BBD412C4;
	Wed,  2 Apr 2025 12:22:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfEKHymOflD2; Wed,  2 Apr 2025 12:22:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 549F24128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743596551;
	bh=33b2t4HcrwoP+ai68jl46pM/QnlIuyA8Mc5B+grxlcA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xBh50rq++TwrHl6utKSGAT2FX2p7CoIW0WVl3ZdP6xgr2p+JoY/E+7VfrXmqAkP0o
	 tO69ZXEELOWz349KAtpc7owN+1oi9lFbZkJv9kIUD4Ksz4tcmdEXaD/KHjkIix5SkS
	 cK/TwgqR4zmyy5tC2Kueg14GAOrrt5lSRAcOm/KHdxQSniOYegOlNFO428cr9ITrNX
	 a4p1vAzEmXgmyAbhe3yqKwscS+vmNiHwQj+v1i3YAnCWDuNsO8R06adJ31PAE50EJP
	 hkUfw6q1va2I7rTAHKPvGBcf3gUPmT0+sy82Hf9h1i//4Y2+4Rer9CLioV8kSDSVqh
	 TIxcK9qV9xq3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 549F24128E;
	Wed,  2 Apr 2025 12:22:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E54F123
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FF0482893
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SHi7pCJILG1M for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 12:22:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05; helo=desiato.infradead.org;
 envelope-from=peterz@infradead.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5FEC981F26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEC981F26
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FEC981F26
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:22:28 +0000 (UTC)
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1tzx6v-00000007183-0Szs; Wed, 02 Apr 2025 12:22:25 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id A8C68300288; Wed,  2 Apr 2025 14:22:24 +0200 (CEST)
Date: Wed, 2 Apr 2025 14:22:24 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-toolchains@vger.kernel.org
Message-ID: <20250402122224.GB25719@noisy.programming.kicks-ass.net>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
 <20250402121935.GJ25239@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402121935.GJ25239@noisy.programming.kicks-ass.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=33b2t4HcrwoP+ai68jl46pM/QnlIuyA8Mc5B+grxlcA=; b=exMHggJ//R3UNW/FQV6swFas17
 utBymsHGwpsvS0cD/fUT65Wxa+tkWNbJzZkCbFpksuhWh/1sZMpX8oEu6+AH5qenYXWbphvvL625h
 BKg6nKjo73TsrmNcQGl+cphViRA8+Kh5u5BURHr1U8bktfgwRyJ1IfXtPl8xvX2tV2+y1mL63G2IE
 ZFjWYBq7Eo0Pa+EfSIyvcZAoiI3/8U1ghZjlOkofcF5lNVM2v8nf1YvjD7zvHS69C/2C5SsU5qYuN
 Ix1CCUS+GIn6rtfLrIhINo8TbHvG2DA2mObaoS7Oeoj/199PLFQxuiiPtgjE6nAMjm9GEqRtzyHsa
 btvoQhng==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=desiato.20200630 header.b=exMHggJ/
Subject: Re: [Intel-wired-lan] [RFC] slab: introduce auto_kfree macro
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

On Wed, Apr 02, 2025 at 02:19:35PM +0200, Peter Zijlstra wrote:
> On Wed, Apr 02, 2025 at 01:32:51PM +0300, Andy Shevchenko wrote:
> > On Tue, Apr 01, 2025 at 03:44:08PM +0200, Przemek Kitszel wrote:
> > > Add auto_kfree macro that acts as a higher level wrapper for manual
> > > __free(kfree) invocation, and sets the pointer to NULL - to have both
> > > well defined behavior also for the case code would lack other assignement.
> > > 
> > > Consider the following code:
> > > int my_foo(int arg)
> > > {
> > > 	struct my_dev_foo *foo __free(kfree); /* no assignement */
> > > 
> > > 	foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> > > 	/* ... */
> > > }
> > > 
> > > So far it is fine and even optimal in terms of not assigning when
> > > not needed. But it is typical to don't touch (and sadly to don't
> > > think about) code that is not related to the change, so let's consider
> > > an extension to the above, namely an "early return" style to check
> > > arg prior to allocation:
> > > int my_foo(int arg)
> > > {
> > >         struct my_dev_foo *foo __free(kfree); /* no assignement */
> > > +
> > > +	if (!arg)
> > > +		return -EINVAL;
> > >         foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> > >         /* ... */
> > > }
> > > Now we have uninitialized foo passed to kfree, what likely will crash.
> > > One could argue that `= NULL` should be added to this patch, but it is
> > > easy to forgot, especially when the foo declaration is outside of the
> > > default git context.
> 
> The compiler *should* complain. But neither GCC nor clang actually
> appear to warn in this case.
> 
> I don't think we should be making dodgy macros like you propose to work
> around this compiler deficiency. Instead I would argue we ought to get
> both compilers fixed asap, and then none of this will be needed.

Ah, I think the problem is that the cleanup function takes a pointer to
the object, and pointers to uninitialized values are generally
considered okay.

The compilers would have to explicitly disallow this for the cleanup
functions.
