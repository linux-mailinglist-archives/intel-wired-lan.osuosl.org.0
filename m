Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4FB8CBA3F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 06:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E5540728;
	Wed, 22 May 2024 04:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXP03kKZ9iIU; Wed, 22 May 2024 04:11:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E0C1406AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716351108;
	bh=wckT5G1QS3zy15EY8Jj6uA1Jotoyf3w+GU5hH9lP+1Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D43mdhxB5owSOkttUqMF7PEReEOpjujRgwgrKdliq9Im8FJN/Ucr+aN9Y2+Ufq0DP
	 2rU3Nh7/mKy0GWxhAKV3imqOYV9rb/J34KYlbfPuAdYLibMfrQsriKpvTeX3bpmepS
	 /ya3Nv3XFtwbS7/7eduLQ0tXAA23c5M5DJsXGpNYbyI0wC+EnjPp2Yy1nU+LfMfgb4
	 mrjSNw/vcjnTLjO9TQKb2JPNZXRinYUELsqZxtkFarSpuQIyaLWXzSiOD5E2TopOH6
	 9pOb8Z5YYb8LGit4b/cZF/lWH+EMSVtFwA7Nobq7MMyUFhFOfRZmdceX7j+FKN6hZ/
	 cXKg2faZkVeyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E0C1406AE;
	Wed, 22 May 2024 04:11:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E06361BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBE1C60874
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xU4AM_FhQE3W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 04:11:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 275B060846
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 275B060846
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 275B060846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:11:42 +0000 (UTC)
Received: from [192.168.0.3] (unknown [95.90.241.229])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E126661E5FE01;
 Wed, 22 May 2024 06:11:04 +0200 (CEST)
Message-ID: <3d98a74c-8813-4008-b473-cd560c4dd75a@molgen.mpg.de>
Date: Wed, 22 May 2024 06:11:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
 <04eb421b-fe87-494c-927c-0436bdc68c75@molgen.mpg.de>
 <edc0bfa4-7aa5-46b6-929a-7bfe8009b0a7@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <edc0bfa4-7aa5-46b6-929a-7bfe8009b0a7@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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

Dear Jacob,


Am 21.05.24 um 21:27 schrieb Jacob Keller:

> On 5/20/2024 10:55 PM, Paul Menzel wrote:

