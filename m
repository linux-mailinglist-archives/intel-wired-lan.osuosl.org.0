Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DFC11D4FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 19:13:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 126908712C;
	Thu, 12 Dec 2019 18:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUnfTM4F0Bim; Thu, 12 Dec 2019 18:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E22F8713D;
	Thu, 12 Dec 2019 18:13:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 733F71BF313
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C6DD88366
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ud1iBE9ATKf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 18:13:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6E748839F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:13:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 10:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216372735"
Received: from yotamper-mobl2.ger.corp.intel.com (HELO [10.255.200.191])
 ([10.255.200.191])
 by orsmga003.jf.intel.com with ESMTP; 12 Dec 2019 10:00:14 -0800
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20191212173650.14210-1-sasha.neftin@intel.com>
 <87imml5t8z.fsf@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <f46101da-8d48-84a3-3229-653a36e6e1ae@intel.com>
Date: Thu, 12 Dec 2019 20:00:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <87imml5t8z.fsf@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Add PHY power management
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/12/2019 19:49, Vinicius Costa Gomes wrote:
> 
> Sasha Neftin <sasha.neftin@intel.com> writes:
> 
>> PHY power management control should provide a reliable and accurate
>> indication of PHY reset completion and decrease the delay time
>> after a PHY reset
>>
>> v1 -> v2: add hw_dbg print for a timeout
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>>   drivers/net/ethernet/intel/igc/igc_phy.c     | 12 ++++++++++++
>>   drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
>>   3 files changed, 14 insertions(+)
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
>> index f4b05af0dd2f..a5483368690a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
>> @@ -173,6 +173,7 @@ s32 igc_check_downshift(struct igc_hw *hw)
>>   s32 igc_phy_hw_reset(struct igc_hw *hw)
>>   {
>>   	struct igc_phy_info *phy = &hw->phy;
>> +	u32 phpm = 0, timeout = 10000;
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
>> @@ -195,6 +198,15 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
>>   	wr32(IGC_CTRL, ctrl);
>>   	wrfl();
>>   
>> +	do {
>> +		phpm = rd32(IGC_I225_PHPM);
>> +		timeout--;
>> +		udelay(1);
>> +	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
>> +
>> +	if (!timeout)
>> +		hw_dbg("Timeoui is expired after a phy reset\n");
> 
> nitpick: Timeoui -> Timeout
> 
thanks - I will send v3 and fix the typo
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
