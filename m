Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A61E13D89D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2020 12:10:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E35987D65;
	Thu, 16 Jan 2020 11:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZ1RP-L-BAtT; Thu, 16 Jan 2020 11:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63ECC87D7F;
	Thu, 16 Jan 2020 11:10:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7E31BF425
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 11:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06EBA87D76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 11:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pwh34YryGtvx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2020 11:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E283787D65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 11:10:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 03:10:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="425493869"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jan 2020 03:10:10 -0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20200116085323.3027-1-sasha.neftin@intel.com>
 <b85a3b9f-2225-97ee-a248-a2d1185d2c58@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <a459a1b8-b45d-8f35-7d07-d6b4dff9efa5@intel.com>
Date: Thu, 16 Jan 2020 13:10:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <b85a3b9f-2225-97ee-a248-a2d1185d2c58@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Alder Lake
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

On 1/16/2020 11:49, Paul Menzel wrote:
> Dear Sasha,
> 
> 
> Thank you for the patch.
> 
> On 2020-01-16 09:53, Sasha Neftin wrote:
>> Add devices ID's for the next LOM generations that will be
>> available on the next Intel Client platform (Alder Lake)
>> This patch provides the initial support for these devices
> 
> Could you please add a datasheet name/version to the commit message
> too?
This will be published on Intel site.
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/ethtool.c |  2 ++
>>   drivers/net/ethernet/intel/e1000e/hw.h      |  5 +++++
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  7 +++++++
>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++++--
>>   drivers/net/ethernet/intel/e1000e/ptp.c     |  1 +
>>   5 files changed, 23 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
>> index adce7e319b9e..9e7881db7859 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
>> @@ -897,6 +897,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
>>   	case e1000_pch_cnp:
>>   		/* fall through */
> 
> Unrelated, but this fall through does not seem to be needed?
Agree. Will remove it.
> 
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		mask |= BIT(18);
>>   		break;
>>   	default:
>> @@ -1561,6 +1562,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		fext_nvm11 = er32(FEXTNVM11);
>>   		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
>>   		ew32(FEXTNVM11, fext_nvm11);
>> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
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
>>   
>>   #define E1000_REVISION_4	4
>>   
>> @@ -121,6 +125,7 @@ enum e1000_mac_type {
>>   	e1000_pch_spt,
>>   	e1000_pch_cnp,
>>   	e1000_pch_tgp,
>> +	e1000_pch_adp,
>>   };
>>   
>>   enum e1000_media_type {
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index b4135c50e905..735bf25952fc 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -317,6 +317,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		if (e1000_phy_is_accessible_pchlan(hw))
>>   			break;
>>   
>> @@ -460,6 +461,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
>>   		case e1000_pch_spt:
>>   		case e1000_pch_cnp:
>>   		case e1000_pch_tgp:
>> +		case e1000_pch_adp:
>>   			/* In case the PHY needs to be in mdio slow mode,
>>   			 * set slow mode and try to get the PHY id again.
>>   			 */
>> @@ -703,6 +705,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   	case e1000_pchlan:
>>   		/* check management mode */
>>   		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
>> @@ -1642,6 +1645,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		rc = e1000_init_phy_params_pchlan(hw);
>>   		break;
>>   	default:
>> @@ -2095,6 +2099,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
>>   		break;
>>   	default:
>> @@ -3133,6 +3138,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		bank1_offset = nvm->flash_bank_size;
>>   		act_offset = E1000_ICH_NVM_SIG_WORD;
>>   
>> @@ -4077,6 +4083,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
>>   	case e1000_pch_spt:
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		word = NVM_COMPAT;
>>   		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
>>   		break;
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 60df6f2663c0..25ad824bb431 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -3539,6 +3539,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>>   		break;
>>   	case e1000_pch_cnp:
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
>>   			/* Stable 24MHz frequency */
>>   			incperiod = INCPERIOD_24MHZ;
>> @@ -4052,8 +4053,9 @@ void e1000e_reset(struct e1000_adapter *adapter)
>>   	case e1000_pch_cnp:
>>   		/* fall-through */
> 
> Also not needed?
> 
Agree. Not related, but I will remove.
>>   	case e1000_pch_tgp:
>> -		fc->refresh_time = 0xFFFF;
>> -		fc->pause_time = 0xFFFF;
>> +	case e1000_pch_adp:
>> +
>> +		fc->refresh_time = 0x0400;
> 
> This looks like a functional change for Tiger Lake and above too. Please
> separate this out into a commit before, detailing the reasoning in the
> commit message.
Good catch - thanks Paul. This is my mistake and I will revert the 
original settings for a flow control. There is no changes.
> 
>>   
>>   		if (adapter->netdev->mtu <= ETH_DATA_LEN) {
>>   			fc->high_water = 0x05C20;
>> @@ -7764,6 +7766,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
>>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_cnp },
>>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },
>>   	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp },
>> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM16), board_pch_cnp },
>> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V16), board_pch_cnp },
>> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM17), board_pch_cnp },
>> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V17), board_pch_cnp },
>>   
>>   	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>>   };
>> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
>> index eaa5a0fb99f0..439fda2f5368 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
>> @@ -297,6 +297,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
>>   	case e1000_pch_cnp:
>>   		/* fall-through */
> 
> Not needed? Could you please add a clean-up before this commit?
> 
Agree. Not related, but I will remove.
>>   	case e1000_pch_tgp:
>> +	case e1000_pch_adp:
>>   		if ((hw->mac.type < e1000_pch_lpt) ||
>>   		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
>>   			adapter->ptp_clock_info.max_adj = 24000000 - 1;
> 
> With all these expanded switch statements, it might be a good idea to refactor
> the driver, to have some kind of families (I219(?)), which is used in these
> cases.
I will consider about this, but this is will a different patch.
> 
> 
> Kind regards,
> 
> Paul
> 
Thanks Paul for this review - I will address your comments in v2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
