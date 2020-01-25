Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B66514957E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jan 2020 13:22:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC078882F3;
	Sat, 25 Jan 2020 12:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIOLK-CKWYNU; Sat, 25 Jan 2020 12:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 181BF8820A;
	Sat, 25 Jan 2020 12:22:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2388C1BF370
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 12:22:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F05C86F87
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 12:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHCF4rDZPBOf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jan 2020 12:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7559387447
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 12:22:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 04:22:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,361,1574150400"; d="scan'208";a="375744850"
Received: from vlifsht-mobl.ger.corp.intel.com (HELO [10.249.82.16])
 ([10.249.82.16])
 by orsmga004.jf.intel.com with ESMTP; 25 Jan 2020 04:22:28 -0800
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20200119100809.38869-1-vitaly.lifshits@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971CC4E7@ORSMSX103.amr.corp.intel.com>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <3b5bb66d-949e-e190-56c1-c067a2f3bb9b@intel.com>
Date: Sat, 25 Jan 2020 14:22:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B971CC4E7@ORSMSX103.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5
 Device Id of Tiger Lake
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/25/2020 04:45, Brown, Aaron F wrote:
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Vitaly Lifshits
>> Sent: Sunday, January 19, 2020 2:08 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5 Device
>> Id of Tiger Lake
>>
>> Added support to 0x15F5 Device ID which is part of Intel Tiger Lake
>> Platforms. This patch follows commit:
>> 776f5d57ee ("e1000e: Add support for Tiger Lake").
>>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/hw.h     | 1 +
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
>>   2 files changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h
>> b/drivers/net/ethernet/intel/e1000e/hw.h
>> index f556163481cb..b85210ef31d9 100644
>> --- a/drivers/net/ethernet/intel/e1000e/hw.h
>> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
>> @@ -97,6 +97,7 @@ struct e1000_hw;
>>   #define E1000_DEV_ID_PCH_TGP_I219_LM14		0x15F9
>>   #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
>>   #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
>> +#define E1000_DEV_ID_PCH_TGP_I219_V15		0x15F5
> <snip>
> 
> Something seems to be missing.  After building and booting to the kernel with this patch included I do not see the 15f5 device from modinfo:
> u1519:[1]/usr/src/kernels/next-queue> modinfo igc|grep -i 15f5
> u1519:[1]/usr/src/kernels/next-queue>
> 

If I understand your test correctly, I think you should run:
 > modinfo e1000e | grep -i 15f5

Since the patch is to e1000e module and not igc.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
