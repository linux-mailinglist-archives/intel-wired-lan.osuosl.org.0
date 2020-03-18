Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C82189638
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 08:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D7D288418;
	Wed, 18 Mar 2020 07:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqSs9s-lcTh1; Wed, 18 Mar 2020 07:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C87888466;
	Wed, 18 Mar 2020 07:32:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6471BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 07:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 620E488445
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 07:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNZfnxpCpEav for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 07:32:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 09F1288443
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 07:32:10 +0000 (UTC)
IronPort-SDR: J0oab8mSytLH09enwOAJNJt+5pTN0Ax413ZHcyKLJ6mTUjMt7hPXZXdK5wJtmQNNDGH88HTsPz
 D3zPbCosgnzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 00:32:10 -0700
IronPort-SDR: 3I4DL6HA1XsutDHdirBKH+C+Zdk9uykV1CONJcx57SZ8xxC1VsCKybcq37de98gaGimNWOj3Er
 MoFcAKcBMrMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="233760640"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.209.111])
 ([10.214.209.111])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2020 00:32:05 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
 <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
Date: Wed, 18 Mar 2020 09:32:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
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
Cc: "Shalev, Avi" <avi.shalev@intel.com>,
 Anthony Wong <anthony.wong@canonical.com>, Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/18/2020 05:12, Kai-Heng Feng wrote:
> Hi Vitaly,
> 
>> On Mar 17, 2020, at 22:39, Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
>>
>> On 3/17/2020 16:04, Kai-Heng Feng wrote:
>>>> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>>>
>>>> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>>>>> Hi,
>>>>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>>>>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>>>>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>>>>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>>>>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>>>>> Kai-Heng
>>>>> [1] https://bugs.launchpad.net/bugs/1865570
>>>>> [2] https://bugs.launchpad.net/bugs/1866170
>>>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
>>>> please, check of ME enabled on this system. try disable ME and re-run
>>> I disabled "Intel AMT", issue is still reproducible.
>>> Kai-Heng
>> Hi Kai,
>>
>> Do you work with cable connected?
> 
> No, ethernet cable is not plugged.
> 
>> If so, please try to run this command:
>> sudo echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore
> 
> Same issue after doing that.
> 
> Though unlikely, can this be caused by the special design of X1 Carbon?
> To keep the laptop thin, it doesn't have a RJ45 port. Instead it has a special connecter which requires a RJ45 dongle to support ethernet.
> Maybe that's why the PHY part isn't working after suspend?
> 
Hello Kai-Heng,
Thanks for your response. I would like clarify/understand Lenovo X1 
Carbon setup:
How laptop connected to the docking station? Thunderbolt or Lenovo 
proprietary connection?
Where is LAN located (physically) in a laptop or dock?
PHY located in docking, right?

And last question: does this system supported Sx or S0ix (do you know)?
The reason I ask it due from my understanding dock always connected to 
the power and system should be Sx supported.

Therefore may be we need introduce difference behavior between Sx and 
S0ix support. (if I understand correctly, such systems as Lenovo Carbon 
X1 should be Sx support, we need ignore S0ix entry/exit in such cases - 
ACPI interface should provide us with this info)

> Kai-Heng
> 
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
