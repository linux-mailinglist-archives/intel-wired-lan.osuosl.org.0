Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02D370B7D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 10:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FC6A40C1C;
	Mon, 22 May 2023 08:37:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FC6A40C1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684744679;
	bh=Jv8dRjhRPElUsEwypvwu6BQ5FJQZx3DRUmycy0pRgxg=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ql7EVmB6oi197Vdfgy80aOEnIUw4Bys1SqXubGWhxaqJ2Il7PcV8UfI5EApP8O3MD
	 rr8HMZM+XILMXd2v3MZ/WBOy82mHZ2ny3Yt0QSQtmmpobYqGXBUieGUHGMPEk12LQP
	 5g2ms1Lr4mQiFuDfCV+0nHlMsO6aCnL3XAqA/RgtMS/yNwNROyK+FG9pjrA5LbzJsY
	 PsOoT09cv1RRrkT4Q6CKzyLNtrnCydykxCwg3+PwAqJ6aCvwQrw1CVpHjOkm+AxwIA
	 CjE0KgYH4AwGjCHPVTuGYHrdsCk3bnQ0Mxp0PfgXHvLk/AUqQNRTR9vDXkFYaGKv/a
	 09pWo8BayL8PA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zqp5uCrHwK1g; Mon, 22 May 2023 08:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDD6340BE1;
	Mon, 22 May 2023 08:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD6340BE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7761BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 08:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29ECD416B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 08:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29ECD416B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vt3PaPJvFjOa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 08:37:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01E8841625
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01E8841625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 08:37:40 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-piCE_xF5MzesH2LgErSa3Q-1; Mon, 22 May 2023 04:37:36 -0400
X-MC-Unique: piCE_xF5MzesH2LgErSa3Q-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-513f4c301e8so365603a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 01:37:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684744655; x=1687336655;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:subject:cc:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ULe3QhngoAVvRa/b5eatSIbIrZ5mn5rlreUM83YWtHk=;
 b=c/Tmd26xxx4vPzCevTFVIK72eHpiHBM1CIGLv/azMY3mATYim+ZydH064g2s4fyP8o
 FnP7qzkSMErpB5v4va2MAQKLys82/tr8DTIHer8j4zOQaowXPAm8tgeLH1SHNg8eyGA7
 hLclncEIbEG5eBM+zXHy9Kr8UcVR0qDe2NzCqDGIVH3/I+DULLd6B21IYnbq180/LnXM
 /+kl7R9de5jGxzIFmq4uI6YPlTbYi6VLocFSnfoTITq8twkM5Ss8PGF9RKSRmuofTnnF
 hcywswz/HjaPN4V3wKMFfi3I/XmNZhesUIgt760jbdWbL/O+WPC8U+07K/RpokCnM0qG
 qZOQ==
X-Gm-Message-State: AC+VfDzwlinoiEteZKVPazKGNM21bUh2hzB/+UEijOdDSUVyiIqgv57x
 XioeLSOdhlDC7Ex2dADn99fATJfS0mT9uAyTZNeQhZ0hdd0EaH6gMcBnPkBIT6iynQutHtVYu9K
 rWirC5VsFTayNvFf29RrG4K1HmzDMkQ==
X-Received: by 2002:aa7:d38c:0:b0:510:d6b3:a1ac with SMTP id
 x12-20020aa7d38c000000b00510d6b3a1acmr8453264edq.13.1684744655568; 
 Mon, 22 May 2023 01:37:35 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5f18cr/MklnXamgE+eoXJg4tSU/Wtu6RdKgmQLwi6TTslgyXXsqPjGkEeqNYYjBLm9MG4X9A==
X-Received: by 2002:aa7:d38c:0:b0:510:d6b3:a1ac with SMTP id
 x12-20020aa7d38c000000b00510d6b3a1acmr8453239edq.13.1684744655189; 
 Mon, 22 May 2023 01:37:35 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 d24-20020aa7d698000000b005067d089aafsm2716077edr.11.2023.05.22.01.37.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 May 2023 01:37:34 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <094f3178-2797-e297-64f8-aa0f7ef16b5f@redhat.com>
Date: Mon, 22 May 2023 10:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-10-larysa.zaremba@intel.com>
 <b0694577-e2b3-f6de-cf85-aed99fdf2496@redhat.com> <ZGJZU89AK/3mFZXW@lincoln>
