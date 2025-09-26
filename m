Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD585BA40B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 16:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3BE361C46;
	Fri, 26 Sep 2025 14:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z47gL9I27USn; Fri, 26 Sep 2025 14:08:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A8C861C36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758895729;
	bh=eCNUufYjOxpkimEdBtqyi0tSfplyGJR76fANPOWZ3wY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fnb0MaBK1mhN7loMiasi60Z+Fqee7BBN00dio8kyeat+tFU0U5gVQuHf7KosCvyb/
	 6hHAekN4wafYKr8KEys+CW49IOOzsMCe82pzHl1jU3JkczTvJkZHvmC7b/QYD8DtF3
	 lGv24Kwj/A7E44gycuYFcXaX4/X2xJGBIkB6awoXQIei5Vtr0w9dYva3c926k8Pxt7
	 eenPjJsmBLslAdt2+ZSvBWQPqfaY94VVx1WoS2kSBZi9qUvEljkZkvZoXxq1mFIqyk
	 erOMa71sKY2yoDPOPEBCBFqNWCsjzGD5dr3cNmqb7GbmZgMfBaUApVkoVbq/bBvBGf
	 Eu3lFc0s7sCAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A8C861C36;
	Fri, 26 Sep 2025 14:08:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 09B7312D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 14:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF86D40688
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 14:08:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8eDlGUSvaMtg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 14:08:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.42;
 helo=mail-lf1-f42.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 788DE40678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 788DE40678
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 788DE40678
 for <intel-wired-lan@osuosl.org>; Fri, 26 Sep 2025 14:08:46 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-55ce508d4d6so1920104e87.0
 for <intel-wired-lan@osuosl.org>; Fri, 26 Sep 2025 07:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758895724; x=1759500524;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eCNUufYjOxpkimEdBtqyi0tSfplyGJR76fANPOWZ3wY=;
 b=liXnwlm1XX0hz6lPu0hlJ4Tancifv8D4aITJ94wVf1T1fUr8L1mDeu8HKYw42Gqwfw
 LIa/wlq1boIRy46saJoAt57rg92oYYh8oR3dCel+mMv0NsBU/b/E1aItlzxosg+kqWYK
 mF7nQ+icKBXyyKf/eAVwVui+sKXCHVqW90Gnr3boh5jUPllf20XJWCcOPoKjaxGQ9Xgw
 DsE+NEMCjLQyxOSf9rWVt1mVVy5ZI2JnTlYp8PRUuTC12kwAGgDLNTyGbDTjyQOAjXtk
 w8oMTQHPpfYMYlGhwmrsWQHDIekDWTNRgitWCUlPouipMylZncUiYlEuT/kWkoHmnHWx
 BWHg==
X-Gm-Message-State: AOJu0YxQUY+ecMABvP8MwjDbBjFTnmvFtIWCBEUJgh2aAGJyE+G+oWha
 nOMfkFroJ8am50iyK3CJ9V0WnQH9i7PfXM9LPph3Jy4/kTTnSmlWfcX2
X-Gm-Gg: ASbGncuLuzRgNXIl4XP/uXWptexRnWPRXOJNV7Sg+7ccT/ZlBxSua3zR90cRAE0txPS
 HKv1TwLz3cHxrUzbKL844gUzkoc6PKuzWLy4XD5/junP1QLQCn3IqVQbapbVn5wwm/BO7/cNe4e
 sFev9DC761j1msEJBloRn8CMfKqQKJ+xYD2QXcCDdEoqyHgoPLJJk+YHZvP7XwL1UzI+ujSQu/d
 +K7FzG8p1rIFNBA5oq3Q82jEdf2ZEViI20MKHqOCWW/n4A/dMMrw18Z/THYRRE6IqXZD7r0HTxV
 wN/MsqO53gJSddRcU4KYhk69rUbvpsHQNuA4XOSqH2fvFR3M4P+UAlOXnA4bjzDqt4PQ9GiZfa+
 dVQc05XNWVeVcWKcz4ft2DVjNcTfa7KT4hc5m+bYLRdFvdbBuIk+Pob5/Qcs2ppbLoQI+2eiyg0
 yEnvGxbcxkeCNtdjofa4hPVqz+Far3xQ==
