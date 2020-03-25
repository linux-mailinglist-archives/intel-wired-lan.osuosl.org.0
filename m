Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F729197F31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2020 17:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 902EF866F2;
	Mon, 30 Mar 2020 15:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHfVlAGiw-qI; Mon, 30 Mar 2020 15:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 913C586702;
	Mon, 30 Mar 2020 15:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A00031BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B4BB860DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4gJXB6mZHgI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 06:49:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD937860D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:49:13 +0000 (UTC)
Received: from [222.129.50.174] (helo=[192.168.1.33])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jGzqg-0008Bj-AY; Wed, 25 Mar 2020 06:49:10 +0000
To: "Tsai, Rex" <rex.tsai@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <206441A5-70CF-4F34-93B2-90F4A846BF4E@canonical.com>
 <D83742F1B1819A43B1E71852F964BF245D7698AD@PGSMSX101.gar.corp.intel.com>
From: Aaron Ma <aaron.ma@canonical.com>
Autocrypt: addr=aaron.ma@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFffeLkBCACi4eE4dPsgWN6B9UDOVcAvb5QgU/hRG6yS0I1lGKQv4KA+bke0c5g8clbO
 9gIlIl2bityfA9NzBsDik4Iei3AxMbFyxv9keMwcOFQBIOZF0P3f05qjxftF8P+yp9QTV4hp
 BkFzsXzWRgXN3r8hU8wqZybepF4B1C83sm2kQ5A5N0AUGbZli9i2G+/VscG9sWfLy8T7f4YW
 MjmlijCjoV6k29vsmTWQPZ7EApNpvR5BnZQPmQWzkkr0lNXlsKcyLgefQtlwg6drK4fe4wz0
 ouBIHJEiXE1LWK1hUzkCUASra4WRwKk1Mv/NLLE/aJRqEvF2ukt3uVuM77RWfl7/H/v5ABEB
 AAG0IUFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPokBNwQTAQgAIQUCV994uQIb
 AwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDNxCzQfVU6ntJ9B/9aVy0+RkLqF9QpLmw+
 LAf1m3Fd+4ZarPTerqDqkLla3ekYhbrEtlI1mYuB5f+gtrIjmcW27gacHdslKB9YwaL8B4ZB
 GJKhcrntLg4YPzYUnXZkHHTv1hMw7fBYw82cBT+EbG0Djh6Po6Ihqyr3auHhfFcp1PZH4Mtq
 6hN5KaDZzF/go+tRF5e4bn61Nhdue7mrhFSlfkzLG2ehHWmRV+S91ksH81YDFnazK0sRINBx
 V1S8ts3WJ2f1AbgmnDlbK3c/AfI5YxnIHn/x2ZdXj1P/wn7DgZHmpMy5DMuk0gN34NLUPLA/
 cHeKoBAF8emugljiKecKBpMTLe8FrVOxbkrauQENBFffeLkBCACweKP3Wx+gK81+rOUpuQ00
 sCyKzdtMuXXJ7oL4GzYHbLfJq+F+UHpQbytVGTn3R5+Y61v41g2zTYZooaC+Hs1+ixf+buG2
 +2LZjPSELWPNzH9lsKNlCcEvu1XhyyHkBDbnFFHWlUlql3nSXMo//dOTG/XGKaEaZUxjCLUC
 8ehLc16DJDvdXsPwWhHrCH/4k92F6qQ14QigBMsl75jDTDJMEYgRYEBT1D/bwxdIeoN1BfIG
 mYgf059RrWax4SMiJtVDSUuDOpdwoEcZ0FWesRfbFrM+k/XKiIbjMZSvLunA4FIsOdWYOob4
 Hh0rsm1G+fBLYtT+bE26OWpQ/lSn4TdhABEBAAGJAR8EGAEIAAkFAlffeLkCGwwACgkQzcQs
 0H1VOp6p5Af/ap5EVuP1AhFdPD3pXLNrUUt72W3cuAOjXyss43qFC2YRjGfktrizsDjQU46g
 VKoD6EW9XUPgvYM+k8BJEoXDLhHWnCnMKlbHP3OImxzLRhF4kdlnLicz1zKRcessQatRpJgG
 NIiD+eFyh0CZcWBO1BB5rWikjO/idicHao2stFdaBmIeXvhT9Xp6XNFEmzOmfHps+kKpWshY
 9LDAU0ERBNsW4bekOCa/QxfqcbZYRjrVQvya0EhrPhq0bBpzkIL/7QSBMcdv6IajTlHnLARF
 nAIofCEKeEl7+ksiRapL5Nykcbt4dldE3sQWxIybC94SZ4inENKw6I8RNpigWm0R5w==
