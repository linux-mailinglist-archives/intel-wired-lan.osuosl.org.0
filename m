Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 222E2B27FB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 14:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D229681124;
	Fri, 15 Aug 2025 12:08:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QkQbpGFgBlSi; Fri, 15 Aug 2025 12:08:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDE8F81138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755259691;
	bh=+5nkJyY99dWHCEhDdyk+GkSgElDnksRx5AeJwdkNlxY=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1EVFA5mCVoNakPTC8n7Sy72iMeJlJYiUNfRK28wFUr3hSYtUqTDZu7yev4R+qt/9e
	 vNrZs3DgAzkBouztQFO5iWpLpCQRDYFCpcvuyyCHhMKieW9YNceG3VUqA2CbvQmkPl
	 ek8dQYLrXknhhrOf4FdymuhTWcHpod08fUY3XNVo3H4+PqL+j29qGQWW/FwW64ttnY
	 i8T3n1fCHekvTVLLZi+6X+IZMAPWM39gT+FsdjAPZg4bwhdA9kx1wFXrB/3UFGrJpe
	 ZQ5Xr1qNlBL3nfJWY3YS28HaFpzHKIN7J241jbPkXv6R+2a36x80lfwMEoIocUlHVT
	 NXfJdzwHumiRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDE8F81138;
	Fri, 15 Aug 2025 12:08:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B118196
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 519F0810AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id naBdjrx6kRiN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 12:08:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 793FC810C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 793FC810C1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 793FC810C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:08:07 +0000 (UTC)
Received: from [192.168.0.184] (ip5f5af516.dynamic.kabel-deutschland.de
 [95.90.245.22])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A86E261E647AC;
 Fri, 15 Aug 2025 14:07:52 +0200 (CEST)
Message-ID: <f9ef51d9-9a55-40f0-8073-dad5eab741f9@molgen.mpg.de>
Date: Fri, 15 Aug 2025 14:07:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20250814-jk-fix-i40e-ice-pxe-9k-mtu-v1-1-c3926287fb78@intel.com>
Content-Language: en-US
Cc: kheib@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250814-jk-fix-i40e-ice-pxe-9k-mtu-v1-1-c3926287fb78@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix Jumbo Frame support
 after iPXE boot
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

Dear Jacob,


Thank you for your patch.

Am 14.08.25 um 23:21 schrieb Jacob Keller:
> The i40e hardware has multiple hardware settings which define the maximum
> frame size of the physical port. The firmware has an AdminQ command
> (0x0603) to configure all of these settings, but the i40e Linux driver
> never issues this command.
> 
> In most cases this is no problem, as the NVM default value is to set it to
> its maximum value of 9728. Unfortunately, since recent versions the intelxl
> driver maintained within the iPXE network boot stack now issues the 0x0603
> command to set the maximum frame size to a low value. This appears to have

Maybe add (MFS) so the abbreviation is clear.

> occurred because the same intelxl driver is used for both the E700 and E800
> series hardware, and both devices support the same 0x0603 AdminQ command.

Do you have a link to the intelxl change?

> The ice Linux PF driver already issues this command during probe.
> 
> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), the
> driver does check the I40E_PRTGL_SAH register, but it only logs a warning.

… if MFS is set lower than the default.

> This register also only covers received packets and not transmitted
> packets. Additionally, a warning does not help users, as the larger MTU is
> still not supported.
> 
> Instead, have the i40e driver issue the Set MAC Config AdminQ command
> during boot in a similar fashion to the ice driver. Additionally, instead
> of just checking I40E_PRTGL_SAH, read and update its Max Frame Size field
> to the expected 9K value as well.
> 
> This ensures the driver restores the maximum frame size to its expected
> value at probe, rather than assuming that no other driver has adjusted the
> MAC config.
> 
> This is a better user experience, as we now fix the issues with larger MTU
> instead of merely warning. It also aligns with the way the ice E800 series
> driver works.

Is there a regression potential, that users won’t be able to access 
their systems over the network, because there are faulty switches or such?

To save people search for it, how can the MFS be read out from the 
command line?

> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Strictly speaking, the "Fixes" tag isn't entirely accurate. The failure is
> really the result of changes in the iPXE driver to support both E700 and E800
> within the same intelxl driver. However, I think the warning added by that
> commit was an insufficient solution and we should be restoring the value to
> its expected default rather than merely issuing a warning to the kernel
> log. Thus, this "fixes" the driver to better handle this case.
> ---
>   drivers/net/ethernet/intel/i40e/i40e_prototype.h |  2 ++
>   drivers/net/ethernet/intel/i40e/i40e_common.c    | 30 ++++++++++++++++++++++++
>   drivers/net/ethernet/intel/i40e/i40e_main.c      | 17 +++++++++-----
>   3 files changed, 43 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> index aef5de53ce3b..26bb7bffe361 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -98,6 +98,8 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
>   			     struct i40e_asq_cmd_details *cmd_details);
>   int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>   			     struct i40e_asq_cmd_details *cmd_details);
> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
> +			   struct i40e_asq_cmd_details *cmd_details);
>   int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
>   			   struct i40e_asq_cmd_details *cmd_details);
>   int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 270e7e8cf9cf..f6b6a4925b27 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -1189,6 +1189,36 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
>   	return status;
>   }
>   
> +/**
> + * i40e_aq_set_mac_config
> + * @hw: pointer to the hw struct
> + * @max_frame_size: Maximum Frame Size to be supported by the port

Mention that it needs to be positive (or non-0)?

> + * @cmd_details: pointer to command details structure or NULL
> + *
> + * Configure MAC settings for frame size (0x0603).
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + **/
> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
> +			   struct i40e_asq_cmd_details *cmd_details)
> +{
> +	struct i40e_aq_set_mac_config *cmd;
> +	struct libie_aq_desc desc;
> +
> +	if (max_frame_size == 0)
> +		return -EINVAL;
> +
> +	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_mac_config);
> +
> +	cmd->max_frame_size = cpu_to_le16(max_frame_size);
> +
> +#define I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD	0x7FFF
> +	cmd->fc_refresh_threshold =
> +		cpu_to_le16(I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD);
> +
> +	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
> +}
> +
>   /**
>    * i40e_aq_clear_pxe_mode
>    * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b83f823e4917..4796fdd0b966 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %pe last_status =  %s\n",
>   			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
>   
> -	/* make sure the MFS hasn't been set lower than the default */
>   #define MAX_FRAME_SIZE_DEFAULT 0x2600
> -	val = FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
> -			rd32(&pf->hw, I40E_PRTGL_SAH));
> -	if (val < MAX_FRAME_SIZE_DEFAULT)
> -		dev_warn(&pdev->dev, "MFS for port %x (%d) has been set below the default (%d)\n",
> -			 pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
> +
> +	err = i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT, NULL);
> +	if (err) {
> +		dev_warn(&pdev->dev, "set mac config ret =  %pe last_status =  %s\n",
> +			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
> +	}
> +
> +	/* Make sure the MFS is set to the expected value */
> +	val = rd32(hw, I40E_PRTGL_SAH);
> +	FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val, MAX_FRAME_SIZE_DEFAULT);
> +	wr32(hw, I40E_PRTGL_SAH, val);
>   
>   	/* Add a filter to drop all Flow control frames from any VSI from being
>   	 * transmitted. By doing so we stop a malicious VF from sending out
The diff looks good:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
