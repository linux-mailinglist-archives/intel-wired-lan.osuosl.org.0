Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0454FA78C81
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 12:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AB0D81359;
	Wed,  2 Apr 2025 10:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RQM5H1mqFBN; Wed,  2 Apr 2025 10:40:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A276881A23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743590428;
	bh=dT9HyL/hV+skBEwMnhJp3GQdWq/EZWto30S4XhTDXq0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=seqUbJYsJ1MUs67/cSmUlAiZHTjfqg9UaBIKOAUntBulBHASvutuaXI+eeXFc48Kk
	 e1c5CVwcWtSp/PKwqsx0jOmhBDkB+pCvC6Jh+rlILeWNmOa1QlAOSl8ovj3sxJ4YIQ
	 8XsOShw1xB3d8Z9Ei00doL+qZ0wYlXxb9yvDw0pPwz4x4J7taOsQMe5ggIuMqNPKTU
	 LCz6fJXANNWtL/3q8NJhThRZrfjtuXdfJk4JN5DnXmmv5yzA7Cw2vfLREuasbqzPrU
	 7lzbfbICOSMbxy0NlxVDWAd+UDsbB7aSPlDdrW81r45sk0pC87/LHBJ8xpFvn/vPgI
	 QxQFUhZ13v2Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A276881A23;
	Wed,  2 Apr 2025 10:40:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C8E8E123
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BAF20608D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:40:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8S2Dy4lq4gDg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 10:40:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25F5860A8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25F5860A8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25F5860A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:40:26 +0000 (UTC)
X-CSE-ConnectionGUID: TCFkJ3/VTM6pcojF6GBebA==
X-CSE-MsgGUID: byWvTFTKT/6wtd+JHGvmww==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44094638"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="44094638"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:40:25 -0700
X-CSE-ConnectionGUID: MYYHhJdkTrmZBOSTYrqHtg==
X-CSE-MsgGUID: XTbPLY+pQv61IgbZ7SJ4ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="126639518"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:40:23 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1tzvW8-00000008RM3-2kDU; Wed, 02 Apr 2025 13:40:20 +0300
Date: Wed, 2 Apr 2025 13:40:20 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, peterz@infradead.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z-0UFCoxFRstPIBX@smile.fi.intel.com>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743590426; x=1775126426;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CoY9PcV0OuQT2I+HqoR9fOe7ZJeqTGaH6ofEwP5Qw60=;
 b=I1aFb88Fa5UK8nhzufZm3S8Ac0r3ZcDcqXv4jA/jVyKHNowAWIUo2nq9
 rXkgJ9jwYQLguJqakv+fY/exTgCmljIT5ONQcgjKlZiQKPz7XXFcbepA3
 zt6gmstIZQ6lSVo08YeO6c2jraP3tmgVjdRt2MB9vLRDhz8P+AytYAM0Y
 Ci+bG74UqXOeFF2rq6oM9FcZaq6khMODlZgPJccHcqFkSSy0maGSaYNFi
 EnNSEH0OeMq+QHch25jSKZDlryvTdfCTi5jgJC1wSdjV/aAiuXEQ0gxCL
 8irn2KBtO9DTrmBU8F2L6UG6i6pKPcom13aWP9H0OYYnDDl6EzFaKo6Ut
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I1aFb88F
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

On Wed, Apr 02, 2025 at 01:32:52PM +0300, Andy Shevchenko wrote:
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
> > 
> > With new auto_kfree, we simply will start with
> > 	struct my_dev_foo *foo auto_kfree;
> > and be safe against future extensions.
> > 
> > I believe this will open up way for broader adoption of Scope Based
> > Resource Management, say in networking.
> > I also believe that my proposed name is special enough that it will
> > be easy to know/spot that the assignement is hidden.
> 
> 
> I understand the issue and the problem it solves, but...
> 
> > +#define auto_kfree __free(kfree) = NULL
> 
> ...I do not like this syntax at all (note, you forgot to show the result
> in the code how it will look like).
> 
> What would be better in my opinion is to have it something like DEFINE_*()
> type, which will look more naturally in the current kernel codebase
> (as we have tons of DEFINE_FOO().
> 
> 	DEFINE_AUTO_KFREE_VAR(name, struct foo);

Maybe slightly better name is

	DEFINE_AUTO_KFREE_PTR()

as we expect this to be a pointer.

> with equivalent to
> 
> 	struct foo *name __free(kfree) = NULL

-- 
With Best Regards,
Andy Shevchenko


