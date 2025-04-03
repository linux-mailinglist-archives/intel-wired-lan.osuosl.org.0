Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E5CA7A856
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 19:00:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18DFD6F4F3;
	Thu,  3 Apr 2025 16:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6M4RIIN5SsN9; Thu,  3 Apr 2025 16:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38B756FBA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743699588;
	bh=dPE3HowAQ2m2pe/etS+D/Mo6P/IUw+CaRhgB5DF5m3s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2sixCJ3d5lEDk9FGgEb2sseajDXCl3WOCOcJl8DYyjWtRcI+3kaQ76rjQjLC62diD
	 3bu1PwblSWuAfezGjAyy5KmAcio3g7kPhORg9GOlUDy1XII/kxGYDq9vw13ItPrZtT
	 R6FTHAeZ6kiQYDPcMHi9qK1qD1REucNkjpIBh3hBlVM55lQCqmN1TsMbUPbvvtwFnT
	 auI2sIYSi3/4K5pt5GaYem6dLBhi7noRma4Myrm/dPYIKg1eilULucdx8R9I7NwOx6
	 0m9Oeut+v3FpVHyKtGuAR7d0r3Ju60bpE07HypDrq7r6PvIZYs6wjUGnb0VIEHlhUT
	 eJ+Oa1TEfSHaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38B756FBA7;
	Thu,  3 Apr 2025 16:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC2ED117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 16:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ADCD8408F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 16:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dyUilITcbY5K for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 16:59:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D23A640247
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D23A640247
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D23A640247
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 16:59:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8B43BA44B90;
 Thu,  3 Apr 2025 16:54:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BA35C4CEE3;
 Thu,  3 Apr 2025 16:59:44 +0000 (UTC)
Date: Thu, 3 Apr 2025 09:59:41 -0700
From: Kees Cook <kees@kernel.org>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 torvalds@linux-foundation.org, peterz@infradead.org,
 Jann Horn <jannh@google.com>, andriy.shevchenko@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Harry Yoo <harry.yoo@oracle.com>, Matthew Wilcox <willy@infradead.org>,
 Christoph Lameter <cl@gentwo.org>
Message-ID: <202504030955.5C4B7D82@keescook>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <3f387b13-5482-46ed-9f52-4a9ed7001e67@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f387b13-5482-46ed-9f52-4a9ed7001e67@suse.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1743699584;
 bh=lwCLOrKjqeBhvraMsNIzlF4vAoIOPP0pmmDtxveRJqg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OisHarl2Us9CgvsWT11VflIIAJ0QwjMDmVoWz4CDXVhOGuxfeXWJp60H92QVPkP7S
 Z/Ar2eg8aLxbxF5Xl5bniVmOvfrhJ80xpgphbJNPU4Xo63HromqJ3baeudaEJ7C7MV
 tsVmk6clyNFwj4K3OKSqIxzy19yhVTLB4XDboAtVEDcY3TWh/FI95zpVpSTGbPPmbB
 eB7h1JRHJE276B5g0fGUtu7Vpe61y6hL4NDyTEJDx3cpJ6t3v+QAz7UnTdzli+U5bL
 6rktoftwaMyE5uOIOIH/sGow2JtP41V/obKNb5K4NvGesWVB37ukxmSVYIHgGDKC61
 FYKQCpMYwUmgg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OisHarl2
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

On Wed, Apr 02, 2025 at 12:44:50PM +0200, Vlastimil Babka wrote:
> Cc Kees and others from his related efforts:
> 
> https://lore.kernel.org/all/20250321202620.work.175-kees@kernel.org/

I think, unfortunately, the consensus is that "invisible side-effects"
are not going to be tolerated. After I finish with kmalloc_obj(), I'd
like to take another run at this for basically providing something like:

static inline __must_check
void *kfree(void *p) { __kfree(p); return NULL; }

And then switch all:

	kfree(s->ptr);

to

	s->ptr = kfree(s->ptr);

Where s->ptr isn't used again.

-Kees

> 
> On 4/1/25 15:44, Przemek Kitszel wrote:
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
> > 
> > With new auto_kfree, we simply will start with
> > 	struct my_dev_foo *foo auto_kfree;
> > and be safe against future extensions.
> > 
> > I believe this will open up way for broader adoption of Scope Based
> > Resource Management, say in networking.
> > I also believe that my proposed name is special enough that it will
> > be easy to know/spot that the assignement is hidden.
> > 
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> >  include/linux/slab.h | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/include/linux/slab.h b/include/linux/slab.h
> > index 98e07e9e9e58..b943be0ce626 100644
> > --- a/include/linux/slab.h
> > +++ b/include/linux/slab.h
> > @@ -471,6 +471,7 @@ void kfree_sensitive(const void *objp);
> >  size_t __ksize(const void *objp);
> >  
> >  DEFINE_FREE(kfree, void *, if (!IS_ERR_OR_NULL(_T)) kfree(_T))
> > +#define auto_kfree __free(kfree) = NULL
> >  DEFINE_FREE(kfree_sensitive, void *, if (_T) kfree_sensitive(_T))
> >  
> >  /**
> 

-- 
Kees Cook