X-Google-Smtp-Source: AGHT+IHobxSYEyAuoNGd03aLzFhPSo+TONKVYh+K1ujiCzJkxFtlm9VIkDAPSX6+nVOLOkw2b+/9ww==
X-Received: by 2002:a05:6512:33c6:b0:577:2e34:99e7 with SMTP id
 2adb3069b0e04-582d39b4f9emr2045006e87.42.1758895723883; 
 Fri, 26 Sep 2025 07:08:43 -0700 (PDT)
Received: from onyx.my.domain (ne8siskb4arbfyndlnu-1.v6.elisa-laajakaista.fi.
 [2001:99a:d2f:d700:f34a:8d04:fee2:9dea])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-58313dd67c4sm1843707e87.55.2025.09.26.07.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 07:08:43 -0700 (PDT)
Date: Fri, 26 Sep 2025 17:08:42 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, en-wei.wu@canonical.com,
 marmarek@invisiblethingslab.com
Message-ID: <20250926170842.70ce2fa8@onyx.my.domain>
In-Reply-To: <20250908080552.3614875-1-vitaly.lifshits@intel.com>
References: <20250908080552.3614875-1-vitaly.lifshits@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH v3 1/1] e1000e: Introduce private flag
 to disable K1
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

On Mon,  8 Sep 2025 11:05:52 +0300
Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:

> The K1 state reduces power consumption on ICH family network controllers
> during idle periods, similarly to L1 state on PCI Express NICs. Therefore,
> it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug that
> the problem may be due to firmware misconfiguration of specific systems,
> interoperability with certain link partners, or marginal electrical
> conditions of specific units.
>=20
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping K1
> enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state on
> the adapter.
>=20
> Additionally, disable K1 by default for MTL and later platforms, due to
> issues reported with the current configuration.
>=20
> Link: https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0=
oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> Link: https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@ony=
x.my.domain/
> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> Link: https://github.com/QubesOS/qubes-issues/issues/9896
> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v3: Removed disabling K1 in watchdog_task and change the private flag set=
ting
> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 45 ++++++++++++++++++---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 41 ++++++++++---------
>  drivers/net/ethernet/intel/e1000e/ich8lan.h |  2 +
>  drivers/net/ethernet/intel/e1000e/netdev.c  |  3 ++
>  5 files changed, 69 insertions(+), 23 deletions(-)
>
>[snip]
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/et=
hernet/intel/e1000e/ich8lan.c
> index df4e7d781cb1..a164431cdfe2 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -286,21 +286,26 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1=
000_hw *hw)
>  }
> =20
>  /**
> - * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
> - * align to MTP and later platform requirements.
> + * e1000_reconfigure_k1_params - reconfigure Kumeran K1 parameters.
>   * @hw: pointer to the HW structure
>   *
> + * By default K1 is enabled after MAC reset, so this function only
> + * disables it.
> + *
>   * Context: PHY semaphore must be held by caller.
>   * Return: 0 on success, negative on failure
>   */
> -static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
> +s32 e1000_reconfigure_k1_params(struct e1000_hw *hw)

I believe this function is no longer used outside this compilation unit in =
the v3.
So this could be left 'static' now.

>  {
>  	u16 phy_timeout;
>  	u32 fextnvm12;
>  	s32 ret_val;
> =20
> -	if (hw->mac.type < e1000_pch_mtp)
> +	if (hw->mac.type < e1000_pch_mtp) {
> +		if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
> +			return e1000_configure_k1_ich8lan(hw, false);
>  		return 0;
> +	}
> =20
>  	/* Change Kumeran K1 power down state from P0s to P1 */
>  	fextnvm12 =3D er32(FEXTNVM12);
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/et=
hernet/intel/e1000e/ich8lan.h
> index 5feb589a9b5f..97ceb6fa763b 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
> @@ -310,4 +310,6 @@ s32 e1000_read_emi_reg_locked(struct e1000_hw *hw, u1=
6 addr, u16 *data);
>  s32 e1000_write_emi_reg_locked(struct e1000_hw *hw, u16 addr, u16 data);
>  s32 e1000_set_eee_pchlan(struct e1000_hw *hw);
>  s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx);
> +s32 e1000_reconfigure_k1_params(struct e1000_hw *hw);
> +

And this hunk can be removed.

>  #endif /* _E1000E_ICH8LAN_H_ */

I also tested against regression on my affected machine and this indeed
fixes the issues. (I did not get to test the ethtool flag functionality.)

Once the above minor issue is resolved, you can add:

Reviewed-by: Timo Ter=C3=A4s <timo.teras@iki.fi>
Tested-by: Timo Ter=C3=A4s <timo.teras@iki.fi>
