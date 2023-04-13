Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00296E1455
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 20:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C3B4429D1;
	Thu, 13 Apr 2023 18:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C3B4429D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681411350;
	bh=s1SIIxToNQ+27y3S662DfopQ2zli0Bi+69ucBVB0awo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tjXU8rvsn7W3kJuNNu85ewGT0/85yT/cONhPabsyWXLATdtU1zScSM8xLGAOZtD/g
	 jgwK6cQunkbxv4du4rLcmOcnZCaQ3tYQIqahk/KeOWcQTbVzjmohuTfssgdAeRzv6D
	 tUBh9h3L5TSBGxTweIQs/OUkknJ93cLF/lvGnfjkjOqBkSgUIWry1secUM084cVo5Z
	 S3pUEaCa94S9JyWYqKdVYyiPWcKVgt0DLWgjpAtuoUg4vmb2OdLob99auJ8tdGwFck
	 TEgxRVkis1+JmfzDE0N1yNe3PKzL+Vb/GeKuMqM+3UPrBl1EIDgx/lMJ2VAT/zkLj9
	 MMdEH+H2qBcnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DK3IWjTj9CjU; Thu, 13 Apr 2023 18:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54D4940467;
	Thu, 13 Apr 2023 18:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54D4940467
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7F71BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54E9B8145C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54E9B8145C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5v5l1XcoQk_q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 18:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF2A481447
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF2A481447
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:42:22 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-379-uhiwKHhmPUe3FWZlQQKbEQ-1; Thu, 13 Apr 2023 14:42:20 -0400
X-MC-Unique: uhiwKHhmPUe3FWZlQQKbEQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-5048993669bso2123130a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 11:42:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681411338; x=1684003338;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jFCzXhj5hVtVaLfINs11NiVB1lGjSKJOD4vnQMSSjnY=;
 b=hSS9E9Vo2oGY1KFBxy5bFfbxCwU5wNVMdqbJiVJGnseBUykQJttVS4kKlddvsyoR4i
 vmNTKJQqdkrHMkWZ1m6K+zc7RZEOcOWVt6wBDOgqzCc3+ubSyqHf8YxXymaRHnN3ZaQL
 6LG2enJKbNq3BQeUNZdfpfDqc6aqLneIipZcmPlJKD2ECp1A76ZLA16IRi4Viih8lvGn
 8Wktx6mKnQZdbn1GNj8FFIthQXY873X1Re0q54go4kHj9W5oIyWPG0jjL2H492dDw3Gf
 h0x3hsfAuR5rHDPPF7em6tSNerPb5WHAXEXGKcIaM8oh95uzEyjs2Pvbfmj7w6+9M+Rf
 n27Q==
X-Gm-Message-State: AAQBX9cuA36RH4H+EKA9UF3/dncpyZKoj08OByCaodpb7I6rA+dxvNGa
 01xXgymhpRxe+7z+1btmz8ODqOPap5jpFva+YM3rNJ44aPt43HVe3aywAR5jvjyiNAKLx1niJDK
 7YmWj27Mj3oMxmX/eEr2tSgSpYktorg==
X-Received: by 2002:aa7:ce06:0:b0:501:d917:d52 with SMTP id
 d6-20020aa7ce06000000b00501d9170d52mr3760448edv.8.1681411338590; 
 Thu, 13 Apr 2023 11:42:18 -0700 (PDT)
X-Google-Smtp-Source: AKy350YYifWUgndL9IzmM9sB+EmC6luF5yXBi1Z7Pu0T2Ye4b4wgDVquW2ymvsXbk5mm7Z5uz0Se4A==
X-Received: by 2002:aa7:ce06:0:b0:501:d917:d52 with SMTP id
 d6-20020aa7ce06000000b00501d9170d52mr3760426edv.8.1681411338239; 
 Thu, 13 Apr 2023 11:42:18 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 d12-20020a50fe8c000000b00504c33675cesm1178071edt.35.2023.04.13.11.42.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Apr 2023 11:42:17 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <07a88087-bee8-e549-c069-63d52268aef1@redhat.com>
Date: Thu, 13 Apr 2023 20:42:16 +0200
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
 s=mimecast20190719; t=1681411341;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jFCzXhj5hVtVaLfINs11NiVB1lGjSKJOD4vnQMSSjnY=;
 b=AX2iIZQXSOPAR+x0qrZFWut/mxIyWKFG3OFwozxG1MBT71D29wEDt9X8L5RfoUs3zU/W0Z
 71YB2edpUONnyay4jskZ9WcsyT+ac1wprlCmVwvQZw/xQ7aC0yS/LqmHenq1zZR4l/K24V
 2lvEoLqDpxF/jPuQJZgWebgzJrahTtk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AX2iIZQX
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

Ah, I believe I have hit this bug with my igc patches.
Thanks for fixing.

> Thus, this commit read the register value before write to SRRCTL
> register. This commit is tested by using xdp_hw_metadata bpf selftest
> tool. The tool enables Rx hardware timestamp and then attach XDP program
> to igc driver. It will display hardware timestamp of UDP packet with
> port number 9092. Below are detail of test steps and results.
>
> Command on DUT:
>    sudo ./xdp_hw_metadata <interface name>
>

Why port 9092 ?
The ./xdp_hw_metadata prog will redirect port 9091


> Command on Link Partner:
>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
> 

Again port 9092 ?

> Result before this patch:
>    skb hwtstamp is not found!
> 
> Result after this patch:
>    found skb hwtstamp = 1677762212.590696226

I usually use this cmd to see if number is sane:

$ date -d @1677762212
2023-03-02T14:03:32 CET


> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Cc: <stable@vger.kernel.org> # 5.14+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
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
> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
