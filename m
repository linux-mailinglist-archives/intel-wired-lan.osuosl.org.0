Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7002D9F0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 19:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 361D3204DB;
	Mon, 14 Dec 2020 18:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKyPfwCWeQZS; Mon, 14 Dec 2020 18:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B35BF20510;
	Mon, 14 Dec 2020 18:30:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AB761BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 95F4B87094
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vr24GbNvkPwH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 18:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B50186760
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607970616;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EIf2JCGI48rPFPz2gsh8ftUao4WBFY/XukAB4tvlgxs=;
 b=ZGnZebM6z1mCTva+pQNvrFPfd41yDSeAfM9GkCAxVuIC52/PVAmGr2PMpMfFypKl98fXgk
 6m7XSbIKVp8Gzk/2udWOvcB+O4IYovm4wV7ywiJ26SeEbjFNUSl0+Xngvq9o1DiAFmffxk
 kxvTzXXhJRiURWvExh4XTSP/0yjXYl0=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-6WpmGVnTOe6c4xrLnviOwA-1; Mon, 14 Dec 2020 13:30:14 -0500
X-MC-Unique: 6WpmGVnTOe6c4xrLnviOwA-1
Received: by mail-ed1-f71.google.com with SMTP id dh21so8669117edb.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:30:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EIf2JCGI48rPFPz2gsh8ftUao4WBFY/XukAB4tvlgxs=;
 b=DFva2Dx9VzDlbNKs1vR94QGaW/VrG7Q/+BMlDEOmHpOHAZ/XwAWfcRIjmx2BrmyUqH
 rovUOM4N1t1OEaps93vAGvkQGpuW8HS5zt/zMbpnQ4iJyzXeVF7MfHgOzIqSpK/DpIhn
 XTkN/IsKPoLnPleFgAlyVqWK+c91/hyn4YmPwNscn/ezOYo8Wm1HPR8nqbz3Ge/5BB0V
 fdFTOtxfRaukoUNODP6J76pV58oB0DMg47i5TTCoazxaW3evr6Rk2QY1HCFmf7NJsKZY
 U2K8AT5ih90bBiY5tYVTZ4+SeLpAg40h8NcYQLgr2hx82J+yVUOV1u8Ho8J1KtoEFupv
 C9dQ==
X-Gm-Message-State: AOAM530YMboV+oc3BPgOs0yqcyfT8XW25b+jLNzZDQ8Dd8He9YIku+JO
 zv4Q2YPcGS44N9X+FXRMV0Ly5nDOR90hANLNrtvWHbPtaDjkU8TkXcKuOnln6T14xnHX5wDq11t
 b94E6aegimKCzLGzLZleE9/77mokTVw==
X-Received: by 2002:a17:906:30d2:: with SMTP id
 b18mr23540994ejb.109.1607970612142; 
 Mon, 14 Dec 2020 10:30:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzrhhybisEbWGtsbchj7dNQJwp8o+r2Tv+BWCOW7oS8uIStKg3KikoBxJYSRM7V9w9VPWCN4w==
X-Received: by 2002:a17:906:30d2:: with SMTP id
 b18mr23540936ejb.109.1607970611727; 
 Mon, 14 Dec 2020 10:30:11 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id ho34sm2716312ejc.13.2020.12.14.10.30.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Dec 2020 10:30:11 -0800 (PST)
