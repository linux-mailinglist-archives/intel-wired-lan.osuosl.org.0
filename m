Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71283B1E7E9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 14:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3165160D57;
	Fri,  8 Aug 2025 12:04:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DoeGG1gqXGUz; Fri,  8 Aug 2025 12:04:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9A9860C2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754654649;
	bh=VDnTn66ZptE2/09B0B5PI/ddimhFLIe2oCxaMYZMYEU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fquaPUry7Ycxk2wATf9SERf3OCEmoxTc7ZyHxBBYBEcgNUOUFYycgQEk2SIhM5UKP
	 F2IRsqV0+JHsUri5t3Kqx/g36jaoxbDiIe4qlmBWPCi4G1BGJfVUFnrcW3/pQW8JVl
	 Y7ZrHtTOSKzmAFy2Tg+CXpUumYbIQl7lTgwShTrJIuplcMI1B/JPcFk/+29VBnbv8P
	 /ec0aS8vvnHYqtGCsiJTNIGLF5hTpWpQVsHvQNaELOO4SvyqIoApOqTuwkObiKGE50
	 EbJhL0EeybUDsLH3bDbolb5wOot3qum4h388t5q4cjZ/51EapKXnw+e/3VNkx1tNox
	 Vf2C5bq2eR7iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9A9860C2A;
	Fri,  8 Aug 2025 12:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CF98510A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 12:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B590240B95
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 12:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cprq8dH7nd55 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 12:04:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4745640B4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4745640B4A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4745640B4A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 12:04:04 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8BB7660288279;
 Fri, 08 Aug 2025 14:03:43 +0200 (CEST)
Message-ID: <ee6af42d-b274-4079-8a8b-35ec8d500c1c@molgen.mpg.de>
Date: Fri, 8 Aug 2025 14:03:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
 <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
 <aJXiP-_ZUfBErhAv@localhost.localdomain>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <aJXiP-_ZUfBErhAv@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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

Dear Michal, dear Jacob,


One minor comment:

Am 08.08.25 um 13:40 schrieb Michal Kubiak:
> On Mon, Jul 07, 2025 at 03:58:37PM -0700, Jacob Keller wrote:
>>
>>
>> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
>>> @@ -1075,16 +780,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
>>>   static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> 
> [...]
> 
>>> @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>>>   		if (ice_is_non_eop(rx_ring, rx_desc))
>>>   			continue;
>>>   
>>> -		ice_get_pgcnts(rx_ring);
>>>   		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
>>>   		if (xdp_verdict == ICE_XDP_PASS)
>>>   			goto construct_skb;
>>> -		total_rx_bytes += xdp_get_buff_len(xdp);
>>> -		total_rx_pkts++;
>>>   
>>> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
>>> +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
>>> +			xdp_xmit |= xdp_verdict;
>>> +		total_rx_bytes += xdp_get_buff_len(&xdp->base);
>>> +		total_rx_pkts++;
>>>   
>>> +		xdp->data = NULL;
>>> +		rx_ring->first_desc = ntc;
>>> +		rx_ring->nr_frags = 0;
>>>   		continue;
>>>   construct_skb:
>>> -		skb = ice_build_skb(rx_ring, xdp);
>>> +		skb = xdp_build_skb_from_buff(&xdp->base);
>>> +
>>>   		/* exit if we failed to retrieve a buffer */
>>>   		if (!skb) {
>>>   			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>>
>> This is not your fault, but we've been incorrectly incrementing
>> alloc_page_failed here instead of alloc_buf_failed.
>>
> 
> Sure. It's a good idea to fix it while we're rewriting the Rx path.
> Will be addressed in v2.

Should this be a separate patch, that can be easily backported?

[…]


Kind regards,

Paul
