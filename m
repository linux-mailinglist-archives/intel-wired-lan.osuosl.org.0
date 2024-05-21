Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA008CA7C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 07:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF4CB40585;
	Tue, 21 May 2024 05:55:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pIxSgkodEKcE; Tue, 21 May 2024 05:55:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8195040554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716270956;
	bh=ZbBFeSrLrE7hHBm/ZnjH8nMg0CS/i2gM+ccBTu6cpME=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6FxiwNuqvOXYeL9bUEQZmaL13JN/d4WP6hCrLRAiguVbLuiVFlTT5gPBJtPdidZfY
	 lECcgvUp0+BA4ylTntkqomXiQUBX/q/bPx7O0KiGm6nyyLxvl2WMAg9lcop/eIIT35
	 XLu+Tdf9gy8A9SCGeg1G52OK2E0YqYZJdklBnQkzbePYZGF6MBoBsUMJHHKVbQFOVR
	 NfSqaVH5qKnnPzee6+PTXA4JAVtZJ7Pli6W+7bDN41yjYRKXWX9fUZR7zpNhJDwR/K
	 4y9JTdTv0lkqWJmh9Hz7KWrMVQCVRDgx1HzbJLL/wjIF38FGeUOVZDfXAP6iO9P8Ib
	 XtdN//BgBE+EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8195040554;
	Tue, 21 May 2024 05:55:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDDC81BF35A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B82424025D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTSS4_xDwfJy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2024 05:55:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD28140134
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD28140134
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD28140134
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:55:48 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af1d6.dynamic.kabel-deutschland.de
 [95.90.241.214])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9860B61E5FE01;
 Tue, 21 May 2024 07:55:29 +0200 (CEST)
Message-ID: <04eb421b-fe87-494c-927c-0436bdc68c75@molgen.mpg.de>
Date: Tue, 21 May 2024 07:55:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix reads from NVM
 Shadow RAM on E830 and E825-C devices
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jacob, dear Paul,


Thank you for the patch.

Am 20.05.24 um 23:39 schrieb Jacob Keller:
> The ice driver reads data from the Shadow RAM portion of the NVM during
> initialization, including data used to identify the NVM image and device,
> such as the ETRACK ID used to populate devlink dev info fw.bundle.
> 
> Currently it is using a fixed offset defined by ICE_CSS_HEADER_LENGTH to
> compute the appropriate offset. This worked fine for E810 and E822 devices
> which both have CSS header length of 330 words.
> 
> Other devices, including both E825-C and E830 devices have different sizes
> for their CSS header. The use of a hard coded value results in the driver
> reading from the wrong block in the NVM when attempting to access the
> Shadow RAM copy. This results in the driver reporting the fw.bundle as 0x0
> in both the devlink dev info and ethtool -i output.
> 
> The first E830 support was introduced by commit ba20ecb1d1bb ("ice: Hook up
> 4 E830 devices by adding their IDs") and the first E825-C support was
> introducted by commit f64e18944233 ("ice: introduce new E825C devices

introduced

> family")
> 
> The NVM actually contains the CSS header length embedded in it. Remove the
> hard coded value and replace it with logic to read the length from the NVM
> directly. This is more resilient against all existing and future hardware,
> vs looking up the expected values from a table. It ensures the driver will
> read from the appropriate place when determining the ETRACK ID value used
> for populating the fw.bundle_id and for reporting in ethtool -i.
> 
> The CSS header length for both the active and inactive flash bank is stored
> in the ice_bank_info structure to avoid unnecessary duplicate work when
> accessing multiple words of the Shadow RAM. Both banks are read in the
> unlikely event that the header length is different for the NVM in the
> inactive bank, rather than being different only by the overall device
> family.
> 
> Fixes: ba20ecb1d1bb ("ice: Hook up 4 E830 devices by adding their IDs")
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_nvm.c  | 88 ++++++++++++++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_type.h | 14 +++--
>   2 files changed, 93 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 84eab92dc03c..5968011e8c7e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -374,11 +374,25 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
>    *
>    * Read the specified word from the copy of the Shadow RAM found in the
>    * specified NVM module.
> + *
> + * Note that the Shadow RAM copy is always located after the CSS header, and
> + * is aligned to 64-byte (32-word) offsets.
>    */
>   static int
>   ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
>   {
> -	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
> +	u32 sr_copy;
> +
> +	switch (bank) {
> +	case ICE_ACTIVE_FLASH_BANK:
> +		sr_copy = roundup(hw->flash.banks.active_css_hdr_len, 32);
> +		break;
> +	case ICE_INACTIVE_FLASH_BANK:
> +		sr_copy = roundup(hw->flash.banks.inactive_css_hdr_len, 32);
> +		break;
> +	}
> +
> +	return ice_read_nvm_module(hw, bank, sr_copy + offset, data);
>   }
>   
>   /**
> @@ -1009,6 +1023,72 @@ static int ice_determine_active_flash_banks(struct ice_hw *hw)
>   	return 0;
>   }
>   
> +/**
> + * ice_get_nvm_css_hdr_len - Read the CSS header length from the NVM CSS header
> + * @hw: pointer to the HW struct
> + * @bank: whether to read from the active or inactive flash bank
> + * @hdr_len: storage for header length in words
> + *
> + * Read the CSS header length from the NVM CSS header and add the Authentication
> + * header size, and then convert to words.
> + *
> + * Return: zero on success, or a negative error code on failure.
> + */
> +static int
> +ice_get_nvm_css_hdr_len(struct ice_hw *hw, enum ice_bank_select bank,
> +			u32 *hdr_len)
> +{
> +	u16 hdr_len_l, hdr_len_h;
> +	u32 hdr_len_dword;
> +	int status;
> +
> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_L,
> +				     &hdr_len_l);
> +	if (status)
> +		return status;
> +
> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_H,
> +				     &hdr_len_h);
> +	if (status)
> +		return status;
> +
> +	/* CSS header length is in DWORD, so convert to words and add
> +	 * authentication header size
> +	 */
> +	hdr_len_dword = hdr_len_h << 16 | hdr_len_l;
> +	*hdr_len = (hdr_len_dword * 2) + ICE_NVM_AUTH_HEADER_LEN;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_determine_css_hdr_len - Discover CSS header length for the device
> + * @hw: pointer to the HW struct
> + *
> + * Determine the size of the CSS header at the start of the NVM module. This
> + * is useful for locating the Shadow RAM copy in the NVM, as the Shadow RAM is
> + * always located just after the CSS header.
> + *
> + * Return: zero on success, or a negative error code on failure.
> + */
> +static int ice_determine_css_hdr_len(struct ice_hw *hw)
> +{
> +	struct ice_bank_info *banks = &hw->flash.banks;
> +	int status;
> +
> +	status = ice_get_nvm_css_hdr_len(hw, ICE_ACTIVE_FLASH_BANK,
> +					 &banks->active_css_hdr_len);
> +	if (status)
> +		return status;
> +
> +	status = ice_get_nvm_css_hdr_len(hw, ICE_INACTIVE_FLASH_BANK,
> +					 &banks->inactive_css_hdr_len);
> +	if (status)
> +		return status;
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_init_nvm - initializes NVM setting
>    * @hw: pointer to the HW struct
> @@ -1055,6 +1135,12 @@ int ice_init_nvm(struct ice_hw *hw)
>   		return status;
>   	}
>   
> +	status = ice_determine_css_hdr_len(hw);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_NVM, "Failed to determine Shadow RAM copy offsets.\n");

