Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5AAB1E8EA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B4D8406EC;
	Fri,  8 Aug 2025 13:09:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEvVl9ChCUWI; Fri,  8 Aug 2025 13:08:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33D83407DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754658538;
	bh=z9p2PzdGcG2t+0S+5PPulBoo65BbyWEweByD86Lsy0Y=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pgwV7EdYtWznffPM432m1tyTr9Cabx4Go8RIJhhAND/nxPGkyk9d6cwdZGkfzxjhf
	 ZFl0QZtnkQg7dRLKSfJol58zFiv2UMbywVVdmRqF42ZXyMcsr8nywXxfMTxGZLHZoP
	 AoFakCpsI5gFlTXrFE+8PyDUzYlrgCkyNK4gNMD5lk9CssvuJhpJZ2E1BHjcPhjHDk
	 vMj6ZcO4RVXJQ6775QeFcebAbc2B1f4lhOC3yTRCmsYRLlTYbqOggsGCdVb2flZzEA
	 as93BHWYfrqmHlWMKmleA47wR2cuOnCEY6cLSfq/uBRil2DsDl+2CBsnkG7NXfVEQL
	 lgy9uP9eQ75tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D83407DC;
	Fri,  8 Aug 2025 13:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D2EED10A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D02D181AD7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KURzR6yNGSlq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:08:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4A5981E5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4A5981E5D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4A5981E5D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:08:54 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CD02160288276;
 Fri, 08 Aug 2025 15:08:41 +0200 (CEST)
Message-ID: <62178d70-07c0-471b-b4dd-2e7523776243@molgen.mpg.de>
Date: Fri, 8 Aug 2025 15:08:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
 <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
 <aJXiP-_ZUfBErhAv@localhost.localdomain>
 <ee6af42d-b274-4079-8a8b-35ec8d500c1c@molgen.mpg.de>
 <aJX168tInG4tFk5j@localhost.localdomain>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <aJX168tInG4tFk5j@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

Dear Michal,


Thank you for your reply.

Am 08.08.25 um 15:04 schrieb Michal Kubiak:
> On Fri, Aug 08, 2025 at 02:03:43PM +0200, Paul Menzel wrote:

>> Am 08.08.25 um 13:40 schrieb Michal Kubiak:
>>> On Mon, Jul 07, 2025 at 03:58:37PM -0700, Jacob Keller wrote:
>>>>
>>>>
>>>> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
>>>>> @@ -1075,16 +780,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
>>>>>    static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>>>
>>> [...]
>>>
>>>>> @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>>>>>    		if (ice_is_non_eop(rx_ring, rx_desc))
>>>>>    			continue;
>>>>> -		ice_get_pgcnts(rx_ring);
>>>>>    		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
>>>>>    		if (xdp_verdict == ICE_XDP_PASS)
>>>>>    			goto construct_skb;
>>>>> -		total_rx_bytes += xdp_get_buff_len(xdp);
>>>>> -		total_rx_pkts++;
>>>>> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
>>>>> +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
>>>>> +			xdp_xmit |= xdp_verdict;
>>>>> +		total_rx_bytes += xdp_get_buff_len(&xdp->base);
>>>>> +		total_rx_pkts++;
>>>>> +		xdp->data = NULL;
>>>>> +		rx_ring->first_desc = ntc;
>>>>> +		rx_ring->nr_frags = 0;
>>>>>    		continue;
>>>>>    construct_skb:
>>>>> -		skb = ice_build_skb(rx_ring, xdp);
>>>>> +		skb = xdp_build_skb_from_buff(&xdp->base);
>>>>> +
>>>>>    		/* exit if we failed to retrieve a buffer */
>>>>>    		if (!skb) {
>>>>>    			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>>>>
>>>> This is not your fault, but we've been incorrectly incrementing
>>>> alloc_page_failed here instead of alloc_buf_failed.
>>>>
>>>
>>> Sure. It's a good idea to fix it while we're rewriting the Rx path.
>>> Will be addressed in v2.
>>
>> Should this be a separate patch, that can be easily backported?
>>
>> […]

> Do you mean that the patch should be included as part of the series, or would
> you prefer it to be submitted as a standalone patch targeting the 'net' tree?
Good question. I do not know the rules. My gut would say a separate 
patch for 'net', but the others know best.


Kind regards,

Paul
