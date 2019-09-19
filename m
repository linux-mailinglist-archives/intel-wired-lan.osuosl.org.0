Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894ACB78AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2019 13:49:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22AB187E81;
	Thu, 19 Sep 2019 11:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Va1B4SQ3fwUr; Thu, 19 Sep 2019 11:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 749DA87E30;
	Thu, 19 Sep 2019 11:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDB851BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 11:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E9C3B84426
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 11:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKh3auEKF8gZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2019 11:49:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B307B841B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2019 11:49:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 09854308A9E2;
 Thu, 19 Sep 2019 11:49:28 +0000 (UTC)
Received: from darcari.bos.csb (dhcp-17-162.bos.redhat.com [10.18.17.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D6645D9CC;
 Thu, 19 Sep 2019 11:49:27 +0000 (UTC)
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <20190910070512.31391-1-sasha.neftin@intel.com>
 <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
 <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
 <6c527dc7-e4f4-0cee-657e-e35af31c91fd@intel.com>
From: David Arcari <darcari@redhat.com>
Organization: Red Hat
Message-ID: <c83ff718-22e6-996f-7dea-b16317e1a969@redhat.com>
Date: Thu, 19 Sep 2019 07:49:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <6c527dc7-e4f4-0cee-657e-e35af31c91fd@intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 19 Sep 2019 11:49:28 +0000 (UTC)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/19/2019 01:48 AM, Neftin, Sasha wrote:
> On 9/18/2019 23:29, Alexander Duyck wrote:
>> On Wed, Sep 18, 2019 at 12:29 PM David Arcari <darcari@redhat.com> wrote:
>>>
>>> Hi,
>>>
>>> On 09/10/2019 03:05 AM, Sasha Neftin wrote:
>>>> Add multicast addresses list to the MTA table.
>>>> Implement promiscious mode and add basic rx mode support.
>>>> Add option for ipv6 address settings.
>>>>
>>>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>>>
>>> This seems to break ipv4 communication over vlans:
>>
> Please, use follow commands for ipv6:
> ip -6 addr add <ipv6address>/<prefixlength> dev <interface>
> 
> Example:
> sudo ip -6 addr add fe80::2a0:c9ff:fe00:2/64 dev enp5s0
> 
> Remove ipv6 address:
> sudo ip -6 addr del fe80::2a0:c9ff:fe00:2/64 dev enp5s0
> 
> ping -6 -I <interface> <address>
> Example:
> ping -6 -I enp4s0 fe80::2a0:c9ff:fe00:1
> I've checked it on my side and looks ipv4 and ipv6 works.

I'm no longer having connectivity issue with ipv6 with this commit applied.

> Let me not agree with you in regards to break ipv4 communication over 
> vlan. Since vlan not supported yet it can not be broken.

Well - interestingly enough vlan connectivity was working for ipv4 before this
commit.  I guess it was just good fortune.

-DA


> I am working to add VLAN support in my next patches.
> 
>> Why is this code messing with the VLANs? The patch description says it
>> is enabling multicast and the MTA but it is messing with the VFTA
>> table as well. That is probably what broke the VLANs.
>>
>> I don't see the bits to support ndo_vlan_rx_[add|kill]_vid and without
>> that it will break VLANs since the driver is filtering them unless
>> promiscuous filtering is enabled. The VLAN changes should be moved
>> into a separate patch.
>>
> You are right. Few lines related to VFTA present here. Sorry about that. 
> I did not mention add support for VLAN tagged frames in this patch. I 
> plan to add VLAN support in my next patches.
> Sasha
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
