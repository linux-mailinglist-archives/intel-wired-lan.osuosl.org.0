Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB30A3269D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:10:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3048541E86;
	Wed, 12 Feb 2025 13:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYHncCqamC28; Wed, 12 Feb 2025 13:10:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B9AA41E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739365809;
	bh=x5Y0bOpu9n9Xb+yVTIVuPcr4M6pEEFOVWwEnuk13vpo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fbIG6oe0aTyA2owTF63w/CrwPsBT48/zN735WMTqWHeFBhX085zqkNHHP5hfvba1r
	 KqZ9O8hnnovNnzlo4hpeLzeYdLtj6AknmUTFsQ9vXd+Hm7dC2kxMCF62W0OxVyLHF8
	 zZZayi6nTSqBsEEYbpOppqjF5sj0DHjP+PTpZw2hqH26zsCE3hEBpgJFqLHJNQIqtw
	 ilokrAONxjr0pdEJhQDkeGNW3MtzzPpsOL0AIrJaioHEhyATDUG8gWkq1SA3O/cOk3
	 H9XepNdZj8fd8sY7Eh1TcUNPOikonu5OBUWxD0Qv4aXTm1SM8d6018T3NS7T9wPisq
	 kYFUWridoN0pQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B9AA41E6B;
	Wed, 12 Feb 2025 13:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 706221C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69AA141303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:10:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JdxEneDkmhBJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:10:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5DC4040418
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DC4040418
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DC4040418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:10:01 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0BBBE61E64787;
 Wed, 12 Feb 2025 14:09:18 +0100 (CET)
Message-ID: <350aa6d3-05cd-4a5b-b43a-deb5c9e8f5aa@molgen.mpg.de>
Date: Wed, 12 Feb 2025 14:09:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com, horms@kernel.org
References: <20250212075724.3352715-1-michal.swiatkowski@linux.intel.com>
 <20250212075724.3352715-2-michal.swiatkowski@linux.intel.com>
 <cadb0151-8713-4bf7-810c-569559afc969@molgen.mpg.de>
 <Z6ybMegMoaoMLfLq@mev-dev.igk.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <Z6ybMegMoaoMLfLq@mev-dev.igk.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/4] ixgbe: add MDD support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal,


Am 12.02.25 um 13:59 schrieb Michal Swiatkowski:
> On Wed, Feb 12, 2025 at 09:07:18AM +0100, Paul Menzel wrote:

>> Thank you for your patch. For the summary/title you could use:
>>
>> ixgbe: Support Malicious Driver Detection (MDD)
>>
>> Am 12.02.25 um 08:57 schrieb Michal Swiatkowski:
>>> From: Paul Greenwalt <paul.greenwalt@intel.com>
>>>
>>> Add malicious driver detection. Support enabling MDD, disabling MDD,
>>> handling a MDD event, and restoring a MDD VF.
>>
>> a*n* MDD
>>
>> Could you please elaborate? List the commands to enable/disable MDD?
>>
>> Also, please include a reference to the datasheet section for this feature.
>> I am a little confused, as the Linux driver should never be “malicious”,
>> shouldn’t it? So what is this feature?
>>
>> Which devices support this? From the diff it looks like X550? Please add
>> that.
>>
>> How did you test it?
>>
>> How are the events logged?

> I will elaborate it in the commit message if it is needed. The VF created
> on X550 device can use malicious driver for example.

I guess, I still do not know, what “driver” refers to here exactly.

> I tested it by
> changing Tx descriptor to be invalid (TSO on, with invalid length in
> descriptor, but any type of invalid descriptor should cause MDD).

Could these invalid(?) values be prevented from being set in the first 
place?

> It is enabled all time. Simple netif_warn() is called with more
> information about MDD. After 4 events on the same VF the link status is
> force to be down to turn off malicious VF.

Thank you for elaborating. It’d be great if you updated the commit 
message, and also pasted one of these log lines, and maybe a test script 
how to trigger the MDD.

