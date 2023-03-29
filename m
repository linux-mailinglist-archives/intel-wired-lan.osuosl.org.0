Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C556CD92A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 14:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11559409A3;
	Wed, 29 Mar 2023 12:13:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11559409A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680092001;
	bh=VMTu6SmFlYGqOR5vPswdbT/21NEjfYncaPtf8PuZPWg=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D0Nq6oGqY7BTzMGLh+70A+bNLslRvfP6huUD0iZJERkwg0x/5u1bsvCXO6wk4OJ9o
	 8MnjuR8DpEyz8Iql78wce81dkJinxuo+s2jSZ6BkfugLL/lifbPfTCIEHwNLnjqXhI
	 eDRapI25NdM4uGcnx9ycE4nrCnEP71oJGS1EDVuaT+yf/UTsMmyYkvABcG/gGotkpQ
	 Z7JMnLfnfKq3X2Dst7qVoZ+sXYU06Y4l8ijUrLu3037xgowj111K8X4dMa/o4AxAbe
	 PtP715YSHSNnymqfx8+hgi0hZl8orsu3K5cjH/4/Nsk4MDiv9zsv1faTeV2EjpZaTv
	 FL/dOkMG86exg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4yiW2xOlHED; Wed, 29 Mar 2023 12:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FEC9408CA;
	Wed, 29 Mar 2023 12:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FEC9408CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A08951BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 12:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7509C40139
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 12:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7509C40139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cprp_lpkYfHK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 12:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50AD84012A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50AD84012A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 12:13:13 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-8mDY4TcNO3u81WNquBOGrg-1; Wed, 29 Mar 2023 08:13:10 -0400
X-MC-Unique: 8mDY4TcNO3u81WNquBOGrg-1
Received: by mail-ed1-f69.google.com with SMTP id
 j21-20020a508a95000000b004fd82403c91so21923171edj.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 05:13:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680091989;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lfqSumULYaFAsKVypJ7j6ZB0kW2MYs15+sCfzueyCec=;
 b=UTKaytu0EyMbDruyeL5mxwYs7rdu5q8+bozVEYYTCILVnT2Bq+Sc+as8oC64vWkvMH
 jUDN83hhtlY4oYKgojWFAt1F9WYOe1vGsLp1NOP48OjKaVaL4Pa3SbAgfIOCrmpy+Fmk
 ZT1VFU4xiNaQiCnIcMh18rIS1PH10gt+lXOX3NptpgeK24r07JK9SEG+9T+UH0oCYzTB
 ioLvlmpTTNRrpZo0Lrnj4bx/UmPJH/nInNsLiLtzGr4BQUIPGTS99UqkkDYgL1wY59VW
 pFavBr6TlUB4G6eKWEXHQZe86DDHK6dxMyK8A/e+DTQ+DZFGckrv8OfsYrPxOZgroVsa
 ETug==
X-Gm-Message-State: AAQBX9d6N8joo285mNQWlDIq2kQ15kL0y+mJPehdeNsJCSQfjUsYP1QG
 3T5G3io4y6teUxAlfB0AjUhMj6THcS//q9Hs6W3OWpwtk9lcZux7fThJE8rDqI5Ql2LMPVu/4ID
 BGn3LkxwaaerILYJ8qWR8PDFhRQHdBA==
X-Received: by 2002:aa7:d9c7:0:b0:4fc:6a39:d2f2 with SMTP id
 v7-20020aa7d9c7000000b004fc6a39d2f2mr18928026eds.18.1680091989737; 
 Wed, 29 Mar 2023 05:13:09 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZXEF/duXvlZ3J7zw4ob7Kfy/Cj7JBCPgsJbNT/6kta1V2jSXhTtIA1gCxM40SUZot2im2Vdg==
X-Received: by 2002:aa7:d9c7:0:b0:4fc:6a39:d2f2 with SMTP id
 v7-20020aa7d9c7000000b004fc6a39d2f2mr18928010eds.18.1680091989451; 
 Wed, 29 Mar 2023 05:13:09 -0700 (PDT)
Received: from [192.168.42.100] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 i23-20020a508717000000b004af6c5f1805sm16991525edb.52.2023.03.29.05.13.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Mar 2023 05:13:08 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <00b2e31a-4ec6-12fa-a428-38282cafbc58@redhat.com>
Date: Wed, 29 Mar 2023 14:13:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Edward Cree <ecree.xilinx@gmail.com>, bpf@vger.kernel.org
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
 <168003455815.3027256.7575362149566382055.stgit@firesoul>
 <39543d22-4e71-9696-17f8-5ae22728aa25@gmail.com>
