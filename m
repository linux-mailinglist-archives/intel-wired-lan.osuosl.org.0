Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ACE6DFD0B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 19:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5053E41EE8;
	Wed, 12 Apr 2023 17:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5053E41EE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681321979;
	bh=xPzsSLhE7e0JfWfhjAVdRaCqF+IrPL+LTMz5TZc9LJQ=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S1wd2JbLOy0ixbYVUCok09w5GJpSUsclCVzXZIts1o1m7UMH24BLw9Kebo3UurGK8
	 VQAIAUc9vmuU9q9gkFLoxxtN6OTSEVPolLDh14CKbe9NPaqZ5Q1fSScl0PBOplfCDd
	 VlRKyuRu8jP0JiQhpmywIZJP727ovYzbD3YxM5w2BmXCUVk2ejXb/kKRoaqrHHXaib
	 LkVKzVrfHGPfjt5Hf3kCgA1URdwO8/aXGXSV9nvBwLRS5jtcAvysNoBOrrvm494HPn
	 +/8o3+RrHYJZmCbJnwk9ApgOJEUiSb2f+HALLPtg/SAUCW5S4Hy/hTNYTIzSsdnPBb
	 Wd2xxs9d0FR3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBQTlPUj1iPk; Wed, 12 Apr 2023 17:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F20DC41DD3;
	Wed, 12 Apr 2023 17:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F20DC41DD3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34DD41C3C98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BCA241EE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BCA241EE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmA5GWCmES5T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 17:52:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D31541DD3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D31541DD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:52:50 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117-_Upbl432NBqH0WkU1QnvCA-1; Wed, 12 Apr 2023 13:52:48 -0400
X-MC-Unique: _Upbl432NBqH0WkU1QnvCA-1
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-505149e1a4eso1099950a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 10:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681321967; x=1683913967;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iI47pUzxcqmCcEC2rps2dXJyXHbQhHmBAwXMcIIXiyw=;
 b=L63TPJf2ZjYBmbeylE1OSyZ/ZXZdCvc/5zEpnUaQWPLa7wtF5cgysZkaFEfbetxcxH
 K0WU+GwT/XESGWi0kwWQV68dlQwrYWfLRsCY3/J5zJuWj2fud5ab7vO3y1GCYP6CUoU9
 LIV9CwxUgO2SrFAqxxc1/2TBO/jL8MoGzH/lejWZTD5I/Xy+brDRfLFkkb1vgXNybR0l
 OKe1CrWqvu2+519eTmiTD+BLXtPl+pYsYBcCEMbdjOCsJFufDqpBWYru9Q9HnlZ1A3JT
 jmRM46Ia8FETJLKHm1tpDhS1W1xbjdrw4RZBjQVB9AQar+8rlQQZpUOfsW66bkLA3djC
 fpDA==
X-Gm-Message-State: AAQBX9ezr49V2gvobrRyh1NBrsnaF0XnsVlUjWeTOY/0mgL2EliaS9DT
 jrGYLmqOEniAY4X9BYgxSTBB93SEx3plFIJeqrxUujNXtv8uK5RTrZs8sQR1SPGQY1LDIKhLsj1
 gvez2ace5p74cH1t9X9kH6xslMoebBA==
X-Received: by 2002:a05:6402:5186:b0:4bf:b2b1:84d8 with SMTP id
 q6-20020a056402518600b004bfb2b184d8mr3511173edd.19.1681321967068; 
 Wed, 12 Apr 2023 10:52:47 -0700 (PDT)
X-Google-Smtp-Source: AKy350Y0MTpGveF2HoFghji3+UpGQyjGIi40MatPabg821fgSW3yWZotqgAFPc2Jo3Kxr8gD41BAKQ==
X-Received: by 2002:a05:6402:5186:b0:4bf:b2b1:84d8 with SMTP id
 q6-20020a056402518600b004bfb2b184d8mr3511145edd.19.1681321966733; 
 Wed, 12 Apr 2023 10:52:46 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 e14-20020a50d4ce000000b00502b0b0d75csm7149567edj.46.2023.04.12.10.52.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 10:52:46 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <34152b76-88c8-0848-9f30-bd9755b1ee25@redhat.com>
Date: Wed, 12 Apr 2023 19:52:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
 <168130336725.150247.12193228778654006957.stgit@firesoul>
 <ZDbiofWhQhFEfIsr@google.com>
In-Reply-To: <ZDbiofWhQhFEfIsr@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681321969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iI47pUzxcqmCcEC2rps2dXJyXHbQhHmBAwXMcIIXiyw=;
 b=HERI1+tmmXnO1oPb+2TQ8Kh5jl+lfGNNQfMQSLrgABLoZyz0NiGjuITrvNXqMmY8BTbvmO
 lEh/j4eH0xPaczpkS6/yGznirG3C6fMEsgkvx8gne1/mScFrVB9kXgJ9acfQJssccIx2NF
 nas875KyXOWdSQDslBvY8rkMziBxAs4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HERI1+tm
Subject: Re: [Intel-wired-lan] [PATCH bpf V8 2/7] selftests/bpf: Add
 counters to xdp_hw_metadata
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, martin.lau@kernel.org,
 larysa.zaremba@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 12/04/2023 18.56, Stanislav Fomichev wrote:
> On 04/12, Jesper Dangaard Brouer wrote:
>> Add counters for skipped, failed and redirected packets.
>> The xdp_hw_metadata program only redirects UDP port 9091.
>> This helps users to quickly identify then packets are
>> skipped and identify failures of bpf_xdp_adjust_meta.
>>
>> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>> ---
>>   .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   15 +++++++++++++--
>>   tools/testing/selftests/bpf/xdp_hw_metadata.c      |    4 +++-
>>   2 files changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> index b0104763405a..a07ef7534013 100644
>> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> @@ -25,6 +25,10 @@ struct {
>>   	__type(value, __u32);
>>   } xsk SEC(".maps");
>>   
>> +volatile __u64 pkts_skip = 0;
>> +volatile __u64 pkts_fail = 0;
>> +volatile __u64 pkts_redir = 0;
>> +
>>   extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
>>   					 __u64 *timestamp) __ksym;
>>   extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
>> @@ -59,16 +63,21 @@ int rx(struct xdp_md *ctx)
>>   			udp = NULL;
>>   	}
>>   
>> -	if (!udp)
>> +	if (!udp) {
>> +		pkts_skip++;
>>   		return XDP_PASS;
>> +	}
>>   
>>   	/* Forwarding UDP:9091 to AF_XDP */
>> -	if (udp->dest != bpf_htons(9091))
>> +	if (udp->dest != bpf_htons(9091)) {
>> +		pkts_skip++;
>>   		return XDP_PASS;
>> +	}
>>   
>>   	ret = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
>>   	if (ret != 0) {
> 
> [..]
> 
>>   		bpf_printk("bpf_xdp_adjust_meta returned %d", ret);
> 
> Maybe let's remove these completely? Merge patch 1 and 2, remove printk,
> add counters. We can add more counters in the future if the existing
> ones are not enough.. WDYT?
> 

Sure, lets just remove all of the bpf_printk, and add these counter instead.
Rolling V9.

>> +		pkts_fail++;

This fail counter should be enough for driver devel to realize that they
also need to implement/setup XDP metadata pointers correctly (for
bpf_xdp_adjust_meta to work).

>>   		return XDP_PASS;
>>   	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