>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  28 ++++
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   5 +
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |   4 +
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 120 ++++++++++++++++++
>>>    4 files changed, 157 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> index 5fdf32d79d82..d446c375335a 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> @@ -2746,6 +2746,28 @@ enum ixgbe_fdir_pballoc_type {
>>>    #define FW_PHY_INFO_ID_HI_MASK		0xFFFF0000u
>>>    #define FW_PHY_INFO_ID_LO_MASK		0x0000FFFFu
>>> +/* There are only 3 options for VFs creation on this device:
>>> + * 16 VFs pool with 8 queues each
>>> + * 32 VFs pool with 4 queues each
>>> + * 64 VFs pool with 2 queues each
>>> + *
>>> + * That means reading some VF registers that map VF to queue depending on
>>> + * chosen option. Define values that help dealing with each scenario.
>>> + */
>>> +/* Number of queues based on VFs pool */
>>> +#define IXGBE_16VFS_QUEUES		8
>>> +#define IXGBE_32VFS_QUEUES		4
>>> +#define IXGBE_64VFS_QUEUES		2
>>> +/* Mask for getting queues bits based on VFs pool */
>>> +#define IXGBE_16VFS_BITMASK		GENMASK(IXGBE_16VFS_QUEUES - 1, 0)
>>> +#define IXGBE_32VFS_BITMASK		GENMASK(IXGBE_32VFS_QUEUES - 1, 0)
>>> +#define IXGBE_64VFS_BITMASK		GENMASK(IXGBE_64VFS_QUEUES - 1, 0)
>>> +/* Convert queue index to register number.
>>> + * We have 4 registers with 32 queues in each.
>>> + */
>>> +#define IXGBE_QUEUES_PER_REG		32
>>> +#define IXGBE_QUEUES_REG_AMOUNT		4
>>> +
>>>    /* Host Interface Command Structures */
>>>    struct ixgbe_hic_hdr {
>>>    	u8 cmd;
>>> @@ -3534,6 +3556,12 @@ struct ixgbe_mac_operations {
>>>    	int (*dmac_config_tcs)(struct ixgbe_hw *hw);
>>>    	int (*read_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32 *);
>>>    	int (*write_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32);
>>> +
>>> +	/* MDD events */
>>> +	void (*enable_mdd)(struct ixgbe_hw *hw);
>>> +	void (*disable_mdd)(struct ixgbe_hw *hw);
>>> +	void (*restore_mdd_vf)(struct ixgbe_hw *hw, u32 vf);
>>> +	void (*handle_mdd)(struct ixgbe_hw *hw, unsigned long *vf_bitmap);
>>>    };
>>>    struct ixgbe_phy_operations {
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>> index 3e4092f8da3e..2a11147fb1bc 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>> @@ -17,4 +17,9 @@ void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
>>>    void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
>>>    					    bool enable, int vf);
>>> +void ixgbe_enable_mdd_x550(struct ixgbe_hw *hw);
>>> +void ixgbe_disable_mdd_x550(struct ixgbe_hw *hw);
>>> +void ixgbe_restore_mdd_vf_x550(struct ixgbe_hw *hw, u32 vf);
>>> +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap);
>>> +
>>>    #endif /* _IXGBE_X550_H_ */
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> index cb07ecd8937d..788f3372ebf1 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> @@ -2630,6 +2630,10 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
>>>    	.prot_autoc_write		= prot_autoc_write_generic,
>>>    	.setup_fc			= ixgbe_setup_fc_e610,
>>>    	.fc_autoneg			= ixgbe_fc_autoneg_e610,
>>> +	.enable_mdd			= ixgbe_enable_mdd_x550,
>>> +	.disable_mdd			= ixgbe_disable_mdd_x550,
>>> +	.restore_mdd_vf			= ixgbe_restore_mdd_vf_x550,
>>> +	.handle_mdd			= ixgbe_handle_mdd_x550,
>>>    };
>>>    static const struct ixgbe_phy_operations phy_ops_e610 = {
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>>> index 277ceaf8a793..b5cbfd1f71fd 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>>> @@ -3800,6 +3800,122 @@ static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
>>>    	return status;
>>>    }
>>> +static void ixgbe_set_mdd_x550(struct ixgbe_hw *hw, bool ena)
>>> +{
>>> +	u32 reg_dma, reg_rdr;
>>> +
>>> +	reg_dma = IXGBE_READ_REG(hw, IXGBE_DMATXCTL);
>>> +	reg_rdr = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);
>>> +
>>> +	if (ena) {
>>> +		reg_dma |= (IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
>>> +		reg_rdr |= (IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
>>> +	} else {
>>> +		reg_dma &= ~(IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
>>> +		reg_rdr &= ~(IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
>>> +	}
>>> +
>>> +	IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL, reg_dma);
>>> +	IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, reg_rdr);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_enable_mdd_x550 - enable malicious driver detection
>>> + * @hw: pointer to hardware structure
>>> + */
>>> +void ixgbe_enable_mdd_x550(struct ixgbe_hw *hw)
>>> +{
>>> +	ixgbe_set_mdd_x550(hw, true);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_disable_mdd_x550 - disable malicious driver detection
>>> + * @hw: pointer to hardware structure
>>> + */
>>> +void ixgbe_disable_mdd_x550(struct ixgbe_hw *hw)
>>> +{
>>> +	ixgbe_set_mdd_x550(hw, false);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_restore_mdd_vf_x550 - restore VF that was disabled during MDD event
>>> + * @hw: pointer to hardware structure
>>> + * @vf: vf index
>>> + */
>>> +void ixgbe_restore_mdd_vf_x550(struct ixgbe_hw *hw, u32 vf)
>>> +{
>>> +	u32 idx, reg, val, num_qs, start_q, bitmask;
>>> +
>>> +	/* Map VF to queues */
>>> +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
>>> +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
>>> +	case IXGBE_MRQC_VMDQRT8TCEN:
>>> +		num_qs = IXGBE_16VFS_QUEUES;
>>> +		bitmask = IXGBE_16VFS_BITMASK;
>>> +		break;
>>> +	case IXGBE_MRQC_VMDQRSS32EN:
>>> +	case IXGBE_MRQC_VMDQRT4TCEN:
>>> +		num_qs = IXGBE_32VFS_QUEUES;
>>> +		bitmask = IXGBE_32VFS_BITMASK;
>>> +		break;
>>> +	default:
>>> +		num_qs = IXGBE_64VFS_QUEUES;
>>> +		bitmask = IXGBE_64VFS_BITMASK;
>>> +		break;
>>> +	}
>>> +	start_q = vf * num_qs;
>>> +
>>> +	/* Release vf's queues by clearing WQBR_TX and WQBR_RX (RW1C) */
>>> +	idx = start_q / IXGBE_QUEUES_PER_REG;
>>> +	val = bitmask << (start_q % IXGBE_QUEUES_PER_REG);
>>> +	IXGBE_WRITE_REG(hw, IXGBE_WQBR_TX(idx), val);
>>> +	IXGBE_WRITE_REG(hw, IXGBE_WQBR_RX(idx), val);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_handle_mdd_x550 - handle malicious driver detection event
>>> + * @hw: pointer to hardware structure
>>> + * @vf_bitmap: output vf bitmap of malicious vfs
>>> + */
>>> +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap)
>>> +{
>>> +	u32 i, j, reg, q, div, vf;
>>
>> Why fix the length of the count variables?
> 
> Do you mean why u32 insted of int?

Yes, that is my question.

>>> +	unsigned long wqbr;
>>> +
>>> +	/* figure out pool size for mapping to vf's */
>>> +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
>>> +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
>>> +	case IXGBE_MRQC_VMDQRT8TCEN:
>>> +		div = IXGBE_16VFS_QUEUES;
>>> +		break;
>>> +	case IXGBE_MRQC_VMDQRSS32EN:
>>> +	case IXGBE_MRQC_VMDQRT4TCEN:
>>> +		div = IXGBE_32VFS_QUEUES;
>>> +		break;
>>> +	default:
>>> +		div = IXGBE_64VFS_QUEUES;
>>> +		break;
>>> +	}
>>> +
>>> +	/* Read WQBR_TX and WQBR_RX and check for malicious queues */
>>> +	for (i = 0; i < IXGBE_QUEUES_REG_AMOUNT; i++) {
>>> +		wqbr = IXGBE_READ_REG(hw, IXGBE_WQBR_TX(i)) |
>>> +		       IXGBE_READ_REG(hw, IXGBE_WQBR_RX(i));
>>> +		if (!wqbr)
>>> +			continue;
>>> +
>>> +		/* Get malicious queue */
>>> +		for_each_set_bit(j, (unsigned long *)&wqbr,
>>> +				 IXGBE_QUEUES_PER_REG) {
>>> +			/* Get queue from bitmask */
>>> +			q = j + (i * IXGBE_QUEUES_PER_REG);
>>> +			/* Map queue to vf */
>>> +			vf = q / div;
>>> +			set_bit(vf, vf_bitmap);
>>> +		}
>>> +	}
>>> +}
>>> +
>>>    #define X550_COMMON_MAC \
>>>    	.init_hw			= &ixgbe_init_hw_generic, \
>>>    	.start_hw			= &ixgbe_start_hw_X540, \
>>> @@ -3863,6 +3979,10 @@ static const struct ixgbe_mac_operations mac_ops_X550 = {
>>>    	.prot_autoc_write	= prot_autoc_write_generic,
>>>    	.setup_fc		= ixgbe_setup_fc_generic,
>>>    	.fc_autoneg		= ixgbe_fc_autoneg,
>>> +	.enable_mdd		= ixgbe_enable_mdd_x550,
>>> +	.disable_mdd		= ixgbe_disable_mdd_x550,
>>> +	.restore_mdd_vf		= ixgbe_restore_mdd_vf_x550,
>>> +	.handle_mdd		= ixgbe_handle_mdd_x550,
>>>    };
>>>    static const struct ixgbe_mac_operations mac_ops_X550EM_x = {

Kind regards,

Paul
