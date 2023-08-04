Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A642C76FBFB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 10:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A71641FE7;
	Fri,  4 Aug 2023 08:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A71641FE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691137635;
	bh=n98prNs3J68ulHVjt4MHZwpDh+t1KfxLHWsz1pDtR58=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D5wJJz9MjsxSb/l7KKe/unDD4Uq57KrebkK50zrfmxJ2eMogozTUrQ+DPdg4bdKvq
	 HAkor+d2Qyd3aBG6gV6t2AfZTrKj8wrXdrW2+e8iiiV9EU5DSyhZ6IKmiS6XHlW8lp
	 gv3/t8E+2FgFT2l2sZudNXqt3FdNPbswhIW2NUvFV4fhj0EgB2DUcVtDDlyL9+3bF7
	 yR7YiW99rXobpt0wfRLm/RRYLVd+wb+5IzY+LFWpt4G/cs5iKJ8ChoChfwPmzYKsEL
	 q9AvLedBtJgPc79CYqNh1q2Rgk8D3cikgXmLR7z3EGi7pILa2f6mhRdUUkQBqIdZzZ
	 qO2jJZp0P+07w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z7jisIQysb1M; Fri,  4 Aug 2023 08:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C494085D;
	Fri,  4 Aug 2023 08:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33C494085D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7DB1BF315
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B15BE83BC9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B15BE83BC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2JQRrn5Aa1W for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 08:27:03 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE70D83F7D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE70D83F7D
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-6873a30d02eso1309808b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 01:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691137623; x=1691742423;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PUS4uE91dvG7NiA03WNNZdSwC3Poo9mFt4/nET0m0dg=;
 b=OxwBY9B526Z1TpJ5wwHs6PPZawiweMls+7RaNg86genCEAAdhy+Gx0Ok9CmLiMI//U
 QbDK7nGk1LQOXqpowEeFQAPpYfrCgSJU4avgpenGeI79iNAcSgSghzWPh4QmjnrZSuaO
 pGKt/YSszqKyraDubGSr9sGLrtY1teTwKTDW8U2euXuppB84HyJB6Qz+YFws41N4DFm7
 BoCxIbv4qxcRfsqYbUW8LDxgFiNVIm6rT+XR2iWJYyXmCeDnZ5QwaEhdzJawglKIvxci
 GERkHjpPf6/v7EU7ZTlpq3KHJ1abm5Mg7ZMxCEyd+86BKRy98Vkj5d6pSwaXN26RcZ6R
 RpeQ==
X-Gm-Message-State: AOJu0YzimnVMRoKZPz86tF38X9IfrzqK3kqp8d8vh2IHOGTCfdMbfWcS
 wGlOqqpQv6S13tqaPE84Vyt5SA==
X-Google-Smtp-Source: AGHT+IEMVAqP/UVb3WrkT6mDnbU4Pw1rjYqa7tcZY9aFwv2xDvN5rJf3YMidsLXa7DBayiqLPkiTZQ==
X-Received: by 2002:a05:6a20:8f02:b0:13f:8855:d5a0 with SMTP id
 b2-20020a056a208f0200b0013f8855d5a0mr1071535pzk.50.1691137623268; 
 Fri, 04 Aug 2023 01:27:03 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 t14-20020a1709028c8e00b0019ee045a2b3sm1138162plo.308.2023.08.04.01.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 01:27:02 -0700 (PDT)
Date: Fri, 4 Aug 2023 01:27:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202308040126.ADDA993@keescook>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-2-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230728155207.10042-2-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691137623; x=1691742423;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PUS4uE91dvG7NiA03WNNZdSwC3Poo9mFt4/nET0m0dg=;
 b=S89d4M3DnOXOCpVn6+SsXsaln+b1CDkwN+Wc8iZfQIJp/5Mg31YkipDnIpZFJ8WT22
 6KDDkE6N/Q9+Z1OSckAI2AGnB0jNWeeiAnARi+3bxQCjA0MVKMlkSTzRdpiegjDdjzs9
 alwHeWzqeeo6oSaTxIIaxPIaZMlivjqD7xdio=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=S89d4M3D
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] virtchnl: fix fake
 1-elem arrays in structs allocated as `nents + 1` - 1
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 05:52:05PM +0200, Alexander Lobakin wrote:
> The two most problematic virtchnl structures are virtchnl_rss_key and
> virtchnl_rss_lut. Their "flex" arrays have the type of u8, thus, when
> allocating / checking, the actual size is calculated as `sizeof +
> nents - 1 byte`. But their sizeof() is not 1 byte larger than the size
> of such structure with proper flex array, it's two bytes larger due to
> the padding. That said, their size is always 1 byte larger unless
> there are no tail elements -- then it's +2 bytes.
> Add virtchnl_struct_size() macro which will handle this case (and later
> other cases as well). Make its calling conv the same as we call
> struct_size() to allow it to be drop-in, even though it's unlikely to
> become possible to switch to generic API. The macro will calculate a
> proper size of a structure with a flex array at the end, so that it
> becomes transparent for the compilers, but add the difference from the
> old values, so that the real size of sorta-ABI-messages doesn't change.
> Use it on the allocation side in IAVF and the receiving side (defined
> as static inline in virtchnl.h) for the mentioned two structures.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

This is a novel approach to solving the ABI issues for a 1-elem
conversion, but I have been convinced it's a workable approach here. :)
Thanks for doing this conversion!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
