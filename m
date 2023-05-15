Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A595E7032AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 18:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3343141C84;
	Mon, 15 May 2023 16:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3343141C84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684167439;
	bh=YfZYA/ZHIJ1ZPn1IN/JNwLbo2/NsVBA93aqILGZqXKI=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SbS10kBkc+TAn+shgRRmJhrOurYXqZi9prJaDOE58bkG0ApNK9VzHgU43XNVUdcRE
	 tpUgiTJMVsV+Humnzy2vU+kgFvEvhL320mCrdRICwdf5a6akytFtIWar3HFiP4XauB
	 g21Bj2l9UPg7wMLs/WSk/BiBU7SHD7TC+0DV7bDJyP9SsSa9uzjwVlPPoUtBZlcq/K
	 iovxCMX+/7C4sI47vHitUYMw7TUhSLQVYIDYgQtppZeuonFoBxJlQ7k9gclSD5cVP+
	 aNpXR4KxrU6oMag368jbKhgiAkiVO168vJdfsdEmqByZPlmkTvKhuwZbC/V/ZFUmtx
	 SQkNQd6VRuUQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8SalVWWFAf5; Mon, 15 May 2023 16:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 216D3403FD;
	Mon, 15 May 2023 16:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 216D3403FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 272E71BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F34D240328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F34D240328
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNPzxQjh1mlN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 16:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21A3A41C86
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21A3A41C86
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 16:17:08 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-5my13sD4PhGB7TlrAy3Chw-1; Mon, 15 May 2023 12:17:06 -0400
X-MC-Unique: 5my13sD4PhGB7TlrAy3Chw-1
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-50d89279d95so25443765a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 09:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684167425; x=1686759425;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y2n8nonK1QjGxCr0VUr93GpzjyMzxVkptj6zYuPWAuE=;
 b=QS9qh+8bQu6q6YHVuXsPFT61qqQsS6ZKoMmKRhJ5L8HG0fqbEqgX/u0brvaEmYPL2q
 sAtxsamaWckJNlXKJcheRFgA8Bcx+4K7LKre+q1EUfZq7p5kJZdT9FuqjxknCKLtDNdU
 TlxALdZ3QQ3RbZHZhNxzZ4Nc7nS/ueJAs/tYZq5TuDobvl5f4l9SjC8GH4ChXLk84QY5
 A+BLR3ndNGL5OHQk8/MbNc5U1w6a5fLLkPKOQoXzyW4Cb6Ao7b+zBgN/AZpQyUImeRBu
 c9NxnDv3KHo0TpClEwAD4lP2DZm8Tnl/oyfCAYckdb5nGkN28P5pmC21TT3sM9F07BhA
 H3Uw==
X-Gm-Message-State: AC+VfDx8UXD98vH+r6FXNwknl2ARu48Qpy0IWOTSFANl5hCRQBMb8mmf
 IfORuAN5bSkhHFZV9MKxx4rYJQGnFvFHoLmdZLQqRjCoEbzvmdn7c9taBdl8bgiEXNap/YxFVG1
 zaJ4aDBKJNFXL9gMbA1Pk9HFzRdkbyQ==
X-Received: by 2002:a17:907:8a08:b0:969:2df9:a0dd with SMTP id
 sc8-20020a1709078a0800b009692df9a0ddmr24600321ejc.25.1684167425418; 
 Mon, 15 May 2023 09:17:05 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6RQlKd2/JfsFteQEmuUPf/8L4dZ5P2zo1ST2B53RtXrhApGfHpCM2SRHnGguT14dpugsCwvw==
X-Received: by 2002:a17:907:8a08:b0:969:2df9:a0dd with SMTP id
 sc8-20020a1709078a0800b009692df9a0ddmr24600277ejc.25.1684167425043; 
 Mon, 15 May 2023 09:17:05 -0700 (PDT)
