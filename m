Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A11E790152C
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 10:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B20380EBD;
	Sun,  9 Jun 2024 08:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5lz75KCCa4AM; Sun,  9 Jun 2024 08:44:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 711F480ED6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717922653;
	bh=hgKUVom6Z0vXU8fyahNQvd6X16HweHc6vWwx0lJqDtg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BNAd0U54TlB6rtfhxoGaoadRMtMpJpeNrTjxQ92hH6iYpV7Gc8zfAX0kvSCWWDW0L
	 06BC3+kE6lPKpRQEyNvDkBC4ywg8/o4cSeeqbEy9N6xaopCYeCk4VumVgsKhoGW/VB
	 RF1+MXujRAyA9VZPIVv1Tn+3g64buHq7ykIWU5ov2UAhamNbwhx88NqGMia7IyvFL4
	 MFZPSBVZ8AIDMLsmSq0rP3aKq8OopEGaJ5j2V9aHKmuzbc95Ge8VxdcViCjDGadli5
	 Qd+rSdFPCD/Sh1DE7Ohw42V+fShGQVE5j0jJnAnGW0Pqq1WbCd3ZO8/6EJxF9fyKls
	 Vajpi2nOR3hWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 711F480ED6;
	Sun,  9 Jun 2024 08:44:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13C621BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DE6360670
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MejamlKPhOZS for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 08:44:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B45F46064C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B45F46064C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B45F46064C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:44:08 +0000 (UTC)
Received: from [192.168.0.2] (unknown [95.90.242.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D1A5E61E5FE01;
 Sun,  9 Jun 2024 10:43:52 +0200 (CEST)
Message-ID: <2a169e8b-b2c8-4576-8a5e-ae96c83abff9@molgen.mpg.de>
Date: Sun, 9 Jun 2024 10:43:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20240609065309.2049754-1-sasha.neftin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240609065309.2049754-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/1] igc: Remove the internal
 'eee_advert' field
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for your patch.

Am 09.06.24 um 08:53 schrieb Sasha Neftin:
> Since kernels 'ethtool_keee' structure is in use, the internal 'eee_advert'
> a field becomes pointless and can be removed.

Redundant *a*?

> This patch comes to clean up this redundant code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

Is this due to another commit? If so, note it in a Fixes: tag?

> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 1 -
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
>   drivers/net/ethernet/intel/igc/igc_main.c    | 3 ---
>   3 files changed, 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 8b14c029eda1..c38b4d0f00ce 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -202,7 +202,6 @@ struct igc_adapter {
>   	struct net_device *netdev;
>   
>   	struct ethtool_keee eee;
> -	u16 eee_advert;
>   
>   	unsigned long state;
>   	unsigned int flags;
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index a80ac148b402..1e9241103aa9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1636,10 +1636,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
>   	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
>   			 edata->supported);
>   
> -	if (hw->dev_spec._base.eee_enable)
> -		mii_eee_cap1_mod_linkmode_t(edata->advertised,
> -					    adapter->eee_advert);
> -
>   	eeer = rd32(IGC_EEER);
>   
>   	/* EEE status on negotiated link */
> @@ -1700,8 +1696,6 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>   		return -EINVAL;
>   	}
>   
> -	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
> -
>   	if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
>   		hw->dev_spec._base.eee_enable = edata->eee_enabled;
>   		adapter->flags |= IGC_FLAG_EEE;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c057d0afaf9a..772f425b1a24 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4976,9 +4976,6 @@ void igc_up(struct igc_adapter *adapter)
>   	/* start the watchdog. */
>   	hw->mac.get_link_status = true;
>   	schedule_work(&adapter->watchdog_task);
> -
> -	adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T |
> -			      MDIO_EEE_2_5GT;
>   }
>   
>   /**


Kind regards,

Paul
