Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ABA5E6ECA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 23:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E734F60B13;
	Thu, 22 Sep 2022 21:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E734F60B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663883358;
	bh=6WZAgnsQ9aiauqz4jnbiVZ3VeW8iiPAJlVvHKmj87f8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NKqVeRPUv1K8FPm1mlvO9UapBtwkXnWfpnrLEjxLcnMt9a5+8Iip6aOnmBRLJo2l6
	 1pNLA+7j0p4goLGQsPPRS3qfc8TI3bSQ69bnfd1ug8PF1EEPoW/li6rDnR/sTiUjHU
	 MAkIOxCf05BDSLRU9XYGZt3WAOfiXjNXzoTOU+57cxldhKabgIvMKTKXdmShJLEIJe
	 JMfradbbM7GjHFtyQ5UPb8jO3M5ho7xlZXfFYvPsJn62YTtjyoefQYBloezhhwfKMF
	 3uJa3eRhrpkNth7CL61jgcHQ+MYrCpfRS4ZQCOclsfjsPBBHHgJz+cUGhS0zy5M4nM
	 6A70L16aXIrYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhJV9ZhBIhO3; Thu, 22 Sep 2022 21:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC31E60B1F;
	Thu, 22 Sep 2022 21:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC31E60B1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBB851BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C658260B13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C658260B13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Eu5SdbNyq23 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 21:49:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84B4860AD1
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84B4860AD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:49:11 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id fv3so11184753pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 14:49:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=HR7XDnra6aPtamhjv2ZebPHNXJTov7JqNOvsimryjio=;
 b=LKCX8M3DTrhVcqKCXU8n3rNp2JlJZjDs+Lu5LpJ5VreaVBJBLp9J/rNnyAlS5zMCXl
 8vVb3nn1XWkgM8ujXaz1v2CP1eQ8qG/2hdHbhwWmtDJi7OA+Mz6kv22p9G/CWJXu+JN0
 bpz9FxlL+EngiQLyE6fxzPyAWJqsJRIXNL9wWYDQmGV+eHchTagzNgwEWWuU+d8nruGh
 JuoO5nBHalGaYBDa1d5jMo20A+RmeB7dbbKmRLZ/5SiGOxwMvAVx9jxIsB0QhMcdqDCH
 8UL1ELpj7Qpros6rd0uX/Bo8NGlXo9xZXz1QCV+VI2wnToC/Jn+osBT6goVTjzxMNP/+
 XjQw==
X-Gm-Message-State: ACrzQf2IkfVyTgTv7uq5EvzDf80ObCoAKanSB2Wq0kijkcenuFKEOKEP
 VN0dliGCVaE0CU0iFHwFa70evA==
X-Google-Smtp-Source: AMsMyM7EVCvewBY8ReI9lCX0qEaIkOeoxfNJfZf95NgQUB74fHJwtUZioqBUOFwe31SWjNTGJEPjqg==
X-Received: by 2002:a17:902:d2d2:b0:177:4940:cc0f with SMTP id
 n18-20020a170902d2d200b001774940cc0fmr5257349plc.4.1663883350927; 
 Thu, 22 Sep 2022 14:49:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 j6-20020a170902da8600b00176acc23a73sm4597636plx.281.2022.09.22.14.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 14:49:10 -0700 (PDT)
Date: Thu, 22 Sep 2022 14:49:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209221446.5E90AEED@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
 <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date;
 bh=HR7XDnra6aPtamhjv2ZebPHNXJTov7JqNOvsimryjio=;
 b=SzXIxv6C1tCw5E3cmrWDJ/hT6jlBfbW+dFuRj81LBsGuMMA1AsgUJRpxwVsVSvwR2s
 HjojE3kOc43go5tDIXGrMTl5j+2eCPTyOeyLkDKEdQ6zWs58EaHgr7cs3m2ezx/7gyPH
 QYSAs2hvSa7UX6V/rYFn8OuKvubD7Tx83ZZcc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=SzXIxv6C
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
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 11:05:47PM +0200, Vlastimil Babka wrote:
> On 9/22/22 17:55, Kees Cook wrote:
> > On Thu, Sep 22, 2022 at 09:10:56AM +0200, Christian K=F6nig wrote:
> > [...]
> > > So when this patch set is about to clean up this use case it should p=
robably
> > > also take care to remove ksize() or at least limit it so that it won'=
t be
> > > used for this use case in the future.
> > =

> > Yeah, my goal would be to eliminate ksize(), and it seems possible if
> > other cases are satisfied with tracking their allocation sizes directly.
> =

> I think we could leave ksize() to determine the size without a need for
> external tracking, but from now on forbid callers from using that hint to
> overflow the allocation size they actually requested? Once we remove the
> kasan/kfence hooks in ksize() that make the current kinds of usage possib=
le,
> we should be able to catch any offenders of the new semantics that would =
appear?

That's correct. I spent the morning working my way through the rest of
the ksize() users I didn't clean up yesterday, and in several places I
just swapped in __ksize(). But that wouldn't even be needed if we just
removed the kasan unpoisoning from ksize(), etc.

I am tempted to leave it __ksize(), though, just to reinforce that it's
not supposed to be used "normally". What do you think?

-- =

Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