Received: from [192.168.41.200] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 rq12-20020a17090788cc00b0094f0f0de1bcsm9444386ejc.200.2023.05.15.09.17.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 May 2023 09:17:04 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com>
Date: Mon, 15 May 2023 18:17:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Larysa Zaremba <larysa.zaremba@intel.com>, bpf@vger.kernel.org
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
In-Reply-To: <20230512152607.992209-15-larysa.zaremba@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684167427;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y2n8nonK1QjGxCr0VUr93GpzjyMzxVkptj6zYuPWAuE=;
 b=Qd8WNMtV9wwf4KSPSWrL4pAJKCyENXhaLIAgMRv8fHgjRHA++hKhpGcOFkn9ZANOJrUAwT
 6QdTAI25rJOfdSV52fWpKD9/ghxIodp2Oiv4UBZ0ORk/mbWsw4gN5KAV68bqMZ5vCmrtRg
 blf3hEv6OJNf9CoifL5AA5MqAOWrYlk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Qd8WNMtV
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 14/15] net,
 xdp: allow metadata > 32
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/05/2023 17.26, Larysa Zaremba wrote:
> From: Aleksander Lobakin <aleksander.lobakin@intel.com>
> 
> When using XDP hints, metadata sometimes has to be much bigger
> than 32 bytes. Relax the restriction, allow metadata larger than 32 bytes
> and make __skb_metadata_differs() work with bigger lengths.
> 
> Now size of metadata is only limited by the fact it is stored as u8
> in skb_shared_info, so maximum possible value is 255. 

I'm confused, IIRC the metadata area isn't stored "in skb_shared_info".
The maximum possible size is limited by the XDP headroom, which is also
shared/limited with/by xdp_frame.  I must be reading the sentence wrong,
somehow.

> Other important
> conditions, such as having enough space for xdp_frame building, are already
> checked in bpf_xdp_adjust_meta().
> 
> The requirement of having its length aligned to 4 bytes is still
> valid.
> 
> Signed-off-by: Aleksander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   include/linux/skbuff.h | 13 ++++++++-----
>   include/net/xdp.h      |  7 ++++++-
>   2 files changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
> index 8ddb4af1a501..afcd372aecdf 100644
> --- a/include/linux/skbuff.h
> +++ b/include/linux/skbuff.h
> @@ -4219,10 +4219,13 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
>   {
>   	const void *a = skb_metadata_end(skb_a);
>   	const void *b = skb_metadata_end(skb_b);
> -	/* Using more efficient varaiant than plain call to memcmp(). */
> -#if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS) && BITS_PER_LONG == 64
>   	u64 diffs = 0;
>   
> +	if (!IS_ENABLED(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS) ||
> +	    BITS_PER_LONG != 64)
> +		goto slow;
> +
> +	/* Using more efficient variant than plain call to memcmp(). */
>   	switch (meta_len) {
>   #define __it(x, op) (x -= sizeof(u##op))
>   #define __it_diff(a, b, op) (*(u##op *)__it(a, op)) ^ (*(u##op *)__it(b, op))
> @@ -4242,11 +4245,11 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
>   		fallthrough;
>   	case  4: diffs |= __it_diff(a, b, 32);
>   		break;
> +	default:
> +slow:
> +		return memcmp(a - meta_len, b - meta_len, meta_len);
>   	}
>   	return diffs;
> -#else
> -	return memcmp(a - meta_len, b - meta_len, meta_len);
> -#endif
>   }
>   
>   static inline bool skb_metadata_differs(const struct sk_buff *skb_a,
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 0fbd25616241..f48723250c7c 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -370,7 +370,12 @@ xdp_data_meta_unsupported(const struct xdp_buff *xdp)
>   
>   static inline bool xdp_metalen_invalid(unsigned long metalen)
>   {
> -	return (metalen & (sizeof(__u32) - 1)) || (metalen > 32);
> +	typeof(metalen) meta_max;
> +
> +	meta_max = type_max(typeof_member(struct skb_shared_info, meta_len));
> +	BUILD_BUG_ON(!__builtin_constant_p(meta_max));
> +
> +	return !IS_ALIGNED(metalen, sizeof(u32)) || metalen > meta_max;
>   }
>   
>   struct xdp_attachment_info {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
