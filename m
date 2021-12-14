Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E9D4742FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 13:54:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D19D84026F;
	Tue, 14 Dec 2021 12:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j0dwROisEPaB; Tue, 14 Dec 2021 12:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC7B040266;
	Tue, 14 Dec 2021 12:54:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD96D1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA9B46080B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gw5ri6VgXXpd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 12:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2045C6066D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639486456; x=1671022456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pc8bGRxTA0vBWYsYScp20sLMBCpoYL3dlul4Oiv0nEY=;
 b=PRt4FpAQIa5WyC5706o+Q6VBuXB2hon62YDQQk5orKsWgZ4GMJ/6oC/P
 jB+PCocfNeXKaG4MKAx5eYRQQDN7+Pna6lCdPP2IdQi2UrgqEjn9XdpBU
 merlu9lYFmI7lP1WQbPFnAHDTRRh8z7Db4VEqI62cYK/03pIv6o2XiaMi
 GlOGtgGJ0bbCsR+LkI+zMwSD4xaY7kXvhfAoZuvi5QpO+eWNWssptN3GV
 D3Kk1V+SSH26Kw1khWHnNfakpfVsnQ78cZ8w02W2cTBA6dCBqyWXXzZ8p
 ZfUQQnsawPZ0HQbqEKQXbZUUJg/qehR76urDuMCon2uVXMuANiuVmRvgs Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238781370"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238781370"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 04:54:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="609766971"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2021 04:54:14 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BECsDUR002209; Tue, 14 Dec 2021 12:54:13 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Tue, 14 Dec 2021 13:53:25 +0100
Message-Id: <20211214125325.1081251-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211214101016.5959-1-jedrzej.jagielski@intel.com>
References: <20211214101016.5959-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect netdev's
 real number of RX/TX queues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Tue, 14 Dec 2021 10:10:16 +0000

> There was a wrong queues representation in sysfs during
> driver's reinitialization in case of online cpus number is
> less than combined queues. It was caused by stopped
> NetworkManager, which is responsible for calling vsi_open
> function during driver's initialization.
> In specific situation (ex. 12 cpus online) there were 16 queues
> in /sys/class/net/<iface>/queues. In case of modifying queues with
> value higher, than number of online cpus, then it caused write
> errors and other errors.
> Add updating of sysfs's queues representation during driver
> initialization.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 5322f44ed6ce..850264c4285b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14074,6 +14074,25 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	return NULL;
>  }
>  
> +/**
> + * i40e_netif_set_realnum_tx_rx_queues - Update number of tx/rx queues
> + * @vsi: vsi structure
> + *
> + * This updates netdev's number of tx/rx queues
> + *
> + * Returns status of setting tx/rx queues
> + **/
> +static int i40e_netif_set_realnum_tx_rx_queues(struct i40e_vsi *vsi)
> +{
> +	netif_set_real_num_rx_queues(
> +		vsi->netdev,
> +		vsi->num_queue_pairs);
> +
> +	return netif_set_real_num_tx_queues(
> +		vsi->netdev,
> +		vsi->num_queue_pairs);
> +}

CHECK: Lines should not end with a '('
#393: FILE: drivers/net/ethernet/intel/i40e/i40e_main.c:14087:
+	netif_set_real_num_rx_queues(

CHECK: Lines should not end with a '('
#397: FILE: drivers/net/ethernet/intel/i40e/i40e_main.c:14091:
+	return netif_set_real_num_tx_queues(

The first parameter (vsi->netdev) fits into 79/80 chars, so only
the second one should be wrapped.

Please run `checkpatch --codespell --strict` on every patch you
create.

> +
>  /**
>   * i40e_vsi_setup - Set up a VSI by a given type
>   * @pf: board private structure
> @@ -14203,6 +14222,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
>  	case I40E_VSI_MAIN:
>  	case I40E_VSI_VMDQ2:
>  		ret = i40e_config_netdev(vsi);
> +		if (ret)
> +			goto err_netdev;
> +		ret = i40e_netif_set_realnum_tx_rx_queues(vsi);
>  		if (ret)
>  			goto err_netdev;
>  		ret = register_netdev(vsi->netdev);
> -- 
> 2.27.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
