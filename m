Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88A16E2AE2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 22:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84494408AC;
	Fri, 14 Apr 2023 20:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84494408AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681502718;
	bh=bJLI45qb6Dt/Q3BXAizuy2iTkT4SlPmOxguB+hlZIQU=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9qBvAtgY5Adw62TvUe1zvuGB8Wplq0ddattsjQPNzN1DOfPpBYu2QndMC2G1oR42X
	 yJn1U6s+CRReJvzfydOsjujN4wkoDcbQX3JH0pCWr711SxzZAtD65GY5wxujev8NZ8
	 HPDU29U+WbjYPwrokvW2q7zlEe4/m6M6t3nba6r00KTzuDcH+Au700YdsPMI4aNme2
	 QzpohpYSM+DiIkdwoHu16loq8UqMLzbTVBM0Pp2xqSSHtY4pIaJoQEDEzqxNN3Lqgf
	 lHw8xzn/k9u9Q9dnRFRLE4uogq+31qDtbfBPeKGlQEK083Ez3et/TlS7HvLZhpRAIJ
	 HAxrH/M4RZaEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pXiqotb2FXDU; Fri, 14 Apr 2023 20:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5469C40518;
	Fri, 14 Apr 2023 20:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5469C40518
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC121BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 20:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 224B760BE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 20:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 224B760BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tlu4jDwPWOMi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 20:05:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC2F60BA6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DC2F60BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 20:05:10 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-294-IyEub3hGOmihT20fqharZQ-1; Fri, 14 Apr 2023 16:05:08 -0400
X-MC-Unique: IyEub3hGOmihT20fqharZQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-505070d2502so1547830a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 13:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681502707; x=1684094707;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H8b8ehHOsU++QqrM70j/M9clO0F9dJb97/yhmghDZiY=;
 b=N3pMAhHzF/F6rBvLzBZfGI2nI0eQEfQsRMQBsCy8ytOkdUUiXa8RFhK7+mYCgJXjBr
 ttzTu88VanUsc9PZI80lIZdUsXEDjC+pIuR6yYbyrOrEFoYlDfvsGb2JShYZqKHgcVO6
 lH+RWdL5cW8rUz24z2O6I8sqRAs5Yo/Dikk8yTkHoID04Uw9iFlkIedjZuSRL83C7qkL
 2ZbiJCvaRXRFwLl+6MLVYipYwWwLgh+CClMxJjihwXoRGA3F/keGGUiKQBxp+xkazWGZ
 1mfmYMU6NL7AneIt+T2+z2mHAz6Gvc/rN8Wkq9B5L3Ahcb33C9mJUxL/6RLFpDFEGDqZ
 /Ukw==
X-Gm-Message-State: AAQBX9eMki9SHfEZs4NkATvZzOWIxvBvuDaj2IrmN7dUaCSaV55KcfRA
 WQltMVN5bxd0gKWLhBAkpqwLq4Nom12Jz2LF4Cyn6uZde4wW4fRBEZwOmJOLKfIItD+beITR7l+
 B3Bl3CBwbMrx4Zu/SxWtWbVHWLi81YQ==
X-Received: by 2002:aa7:d28e:0:b0:4fa:6767:817b with SMTP id
 w14-20020aa7d28e000000b004fa6767817bmr7724754edq.41.1681502707430; 
 Fri, 14 Apr 2023 13:05:07 -0700 (PDT)
X-Google-Smtp-Source: AKy350YxIOswwl7UdXivfvk380SENlMobnVIRpUteIMxXlizKeOqOgvOSiZA+w+CLL4G0spm0zCdMA==
X-Received: by 2002:aa7:d28e:0:b0:4fa:6767:817b with SMTP id
 w14-20020aa7d28e000000b004fa6767817bmr7724719edq.41.1681502707087; 
 Fri, 14 Apr 2023 13:05:07 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 fy15-20020a1709069f0f00b0094a5b8791cfsm2826970ejc.109.2023.04.14.13.05.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Apr 2023 13:05:06 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <934a4204-1920-f5e1-bcde-89429554d0d6@redhat.com>
