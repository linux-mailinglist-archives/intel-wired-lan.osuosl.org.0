Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D0DC2D8BD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 18:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 068114056F;
	Mon,  3 Nov 2025 17:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iMTXPCgyTZqL; Mon,  3 Nov 2025 17:55:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F11D40570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762192551;
	bh=U8h7PzoUbT1+X5pM4fvxo+Qt4T0+vhHtCUCRzU9q0Ek=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=botr0L6v+cxGoR7S0LpyfPAKTHutR5+51y0XOYp5qD9dFM6qFIqAtkHG1r7UuhOow
	 Rqq8g9DfgyVZ0RGWCqlEnXcJGVIZdIVJDj7ayozdKM8kpOfC3rEYMCSibrWUO84eur
	 4jg1bZ+AOZZ9jj9rIcRM+DKMjPYIDg3RBB0rEWwAVSCz0DM0gvzqGNQFUF3BCrXROm
	 1ZGuJ2q2UmlZwSbw3nE2srldkbdd431RXJHSB0K+7ZOG1BH1GmPuChIdl7SKH8AGnQ
	 Z+YezMSFW8ByVvoRw7ikAFYq9MhGGG28zW94RceiOfAMRlE7Ynj4ie/mB5bMEDe6Ak
	 ORDfOg2tUsO5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F11D40570;
	Mon,  3 Nov 2025 17:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5375278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 17:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B71A40097
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 17:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bAPIwv-aebzx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 17:55:48 +0000 (UTC)
X-Greylist: delayed 905 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 03 Nov 2025 17:55:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 936714012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 936714012B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=142.0.186.134;
 helo=s1-ba86.socketlabs.email-od.com;
 envelope-from=4504.82.81909000224dcca.4d4e74f399da5a4d33309160e4b89faa@email-od.com;
 receiver=<UNKNOWN> 