As this is a new failure path, should the user be warned about this, if 
it cannot be determined, and NVM possibly be broken?


Kind regards,

Paul


> +		return status;
> +	}
> +
>   	status = ice_get_nvm_ver_info(hw, ICE_ACTIVE_FLASH_BANK, &flash->nvm);
>   	if (status) {
>   		ice_debug(hw, ICE_DBG_INIT, "Failed to read NVM info.\n");
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index f0796a93f428..eef397e5baa0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -482,6 +482,8 @@ struct ice_bank_info {
>   	u32 orom_size;				/* Size of OROM bank */
>   	u32 netlist_ptr;			/* Pointer to 1st Netlist bank */
>   	u32 netlist_size;			/* Size of Netlist bank */
> +	u32 active_css_hdr_len;			/* Active CSS header length */
> +	u32 inactive_css_hdr_len;		/* Inactive CSS header length */
>   	enum ice_flash_bank nvm_bank;		/* Active NVM bank */
>   	enum ice_flash_bank orom_bank;		/* Active OROM bank */
>   	enum ice_flash_bank netlist_bank;	/* Active Netlist bank */
> @@ -1087,17 +1089,13 @@ struct ice_aq_get_set_rss_lut_params {
>   #define ICE_SR_SECTOR_SIZE_IN_WORDS	0x800
>   
>   /* CSS Header words */
> +#define ICE_NVM_CSS_HDR_LEN_L			0x02
> +#define ICE_NVM_CSS_HDR_LEN_H			0x03
>   #define ICE_NVM_CSS_SREV_L			0x14
>   #define ICE_NVM_CSS_SREV_H			0x15
>   
> -/* Length of CSS header section in words */
> -#define ICE_CSS_HEADER_LENGTH			330
> -
> -/* Offset of Shadow RAM copy in the NVM bank area. */
> -#define ICE_NVM_SR_COPY_WORD_OFFSET		roundup(ICE_CSS_HEADER_LENGTH, 32)
> -
> -/* Size in bytes of Option ROM trailer */
> -#define ICE_NVM_OROM_TRAILER_LENGTH		(2 * ICE_CSS_HEADER_LENGTH)
> +/* Length of Authentication header section in words */
> +#define ICE_NVM_AUTH_HEADER_LEN			0x08
>   
>   /* The Link Topology Netlist section is stored as a series of words. It is
>    * stored in the NVM as a TLV, with the first two words containing the type
> 
> ---
> base-commit: e4a87abf588536d1cdfb128595e6e680af5cf3ed
> change-id: 20240516-iwl-net-2024-05-16-fix-css-hdr-len-9d2319a4f7ed
> 
> Best regards,