Message-ID: <964891a2-f77a-47dc-684b-60b2644fa00c@canonical.com>
Date: Wed, 25 Mar 2020 14:49:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <D83742F1B1819A43B1E71852F964BF245D7698AD@PGSMSX101.gar.corp.intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 30 Mar 2020 15:03:35 +0000
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
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/25/20 2:42 PM, Tsai, Rex wrote:
> Hello Kai-Heng,
> If you are using vPro system, ME LAN driver is always alive and you have no way to disable it until you build new BIOS. Is this also for Lenovo system?

Right, some new models from Lenovo.

Regards,
Aaron

> 
> Rex Tsai | Intel Client LAN Engineer | +1 (503) 264-0517
> 
> -----Original Message-----
> From: Kai-Heng Feng <kai.heng.feng@canonical.com> 
> Sent: Tuesday, March 24, 2020 11:40 PM
> To: Neftin, Sasha <sasha.neftin@intel.com>
> Cc: Aaron Ma <aaron.ma@canonical.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David Miller <davem@davemloft.net>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>; Lifshits, Vitaly <vitaly.lifshits@intel.com>; Tsai, Rex <rex.tsai@intel.com>
> Subject: Re: [PATCH] e1000e: bump up timeout to wait when ME un-configure ULP mode
> 
> Hi Sasha,
> 
>> On Mar 25, 2020, at 14:36, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>
>> On 3/25/2020 06:17, Kai-Heng Feng wrote:
>>> Hi Aaron,
>>>> On Mar 24, 2020, at 03:16, Aaron Ma <aaron.ma@canonical.com> wrote:
>>>>
>>>> ME takes 2+ seconds to un-configure ULP mode done after resume from 
>>>> s2idle on some ThinkPad laptops.
>>>> Without enough wait, reset and re-init will fail with error.
>>> Thanks, this patch solves the issue. We can drop the DMI quirk in favor of this patch.
>>>>
>>>> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
>>>> BugLink: https://bugs.launchpad.net/bugs/1865570
>>>> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
>>>> ---
>>>> drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>>>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> index b4135c50e905..147b15a2f8b3 100644
>>>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> @@ -1240,9 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>>>> 			ew32(H2ME, mac_reg);
>>>> 		}
>>>>
>>>> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
>>>> +		/* Poll up to 2.5sec for ME to clear ULP_CFG_DONE. */
>>>> 		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
>>>> -			if (i++ == 30) {
>>>> +			if (i++ == 250) {
>>>> 				ret_val = -E1000_ERR_PHY;
>>>> 				goto out;
>>>> 			}
>>> The return value was not caught by the caller, so the error ends up unnoticed.
>>> Maybe let the caller check the return value of e1000_disable_ulp_lpt_lp()?
>>> Kai-Heng
>> Hello Kai-Heng and Aaron,
>> I a bit confused. In our previous conversation you told ME not running.
> 
> Yes I can confirm Intel AMT is disabled BIOS menu. I think Intel AMT is ME in this context?
> 
> How do I check if it's really disabled under Linux?
> 
> Kai-Heng
> 
>> let me shimming in. Increasing delay won't be solve the problem and just mask it. We need to understand why ME take too much time. What is problem with this specific system?
>> So, basically no ME system should works for you.
>>
>> Meanwhile I prefer keep DMI quirk.
>> Thanks,
>> Sasha
>>>> --
>>>> 2.17.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
