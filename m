Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D80C8149995
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Jan 2020 08:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F42286138;
	Sun, 26 Jan 2020 07:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivDPnFF62gSu; Sun, 26 Jan 2020 07:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C317086146;
	Sun, 26 Jan 2020 07:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4962B1BF315
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 07:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4274A87AEE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 07:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmL3DSAyfjNd for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Jan 2020 07:50:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CF208790D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 07:50:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 23:50:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,364,1574150400"; d="scan'208";a="222234958"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jan 2020 23:50:40 -0800
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20200119115713.12710-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971CC502@ORSMSX103.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <835b1769-42e3-f8f2-fc5f-ed811328e3e2@intel.com>
Date: Sun, 26 Jan 2020 09:50:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B971CC502@ORSMSX103.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
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

On 1/25/2020 04:50, Brown, Aaron F wrote:
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Sasha Neftin
>> Sent: Sunday, January 19, 2020 3:57 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
>>
>> Add devices ID's for the next LOM generations that will be
>> available on the next Intel Client platform (Alder Lake)
>> This patch provides the initial support for these devices
>>
>> v1->v2:
>> Address community comments
>> v2->v3:
>> Fix minor typo
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
>>   drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
>>   drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
>>   5 files changed, 21 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
>> b/drivers/net/ethernet/intel/e1000e/ethtool.c
>> index adce7e319b9e..9e7881db7859 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
>> @@ -897,6 +897,7 @@ static int e1000_reg_test(struct e1000_adapter
>> *adapter, u64 *data)
>>   	case e1000_pch_cnp:
>>   		/* fall through */
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		mask |= BIT(18);
>>   		break;
>>   	default:
>> @@ -1561,6 +1562,7 @@ static void e1000_loopback_cleanup(struct
>> e1000_adapter *adapter)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		fext_nvm11 = er32(FEXTNVM11);
>>   		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
>>   		ew32(FEXTNVM11, fext_nvm11);
>> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h
>> b/drivers/net/ethernet/intel/e1000e/hw.h
>> index f556163481cb..a1dbf8df1c70 100644
>> --- a/drivers/net/ethernet/intel/e1000e/hw.h
>> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
>> @@ -97,6 +97,10 @@ struct e1000_hw;
>>   #define E1000_DEV_ID_PCH_TGP_I219_LM14		0x15F9
>>   #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
>>   #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
>> +#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
>> +#define E1000_DEV_ID_PCH_ADP_1219_V16		0x1A1F
>> +#define E1000_DEV_ID_PCH_ADP_1219_LM17		0x1A1C
>> +#define E1000_DEV_ID_PCH_ADP_1219_V17		0x1A1D
> 
> Something seems to be missing.  After building and booting to the kernel with this patch included I do not see the a 1a1e, 1a1f, 1a1c or 1a1d device from modinfo:
> u1519:[1]/usr/src/kernels/next-queue> modinfo igc|grep -i 1a1
> u1519:[1]/usr/src/kernels/next-queue>
> 
you might run run modinfo e1000e | grep -i 0x1a1*
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
