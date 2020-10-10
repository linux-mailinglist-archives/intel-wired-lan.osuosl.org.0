Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D6728A0D5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Oct 2020 17:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CCB32E33D;
	Sat, 10 Oct 2020 15:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2I7i+wNcm+p; Sat, 10 Oct 2020 15:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 346F12E341;
	Sat, 10 Oct 2020 15:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 480D41BF34A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Oct 2020 01:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D9F203EB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Oct 2020 01:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwWPezxMXpFF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Oct 2020 01:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DE351203DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Oct 2020 01:30:39 +0000 (UTC)
Received: from sol.localdomain (172-10-235-113.lightspeed.sntcca.sbcglobal.net
 [172.10.235.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E006206D9;
 Sat, 10 Oct 2020 01:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602293439;
 bh=sHFyDh52gnsvc+uI8yhUC5uDYbYkQCvra+rDiRMmAvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kwaFsg+FwkcbT1hA6vX2rbzC7SEHg0ckV7q6+TfKUuTYp7lijGzsxhx1D9MfT9qZg
 puzd9VwNUhNC7pSZTswv9TmxeVvsyOKe33XMZMPqVG5rfdvIuh+YhVfWI5Z4mrkh0S
 V8+sp7izCEY2Jms4cmTCzh86mPIYz7uaZ6k3dzLQ=
Date: Fri, 9 Oct 2020 18:30:36 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201010013036.GD1122@sol.localdomain>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-23-ira.weiny@intel.com>
 <20201009213434.GA839@sol.localdomain>
 <20201010003954.GW20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010003954.GW20115@casper.infradead.org>
X-Mailman-Approved-At: Sat, 10 Oct 2020 15:56:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC PKS/PMEM 22/58] fs/f2fs: Utilize
 new kmap_thread()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: linux-aio@kvack.org, linux-efi@vger.kernel.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 linux-mmc@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 target-devel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, ira.weiny@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Ingo Molnar <mingo@redhat.com>,
 intel-wired-lan@lists.osuosl.org, kexec@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 bpf@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Fenghua Yu <fenghua.yu@intel.com>, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 reiserfs-devel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-bcache@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, io-uring@vger.kernel.org, linux-cachefs@redhat.com,
 linux-nfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 10, 2020 at 01:39:54AM +0100, Matthew Wilcox wrote:
> On Fri, Oct 09, 2020 at 02:34:34PM -0700, Eric Biggers wrote:
> > On Fri, Oct 09, 2020 at 12:49:57PM -0700, ira.weiny@intel.com wrote:
> > > The kmap() calls in this FS are localized to a single thread.  To avoid
> > > the over head of global PKRS updates use the new kmap_thread() call.
> > >
> > > @@ -2410,12 +2410,12 @@ static inline struct page *f2fs_pagecache_get_page(
> > >  
> > >  static inline void f2fs_copy_page(struct page *src, struct page *dst)
> > >  {
> > > -	char *src_kaddr = kmap(src);
> > > -	char *dst_kaddr = kmap(dst);
> > > +	char *src_kaddr = kmap_thread(src);
> > > +	char *dst_kaddr = kmap_thread(dst);
> > >  
> > >  	memcpy(dst_kaddr, src_kaddr, PAGE_SIZE);
> > > -	kunmap(dst);
> > > -	kunmap(src);
> > > +	kunmap_thread(dst);
> > > +	kunmap_thread(src);
> > >  }
> > 
> > Wouldn't it make more sense to switch cases like this to kmap_atomic()?
> > The pages are only mapped to do a memcpy(), then they're immediately unmapped.
> 
> Maybe you missed the earlier thread from Thomas trying to do something
> similar for rather different reasons ...
> 
> https://lore.kernel.org/lkml/20200919091751.011116649@linutronix.de/

I did miss it.  I'm not subscribed to any of the mailing lists it was sent to.

Anyway, it shouldn't matter.  Patchsets should be standalone, and not require
reading random prior threads on linux-kernel to understand.

And I still don't really understand.  After this patchset, there is still code
nearly identical to the above (doing a temporary mapping just for a memcpy) that
would still be using kmap_atomic().  Is the idea that later, such code will be
converted to use kmap_thread() instead?  If not, why use one over the other?

- Eric
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
