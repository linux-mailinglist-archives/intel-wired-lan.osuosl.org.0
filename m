Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D047414A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8504041BAE;
	Wed, 28 Jun 2023 15:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8504041BAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965162;
	bh=A/T86VFVQGTN/QJhmXyQxNGJt1k+hakVtxtcvaBq+4c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=t9Jgz7Z7HQo2LgHEfriFr58OlpSDG6B1mUyBBbWabjgkyDTOOsngWVK7Q7tGpa2Xs
	 SKtPZRXriXK77/BQnXLYSZIkuxkVG7pBq5T1ev7arnGi4DbyLbwYfWHidQaqb3bvl6
	 3GseoGICw36RXxadbTiCqanAEGyo+mIeW0VfqAGZQ0m3u0qU0PDmHivhkqtU6E2jKS
	 /eER8HwE2YywVvSNjzsVFPiQv6UURnIQr0EVwqmnrYD6FHGVgU1jkUHZIInL1bvY79
	 vYtrzUmZTbPfw2TDKBOpLOpCuKkm1HehXgLkoduLhfrYPzZxJGAGNUOBnICX5TlFZG
	 qXmp00YsmWVZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gYlCdn4gT1G; Wed, 28 Jun 2023 15:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2335B408F2;
	Wed, 28 Jun 2023 15:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2335B408F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7AC01BF27C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF01660B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF01660B1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1_lX0xqxOA6Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 09:02:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDC9C60B1C
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp3.osuosl.org (Postfix) with SMTP id CDC9C60B1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:02:26 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 38A89605F6240; 
 Wed, 28 Jun 2023 17:01:59 +0800 (CST)
Message-ID: <734b846f-3235-f2e3-db06-6e852803cd7f@nfschina.com>
Date: Wed, 28 Jun 2023 17:01:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Hao Lan <lanhao@huawei.com>, andrew@lunn.ch, f.fainelli@gmail.com,
 olteanv@gmail.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, irusskikh@marvell.com,
 yisen.zhuang@huawei.com, salil.mehta@huawei.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, steve.glendinning@shawell.net,
 iyappan@os.amperecomputing.com, keyur@os.amperecomputing.com,
 quan@os.amperecomputing.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
 mostrows@earthlink.net, xeb@mail.ru, qiang.zhao@nxp.com
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: yunchuan <yunchuan@nfschina.com>
In-Reply-To: <1f5652f7-7eb2-11f0-4a07-c87f2992e509@huawei.com>
X-Mailman-Approved-At: Wed, 28 Jun 2023 15:12:26 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Remove unnecessary
 (void*) conversions
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 intel-wired-lan@lists.osuosl.org, yangyingliang@huawei.com,
 linuxppc-dev@lists.ozlabs.org, ansuelsmth@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/6/28 15:41, Hao Lan wrote:
>
> On 2023/6/28 10:41, wuych wrote:
>> Remove (void*) conversions under "drivers/net" directory.
>> According to the suggestion[1] of Jakub Kicinski, send these patches
>> in series of 10.
>>
>> wuych (10):
>>    net: dsa: ar9331: remove unnecessary (void*) conversions
>>    net: dsa: qca8k: remove unnecessary (void*) conversions
>>    atlantic:hw_atl2:hw_atl2_utils_fw: Remove unnecessary (void*)
>>      conversions
>>    ice: Remove unnecessary (void*) conversions
>>    ethernet: smsc: remove unnecessary (void*) conversions
>>    net: hns: Remove unnecessary (void*) conversions
>>    net: hns3: remove unnecessary (void*) conversions
>>    net: mdio: Remove unnecessary (void*) conversions
>>    net: ppp: remove unnecessary (void*) conversions
>>    net: wan: Remove unnecessary (void*) conversions
>>
> Hi wuych,
> Thank you for your patch.
> The following two patches conflict with the net-next branch, and others have modified the related code.
> Please compile your series in net and net-next branch and upload your series again.
>    net: dsa: ar9331: remove unnecessary (void*) conversions
>    net: dsa: qca8k: remove unnecessary (void*) conversions

Hi, Hao Lan,

Sorry for that, I just compiled these patches in the mainline branch.
I know now, it's also necessary to compile patches in net and net-next 
branch.
Thanks for your reply!

wuych

>
> Yours,
> Hao Lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
