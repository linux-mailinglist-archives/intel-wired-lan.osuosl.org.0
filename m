Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDDD5E9788
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 02:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E8BE60EA5;
	Mon, 26 Sep 2022 00:41:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8BE60EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664152893;
	bh=esoBZtz4iQdiU6n1vHgErOvVuWbxXHcbYhNVQ4QFl8w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IuFeLh5M7PoaP80ar8/wPrVWRujSaAKmIphgksIQVhWQRglzOzPrTZm2hPM4Y310m
	 sOZERsal+9JGP3NMEmeDKRxPmeBwDmAk0Bt3xPncNayEcy+Yaa9DOXszPXhRrgtcY3
	 A8Cakb6SKsO218hC3lT/J7uWKJkSJ9tgq/8nTal/MFajUMglU2ZTMIpCfyrnuen/iq
	 1S5a2Gk5YFVNs5IWSY2XHRxKMKOH7duWw5zgcgsRowIGS2jZpNR59OYCxPkEn1cBvD
	 xBF2sPM6lUhj/KKzlqhiin5C+d7X3TpA1qFphqS0bOmEtYkZXea3xIDSvn4AIz08AV
	 qvJKVaTnNnkcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmozUebQKhYP; Mon, 26 Sep 2022 00:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5302060E71;
	Mon, 26 Sep 2022 00:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5302060E71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6F701BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD69E60E83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD69E60E83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smCX9xc-6q7r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 00:41:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38CEC60E7A
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38CEC60E7A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 00:41:26 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 i15-20020a17090a4b8f00b0020073b4ac27so5224679pjh.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 17:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=Ee6jY7viFUfMjAsx1AOZFi9ykD0TZlKjDDVt7+BAWpA=;
 b=6/vIRNYGnkq3iufpirMnLMpFKaUsI0O0W74a1I5JiWq8W8kS1b0y4UeEqTCQX8ey/a
 vypxZc3d0UxgsH8AzHHE5SI0ciiOtFnk61DM7d7K2ZjSB3KW/dBsan+EpoHy+VXjjuEB
 kA32I5mentw8WP1Q8aTmystzCK60yaRGv04rBHQTZJ9d+CYvLTg96pGNOwAoXcmrRNgG
 1vzHnZ1awEb8ZqKtm5gVfrdI/+yt0uBBPxDkCgS5EQB7n6DYkYq5s8VDG3GvilLO3NQq
 f2dp0bJ1XxEQtmOmfVjOYkoHBW3KTAe7T4NdNf7OI3Lot8P1QMgKU8XheOinSdmh4GiE
 pb6Q==
X-Gm-Message-State: ACrzQf2rzNntUePcKA8KtPE9we/k/ili6nw9InE64FWa1q+6fELsbroL
 pp9EdQ/lN+aBNLJT/BM53Pl8+A==
X-Google-Smtp-Source: AMsMyM5VpMx54A01n2IxbeNYegjZcGYyyX6uNC/69UJfyYAh5+QLjokwGVSlu1kDsKsMHY6BwDZQuA==
X-Received: by 2002:a17:902:ea0e:b0:178:3d49:45ad with SMTP id
 s14-20020a170902ea0e00b001783d4945admr19810833plg.103.1664152885590; 
 Sun, 25 Sep 2022 17:41:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 l7-20020a622507000000b0053ebafa7c42sm10576331pfl.79.2022.09.25.17.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Sep 2022 17:41:24 -0700 (PDT)
Date: Sun, 25 Sep 2022 17:41:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <202209251738.2E6B9C29D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-5-keescook@chromium.org>
 <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date;
 bh=Ee6jY7viFUfMjAsx1AOZFi9ykD0TZlKjDDVt7+BAWpA=;
 b=Tymc3mQ6yYtKo/fUwb0pntTGEsuDmA3KGe5ZainSrzJcqfvTUXGD6g4AS/QDrdEz1m
 IPp9Tld0kqL2gFrY1NTkahNxDsLTe8rCfVZ7Sf6Yy58l+LrHh3LtaZFzBUsKT5oECTI8
 ASxk03BGu9JGtTcAH5Y41r1unU3COw5iwE/sg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Tymc3mQ6
Subject: Re: [Intel-wired-lan] [PATCH v2 04/16] skbuff: Phase out ksize()
 fallback for frag_size
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
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Sep 25, 2022 at 09:17:40AM +0200, Paolo Abeni wrote:
> On Fri, 2022-09-23 at 13:28 -0700, Kees Cook wrote:
> > All callers of APIs that allowed a 0-sized frag_size appear to be
> > passing actual size information already
> =

> AFAICS, not yet:
> =

> drivers/net/ethernet/qlogic/qed/qed_ll2.c:
> 	skb =3D build_skb(buffer->data, 0); // -> __build_skb(..., 0)=A0
> 		// ->  __build_skb_around()
> =

> drivers/net/ethernet/broadcom/bnx2.c:
> 	skb =3D build_skb(data, 0);
> =

> I guess some more drivers have calls leading to=A0
> =

> 	__build_skb_around(...,  0)
> =

> there are several call path to checks...

Ah-ha! Thank you. I will try to hunt these down -- I think we can't
remove the "secret resizing" effect of ksize() without fixing these.

> > [...]
> > diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> > index 0b30fbdbd0d0..84ca89c781cd 100644
> > --- a/net/core/skbuff.c
> > +++ b/net/core/skbuff.c
> > @@ -195,7 +195,11 @@ static void __build_skb_around(struct sk_buff *skb=
, void *data,
> >  			       unsigned int frag_size)
> >  {
> >  	struct skb_shared_info *shinfo;
> > -	unsigned int size =3D frag_size ? : ksize(data);
> > +	unsigned int size =3D frag_size;
> > +
> > +	/* All callers should be setting frag size now? */
> > +	if (WARN_ON_ONCE(size =3D=3D 0))
> > +		size =3D ksize(data);
> =

> At some point in the future, I guess we could even drop this check,
> right?

Alternatively, we might be able to ask the slab if "data" came from
kmalloc or a kmem_cache, and if the former, do:

	data =3D krealloc(kmalloc_size_roundup(ksize(data), ...)

But that seems ugly...

-- =

Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
