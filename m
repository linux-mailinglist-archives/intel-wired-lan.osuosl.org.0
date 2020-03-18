Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0309A18976B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 09:51:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D98F887F3;
	Wed, 18 Mar 2020 08:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-Jf9MLVaxNN; Wed, 18 Mar 2020 08:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 145AB887A4;
	Wed, 18 Mar 2020 08:51:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7287D1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D43E88782
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xt+N3fg74MuB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 08:50:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F08E18877C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:50:24 +0000 (UTC)
IronPort-SDR: 3464WJ8fx4EqM3spJFX1UAbZa1lD7svZiQazukOocmWKED+eadZwdufVhrwkVQK0axVHXpNAdI
 SWvGpuV1MA6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 01:50:24 -0700
IronPort-SDR: DNtZOmza5H+dnA/FOvtUuFdGyZCwjMv0O97mS4dU4scOyZI805qD9btvzPet2vgfeRXQo1qxK9
 tg+fbfER41dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="233776801"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.209.111])
 ([10.214.209.111])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2020 01:50:20 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
 <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
 <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
 <FFE42849-4E95-4ADC-9B46-7A0F5B58508B@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <6c1bcb34-a713-a6ea-7def-8a0e553ea0bb@intel.com>
Date: Wed, 18 Mar 2020 10:50:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <FFE42849-4E95-4ADC-9B46-7A0F5B58508B@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
 breaks s2idle on Lenovo X1 Carbon 7th
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
Cc: "Shalev, Avi" <avi.shalev@intel.com>, Jason Yen <jason.yen@canonical.com>,
 Anthony Wong <anthony.wong@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/18/2020 10:23, Kai-Heng Feng wrote:
> Hi Sasha,
> 
>> On Mar 18, 2020, at 15:32, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>
>> On 3/18/2020 05:12, Kai-Heng Feng wrote:
>>> Hi Vitaly,
>>>> On Mar 17, 2020, at 22:39, Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
>>>>
>>>> On 3/17/2020 16:04, Kai-Heng Feng wrote:
>>>>>> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>>>>>
>>>>>> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>>>>>>> Hi,
>>>>>>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>>>>>>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>>>>>>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>>>>>>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>>>>>>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>>>>>>> Kai-Heng
>>>>>>> [1] https://bugs.launchpad.net/bugs/1865570
>>>>>>> [2] https://bugs.launchpad.net/bugs/1866170
>>>>>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
>>>>>> please, check of ME enabled on this system. try disable ME and re-run
>>>>> I disabled "Intel AMT", issue is still reproducible.
>>>>> Kai-Heng
>>>> Hi Kai,
>>>>
>>>> Do you work with cable connected?
>>> No, ethernet cable is not plugged.
>>>> If so, please try to run this command:
>>>> sudo echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore
>>> Same issue after doing that.
>>> Though unlikely, can this be caused by the special design of X1 Carbon?
>>> To keep the laptop thin, it doesn't have a RJ45 port. Instead it has a special connecter which requires a RJ45 dongle to support ethernet.
>>> Maybe that's why the PHY part isn't working after suspend?
>> Hello Kai-Heng,
>> Thanks for your response. I would like clarify/understand Lenovo X1 Carbon setup:
>> How laptop connected to the docking station?
> 
> There's no docking station involved. Just a regular e1000e device connects to root complex.
> 
>> Thunderbolt or Lenovo proprietary connection?
> 
> No thunderbolt involved.
> 
> I'd say it's proprietary:
> https://www.lenovo.com/us/en/accessories-and-monitors/cables-and-adapters/adapters/CABLE-BO-Ethernet-Extension-Adapter-2/p/4X90Q84427
> 
> The ethernet port is next to thunderbolt, but it's not thunderbolt:
> https://images.idgesg.net/images/article/2018/08/left-ports-100769115-orig.jpg
> 
>> Where is LAN located (physically) in a laptop or dock?
>> PHY located in docking, right?
> 
> This I don't know. I'll raise the issue to Lenovo hardware team.
> 
ok, let's understand where is PHY location.
Since no docking connected why driver should run? There is no RJ45 port 
on laptop.
S0ix flow same (I got confirmation from our architecture team) and 
should haven't impact on Sx.
if PHY located externally... during S0ix flow we try access to the PHY 
and it can be problem. Since laptop have no RJ45 connector driver not 
expected to run I though.
>>
>> And last question: does this system supported Sx or S0ix (do you know)?
> 
> Sx you mean S3?
> 
> I think the system supports S3 but it defaults to S0ix.
> 
>> The reason I ask it due from my understanding dock always connected to the power and system should be Sx supported.
> 
> There's no dock.
> For this issue, _nothing_ connects to the ethernet port.
> 
>>
>> Therefore may be we need introduce difference behavior between Sx and S0ix support. (if I understand correctly, such systems as Lenovo Carbon X1 should be Sx support, we need ignore S0ix entry/exit in such cases - ACPI interface should provide us with this info)
> 
> For this case S0ix is used.
> 
> Kai-Heng
> 
>>
>>> Kai-Heng
>> Sasha
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
