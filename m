Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95736BB2A8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Oct 2025 09:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 497954176D;
	Thu,  2 Oct 2025 07:07:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xWOiPnnSvxnQ; Thu,  2 Oct 2025 07:07:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB153416F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759388826;
	bh=6h89Kobl8YncQosnpAKJswuVhVJh9F4L0djvzLDRjOs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vvAhqPnYaDYOetWItkkMKaNqehX3yj7Kcn2mgTRp+EI+jKxqQby62eX0OndUB0DSC
	 K9ktsNor8bVHSii2j+YGtugDj3kWja5g2KQJmH+2qnvEe/bwJ0XxvYgPnsLv1myOZq
	 bGQlKUCnM5zelbfxBpKCeDHYLKRib35WkRy+VloVHPp5e7oK5XOxGmIGf7+qIKjgt1
	 PbaXmDZbqKMFPTBSS7bIottBLRjpxnjGSEJlutHCjrCLAdcK0p+A5epl4ZoACYjO/X
	 nrGscyXg3vSNs8Knj32o/VDWYyjgqxflRXZNIsZ/3ziwN1ncayC6VmDjiczuxt1uEP
	 Ua14rBZQRqN5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB153416F1;
	Thu,  2 Oct 2025 07:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E0FFECC0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 07:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE547416DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 07:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BH1T2Dj7J10v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Oct 2025 07:07:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9CE934150E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE934150E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CE934150E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Oct 2025 07:07:01 +0000 (UTC)
Received: from [192.168.2.212] (p5dc550fa.dip0.t-ipconnect.de [93.197.80.250])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 693E86028F34B;
 Thu, 02 Oct 2025 09:06:26 +0200 (CEST)
Message-ID: <c86bccd6-9e9e-4355-8e3b-81df181d3c44@molgen.mpg.de>
Date: Thu, 2 Oct 2025 09:06:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jacob E Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>,
 Alok Tiwari <alok.a.tiwari@oracle.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: Anthony L Nguyen <anthony.l.nguyen@intel.com>, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
 <20250925102329.GE836419@horms.kernel.org>
 <a7b1bc0a-26f0-4256-b52f-3580711be98f@intel.com>
 <PH0PR11MB59024649641B7ACB09ACD402F01AA@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <PH0PR11MB59024649641B7ACB09ACD402F01AA@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: avoid redundant call
 to ixgbe_non_sfp_link_config()
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

Dear Alok, dear Simon, dear Jake, dear Jedrzej,


Thank you for your patch and review.

Am 30.09.25 um 10:33 schrieb Jagielski, Jedrzej:
> From: Keller, Jacob E
> Sent: Tuesday, September 30, 2025 1:04 AM
>> On 9/25/2025 3:23 AM, Simon Horman wrote:
>>> On Wed, Sep 24, 2025 at 12:33:54PM -0700, Alok Tiwari wrote:
>>>> ixgbe_non_sfp_link_config() is called twice in ixgbe_open()
>>>> once to assign its return value to err and again in the
>>>> conditional check. This patch uses the stored err value
>>>> instead of calling the function a second time. This avoids
>>>> redundant work and ensures consistent error reporting.

Using 75/75 characters per line would save a line.

Also, following up on the discussion, resending the patch with a 
comment, that calling this twice was not done intentionally would be great.

>>>> Also fix a small typo in the ixgbe_remove() comment:
>>>> "The could be caused" -> "This could be caused".

Personally I prefer separate patches for such things, making reverting 
easier.

>>>> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
>>>> ---
>>>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> index 90d4e57b1c93..39ef604af3eb 100644
>>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> @@ -7449,7 +7449,7 @@ int ixgbe_open(struct net_device *netdev)
>>>>   					 adapter->hw.link.link_info.link_cfg_err);
>>>>   
>>>>   		err = ixgbe_non_sfp_link_config(&adapter->hw);
>>>> -		if (ixgbe_non_sfp_link_config(&adapter->hw))
>>>> +		if (err)
>>>>   			e_dev_err("Link setup failed, err %d.\n", err);
>>>>   	}
>>>>   
>>>
>>> I am wondering if there is some intended side-effect of
>>> calling ixgbe_non_sfp_link_config() twice.
>>>
>>
>> Good question.
>>
>> It looks like this was introduced by 4600cdf9f5ac ("ixgbe: Enable link
>> management in E610 device") which added the calls to ixgbe_open. Of
>> interest, we do also call this function in ixgbe_up_complete which is
>> called by ixgbe_open, but only if ixgbe_is_sfp() is false. Not sure why
>> E610 needs special casing here.
>>
>> I don't see a reason we need two calls, it looks redundant, and even if
>> it has some necessary side effect.. that should at least deserve a
>> comment explaining why.
>>
>> Hopefully someone from the ixgbe team can pipe in and explain or ACK
>> this change.
> 
> Thanks for your vigilance! :) but i am afraid there is no reason for
> having it doubled here
> 
> Unfortunately it looks like it has been introduced by mistake
> and is indeed redundant.
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

With the comments above addressed:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
