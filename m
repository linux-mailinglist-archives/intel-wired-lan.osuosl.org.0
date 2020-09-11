Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C8266806
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 20:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A155F87613;
	Fri, 11 Sep 2020 18:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ua7-tBIQ3MIq; Fri, 11 Sep 2020 18:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D2518761F;
	Fri, 11 Sep 2020 18:05:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30EF01BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C26987932
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZ29gZNnmkx1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 18:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 12EE98792A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:05:04 +0000 (UTC)
IronPort-SDR: q3xFhI5+OgeP+svshy+0kUqjE2whRepZlifTT5fpd0aCivaJWyvn27l8QUNdEOrddYoR0yUSTu
 gjGZj77VxGrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="176884817"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="176884817"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:05:01 -0700
IronPort-SDR: 75JO/gto9d2IvKP5VvmNRy9qZOP6j78AsTyeO9Je13tV2Ktf4Rh6IjshhaBDmw9RlD1bUROHU+
 9W+SGeR6gXJw==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="505577976"
Received: from samudral-mobl.amr.corp.intel.com (HELO [10.209.42.76])
 ([10.209.42.76])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:05:00 -0700
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Magnus Karlsson <magnus.karlsson@gmail.com>
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
 <20200911120519.GA9758@ranger.igk.intel.com>
 <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
 <20200911131027.GA2052@ranger.igk.intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <b28b4e93-50c2-6183-90ea-8d33902e8f21@intel.com>
Date: Fri, 11 Sep 2020 11:04:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200911131027.GA2052@ranger.igk.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/11/2020 6:10 AM, Maciej Fijalkowski wrote:
> On Fri, Sep 11, 2020 at 02:29:50PM +0200, Magnus Karlsson wrote:
>> On Fri, Sep 11, 2020 at 2:11 PM Maciej Fijalkowski
>> <maciej.fijalkowski@intel.com> wrote:
>>>
>>> On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
>>>> From: Magnus Karlsson <magnus.karlsson@intel.com>
>>>>
>>>> Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
>>>> reason, we only allowed main VSIs to be used with zero-copy, but
>>>> there is now reason to not allow VMDQs also.
>>>
>>> You meant 'to allow' I suppose. And what reason? :)
>>
>> Yes, sorry. Should be "not to allow". I was too trigger happy ;-).
>>
>> I have gotten requests from users that they want to use VMDQs in
>> conjunction with containers. Basically small slices of the i40e
>> portioned out as netdevs. Do you see any problems with using a VMDQ
>> iwth zero-copy?

Today VMDQ VSIs are used when a macvlan interface is created on top of a 
i40e PF with l2-fwd-offload on. But i don't think we can create an 
AF_XDP zerocopy socket on top of a macvlan netdev as it doesn't support 
ndo_bpf or ndo_xdp_xxx apis or expose hw queues directly.

We need to expose VMDQ VSI as a native netdev that can expose its own 
queues and support ndo_ ops in order to enable AF_XDP zerocopy on a 
VMDQ. We talked about this approach at the recent netdev conference to 
expose VMDQ VSI as a subdevice with its own netdev.

https://netdevconf.info/0x14/session.html?talk-hardware-acceleration-of-container-networking-interfaces

> 
> No, I only meant to provide the actual reason (what you wrote above) in
> the commit message.
> 
>>
>> /Magnus
>>
>>>>
>>>> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
>>>> ---
>>>>   drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>>> index 2a1153d..ebe15ca 100644
>>>> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>>> @@ -45,7 +45,7 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>>>>        bool if_running;
>>>>        int err;
>>>>
>>>> -     if (vsi->type != I40E_VSI_MAIN)
>>>> +     if (!(vsi->type == I40E_VSI_MAIN || vsi->type == I40E_VSI_VMDQ2))
>>>>                return -EINVAL;
>>>>
>>>>        if (qid >= vsi->num_queue_pairs)
>>>> --
>>>> 2.7.4
>>>>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
