Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9215F6A46F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 17:29:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CD5A60C0B;
	Mon, 27 Feb 2023 16:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CD5A60C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677515374;
	bh=lnmZeQsdemo7YNYY1gW8qcTiDT5sJsgo1gXEeWBEnBc=;
	h=References:From:To:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lSt9AsiZHiPXd1WdwM6Dtr9ar1xNaH8MLxOsfQgiAy96nBpJUPRTywk36+C934j6s
	 1W1Mb49MAgaCqL1i2lbO859gDq7J5zDh0W4yGXIdSkhDNMLHjgN9fqgTpSHCI+Tm5c
	 gAvUjXi9aDzC424lNHJoVmEdMQ0TiNXcKWTdOR4vNBktAtx5PV4Wes+Xf1/SvZvT3w
	 wVQrZq5B2nYfD1dPsRjrEdBx6n3vCxQy4XQwViG3dTvxZaB4tNmdBpMF4XsgHlabSg
	 wbxAxOZG2ygzu65mL3CocXgcn7JNtY1bx918mlPiSea8D4tROelo8Dpx1wphAtUCS8
	 9rQMNBL7VMZgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6G-3Gly1jfOx; Mon, 27 Feb 2023 16:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAE6660670;
	Mon, 27 Feb 2023 16:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE6660670
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7711BF25F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 10:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CC72415EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 10:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CC72415EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdGl9eQswQbv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 10:17:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9348415A7
Received: from smtp-fw-9103.amazon.com (smtp-fw-9103.amazon.com
 [207.171.188.200])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9348415A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 10:17:50 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.97,331,1669075200"; d="scan'208";a="1106934594"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO
 email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com)
 ([10.25.36.214]) by smtp-border-fw-9103.sea19.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2023 10:15:16 +0000
Received: from EX19D006EUA002.ant.amazon.com
 (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
 by email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com (Postfix)
 with ESMTPS id 2A6774499A; Mon, 27 Feb 2023 10:15:14 +0000 (UTC)
Received: from EX19D028EUB003.ant.amazon.com (10.252.61.31) by
 EX19D006EUA002.ant.amazon.com (10.252.50.65) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.24; Mon, 27 Feb 2023 10:15:13 +0000
Received: from u570694869fb251.ant.amazon.com.amazon.com (10.85.143.178) by
 EX19D028EUB003.ant.amazon.com (10.252.61.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.24; Mon, 27 Feb 2023 10:15:00 +0000
References: <cover.1674913191.git.lorenzo@kernel.org>
 <948292cc7d72f2bc04b5973008ecf384f9296677.1674913191.git.lorenzo@kernel.org>
User-agent: mu4e 1.6.10; emacs 28.0.91
From: Shay Agroskin <shayagr@amazon.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 27 Feb 2023 11:50:38 +0200
In-Reply-To: <948292cc7d72f2bc04b5973008ecf384f9296677.1674913191.git.lorenzo@kernel.org>
Message-ID: <pj41zlcz5v1kkg.fsf@u570694869fb251.ant.amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.85.143.178]
X-ClientProxiedBy: EX19D032UWB004.ant.amazon.com (10.13.139.136) To
 EX19D028EUB003.ant.amazon.com (10.252.61.31)
Precedence: Bulk
X-Mailman-Approved-At: Mon, 27 Feb 2023 16:29:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1677493070; x=1709029070;
 h=references:from:to:cc:subject:date:in-reply-to:
 message-id:mime-version;
 bh=WDKEfsQ09EQinniY8kNYa4ZtvRstDHSkkWFa8N7k+sY=;
 b=dp4KEMxZLIiQmbVDheN3e0D9fl6RtkNHgPb/gka9aft48rkbMvQgmLlr
 PLcMtVBG+b1Q6Tzxf17bRkv9caguPzFR7QoxStkqAXzYbT9Fsosc5ncPv
 nB7Yq9f+HMf/o+svJbjykTIVXZ9w1Ji2OJovHDBZJUKXnS9zMmpQQmqcC
 o=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=dp4KEMxZ
Subject: Re: [Intel-wired-lan] [PATCH v4 bpf-next 2/8] drivers: net: turn on
 XDP features
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Lorenzo Bianconi <lorenzo@kernel.org> writes:

> From: Marek Majtyka <alardam@gmail.com>
>
> ...
>
> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c 
> b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> index e8ad5ea31aff..d3999db7c6a2 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> @@ -597,7 +597,9 @@ static int ena_xdp_set(struct net_device 
> *netdev, struct netdev_bpf *bpf)
>  				if (rc)
>  					return rc;
>  			}
> +			xdp_features_set_redirect_target(netdev, 
> false);
>  		} else if (old_bpf_prog) {
> + 
> xdp_features_clear_redirect_target(netdev);
>  			rc = 
>  ena_destroy_and_free_all_xdp_queues(adapter);
>  			if (rc)
>  				return rc;
> @@ -4103,6 +4105,8 @@ static void 
> ena_set_conf_feat_params(struct ena_adapter *adapter,
>  	/* Set offload features */
>  	ena_set_dev_offloads(feat, netdev);
>  
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | 
> NETDEV_XDP_ACT_REDIRECT;
> +
>  	adapter->max_mtu = feat->dev_attr.max_mtu;
>  	netdev->max_mtu = adapter->max_mtu;
>  	netdev->min_mtu = ENA_MIN_MTU;
>

Hi, thanks for the time you put in adjusting the ENA driver as 
well.

Why did you set NETDEV_XDP_ACT_NDO_XMIT dynamically for some 
drivers (like ENA and mlx5) and statically for others (like 
atlantic driver which also redirects packets only when XDP program 
is loaded) ?
Is it only for the sake of notifying the user that an XDP program 
has been loaded ?

Thanks,
Shay

> ...
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index a5a7ecf6391c..82727b47259d 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -773,3 +773,21 @@ static int __init xdp_metadata_init(void)
>  	return register_btf_kfunc_id_set(BPF_PROG_TYPE_XDP, 
>  &xdp_metadata_kfunc_set);
>  }
>  late_initcall(xdp_metadata_init);
> +
> +void xdp_features_set_redirect_target(struct net_device *dev, 
> bool support_sg)
> +{
> +	dev->xdp_features |= NETDEV_XDP_ACT_NDO_XMIT;
> +	if (support_sg)
> +		dev->xdp_features |= NETDEV_XDP_ACT_NDO_XMIT_SG;
> +
> +	call_netdevice_notifiers(NETDEV_XDP_FEAT_CHANGE, dev);
> +}
> +EXPORT_SYMBOL_GPL(xdp_features_set_redirect_target);
> +
> +void xdp_features_clear_redirect_target(struct net_device *dev)
> +{
> +	dev->xdp_features &= ~(NETDEV_XDP_ACT_NDO_XMIT |
> +			       NETDEV_XDP_ACT_NDO_XMIT_SG);
> +	call_netdevice_notifiers(NETDEV_XDP_FEAT_CHANGE, dev);
> +}
> +EXPORT_SYMBOL_GPL(xdp_features_clear_redirect_target);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
