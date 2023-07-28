Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED791767897
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 00:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C62060B46;
	Fri, 28 Jul 2023 22:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C62060B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690584215;
	bh=ESrDYHpWJOgRFgNi8IZpC1a240DfATu0Cj41QO6qOxQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=diBjWebzNV61ISvW4DhsYbbP/TynRMpTDxb8cQ0GG2HAWXd6gvkwGrywZT/dyWnLq
	 RnIq4HBwY+qOGHQL1+bO2Kxv7w1ApFNFIFU4wjxM9zUjKGuFVEtH/XmVey9K0V61A0
	 kmieDP0x0R+xewD7yoyPofAylasfQY6lbMeqKoqMBGPeflcTmf+zCTSQpVrkItO9dL
	 zltk8nHRtYeD53bTla6k76m1AdNYE9EkrWJ/L0Q3Uc8LMZzrNwdCktt8MNkvzAvqJV
	 UlDrumvRRoZ04ppS+SO7B4eq+r30lrHXsUtB56gnbEBHMaG257x6CXIGBp4jnFAqwW
	 u9uVL+GfQLrjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qvscdlR05WV; Fri, 28 Jul 2023 22:43:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BA3860AAD;
	Fri, 28 Jul 2023 22:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BA3860AAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 702931BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E45340004
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E45340004
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id py2S5bvnzFgX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 22:43:28 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BA7E401CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA7E401CC
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-68706b39c4cso1315455b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 15:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690584208; x=1691189008;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GqnEWXGBr+qgq+fw45Hld4bEOObqJbZc782zVcwCLuo=;
 b=EXRN8ZtGhbOB7QirSW8liwwxA3LxtnPlZYfSdJiUt1Il6azbjOb5G3PwsiEXwmhfOc
 UzC9jOtHWIootKPYBOG0c9NswMJS8fwXR5ZCHoTLEdjEHY+PCMAMBD4CsrzOCwxcjn2r
 x6NQnzY0/ONl7t01eWY0buwFUrXyI3vSXY8QRcsC6gSNGrjKunGZAMIuzLqqulgNxAJf
 X6+3jX0OmCToJfMjmvfSYVYoNIuukI2UaPm/4hSgW0MovcwHdKiFWTzuUZrb34KRM7AL
 WvwewSj5/1KhNhxJ+vyvm/wR0622wGi+ayfQfjlQPEH4Iq8PPtfmgVmMZLzI9ycE8Dgy
 rmZg==
X-Gm-Message-State: ABy/qLZgpet7BkujtpWNpbgMRBB/YZDbiiH415FlMND+g5OTkWYFnqpS
 ffAjMAVTv+sGMPesGEV9bIq+BA==
X-Google-Smtp-Source: APBJJlEFOXYQokilR8cdjkWektv3laYms1B2ykj0+cKlup9KWlpd1V1VaF3ZUmqBbDxlUB7w2HGN7A==
X-Received: by 2002:a05:6a20:3251:b0:133:bbe0:30bf with SMTP id
 hm17-20020a056a20325100b00133bbe030bfmr2705280pzc.13.1690584207864; 
 Fri, 28 Jul 2023 15:43:27 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 w24-20020a170902d71800b001b8052d58a0sm4053824ply.305.2023.07.28.15.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jul 2023 15:43:27 -0700 (PDT)
Date: Fri, 28 Jul 2023 15:43:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202307281537.AC1ED9CA@keescook>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-2-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230728155207.10042-2-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1690584208; x=1691189008;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GqnEWXGBr+qgq+fw45Hld4bEOObqJbZc782zVcwCLuo=;
 b=d7wBzlZ64gFtXkNExZkAf2L2TcCyfy5/7eWx6u6tzjV0OTM9I4iTra1tb8g18fz1tm
 zjnf/3/RfFUj7Y1+OWcrLozJbIZ//yanLc+UeESbFh7sDGEufAtXK5yIIyWWJctPGV6f
 JcvWOOS6ij4NmpSmEFiFReD739b975jhkp6GQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=d7wBzlZ6
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

This all looks workable, but it's a unique solution in the kernel. That
is fine, of course, but would it be easier to maintain/test if it went
with the union style solutions?

struct foo {
	...
	union {
		type legacy_padding;
		DECLARE_FLEX_ARRAY(type, member);
	};
};

Then the size doesn't change and "member" can still be used. (i.e. no
collateral changes needed.)

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
