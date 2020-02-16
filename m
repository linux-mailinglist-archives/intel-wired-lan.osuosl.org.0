Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFC61602FB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2020 09:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BC84877AE;
	Sun, 16 Feb 2020 08:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBh4YZH4+fZS; Sun, 16 Feb 2020 08:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDA758778E;
	Sun, 16 Feb 2020 08:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77EA71BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2020 08:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E4A720030
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2020 08:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dY0q29SyWy4d for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2020 08:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 79DF82002F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2020 08:40:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Feb 2020 00:40:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,448,1574150400"; d="scan'208";a="282248648"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Feb 2020 00:40:55 -0800
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20200205123115.44103-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971F357D@ORSMSX103.amr.corp.intel.com>
 <CAKgT0UfvFZBPEYf1-b+WU48RKk1_sp8xzJtKe6rAXAk8_bCZ9Q@mail.gmail.com>
 <c6c9c3e0-5c56-5f4f-8975-a46f8c5a08af@intel.com>
 <CAKgT0UejnOv1p4TQJ+CcMkJ-d4nGpBxVaOZJRfN6q7muvrp+XQ@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <f04aad5d-7225-cd81-3b15-f3aa1af75b86@intel.com>
Date: Sun, 16 Feb 2020 10:40:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CAKgT0UejnOv1p4TQJ+CcMkJ-d4nGpBxVaOZJRfN6q7muvrp+XQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
 support for TSO
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/13/2020 18:59, Alexander Duyck wrote:
> On Thu, Feb 13, 2020 at 12:02 AM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>
>> On 2/13/2020 00:47, Alexander Duyck wrote:
>>> On Wed, Feb 12, 2020 at 2:39 PM Brown, Aaron F <aaron.f.brown@intel.com> wrote:
>>>>
>>>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>>>> Sasha Neftin
>>>>> Sent: Wednesday, February 5, 2020 4:31 AM
>>>>> To: intel-wired-lan@lists.osuosl.org
>>>>> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
>>>>> support for TSO
>>>>>
>>>>> commit f38b782dccab ("igc: Add support for TSO")
>>>>> Add option to setting transmit command (TUCMD) of the context
>>>>> descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.
>>>>>
>>>>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>>>>> ---
>>>>>    drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
>>>>>    drivers/net/ethernet/intel/igc/igc_main.c    | 3 ++-
>>>>>    2 files changed, 3 insertions(+), 1 deletion(-)
>>>>>
>>>> Aside from possibly including the responses to Jesse's questions on this...
>>>> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
>>>
>>> I'm not sure the patch makes any sense. Does the driver support UDP
>>> GSO? I don't see the feature flag (NETIF_F_GSO_UDP_L4) anywhere that
>>> enables it.
>>>
>> Yes, it is supported. The MAC is similar to igb from segmentation
>> perspectives. I missed add it. Please, let me finish some testing and I
>> will add NETIF_F_GSO_UDP_L4 flag to _features_check and _probe methods.
> 
> Thats fine. I just wouldn't submit this patch as it is. It should be
> adding the NETIF_F_GSO_UDP_L4 flag so you can actually test the code
> and verify the hardware is handling it correctly.
> 
Thanks Alex. I will address fix in v2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
