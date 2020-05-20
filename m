Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 857E11DB414
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 14:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B91C20409;
	Wed, 20 May 2020 12:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jpb7noF3dcpM; Wed, 20 May 2020 12:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B3373235B8;
	Wed, 20 May 2020 12:47:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2471BF31E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7660A86B19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6JgnLisaIDi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 12:47:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CEC9C868FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 12:47:39 +0000 (UTC)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KClbBh051869;
 Wed, 20 May 2020 07:47:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978857;
 bh=AqvDDiNjhhJJhH+2Iuzf1KQzaudYFdiwJFg+rGhVDtI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OTkEIzZ04akVj95vxKCo/fEJGIogs0keHAhPYz7nPnkDbD9MNwcZy6km1ASENQhXj
 D6itTR60obTCXXgXw1gA4b/TA1wES0D9ffHvV5oP3NJKS2T1XikhKIn5xHgxAXfz+y
 4/3LADkD7ZB8L2Up7CcpZ0Tr2705zv0P0TjZb2RU=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KClbLc110251
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:47:37 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:47:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:47:36 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KClaIm129871;
 Wed, 20 May 2020 07:47:36 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <158992799425.36166.17850279656312622646@twxiong-mobl.amr.corp.intel.com>
 <87y2pnmr83.fsf@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <13d8b7ba-8afd-cb67-c782-56aff1412bcd@ti.com>
Date: Wed, 20 May 2020 08:47:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87y2pnmr83.fsf@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 vladimir.oltean@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

On 5/19/20 7:37 PM, Vinicius Costa Gomes wrote:
> Andre Guedes <andre.guedes@intel.com> writes:
> 
>> Hi,
>>
>> Quoting Vinicius Costa Gomes (2020-05-15 18:29:44)
>>> One example, for retrieving and setting the configuration:
>>>
>>> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
>>> Frame preemption settings for enp3s0:
>>>          support: supported
>>>          active: active
>>
>> IIUC the code in patch 2, 'active' is the actual configuration knob that
>> enables or disables the FP functionality on the NIC.
>>
>> That sounded a bit confusing to me since the spec uses the term 'active' to
>> indicate FP is currently enabled at both ends, and it is a read-only
>> information (see 12.30.1.4 from IEEE 802.1Q-2018). Maybe if we called this
>> 'enabled' it would be more clear.
> 
> Good point. Will rename this to "enabled".
> 
>>
>>>          supported queues: 0xf
>>>          supported queues: 0xe
>>>          minimum fragment size: 68
>>
>> I'm assuming this is the configuration knob for the minimal non-final fragment
>> defined in 802.3br.
>>
>> My understanding from the specs is that this value must be a multiple from 64
>> and cannot assume arbitrary values like shown here. See 99.4.7.3 from IEEE
>> 802.3 and Note 1 in S.2 from IEEE 802.1Q. In the previous discussion about FP,
>> we had this as a multiplier factor, not absolute value.
> 
> I thought that exposing this as "(1 + N)*64" (with 0 <= N <= 3) that it
> was more related to what's exposed via LLDP than the actual capabilities
> of the hardware. And for the hardware I have actually the values
> supported are: (1 + N)*64 + 4 (for N = 0, 1, 2, 3).
> 
> So I thought I was better to let the driver decide what values are
> acceptable.
> 
> This is a good question for people working with other hardware.
> 
> 
AM65 CPSW supports this as a multiple of 64. Since this ethtool
configuration is for the hardware, might want to make it as a multiple
of 64.

Murali

-- 
Murali Karicheri
Texas Instruments
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