Date: Fri, 14 Apr 2023 22:05:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Jacob Keller
 <jacob.e.keller@intel.com>, David Laight <David.Laight@ACULAB.COM>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
In-Reply-To: <20230414154902.2950535-1-yoong.siang.song@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681502709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H8b8ehHOsU++QqrM70j/M9clO0F9dJb97/yhmghDZiY=;
 b=QEevroIYLgZ6YQneh/4b3atubrMi8nwCLVzJke940CydDGxZzJleXf3XP6rI5LkmE7mlkp
 dbv6n9XvLVyHaxt3D6Qtm+V5Wcsmt+rEcDtZJoaGWXlCpSRSMqNe1InpokmAGZQVhdkjJx
 4l9T22II5mtrw8wWpzeUaGgMp8IVkNU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QEevroIY
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14/04/2023 17.49, Song Yoong Siang wrote:
> igc_configure_rx_ring() function will be called as part of XDP program
> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
> this timestamp enablement will be overwritten when buffer size is
> written into SRRCTL register.
> 
> Thus, this commit read the register value before write to SRRCTL
> register. This commit is tested by using xdp_hw_metadata bpf selftest
> tool. The tool enables Rx hardware timestamp and then attach XDP program
> to igc driver. It will display hardware timestamp of UDP packet with
> port number 9092. Below are detail of test steps and results.
> 
> Command on DUT:
>    sudo ./xdp_hw_metadata <interface name>
> 
> Command on Link Partner:
>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
> 
> Result before this patch:
>    skb hwtstamp is not found!
> 
> Result after this patch:
>    found skb hwtstamp = 1677800973.642836757
> 
> Optionally, read PHC to confirm the values obtained are almost the same:
> Command:
>    sudo ./testptp -d /dev/ptp0 -g
> Result:
>    clock time: 1677800973.913598978 or Fri Mar  3 07:49:33 2023
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Cc: <stable@vger.kernel.org> # 5.14+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---

LGTM, thank for the adjustments :-)

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

> v2 -> v3: Refactor SRRCTL definitions to more human readable definitions
> v1 -> v2: Fix indention
> ---
>   drivers/net/ethernet/intel/igc/igc_base.h | 11 ++++++++---
>   drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++--
>   2 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
> index 7a992befca24..9f3827eda157 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.h
> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
> @@ -87,8 +87,13 @@ union igc_adv_rx_desc {
>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
>   
>   /* SRRCTL bit definitions */
> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
> -#define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
> +#define IGC_SRRCTL_BSIZEPKT(x)		FIELD_PREP(IGC_SRRCTL_BSIZEPKT_MASK, \
> +					(x) / 1024) /* in 1 KB resolution */
> +#define IGC_SRRCTL_BSIZEHDR_MASK	GENMASK(13, 8)
> +#define IGC_SRRCTL_BSIZEHDR(x)		FIELD_PREP(IGC_SRRCTL_BSIZEHDR_MASK, \
> +					(x) / 64) /* in 64 bytes resolution */
> +#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
> +#define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	FIELD_PREP(IGC_SRRCTL_DESCTYPE_MASK, 1)
>   
>   #endif /* _IGC_BASE_H */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 25fc6c65209b..a2d823e64609 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -641,8 +641,11 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>   	else
>   		buf_size = IGC_RXBUFFER_2048;
>   
> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
> -	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDR_MASK |
> +		    IGC_SRRCTL_DESCTYPE_MASK);
> +	srrctl |= IGC_SRRCTL_BSIZEHDR(IGC_RX_HDR_LEN);
> +	srrctl |= IGC_SRRCTL_BSIZEPKT(buf_size);
>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>   
>   	wr32(IGC_SRRCTL(reg_idx), srrctl);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
