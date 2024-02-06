Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610A84BA93
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 17:04:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B794D40607;
	Tue,  6 Feb 2024 16:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B794D40607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707235479;
	bh=mUixx3iBL3zLfOd+J4Lc/59gG+HVlflMASxiV2Jzw18=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4lIGewBxd3yMGcj9SGViN3mKgFZcmGXxCIgIxt8aSNMM/sjpEciguacj9kWRfTsa0
	 rLSsxPxm3KmrMf1pRjUq3ElVKTsszDff+1InmFXycHWanqi64Sr5AHF5rynzUVTo2s
	 ie5B64rsQIbm+bUaxCr3NDTzZNHApbNHiYdbnG5hcV6cJw97uMLALcWVfcxEs5fb4L
	 dTQRNtMBqAFH5CqfFt81KKskJ1hcD5RJ1rFA3ecKNpFxxDIHq0ezkvsZWu5izmwq/m
	 l3ntGH/65MLmKo0TyA7DRh8K9bv0qVGkSzA/PjvQvgR2mb6kKmjtZmzrrUp1aYZESZ
	 /3JRv/82vgC/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqQsKRimhkyo; Tue,  6 Feb 2024 16:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 351DB40629;
	Tue,  6 Feb 2024 16:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 351DB40629
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 370B61BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22D2481F31
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_BPardFoHeB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 09:34:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.70.178.240;
 helo=mslow1.mail.gandi.net; envelope-from=maxime.chevallier@bootlin.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0980081F07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0980081F07
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0980081F07
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:34:34 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id C5943C0362
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:34:32 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 82AA31C0004;
 Tue,  6 Feb 2024 09:34:26 +0000 (UTC)
Date: Tue, 6 Feb 2024 10:34:25 +0100
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240206103425.28e64a8f@device-28.home>
In-Reply-To: <20240204-keee-u32-cleanup-v1-7-fb6e08329d9a@lunn.ch>
References: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
 <20240204-keee-u32-cleanup-v1-7-fb6e08329d9a@lunn.ch>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: maxime.chevallier@bootlin.com
X-Mailman-Approved-At: Tue, 06 Feb 2024 16:04:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1707212067;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mUixx3iBL3zLfOd+J4Lc/59gG+HVlflMASxiV2Jzw18=;
 b=hcbmDRNjnQSZaxjzQPjZaqpaUocQchlBfZMaA3xreLWsdAsx14y6e5eZgqWEo5sjYasnrp
 xYzbetFMgNPSu4OEmfDPKxqlTnqL4FWDXd6VzqliPfUpJj3DeXHLeIkm7gt8UGQtPYlk/9
 UjxrS9LqjLOos/Xo7m/onVAtOjvwV2bWZATLG9xY3f2reOlsaYA9Ona79A9+nueZCrenZk
 FxB52U/y+uRDgVcFRXgUY0xy5Imi0AT8RZKPnger7moODGcgBM1SO0XZAjAEI5hdnon/CU
 se8Lj8Pb0pUgMFmK5PeXHLjJxl9Dh1jYx6kuP/EwwI9GFL/5lfNnbmy55l5boA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=hcbmDRNj
Subject: Re: [Intel-wired-lan] [PATCH 7/8] net: intel: igb: Use linkmode
 helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Andrew,

On Sun, 04 Feb 2024 17:40:24 -0600
Andrew Lunn <andrew@lunn.ch> wrote:

> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

[...]

> @@ -3109,6 +3111,8 @@ static int igb_set_eee(struct net_device *netdev,
>  		       struct ethtool_keee *edata)
>  {
>  	struct igb_adapter *adapter = netdev_priv(netdev);
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) = {};
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp) = {};
>  	struct e1000_hw *hw = &adapter->hw;
>  	struct ethtool_keee eee_curr;
>  	bool adv1g_eee = true, adv100m_eee = true;
> @@ -3138,14 +3142,21 @@ static int igb_set_eee(struct net_device *netdev,
>  			return -EINVAL;
>  		}
>  
> -		if (!edata->advertised_u32 || (edata->advertised_u32 &
> -		    ~(ADVERTISE_100_FULL | ADVERTISE_1000_FULL))) {
> +		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +				 supported);
> +		linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +				 supported);
> +		if (linkmode_andnot(tmp, edata->advertised, supported)) {
>  			dev_err(&adapter->pdev->dev,
>  				"EEE Advertisement supports only 100Tx and/or 100T full duplex\n");
>  			return -EINVAL;
>  		}
> -		adv100m_eee = !!(edata->advertised_u32 & ADVERTISE_100_FULL);
> -		adv1g_eee = !!(edata->advertised_u32 & ADVERTISE_1000_FULL);
> +		adv100m_eee = linkmode_test_bit(
> +			ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +			edata->advertised);
> +		adv1g_eee = linkmode_test_bit(
> +			ETHTOOL_LINK_MODE_100baseT_Full_BIT,

Probably a typo, I think it should be ETHTOOL_LINK_MODE_1000baseT_Full_BIT
here :)

> +			edata->advertised);
>  
>  	} else if (!edata->eee_enabled) {
>  		dev_err(&adapter->pdev->dev,
> @@ -3153,7 +3164,7 @@ static int igb_set_eee(struct net_device *netdev,
>  		return -EINVAL;
>  	}
>  
> -	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised_u32);
> +	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
>  	if (hw->dev_spec._82575.eee_disable != !edata->eee_enabled) {
>  		hw->dev_spec._82575.eee_disable = !edata->eee_enabled;
>  		adapter->flags |= IGB_FLAG_EEE;
> 

Thanks,

Maxime
