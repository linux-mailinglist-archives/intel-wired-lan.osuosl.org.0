Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8667D1D72E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 10:17:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 088E385670;
	Wed, 14 Jan 2026 09:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5WhA0NGNvtL; Wed, 14 Jan 2026 09:17:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 393F985019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768382228;
	bh=oAMEHcE49GFJ54eZfAL/GNktoNqnV+EkJ6cpd7vRj9Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nnd1cmDCWKuwBZH44OUPdaVubNUG7Qx+rkLV885fEvfFC7hQMznDpHCsYvPKdVfQg
	 aFa/5IZ4GR2zw+BGBAVH4m38zOW31kex1b93y1Uak6wSoAS7Te3Dr/K3RuA2jBbeiz
	 afNbjfQhbQkVTqCg/blYJN5gKjjYhwvfypRHjjoYyFkAKRq+8F79ZmjZFfQJfTuaaV
	 kGBCXL+sY1pjow0W3LhENR9dAEm/y6JFfLIGfFaCV67CjR5JLZ4fjBspmYvIJ2iEKm
	 CymjJ9irMebwPqAWCbGDe7n8xYPG/QbXLlnX/b9PMaXaMtAnuoRui0GqWKCDcGjg/c
	 qEwbyIEh5x02A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 393F985019;
	Wed, 14 Jan 2026 09:17:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A5641CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 09:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50D1F409DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 09:17:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2FJVuuFAKTO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 09:17:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 740F240087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 740F240087
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 740F240087
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 09:17:02 +0000 (UTC)
Received: from [192.168.44.133] (unknown [185.238.219.25])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E14B02394ABD9;
 Wed, 14 Jan 2026 10:16:31 +0100 (CET)
Message-ID: <ff44a005-6ebf-45ed-9b84-804d44e2158c@molgen.mpg.de>
Date: Wed, 14 Jan 2026 10:16:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Staniszewski <jakub.staniszewski@linux.intel.com>,
 stable@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
 <20260113193817.582-3-dawid.osuchowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260113193817.582-3-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix retry for AQ
 command 0x06EE
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

Dear Dawid, dear Jakub,


Thank you for your patch.

Am 13.01.26 um 20:38 schrieb Dawid Osuchowski:
> From: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
> 
> Executing ethtool -m can fail reporting a netlink I/O error while firmware
> link management holds the i2c bus used to communicate with the module.
> 
> According to Intel(R) Ethernet Controller E810 Datasheet Rev 2.8 [1]
> Section 3.3.10.4 Read/Write SFF EEPROM (0x06EE)
> request should to be retried upon receiving EBUSY from firmware.
> 
> Commit e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
> implemented it only for part of ice_get_module_eeprom(), leaving all other
> calls to ice_aq_sff_eeprom() vulnerable to returning early on getting
> EBUSY without retrying.
> 
> Remove the retry loop from ice_get_module_eeprom() and add Admin Queue
> (AQ) command with opcode 0x06EE to the list of commands that should be
> retried on receiving EBUSY from firmware.
> 
> Cc: stable@vger.kernel.org
> Fixes: e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
> Signed-off-by: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
> Co-developed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Link: https://www.intel.com/content/www/us/en/content-details/613875/intel-ethernet-controller-e810-datasheet.html [1]
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c  |  1 +
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 35 ++++++++------------
>   2 files changed, 15 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index aab00c44e9b2..26eb8e05498b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1854,6 +1854,7 @@ static bool ice_should_retry_sq_send_cmd(u16 opcode)
>   	case ice_aqc_opc_lldp_stop:
>   	case ice_aqc_opc_lldp_start:
>   	case ice_aqc_opc_lldp_filter_ctrl:
> +	case ice_aqc_opc_sff_eeprom:
>   		return true;
>   	}
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 3565a5d96c6d..478876908db1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -4496,7 +4496,7 @@ ice_get_module_eeprom(struct net_device *netdev,
>   	u8 addr = ICE_I2C_EEPROM_DEV_ADDR;
>   	struct ice_hw *hw = &pf->hw;
>   	bool is_sfp = false;
> -	unsigned int i, j;
> +	unsigned int i;
>   	u16 offset = 0;
>   	u8 page = 0;
>   	int status;
> @@ -4538,26 +4538,19 @@ ice_get_module_eeprom(struct net_device *netdev,
>   		if (page == 0 || !(data[0x2] & 0x4)) {
>   			u32 copy_len;
>   
> -			/* If i2c bus is busy due to slow page change or
> -			 * link management access, call can fail. This is normal.
> -			 * So we retry this a few times.
> -			 */
> -			for (j = 0; j < 4; j++) {
> -				status = ice_aq_sff_eeprom(hw, 0, addr, offset, page,
> -							   !is_sfp, value,
> -							   SFF_READ_BLOCK_SIZE,
> -							   0, NULL);
> -				netdev_dbg(netdev, "SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%X)\n",
> -					   addr, offset, page, is_sfp,
> -					   value[0], value[1], value[2], value[3],
> -					   value[4], value[5], value[6], value[7],
> -					   status);
> -				if (status) {
> -					usleep_range(1500, 2500);
> -					memset(value, 0, SFF_READ_BLOCK_SIZE);
> -					continue;
> -				}
> -				break;
> +			status = ice_aq_sff_eeprom(hw, 0, addr, offset, page,
> +						   !is_sfp, value,
> +						   SFF_READ_BLOCK_SIZE,
> +						   0, NULL);
> +			netdev_dbg(netdev, "SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%pe)\n",
> +				   addr, offset, page, is_sfp,
> +				   value[0], value[1], value[2], value[3],
> +				   value[4], value[5], value[6], value[7],
> +				   ERR_PTR(status));
> +			if (status) {
> +				netdev_err(netdev, "%s: error reading module EEPROM: status %pe\n",
> +					   __func__, ERR_PTR(status));
> +				return status;
>   			}
>   
>   			/* Make sure we have enough room for the new block */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