From: Hans de Goede <hdegoede@redhat.com>
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <20201214153450.874339-5-mario.limonciello@dell.com>
Message-ID: <015f0d3c-57fa-06bc-4139-e4512201eb92@redhat.com>
Date: Mon, 14 Dec 2020 19:30:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201214153450.874339-5-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 4/4] e1000e: Export S0ix flags to
 ethtool
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
Cc: Netdev <netdev@vger.kernel.org>, Perry.Yuan@dell.com,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/14/20 4:34 PM, Mario Limonciello wrote:
> This flag can be used by an end user to disable S0ix flows on a
> buggy system or by an OEM for development purposes.
> 
> If you need this flag to be persisted across reboots, it's suggested
> to use a udev rule to call adjust it until the kernel could have your
> configuration in a disallow list.
> 
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 40 +++++++++++++++++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c  |  9 ++---
>  3 files changed, 46 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba7a0f8f6937..5b2143f4b1f8 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -436,6 +436,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
>  #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
>  #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
>  #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
> +#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
>  
>  #define E1000_RX_DESC_PS(R, i)	    \
>  	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 03215b0aee4b..eb683949ebfe 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -23,6 +23,13 @@ struct e1000_stats {
>  	int stat_offset;
>  };
>  
> +static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
> +#define E1000E_PRIV_FLAGS_S0IX_ENABLED	BIT(0)
> +	"s0ix-enabled",
> +};
> +
> +#define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
> +
>  #define E1000_STAT(str, m) { \
>  		.stat_string = str, \
>  		.type = E1000_STATS, \
> @@ -1776,6 +1783,8 @@ static int e1000e_get_sset_count(struct net_device __always_unused *netdev,
>  		return E1000_TEST_LEN;
>  	case ETH_SS_STATS:
>  		return E1000_STATS_LEN;
> +	case ETH_SS_PRIV_FLAGS:
> +		return E1000E_PRIV_FLAGS_STR_LEN;
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -2097,6 +2106,10 @@ static void e1000_get_strings(struct net_device __always_unused *netdev,
>  			p += ETH_GSTRING_LEN;
>  		}
>  		break;
> +	case ETH_SS_PRIV_FLAGS:
> +		memcpy(data, e1000e_priv_flags_strings,
> +		       E1000E_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> +		break;
>  	}
>  }
>  
> @@ -2305,6 +2318,31 @@ static int e1000e_get_ts_info(struct net_device *netdev,
>  	return 0;
>  }
>  
> +static u32 e1000e_get_priv_flags(struct net_device *netdev)
> +{
> +	struct e1000_adapter *adapter = netdev_priv(netdev);
> +	u32 priv_flags = 0;
> +
> +	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
> +		priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
> +
> +	return priv_flags;
> +}
> +
> +static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
> +{
> +	struct e1000_adapter *adapter = netdev_priv(netdev);
> +	unsigned int flags2 = adapter->flags2;
> +
> +	flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
> +	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED)
> +		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
> +	if (flags2 != adapter->flags2)
> +		adapter->flags2 = flags2;


This will allow ethtool to enable the s0ix code on hw which does not
support this. I believe that this needs a

	if (hw->mac.type >= e1000_pch_cnp)

Check to avoid this scenario. And probably return -EINVAL when
a user tries to enable this on hw where it is not supported.

Regards,

Hans




> +
> +	return 0;
> +}
> +
>  static const struct ethtool_ops e1000_ethtool_ops = {
>  	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS,
>  	.get_drvinfo		= e1000_get_drvinfo,
> @@ -2336,6 +2374,8 @@ static const struct ethtool_ops e1000_ethtool_ops = {
>  	.set_eee		= e1000e_set_eee,
>  	.get_link_ksettings	= e1000_get_link_ksettings,
>  	.set_link_ksettings	= e1000_set_link_ksettings,
> +	.get_priv_flags		= e1000e_get_priv_flags,
> +	.set_priv_flags		= e1000e_set_priv_flags,
>  };
>  
>  void e1000e_set_ethtool_ops(struct net_device *netdev)
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b9800ba2006c..e9b82c209c2d 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6923,7 +6923,6 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
>  	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
>  	struct e1000_adapter *adapter = netdev_priv(netdev);
>  	struct pci_dev *pdev = to_pci_dev(dev);
> -	struct e1000_hw *hw = &adapter->hw;
>  	int rc;
>  
>  	e1000e_flush_lpic(pdev);
> @@ -6935,7 +6934,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
>  		e1000e_pm_thaw(dev);
>  	} else {
>  		/* Introduce S0ix implementation */
> -		if (hw->mac.type >= e1000_pch_cnp)
> +		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>  			e1000e_s0ix_entry_flow(adapter);
>  	}
>  
> @@ -6947,11 +6946,10 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>  	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
>  	struct e1000_adapter *adapter = netdev_priv(netdev);
>  	struct pci_dev *pdev = to_pci_dev(dev);
> -	struct e1000_hw *hw = &adapter->hw;
>  	int rc;
>  
>  	/* Introduce S0ix implementation */
> -	if (hw->mac.type >= e1000_pch_cnp)
> +	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>  		e1000e_s0ix_exit_flow(adapter);
>  
>  	rc = __e1000_resume(pdev);
> @@ -7615,6 +7613,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	if (!(adapter->flags & FLAG_HAS_AMT))
>  		e1000e_get_hw_control(adapter);
>  
> +	if (hw->mac.type >= e1000_pch_cnp)
> +		adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
> +
>  	strlcpy(netdev->name, "eth%d", sizeof(netdev->name));
>  	err = register_netdev(netdev);
>  	if (err)
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
