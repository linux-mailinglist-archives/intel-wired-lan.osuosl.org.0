Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7073B45F0BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 16:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB52C40358;
	Fri, 26 Nov 2021 15:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6kkZP7XDcwP; Fri, 26 Nov 2021 15:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 999FF40239;
	Fri, 26 Nov 2021 15:32:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CFA41BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63DE5607A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Crek1ey_ptWx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 15:32:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AFDD607A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637940772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t1+6lLBKzRsOvvoLZavbDMeX/0SVAxdl2+X6EFyhRfA=;
 b=Z0D2cbgl1d/O52LG6dk6OhwcvgBEDbsVFKAOObngv/X2zeiGKdy5f2zt/vic1SK8jADdY7
 CmMg+GlmxFS/KD7TRZBc5r7FKTKDX0T5UEmQ27EBfiDdEwtYrGK8LvodP2GyaAimwXYIDU
 VPvmao3r3M4o3nuUwv8j77hSTumG5Ws=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-149-TVRpAJLOOy6S4r40VtRIOg-1; Fri, 26 Nov 2021 10:32:51 -0500
X-MC-Unique: TVRpAJLOOy6S4r40VtRIOg-1
Received: by mail-wm1-f72.google.com with SMTP id
 v62-20020a1cac41000000b0033719a1a714so5242652wme.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 07:32:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=t1+6lLBKzRsOvvoLZavbDMeX/0SVAxdl2+X6EFyhRfA=;
 b=y8hdjsEOeGozBySsai9o2K6x014F+k+/egR0AKousuTDaGQqYTLs85dIs6bzwQLayh
 G+pKXetenlRNnP+PxfEclkSdFW48FJFuOUjZDi4aENnC8+osmtKoGhxeejwEejl89zCG
 RNMmXtJqi6252g+FsrQF/D17yk/vcdNrKxCga1ccm3vsakpq2JPH9ZEWJr3eQpR4toda
 X059/Zt9bjDJsnz1DX9T5c3s5n4W1LXrX+fxP0M0xhMyjcO4JEMII5FmqaDMeHWQ9iNV
 ooQHGOohoA9HNxlNc1uQj7uXWgdyDJS8CY/YUpnskC5il0uLgbnufi5hz1tpMwuG7mBx
 WYVw==
X-Gm-Message-State: AOAM533gEA+NVd/tyTYdr1w1zMIWUmHa6dgtSG+x8IdbBCuMXggXLvVC
 3cWJx7nwio/1VOI8ExmujTHwaYXzLWRF30RW/nS3vHFFMkcAXf/DZG/99MqxmScP5CVyYI+eSyM
 IC6DWC2mARjbuq81OumDLPSyu8hqiRg==
X-Received: by 2002:adf:fb09:: with SMTP id c9mr14519937wrr.223.1637940769831; 
 Fri, 26 Nov 2021 07:32:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwgfSH4rBkDxJpw/E0R3JU0oHbTtNz0X3Ozh45JI/JWmFIsykZ0b2AySxDMJwQ9RLbXRKFf9Q==
X-Received: by 2002:adf:fb09:: with SMTP id c9mr14519899wrr.223.1637940769532; 
 Fri, 26 Nov 2021 07:32:49 -0800 (PST)
Received: from [192.168.2.13] (3-14-107-185.static.kviknet.dk. [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id
 h17sm11479193wmb.44.2021.11.26.07.32.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Nov 2021 07:32:49 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <66f62ef7-f4c6-08df-a8e1-dbbe34b9b125@redhat.com>
Date: Fri, 26 Nov 2021 16:32:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700858579.565980.15265721798644582439.stgit@firesoul>
 <YaD8UHOxHasBkqEW@boxer>
In-Reply-To: <YaD8UHOxHasBkqEW@boxer>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] igc: AF_XDP zero-copy
 metadata adjust breaks SKBs on XDP_PASS
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26/11/2021 16.25, Maciej Fijalkowski wrote:
> On Mon, Nov 15, 2021 at 09:36:25PM +0100, Jesper Dangaard Brouer wrote:
>> Driver already implicitly supports XDP metadata access in AF_XDP
>> zero-copy mode, as xsk_buff_pool's xp_alloc() naturally set xdp_buff
>> data_meta equal data.
>>
>> This works fine for XDP and AF_XDP, but if a BPF-prog adjust via
>> bpf_xdp_adjust_meta() and choose to call XDP_PASS, then igc function
>> igc_construct_skb_zc() will construct an invalid SKB packet. The
>> function correctly include the xdp->data_meta area in the memcpy, but
>> forgot to pull header to take metasize into account.
>>
>> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>> Signed-off-by: Jesper Dangaard Brouer<brouer@redhat.com>
> Acked-by: Maciej Fijalkowski<maciej.fijalkowski@intel.com>
> 
> Great catch. Will take a look at other ZC enabled Intel drivers if they
> are affected as well.

Thanks a lot for taking this task!!! :-)
--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