In-Reply-To: <39543d22-4e71-9696-17f8-5ae22728aa25@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680091992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lfqSumULYaFAsKVypJ7j6ZB0kW2MYs15+sCfzueyCec=;
 b=cDrUyUPk5QJMnEcGUO4r0xdEtXU8lM9gFck1ywa52FbqRKukLGsw9F15Pe3b/NxaclBk1w
 gE1yVV3sDZvjFPOK2UkjbcX4FZgy4KV34D5PSheG0rP3kH2Tf2c8oCxol7yx8YKHKWz0ct
 YNK9es59dWC7Lj/Pny4tQ+NT+oF4FIs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cDrUyUPk
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf RFC 1/4] xdp: rss
 hash types representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, brouer@redhat.com, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 29/03/2023 10.10, Edward Cree wrote:
> On 28/03/2023 21:15, Jesper Dangaard Brouer wrote:
>> Hardware RSS types are differently encoded for each hardware NIC. Most
>> hardware represent RSS hash type as a number. Determining L3 vs L4 often
>> requires a mapping table as there often isn't a pattern or sorting
>> according to ISO layer.
>>
>> The patch introduce a XDP RSS hash type (xdp_rss_hash_type) that can both
>> be seen as a number that is ordered according by ISO layer, and can be bit
>> masked to separate IPv4 and IPv6 types for L4 protocols. Room is available
>> for extending later while keeping these properties. This maps and unifies
>> difference to hardware specific hashes.
> 
> Would it be better to make use of the ETHTOOL_GRXFH defines (stuff
>   like UDP_V6_FLOW, RXH_L4_B_0_1 etc.)?  Seems like that could allow
>   for some code reuse in drivers.

Thanks for the point to ethtool defines.
I can see that these are used when configuring the hardware RSS hash the
NIC should calculate.

From: include/uapi/linux/ethtool.h
  /* L3-L4 network traffic flow hash options */
  #define	RXH_L2DA	(1 << 1)
  #define	RXH_VLAN	(1 << 2)
  #define	RXH_L3_PROTO	(1 << 3)
  #define	RXH_IP_SRC	(1 << 4)
  #define	RXH_IP_DST	(1 << 5)
  #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
  #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
  #define	RXH_DISCARD	(1 << 31)

I notice that I forgot about VLAN tag (RXH_VLAN) also can be part of the
hash calc in my proposed design.

It is interpreting to follow the possible ethool cmd->flow_type's:

  /* L2-L4 network traffic flow types */
  #define	TCP_V4_FLOW	0x01	/* hash or spec (tcp_ip4_spec) */
  #define	UDP_V4_FLOW	0x02	/* hash or spec (udp_ip4_spec) */
  #define	SCTP_V4_FLOW	0x03	/* hash or spec (sctp_ip4_spec) */
  #define	AH_ESP_V4_FLOW	0x04	/* hash only */
  #define	TCP_V6_FLOW	0x05	/* hash or spec (tcp_ip6_spec; nfc only) */
  #define	UDP_V6_FLOW	0x06	/* hash or spec (udp_ip6_spec; nfc only) */
  #define	SCTP_V6_FLOW	0x07	/* hash or spec (sctp_ip6_spec; nfc only) */
  #define	AH_ESP_V6_FLOW	0x08	/* hash only */
  #define	AH_V4_FLOW	0x09	/* hash or spec (ah_ip4_spec) */
  #define	ESP_V4_FLOW	0x0a	/* hash or spec (esp_ip4_spec) */
  #define	AH_V6_FLOW	0x0b	/* hash or spec (ah_ip6_spec; nfc only) */
  #define	ESP_V6_FLOW	0x0c	/* hash or spec (esp_ip6_spec; nfc only) */
  #define	IPV4_USER_FLOW	0x0d	/* spec only (usr_ip4_spec) */
  #define	IP_USER_FLOW	IPV4_USER_FLOW
  #define	IPV6_USER_FLOW	0x0e	/* spec only (usr_ip6_spec; nfc only) */
  #define	IPV4_FLOW	0x10	/* hash only */
  #define	IPV6_FLOW	0x11	/* hash only */
  #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
  #define	FLOW_EXT	0x80000000
  #define	FLOW_MAC_EXT	0x40000000
  /* Flag to enable RSS spreading of traffic matching rule (nfc only) */
  #define	FLOW_RSS	0x20000000

It is clear that we need to support TCP+UDP+SCTP.

I assume the IPSEC is AH (Authentication Header) and ESP ( Encapsulating 
Security Payload.  Thus, (like I found with mlx5) we also need IPSET and 
maybe a bit (or number) for each protocol AH or ESP.

Both ah_ip4_spec and esp_ip4_spec points to ethtool.h struct:

/**
  * struct ethtool_ah_espip4_spec - flow specification for IPsec/IPv4
  * @ip4src: Source host
  * @ip4dst: Destination host
  * @spi: Security parameters index
  * @tos: Type-of-service
  *
  * This can be used to specify an IPsec transport or tunnel over IPv4.
  */
  struct ethtool_ah_espip4_spec {
	__be32	ip4src;
	__be32	ip4dst;
	__be32	spi;
	__u8    tos;
  };

Which confirms that it is the SPI that is the extra part of the hash.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
