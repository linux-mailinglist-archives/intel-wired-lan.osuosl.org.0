Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 308715E5AA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 07:26:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD5083112;
	Thu, 22 Sep 2022 05:26:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD5083112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663824397;
	bh=Bc0ViiHZtAzTOZ6fYLIJMryDR+qGeZqnlrfmeb4z8TA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C0GpTOm2QwE4+1JrPU/hCLM6kZOus1CJmFCq5qtPwLJglv0ejroqh0RXXvxrlpuFS
	 REjlLQYUL6JTp8KlpbwBqVwm3vt3TwB6Nb9/Sec6/GcGJxry44lrur+AELakqwusTb
	 aL1obOhir3YkO3Sk8SiSbPtMLpPtZ5UkJAvyNjoWN711/Tm/hVSl55x9xRpnpMp1b5
	 MEHPX8ujQq/hz7jCX0NG/6aKTlnsE+X/cVsOD87zaIcU9d+T0E7pi/UV69YR7hboi/
	 3Ylx02L1VUR5eLss+GBGgxOaHShGTC/JIRkP324Hot1yQUFHGSlUGXVdyWxhODmZON
	 7ZW3R5wDi3nbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UvY7NO_SxRx4; Thu, 22 Sep 2022 05:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9652383104;
	Thu, 22 Sep 2022 05:26:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9652383104
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D34801BF95C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACE0540639
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACE0540639
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mI4fUc1lEdKa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 05:26:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86E17400CB
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86E17400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:26:29 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id c198so8149646pfc.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 22:26:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=1AAj0jz/3WOf/ZinmBg4e5WZyKIExnDIP+4ApRXDWXk=;
 b=WtHOtOCKPYmvHRGxJNPX8N75z9Di7O4XiSKRFOpuXdCRHcUgT18l59Y8kkbEn7cC+S
 HBc2KieGuwjC4onT3uQx7Z6NCRhRK04Z6BaWLN3y4YFn2oh+nDQqbcXxm5hkA5wmHByx
 AtBf9AhjCOVuIoxr8V8jOyn3OqXC4ZTur635cE2YoYGoTGcqqwT5RxeqccDHmE/Ka+a7
 5BLJ+tIXgDy+s5yrsMUFzgLwZqdT1WpwCblH8WysDkXC0dVWKeXXpBQ2WlOJNMZFp0X0
 B3QCTywEXyv49lmRujvTW5KX7MGwp8ORVYSOcJQ/n4TvZFlk1yLA/FxLmxF3KRKm9CtM
 jU/w==
X-Gm-Message-State: ACrzQf3KrhHu3J+99E6cTuowqoMFtxU4ImH9vlnSQZHv6gdWQVtB7jIr
 UvW9muNQoBJQwHbgqOPU6Ob2Dw==
X-Google-Smtp-Source: AMsMyM4a+GHcnQt0UeqKstHRefYZ2pfi5aegxBG+GRLeLtm77LwF22DDWI605QZJjTDKHxZFsdcd6w==
X-Received: by 2002:a63:cf56:0:b0:439:41ed:78fc with SMTP id
 b22-20020a63cf56000000b0043941ed78fcmr1597609pgj.419.1663824388949; 
 Wed, 21 Sep 2022 22:26:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 l10-20020a170903120a00b0016f196209c9sm3102876plh.123.2022.09.21.22.26.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 22:26:28 -0700 (PDT)
Date: Wed, 21 Sep 2022 22:26:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Kalle Valo <kvalo@kernel.org>
Message-ID: <202209212224.A2F1DB798@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-11-keescook@chromium.org>
 <87fsgk6nys.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fsgk6nys.fsf@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=1AAj0jz/3WOf/ZinmBg4e5WZyKIExnDIP+4ApRXDWXk=;
 b=E6vw8sjIHY/i68R43dGnMLa/5LLUaNZd7XsoFQWcc3w5wUJdtXNsxsEfsPht7kxdNG
 JJ1tXBTf3XQqnlgOex/RZ+o0XMhSMgfcjsVoIr6koV6H3KyiaZ1lUXPNyODzP4yferwZ
 bLRSqfuB8yrx2QNr5YGtL8EgG0hPZHJq7V7xk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=E6vw8sjI
Subject: Re: [Intel-wired-lan] [PATCH 10/12] iwlwifi: Track scan_cmd
 allocation size explicitly
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
Cc: linux-wireless@vger.kernel.org, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Gregory Greenman <gregory.greenman@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Jacob Shin <jacob.shin@amd.com>, Marco Elver <elver@google.com>,
 Johannes Berg <johannes.berg@intel.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Thu, Sep 22, 2022 at 07:18:51AM +0300, Kalle Valo wrote:
> Kees Cook <keescook@chromium.org> writes:
> 
> > In preparation for reducing the use of ksize(), explicitly track the
> > size of scan_cmd allocations. This also allows for noticing if the scan
> > size changes unexpectedly. Note that using ksize() was already incorrect
> > here, in the sense that ksize() would not match the actual allocation
> > size, which would trigger future run-time allocation bounds checking.
> > (In other words, memset() may know how large scan_cmd was allocated for,
> > but ksize() will return the upper bounds of the actually allocated memory,
> > causing a run-time warning about an overflow.)
> >
> > Cc: Gregory Greenman <gregory.greenman@intel.com>
> > Cc: Kalle Valo <kvalo@kernel.org>
> > Cc: Johannes Berg <johannes.berg@intel.com>
> > Cc: linux-wireless@vger.kernel.org
> > Cc: netdev@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Via which tree is this iwlwifi patch going? Normally via wireless-next
> or something else?

This doesn't depend on the kmalloc_size_roundup() helper at all, so I
would be happy for it to go via wireless-next if the patch seems
reasonable.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
