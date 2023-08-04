Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC72277071D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 19:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C2CC4063C;
	Fri,  4 Aug 2023 17:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C2CC4063C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691170210;
	bh=Sj1rZA6EfJnR0qGJnUbAqht35zEUSfYny0vmrOnRHCE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xDjWByeO6JAeHACOYpE7ZwcPEWZk4vQPAN2ibCeKZovQ6vX4FOzAv/5XpG/n6YTaF
	 Lp8ppQBOQGnK0RfblMqJuNgnGyXEQZr9aLX64A+0pzvu9zWt6/MRr8ihzdqLl5Af9F
	 iLG2R2XEMjtv3yhb/lyRGDa2y59ZtgMoNBhG71SUu8woDfVHGEsjBTo8h62gvCKsd9
	 ysfXizCacLwp6ylObooofjEkNz1XrV6iq+fzTlWt+fNpYxQY4N3oi37KvDCek+Rqz8
	 GJED0ARYzuT5T0qoPZPA/11EPzKY22ZkKVIeQ/4gQrgGy9g7Nz/b8lH9H7VhDETlWt
	 dBMPbps2+eY1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y_wBWpw21d1h; Fri,  4 Aug 2023 17:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F560415BA;
	Fri,  4 Aug 2023 17:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F560415BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A38C1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 17:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF64241DF5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 17:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF64241DF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kVca0j0497Pu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 17:29:50 +0000 (UTC)
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C77B41EED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 17:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C77B41EED
Received: by mail-oo1-xc2f.google.com with SMTP id
 006d021491bc7-56c711a889dso1570897eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 10:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691170189; x=1691774989;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V4vdhRUtg9vt+FoZL7q0xAtAfLYBhNs3NC9GBHaD1o4=;
 b=htgTlFNeMSK1u4hB6l85qC+8bxidk8tQSRxyCIIv9cmJyses893R0+OUk2vqm+RLd/
 +q51gwJ0fN0CGRxVNi2GyUPsnY2sktJEgn71MorXwQ8rbUX0i6bDzUmmZ4O6R7Y8d4HG
 HWyJcbXUUnaOFc95/ydnUaVa/ZzmB0ogtwUNngpl30zFS273rByGFovjrJCsXOe+XbJz
 EUxpmDhlQpuPdYBQJDC0Z2RE3Nge0wm8smNa50QM8Rk/uWrJl06kIOg5uZTfTWzzkdES
 NMnZ+0JRC2SXgEEJndI0pPzHBw6NKWYME8Wt2D2dpvMmap8UYwCLOL/BOlK7Zp7IASYk
 13sg==
X-Gm-Message-State: AOJu0Yy7EqzTO6/NdyMvCTF8F1+tv9vUB4M6m7JxR++dexUG2jw2MIC/
 shxCyEIjeUO3hmVagsMFn1MchQ==
X-Google-Smtp-Source: AGHT+IFgh5CF2i5h/8VoLtSl3dKgvdkpF8uKzXgQIOyt/Q679nwX+1DqZQk2AhGuKKxzKDbJ9mMWwg==
X-Received: by 2002:a05:6358:79c:b0:135:62de:ff7d with SMTP id
 n28-20020a056358079c00b0013562deff7dmr2095914rwj.8.1691170189380; 
 Fri, 04 Aug 2023 10:29:49 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 d9-20020a63d649000000b0055c090df2fasm1368776pgj.93.2023.08.04.10.29.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 10:29:48 -0700 (PDT)
Date: Fri, 4 Aug 2023 10:29:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202308041029.74FF3CCD@keescook>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-2-aleksander.lobakin@intel.com>
 <202308040126.ADDA993@keescook>
 <49b0d7bd-2bc1-c994-7780-35554a399242@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49b0d7bd-2bc1-c994-7780-35554a399242@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691170189; x=1691774989;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=V4vdhRUtg9vt+FoZL7q0xAtAfLYBhNs3NC9GBHaD1o4=;
 b=GLAfMARBv+SZka30ple40Vmfo4lfaiOyW30EbkESLtrDz5c/DB5IyxfU7W9i5Baf3u
 31Zzecz/CBM2SoIQz22XYxHwrIswsKL/rLLNFaG6sxF5L7cc4zJNa8kyQhJXzvYrsS8q
 dmtq6b13+1Mw4qhW3Hk3Uwt4QV5SIIeGiQ26s=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=GLAfMARB
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

On Fri, Aug 04, 2023 at 05:42:19PM +0200, Alexander Lobakin wrote:
> From: Kees Cook <keescook@chromium.org>
> Date: Fri, 4 Aug 2023 01:27:02 -0700
> 
> > On Fri, Jul 28, 2023 at 05:52:05PM +0200, Alexander Lobakin wrote:
> >> The two most problematic virtchnl structures are virtchnl_rss_key and
> >> virtchnl_rss_lut. Their "flex" arrays have the type of u8, thus, when
> >> allocating / checking, the actual size is calculated as `sizeof +
> >> nents - 1 byte`. But their sizeof() is not 1 byte larger than the size
> >> of such structure with proper flex array, it's two bytes larger due to
> >> the padding. That said, their size is always 1 byte larger unless
> >> there are no tail elements -- then it's +2 bytes.
> >> Add virtchnl_struct_size() macro which will handle this case (and later
> >> other cases as well). Make its calling conv the same as we call
> >> struct_size() to allow it to be drop-in, even though it's unlikely to
> >> become possible to switch to generic API. The macro will calculate a
> >> proper size of a structure with a flex array at the end, so that it
> >> becomes transparent for the compilers, but add the difference from the
> >> old values, so that the real size of sorta-ABI-messages doesn't change.
> >> Use it on the allocation side in IAVF and the receiving side (defined
> >> as static inline in virtchnl.h) for the mentioned two structures.
> >>
> >> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > 
> > This is a novel approach to solving the ABI issues for a 1-elem
> > conversion, but I have been convinced it's a workable approach here. :)
> > Thanks for doing this conversion!
> > 
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > 
> 
> Thanks a lot!
> You gave Reviewed-by for patches #1 and #3, does it mean the whole
> series or something is wrong with the patch #2? :D

Hm, maybe delivery was delayed? I see it on lore:
https://lore.kernel.org/all/202308040128.667940394B@keescook/

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
