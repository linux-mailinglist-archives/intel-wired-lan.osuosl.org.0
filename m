Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4505E192148
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 07:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6E1723042;
	Wed, 25 Mar 2020 06:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wgqMUoemlB7c; Wed, 25 Mar 2020 06:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8C682535C;
	Wed, 25 Mar 2020 06:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0D151BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC2ED86C6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvvcXVIlOYEB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 06:43:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1090F86C22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:04 +0000 (UTC)
IronPort-SDR: Ero5DK9sbYkRT5sgu5brkIxtQOkDnqWgt1nw59pWzva/82u9aYm9CjrDkP46j5PJjaR864qeOi
 kHjgUdxnzvBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 23:43:03 -0700
IronPort-SDR: 2mV35U+xgzl4jmo3HTIaf2P5n1oMkzKICgo+wd94ikwljKSXdhTZwZjopUXVQ5X9ZANYqDmzL9
 ZI31VERRCdjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; d="scan'208";a="446525271"
Received: from kmsmsx156.gar.corp.intel.com ([172.21.138.133])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2020 23:43:01 -0700
Received: from pgsmsx109.gar.corp.intel.com (10.221.44.109) by
 KMSMSX156.gar.corp.intel.com (172.21.138.133) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 25 Mar 2020 14:43:00 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.189]) by
 PGSMSX109.gar.corp.intel.com ([169.254.14.132]) with mapi id 14.03.0439.000;
 Wed, 25 Mar 2020 14:43:00 +0800
From: "Tsai, Rex" <rex.tsai@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>
Thread-Topic: [PATCH] e1000e: bump up timeout to wait when ME un-configure
 ULP mode
Thread-Index: AQHWAm/CtyGz6kX6QUmdKAyk1jOQIqhYVWOAgACGtaA=
Date: Wed, 25 Mar 2020 06:42:59 +0000
Message-ID: <D83742F1B1819A43B1E71852F964BF245D7698AD@PGSMSX101.gar.corp.intel.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <206441A5-70CF-4F34-93B2-90F4A846BF4E@canonical.com>
In-Reply-To: <206441A5-70CF-4F34-93B2-90F4A846BF4E@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Aaron Ma <aaron.ma@canonical.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Kai-Heng,
If you are using vPro system, ME LAN driver is always alive and you have no way to disable it until you build new BIOS. Is this also for Lenovo system?

Rex Tsai | Intel Client LAN Engineer | +1 (503) 264-0517

-----Original Message-----
From: Kai-Heng Feng <kai.heng.feng@canonical.com> 
Sent: Tuesday, March 24, 2020 11:40 PM
To: Neftin, Sasha <sasha.neftin@intel.com>
Cc: Aaron Ma <aaron.ma@canonical.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David Miller <davem@davemloft.net>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>; Lifshits, Vitaly <vitaly.lifshits@intel.com>; Tsai, Rex <rex.tsai@intel.com>
Subject: Re: [PATCH] e1000e: bump up timeout to wait when ME un-configure ULP mode

Hi Sasha,

> On Mar 25, 2020, at 14:36, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 3/25/2020 06:17, Kai-Heng Feng wrote:
>> Hi Aaron,
>>> On Mar 24, 2020, at 03:16, Aaron Ma <aaron.ma@canonical.com> wrote:
>>> 
>>> ME takes 2+ seconds to un-configure ULP mode done after resume from 
>>> s2idle on some ThinkPad laptops.
>>> Without enough wait, reset and re-init will fail with error.
>> Thanks, this patch solves the issue. We can drop the DMI quirk in favor of this patch.
>>> 
>>> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
>>> BugLink: https://bugs.launchpad.net/bugs/1865570
>>> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
>>> ---
>>> drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>> 
>>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> index b4135c50e905..147b15a2f8b3 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> @@ -1240,9 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>>> 			ew32(H2ME, mac_reg);
>>> 		}
>>> 
>>> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
>>> +		/* Poll up to 2.5sec for ME to clear ULP_CFG_DONE. */
>>> 		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
>>> -			if (i++ == 30) {
>>> +			if (i++ == 250) {
>>> 				ret_val = -E1000_ERR_PHY;
>>> 				goto out;
>>> 			}
>> The return value was not caught by the caller, so the error ends up unnoticed.
>> Maybe let the caller check the return value of e1000_disable_ulp_lpt_lp()?
>> Kai-Heng
> Hello Kai-Heng and Aaron,
> I a bit confused. In our previous conversation you told ME not running.

Yes I can confirm Intel AMT is disabled BIOS menu. I think Intel AMT is ME in this context?

How do I check if it's really disabled under Linux?

Kai-Heng

> let me shimming in. Increasing delay won't be solve the problem and just mask it. We need to understand why ME take too much time. What is problem with this specific system?
> So, basically no ME system should works for you.
> 
> Meanwhile I prefer keep DMI quirk.
> Thanks,
> Sasha
>>> --
>>> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
