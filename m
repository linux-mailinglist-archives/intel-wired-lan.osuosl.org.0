Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 213B95E67BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 17:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB75361133;
	Thu, 22 Sep 2022 15:56:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB75361133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663862205;
	bh=XcmXX4equVEY6sJah9SPYPMzv2AVoG3K6QuMFciJWao=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7mgTb5VO2KsxEWy+I5A8oVof5YvoqvFXni8yRBzKmx1HyTPspMPurBOyjJvmdT3up
	 XEdwMskGuj1/KMCYKfXG/KKHXhtLPNJQxH3T/fYahmWX8tRPDb3BihczjXKt/COmN0
	 jwRx/YXNSc7JAiB23hv915N8XkL9E1x9AybyrGzmljUGZR1vgxZTHsZ2OfHHow7snV
	 rSzHn5sZ2/mjNyVdeta/ZoKZpI52HVA6279C+57Q32ZxbhGwSYD3JBjDoCowGnlaNf
	 4DtlbgiPC96JX7KAVK8c/9xPluI4veX50k1CKD7eR4i0UdWFWIdXpFDlobjug2L3X8
	 L2QljaWMtQ7hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfZw1WsbYMDH; Thu, 22 Sep 2022 15:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 966616112A;
	Thu, 22 Sep 2022 15:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 966616112A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B7751BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9F6483F01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F6483F01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izTWZMRBnG8A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 15:56:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4858483F10
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4858483F10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:56:38 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id fv3so10278598pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 08:56:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=TZpRIJCCMZKyVUgNnwboEjnHYpEIRQBSXZlSwc7OZ+0=;
 b=OBomD3X1N1Z9fCewNH+UNtA7iRvjJrYYddgfl25NzpPed0gk6VZO7lEmtTn0Z7DX34
 bHkAPxpZmXNOyBTSLLONg9pdRg8r8Bs9i/pw5eW3DkYY9qR/63rW+7zGjTi6SlWg+08l
 2iz+kIAXY7/UqYvhUMsO8MDGEnfWHeqizvyBECh/RSU6QOhVoYCxxcBwHfKAbLMdtqRA
 9nCUYLzH4zonI7OeLkpkTo7Yjfax5lGZ2wdNrBOhf+iim0u8aaI9ppbiBhLBqJuvyi/Z
 Vl4d9/jXu6fisU0cIja/i2TJNchawI8gxveusazFGt4bCHf+cWmjzerrayAJn5e/wIwC
 pkiA==
X-Gm-Message-State: ACrzQf2VxW32SpaUVfGksEHxPFIBWP8+DK1N9qXl+qTlYTMemG5ynESQ
 kJr6Ah6vLv4iHu5BDvugnj9F7Q==
X-Google-Smtp-Source: AMsMyM6wj70ZRZNEGtsTQjOpU6Y4OkbiX+0Wag8Z4tUWxe6CdbDk3WijTof+igifPO84VXufZHizeQ==
X-Received: by 2002:a17:90b:4d8e:b0:200:73b4:4da2 with SMTP id
 oj14-20020a17090b4d8e00b0020073b44da2mr16393990pjb.197.1663862197527; 
 Thu, 22 Sep 2022 08:56:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 b5-20020a170902d50500b00176ca533ea0sm4327600plg.90.2022.09.22.08.56.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 08:56:36 -0700 (PDT)
Date: Thu, 22 Sep 2022 08:56:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <202209220855.B8DA16E@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-12-keescook@chromium.org>
 <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=TZpRIJCCMZKyVUgNnwboEjnHYpEIRQBSXZlSwc7OZ+0=;
 b=lKwDDBjvYm/0Jleq+GCxBaTtwnHH7tK+nJ5dJ9Mroo7Wx2WiOGB/Kmka/kC9bYFq8z
 aE3zrV852KZPixgDhOan1L1Vq5Tj1ydcVjIMjp+7gLHmlIsooLMnRpZ01jzKR4yf16m5
 6AQEJMsyFTKj/8+82bO+4x4lXyaSTMa1R26kY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=lKwDDBjv
Subject: Re: [Intel-wired-lan] [PATCH 11/12] slab: Remove __malloc attribute
 from realloc functions
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
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Hao Luo <haoluo@google.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 11:23:46AM +0200, Miguel Ojeda wrote:
> On Thu, Sep 22, 2022 at 5:10 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > -#ifdef __alloc_size__
> > -# define __alloc_size(x, ...)  __alloc_size__(x, ## __VA_ARGS__) __malloc
> > -#else
> > -# define __alloc_size(x, ...)  __malloc
> > -#endif
> > +#define __alloc_size(x, ...)   __alloc_size__(x, ## __VA_ARGS__) __malloc
> > +#define __realloc_size(x, ...) __alloc_size__(x, ## __VA_ARGS__)
> 
> These look unconditional now, so we could move it to
> `compiler_attributes.h` in a later patch (or an independent series).

I wasn't sure if this "composite macro" was sane there, especially since
it would be using __malloc before it was defined, etc. Would you prefer
I move it?

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
