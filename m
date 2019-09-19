Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8215B72D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2019 07:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9C7187D6A;
	Thu, 19 Sep 2019 05:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id itmqRagQHSr0; Thu, 19 Sep 2019 05:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76C4A86A2E;
	Thu, 19 Sep 2019 05:48:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A881A1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 05:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96E388605E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 05:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FzrUafxB7dyD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2019 05:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3A1585FEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 05:48:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 22:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="187986001"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga007.fm.intel.com with ESMTP; 18 Sep 2019 22:48:25 -0700
To: Alexander Duyck <alexander.duyck@gmail.com>,
 David Arcari <darcari@redhat.com>
References: <20190910070512.31391-1-sasha.neftin@intel.com>
 <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
 <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <6c527dc7-e4f4-0cee-657e-e35af31c91fd@intel.com>
Date: Thu, 19 Sep 2019 08:48:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
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

On 9/18/2019 23:29, Alexander Duyck wrote:
> On Wed, Sep 18, 2019 at 12:29 PM David Arcari <darcari@redhat.com> wrote:
>>
>> Hi,
>>
>> On 09/10/2019 03:05 AM, Sasha Neftin wrote:
>>> Add multicast addresses list to the MTA table.
>>> Implement promiscious mode and add basic rx mode support.
>>> Add option for ipv6 address settings.
>>>
>>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>>
>> This seems to break ipv4 communication over vlans:
> 
Please, use follow commands for ipv6:
ip -6 addr add <ipv6address>/<prefixlength> dev <interface>

Example:
sudo ip -6 addr add fe80::2a0:c9ff:fe00:2/64 dev enp5s0

Remove ipv6 address:
sudo ip -6 addr del fe80::2a0:c9ff:fe00:2/64 dev enp5s0

ping -6 -I <interface> <address>
Example:
ping -6 -I enp4s0 fe80::2a0:c9ff:fe00:1
I've checked it on my side and looks ipv4 and ipv6 works.
Let me not agree with you in regards to break ipv4 communication over 
vlan. Since vlan not supported yet it can not be broken.
I am working to add VLAN support in my next patches.

> Why is this code messing with the VLANs? The patch description says it
> is enabling multicast and the MTA but it is messing with the VFTA
> table as well. That is probably what broke the VLANs.
> 
> I don't see the bits to support ndo_vlan_rx_[add|kill]_vid and without
> that it will break VLANs since the driver is filtering them unless
> promiscuous filtering is enabled. The VLAN changes should be moved
> into a separate patch.
> 
You are right. Few lines related to VFTA present here. Sorry about that. 
I did not mention add support for VLAN tagged frames in this patch. I 
plan to add VLAN support in my next patches.
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
