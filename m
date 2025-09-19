Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B56B89297
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 12:56:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1339481EFA;
	Fri, 19 Sep 2025 10:56:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdOF5wXqhGOo; Fri, 19 Sep 2025 10:56:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42BDD81F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758279363;
	bh=5mmmnjsu9xXx/i0h/Qsh8uWABNz0Q9My1OhrKczY0Xc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NXqjgfje7HjMp4+8hfdoL2tlirV3Isq3rzj5A/t6icXae6MBYXmri0Qc7hz2ZD4KV
	 4LwUB6GJ0Chdrz+Vj15sLsbxkffk8cGWSdP+KtKPgAcqeLZW95ZzUqNx45wewNFPs0
	 UKbrh9V/FvwP9QeIXfV2AHA7x50Qqt70CaTykbq/3Tt/CUmfXClrz8DygnBjQvfoin
	 WX5hhUWxMjnkqlVtSNEwK7lgYkL7EtmnxWUc/RbzHYu4PnHdtJX284G7IV+RyRDW8N
	 31mvBVeFv4sNAoGvORofcxCgrm0MwgyKNNtnmILC39w/rkCQ7wkBijvdLK4N199DCA
	 Zd1u2Ca0uNdag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42BDD81F5B;
	Fri, 19 Sep 2025 10:56:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 70C3AE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B39C40BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:56:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lG6LbJX0k2Ts for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 10:56:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::bd; helo=out-189.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A412540BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A412540BFD
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com
 [IPv6:2001:41d0:203:375::bd])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A412540BFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 10:56:01 +0000 (UTC)
Message-ID: <9bf5066a-a006-4f93-93fd-38e4c063e59e@linux.dev>
Date: Fri, 19 Sep 2025 11:55:56 +0100
MIME-Version: 1.0
To: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Shalev, Avi" <avi.shalev@intel.com>,
 "Song, Yoong Siang" <yoong.siang.song@intel.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
 <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
 <SJ5PPF4422C53747941CD81779E97F26C34DA11A@SJ5PPF4422C5374.namprd11.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <SJ5PPF4422C53747941CD81779E97F26C34DA11A@SJ5PPF4422C5374.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758279359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5mmmnjsu9xXx/i0h/Qsh8uWABNz0Q9My1OhrKczY0Xc=;
 b=Y9rD8d5Sbz9S1OKeW/Jp5GeodEl2YYtUqvdsIE1Yb/Dkhie9iiUVtroew6SRci8G1AQzxU
 ccyz5npLbFup2oDOEjJZKJjvK7qEJaJnyMZpKfZW+BdC5yjWCe4cVbvHrEQw+l9w5cssY+
 asYNJxLiThEz/qK2fBy9glSQECLa5ws=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Y9rD8d5S
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

On 19/09/2025 08:17, Choong, Chwee Lin wrote:
> 
> On Friday, September 19, 2025 6:11 AM, Keller, Jacob E <jacob.e.keller@intel.com> wrote:
>> On 9/18/2025 1:47 PM, Vadim Fedorenko wrote:
>>> On 18/09/2025 19:38, Chwee-Lin Choong wrote:
>>>> The current HW bug workaround checks the TXTT_0 ready bit first, then
>>>> reads LOW -> HIGH -> LOW from register 0 to detect if a timestamp was
>>>> captured.
>>>>
>>>> This sequence has a race: if a new timestamp is latched after reading
>>>> the TXTT mask but before the first LOW read, both old and new
>>>> timestamp match, causing the driver to drop a valid timestamp.
>>>>
>>>> Fix by reading the LOW register first, then the TXTT mask, so a newly
>>>> latched timestamp will always be detected.
>>>>
>>>> This fix also prevents TX unit hangs observed under heavy
>>>> timestamping load.
>>>>
>>>> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing
>>>> timestamps")
>>>> Suggested-by: Avi Shalev <avi.shalev@intel.com>
>>>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>>>> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>>>> ---
>>>>    drivers/net/ethernet/intel/igc/igc_ptp.c | 10 ++++++++--
>>>>    1 file changed, 8 insertions(+), 2 deletions(-)
>>>>
>>>
>>> [...]
>>>
>>>>    		 * timestamp was captured, we can read the "high"
>>>>    		 * register again.
>>>>    		 */
>>>
>>> This comment begins with 'read the "high" register (to latch a new
>>> timestamp)' ...
>>>
>>>> -		u32 txstmpl_old, txstmpl_new;
>>>> +		u32 txstmpl_new;
>>>>
>>>> -		txstmpl_old = rd32(IGC_TXSTMPL);
>>>>    		rd32(IGC_TXSTMPH);
>>>>    		txstmpl_new = rd32(IGC_TXSTMPL);
>>>
>>> and a couple of lines later in this function you have
>>>
>>> 		regval = txstmpl_new;
>>> 		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
>>>
>>> According to the comment above, the value in the register will be
>>> latched after reading IGC_TXSTMPH. As there will be no read of "low"
>>> part of the register, it will stay latched with old value until the
>>> next call to the same function. Could it be the reason of unit hangs?
>>>
>>> It looks like the value of previous read of IGC_TXSTMPH should be
>>> stored and used to construct new timestamp, right?
>>>
>>
>> I wouldn't trust the comment, but instead double check the data sheets.
>> Unfortunately, I don't seem to have a copy of the igc hardware data sheet handy :(
>>
>> Thanks,
>> Jake
> 
> Flow before this patch:
> 	1. Read the TXTT bits into mask
> 	2. if TXTT_0 == 0, go to workaround ->If at this point register 0 captures TX timestamp, and TXTT_0 is set but we think it is 0.
> 	3. Read LOW to OLD
> 	4. Read HIGH – this clears the TXTT_0
> 	5. Read LOW again , now to NEW.
> 	6. NEW==OLD, so the timestamp is discarded -> causing timestamp timeout
>   
> Flow after this patch:
> 	1. Read LOW to OLD
> 	2. Read the TXTT bits into mask
> 	3. if TXTT_0 == 0, go to workaround -> If at this point register 0 captures TX timestamp, and TXTT_0 is set but we think it is 0.
> 	4. Read HIGH – this clears the TXTT_0
> 	5. Read LOW again , now to NEW.
> 	6. NEW!=OLD, so we detect this is a valid timestamp
>                7. Read HIGH again and use the timestamp
> 
> Let me know if this address your questions?

Unfortunately, it doesn't. The question is "what will happen to register
after step 7?" The comment above says it will stay latched until LOW is
read, will it affect performance/stability?
