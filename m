Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F46D9FAC12
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 10:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1F7F4148A;
	Mon, 23 Dec 2024 09:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TL3tSmDzm3Nm; Mon, 23 Dec 2024 09:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 033F141488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734946808;
	bh=q6EESIzst5n1uFcphjcj1KtCS++MWFIgVjSaVFSSHfY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YyksX0C56GrvhD1bei3BG3UsnW15dQqxNJqiiHFaRWwwvxU902vcwaJ8Tm7QSPhVr
	 eG0k48TiHnhRD0V/nFxaBJaSpylkhf/4uQh/O1AorfedS+FjWWm9lgAe5ZdfJjqoOQ
	 AtiOuMF1+6xf2WVwXQRjYus7WiLq1gn54gpZIm3nQYWPadt0pRBeWxQoi3/j/ee1Sz
	 8rq+4fSsXJhQO+1pY8E57h95c6DSECIFadkVhVE7+zcrX5qLQdJBkk3B5Gm1pn6OVt
	 F3HdWSqGv5ruGs3htBMVXyPX7O4zm/pVlN3eSVetljjAbPl3Yk7jyjUGC21NDvATps
	 Ng2D5FC7SFYkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 033F141488;
	Mon, 23 Dec 2024 09:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 90110D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FF0341414
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmzHUYfUAcpl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 09:40:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 45967413E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45967413E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 45967413E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:40:03 +0000 (UTC)
X-CSE-ConnectionGUID: 0RLzCHIcR4Cr5J7FV9zbpA==
X-CSE-MsgGUID: w2B9Vy46Q4i3uv0UA8hEAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="35545384"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="35545384"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:40:02 -0800
X-CSE-ConnectionGUID: 29f3HbCCSKi3cAVBRgihfg==
X-CSE-MsgGUID: Pqu9tHU8T52pPNZhFPYHMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100009050"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:39:59 -0800
Message-ID: <c9a5a458-6015-442f-988d-c4b830dabd01@linux.intel.com>
Date: Mon, 23 Dec 2024 17:39:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
 <20241217003501.ar3nk6utdjllqjbk@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20241217003501.ar3nk6utdjllqjbk@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734946804; x=1766482804;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2omx7q+d9wt2CP8RSFFkgd8MZk41Pv7OsthACrhz1f8=;
 b=RQsa/p9xA6f29nYHbXd3jk6SJrqSMP52Id+kbZmPjx+Xv/wRaxEA9Tii
 0f+sl2JX2GAivfmblp58ifY/q/rNHc8iTiwUH41FgsLCpFDPt66xf/dYi
 vDc82A7idG1h+F6SSTxAKmym4tj04TkVw7zAgkyYKwYCEqumyDNRYARRZ
 xsSXE+EtJ9yP0uGXPDKQ1t8yaf6eWVj5Vhdk6e0ofnDIxYZurca3AiIh1
 wkEm0+xnB3H12JSTiCKxdBxoNcX2nIiJEnE3og+fIt/5mDqz3TWXjJ4W/
 XIoyOkvqE0gg12ZDcufPn4VyQaCLpK7Gj44ZijUTK36gWcvLCbht3J0Ds
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RQsa/p9x
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/9] igc: Add support to get
 MAC Merge data via ethtool
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



On 17/12/2024 8:35 am, Vladimir Oltean wrote:
> On Mon, Dec 16, 2024 at 01:47:19AM -0500, Faizal Rahim wrote:
>> Implement "ethtool --show-mm" callback for IGC.
>>
>> Tested with command:
>> $ ethtool --show-mm enp1s0.
>>    MAC Merge layer state for enp1s0:
>>    pMAC enabled: on
>>    TX enabled: on
>>    TX active: on
>>    TX minimum fragment size: 252
>>    RX minimum fragment size: 252
> 
> I'm going to ask "why so high?" and then I'm going to answer that I
> suspect this is a positive feedback loop created by openlldp, because of
> the driver incorrectly reporting:
> 
> - 60 as 68, ..., 252 as 260, and openlldp always (correctly) rounding up
>    these non-standard values to the closest upper multiple of an
>    addFragSize, which is all that can be advertised over LLDP
> - on RX what was configured on TX (see below), which in turn makes the
>    link partner again want to readjust (increase) its TX, to satisfy the
>    new RX requirement
> 
> But I'm open to hearing the correct answer, coming from you :)
> 

Actually ... it was so high 252 ... because I mistakenly copied the result 
from my past openlldp test that did:			
sudo lldptool -T -i enp1s0 -V addEthCaps addFragSize=3
Which sets is to 252 ..sorry causing confusion

Without OpenLLDP, with just ethtool and with default tx min frag size, it 
will look like:			
user@localhost:~$ sudo ethtool --show-mm enp1s0
MAC Merge layer state for enp1s0:
pMAC enabled: off
TX enabled: off
TX active: off
TX minimum fragment size: 68
RX minimum fragment size: 68
Verify enabled: off
Verify time: 10
Max verify time: 128
Verification status: DISABLED

When verify handshake is done with OpenLLDP, it will look like:
user@localhost:~$ sudo lldptool -t -i enp1s0 -V addEthCaps
Additional Ethernet Capabilities TLV
         Preemption capability supported
         Preemption capability enabled
         Preemption capability active
         Additional fragment size: 1 (124 octets)

user@localhost:~$ sudo ethtool --show-mm enp1s0
MAC Merge layer state for enp1s0:
pMAC enabled: on
TX enabled: on
TX active: on
TX minimum fragment size: 124
RX minimum fragment size: 124
Verify enabled: on
Verify time: 128
Max verify time: 128
Verification status: SUCCEEDED

Which makes sense, due to the rounding up 68 to the closest upper multiple 
of addFragSize which is 124 octet in OpenLLDP, as what you mentioned.


>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 7cde0e5a7320..16aa6e4e1727 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1782,6 +1782,25 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>>   	return 0;
>>   }
>>   
>> +static int igc_ethtool_get_mm(struct net_device *netdev,
>> +			      struct ethtool_mm_state *cmd)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct fpe_t *fpe = &adapter->fpe;
>> +
>> +	cmd->tx_min_frag_size = fpe->tx_min_frag_size;
>> +	cmd->rx_min_frag_size = fpe->tx_min_frag_size;
> 
> This is most likely a mistake. rx_min_frag_size means what is the
> smallest fragment size that the i225 can receive. Whereas tx_min_frag_size
> means what minimum fragment size it is configured to transmit (based,
> among others, on the link partner's minimum RX requirements).
> To say that the i225's minimum RX fragment size depends on how small it
> was configured to transmit seems wrong. I would expect a constant, or if
> this is correct, an explanation. TI treats rx_min_frag_size != ETH_ZLEN
> as errata.
> 

My bad.
I got your point, it's clearly explained, thanks :).
Just got to know i226 is able to handle any frag size for RX.
Since standard for min TX is 60, I'll use 60 then.
