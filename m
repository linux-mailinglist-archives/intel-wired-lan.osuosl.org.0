Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B1790814C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 04:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 292B2410A3;
	Fri, 14 Jun 2024 02:04:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4629aA8YAvjN; Fri, 14 Jun 2024 02:04:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F62D4094F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718330651;
	bh=gHc5NTmjZldkmp4V1qoX0UmiAlXWz2uKHEBtYeGP1aU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W6ofxRKfEr+qONBCcw8jGEyAHff4o8AxkGZCgSmWpVLqfeAwqHFJjgQTqVu86cIU0
	 GCjEalfIcUDWEP0egOaMEZ5iBdkyFcZfUbWhc1p6cpkjxtZe0bkHYlMzdz53LmwC9N
	 oPeAFB08LoZopwoNwPK/M61rTcMWYU4JgxgK8/j3RWg7ExC7e0MvR2dpHeQQzlC7aq
	 Yq7aKBVwrNJ8Sn7BNluAFtDEe6Xj5VzGdbsVGKRQPKsRoBZXTfUzcs1TLt0si78pl0
	 PqrEGBPcnEvODZTcyWnAky+3J6W8gf+7S6sSUs+2YOBLo+Y+rdg8sQox/wAv6hQzma
	 UX7fqSXqMfB4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F62D4094F;
	Fri, 14 Jun 2024 02:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 818F11BF340
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jun 2024 02:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7794B80D46
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jun 2024 02:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqIXa4yyvluZ for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jun 2024 02:04:08 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 14 Jun 2024 02:04:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D6E980D34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D6E980D34
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.120;
 helo=smtp-relay-canonical-0.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D6E980D34
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jun 2024 02:04:08 +0000 (UTC)
Received: from [192.168.0.106] (unknown [123.112.65.116])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id B26B140FE0; 
 Fri, 14 Jun 2024 01:54:02 +0000 (UTC)
Message-ID: <4c367721-e893-48e2-9de3-f4f6b0a3ba73@canonical.com>
Date: Fri, 14 Jun 2024 09:53:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20240613120134.224585-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <20240613120134.224585-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1718330043;
 bh=gHc5NTmjZldkmp4V1qoX0UmiAlXWz2uKHEBtYeGP1aU=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type;
 b=fkFgTRJWSS6sWl/ZkeCMkyuWn4bat4z55N0YbY1LklQE4/jfGRtZyOB6quBhfN93Z
 s8ixFbe47IxRQ+B0e8cVE11tSDbJZ+M2+VZRrLI1bJukwHxqYBsf+iLCsXjWvJGh4E
 BYZwCQMC7qBtpfh5m+vIQ5/zP1Ux7uJT0THKH8cCUoGjieEGmtYHYr7Y2hSuX3P56R
 Toby7PwDPFBST80JtDlLvk8z0g48jwU5k2GUad0sXCR4L+hchgKoaOtWR/xwAnlata
 YPzXbit7LyNi2etCs6ywT5gmRfr4KYrtyjJnObWtqu6hL2Z7HvEirl/Z3oYkNu3188
 NXyMc1i2+FMvw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=fkFgTRJW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix force
 smbus during suspend flow
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vitaly

I tested the patch on a laptop with the ethernet card [8086:550A], the 
system suspend and resume worked well with the cable plugged or unplugged.

But I still think that reverting 2 regression commits is a better solution.

Thanks.

And some comment below:

On 6/13/24 20:01, Vitaly Lifshits wrote:
> Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
> enable_ulp function") fixed an issue with loss of PHY access during
> suspend on Meteor Lake systems. However, it introduced a regression
> on older devices, such as [8086:15B8], [8086:15F9], [8086:15BE].
>
> This patch aims to fix the secondary regression, by limiting the scope
> of the changes in that commit to Meteor Lake platforms only.
>
> Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=218940
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 68 +++++++++++++++------
>   1 file changed, 48 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 2e98a2a0bead..7b1da97e82bf 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
>   static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
>   static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
>   static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);
> +static s32 e1000e_force_smbus(struct e1000_hw *hw);
>   
>   static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
>   {
> @@ -1108,6 +1109,41 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
>   	return 0;
>   }
>   
> +/**
> + *  e1000e_force_smbus
> + *  @hw: pointer to the HW structure
> + *
> + *  Force the MAC and the PHY to SMBUS mode.
> + **/
> +static s32 e1000e_force_smbus(struct e1000_hw *hw)
> +{
> +	u16 smb_ctrl = 0;
> +	u32 ctrl_ext = 0;
> +	s32 ret_val = 0;
> +
> +	/* Switching PHY interface always returns MDI error
> +	 * so disable retry mechanism to avoid wasting time
> +	 */
> +	e1000e_disable_phy_retry(hw);
> +
> +	/* Force SMBus mode in the PHY */
> +	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
> +	if (ret_val)
Does the e1000e_enable_phy_retry(hw) need to be called here?
> +		return ret_val;
> +
> +	smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> +	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
> +
> +	e1000e_enable_phy_retry(hw);
> +
> +	/* Force SMBus mode in the MAC */
> +	ctrl_ext = er32(CTRL_EXT);
> +	ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> +	ew32(CTRL_EXT, ctrl_ext);
> +
> +	return 0;
> +}
> +
>   /**
>    *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint-LP
>    *  @hw: pointer to the HW structure
> @@ -1165,6 +1201,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	if (ret_val)
>   		goto out;
>   
> +	if (hw->mac.type != e1000_pch_mtp) {
> +		ret_val = e1000e_force_smbus(hw);
> +		if (ret_val) {
> +			e_dbg("Failed to force SMBUS: %d\n", ret_val);
Does the hw->phy.ops.release(hw) need to be called here or "goto 
release" instead of "goto out"?
> +			goto out;
> +		}
> +	}
> +
>   	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>   	 * LPLU and disable Gig speed when entering ULP
>   	 */
> @@ -1225,27 +1269,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	}
>   
>   release:
> -	/* Switching PHY interface always returns MDI error
> -	 * so disable retry mechanism to avoid wasting time
> -	 */
> -	e1000e_disable_phy_retry(hw);
> -
> -	/* Force SMBus mode in PHY */
> -	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> -	if (ret_val) {
> -		e1000e_enable_phy_retry(hw);
> -		hw->phy.ops.release(hw);
> -		goto out;
> +	if (hw->mac.type == e1000_pch_mtp) {

Maybe we should also check ret_val like below:

if (!ret_val && hw->mac.type == e1000_pch_mtp) {

> +		ret_val = e1000e_force_smbus(hw);
> +		if (ret_val)
> +			e_dbg("Failed to force SMBUS: %d\n", ret_val);
>   	}
> -	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> -	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> -
> -	e1000e_enable_phy_retry(hw);
> -
> -	/* Force SMBus mode in MAC */
> -	mac_reg = er32(CTRL_EXT);
> -	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> -	ew32(CTRL_EXT, mac_reg);
>   
>   	hw->phy.ops.release(hw);
>   out:
