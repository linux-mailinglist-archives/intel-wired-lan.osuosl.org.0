Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537D5EA798
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 15:49:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C69E60F80;
	Mon, 26 Sep 2022 13:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C69E60F80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664200141;
	bh=yLF0urLCyTlE3a7MDvUHqRfQ0KHVi484teNn2KqGOQw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B9dW08CUsJTDNf+EMfXsz1DAJOFCjwc9tZLMK6lCAMK+hyDqM3Amlo2uvplXCF84Q
	 4z9uvCWYr8GyMh4BqDaUR/Ak0XVUsUdnitbjIUb7QidMxrOGJIKMJRODxCyOgFlK7J
	 Y3T0+MLaa67UZ4Dh91qAyAaiPHj9Oym5o6npjFuckIgwfWy1wVWlAXtkwIYcLeqGhP
	 aRRCsbMla4M7vYACf47D8tSQb5CwWxMLCzGpumJZ44rvpIAClCVgMpOOIDl71ccadE
	 PeUPbirIvUaeItc3CDXBhs1GvqWx+NEdIgUxfuHKEfE7i5xvBx4PuKQcv8q3V5qPcW
	 vTmNMXt7vPNVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2gM4qCilvLl; Mon, 26 Sep 2022 13:49:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E38460F7E;
	Mon, 26 Sep 2022 13:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E38460F7E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA4701BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 08:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A40FF60AC0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 08:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A40FF60AC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y_cc5KanTsUc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Sep 2022 08:15:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF5D960ABA
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF5D960ABA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 08:15:31 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id g20so2316115ljg.7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 01:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=nQomz4ut+7sjfQrrU1jIFAnyWatFfjECi53D3yczEIE=;
 b=2KCSLxCINxqJhn0hkJj2rJWvUzARha4el13hIM4mYvR4iEurM4954ZOrYptVdv2WKD
 Q45GJym3erUughwe+5TairBPbutX0vRVfbS2DpU1P3Z1ZkyTCeHeRwygetuXIjd0epay
 ftQvDpF+tNHsQbkaEVjcmxJOCMJ1lcvu5MWuDtRL0mZhXckAwPsOcF2JAclr4whreO1S
 hpxtSzVJ27+kHzAnL8UQAmR872rEEFynAswP38lBBRzWTmV9GlFF1M/WHfc+QMRctTJT
 FJrcR8eRXZ8aCraLlS0wO0slY/jjgTmFet5TOjuP1dbM7GYNDts9Mbkhqdb8Qfi5177N
 qzig==
X-Gm-Message-State: ACrzQf0QWxx5U5lOtmLzNm6QknTQvA+rN8AnB6o/d02a8NAAXgHZWId3
 CclKAK0+piaQCfXLZXHgztoyYJOIJSSf6wWDbTTvFQ==
X-Google-Smtp-Source: AMsMyM51jSACu0ueivCRHFSALnMRIGDYekDLNBr6hGK18mYNepOD+DBZDwtrPTKiiVk4AIl/66dQQBc8ZJ/gjsu15yk=
X-Received: by 2002:a2e:be8d:0:b0:26c:f4b:47a0 with SMTP id
 a13-20020a2ebe8d000000b0026c0f4b47a0mr4030821ljr.92.1664007329396; Sat, 24
 Sep 2022 01:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-15-keescook@chromium.org>