Received: from s1-ba86.socketlabs.email-od.com
 (s1-ba86.socketlabs.email-od.com [142.0.186.134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 936714012B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 17:55:47 +0000 (UTC)
X-Thread-Info: NDUwNC4xMi44MTkwOTAwMDIyNGRjY2EuaW50ZWwtd2lyZWQtbGFuPWxpc3RzLm9zdW9zbC5vcmc=
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6bnVsbH0=
Received: from [192.168.0.212] (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id 5F8E12CE0005;
 Mon,  3 Nov 2025 12:40:14 -0500 (EST)
Message-ID: <6c83089b-3e0d-4c72-80a9-8049cff1dd57@nalramli.com>
Date: Mon, 3 Nov 2025 12:40:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, lishujin@kuaishou.com,
 xingwanli@kuaishou.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 team-kernel@fastly.com, khubert@fastly.com, nalramli@fastly.com
References: <20251009192831.3333763-1-dev@nalramli.com>
 <20251009192831.3333763-2-dev@nalramli.com> <aQjahdk/fl6EBcso@boxer>
Content-Language: en-US
From: "Nabil S. Alramli" <dev@nalramli.com>
In-Reply-To: <aQjahdk/fl6EBcso@boxer>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;
 i=@email-od.com; s=dkim; 
 c=relaxed/relaxed; q=dns/txt; t=1762192548; x=1764784548;
 h=content-transfer-encoding:content-type:in-reply-to:from:content-language:references:cc:to:subject:mime-version:date:message-id:x-thread-info:subject:to:from:cc:reply-to;
 bh=U8h7PzoUbT1+X5pM4fvxo+Qt4T0+vhHtCUCRzU9q0Ek=;
 b=hIVQTkjotZyyPnaRDMyDEcjCgEt6JjvsYMWNcKch/SfO1XpmrFgeEfn/9viFKhq/OkIZa+QRIsCRBatmD1tEG3EVx+Oq1DAkEWK5EEEoKw1j2dsUUVFp84uh3NiJo7UCPpa0tZMBRkBKbSWRu7jUz2Lz0LY+stsbnlxv/MVPiXo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nalramli.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=email-od.com header.i=@email-od.com header.a=rsa-sha256
 header.s=dkim header.b=hIVQTkjo
Subject: Re: [Intel-wired-lan] [RFC ixgbe 1/2] ixgbe: Implement support for
 ndo_xdp_xmit in skb mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/3/25 11:38, Maciej Fijalkowski wrote:
> On Thu, Oct 09, 2025 at 03:28:30PM -0400, Nabil S. Alramli wrote:
>> This commit adds support for `ndo_xdp_xmit` in skb mode in the ixgbe
>> ethernet driver, by allowing the call to continue to transmit the packets
>> using `dev_direct_xmit`.
>>
>> Previously, the driver did not support the operation in skb mode. The
>> handler `ixgbe_xdp_xmit` had the following condition:
>>
>> ```
>> 	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
>> 	if (unlikely(!ring))
>> 		return -ENXIO;
>> ```
>>
>> That only works in native mode. In skb mode, `adapter->xdp_prog == NULL` so
>> the call returned an error, which prevented the ability to send packets
>> using `bpf_prog_test_run_opts` with the `BPF_F_TEST_XDP_LIVE_FRAMES` flag.
> 
> Hi Nabil,
> 
> What stops you from loading a dummy XDP program to interface? This has
> been an approach that we follow when we want to use anything that utilizes
> XDP resources (XDP Tx queues).
> 

Hi Maciej,

Thank you for your response. In one use case we have multiple XDP programs
already loaded on an interface in SKB mode using the dispatcher, and we want
to use bpf_prog_test_run_opts to egress packets from another XDP program. We
want to avoid having to unload the dispatcher or be forced to use it in native
mode. Without this patch, that does not seem possible currently, correct?

>>
>> Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++++
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 43 +++++++++++++++++--
>>  2 files changed, 47 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>> index e6a380d4929b..26c378853755 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>> @@ -846,6 +846,14 @@ struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ixgbe_adapter *adapter)
>>  	return adapter->xdp_ring[index];
>>  }
>>  
>> +static inline
>> +struct ixgbe_ring *ixgbe_determine_tx_ring(struct ixgbe_adapter *adapter)
>> +{
>> +	int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
>> +
>> +	return adapter->tx_ring[index];
>> +}
>> +
>>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
>>  {
>>  	switch (adapter->hw.mac.type) {
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 467f81239e12..fed70cbdb1b2 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -10748,7 +10748,8 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>>  	/* During program transitions its possible adapter->xdp_prog is assigned
>>  	 * but ring has not been configured yet. In this case simply abort xmit.
>>  	 */
>> -	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
>> +	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) :
>> +		ixgbe_determine_tx_ring(adapter);
>>  	if (unlikely(!ring))
>>  		return -ENXIO;
>>  
>> @@ -10762,9 +10763,43 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>>  		struct xdp_frame *xdpf = frames[i];
>>  		int err;
>>  
>> -		err = ixgbe_xmit_xdp_ring(ring, xdpf);
>> -		if (err != IXGBE_XDP_TX)
>> -			break;
>> +		if (adapter->xdp_prog) {
>> +			err = ixgbe_xmit_xdp_ring(ring, xdpf);
>> +			if (err != IXGBE_XDP_TX)
>> +				break;
>> +		} else {
>> +			struct xdp_buff xdp = {0};
>> +			unsigned int metasize = 0;
>> +			unsigned int size = 0;
>> +			unsigned int truesize = 0;
>> +			struct sk_buff *skb = NULL;
>> +
>> +			xdp_convert_frame_to_buff(xdpf, &xdp);
>> +			size = xdp.data_end - xdp.data;
>> +			metasize = xdp.data - xdp.data_meta;
>> +			truesize = SKB_DATA_ALIGN(xdp.data_end - xdp.data_hard_start) +
>> +				   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
>> +
>> +			skb = napi_alloc_skb(&ring->q_vector->napi, truesize);
>> +			if (likely(skb)) {
>> +				skb_reserve(skb, xdp.data - xdp.data_hard_start);
>> +				skb_put_data(skb, xdp.data, size);
>> +				build_skb_around(skb, skb->data, truesize);
>> +				if (metasize)
>> +					skb_metadata_set(skb, metasize);
>> +				skb->dev = dev;
>> +				skb->queue_mapping = ring->queue_index;
>> +
>> +				err = dev_direct_xmit(skb, ring->queue_index);
>> +				if (!dev_xmit_complete(err))
>> +					break;
>> +			} else {
>> +				break;
>> +			}
>> +
>> +			xdp_return_frame_rx_napi(xdpf);
>> +		}
>> +
>>  		nxmit++;
>>  	}
>>  
>> -- 
>> 2.43.0
>>
>>

