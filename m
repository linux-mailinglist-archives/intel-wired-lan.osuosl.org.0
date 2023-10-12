Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E427C71CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 17:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 763C5824EE;
	Thu, 12 Oct 2023 15:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 763C5824EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697125655;
	bh=8vt6iuosYn85Pv8ktjrLYPJN/OOaa04ykMvwOaymRx4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=63T8lyKNn8E86CeUHCV78uuyFowue3qriMVLieXpjapUM6Vw9T0rGll9Qjwj+NqKs
	 ZKnhZ6o4+H6yuZZ4mL/EfbNBlyAmB36sKvYOw8ExQ8kSqtCgLIe+izp3oDWGfQiwzd
	 rQR7Oa7IfEzd+h011jemIAmJuFN7qnVpsafptZVlZjUUZGoDEDt0DfRB3JAq6qWZ00
	 p2rnBASxcvooBLCIuVJx+wl1MJFis8Wkb31ZAgEkW/zbMRmdUYLLsypIUKLBi92/s6
	 hIy4w8bDphdCOy7MsbWfPEtjL6P/OGKLnnWWuZiQ/TJvs/vQ+czy14d800q/rpGotF
	 GuUdB5tq7tyMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVRIZez7dcDc; Thu, 12 Oct 2023 15:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3639882438;
	Thu, 12 Oct 2023 15:47:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3639882438
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC9881BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 15:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D098840204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 15:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D098840204
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3J0Dqlh0sd5o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 15:47:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E6CF400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 15:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E6CF400DC
Received: from [50.53.46.231] (helo=[192.168.254.15])
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1qqxuA-001KXV-0w; Thu, 12 Oct 2023 15:47:18 +0000
Message-ID: <b5c1030a-9831-4580-8684-7c68f5888131@infradead.org>
Date: Thu, 12 Oct 2023 08:47:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
 <2038f544-859f-4ffb-9840-37c1ba289259@infradead.org>
 <0df556eb-71b2-9612-a81d-cd83c27a2cd7@intel.com>
 <8eaece43-a30d-45e8-9610-28ed2af842fc@infradead.org>
In-Reply-To: <8eaece43-a30d-45e8-9610-28ed2af842fc@infradead.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=EBnjnVg+y4DDG6Px7ecx0HYcMluDmx+CBNhjuKFvPy8=; b=UHTSpsQThE+kLNmBQwnVqk6KF4
 vini3NlLRTqt4OJRF5XxyKB8QRqaIwSIKCmiHk08DPnsezLgWQVoSP9LqGKjrwV3h7WdxEyyM+tsS
 oY8NW3v4FiQLZhWwIhKpyi66jtls7EWuL3xxyBH0VJCMfH5I0k3Zsmk9PX4tkdNKG4333elt79LKq
 oGazMbDNJEvP8f8r0O8ODfuqveoTHM7YfUuAigBCZ9ElafvTBjZb6OUW5uzMyNGBXrD/Y77YY+l3r
 IYKNJiKoEmI5Y5BA7YjPvh7i90orNNWKXynfzxAUjt7+HvzxnRpV0+YtiwyN1r84iu1g49huHfTwI
 GV3MJa/w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UHTSpsQT
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 9/20/23 18:30, Randy Dunlap wrote:
> 
> 
> On 9/20/23 17:04, Jacob Keller wrote:
>>
>>
>> On 9/20/2023 2:30 PM, Randy Dunlap wrote:
>>>
>>>
>>> On 9/20/23 11:07, Alexander Lobakin wrote:
>>>> When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
>>>> the drivers using it may still be compiled (spotted by Randy):
>>>>
>>>> aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
>>>> in function `idpf_rx_rsc.isra.0':
>>>> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
>>>> undefined reference to `tcp_gro_complete'
>>>>
>>>> The drivers need to guard the calls to it manually.
>>>> Return early from the RSC completion function if !CONFIG_INET, it won't
>>>> work properly either way. This effectively makes it be compiled-out
>>>> almost entirely on such builds.
>>>>
>>>> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
>>>> Reported-by: Randy Dunlap <rdunlap@infradead.org>
>>>> Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-8a0240f7fb12@infradead.org
>>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>>
>>> That builds for me.  Thanks.
>>>
>>> Tested-by: Randy Dunlap <rdunlap@infradead.org>
>>>
>>> I hope that these patches can be merged into the v6.6 instead of
>>> v6.7 kernel at some point (i.e., [PATCH net] instead of net-next).
>>>
>>
>> Did any of the offending code make it into 6.6? I thought all of this
>> was from recent merges after 6.6 closed.
>>
>> Thanks,
>> Jake
> 
> Oh, I think that you are correct. Sorry about my comment.
> Thanks.
> 

Even if this is just > v6.6 kernels (i.e., linux-next),
it would be very good to get a fix merged for these build errors.
I keep getting build errors in linux-next....

>>
>>>
>>>> ---
>>>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>>> index 6fa79898c42c..aa45afeb6496 100644
>>>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>>> @@ -2876,6 +2876,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
>>>>  	if (unlikely(!(ipv4 ^ ipv6)))
>>>>  		return -EINVAL;
>>>>  
>>>> +	if (!IS_ENABLED(CONFIG_INET))
>>>> +		return 0;
>>>> +
>>>>  	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
>>>>  	if (unlikely(rsc_segments == 1))
>>>>  		return 0;
>>>
> 

Thanks.
-- 
~Randy
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
