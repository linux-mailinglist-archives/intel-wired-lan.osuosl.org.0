Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB302B79E7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2019 14:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6793585EF9;
	Thu, 19 Sep 2019 12:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XF6NaVNG9h-o; Thu, 19 Sep 2019 12:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E32E86A1E;
	Thu, 19 Sep 2019 12:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7FC1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 12:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A195185FD6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 12:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7rzFPQPVPCi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2019 12:56:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB18F85F91
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 12:56:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 05:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="188080863"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga007.fm.intel.com with ESMTP; 19 Sep 2019 05:56:42 -0700
To: David Arcari <darcari@redhat.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <20190910070512.31391-1-sasha.neftin@intel.com>
 <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
 <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
 <6c527dc7-e4f4-0cee-657e-e35af31c91fd@intel.com>
 <c83ff718-22e6-996f-7dea-b16317e1a969@redhat.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <bedf2d12-9a0e-2633-2d02-27c35d03fc35@intel.com>
Date: Thu, 19 Sep 2019 15:56:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c83ff718-22e6-996f-7dea-b16317e1a969@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/19/2019 14:49, David Arcari wrote:
> On 09/19/2019 01:48 AM, Neftin, Sasha wrote:
>> On 9/18/2019 23:29, Alexander Duyck wrote:
>>> On Wed, Sep 18, 2019 at 12:29 PM David Arcari <darcari@redhat.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 09/10/2019 03:05 AM, Sasha Neftin wrote:
>>>>> Add multicast addresses list to the MTA table.
>>>>> Implement promiscious mode and add basic rx mode support.
>>>>> Add option for ipv6 address settings.
>>>>>
>>>>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>>>>
>>>> This seems to break ipv4 communication over vlans:
>>>
>> Please, use follow commands for ipv6:
>> ip -6 addr add <ipv6address>/<prefixlength> dev <interface>
>>
>> Example:
>> sudo ip -6 addr add fe80::2a0:c9ff:fe00:2/64 dev enp5s0
>>
>> Remove ipv6 address:
>> sudo ip -6 addr del fe80::2a0:c9ff:fe00:2/64 dev enp5s0
>>
>> ping -6 -I <interface> <address>
>> Example:
>> ping -6 -I enp4s0 fe80::2a0:c9ff:fe00:1
>> I've checked it on my side and looks ipv4 and ipv6 works.
> 
> I'm no longer having connectivity issue with ipv6 with this commit applied.
> 
Thanks to confirming that.
>> Let me not agree with you in regards to break ipv4 communication over
>> vlan. Since vlan not supported yet it can not be broken.
> 
> Well - interestingly enough vlan connectivity was working for ipv4 before this
> commit.  I guess it was just good fortune.
> 
> -DA
> 
Interesting. Okay, anyway, I plan add vlan support in future and will 
share with you.
Sasha
> 
>> I am working to add VLAN support in my next patches.
>>
>>> Why is this code messing with the VLANs? The patch description says it
>>> is enabling multicast and the MTA but it is messing with the VFTA
>>> table as well. That is probably what broke the VLANs.
>>>
>>> I don't see the bits to support ndo_vlan_rx_[add|kill]_vid and without
>>> that it will break VLANs since the driver is filtering them unless
>>> promiscuous filtering is enabled. The VLAN changes should be moved
>>> into a separate patch.
>>>
>> You are right. Few lines related to VFTA present here. Sorry about that.
>> I did not mention add support for VLAN tagged frames in this patch. I
>> plan to add VLAN support in my next patches.
>> Sasha
>>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
