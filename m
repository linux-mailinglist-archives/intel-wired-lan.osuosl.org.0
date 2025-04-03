Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2520A7A8CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 19:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16CD04076A;
	Thu,  3 Apr 2025 17:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9oxghp2-nmV1; Thu,  3 Apr 2025 17:46:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ED9E40B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743702391;
	bh=Q5gcc5IFZwT5cwfkK1LdyPdDF9nyGh/E1mfzORV+BT4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3PKBS1UBOZh3054OKXJExDwiNvUSS1vhXNWh1tLvo5xcOq2v9EOsiFsigH+K1/Zl9
	 NAs1WOQd8ViQmuUhReKZCSZEHu9SxaKtYnONntA4GWp4RjneoRjf5GDYHaptVIaI+N
	 HdoCuHEjELZ9ctNyoeZwM2Us7ojxV+Zi4zgVUaS9CBS4R2JXJM2UWExDcdNnE/ce4o
	 mLwN21fvDZHepY5mVLTrTPPJZAY7osV7Wm9GFEdLQc5Bl/P1VpA7qpIg3eEXGZY6v+
	 kan05lnUTEe09v2ghdc9T9/uSIBS3v07CBsW+kmRaUwi8mTFYupcVGjY+ghglVDRJW
	 6VB6+ax8aXJTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED9E40B4C;
	Thu,  3 Apr 2025 17:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EADE119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35D5741B39
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GEBYEfA1U-3w for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 17:46:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C563C400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C563C400C4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C563C400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:46:27 +0000 (UTC)
X-CSE-ConnectionGUID: JvdBrp0KSZKbmc9JjxP9VA==
X-CSE-MsgGUID: AsNT57cMRhK5BMsWCUxhkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="45247837"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45247837"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 10:46:27 -0700
X-CSE-ConnectionGUID: XL8V0+HVRweSrPe2l+1fFA==
X-CSE-MsgGUID: fYhD+ywtTVC4LwHnZlU8Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="164309309"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 10:46:24 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u0Odw-00000008ssY-2AYW; Thu, 03 Apr 2025 20:46:20 +0300
Date: Thu, 3 Apr 2025 20:46:20 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Kees Cook <kees@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 torvalds@linux-foundation.org, peterz@infradead.org,
 Jann Horn <jannh@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Harry Yoo <harry.yoo@oracle.com>,
 Christoph Lameter <cl@gentwo.org>
Message-ID: <Z-7JbPeMlnpspKM_@smile.fi.intel.com>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <3f387b13-5482-46ed-9f52-4a9ed7001e67@suse.cz>
 <202504030955.5C4B7D82@keescook>
 <Z-7G6_jm4SKtSO7a@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-7G6_jm4SKtSO7a@casper.infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743702388; x=1775238388;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CrVVJHvTACiAZiAbOqNpxsX5Sm/7YBaDo7amhX5eups=;
 b=ZGZmO3yGH5xYed/hHCi6XnPYnhJHt5z+mSXCMEJV8aWe2oaHofjeIygd
 KzOyLjJX49KZPBsX919wmk5TcbDHOHcyd09W7YlzlPg/PJKks3hLUvz0w
 oV5Me9Ut42XEc6qYMtZG7CR7zJ41q574hAJfeSPTRVTpfsGKwwXLqjtOL
 Cbjdija+y8AAHsCS8djEvP/JJKrCTSQpw3QwHSQcJ7nIBrA5iYtqh2TqX
 G74E37OG6T5JmJ1KF9uf1Uoz6+aSLzfSKwW7Hos0P77SZZAXl/v+/bIuO
 2uq4jYutnA2VCo5nYqLhTvDT4Jv+crpYpuf9IotDMeVkk8K/7T7AC8Y53
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZGZmO3yG
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

On Thu, Apr 03, 2025 at 06:35:39PM +0100, Matthew Wilcox wrote:
> On Thu, Apr 03, 2025 at 09:59:41AM -0700, Kees Cook wrote:
> > On Wed, Apr 02, 2025 at 12:44:50PM +0200, Vlastimil Babka wrote:
> > > Cc Kees and others from his related efforts:
> > > 
> > > https://lore.kernel.org/all/20250321202620.work.175-kees@kernel.org/
> > 
> > I think, unfortunately, the consensus is that "invisible side-effects"
> > are not going to be tolerated. After I finish with kmalloc_obj(), I'd
> > like to take another run at this for basically providing something like:
> > 
> > static inline __must_check
> > void *kfree(void *p) { __kfree(p); return NULL; }
> > 
> > And then switch all:
> > 
> > 	kfree(s->ptr);
> > 
> > to
> > 
> > 	s->ptr = kfree(s->ptr);
> > 
> > Where s->ptr isn't used again.
> 
> Umm ... kfree is now going to be __must_check?  That's a lot of churn.
> 
> I'd just go with making kfree() return NULL and leave off the
> __must_check.  It doesn't need the __kfree() indirection either.
> That lets individual functions opt into the new safety.

Maybe something like

void kfree_and_null(void **ptr)
{
	__kfree(*ptr);
	*ptr = NULL;
}

?

-- 
With Best Regards,
Andy Shevchenko


