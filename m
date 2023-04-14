Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB236E1FBD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 11:50:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDB3E60ABD;
	Fri, 14 Apr 2023 09:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDB3E60ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681465835;
	bh=4wTBxIJu4Ou3E3f+VCJZBSnVI8CzucPAVvogYc5idRc=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y6tU1J2/GLvleiPzzfhllIn0ljnURX/z+ogUuUjSp96d1+uQIqPI3RTsC6d21Fxty
	 d4Hw2hgxKvrVT+xu7HjAfEAG18pba1wsEMIk7ewB3fDOPMT+KMZIOdPInootlpoyqQ
	 XV4ANDsAweK+NaggXMoeAIk3Zom1r/0wB6y+qE5AsUD+1vkR4Kr33/p/FkRuMmArEI
	 jYqqX1Zgm7a4mKc5+AZFPh4hr++YpSFURQRmPCCybfqZNOOLTMAv93H55rjd4iOlyq
	 bM8FVumX8vy9KwoAspndEUaCrLGBbrSHCBgmotWMKasRYnCrjKQQT2L2p/DFrD4tV/
	 nUbtGQhz9VM1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PMAWXC1fjzzW; Fri, 14 Apr 2023 09:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC5446FED8;
	Fri, 14 Apr 2023 09:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC5446FED8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E05171BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 09:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C53D142AC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 09:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C53D142AC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eboJ5AhGYljc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 09:50:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE7E42AC0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBE7E42AC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 09:50:28 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-EyJB484jPBS4jPS2hMuWxA-1; Fri, 14 Apr 2023 05:50:24 -0400
X-MC-Unique: EyJB484jPBS4jPS2hMuWxA-1
Received: by mail-ej1-f70.google.com with SMTP id
 vc12-20020a170907d08c00b0094e793d95efso2752148ejc.15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 02:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681465823; x=1684057823;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kD03/VZMnuU+AkWoElhnvOWf3hPE4VUEKVtpsqSBK8c=;
 b=BDT1VDkuO8ZJ2LhqV7vKbYLRXLJB8YnoIJ7TMmmK1CgpDdPy/XFoyJXJ9b3BAH8dyU
 ow/PdeMv0TEiyAfoN+y9GfxTGz26fSzvI1Ef01Jyel8FLq6KlBMTKMzwgJbST2d1zuE2
 7GScpSex2TFZVb7Uza8b9FVjVKAKKGjno8KOprEwd2fH5IWICKmlsdbQcXbUZlLhH1pT
 x9BI1jITnQZv8DHil/VIvUQLSWajKnSa27ekrH3mq0itnBxBh1nTzZ4ugSAL/lUKy/UU
 TGOTpDsbxoURlUAyTjzqcTHKZCsZm6Q9eYWQPydgRl6ABtmyObpiVl6/wE9cbI/A4EsD
 LZkA==
X-Gm-Message-State: AAQBX9fCBKls/BBNXBB9Y5XFXzTluFiaTSjLhNjyAYDQVv7tBGH/6ynV
 E4EwtRzrFP/GHA4SoWrnpJomKYoDB9oWrNGSCj7r7Sn+/uy0CflKmC5+mG20PtLQno9NozYfJXZ
 bbBsZXYLvfbSM0EAahIEJGGxFmq3HXQ==
X-Received: by 2002:a17:907:9808:b0:94e:7ddf:3ea4 with SMTP id
 ji8-20020a170907980800b0094e7ddf3ea4mr4486408ejc.24.1681465823383; 
 Fri, 14 Apr 2023 02:50:23 -0700 (PDT)
X-Google-Smtp-Source: AKy350a6+Z5LefT4FRvBDLayHSHXZA3qQHN2R00EVjv3yDfVy5sfO/pP+qKrWWJLMzDXhuVJ7vw4Pw==
X-Received: by 2002:a17:907:9808:b0:94e:7ddf:3ea4 with SMTP id
 ji8-20020a170907980800b0094e7ddf3ea4mr4486375ejc.24.1681465823000; 
 Fri, 14 Apr 2023 02:50:23 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 y20-20020a170906559400b0094a7e4dfed8sm2189942ejp.47.2023.04.14.02.50.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Apr 2023 02:50:22 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
Date: Fri, 14 Apr 2023 11:50:21 +0200
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
 Stanislav Fomichev <sdf@google.com>, Jacob Keller <jacob.e.keller@intel.com>
References: <20230414020915.1869456-1-yoong.siang.song@intel.com>
In-Reply-To: <20230414020915.1869456-1-yoong.siang.song@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681465827;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kD03/VZMnuU+AkWoElhnvOWf3hPE4VUEKVtpsqSBK8c=;
 b=fOb2bO7E0zKhGXATrCotwEis+C/iA9HFg7QMqSystt+RlteCsDNl9qXPzAexh2ltpiOyfp
 06+NFx0NwoYlqArdqRx8mEL0g5b505K1lu6DXKv6hcabDD1NoMSWNOf4wgbKMb+EglKU5i
 KL/SUG/CXDTsgoxwvUzIxfxPCQ7te9k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fOb2bO7E
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] igc: read before write to
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


On 14/04/2023 04.09, Song Yoong Siang wrote:
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
> ---

Reviewed-by: Jesper Dangaard Brouer <brouer@redhat.com>

> v2 changelog:
>   - Fix indention
> ---
>   drivers/net/ethernet/intel/igc/igc_base.h | 7 +++++--
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 ++++-
>   2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
> index 7a992befca24..b95007d51d13 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.h
> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
> @@ -87,8 +87,11 @@ union igc_adv_rx_desc {
>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
>   
>   /* SRRCTL bit definitions */

I have checked Foxville manual for SRRCTL (Split and Replication Receive
Control) register and below GENMASKs looks correct.

> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */

Shift due to 1 KB resolution of BSIZEPKT (manual field BSIZEPACKET)

> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */

This shift is suspicious, but as you inherited it I guess it works.
I did the math, and it happens to work, knowing (from manual) value is
in 64 bytes resolution.

> +#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
>   #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000

Given you have started using GENMASK(), then I would have updated 
IGC_SRRCTL_DESCTYPE_ADV_ONEBUF to be expressed like:

  #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF 
FIELD_PREP(IGC_SRRCTL_DESCTYPE_MASK, 0x1)

Making it easier to see code is selecting:
  001b = Advanced descriptor one buffer.

And not (as I first though):
  010b = Advanced descriptor header splitting.


>   #endif /* _IGC_BASE_H */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 25fc6c65209b..88fac08d8a14 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>   	else
>   		buf_size = IGC_RXBUFFER_2048;
>   
> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDRSIZE_MASK |
> +		    IGC_SRRCTL_DESCTYPE_MASK);
> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