In-Reply-To: <20220923202822.2667581-15-keescook@chromium.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 24 Sep 2022 10:15:18 +0200
Message-ID: <CACT4Y+bg=j9VdteQwrJTNFF_t4EE5uDTMLj07+uMJ9-NcooXGQ@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:48:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=nQomz4ut+7sjfQrrU1jIFAnyWatFfjECi53D3yczEIE=;
 b=KI9bvqb1+pvOBd4LUHBVRiy4ZY0slRCTRZZlpbG/wkf5BfzAwgC4tzlqpiFF6oyV8H
 D7v79qgnbhBTO6d2uDyYHRhhdOOhBfa6EEXzsR1OAGK0jLsPlfD7cA9BCk+dEYTkPA3D
 wWtwWaAoPO0/uTRDdef7+H6/fPQ584Q/+VF22lUeYetTvqY4NLRzWkfcrMuUKAwvI8Ur
 HORX0nTGI2VWAa2VLCpjSTjWJtDJGVfm/4NoDwUwRQY3sCzLDgDtibX9udsLmyhZz/Ab
 UsteBe0vnTvVHno/YLL9xbDupvnLo0yMlhWvaVPU8HJaxwp4Vvg2Oz/Cql9apCVP7xpg
 yn0g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=KI9bvqb1
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 23 Sept 2022 at 22:28, Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for no longer unpoisoning in ksize(), remove the behavioral
> self-tests for ksize().
>
> Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Andrey Konovalov <andreyknvl@gmail.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: kasan-dev@googlegroups.com
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  lib/test_kasan.c  | 42 ------------------------------------------
>  mm/kasan/shadow.c |  4 +---
>  2 files changed, 1 insertion(+), 45 deletions(-)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index 58c1b01ccfe2..bdd0ced8f8d7 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -753,46 +753,6 @@ static void kasan_global_oob_left(struct kunit *test)
>         KUNIT_EXPECT_KASAN_FAIL(test, *(volatile char *)p);
>  }
>
> -/* Check that ksize() makes the whole object accessible. */
> -static void ksize_unpoisons_memory(struct kunit *test)
> -{
> -       char *ptr;
> -       size_t size = 123, real_size;
> -
> -       ptr = kmalloc(size, GFP_KERNEL);
> -       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
> -       real_size = ksize(ptr);
> -
> -       OPTIMIZER_HIDE_VAR(ptr);
> -
> -       /* This access shouldn't trigger a KASAN report. */
 > -       ptr[size] = 'x';

I would rather keep the tests and update to the new behavior. We had
bugs in ksize, we need test coverage.
I assume ptr[size] access must now produce an error even after ksize.


> -       /* This one must. */
> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[real_size]);
> -
> -       kfree(ptr);
> -}
> -
> -/*
> - * Check that a use-after-free is detected by ksize() and via normal accesses
> - * after it.
> - */
> -static void ksize_uaf(struct kunit *test)
> -{
> -       char *ptr;
> -       int size = 128 - KASAN_GRANULE_SIZE;
> -
> -       ptr = kmalloc(size, GFP_KERNEL);
> -       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
> -       kfree(ptr);
> -
> -       OPTIMIZER_HIDE_VAR(ptr);
> -       KUNIT_EXPECT_KASAN_FAIL(test, ksize(ptr));

This is still a bug that should be detected, right? Calling ksize on a
freed pointer is a bug.

> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[0]);
> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[size]);
> -}
> -
>  static void kasan_stack_oob(struct kunit *test)
>  {
>         char stack_array[10];
> @@ -1392,8 +1352,6 @@ static struct kunit_case kasan_kunit_test_cases[] = {
>         KUNIT_CASE(kasan_stack_oob),
>         KUNIT_CASE(kasan_alloca_oob_left),
>         KUNIT_CASE(kasan_alloca_oob_right),
> -       KUNIT_CASE(ksize_unpoisons_memory),
> -       KUNIT_CASE(ksize_uaf),
>         KUNIT_CASE(kmem_cache_double_free),
>         KUNIT_CASE(kmem_cache_invalid_free),
>         KUNIT_CASE(kmem_cache_double_destroy),
> diff --git a/mm/kasan/shadow.c b/mm/kasan/shadow.c
> index 0e3648b603a6..0895c73e9b69 100644
> --- a/mm/kasan/shadow.c
> +++ b/mm/kasan/shadow.c
> @@ -124,9 +124,7 @@ void kasan_unpoison(const void *addr, size_t size, bool init)
>         addr = kasan_reset_tag(addr);
>
>         /*
> -        * Skip KFENCE memory if called explicitly outside of sl*b. Also note
> -        * that calls to ksize(), where size is not a multiple of machine-word
> -        * size, would otherwise poison the invalid portion of the word.
> +        * Skip KFENCE memory if called explicitly outside of sl*b.
>          */
>         if (is_kfence_address(addr))
>                 return;
> --
> 2.34.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
