Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C61985BC72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:44:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C496415AB;
	Tue, 20 Feb 2024 12:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzvPmJRAV9U9; Tue, 20 Feb 2024 12:44:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A9BB41592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708433055;
	bh=3gFiqg0wRVqX60s4FjRbJyKM1Au170z+vdSs/9NDhPY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ozh1VbGMDITFB4ReKLiOJ+ZG791drodn06tPyB7e9xRZvFE2bwkTpYBwxudfD2bWa
	 BRwOtQ9QJDURglQw50EV1GYpNvF6A2f7JH0sfCeH5N9EDvYTKnxMUtzAasWh37+5iX
	 l295c+H0zTlzDmdgNF2ATHwmp47oS19ouF4X5X+NP7rr90muKXR1SOcfAi4l8b/Uff
	 BprizHW4nh1sAirTnj6PSxcbUyEy2fv89ipXLANKEJ57FClG+vqhbHvjow/4Ho5AT0
	 qRn25DAntBthlKXOjMb7qoy1GPA/V/pHrOBXyX0mQAy6h9ueFc6IUQ6O5xnyO3uyUI
	 2f1bg1++FnfOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A9BB41592;
	Tue, 20 Feb 2024 12:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D2761BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57D4A4149D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDHjmgznU7dd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:44:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 611D34149C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 611D34149C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 611D34149C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 05D3E60F6B;
 Tue, 20 Feb 2024 12:44:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2082DC433F1;
 Tue, 20 Feb 2024 12:44:07 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:44:05 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220124405.GB40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-3-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-3-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708433050;
 bh=pOErrnrrbQEnaNXElPlM3SFEJg4SBjhPI7dWuasZy/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=atZ3fq9AY0IiRLZO2jJFAcr63jgN0ZbIIYtOxV8gmqrHKW19DYq2yO9IHt9WGQFzC
 w1RGc9MU0txJnxNkm4J75ZOhJMHChc5R3UyxDDlp+k+ngAc/MiVpfjokd4hwaUkZhR
 sqPGEvVNj6nL66wzCdfBmkdNJToKuJAZ5Gpz5HSrKLN1bACwSerEeRIABSqcZUosqV
 IG27lxcoQEoepMm8GZfctO0Mp9bN0a1kNTwFFyICClYwYuJQkrp1N7mkFdU2nMez8+
 hnmTenjYSa0uMH1kSO+A/3PcqVw/RHGOMHelIadPB4PrXvOXE5JFoRf+Kpw/MqaLcn
 z0sA+BCpO0i5A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=atZ3fq9A
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/9] net: qlogic: qede:
 Use linkmode helpers for EEE
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

On Sun, Feb 18, 2024 at 11:07:00AM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for bit manipulation of EEE
> advertise, support and link partner support. The aim is to drop the
> restricted _u32 variants in the near future.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Thanks Andrew,

the nit below notwithstanding this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/qlogic/qede/qede_ethtool.c | 60 ++++++++++++++++---------
>  1 file changed, 38 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c

...

> @@ -1812,9 +1820,12 @@ static int qede_get_eee(struct net_device *dev, struct ethtool_keee *edata)
>  
>  static int qede_set_eee(struct net_device *dev, struct ethtool_keee *edata)
>  {
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) = {};
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp) = {};
>  	struct qede_dev *edev = netdev_priv(dev);
>  	struct qed_link_output current_link;
>  	struct qed_link_params params;
> +	bool unsupp;
>  
>  	if (!edev->ops->common->can_link_change(edev->cdev)) {
>  		DP_INFO(edev, "Link settings are not allowed to be changed\n");
> @@ -1832,21 +1843,26 @@ static int qede_set_eee(struct net_device *dev, struct ethtool_keee *edata)
>  	memset(&params, 0, sizeof(params));
>  	params.override_flags |= QED_LINK_OVERRIDE_EEE_CONFIG;
>  
> -	if (!(edata->advertised_u32 & (ADVERTISED_1000baseT_Full |
> -				       ADVERTISED_10000baseT_Full)) ||
> -	    ((edata->advertised_u32 & (ADVERTISED_1000baseT_Full |
> -				       ADVERTISED_10000baseT_Full)) !=
> -	     edata->advertised_u32)) {
> +	linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +			 supported);
> +	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +			 supported);
> +
> +	unsupp = linkmode_andnot(tmp, edata->advertised, supported);

nit: Given the types involved, I might have written this as:

	unsupp = !!linkmode_andnot(tmp, edata->advertised, supported);

> +	if (unsupp) {
>  		DP_VERBOSE(edev, QED_MSG_DEBUG,
> -			   "Invalid advertised capabilities %d\n",
> -			   edata->advertised_u32);
> +			   "Invalid advertised capabilities %*pb\n",
> +			   __ETHTOOL_LINK_MODE_MASK_NBITS, edata->advertised);
>  		return -EINVAL;
>  	}
>  
> -	if (edata->advertised_u32 & ADVERTISED_1000baseT_Full)
> +	if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +			      edata->advertised))
>  		params.eee.adv_caps = QED_EEE_1G_ADV;
> -	if (edata->advertised_u32 & ADVERTISED_10000baseT_Full)
> -		params.eee.adv_caps |= QED_EEE_10G_ADV;
> +	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +			      edata->advertised))
> +		params.eee.adv_caps = QED_EEE_10G_ADV;
> +
>  	params.eee.enable = edata->eee_enabled;
>  	params.eee.tx_lpi_enable = edata->tx_lpi_enabled;
>  	params.eee.tx_lpi_timer = edata->tx_lpi_timer;
> 
> -- 
> 2.43.0
> 
> 
