Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5AD7A9077
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 03:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C57A18210A;
	Thu, 21 Sep 2023 01:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C57A18210A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695259880;
	bh=lFRjvPia8T89ADjp5SmMwnksaAMLj8LZbLKd/nEDSvE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oNGiJKmGqtIg2+1gc4RTWaGcyG6PiZaWL0alq6kGp+NQzcHzKU3oWjE0rlD00S6Er
	 3DiIlH0di8ttH8gPMFnkkRK11di6DGp37NCjsMgWtj2j7TlqFCa6UpwI+Djr09+vp/
	 W10PeUAzhtUyThpTUekPyiZw3UXh7MZSmXTL1D4+f42TjUzPtgxUKy+zUD68bQ91mw
	 KN1jLgZQXxSV4yt1xgc3k/eZE2GKViBet3JFBQGc0MFaZO2YhDw7Ey6Cgqe45+O0R7
	 CeB5NulAZvBNbr6rZvuYz2nrmFy5rG3WD9CJrSVte44N8xx/P0rhW3LtnyhiDNHntS
	 WJqrQivnrGHvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6m1AQ6xw6Lu; Thu, 21 Sep 2023 01:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5E038144A;
	Thu, 21 Sep 2023 01:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5E038144A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D29C91BF302
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 01:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB08E4042D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 01:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB08E4042D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FYe6mUIwcu81 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 01:31:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72E3F400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 01:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72E3F400CE
Received: from [2601:1c2:980:9ec0::9fed]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1qj8Wz-004eOO-2w; Thu, 21 Sep 2023 01:31:01 +0000
Message-ID: <8eaece43-a30d-45e8-9610-28ed2af842fc@infradead.org>
Date: Wed, 20 Sep 2023 18:30:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
 <2038f544-859f-4ffb-9840-37c1ba289259@infradead.org>
 <0df556eb-71b2-9612-a81d-cd83c27a2cd7@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <0df556eb-71b2-9612-a81d-cd83c27a2cd7@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=oDg0WGIN2fvsDDknMzDVZr16rUkRGc5v11vaiK+QtYs=; b=dM9d58dTaZPTuT//EVl1bbpczu
 XedYnCmkaILRfWmUhNA04eZjGZLV7ABuenKqnuqlwTSl7fr97TA1t3zyXXhikYrNR8o8bw8xOX1fH
 EhLtjdsh+HUu+JDaAbXHpW3ltASl70Y0OFRD/nwH/02QrtASzyduONNlxs8raGmSh7phWQPRXosII
 DTjmI5rYljQQjfPacRMRvrwmmS79s/i+9o+W/6cgHViAidNUVk59y8Q97Ou+PMIngEAUX7+/Cyci5
 BubskgM9gSmDq+KMGiATuL2V8J59sUKGq1mUpv4QZgEuk6AaggiJh7A9c35YfskLoI1XH3z8zT8ou
 6r4jHwgg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dM9d58dT
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



On 9/20/23 17:04, Jacob Keller wrote:
> 
> 
> On 9/20/2023 2:30 PM, Randy Dunlap wrote:
>>
>>
>> On 9/20/23 11:07, Alexander Lobakin wrote:
>>> When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
>>> the drivers using it may still be compiled (spotted by Randy):
>>>
>>> aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
>>> in function `idpf_rx_rsc.isra.0':
>>> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
>>> undefined reference to `tcp_gro_complete'
>>>
>>> The drivers need to guard the calls to it manually.
>>> Return early from the RSC completion function if !CONFIG_INET, it won't
>>> work properly either way. This effectively makes it be compiled-out
>>> almost entirely on such builds.
>>>
>>> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
>>> Reported-by: Randy Dunlap <rdunlap@infradead.org>
>>> Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-8a0240f7fb12@infradead.org
>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>
>> That builds for me.  Thanks.
>>
>> Tested-by: Randy Dunlap <rdunlap@infradead.org>
>>
>> I hope that these patches can be merged into the v6.6 instead of
>> v6.7 kernel at some point (i.e., [PATCH net] instead of net-next).
>>
> 
> Did any of the offending code make it into 6.6? I thought all of this
> was from recent merges after 6.6 closed.
> 
> Thanks,
> Jake

Oh, I think that you are correct. Sorry about my comment.
Thanks.

> 
>>
>>> ---
>>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> index 6fa79898c42c..aa45afeb6496 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> @@ -2876,6 +2876,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
>>>  	if (unlikely(!(ipv4 ^ ipv6)))
>>>  		return -EINVAL;
>>>  
>>> +	if (!IS_ENABLED(CONFIG_INET))
>>> +		return 0;
>>> +
>>>  	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
>>>  	if (unlikely(rsc_segments == 1))
>>>  		return 0;
>>

-- 
~Randy
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
