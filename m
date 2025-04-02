Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3683CA78E19
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 14:19:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA263411D6;
	Wed,  2 Apr 2025 12:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h2govmI-UAhy; Wed,  2 Apr 2025 12:19:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF0C7410E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743596383;
	bh=tYWalLVq1oY7YpgCK/9TLrLFA6SrCHespTPHmhCT5W0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oo+kMNeUQzwxodlu8QVmL+3Jctvt4uMkJx5WFhgtCK7ZJP8RU08s5eMRfunrc+EBQ
	 IcnjHjSGlqvZTdJblz72qrO3/sNEG2BAcmfrNahE72krF8Njffz72YoIj272EcnKVY
	 NPodRIxMD7ORoeCo0dAA/pF5k4+ykO3BnHjNrtagSYfd3VzSSa0KKqP3ywzIBbf6Pa
	 QIC1HEyubopFz/bzG6xGuU8N1Iz+JDKGx5nvQzWNOjhs5/awsDCPrz+1neqZYXMwSr
	 qvCs5NuUO09Pdvx09QqYEnuCviJe2cyjb/R+jq/dNrxGSRGJjDvpZPv6N51lbM9+Cf
	 nwG3dtKGcAidw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF0C7410E4;
	Wed,  2 Apr 2025 12:19:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0447A123
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6EA7400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:19:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cnneMIDq6jP0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 12:19:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05; helo=desiato.infradead.org;
 envelope-from=peterz@infradead.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CFD44016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CFD44016B
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CFD44016B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:19:40 +0000 (UTC)
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1tzx4C-00000007171-1r8R; Wed, 02 Apr 2025 12:19:36 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7678D30049D; Wed,  2 Apr 2025 14:19:35 +0200 (CEST)
Date: Wed, 2 Apr 2025 14:19:35 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-toolchains@vger.kernel.org
Message-ID: <20250402121935.GJ25239@noisy.programming.kicks-ass.net>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tYWalLVq1oY7YpgCK/9TLrLFA6SrCHespTPHmhCT5W0=; b=DeX/TrKkUl7ChmLIkudAGakoJN
 wsSUgMerqtPGyl9OXs8f24kpWwBVJCMpW/mnnpHVcIc4OFtPRxqhUGuMvHw4wCWTy7pEstmV8dRqn
 SadtUutQ0Bhw+tvxfLx5Iy7VQHuSg3eZ7EzlI/tibq4jui7PPUzPDGdga1tKZm4PN1gijbLSSu5Yt
 AdWyU6i6jvl5Vs8HVhz4pa7OScaG9WOdE/0xPQ3XyXx1/O7YS7ikRMNrc3+BZ9bxl1zp5Mn9mnwly
 /7hMuerNACzK46FGeyFdO5XBglm5/1g1jneirQD7kOlp0jIWa3mTQpDGl+5poSLkMLitbYYaAlA9P
 3LY4gU1A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=desiato.20200630 header.b=DeX/TrKk
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

On Wed, Apr 02, 2025 at 01:32:51PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 01, 2025 at 03:44:08PM +0200, Przemek Kitszel wrote:
> > Add auto_kfree macro that acts as a higher level wrapper for manual
> > __free(kfree) invocation, and sets the pointer to NULL - to have both
> > well defined behavior also for the case code would lack other assignement.
> > 
> > Consider the following code:
> > int my_foo(int arg)
> > {
> > 	struct my_dev_foo *foo __free(kfree); /* no assignement */
> > 
> > 	foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> > 	/* ... */
> > }
> > 
> > So far it is fine and even optimal in terms of not assigning when
> > not needed. But it is typical to don't touch (and sadly to don't
> > think about) code that is not related to the change, so let's consider
> > an extension to the above, namely an "early return" style to check
> > arg prior to allocation:
> > int my_foo(int arg)
> > {
> >         struct my_dev_foo *foo __free(kfree); /* no assignement */
> > +
> > +	if (!arg)
> > +		return -EINVAL;
> >         foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> >         /* ... */
> > }
> > Now we have uninitialized foo passed to kfree, what likely will crash.
> > One could argue that `= NULL` should be added to this patch, but it is
> > easy to forgot, especially when the foo declaration is outside of the
> > default git context.

The compiler *should* complain. But neither GCC nor clang actually
appear to warn in this case.

I don't think we should be making dodgy macros like you propose to work
around this compiler deficiency. Instead I would argue we ought to get
both compilers fixed asap, and then none of this will be needed.
