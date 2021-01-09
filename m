Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D6E2EFC7B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Jan 2021 01:54:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0E1586EDC;
	Sat,  9 Jan 2021 00:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k5Y66xJGjyPB; Sat,  9 Jan 2021 00:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE5F387019;
	Sat,  9 Jan 2021 00:54:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 563A81BF406
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 00:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5074C86EDC
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 00:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrDCbofrUkdp for <intel-wired-lan@osuosl.org>;
 Sat,  9 Jan 2021 00:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93B0786ECC
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 00:54:19 +0000 (UTC)
IronPort-SDR: taaj+9yNuDCcNqzh6isFCPmFaW8IrF/TC4y1FwLGs/V4Qes6woMaqooNCYdPkxkx0Bvx6rYuht
 8D5FCemdcv6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="174166012"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="174166012"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 16:54:18 -0800
IronPort-SDR: K6pmx6texZX4JyvbESHdkSmz3mlstfzAvBYeYMdw4TmpTrOD4C2StfYie35Uj3HzwvmD7sY2bA
 FjMah4nM629A==
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="399155516"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.196.132])
 ([10.212.196.132])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 16:54:18 -0800
To: intel-wired-lan@osuosl.org
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <CANn89iLcRrmXW_MGjuMMnNxWS+kaEnY=Y79hCPuiwiDd_G9=EA@mail.gmail.com>
 <20210108103537.00005168@intel.com>
 <CANn89iL8KZGQhNbwwYRS2POkc_VEiSCecOyaCF4z95=StRn_xQ@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <74aeaa53-90cb-f2af-ede8-a40e92f3af80@intel.com>
Date: Fri, 8 Jan 2021 16:54:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CANn89iL8KZGQhNbwwYRS2POkc_VEiSCecOyaCF4z95=StRn_xQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/8/2021 10:45 AM, Eric Dumazet wrote:
> On Fri, Jan 8, 2021 at 7:35 PM Jesse Brandeburg
> <jesse.brandeburg@intel.com> wrote:
>>
>> Eric Dumazet wrote:
>>>> --- a/net/core/dev.c
>>>> +++ b/net/core/dev.c
>>>> @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
>>>>                 break;
>>>>
>>>>         case GRO_DROP:
>>>> +               atomic_long_inc(&skb->dev->rx_dropped);
>>>>                 kfree_skb(skb);
>>>>                 break;
>>>>
>>>> @@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
>>>>                 break;
>>>>
>>>>         case GRO_DROP:
>>>> +               atomic_long_inc(&skb->dev->rx_dropped);
>>>>                 napi_reuse_skb(napi, skb);
>>>>                 break;
>>>>
>>>
>>>
>>> This is not needed. I think we should clean up ice instead.
>>
>> My patch 2 already did that. I was trying to address the fact that I'm
>> *actually seeing* GRO_DROP return codes coming back from stack.
>>
>> I'll try to reproduce that issue again that I saw. Maybe modern kernels
>> don't have the problem as frequently or at all.
> 
> 
> Jesse, you are sending a patch for current kernels.
> 
> It is pretty clear that the issue you have can not happen with current
> kernels, by reading the code source,
> even without an actual ICE piece of hardware to test this :)
> 

FWIW, I did some digging through the history to see what might have
removed other possible GRO_DROP returns. I found this commit:

6570bc79c0df ("net: core: use listified Rx for GRO_NORMAL in
napi_gro_receive()")

It seems to have modified napi_skb_finish in such a way that it no
longer reports GRO_DROP.

I had trouble finding the other cases where GRO_DROP was removed, but I
also am in favor of just removing it entirely at this point.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
