Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93895E84E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 23:31:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0D724104C;
	Fri, 23 Sep 2022 21:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0D724104C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663968682;
	bh=jIqsLjxGa06OagQB1yv/tCh0UaTuLewBpe1eqO2GNwc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jYSThCmQbDG3iSNZT38d82uBel7ZKXaC1x7nRGwwW3bjce5G4z+dxq7Y30bceVeDw
	 zfOlazVUvnG8XHow8fmDmeNvb5gFZnJDU6SrLqFfS4VpXH+gbN9O40apFtc9bzTERr
	 M9foxbRGe8+neERB/C85lORUD1WXU8hhiiwt8j0qh7IO+69J+3kYy4VK/iyaWQBoTF
	 78YhxPZ3c8GCRw2IsSunb7/PSaMPmlOtqh+qREZre8oH0FQMo/sAxW1wD1BzAFjLOG
	 Pp+LU1CPiC7iw5Eb4BrUfnenAYN/r73iDIePoaEs3smNlk62UML+oGZohlnQRrgEPF
	 a9T1BFgZp+zsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1pY7Gc2l9KRM; Fri, 23 Sep 2022 21:31:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 721DA401FB;
	Fri, 23 Sep 2022 21:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 721DA401FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8E8D1BF337
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 21:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83B1460F5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 21:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83B1460F5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FWlwnR32ORqH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 21:31:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9070D60E7B
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9070D60E7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 21:31:15 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id bh13so1387997pgb.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 14:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=onRZypm85DpA8F8xppQeAp1Vjn+WOvdDaZWVxEq3cLc=;
 b=KhErVd3eoAi99MwNhnLd8HZOC49WEcnYSfl4Kr8VBNwD3Ta7MyllMcoBALLUB3Q70O
 rMHQfWHw2pPpS2nrkWoaUPcynSVXOnlpjn0d7byViYca5Cd74R4tq0KokD/+VCldLJWT
 mGExQn0LtrGyf9Wc0ZD3bX1I+6ClHtIfuOHjAa7Xt8XftD1Mu/jUNUj5YbMtPLvqrJMx
 fI7QnDa31/eukePXtXRBe2vFFL2cDpGlNfxgaMfy1bhF47PksvVAGIhUvEfDQVYD3ZiH
 kFk+trFxWOi/whR2ca7BfbNLzw8t2RkiLtv53fq9WPsz5cTPSZg3IAkb9+lI9WAVIFsE
 Ik8w==
X-Gm-Message-State: ACrzQf3PlxAKFKsTK+rdgKR7MTePXSt5tRjLVQPuDO/zB0ol9ffVeoQZ
 E+J2ptjS0WJs2HLpydMHR44DsOEdk/tVoy0rgsE=
X-Google-Smtp-Source: AMsMyM5/kokYfSEaldCoGBdzMKYQ2l0ms9OVcQvuTon6Yt4h5vSgBS0LuY0eA2e8/jJPXCsYLA1MCVthbGeyahsD5Qo=
X-Received: by 2002:a05:6a00:a95:b0:547:b3e0:b1c0 with SMTP id
 b21-20020a056a000a9500b00547b3e0b1c0mr11273947pfl.53.1663968674771; Fri, 23
 Sep 2022 14:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse> <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
 <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
 <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
 <CAKgT0UfU6Hu3XtuJS_vvmeOMDdFcVanieGXRLyVRmPF7+eRjvg@mail.gmail.com>
 <f32338c8-db1a-ba0c-9254-922d96f2e601@intel.com>
In-Reply-To: <f32338c8-db1a-ba0c-9254-922d96f2e601@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 23 Sep 2022 14:31:03 -0700
Message-ID: <CAKgT0Ucr7s48WskQikmLcukrvC-34Nd8NwCbFG=vF0wn0VbfDQ@mail.gmail.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=onRZypm85DpA8F8xppQeAp1Vjn+WOvdDaZWVxEq3cLc=;
 b=AeUNuttHkTaoXwu2MlIkDD2woBAl8avyM41dVZduixGhJTCYnqihozhDNDuvmvRqbu
 +u0g4u3ztcyq2l97S51FzEVJhiwGEt9SBftjI8gKnb6sZY1EzYZkeKvEwMyqgWKyXwJG
 ZjlRrhe9fVXoE8B1bVn3qhbZAdSNoUKZBqa8zpBBn/m4qIkT/y4hnFnRkUg+jRmH4gp4
 BKG8PYXtMccnfGNFz5UVvPv9kC853jR7svR1stpYtYmuTIgpRaG1ISQsbE4h+ftIcV48
 2z+V+d/75k/6aacdfZnoe73t9ciMSNCt5LxEhZRHuTDpiBJBbtEjAmBdt5J5H6pwuZjw
 Ykpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AeUNuttH
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
 Ira Weiny <ira.weiny@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 23, 2022 at 11:51 AM Anirudh Venkataramanan
