Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1DE2A3841
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 02:15:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D5E886079;
	Tue,  3 Nov 2020 01:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMsyYw2Uan97; Tue,  3 Nov 2020 01:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 442E486073;
	Tue,  3 Nov 2020 01:15:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 997A41BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 01:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BD6320380
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 01:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xIyTOsn3p36s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 01:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 95E7B20013
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 01:15:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w4so2123239pgg.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Nov 2020 17:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xoqgQuozW5oeUPf4CYzqwAx5luKyVrcBIWtsSxo//oc=;
 b=UmCR742pXZ95PhnyDUM9lNeaGk+t71ddOr/Yx/dQFgpdWP0wYj9dGespx893SrJz3/
 CIElnPy0jWEkYXgKkwpsx6+Y2weY+wVr80Ar9IqlD33xYsdS22QYmufYnuPaz/31IJPL
 IkMO1Wt5mG9GJ1enacxJxaOmSrBQF/afxOq8rGVmIivqI0KQi7WJexA2oi0J4OknILex
 uJKUD3clFAZUyLrPuQJnTjJkIy59rt/HsPDyuSug1JWX6inzelNTdriD0RNQ1JBnEEiq
 32X96FFF9EhiEBINnmPqoIxWK8yDABWUkRUdNOpqWoDYmMLbH0ZlI91vUs/qwSBkPhuv
 aBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xoqgQuozW5oeUPf4CYzqwAx5luKyVrcBIWtsSxo//oc=;
 b=eZ9IWTIyHHuMWwYu8GPscsVsnK5BLHHvpQ+4i2X5uq+0mt8v54sIGczP6k4cQbJo+1
 MunrA8HPlAOIDKSXwUGByXctVxnEr8nSMYkeKFrVsGF2wmXA2669fIep4Ea+jXgwwrOH
 +E/9LXKzzavoc1wIWH3+1UL4DOzeUf9kT7uqYpNZS7V/pjX3nzCGV0CuGPuci+Cp0F05
 fMglu6NTsSOmF3YUn7wUKrTzJUS6drltbpk/GAs4mBRb7CnGiq0E6D3JPbX4Ma8iBKKZ
 3rvcMjwPtHO6n4FxZK8alW9BgD4vR+krjZmWBdMGymjrq3/vV/oh4eduaSGTkMDznypt
 P1Gg==
X-Gm-Message-State: AOAM532lWWQrL8QWz9pTRX71CCUmf0vwD7TxCrp8Wjbm3LKO3z2yoB2m
 +ZnwFeO977pgMEt37PQrvpg=
X-Google-Smtp-Source: ABdhPJwouVsRBWLk0ddYKFjXwCr+PGhhQ2IcQFjcccYAm3gpVedigxELC15fWgkEEj98ZAyxRed+ng==
X-Received: by 2002:a17:90b:a05:: with SMTP id
 gg5mr985229pjb.214.1604366144028; 
 Mon, 02 Nov 2020 17:15:44 -0800 (PST)
Received: from [10.230.28.234] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e2sm14004100pgd.27.2020.11.02.17.15.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Nov 2020 17:15:43 -0800 (PST)
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-2-pmenzel@molgen.mpg.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <cdcaf9fa-4983-934f-0d9c-09588fe07901@gmail.com>
Date: Mon, 2 Nov 2020 17:15:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201102231307.13021-2-pmenzel@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethernet: igb: Support PHY
 BCM5461S
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 John W Linville <linville@tuxdriver.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/2/2020 3:13 PM, Paul Menzel wrote:
> From: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>
> 
> The BCM5461S PHY is used in switches.
> 
> The patch is taken from Open Network Linux, and it was added there as
> patch
> 
>     packages/base/any/kernels/3.16+deb8/patches/driver-support-intel-igb-bcm5461X-phy.patch
> 
> in ONL commit f32316c63c (Support the BCM54616 and BCM5461S.) [1]. Part
> of this commit was already upstreamed in Linux commit eeb0149660 (igb:
> support BCM54616 PHY) in 2017.
> 
> I applied the forward-ported
> 
>     packages/base/any/kernels/5.4-lts/patches/0002-driver-support-intel-igb-bcm5461S-phy.patch
> 
> added in ONL commit 5ace6bcdb3 (Add 5.4 LTS kernel build.) [2].
> 
> [1]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/f32316c63ce3a64de125b7429115c6d45e942bd1
> [2]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/5ace6bcdb37cb8065dcd1d4404b3dcb6424f6331
> 
> Cc: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>
> Cc: John W Linville <linville@tuxdriver.com>
> Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---

[snip]

> +
> +/**
> + *  igb_phy_init_script_5461s - Inits the BCM5461S PHY
> + *  @hw: pointer to the HW structure
> + *
> + *  Initializes a Broadcom Gigabit PHY.
> + **/
> +s32 igb_phy_init_script_5461s(struct e1000_hw *hw)
> +{
> +	u16 mii_reg_led = 0;
> +
> +	/* 1. Speed LED (Set the Link LED mode), Shadow 00010, 0x1C.bit2=1 */
> +	hw->phy.ops.write_reg(hw, 0x1C, 0x0800);
> +	hw->phy.ops.read_reg(hw, 0x1C, &mii_reg_led);
> +	mii_reg_led |= 0x0004;
> +	hw->phy.ops.write_reg(hw, 0x1C, mii_reg_led | 0x8000);
> +
> +	/* 2. Active LED (Set the Link LED mode), Shadow 01001, 0x1C.bit4=1, 0x10.bit5=0 */
> +	hw->phy.ops.write_reg(hw, 0x1C, 0x2400);
> +	hw->phy.ops.read_reg(hw, 0x1C, &mii_reg_led);
> +	mii_reg_led |= 0x0010;
> +	hw->phy.ops.write_reg(hw, 0x1C, mii_reg_led | 0x8000);
> +	hw->phy.ops.read_reg(hw, 0x10, &mii_reg_led);
> +	mii_reg_led &= 0xffdf;
> +	hw->phy.ops.write_reg(hw, 0x10, mii_reg_led);

Please try at least to re-use the definitions from
include/linux/brcmphy.h and add new ones where appropriate.

It is already painful enough to see that Intel does not use the PHY
library, there is no need to add insult to the injury by open coding all
of these register addresses and values.

Thanks
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
