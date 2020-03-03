Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D8B177C74
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 17:54:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9447B877E7;
	Tue,  3 Mar 2020 16:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZoIoBYMiXyV; Tue,  3 Mar 2020 16:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9412287527;
	Tue,  3 Mar 2020 16:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4B8C1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C01618733C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X178kk3Yn-p3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2020 16:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D57B186FAE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:54:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 08:54:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="438795285"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.24.14.59])
 ([10.24.14.59])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2020 08:53:59 -0800
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20200302202307.23260-1-sasha.neftin@intel.com>
 <CAKgT0UdFW1KbAzsUX2o7-UDD1ay70euxs6Ts=RjYN4dfFEE6Fg@mail.gmail.com>
 <549bd226-b5fa-eb68-44a5-f77dcaf28c5a@intel.com>
 <CAKgT0Uc-nbt+8+gbNWabWrA0xZrUFqBtvUWNiNNpKMD-XhCCKg@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <34ce59bd-28a7-ebe4-dea7-33ec6420ea55@intel.com>
Date: Tue, 3 Mar 2020 08:53:59 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0Uc-nbt+8+gbNWabWrA0xZrUFqBtvUWNiNNpKMD-XhCCKg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove copper fiber
 switch control
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

On 3/3/2020 08:00, Alexander Duyck wrote:
> On Mon, Mar 2, 2020 at 4:44 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>
>> On 3/2/2020 13:26, Alexander Duyck wrote:
>>> On Mon, Mar 2, 2020 at 12:23 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
>>>>
>>>> i225 device support copper mode only
>>>> PHY signal detect indication for copper fiber switch
>>>> not applicable to i225 part
>>>>
>>>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>>>
>>> So there are a couple issues with this patch.
>>>
>>> All the changes in igc_ethtool.c are broken at this point. Once a
>>> register is defined in regs_buff you cannot change it. Otherwise you
>>> cannot debug this in the future. You would be better off just skipping
>>> the register that you were storing CONNSW and let it default to zero
>>> instead of doing all of the shifting you are doing. You can just skip
>>> over the register in the dump in ethtool assuming there is even a file
>>> for the device that hasbeen added.
>>>
>> This change not affected igc_ethtool.c behavior. I see the same behavior
>> on my setup.
>> Actually ethtool --register-dump not called (as properly).get_regs
>> callback from igc_ethtool.c. This is not related to this patch and I
>> need investigate and fix it.
>> ethtool --register-dump <adapter> show me row generic data. Data is
>> really from i225 registers, but not parcered as for other drivers.
>>
> 
> Right. It isn't implemented yet, but you don't want to break it. The
> logic for the register dump assumes the register locations are fixed.
> So once you released this the first time you cannot move the registers
> around. You can drop registers or add registers, but once they are in
> the list they are permanently in that position. If you don't do that
> you will never be able to decode the data.
> 
ok. I will re-send v2 and leave igc_ethtool.c no changes at this point.
Sasha
> - Alex
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
