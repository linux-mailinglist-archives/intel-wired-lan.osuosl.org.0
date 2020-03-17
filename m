Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E75B1887AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2020 15:40:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06A3826B5A;
	Tue, 17 Mar 2020 14:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDLW7WoDxMie; Tue, 17 Mar 2020 14:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5EF126984;
	Tue, 17 Mar 2020 14:40:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 419D51BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DCF4870F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dji1nra8LntC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2020 14:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16209870EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:40:01 +0000 (UTC)
IronPort-SDR: dSqi5rfqtaJON5NXNSaCUtQIOFV64nan9cPGX+XYlCaxT/NqjBPwAeATBEK0J7tcPKCFOc4PFK
 udgfNJaFxWeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 07:39:49 -0700
IronPort-SDR: 5/UTFbSasSe/gQYujzRY5LAd1NOCrWQXAvdRC5kynohj3SbmLZH+7417Ri4zdPt1hChIV0Lpjf
 cHp0KFrxbXFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="236350017"
Received: from vlifsht-mobl.ger.corp.intel.com (HELO [10.251.163.71])
 ([10.251.163.71])
 by fmsmga007.fm.intel.com with ESMTP; 17 Mar 2020 07:39:47 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
Date: Tue, 17 Mar 2020 16:39:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
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
Cc: Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/17/2020 16:04, Kai-Heng Feng wrote:
> 
> 
>> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>
>> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>>> Hi,
>>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>>> Kai-Heng
>>> [1] https://bugs.launchpad.net/bugs/1865570
>>> [2] https://bugs.launchpad.net/bugs/1866170
>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
>> please, check of ME enabled on this system. try disable ME and re-run
> 
> I disabled "Intel AMT", issue is still reproducible.
> 
> Kai-Heng
> 
Hi Kai,

Do you work with cable connected?
If so, please try to run this command:
sudo echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
