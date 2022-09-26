Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 919F95E977E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 02:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52AB64177A;
	Mon, 26 Sep 2022 00:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52AB64177A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664152743;
	bh=MyMlCwMrjhAsL3zRRqxvYCw9MGsx5UI+AC1RKilU8R4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9MllZZyCP+Cp1rsOgcq8hKy7RhWaKT4hiO34wdPcAlu3eT99QiKtLd3bGC0GsnWyA
	 w2WEQaNtuVrc3fEUbeWo4Jim5Hh8+1gc6JuD0SF0hicSIK5XCa8Pb2+Mbji5pqPCNL
	 lEnmEbyQ9qtDxyQxkPifW5Vt0dB050BFUhsGAW6twTZth1ferhQwqSBy43KCsu/7ZN
	 uZa8chprPq3PRGpzBfdBmA7HoVKv2Q1sAzKv38wWj8P34EJCmk3hNJpX3CDBhv7lZW
	 +34y8S22UEdGk635MiMAEXKD6etKKNfibhF/LSgOPBHtmj1Rh3wbpYy1S3Smz+NfPl
	 z0GgoV7NZMiDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JMjzQ8O3EQr0; Mon, 26 Sep 2022 00:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B03F14175B;
	Mon, 26 Sep 2022 00:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B03F14175B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 119DB1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBB304168E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBB304168E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzYscz7Unq7P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 00:38:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11E72415DD
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11E72415DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:38:50 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id 78so5143660pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 17:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=ZsMZDiPJ05dqPEjOyzQRRCQyAniieUtquk7D7/uc9oo=;
 b=j06QcIItwsxJ0lldgvNzhnawp1+YRiXUukuS21W7yYUKn4nzLLDo0uegLwKpGncEZA
 coNzopJuDcLNF+6ya3R5qce3paV0HLpvFZY9LR8ufwdqTQp5zD0MCVDsucHmNw7hTw4o
 62ljUe4Zp4lPi2c+MkaNdovo2L99FIveXqy3cQ6jFZAMIH830p/gNZOcVYl0YnEcTjkr
 NAKxDLqPk2GzGYlu9sdwBZoHrySmWU8+bewshDiLIKcPHoznUUR/BIH9SGNqDuJKD/Oe
 Nzva3qoSBOBvn8DqsmSAPQxSTIhT1duniXEwzevKkZoc65xXuOXGHvP7TMxJuZk3z8pm
 fLyw==
X-Gm-Message-State: ACrzQf2lSPC4U2BnFmxUWneE7mJ0dwKAexeu7LC/fzY41tleFqQOcibB
 ttZ3/lXGbL1tfHBCishkW4gazg==
X-Google-Smtp-Source: AMsMyM7j48vn8CX614C8f5vlUd1g6FcIEIYyyHHTpwyTo0bx6Hew8gRK92T2JHXk4G8JNUKlDJxOQQ==
X-Received: by 2002:a63:4b1d:0:b0:439:e6a4:e902 with SMTP id
 y29-20020a634b1d000000b00439e6a4e902mr18048148pga.212.1664152730415; 
 Sun, 25 Sep 2022 17:38:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 t11-20020a17090340cb00b00172951ddb12sm9640855pld.42.2022.09.25.17.38.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Sep 2022 17:38:49 -0700 (PDT)
Date: Sun, 25 Sep 2022 17:38:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <202209251738.6A453BC008@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-15-keescook@chromium.org>
 <CACT4Y+bg=j9VdteQwrJTNFF_t4EE5uDTMLj07+uMJ9-NcooXGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+bg=j9VdteQwrJTNFF_t4EE5uDTMLj07+uMJ9-NcooXGQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=ZsMZDiPJ05dqPEjOyzQRRCQyAniieUtquk7D7/uc9oo=;
 b=EloZHChUwOJ+IAK+dqPRjhd24FYS6MkmFqZpedddEJP3NPIP54FWcwg3RKRz6Ai8pZ
 z2DviABmbm5Ne8x7+vcrgYA1N3bmoOgjdNpOgYz+yaXmcZ9y56Pdoen1P+xANPX4dHu4
 HiKqS9DzqPcFKjopFBXMCDEaM898Bv94O7hJQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=EloZHChU
Subject: Re: [Intel-wired-lan] [PATCH v2 14/16] kasan: Remove
 ksize()-related tests
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 kasan-dev@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 Andrey Konovalov <andreyknvl@gmail.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 24, 2022 at 10:15:18AM +0200, Dmitry Vyukov wrote:
> On Fri, 23 Sept 2022 at 22:28, Kees Cook <keescook@chromium.org> wrote:
> >
> > In preparation for no longer unpoisoning in ksize(), remove the behavioral
> > self-tests for ksize().
> >
> > [...]
> > -/* Check that ksize() makes the whole object accessible. */
> > -static void ksize_unpoisons_memory(struct kunit *test)
> > -{
> > -       char *ptr;
> > -       size_t size = 123, real_size;
> > -
> > -       ptr = kmalloc(size, GFP_KERNEL);
> > -       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
> > -       real_size = ksize(ptr);
> > -
> > -       OPTIMIZER_HIDE_VAR(ptr);
> > -
> > -       /* This access shouldn't trigger a KASAN report. */
>  > -       ptr[size] = 'x';
> 
> I would rather keep the tests and update to the new behavior. We had
> bugs in ksize, we need test coverage.
> I assume ptr[size] access must now produce an error even after ksize.

Good point on all these! I'll respin.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
