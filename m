Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3F928B7BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 15:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C2D886B88;
	Mon, 12 Oct 2020 13:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3CzAHjQ4B2X; Mon, 12 Oct 2020 13:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2987D86B42;
	Mon, 12 Oct 2020 13:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 909A11BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 06:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75863204E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 06:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FocnCCPXv3v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 06:56:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 1364B2001F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 06:56:39 +0000 (UTC)
IronPort-SDR: gCLY8trNwfM7z2SnnUfgPLrwyX3VCBbPOHHfV0a22HUXGN7tguuFIcsJzK9+ByMRvHTLKVryDg
 sDO0kCMlmKdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="162232223"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="162232223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2020 23:56:37 -0700
IronPort-SDR: DSpSIoZKV7KPLq4zxFvBA+ZLKNkpgmuUQCwMmUi8wsqk6OFxxWBKXoVpyUUZRY9EN2DChpPczf
 4EPhWIQlBVGQ==
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="529842687"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2020 23:56:35 -0700
Date: Sun, 11 Oct 2020 23:56:35 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Eric Biggers <ebiggers@kernel.org>
Message-ID: <20201012065635.GB2046448@iweiny-DESK2.sc.intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-23-ira.weiny@intel.com>
 <20201009213434.GA839@sol.localdomain>
 <20201010003954.GW20115@casper.infradead.org>
 <20201010013036.GD1122@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010013036.GD1122@sol.localdomain>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-Mailman-Approved-At: Mon, 12 Oct 2020 13:46:23 +0000
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
 amd-gfx@lists.freedesktop.org, linux-kselftest@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
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

On Fri, Oct 09, 2020 at 06:30:36PM -0700, Eric Biggers wrote:
> On Sat, Oct 10, 2020 at 01:39:54AM +0100, Matthew Wilcox wrote:
> > On Fri, Oct 09, 2020 at 02:34:34PM -0700, Eric Biggers wrote:
> > > On Fri, Oct 09, 2020 at 12:49:57PM -0700, ira.weiny@intel.com wrote:
> > > > The kmap() calls in this FS are localized to a single thread.  To avoid
> > > > the over head of global PKRS updates use the new kmap_thread() call.
> > > >
> > > > @@ -2410,12 +2410,12 @@ static inline struct page *f2fs_pagecache_get_page(
> > > >  
> > > >  static inline void f2fs_copy_page(struct page *src, struct page *dst)
> > > >  {
> > > > -	char *src_kaddr = kmap(src);
> > > > -	char *dst_kaddr = kmap(dst);
> > > > +	char *src_kaddr = kmap_thread(src);
> > > > +	char *dst_kaddr = kmap_thread(dst);
> > > >  
> > > >  	memcpy(dst_kaddr, src_kaddr, PAGE_SIZE);
> > > > -	kunmap(dst);
> > > > -	kunmap(src);
> > > > +	kunmap_thread(dst);
> > > > +	kunmap_thread(src);
> > > >  }
> > > 
> > > Wouldn't it make more sense to switch cases like this to kmap_atomic()?
> > > The pages are only mapped to do a memcpy(), then they're immediately unmapped.
> > 
> > Maybe you missed the earlier thread from Thomas trying to do something
> > similar for rather different reasons ...
> > 
> > https://lore.kernel.org/lkml/20200919091751.011116649@linutronix.de/
> 
> I did miss it.  I'm not subscribed to any of the mailing lists it was sent to.
> 
> Anyway, it shouldn't matter.  Patchsets should be standalone, and not require
> reading random prior threads on linux-kernel to understand.

Sorry, but I did not think that the discussion above was directly related.  If
I'm not mistaken, Thomas' work was directed at relaxing kmap_atomic() into
kmap_thread() calls.  While interesting, it is not the point of this series.  I
want to restrict kmap() callers into kmap_thread().

For this series it was considered to change the kmap_thread() call sites to
kmap_atomic().  But like I said in the cover letter kmap_atomic() is not the
same semantic.  It is too strict.  Perhaps I should have expanded that
explanation.

> 
> And I still don't really understand.  After this patchset, there is still code
> nearly identical to the above (doing a temporary mapping just for a memcpy) that
> would still be using kmap_atomic().

I don't understand.  You mean there would be other call sites calling:

kmap_atomic()
memcpy()
kunmap_atomic()

?

> Is the idea that later, such code will be
> converted to use kmap_thread() instead?  If not, why use one over the other?
 

The reason for the new call is that with PKS added behind kmap we have 3 levels
of mapping we want.

global kmap (can span threads and sleep)
'thread' kmap (can sleep but not span threads)
'atomic' kmap (can't sleep nor span threads [by definition])

As Matthew said perhaps 'global kmaps' may be best changed to vmaps?  I just
don't know the details of every call site.

And since I don't know the call site details if there are kmap_thread() calls
which are better off as kmap_atomic() calls I think it is worth converting
them.  But I made the assumption that kmap users would already be calling
kmap_atomic() if they could (because it is more efficient).

Ira
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
