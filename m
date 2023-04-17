Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D6C6E4C58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 17:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A24B41774;
	Mon, 17 Apr 2023 15:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A24B41774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681743870;
	bh=Ycu5esfMOarExDkesqVxJfImRYCwCN24PGaifOCpzHA=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7owpmXU5oTEPNfQKgWAOs61j31bSM9oEwCcKXfdlMmP2Y0C0p0gI5UsUWacS7pPzQ
	 NLBPlDQutlUWFgE5psyAuOQ4024YCls5l8+/F3OhhSyhJUIgEEhz/CENIH2jcMxhLs
	 MMNLYIfK+7P+zu3rdpyOx1nyXEQMK9sgeFlaDSnXqcQzwVYgAMnRKgr0k68SyfdATU
	 XhccTCkc2chYbAsq9xfZzEf8dRyf/LvDf7s77UqYMPMZz98LrfR7ks42J61VW51mvl
	 gn9Y0e/7e/+/YTFtWPEt+p1aGaYwMQqlBXKsCQVFqGfF8aNJGUS/Mi1Trtr/3ow12E
	 jPjPO8LHELppw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M39FotaM9mWm; Mon, 17 Apr 2023 15:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA37C4177A;
	Mon, 17 Apr 2023 15:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA37C4177A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 107221BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA31841769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA31841769
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YkINfs2QZV4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 15:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FD4F41762
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FD4F41762
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:04:22 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-EGAJ3ANeNIG0TNyRhcLAeA-1; Mon, 17 Apr 2023 11:04:20 -0400
X-MC-Unique: EGAJ3ANeNIG0TNyRhcLAeA-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-506a455ee4cso531144a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 08:04:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681743859; x=1684335859;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NJBNuSsSRPzwbnWzbfANH/a4n2dZHDD98aiqXtusCOY=;
 b=knIGhOFzOrf5PYbJ6mHawglEDBtrzo7YtJ9jYfVxvnvdj9K7WDdiZmwdnlr3GFS8y/
 6MEDZIDK5VDOR1bKNykk5Skib1M4erdGutUS7c6t8Is/4im4DKPrUJMM7UzJz40t8/Zd
 l2i8tOfhrpKPwHOyAyrYNjg12AuHnC+Zth6Z/ub9lsu25FkV40+VZPsrLVSZMZQpKtKk
 6PyB55y+qemxow86zkEz9kMYUBSV6G1SxvpQeDD67xmVIjlemSVfPFMXljhKlgSB/OFT
 zXuoEH8T787RNRItapwjsfREKdamsvRUGCO9T66G/tvdMiNQhXSN8gEp4KF6CyuG9oAo
 9LLQ==
X-Gm-Message-State: AAQBX9c6PxVcEq+eB5ngLK3jKB0Nz1NrBhQnb7WYKEb+YSSuO18DQ+CL
 tDmgJpXpq7NqjWB3kaeBu0TSxsRsITGf7Qa+wESTGSwbU7L96WhdwwZlCAndfEZBAGTGMJAK/1r
 QR+Wp/BlOCwfdDc4usx+P1ZwspsIC5g==
X-Received: by 2002:a05:6402:64b:b0:504:a360:e611 with SMTP id
 u11-20020a056402064b00b00504a360e611mr13762495edx.13.1681743858773; 
 Mon, 17 Apr 2023 08:04:18 -0700 (PDT)
X-Google-Smtp-Source: AKy350aGCwFvxgC+HLPcIfKk2U/Fm7fSlmjb1ietdTgyJ2DJ6npnOC/Z7W4lbiaEQlJOO6d4h9uKew==
X-Received: by 2002:a05:6402:64b:b0:504:a360:e611 with SMTP id
 u11-20020a056402064b00b00504a360e611mr13762480edx.13.1681743858466; 
 Mon, 17 Apr 2023 08:04:18 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 c21-20020aa7df15000000b00505060e4280sm5944035edy.94.2023.04.17.08.04.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Apr 2023 08:04:18 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <0fa94fe1-c448-084f-3a3d-ab52e701c91c@redhat.com>
Date: Mon, 17 Apr 2023 17:04:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
In-Reply-To: <168174344813.593471.4026230439937368990.stgit@firesoul>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681743861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NJBNuSsSRPzwbnWzbfANH/a4n2dZHDD98aiqXtusCOY=;
 b=Hcr1a8qkYMNQItRsd9Nm1GFGbqWjeCxUdNWPdylliXH0oPuHcOd6MKfVWcZ2VoksL8Fpom
 E3Cnx03Ki/6jEZCjLMWfC15YOo9/0LGO/ZPBid7g1SwQMWXekHCeHgeLfkREU/PjsfOg1a
 6SknMX+E9HeJIOEEg2CQ4D5dlhp8DnA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Hcr1a8qk
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 5/5] selftests/bpf:
 xdp_hw_metadata track more timestamps
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
 edumazet@google.com, yoong.siang.song@intel.com, brouer@redhat.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 17/04/2023 16.57, Jesper Dangaard Brouer wrote:
> To correlate the hardware RX timestamp with something, add tracking of
> two software timestamps both clock source CLOCK_TAI (see description in
> man clock_gettime(2)).
> 
> XDP metadata is extended with xdp_timestamp for capturing when XDP
> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
> could not find a BPF helper for getting CLOCK_REALTIME, which would have
> been preferred. In userspace when AF_XDP sees the packet another
> software timestamp is recorded via clock_gettime() also clock source
> CLOCK_TAI.
> 
> Example output shortly after loading igc driver:
> 
>    poll: 1 (0) skip=1 fail=0 redir=2
>    xsk_ring_cons__peek: 1
>    0x12557a8: rx_desc[1]->addr=100000000009000 addr=9100 comp_addr=9000
>    rx_hash: 0x82A96531 with RSS type:0x1
>    rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
>    XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta sec:37.0001 (37000059.407 usec)
>    AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta sec:0.0001 (92.999 usec)
>    0x12557a8: complete idx=9 addr=9000
> 

For QA verification testing, I want to mention that this fix[0] were
applied, in-order to get "rx_timestamp" working on igc:

  [0] 
https://lore.kernel.org/all/20230414154902.2950535-1-yoong.siang.song@intel.com/


> The first observation is that the 37 sec difference between RX HW vs XDP
> timestamps, which indicate hardware is likely clock source
> CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
> with a 37 sec offset.
> 
> The 93 usec (microsec) difference between XDP vs AF_XDP userspace is the
> userspace wakeup time. On this hardware it was caused by CPU idle sleep
> states, which can be reduced by tuning /dev/cpu_dma_latency.
> 
> View current requested/allowed latency bound via:
>    hexdump --format '"%d\n"' /dev/cpu_dma_latency
> 
> More explanation of the output and how this can be used to identify
> clock drift for the HW clock can be seen here[1]:
> 
> [1] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
