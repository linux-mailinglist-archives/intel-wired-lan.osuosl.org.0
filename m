Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D706B8926A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 12:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E008F81EC8;
	Fri, 19 Sep 2025 10:52:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QmyqMhaPvZD4; Fri, 19 Sep 2025 10:52:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4978E81ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758279178;
	bh=vaewsVgW1iC3I46EuqYekXE6jhi8j1vA8fdWosmeV4A=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=omXgWgOauysDHBIJW6Zrxu3B2WCk9vinJOACNK9gAzMc+mmlUo5pYD4/q9NyPnbPK
	 xVfFM+D/W6YkAwKH+yv+j9KZQMqbPM9Tda9yfTwkVbf4hcm8cceJMleODYXEiuEl2C
	 WmIhHSismMUsjPde5No+X0naEJvooWVBt/83S9esRM6dEGhOWtqDOg7FUe3XEUO+2h
	 cMqSZNtrDg17beAnQukHPx1zR5GqF3XMsOtrOmw/ZSIM1/fAIAMZ/jo/j0YWd/e0Y1
	 6r6safmBwM0K5V9GGkCiPBJYqUdaR6ecLqoOt84VxUVwIVfcasZCzFhTQHhKPAB1Xm
	 HLI+OtaviTUiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4978E81ECD;
	Fri, 19 Sep 2025 10:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C3ACE273
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B573040BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4_bMRQoZLgA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 10:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b2; helo=out-178.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A94594024A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A94594024A
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b2])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A94594024A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:52:53 +0000 (UTC)
Message-ID: <fa5c3ebc-8d9e-411b-b976-97b88272bfda@linux.dev>
Date: Fri, 19 Sep 2025 11:52:45 +0100
MIME-Version: 1.0
To: Jacob Keller <jacob.e.keller@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Avi Shalev <avi.shalev@intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
 <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758279170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vaewsVgW1iC3I46EuqYekXE6jhi8j1vA8fdWosmeV4A=;
 b=m+AxuxFIsYei4VE683Ai8LpFP9ftj0+0Q952VmRkO1GYIFMnzGJ/pmw7AHaC+HCLW+xsLc
 xt9m3e9Ouj2gsgSmv/zN0tg89Rfd/cgmGO74KcdAlzhLR0h3x/l4l/Ssf+icT7D9EfoLsI
 0K8uGK1PwOl/QFa1+SwImRXHaeBcRU8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=m+AxuxFI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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

On 18/09/2025 23:10, Jacob Keller wrote:
> 
> 
> On 9/18/2025 1:47 PM, Vadim Fedorenko wrote:
>> On 18/09/2025 19:38, Chwee-Lin Choong wrote:
>>> The current HW bug workaround checks the TXTT_0 ready bit first,
>>> then reads LOW -> HIGH -> LOW from register 0 to detect if a
>>> timestamp was captured.
>>>
>>> This sequence has a race: if a new timestamp is latched after
>>> reading the TXTT mask but before the first LOW read, both old
>>> and new timestamp match, causing the driver to drop a valid
>>> timestamp.
>>>
>>> Fix by reading the LOW register first, then the TXTT mask,
>>> so a newly latched timestamp will always be detected.
>>>
>>> This fix also prevents TX unit hangs observed under heavy
>>> timestamping load.
>>>
>>> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
>>> Suggested-by: Avi Shalev <avi.shalev@intel.com>
>>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>>> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_ptp.c | 10 ++++++++--
>>>    1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>
>> [...]
>>
>>>    		 * timestamp was captured, we can read the "high"
>>>    		 * register again.
>>>    		 */
>>
>> This comment begins with 'read the "high" register (to latch a new
>> timestamp)' ...
>>
>>> -		u32 txstmpl_old, txstmpl_new;
>>> +		u32 txstmpl_new;
>>>    
>>> -		txstmpl_old = rd32(IGC_TXSTMPL);
>>>    		rd32(IGC_TXSTMPH);
>>>    		txstmpl_new = rd32(IGC_TXSTMPL);
>>
>> and a couple of lines later in this function you have
>>
>> 		regval = txstmpl_new;
>> 		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
>>
>> According to the comment above, the value in the register will be
>> latched after reading IGC_TXSTMPH. As there will be no read of "low"
>> part of the register, it will stay latched with old value until the
>> next call to the same function. Could it be the reason of unit hangs?
>>
>> It looks like the value of previous read of IGC_TXSTMPH should be stored
>> and used to construct new timestamp, right?
>>
> 
> I wouldn't trust the comment, but instead double check the data sheets.
> Unfortunately, I don't seem to have a copy of the igc hardware data
> sheet handy :(

Well, if the register is not latched, the usual pattern of reading
high->low->high should be applied to avoid overflow scenario, but I
don't see it in neither original, nor updated code. So I would assume
the comment is correct. But I totally agree, data sheet would be proper
source of truth.
