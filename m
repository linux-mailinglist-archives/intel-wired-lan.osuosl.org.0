Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E928011CCCD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 13:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A211387011;
	Thu, 12 Dec 2019 12:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCy31eelrfI0; Thu, 12 Dec 2019 12:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6CE987012;
	Thu, 12 Dec 2019 12:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24C5A1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 12:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20BD286E5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 12:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LU38mYKO1vEZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 12:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9721584828
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 12:08:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 04:08:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="238921733"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2019 04:08:14 -0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20191212112941.10923-1-sasha.neftin@intel.com>
 <e2b09135-7910-2290-297f-f8e690caa214@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <5825cb7b-04f1-0fea-6de4-feb6239f70d0@intel.com>
Date: Thu, 12 Dec 2019 14:08:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <e2b09135-7910-2290-297f-f8e690caa214@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add PHY power management
 control
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/12/2019 13:33, Paul Menzel wrote:
> Dear Sasha,
> 
> 
> On 2019-12-12 12:29, Sasha Neftin wrote:
>> PHY power management control should provide a reliable and accurate
>> indication of PHY reset completion and decrease the delay time
>> after a PHY reset
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
>>   drivers/net/ethernet/intel/igc/igc_phy.c     | 9 +++++++++
>>   drivers/net/ethernet/intel/igc/igc_regs.h    | 1 +
>>   3 files changed, 11 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
>> index 2121fc34e300..71a4b0281c03 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -460,6 +460,7 @@
>>   /* PHY Status Register */
>>   #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
>>   #define MII_SR_AUTONEG_COMPLETE	0x0020 /* Auto Neg Complete */
>> +#define IGC_PHY_RST_COMP	0x0100 /* Internal PHY reset completion */
>>   
>>   /* PHY 1000 MII Register/Bit Definitions */
>>   /* PHY Registers defined by IEEE */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
>> index f4b05af0dd2f..e19e861df719 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
>> @@ -173,6 +173,7 @@ s32 igc_check_downshift(struct igc_hw *hw)
>>   s32 igc_phy_hw_reset(struct igc_hw *hw)
>>   {
>>   	struct igc_phy_info *phy = &hw->phy;
>> +	u32 phpm = 0, timeout = 10000;
> 
> Just use `unsigned int` for `timeout`?
> 
u32 is unsigned int.
> phpm does not need to be initialized to 0?
RST_COMP indication in the PHPM register is clear on reading. I once 
'read' the PHPM before polling and make sure zero value.
> 
>>   	s32  ret_val;
>>   	u32 ctrl;
>>   
>> @@ -186,6 +187,8 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
>>   	if (ret_val)
>>   		goto out;
>>   
>> +	phpm = rd32(IGC_I225_PHPM);
>> +
>>   	ctrl = rd32(IGC_CTRL);
>>   	wr32(IGC_CTRL, ctrl | IGC_CTRL_PHY_RST);
>>   	wrfl();
>> @@ -195,6 +198,12 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
>>   	wr32(IGC_CTRL, ctrl);
>>   	wrfl();
>>   
>> +	do {
>> +		phpm = rd32(IGC_I225_PHPM);
>> +		timeout--;
>> +		udelay(1);
>> +	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
> 
> Print an error, when the timeout is reached?
Good idea. I will add hw_dbg in v2. Thanks.
> 
>> +
>>   	usleep_range(1500, 2000);
>>   
>>   	phy->ops.release(hw);
>> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
>> index c82111051898..164c42b39dfa 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
>> @@ -12,6 +12,7 @@
>>   #define IGC_MDIC		0x00020  /* MDI Control - RW */
>>   #define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
>>   #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
>> +#define IGC_I225_PHPM		0x00E14	 /* I225 PHY Power Management */
>>   
>>   /* Internal Packet Buffer Size Registers */
>>   #define IGC_RXPBS		0x02404  /* Rx Packet Buffer Size - RW */
>>
> 
Hello Paul,
Thank you very much for your comments.
Sasha

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