>> Am 20.05.24 um 23:39 schrieb Jacob Keller:
>>> The ice driver reads data from the Shadow RAM portion of the NVM during
>>> initialization, including data used to identify the NVM image and device,
>>> such as the ETRACK ID used to populate devlink dev info fw.bundle.
>>>
>>> Currently it is using a fixed offset defined by ICE_CSS_HEADER_LENGTH to
>>> compute the appropriate offset. This worked fine for E810 and E822 devices
>>> which both have CSS header length of 330 words.
>>>
>>> Other devices, including both E825-C and E830 devices have different sizes
>>> for their CSS header. The use of a hard coded value results in the driver
>>> reading from the wrong block in the NVM when attempting to access the
>>> Shadow RAM copy. This results in the driver reporting the fw.bundle as 0x0
>>> in both the devlink dev info and ethtool -i output.
>>>
>>> The first E830 support was introduced by commit ba20ecb1d1bb ("ice: Hook up
>>> 4 E830 devices by adding their IDs") and the first E825-C support was
>>> introducted by commit f64e18944233 ("ice: introduce new E825C devices
>>
>> introduced
>>
>>> family")
>>>
>>> The NVM actually contains the CSS header length embedded in it. Remove the
>>> hard coded value and replace it with logic to read the length from the NVM
>>> directly. This is more resilient against all existing and future hardware,
>>> vs looking up the expected values from a table. It ensures the driver will
>>> read from the appropriate place when determining the ETRACK ID value used
>>> for populating the fw.bundle_id and for reporting in ethtool -i.
>>>
>>> The CSS header length for both the active and inactive flash bank is stored
>>> in the ice_bank_info structure to avoid unnecessary duplicate work when
>>> accessing multiple words of the Shadow RAM. Both banks are read in the
>>> unlikely event that the header length is different for the NVM in the
>>> inactive bank, rather than being different only by the overall device
>>> family.
>>>
>>> Fixes: ba20ecb1d1bb ("ice: Hook up 4 E830 devices by adding their IDs")
>>> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_nvm.c  | 88 ++++++++++++++++++++++++++++++-
>>>    drivers/net/ethernet/intel/ice/ice_type.h | 14 +++--
>>>    2 files changed, 93 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> index 84eab92dc03c..5968011e8c7e 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> @@ -374,11 +374,25 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
>>>     *
>>>     * Read the specified word from the copy of the Shadow RAM found in the
>>>     * specified NVM module.
>>> + *
>>> + * Note that the Shadow RAM copy is always located after the CSS header, and
>>> + * is aligned to 64-byte (32-word) offsets.
>>>     */
>>>    static int
>>>    ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
>>>    {
>>> -	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
>>> +	u32 sr_copy;
>>> +
>>> +	switch (bank) {
>>> +	case ICE_ACTIVE_FLASH_BANK:
>>> +		sr_copy = roundup(hw->flash.banks.active_css_hdr_len, 32);
>>> +		break;
>>> +	case ICE_INACTIVE_FLASH_BANK:
>>> +		sr_copy = roundup(hw->flash.banks.inactive_css_hdr_len, 32);
>>> +		break;
>>> +	}
>>> +
>>> +	return ice_read_nvm_module(hw, bank, sr_copy + offset, data);
>>>    }
>>>    
>>>    /**
>>> @@ -1009,6 +1023,72 @@ static int ice_determine_active_flash_banks(struct ice_hw *hw)
>>>    	return 0;
>>>    }
>>>    
>>> +/**
>>> + * ice_get_nvm_css_hdr_len - Read the CSS header length from the NVM CSS header
>>> + * @hw: pointer to the HW struct
>>> + * @bank: whether to read from the active or inactive flash bank
>>> + * @hdr_len: storage for header length in words
>>> + *
>>> + * Read the CSS header length from the NVM CSS header and add the Authentication
>>> + * header size, and then convert to words.
>>> + *
>>> + * Return: zero on success, or a negative error code on failure.
>>> + */
>>> +static int
>>> +ice_get_nvm_css_hdr_len(struct ice_hw *hw, enum ice_bank_select bank,
>>> +			u32 *hdr_len)
>>> +{
>>> +	u16 hdr_len_l, hdr_len_h;
>>> +	u32 hdr_len_dword;
>>> +	int status;
>>> +
>>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_L,
>>> +				     &hdr_len_l);
>>> +	if (status)
>>> +		return status;
>>> +
>>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_H,
>>> +				     &hdr_len_h);
>>> +	if (status)
>>> +		return status;
>>> +
>>> +	/* CSS header length is in DWORD, so convert to words and add
>>> +	 * authentication header size
>>> +	 */
>>> +	hdr_len_dword = hdr_len_h << 16 | hdr_len_l;
>>> +	*hdr_len = (hdr_len_dword * 2) + ICE_NVM_AUTH_HEADER_LEN;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +/**
>>> + * ice_determine_css_hdr_len - Discover CSS header length for the device
>>> + * @hw: pointer to the HW struct
>>> + *
>>> + * Determine the size of the CSS header at the start of the NVM module. This
>>> + * is useful for locating the Shadow RAM copy in the NVM, as the Shadow RAM is
>>> + * always located just after the CSS header.
>>> + *
>>> + * Return: zero on success, or a negative error code on failure.
>>> + */
>>> +static int ice_determine_css_hdr_len(struct ice_hw *hw)
>>> +{
>>> +	struct ice_bank_info *banks = &hw->flash.banks;
>>> +	int status;
>>> +
>>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_ACTIVE_FLASH_BANK,
>>> +					 &banks->active_css_hdr_len);
>>> +	if (status)
>>> +		return status;
>>> +
>>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_INACTIVE_FLASH_BANK,
>>> +					 &banks->inactive_css_hdr_len);
>>> +	if (status)
>>> +		return status;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>>    /**
>>>     * ice_init_nvm - initializes NVM setting
>>>     * @hw: pointer to the HW struct
>>> @@ -1055,6 +1135,12 @@ int ice_init_nvm(struct ice_hw *hw)
>>>    		return status;
>>>    	}
>>>    
>>> +	status = ice_determine_css_hdr_len(hw);
>>> +	if (status) {
>>> +		ice_debug(hw, ICE_DBG_NVM, "Failed to determine Shadow RAM copy offsets.\n");
>>
>> As this is a new failure path, should the user be warned about this, if
>> it cannot be determined, and NVM possibly be broken?

> Possibly. I'm also trying to avoid spamming the log with failure
> messages which are more useful for developers who can enable them vs end
> users who may not understand.

I agree that logging too much is also confusing. Excuse my ignorance, 
but what happens if NVM is broken and the offset cannot be determined. 
Will the user get any error message and know what to do (replace the 
device or call support)? Or another view point, is the bug report with 
the Linux log messages included going to have the information, so the 
support folks or developers can pinpoint the problem without replying to 
the user to enable debug messages?


Kind regards,

Paul
