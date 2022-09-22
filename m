Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2995E67AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 17:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B2474104D;
	Thu, 22 Sep 2022 15:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B2474104D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663862132;
	bh=IyF9P8aHrt4taI+n7S4takNF+9VyUCBmsLlAGDuXs8U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZFAEqXu9SqE2LKKcsQMFgo4dFLK6A83AlsqnFvrObwca9nNXD6NCUSFwOwwTCpWzK
	 avuQcBop6KvEGhRQzwQH+ToP7f2LF50DhMBz+PMW6pSjvcjRaqVf74cSmp1zC7kLPq
	 7z6rNLieihmPhOaZOSZ41GbaBYH2U3DL4AEXWGMDxgmZecVZaSc1mkAH64I/7DI/iI
	 ob3UaZE/10kIeN6R1US31bvlBuV6ym+BaHfiPbksKH2+mkf4GYV6nQVWV3GupJIA/C
	 y1b0Soy7o7X3cuirRBpCzFXxumCF4OQ+PQUKcZCmJOb5apJKvrVVuy6Lz3fP5cBHiW
	 jBMBdKrOuOAgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hbtwyF22ECVm; Thu, 22 Sep 2022 15:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D2644103C;
	Thu, 22 Sep 2022 15:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D2644103C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6C2E1BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BFF541BC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BFF541BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DL6p_y8goYVZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 15:55:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB73E41B33
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB73E41B33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:55:21 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id c24so9190070plo.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 08:55:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=5YOa+gv1sIPcp5S2eMDxZrJPz51jsjFGvspNVL+ych0=;
 b=XBOnEXswCSdccae8taHqbFn0wA2OgMyJeMSvIB5AdvcJxL++LPJOHpvBYYv0Nwivg/
 yRqeDooRUDCCG9DqKHvugpPPpygSyaETHx0yWLBdBFr5PqwpUw32s7pZ+U64NuZe78jT
 qPm3xzniCjppGkjaAK88kDTeAefUbTyJjALDq9tiDAZw5Zto4wvJ040Zlv5CVbL6Roa1
 fDy7pa36eQYAoV6nrCll6efUbIiB+q3HFWAm/S2xGTRhehsKkFrxAuh86mBOcsVyU+DZ
 Ad6SQ9S3cB4UOFQNVYDAo3BiK60bNWGCil2a7gCpYKzdDvzWyYDBViptf80ct/wDIDRu
 GKuQ==
X-Gm-Message-State: ACrzQf0fMmJRvvLm6P+IFZ03PrACviHWwIQsRq7uCpyALuhhvR0WuAj3
 qH8ueTy4H6yv9iMRM8sJneE4vQ==
X-Google-Smtp-Source: AMsMyM6pj2YmcAiXg6SonP+gJGRIk20ZQXjacFA/fb+08tqqdtojyBlUHrRZT8F0Z+9OyQ05xLAwxg==
X-Received: by 2002:a17:90b:3ec9:b0:203:246e:4370 with SMTP id
 rm9-20020a17090b3ec900b00203246e4370mr15665429pjb.221.1663862121161; 
 Thu, 22 Sep 2022 08:55:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 b7-20020a170902650700b001754fa42065sm4270774plk.143.2022.09.22.08.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 08:55:20 -0700 (PDT)
Date: Thu, 22 Sep 2022 08:55:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202209220845.2F7A050@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date;
 bh=5YOa+gv1sIPcp5S2eMDxZrJPz51jsjFGvspNVL+ych0=;
 b=LEFzWbqksCDh4S4OiJrbR7XAYMyOC2rDNgEzxm4wNn6u+IvIuPSxz7ChVzcXYCA9kN
 JUv48f4jgPup+CHrzZf6w+AfSyBn13B+QQpM2W85KtMMefowgfzF6SEkXu9wDa88gO2B
 nN2k3CYK4Hh5e/4TzZfHnbEaM6zaDEwuByIkk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=LEFzWbqk
Subject: Re: [Intel-wired-lan] [PATCH 00/12] slab: Introduce
 kmalloc_size_roundup()
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
Cc: Feng Tang <feng.tang@intel.com>, linux-wireless@vger.kernel.org,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 09:10:56AM +0200, Christian K=F6nig wrote:
> Am 22.09.22 um 05:10 schrieb Kees Cook:
> > Hi,
> > =

> > This series fixes up the cases where callers of ksize() use it to
> > opportunistically grow their buffer sizes, which can run afoul of the
> > __alloc_size hinting that CONFIG_UBSAN_BOUNDS and CONFIG_FORTIFY_SOURCE
> > use to perform dynamic buffer bounds checking.
> =

> Good cleanup, but one question: What other use cases we have for ksize()
> except the opportunistically growth of buffers?

The remaining cases all seem to be using it as a "do we need to resize
yet?" check, where they don't actually track the allocation size
themselves and want to just depend on the slab cache to answer it. This
is most clearly seen in the igp code:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/net/ethernet/intel/igb/igb_main.c?h=3Dv6.0-rc6#n1204

My "solution" there kind of side-steps it, and leaves ksize() as-is:
https://lore.kernel.org/linux-hardening/20220922031013.2150682-8-keescook@c=
hromium.org/

The more correct solution would be to add per-v_idx size tracking,
similar to the other changes I sent:
https://lore.kernel.org/linux-hardening/20220922031013.2150682-11-keescook@=
chromium.org/

I wonder if perhaps I should just migrate some of this code to using
something like struct membuf.

> Off hand I can't see any.
> =

> So when this patch set is about to clean up this use case it should proba=
bly
> also take care to remove ksize() or at least limit it so that it won't be
> used for this use case in the future.

Yeah, my goal would be to eliminate ksize(), and it seems possible if
other cases are satisfied with tracking their allocation sizes directly.

-Kees

-- =

Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
