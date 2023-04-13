Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87336E14D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 21:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F0AC429E3;
	Thu, 13 Apr 2023 19:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F0AC429E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681412745;
	bh=e3k1NopQzbnkaGJMM4Ua7Ppa2qhZTRFFT9/fdHJ7oK0=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X3MBYsz46/O2WVDXO4Q19fqg0ej3GnfFq1wz/ZSqn1XdZd6P+woyZJoN8SX1cBx9N
	 MqgFzdr7WxnEATi4MPmuWw7kqVL4StGHf6TjDpFQaqLbSNLqVspuwVhgVvSp61/zWa
	 kz8rJ93bK8lw+ZXP8XYW2o7eUfgZqSJrD014epiD4N+XqYz+Zwk9p2SM3b9R/DczqI
	 RpsObJ/yqZYWFJHaFaQBatlzlk7tG2fjnvJI86vT/goebnKsAHLW22FZERSlWAIJ+B
	 UKREPGhjiRZNlFeKGWvJRgPgEUUChqZCnget6es4g80qbhRrTgROW5eCLFYL+Qc3lo
	 4si5XGoQBzsMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BD-4HQC3iv0w; Thu, 13 Apr 2023 19:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 438CA408A6;
	Thu, 13 Apr 2023 19:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 438CA408A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEC6D1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 19:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3C8A408A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 19:05:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3C8A408A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBQmtfmFgH5e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 19:05:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4AB3400F2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4AB3400F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 19:05:37 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-eYBAeXiRPbqHcsu212fTgQ-1; Thu, 13 Apr 2023 15:05:35 -0400
X-MC-Unique: eYBAeXiRPbqHcsu212fTgQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 j28-20020a508a9c000000b00504ee48e421so3656996edj.22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 12:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681412734; x=1684004734;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UCBVyFd5BBmA+6Xv/IIgNhhtsz0B8DYXHt8AQVnFyEY=;
 b=OXCzxmyfVG7KtK1C0LMHRSmNdmV5DbyxHK3assycNU3Vr9P0xAVord8amFOp+DW7aI
 XdPsHytchWBVfF9KXTJpE1uHQxXxO229NnpD5gPvSl+uRP7w5F2pExmJjk+1n52xCwSA
 tkcBJNBZpVByrAFLyiJdq8O++8R4w5Fg+aMUpUiARE90f2vfCloaAxrzQ5kSKEbpu3tU
 S9RfngEG8dn5eIyf1lj+Y1Xh23Vm4aL8E11ispdHMFQnb2KnMLtqXXF6kKpkXWWV9LTl
 mBg0E7halrKr/MgcPcvi2/vJubT8YZgHGYWTw5mQC9cp0/ke5K0dbdaEL0nlD9yJ9gou
 ecrQ==
X-Gm-Message-State: AAQBX9ckUGal1B9cgqrYQ6UqvV/KOR+wikt6oQ5uytEQkKG5De5w7eJo
 DlOn5ycNQ8GP3M6Wux4gdDgy5T0McHz+7iEuVXQXm12m/rlRZJMFFsLdKMFJ8bNxTZdtS/5PIK9
 6PcXqdhpCKOv0M+0Fa5WtOgXtidvsAQ==
X-Received: by 2002:a17:907:7783:b0:92b:f118:ef32 with SMTP id
 ky3-20020a170907778300b0092bf118ef32mr3344078ejc.48.1681412734064; 
 Thu, 13 Apr 2023 12:05:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350b0NoeyqPTndxzzpsGhufBoItrSucdDKVSwz86SIeJfM9Bqvf0Y1jAxX92P52cAl7P9mNqd0A==
X-Received: by 2002:a17:907:7783:b0:92b:f118:ef32 with SMTP id
 ky3-20020a170907778300b0092bf118ef32mr3344059ejc.48.1681412733732; 
 Thu, 13 Apr 2023 12:05:33 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 gz1-20020a170907a04100b0094a6ba1f5ccsm1368474ejc.22.2023.04.13.12.05.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Apr 2023 12:05:33 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e7d81a89-da60-1da6-7966-7739ad545834@redhat.com>
Date: Thu, 13 Apr 2023 21:05:32 +0200
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
 Stanislav Fomichev <sdf@google.com>
References: <20230413151222.1864307-1-yoong.siang.song@intel.com>
In-Reply-To: <20230413151222.1864307-1-yoong.siang.song@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681412736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UCBVyFd5BBmA+6Xv/IIgNhhtsz0B8DYXHt8AQVnFyEY=;
 b=ADZ53R42VBZxh8v38I9Xot5FvqsXejzzFSD5/8ggefm2wP9Pw+WhRxmNjrmerEPI7wJ6zi
 5D7weuwiYNx5XmDxC1mAjQNmOLPxpKMHkCzW8kftROq95hDsSVrjsBuoLVCyvMMW/Lvgi2
 4jn3epuqvvN83ARin0EZJl5XVSK0Mns=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ADZ53R42
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: read before write to
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


On 13/04/2023 17.12, Song Yoong Siang wrote:
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
[...]
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
> index 7a992befca24..b95007d51d13 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.h
> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
> @@ -87,8 +87,11 @@ union igc_adv_rx_desc {
>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
>   
>   /* SRRCTL bit definitions */
> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
> +#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
>   #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
>   
>   #endif /* _IGC_BASE_H */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 25fc6c65209b..de7b21c2ccd6 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>   	else
>   		buf_size = IGC_RXBUFFER_2048;
>   
> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDRSIZE_MASK |
> +		  IGC_SRRCTL_DESCTYPE_MASK);
                   ^^
Please fix indention, moving IGC_SRRCTL_DESCTYPE_MASK such that it
aligns with IGC_SRRCTL_BSIZEPKT_MASK.  This make is easier for the eye
to spot that it is part of the negation (~).

> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
