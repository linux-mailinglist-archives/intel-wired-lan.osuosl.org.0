Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D62970524D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 17:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C022441E18;
	Tue, 16 May 2023 15:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C022441E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684251342;
	bh=NNQmAd/CT1naNyqRJNWk2OMysRaOqlVIwLOIQGudYSI=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IPxFNO2bZAJzgjHkUlZqJSCifb0GyvpxbY2HhAXckFpjQnjSexTQZ7tK4hiJr5J5h
	 0bpbm2L+zI55VnNTQNZxXjdx4d0Vm0pqzsnuYLnuvZNIpKL+hrhTgqDDPwviFbbeeR
	 ZzjiaUilWtxfcQrfjxlJ2PHN28qLqMWW8WaT4Gnrz+zC/akJFSzy2H5zxhg5EUqNnG
	 7yFKm9BvYpMCKT35hYhlezh9e0WUJoJK0yx10pm2ZTwF3cRQ7fUvW41VJ/5cQSVHLq
	 +KWxVXRY6rAOIk6PYDHkj6xruVLmqxTJSWASNF9epA/cQ4G3/ciLeKpZ7lf+fLcZx/
	 b2/dqg7dj3CNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YELVqvgtmmbr; Tue, 16 May 2023 15:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B20B409F8;
	Tue, 16 May 2023 15:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B20B409F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78B0D1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 15:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5104140B65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 15:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5104140B65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U5NaNk9qiHtH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 15:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63B59409F8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63B59409F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 15:35:34 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-yU75emNhMg6VOA5r4Gd9Sw-1; Tue, 16 May 2023 11:35:31 -0400
X-MC-Unique: yU75emNhMg6VOA5r4Gd9Sw-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-94f7a2b21fdso1827747566b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 08:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684251330; x=1686843330;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CcyRieVlUfnyzXKTzR5d4JdkM5K3TgxrxW94yInGt+Q=;
 b=cEzguB9YI/ro77SKxPLvTVgHpdnFHPre09j+gX2g6k98rJWCGAZFKY5T+Oa/PDh8Vu
 WSGrDMd9iaGcUvsR488Fi0I20HaGtyJEJKPAIYsOYBK1QPO+HAEHcr6dDYTPqR3+YJtz
 DZs469OiL0lHDdXlCru1CwUKdhPULQ6SiCihVG9oNjayxdjoKXbzSI80KydZkBXcNagi
 naR1MM4w1R+ERjKIimxBkogHQ0YXrQ1Wxd7wgPgX+ng/13mlTTizRoVjU8PQ/HqEUsrz
 f2NB2VKdTx/YW4uruTAYvHGwjt5++W94tRS9wXy+sPXsqZBfcuHaWkGBED5uNuWBKLED
 r5Rw==
X-Gm-Message-State: AC+VfDzunnpJo74Z5Ci04RKyRC+5gb+wEKtHH4Xso8sYV9EqeoNJ9WEg
 KpfPZmhRP5dFucTraIWQ9o+jG1711j2IlOHNNNsmnawLlOjhy8X2OCTxQKYfOGlG9t75PWP9uND
 CR2rhvAXLKS95BeqHC868olVmFLQO5Q==
X-Received: by 2002:a17:907:7241:b0:96a:f688:db6d with SMTP id
 ds1-20020a170907724100b0096af688db6dmr9440489ejc.39.1684251330709; 
 Tue, 16 May 2023 08:35:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ57HOpAvaM/nwXSOEpBnwKQLHKhU91w24YzKezDzveXbLZUSTWHiqd71UBuqaWRBls0iTWibg==
X-Received: by 2002:a17:907:7241:b0:96a:f688:db6d with SMTP id
 ds1-20020a170907724100b0096af688db6dmr9440452ejc.39.1684251330293; 
 Tue, 16 May 2023 08:35:30 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 og40-20020a1709071de800b0095807ab4b57sm11264399ejc.178.2023.05.16.08.35.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 08:35:29 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
Date: Tue, 16 May 2023 17:35:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
 <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com> <ZGJnFxzDTV2qE4zZ@lincoln>
 <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
In-Reply-To: <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684251333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CcyRieVlUfnyzXKTzR5d4JdkM5K3TgxrxW94yInGt+Q=;
 b=B4gbIoW+U4T+vrwvlrmUl5rf188eqf7cSfjIo0mXWYIIchfOygUjADKXXakTQfYH+0lP/L
 SfB0Lqc0FM7K8kcUGRvqxN9SNmAQNpqfReV5i6I/lmkW3eQY+/j17Gh4AZUVZEaJn9DVtr
 nIkUQ4xZmuCozTuD+Kj+k26tCKc88qg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=B4gbIoW+
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
 linux-kernel@vger.kernel.org, Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 16/05/2023 14.37, Alexander Lobakin wrote:
> From: Larysa Zaremba<larysa.zaremba@intel.com>
> Date: Mon, 15 May 2023 19:08:39 +0200
> 
>> On Mon, May 15, 2023 at 06:17:02PM +0200, Jesper Dangaard Brouer wrote:
>>>
>>> On 12/05/2023 17.26, Larysa Zaremba wrote:
>>>> From: Aleksander Lobakin<aleksander.lobakin@intel.com>
>>>>
>>>> When using XDP hints, metadata sometimes has to be much bigger
>>>> than 32 bytes. Relax the restriction, allow metadata larger than 32 bytes
>>>> and make __skb_metadata_differs() work with bigger lengths.
>>>>
>>>> Now size of metadata is only limited by the fact it is stored as u8
>>>> in skb_shared_info, so maximum possible value is 255.
 >>>
>>> I'm confused, IIRC the metadata area isn't stored "in skb_shared_info".
>>> The maximum possible size is limited by the XDP headroom, which is also
>>> shared/limited with/by xdp_frame.  I must be reading the sentence wrong,
>>> somehow.
 >
> skb_shared_info::meta_size  is u8. Since metadata gets carried from
> xdp_buff to skb, this check is needed (it's compile-time constant anyway).
> Check for headroom is done separately already (two sentences below).
> 

Damn, argh, for SKBs the "meta_len" is stored in skb_shared_info, which
is located on another cacheline.
That is a sure way to KILL performance! :-(

But only use for SKBs that gets created from xdp with metadata, right?



>> It's not 'metadata is stored as u8', it's 'metadata size is stored as u8' :)
>> Maybe I should rephrase it better in v2.

Yes, a rephrase will be good.

--Jesper



static inline u8 skb_metadata_len(const struct sk_buff *skb)
{
	return skb_shinfo(skb)->meta_len;
}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
