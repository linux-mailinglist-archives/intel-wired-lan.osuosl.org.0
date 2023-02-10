Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 898A569220B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 16:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC4B813BA;
	Fri, 10 Feb 2023 15:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DC4B813BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676042635;
	bh=LrxbF1Ncq7NmReKlRzT1Vjn38Hm1UHhLbPbsb4f8sjE=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sJEIGwgthN1Rltz1YqaVPykuXYgqQFrlAzapBkOC5+aMOhrr4GW71MjSIUVHPZLVc
	 28vinu1ub64RPH4gn7Bgv0xcqtrA90yFkXWdqdhn9oPxzJaNZUaLumAfBYNzlOV2G7
	 jy+uzigQPwbxkDSS4NdCUzDTFjvrcwvYNWpLywUHYl4szDdiPbpYkPHqdf3hdLX8yJ
	 T2WBRhKtJafwsMyBcYtZxaGWdDsxK3vcKGxHslBPfgVMu+tglml91YjCcbKxU9o0kx
	 P09YXqM6Uz78I9MHnfIKp8BUDi3JpjqQMga3GZML2mzBvkA1qioFlRJkdlkveMpJWB
	 cdFhRFDX7dGiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pUXkfwBeGbYx; Fri, 10 Feb 2023 15:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2BCB81383;
	Fri, 10 Feb 2023 15:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2BCB81383
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD021BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D2B781322
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:23:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D2B781322
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmyt52qvYSeZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 15:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49B41812FD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 49B41812FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:23:48 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-187-rOLGpeu-N2-jB9EUo6u_kw-1; Fri, 10 Feb 2023 10:23:46 -0500
X-MC-Unique: rOLGpeu-N2-jB9EUo6u_kw-1
Received: by mail-ed1-f69.google.com with SMTP id
 ev18-20020a056402541200b004a621e993a8so3755930edb.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 07:23:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RWOkmCoae5bj7doNl9U80aK5H1Z/48L9J7BCWykdr7Y=;
 b=uuXkKca0ftamYxjxLRngYF4B3hYJAtv6Yz0f7+tOd0+6X4CqCvcOAHzGn5alVI1bVF
 w/YCpEav7IRx2GQTnMJ0zrVjhkvyIzuGJNvYmxV0uYLLyvkGFm+fox/36hDEAXC4PAZf
 EqLsUxkMcaw4L35gG3NOUfwf+lSkMOuTzy+yxwTwjKP+xvgUVR1Lw2sAc4AKwSZ9rT2o
 ziHx3dFWkekRuSkenrcJGEmElLpmdql4l0qE79tSGVNRIOuYnYSHIu9sAny0He6pfUIw
 VcidPIVhNZ99XDwvQeUVKaeLYJH46CjJYkRnHQeXaCMVBSuiUSX7ZkG9UE7XAxlBl2Vj
 5cQw==
X-Gm-Message-State: AO0yUKXY2uTq8lXbLV+wF7y+Qpyb422r/WvpQXy++KinsqcxD5fvj5p6
 wPs6hLjZ+AIBi34J5DL/VOPlwD6J3pztirZVFqaTob6gtAXnSmJfHo/0moiwGuSPRn1RKEEsl9y
 vBzEGpiDq+Zd4Ua0KZpm8WuzwAqd2vg==
X-Received: by 2002:a17:907:9c04:b0:8ae:27d1:511a with SMTP id
 ld4-20020a1709079c0400b008ae27d1511amr11276169ejc.61.1676042625100; 
 Fri, 10 Feb 2023 07:23:45 -0800 (PST)
X-Google-Smtp-Source: AK7set/Dv0ROzBQbObyzo0Y2IdUhDynWiuzWOvrXTZsWu/DA//Xm5WEuTrVPmZF2W0ITkYnPV8JMOg==
X-Received: by 2002:a17:907:9c04:b0:8ae:27d1:511a with SMTP id
 ld4-20020a1709079c0400b008ae27d1511amr11276151ejc.61.1676042624873; 
 Fri, 10 Feb 2023 07:23:44 -0800 (PST)