In-Reply-To: <ZGJZU89AK/3mFZXW@lincoln>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684744659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ULe3QhngoAVvRa/b5eatSIbIrZ5mn5rlreUM83YWtHk=;
 b=OKva5tVS0Nasrlb0qcmb7tr/tIpsaYFqkATY08WjUCn67n2hgQVmh/Jvq+AancQ551/gON
 EDINYNHsqCaFjOtUZNA1Cmp1+qAxcVRHyTaVEIfaxCIsyVEIK7qxCrYQ4d4zvhz1d0VIeN
 JTXFizopj18M04Pa0SJN2eAsVE2Lusg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OKva5tVS
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 09/15] xdp: Add VLAN
 tag hint
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
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 15/05/2023 18.09, Larysa Zaremba wrote:
> On Mon, May 15, 2023 at 05:36:12PM +0200, Jesper Dangaard Brouer wrote:
>>
>>
>> On 12/05/2023 17.26, Larysa Zaremba wrote:
>>> Implement functionality that enables drivers to expose VLAN tag
>>> to XDP code.
>>>
>>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>>> ---
>> [...]
>>
>>> diff --git a/net/core/xdp.c b/net/core/xdp.c
>>> index 41e5ca8643ec..eff21501609f 100644
>>> --- a/net/core/xdp.c
>>> +++ b/net/core/xdp.c
>>> @@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
>>>    	return -EOPNOTSUPP;
>>>    }
>>
>> Remember below becomes part of main documentation on HW metadata hints:
>>   - https://kernel.org/doc/html/latest/networking/xdp-rx-metadata.html
>>
>> Hint compiling locally I use:
>>   make SPHINXDIRS="networking" htmldocs
>>
>>> +/**
>>> + * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.
>>
>> Is bpf_xdp_metadata_rx_ctag a good function name for the inner vlan tag?
>> Like wise below "stag".
>>
>> I cannot remember if the C-tag or S-tag is the inner or outer vlan tag.
>>
>> When reading BPF code that use these function names, then I would have
>> to ask Google for help, or find-and-read this doc.
>>
>> Can we come-up with a more intuitive name, that e.g. helps when reading
>> the BPF-prog code?
> 
> Well, my reasoning for such naming is that if someone can configure s-tag
> stripping in ethtool with 'rx-vlan-stag-hw-parse', they shouldn't have any
> problem with understanding those function names.
> 

Naming is hard.  My perspective is conveying the meaning without having
to be knowledgeable about ethtool VLAN commands.  My perspective is a
casual BPF-programmer that reads "bpf_xdp_metadata_rx_stag()".
Hopefully we can choose a name that says "vlan" somewhere, such that the
person reading this doesn't have to lookup and find the documentation to
deduct this code is related to VLANs.

> One possible improvement that comes to mind is maybe (similarly ethtool) calling
> c-tag just 'tag' and letting s-tag stay 'stag'. Because c-tag is this default
> 802.1q tag, which is supported by various hardware, while s-tag is significantly
> less widespread.
> 
> But there are many options, really.
> 
> What are your suggestions?
>

One suggestion is (the symmetrical):
  * bpf_xdp_metadata_rx_vlan_inner_tag
  * bpf_xdp_metadata_rx_vlan_outer_tag

As you say above the first "inner" VLAN tag is just the regular 802.1Q
VLAN tag.  The concept of C-tag and S-tag is from 802.1ad that
introduced the concept of double tagging.

Thus one could argue for shorter names like:
  * bpf_xdp_metadata_rx_vlan_tag
  * bpf_xdp_metadata_rx_vlan_outer_tag


>>
>>> + * @ctx: XDP context pointer.
>>> + * @vlan_tag: Return value pointer.
>>> + *
>>
>> IMHO right here, there should be a description.
>>
>> E.g. for what a VLAN "tag" means.  I assume a "tag" isn't the VLAN id,
>> but the raw VLAN tag that also contains the prio numbers etc.
>>
>> It this VLAN tag expected to be in network-byte-order ?
>> IMHO this doc should define what is expected (and driver devel must
>> follow this).
> 
> Will specify that.
> 
>>
>>> + * Returns 0 on success or ``-errno`` on error.
>>> + */
>>> +__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
>>> +{
>>> +	return -EOPNOTSUPP;
>>> +}
>>> +
>>> +/**
>>> + * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
>>> + * @ctx: XDP context pointer.
>>> + * @vlan_tag: Return value pointer.
>>> + *

(p.s. Googling I find multiple definitions of what the "S" in S-tag
means. The most reliable or statistically consistent seems to be
"Service tag", or "Service provider tag".)

The description for the renamed "bpf_xdp_metadata_rx_vlan_outer_tag"
should IMHO explain that the outer VLAN tag is often refered to as the 
S-tag (or Service-tag) in Q-in-Q (802.1ad) terminology.  Perhaps we can 
even spell out that some hardware support (and must be configured via 
ethtool) to extract this stag.

A dump of the tool rx-vlan related commands:

   $ ethtool -k i40e2 | grep rx-vlan
   rx-vlan-offload: on
   rx-vlan-filter: on [fixed]
   rx-vlan-stag-hw-parse: off [fixed]
   rx-vlan-stag-filter: off [fixed]




>>> + * Returns 0 on success or ``-errno`` on error.
>>
>> IMHO we should provide more guidance to expected return codes, and what
>> they mean.  IMHO driver developers must only return codes that are
>> described here, and if they invent a new, add it as part of their patch.
> 
> That's a good suggestion, I will expand the comment to describe error codes used
> so far.
> 
>>
>> See, formatting in bpf_xdp_metadata_rx_hash and check how this gets
>> compiled into HTML.
>>
>>
>>> + */
>>> +__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
>>> +{
>>> +	return -EOPNOTSUPP;
>>> +}
>>> +
>>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