<anirudh.venkataramanan@intel.com> wrote:
>
> On 9/23/2022 8:31 AM, Alexander Duyck wrote:
> > On Thu, Sep 22, 2022 at 3:38 PM Anirudh Venkataramanan
> > <anirudh.venkataramanan@intel.com> wrote:
> >>
> >> On 9/22/2022 1:58 PM, Alexander Duyck wrote:
> >>> On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
> >>> <anirudh.venkataramanan@intel.com> wrote:
> >>>>
> >>>>
> >>>> Following Fabio's patches, I made similar changes for e1000/e1000e and
> >>>> submitted them to IWL [1].
> >>>>
> >>>> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
> >>>> use of page_address() [2]. My understanding of this feedback is that
> >>>> it's safer to use kmap_local_page() instead of page_address(), because
> >>>> you don't always know how the underlying page was allocated.
> >>>>
> >>>> This approach (of using kmap_local_page() instead of page_address())
> >>>> makes sense to me. Any reason not to go this way?
> >>>>
> >>>> [1]
> >>>>
> >>>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-1-anirudh.venkataramanan@intel.com/
> >>>>
> >>>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-2-anirudh.venkataramanan@intel.com/
> >>>>
> >>>> [2]
> >>>> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
> >>>>
> >>>> Ani
> >>>
> >>> For the two patches you referenced the driver is the one allocating
> >>> the pages. So in such a case the page_address should be acceptable.
> >>> Specifically we are falling into alloc_page(GFP_ATOMIC) which should
> >>> fall into the first case that Dave Hansen called out.
> >>
> >> Right. However, I did run into a case in the chelsio inline crypto
> >> driver where it seems like the pages are allocated outside the driver.
> >> In such cases, kmap_local_page() would be the right approach, as the
> >> driver can't make assumptions on how the page was allocated.
> >
> > Right, but that is comparing apples and oranges. As I said for Tx it
> > would make sense, but since we are doing the allocations for Rx that
> > isn't the case so we don't need it.
> >
> >> ... and this makes me wonder why not just use kmap_local_page() even in
> >> cases where the page allocation was done in the driver. IMO, this is
> >> simpler because
> >>
> >> a) you don't have to care how a page was allocated. kmap_local_page()
> >> will create a temporary mapping if required, if not it just becomes a
> >> wrapper to page_address().
> >>
> >> b) should a future patch change the allocation to be from highmem, you
> >> don't have to change a bunch of page_address() calls to be
> >> kmap_local_page().
> >>
> >> Is using page_address() directly beneficial in some way?
> >
> > By that argument why don't we just leave the code alone and keep using
> > kmap? I am pretty certain that is the logic that had us using kmap in
> > the first place since it also dumps us with page_address in most cases
> > and we didn't care much about the other architectures.
>
> Well, my understanding is that kmap_local_page() doesn't have the
> overheads kmap() has, and that alone is reason enough to replace kmap()
> and kmap_atomic() with kmap_local_page() where possible.

It has less overhead, but there is still some pretty significant code
involved. Basically in the cases where it can't bail out and just call
page_address it will call __kmap_local_page_prot(),
https://elixir.bootlin.com/linux/v6.0-rc4/source/mm/highmem.c#L517.

> > If you look at
> > the kmap_local_page() it just adds an extra step or two to calling
> > page_address(). In this case it is adding extra complication to
> > something that isn't needed which is the reason why we are going
> > through this in the first place. If we are going to pull the bandage I
> > suggest we might as well just go all the way and not take a half-step
> > since we don't actually need kmap or its related calls for this.
>
> I don't really see this as "pulling the kmap() bandage", but a "use a
> more appropriate kmap function if you can" type situation.

My concern is that it is more of a half step in the case of the
e1000/e1000e drivers. We likely should have fixed this some time ago
when I had rewritten the Rx path for the igb and ixgbe drivers, but I
just didn't get around to it because if I messed with other areas it
would have required more validation. I'd rather not carry around the
extra code or function calls if we don't need it.

> FWIW, I am not against using page_address(). Just wanted to hash this
> out and get to a conclusion before I made new changes.
>
> Ani

I gathered as much based on your other conversation. This is
essentially the module-local case you had referred to in which the
page is allocated and used within the module so there is no need to be
concerned about it possibly being a highmem page.

Thanks,

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