Received: from [192.168.42.100] (nat-cgn9-185-107-15-52.static.kviknet.net.
 [185.107.15.52]) by smtp.gmail.com with ESMTPSA id
 op5-20020a170906bce500b0088e682e3a4csm2485103ejb.185.2023.02.10.07.23.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Feb 2023 07:23:44 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <c40de89d-2977-5c8d-e049-006df2431f47@redhat.com>
Date: Fri, 10 Feb 2023 16:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: bpf@vger.kernel.org
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
In-Reply-To: <167604167956.1726972.7266620647404438534.stgit@firesoul>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676042627;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RWOkmCoae5bj7doNl9U80aK5H1Z/48L9J7BCWykdr7Y=;
 b=BV/KNEPZzdn/yt3eLLHRabCt/LZ8NLTGf4cs/L2865f7LbapqCDMmkYg5mJvNocBrb2uEP
 tflyvJQvBs6hujJYGJXJtyoZ6rzF3PFmhJZcvk06mUXjtvkz/Zsg7c3Bedxs8+mUvkQDsx
 6nWy2yb552Do66SSIHrc0wEqv8DpANQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BV/KNEPZ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix RX
 hash usage by netstack
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
 netdev@vger.kernel.org, ast@kernel.org, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, brouer@redhat.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 10/02/2023 16.07, Jesper Dangaard Brouer wrote:
> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
> hardware wasn't configured to provide RSS hash, thus it made sense to not
> enable net_device NETIF_F_RXHASH feature bit.
> 
> The NIC hardware was configured to enable RSS hash info in v5.2 via commit
> 2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
> forgot to set the NETIF_F_RXHASH feature bit.
>

Sending this fix against bpf-next, as I found this issue while playing
with implementing XDP-hints kfunc for xmo_rx_hash. I will hopefully send
kfunc patches next week, on top of this.IMHO this fix isn't very 
critical and I hope it can simply go though the
bpf-next tree as it would ease followup kfunc patches.


> The original implementation of igc_rx_hash() didn't extract the associated
> pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
> this patch are about extracting the RSS Type from the hardware and mapping
> this to enum pkt_hash_types. This were based on Foxville i225 software user
> manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
> 
> For UDP it's worth noting that RSS (type) hashing have been disabled both for
> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
> because hardware RSS doesn't handle fragmented pkts well when enabled (can
> cause out-of-order). This result in PKT_HASH_TYPE_L3 for UDP packets, and
> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
> the effect that netstack will do a software based hash calc calling into
> flow_dissect, but only when code calls skb_get_hash(), which doesn't
> necessary happen for local delivery.
>


Intel QA tester wanting to verify this patch can use the small bpftrace
tool I wrote and placed here:

 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/monitor_skb_hash_on_dev.bt

Failure scenarios:

$ sudo ./monitor_skb_hash_on_dev.bt igc1
Attaching 2 probes...
Monitor net_device: igc1
Hit Ctrl-C to end.
IFNAME           HASH      Hash-type:L4    Software-hash
igc1             00000000  0               0
igc1             00000000  0               0
igc1             00000000  0               0
^C


Example output with patch:

$ sudo ./monitor_skb_hash_on_dev.bt igc1
Attaching 2 probes...
Monitor net_device: igc1
Hit Ctrl-C to end.
IFNAME           HASH      Hash-type:L4    Software-hash
igc1             FEF98EFE  0               0
igc1             00000000  0               0
igc1             00000000  0               0
igc1             FEF98EFE  0               0
igc1             FEF98EFE  0               0
igc1             FEF98EFE  0               0
igc1             310AF9EA  1               0
igc1             A229FA51  1               0

The repeating hash FEF98EFE is UDP packets that as desc note doesn't
have Hash-type:L4.  The UDP has is repeating as port numbers aren't part
of the hash, and I was sending to same IP. The hash values with L4=1
were TCP packets.

Hope this eases QA work.

> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |   52 +++++++++++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_main.c |   35 +++++++++++++++++---
>   2 files changed, 83 insertions(+), 4 deletions(-)

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
