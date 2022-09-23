Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7C85E7DE5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 17:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 553C940B84;
	Fri, 23 Sep 2022 15:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 553C940B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663945556;
	bh=mn/F4DRLp4uJrLIOb4+1oPTBARUW+RDG3rflWWxkTnk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5/tsG10K1uRgtz/P4RwNYYgPiBuapPZFcINAGy1XdtJknbAnhnA3X0wTvgtOKC2Xr
	 yYMc96W7sDpyS4QkD79PZCgQ33xY9iy/7VophQOTbVo8F/CmoKZxCS4NdXl+JcW9MI
	 RllQhRY9L9gz0aH34dwyebdnEzCB5pNGYpmiIPL5xh9FwoHWMNIkVkQNyRkzYMC2nr
	 g93FYBj2oGwZsyujUotJ94EbakKTxacM10cGNliuHfQUjUBYskZa3IyiWnPf2Rxjek
	 AXoE7iKaPP5MlViOYHhm7+1c9t/MUKgPsf0sAVPxh9Gi9GCirMT8eY1fpmRhpFr9Lg
	 nFviLnvT0Q5uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xw4Ui6XVSS16; Fri, 23 Sep 2022 15:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09F33409D7;
	Fri, 23 Sep 2022 15:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09F33409D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBE181BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C640C83FEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C640C83FEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXb-3iZ9U26c for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 15:05:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66B3A83FE7
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 66B3A83FE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 15:05:49 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id z6so479264wrq.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 08:05:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=IbrAq0owyuBI2vDk7UuHuInHGIm6YEu/yGe6vOTOGVE=;
 b=vZz7xPasAtdfYodlOZ7WxUCY2EB6pwikzBzWdcQFo4r9Ioa4hmHkRrCEQp7QRKRLw3
 i80LgKFKSlPQ3/EcYcnpjUdgV5ltfqLhpcYh40l5rtL3ZMgUBaf7nkWmxacrHO5mvfhF
 wGR3KzR/2qhnVXgNh3i2x4hEUEDAhGVacWuUV5nrDsCe0GDt2tWXx52BmDamXwsZIINI
 q8YqGJmcxBj2rOjEHDqIDeT20YBaMKFxrLzYPZR2LOQY01iZ3vobTdvULfGS9yXDbdHh
 CoOEbi1CTwcWjHu3Ib9Y9BF5t/3NMEOZDV8vaevCCC3XAE0xkskvUeFAmGTcacFjo6GY
 rXpw==
X-Gm-Message-State: ACrzQf0R+30UjHQ2U4yHnSvQ/S6fqfV6b/3BbxiZQOZGJNDsSyDnZ38f
 fhugBJ90aszPy/e/KOCGgws=
X-Google-Smtp-Source: AMsMyM7vxshdv9NcCk1eQtMtBrLoSSkn6Iwj/Y3O/y/lDxIl1BYy0YkD1UzgB9nDCy+zd1CmfS/6wA==
X-Received: by 2002:a05:6000:124f:b0:228:8713:ced9 with SMTP id
 j15-20020a056000124f00b002288713ced9mr5630819wrx.198.1663945547426; 
 Fri, 23 Sep 2022 08:05:47 -0700 (PDT)
Received: from localhost.localdomain
 (host-79-34-226-61.business.telecomitalia.it. [79.34.226.61])
 by smtp.gmail.com with ESMTPSA id
 z19-20020a1cf413000000b003a541d893desm2518606wma.38.2022.09.23.08.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 08:05:46 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 Ira Weiny <ira.weiny@intel.com>
Date: Fri, 23 Sep 2022 17:05:43 +0200
Message-ID: <27280395.gRfpFWEtPU@localhost.localdomain>
In-Reply-To: <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
 <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=IbrAq0owyuBI2vDk7UuHuInHGIm6YEu/yGe6vOTOGVE=;
 b=YX51EvCicYLzsulTEP+TH4axgTjVnMmSsyVPa+FXuodPd6MQGGx9arVG+4ivuuELXZ
 uORO/ruHsPkcE+pKMLy42QhjFDrZkbMxhY1chRB3sqVO1n4kLje/IZ25T/2nwamTHjoh
 SzhM9Xz+6mr7tounkShKfyJZVvzooFBTUcOhz8811BPjwBIt+W9qrbk5eT3OyLF+7PM5
 Ct1cH5ihg9w0uCGMyQ8Mms/+2/cTarUB3+RF04TXLByxsAexBHUAzlnUf/WWdgf+h8+Y
 MwV7ClhMs/0cxAxZ4O65oVTYx9VaLbVAHSAkHVxK+6BfXypTycz8ODgUFs+8+DH0ATpP
 PpXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=YX51EvCi
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Anirudh,

On Friday, September 23, 2022 12:38:02 AM CEST Anirudh Venkataramanan wrote:
> On 9/22/2022 1:58 PM, Alexander Duyck wrote:
> > On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
> > <anirudh.venkataramanan@intel.com> wrote:
> >>
> >>
> >> Following Fabio's patches, I made similar changes for e1000/e1000e and
> >> submitted them to IWL [1].

I saw your patches and they look good to me. I might comment and probably 
review them, however I prefer to wait for Ira to do that. Furthermore, looking 
again at your patches made me recall that I need to talk with him about 
something that is only indirectly related with you work.

Please don't rely on older patches of mine as models for your next patches. In 
the last months I changed many things in the way I handle the removal of 
kmap() in favour of a plain page_address() or decide to convert to 
kmap_local_page(). Obviously I'm talking about pages which cannot come from 
ZONE_HIGHMEM.

> >> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
> >> use of page_address() [2]. My understanding of this feedback is that
> >> it's safer to use kmap_local_page() instead of page_address(), because
> >> you don't always know how the underlying page was allocated.

Your understanding of Dave's message is absolutely correct.

> >> This approach (of using kmap_local_page() instead of page_address())
> >> makes sense to me. Any reason not to go this way?

> >> [1]
> >>
> >> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/
20220919180949.388785-1-anirudh.venkataramanan@intel.com/
> >>
> >> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/
20220919180949.388785-2-anirudh.venkataramanan@intel.com/
> >>
> >> [2]
> >> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
> >>
> >> Ani
> > 
> > For the two patches you referenced the driver is the one allocating
> > the pages. So in such a case the page_address should be acceptable.
> > Specifically we are falling into alloc_page(GFP_ATOMIC) which should
> > fall into the first case that Dave Hansen called out.
> 
> Right. However, I did run into a case in the chelsio inline crypto 
> driver where it seems like the pages are allocated outside the driver. 
> In such cases, kmap_local_page() would be the right approach, as the 
> driver can't make assumptions on how the page was allocated.

The mere fact that we are still discussing this particular topic is my only 
fault. I mean that the guidelines about what to do with ZONE_NORMAL or lower 
pages is not enough clear. I'll have to improve that paragraph.

For now let me tell you what I'm doing whenever I have to decide between a 
conversion  from kmap{,_atomic}() to kmap_local_page() or a kmap() removal  in 
favour of page_address() use.

> ... and this makes me wonder why not just use kmap_local_page() even in 
> cases where the page allocation was done in the driver. IMO, this is 
> simpler because
> 
> a) you don't have to care how a page was allocated. kmap_local_page() 
> will create a temporary mapping if required, if not it just becomes a 
> wrapper to page_address().
> 
> b) should a future patch change the allocation to be from highmem, you 
> don't have to change a bunch of page_address() calls to be 
> kmap_local_page().

"a" and "b" are good arguments with sound logic. However there are a couple of 
cases that you are not yet considering.

As my main rule I prefer the use of kmap_local_page() whenever tracking if 
pages can't come from Highmem is complex, especially when allocation is 
performed in other translation units of the same driver or, worse, pages come 
from different subsystems.

Instead, I don't like to use kmap_local_page() when the allocation is in the 
same function and you see immediately that it cannot come from ZONE_HIGHMEM.

Sometimes it's so clear that using kmap_local_page() looks silly to me :-)
For example...

void *silly_alloc_and_map() {
         	struct *page;
	
	page = alloc_page(GFP_KERNEL);
	return kmap_local_page(page);
}

In this case you know without any effort that the page cannot come from 
ZONE_HIGHMEM. Therefore, why bother with mapping and unmapping (and perhaps 
write a function for unmapping).

While working on the removals or the conversions of kmap(), I noticed that 
people tend to forget to call kunmap(). We have a limited amount of kmap() 
slots. If the mapping space is fully utilized we'll have the next slot 
available only after reboot or unloading and reloading a module.

If I recall correctly, with kmap_local_page() we can map a maximum of 16 pages 
per task_struct. Therefore, limits are everywhere and people tend to leak 
resources.

To summarize: whenever allocation is easily trackable, and pages cannot come 
from ZONE_HIGHMEM, I prefer page_address().

Honestly, if code is well designed I don't care whether or not within 5 days 
or 10 years decide to change the allocation. I think it's like to refrain from 
deleting unreachable code, variables, partially implemented functions, and so 
on just because one day someone may think to make something useful from those 
things. 

Greg K-H taught me that I must see the code as is now and don't speculate 
about possible future scenarios. I agree with him in full :-)

Very different case where I _need_ page_address() are due to the strict rules 
of nesting mapping and unmapping-mapping. I recall that I spent days on a 
function in Btrfs because I could not map and unmap with the usual Last In - 
First Out (LIFO) rule. 

A function was so complex and convoluted that nobody could know in advance the 
order of execution of the mappings of two pages. Lots of goto, breaks, loops 
made impossible to unmap in the correct order at the "clean and exit" label.

I made a first attempt using a two element array as a stack which registered 
the mappings and then I used it to unmap in the correct order at exit.

It was intentionally a means to draw the attention of the maintainers. One of 
them proposed to split that very complex function in several helpers, and 
isolate the mappings one by one. It was OK to me.

After weeks, David Sterba noticed that he knew that one of the pages came from 
the page cache and we had to map it, but the second page was allocated inside 
Btrfs with GFP_KERNEL. Therefore, the better suited solution was to use 
kmap_local_page() for the first and page address() for the second.

My stack based solution was working but nobody should write such an ugly code 
just to enforce local mapping :-) 

> Is using page_address() directly beneficial in some way?

A possible call chain on 32 bits kernels is the following:

kmap_local_page() ->
 __kmap_local_page_prot() { 
	if (!IS_ENABLED(CONFIG_DEBUG_KMAP_LOCAL_FORCE_MAP) && |
PageHighMem(page))
		return page_address(page);

....
}

How many instructions can you save calling page_address() directly?
If you don't know, look at the assembly.

Thanks,

Fabio		

> Ani
> 
> 




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
