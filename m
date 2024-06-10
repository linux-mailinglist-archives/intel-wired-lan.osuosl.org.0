Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81522901B58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 08:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18EC2606ED;
	Mon, 10 Jun 2024 06:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id emCpkTA_PKUA; Mon, 10 Jun 2024 06:37:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED6D5606F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718001440;
	bh=HtLeZp0+LtxZD3zZxDMrYIxool++kv87egu0EcDAFfM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5eZgr0nqWBcgtrnpwrVEz/P8ex4og2Z6BvBc6nEQloOTZjaygXbws5Ete9oF2qX6M
	 gATBRwhw2tyOHgvDFqRYet+Esvo9hCmzWOgbUOTLG068Y2TOaREmL15oI9JhfEDW3m
	 bk0h3g/bCinO6ogLW3Ru82MhKKYf09fq6Jv9pFEYAkdpbM9UEA8rWJZMrbuWHVHAap
	 0lQiNBns2fdCscOz6yWQDI267AyKtZvbrlQtYm9Io8ZBS3Yoih2MR3MlJv/5Z8qwR8
	 IYkzIZydqICt5MO8OD9fHm3HZpp1VOLdr6Fe/MVWK9en+y9MSD/wqXh2uRJ7dd9UrD
	 iKFqqjBUVcnfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED6D5606F0;
	Mon, 10 Jun 2024 06:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29A761BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 148FB606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vJfupsRkzH_L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 06:37:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7A9A0606C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A9A0606C4
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A9A0606C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:37:13 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af503.dynamic.kabel-deutschland.de
 [95.90.245.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1F6F661E5FE01;
 Mon, 10 Jun 2024 08:36:01 +0200 (CEST)
Message-ID: <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
Date: Mon, 10 Jun 2024 08:36:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Hui Wang <hui.wang@canonical.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 vitaly.lifshits@intel.com, dima.ruinskiy@intel.com, davem@davemloft.net,
 pabeni@redhat.com, edumazet@google.com, sasha.neftin@intel.com,
 naamax.meir@linux.intel.com
References: <20240610013222.12082-1-hui.wang@canonical.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240610013222.12082-1-hui.wang@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-net][PATCH] Revert "e1000e: move force
 SMBUS near the end of enable_ulp function"
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
Cc: regressions@lists.linux.dev, horms@kernel.org, jacob.e.keller@intel.com,
 todd.e.brandt@intel.com, rui.zhang@intel.com,
 Naama Meir <naamax.meir@linux.intel.com>, dmummenschanz@web.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Hui,


Thank you for your patch.


Am 10.06.24 um 03:32 schrieb Hui Wang:
> This reverts commit bfd546a552e140b0a4c8a21527c39d6d21addb28
> 
> Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
> enable_ulp function") introduces system suspend failure on some
> ethernet cards, at the moment, the pciid of the affected ethernet
> cards include [8086:15b8] and [8086:15bc].
> 
> About the regression the commit bfd546a552e1 ("e1000e: move force

… regression introduced by commit …

> SMBUS near the end of enable_ulp function") tried to fix, looks like
> it is not trivial to fix, we need to find a better way to resolve it.

Please send a revert for commit 861e8086029e (e1000e: move force SMBUS 
from enable ulp function to avoid PHY loss issue), present since Linux 
v6.9-rc3 and not containing enough information in the commit messsage, 
so we have a proper baseline. (That’s also why I originally suggested to 
split it into two commits (revert + your change).)

> Reported-by: Todd Brandt <todd.e.brandt@intel.com>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
> Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
> Signed-off-by: Hui Wang <hui.wang@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 ---------------------
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++
>   2 files changed, 18 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 2e98a2a0bead..f9e94be36e97 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1225,28 +1225,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
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
> -	}
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
>   	hw->phy.ops.release(hw);
>   out:
>   	if (ret_val)
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index da5c59daf8ba..220d62fca55d 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6623,6 +6623,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 ctrl, ctrl_ext, rctl, status, wufc;
>   	int retval = 0;
> +	u16 smb_ctrl;
>   
>   	/* Runtime suspend should only enable wakeup for link changes */
>   	if (runtime)
> @@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   			if (retval)
>   				return retval;
>   		}
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

Naama also added Tested-by lines two both commits in question. Could 
Intel’s test coverage please extended to the problem at hand?

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
