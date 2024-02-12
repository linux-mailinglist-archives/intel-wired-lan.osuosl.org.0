Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2FC850F3A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 10:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 937EA83DAC;
	Mon, 12 Feb 2024 09:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 337GXKbmIYn4; Mon, 12 Feb 2024 09:01:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE3B183DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707728459;
	bh=DWHclKg/uspQp/+XooSzZp4anQtFG8YMprd1V3SJD6g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3DR9Q+8EdIsZkireqKaw+1BOv9zvueFhO6mYNknZ/4mu1XTM8Umvw6TEBEcCS9yau
	 A0/Pk2Dtm8AjHxqefypdBRGNtRHfe9sW7DIDJloKyMr2GiK0c+Kj+iOc+8urpYMSY8
	 FeiQm786wKEtLZHmPvmOu9Jq7/aCkpa4NQ7aSCFPk4U0jUd3x0I6zus/WpZ5J7MGYa
	 kQohKToMdi/fQsFBqSpFuBM+gV6I6NIO5z38T02qDJ8Tny1lImh3CzOZGqZZdrUWUM
	 vLiMLEj2Tklaz2HEPxXQapVtdOgJ6JajAjsiuC3grqswUky9qmIlnxyyb2sK2z1Vxi
	 9/GYL2wDg9xQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE3B183DA0;
	Mon, 12 Feb 2024 09:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF3B61BF361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D87B8612CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id feExWdlAw7mS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 09:00:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C95D612CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C95D612CD
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C95D612CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:00:54 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aec7d.dynamic.kabel-deutschland.de
 [95.90.236.125])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 391D761E5FE05;
 Mon, 12 Feb 2024 10:00:29 +0100 (CET)
Message-ID: <c2b8c45e-1986-41a4-89cb-7db48512eccf@molgen.mpg.de>
Date: Mon, 12 Feb 2024 10:00:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240211151245.811320-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240211151245.811320-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: move force
 SMBUS from enable ulp function to avoid PHY loss issue
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for your patch.

Am 11.02.24 um 16:12 schrieb Vitaly Lifshits:
> Forcing SMBUS inside the ULP enabling flow leads to sporadic PHY loss on
> some systems.

Please list the systems you know of.

> It is suspected to be caused by initiating PHY transactions before the
> the interface settles.

No new paragraph is needed here. Please do not break the line, just 
because a sentence ends. (If you use paragraphs, please separate them by 
a blank line.

> Separating this configuration from the ULP enabling flow avoids this
> issue.
> 
> Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE in Sx state")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 -------------------
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ++++++++++++++++++
>   2 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 717c52913e84..4d83c9a0c023 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1165,25 +1165,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	if (ret_val)
>   		goto out;
>   
> -	/* Switching PHY interface always returns MDI error
> -	 * so disable retry mechanism to avoid wasting time
> -	 */
> -	e1000e_disable_phy_retry(hw);
> -
> -	/* Force SMBus mode in PHY */
> -	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> -	if (ret_val)
> -		goto release;
> -	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> -	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> -
> -	e1000e_enable_phy_retry(hw);
> -
> -	/* Force SMBus mode in MAC */
> -	mac_reg = er32(CTRL_EXT);
> -	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> -	ew32(CTRL_EXT, mac_reg);
> -
>   	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>   	 * LPLU and disable Gig speed when entering ULP
>   	 */
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index af5d9d97a0d6..8fcf8f11f5a4 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6622,6 +6622,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 ctrl, ctrl_ext, rctl, status, wufc;
> +	u16 smb_ctrl;
>   	int retval = 0;
>   
>   	/* Runtime suspend should only enable wakeup for link changes */
> @@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   
>   		if (retval)
>   			return retval;
> +
> +		/* Force SMBUS to allow WOL */
> +		/* Switching PHY interface always returns MDI error
> +		 * so disable retry mechanism to avoid wasting time
> +		 */
> +		e1000e_disable_phy_retry(hw);
> +
> +		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
> +		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> +		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
> +
> +		e1000e_enable_phy_retry(hw);
> +
> +		/* Force SMBus mode in MAC */
> +		ctrl_ext = er32(CTRL_EXT);
> +		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> +		ew32(CTRL_EXT, ctrl_ext);
>   	}
>   
>   	/* Ensure that the appropriate bits are set in LPI_CTRL

Why is `__e1000_shutdown()` the correct place, where it was in 
`e1000_enable_ulp_lpt_lp()` before?


Kind regards,

Paul
