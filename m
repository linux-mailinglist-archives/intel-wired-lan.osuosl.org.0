Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F840A7A8AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 19:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 223BB8206C;
	Thu,  3 Apr 2025 17:35:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L4w3wNXOWOjZ; Thu,  3 Apr 2025 17:35:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B74AF82113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743701755;
	bh=+zNCb4oElSV++JAIxIy8ekV4APM4kOcdN9c8XwdVuQM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EaVdymS4Zh4tvESOAdw8LB+i1Se1BL0z2ZVjwibzaBXMuxlB8+zl9cDWcXCT4ASJH
	 Btct3cYvN1o5EWl20IgEmH1EA09OacjOHhQ9H24nat0RHST8b2YLKkTN3QHFqbQIaf
	 iHoINQkXffZiTiuyJdqKzZcas+AHKog1oSIA0pl8em1I2rpuAPAOxxcHld/s06HVIl
	 T5zB6H2WJsanvlhT4kqUHsW+Zj2gaXoOUPADkbnPpdi13rBd9ZWoaE0GpUozCYZ/ln
	 UicwoXCjzxbJA/BcKAuJK7IfWiKdlKzf2C5Hz7uZOaXj6U/jGAitqiZXD6y46eyOzT
	 tSkNYihsZglNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B74AF82113;
	Thu,  3 Apr 2025 17:35:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A27611F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F2D36FC1C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMY2zE37eb4E for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 17:35:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2001:8b0:10b:1236::1;
 helo=casper.infradead.org; envelope-from=willy@infradead.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AB3860A99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AB3860A99
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AB3860A99
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 17:35:51 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.98.1 #2 (Red
 Hat Linux)) id 1u0OTb-0000000DOaJ-17Bp;
 Thu, 03 Apr 2025 17:35:39 +0000
Date: Thu, 3 Apr 2025 18:35:39 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kees Cook <kees@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 torvalds@linux-foundation.org, peterz@infradead.org,
 Jann Horn <jannh@google.com>, andriy.shevchenko@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Harry Yoo <harry.yoo@oracle.com>, Christoph Lameter <cl@gentwo.org>
Message-ID: <Z-7G6_jm4SKtSO7a@casper.infradead.org>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <3f387b13-5482-46ed-9f52-4a9ed7001e67@suse.cz>
 <202504030955.5C4B7D82@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202504030955.5C4B7D82@keescook>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+zNCb4oElSV++JAIxIy8ekV4APM4kOcdN9c8XwdVuQM=; b=osqwXwn0wMWUxQtyTC40Lv91ML
 HSG85bEEGPO5mZb3oDOxb8u7trcXhCenNqXAlRZXvOEM52dHN9r8WpieqwDSbBjgQVot+/mtu1mPm
 BBbervCmlr1RYjM02vxZBRyslpWy8KOoQB31VtJYzzr0hBv3RZRh37GcFLGNPBedjn/XmKqJ6Dp5O
 PqIeR57OZi7qyync5onN6uDvfcMWNtfDjfJqCp5bAbx/rR/nnfmZXc/fYMtXzQFF7v6wNmimNY3Ov
 +WzaK0pHNDAnpZlFd+kIK30RFVN/1rxbQ58SUIrSScDo1FxljuAV6qh2wMqd5hZYZ8iOoGVyJ636c
 Q0dGiLAg==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=casper.20170209 header.b=osqwXwn0
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

On Thu, Apr 03, 2025 at 09:59:41AM -0700, Kees Cook wrote:
> On Wed, Apr 02, 2025 at 12:44:50PM +0200, Vlastimil Babka wrote:
> > Cc Kees and others from his related efforts:
> > 
> > https://lore.kernel.org/all/20250321202620.work.175-kees@kernel.org/
> 
> I think, unfortunately, the consensus is that "invisible side-effects"
> are not going to be tolerated. After I finish with kmalloc_obj(), I'd
> like to take another run at this for basically providing something like:
> 
> static inline __must_check
> void *kfree(void *p) { __kfree(p); return NULL; }
> 
> And then switch all:
> 
> 	kfree(s->ptr);
> 
> to
> 
> 	s->ptr = kfree(s->ptr);
> 
> Where s->ptr isn't used again.

Umm ... kfree is now going to be __must_check?  That's a lot of churn.

I'd just go with making kfree() return NULL and leave off the
__must_check.  It doesn't need the __kfree() indirection either.
That lets individual functions opt into the new safety.
