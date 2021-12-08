Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E546D4BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 14:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CB5283FAD;
	Wed,  8 Dec 2021 13:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5DhLGab4URoX; Wed,  8 Dec 2021 13:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28B3A83FA8;
	Wed,  8 Dec 2021 13:47:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE3841BF313
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A849C4091E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHfPGirBU0Mi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 13:47:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BB2740325
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638971263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WgXBhT10uUPntd9D3XCgnudzdibRWkPr5w60jBLDpjI=;
 b=RZlZz526RAdPvXZyZqQfEWsnap/Xuz2QuJQZdFiBLemmbc3hTHGbZin262gURHK7GUf/On
 nuKFFkBmhfd64mblETd3TeTnqS1NVlLxVCuIlTZ+XIF09/3PIMso/WBhDy8rOKRL9Urgo9
 JGOgJ/OUc5MtZWZkLTTS0Jl1PVSI6ns=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-pHncNfBPM92mQAopPQ4KXQ-1; Wed, 08 Dec 2021 08:47:40 -0500
X-MC-Unique: pHncNfBPM92mQAopPQ4KXQ-1
Received: by mail-lf1-f69.google.com with SMTP id
 d26-20020ac244da000000b00417e1d212a2so1141939lfm.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Dec 2021 05:47:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=WgXBhT10uUPntd9D3XCgnudzdibRWkPr5w60jBLDpjI=;
 b=TAzeZrt0YTts6iavdMN6XqkpTsPXDLUQUhL7nc9iIH5VDcxgIcCYEfuQIjyZFuVtm3
 lRUS8goiMYcvHrg9MpKJJIF/t3x+j8GvyruJP8tUkAF+Lx7rdike/OBAbm105MUEsy2s
 1PqAsuiOmWoP7G7sqGgbtLnCPpqlJ7F6mOaSCAD7eJMeJiIyT2VUbMBfThUYby0uBLxT
 sfVm59sBnZ6KZ/5dC0P4evsaOboPltmAOWkI19eEGayh+3kxE11cbG81sls7QTyc1N0/
 UMUNMCZXluh6IZzrUcOA70aB1xnhETxVVrnKq1ktHPZdH+Ak4ar2m6Zcgccb5lr9aTvn
 NmCQ==
X-Gm-Message-State: AOAM533Bm83v4es3ZYTIw/PsF+AvLg0jTegWXDERRr6d+Df45Pf/WLv7
 jfr7U/0DRzK9k4md8gQ7ZYY0hjlRkPtRgO1pBNhS10HidvqkGzbLVY7yTZdGJ26Y4KKf9zwajh7
 6o6qELZU5D4TlDzWgGAPlqe9DCYoerg==
X-Received: by 2002:a05:6512:33c4:: with SMTP id
 d4mr44446306lfg.182.1638971258582; 
 Wed, 08 Dec 2021 05:47:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyBhIOzFBLL6AjKxPyHM2J++Vww0G7j189KtWPTFzpPdI2id9zE+pRzYQH9ANJkJY/Y/JcAlA==
X-Received: by 2002:a05:6512:33c4:: with SMTP id
 d4mr44446255lfg.182.1638971258261; 
 Wed, 08 Dec 2021 05:47:38 -0800 (PST)
Received: from [192.168.0.50] (87-59-106-155-cable.dk.customer.tdc.net.
 [87.59.106.155])
 by smtp.gmail.com with ESMTPSA id k8sm259731lfv.179.2021.12.08.05.47.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Dec 2021 05:47:37 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <87463ddc-bf93-99cc-65d1-cbc215125ec3@redhat.com>
Date: Wed, 8 Dec 2021 14:47:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211207205536.563550-1-alexandr.lobakin@intel.com>
 <20211207205536.563550-10-alexandr.lobakin@intel.com>
In-Reply-To: <20211207205536.563550-10-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 9/9] i40e: respect
 metadata on XSK Rx to skb
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>, bpf@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, brouer@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Vedang Patel <vedang.patel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 07/12/2021 21.55, Alexander Lobakin wrote:
> For now, if the XDP prog returns XDP_PASS on XSK, the metadata will
> be lost as it doesn't get copied to the skb.
> Copy it along with the frame headers. Account its size on skb
> allocation, and when copying just treat it as a part of the frame
> and do a pull after to "move" it to the "reserved" zone.
> net_prefetch() xdp->data_meta and align the copy size to speed-up
> memcpy() a little and better match ixgbee_costruct_skb().
                                      ^^^^^^^^^^^^^^^^^^^
Misspelling function name.

> 
> Fixes: d0bcacd0a130 ("ixgbe: add AF_XDP zero-copy Rx support")
> Suggested-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)

Wrong driver (i40e:) "tagged" in subject.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
