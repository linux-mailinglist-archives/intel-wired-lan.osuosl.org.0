Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B64076A864C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 17:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52CAD820AB;
	Thu,  2 Mar 2023 16:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52CAD820AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677774278;
	bh=LX8wI0UCGW3CAZqrfiXqF3+zBH8JIO7E2yBw09iFRug=;
	h=References:From:To:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C1d1X8/uXPsYXmZhcqJPWbuL49LK9XXa7M7CRg1Ileq01dvxA+SK3z4aHbhW1DWCn
	 HayM8Mey68Ee5m25GYyJjvL1+T96bBuefVIV9RcoRj7Fji1ts5snaSBrwkFDlieRcH
	 hE0g9LzgrniiXdeGyYBX+Fi2uPz0xDbbexEBBc5uvPcwBdoPmuGCkFrJpfGORYYpwE
	 UWb7pOyD23Gk+YgrAcBHoXqwOWefhVSxsEuxhVwL4mfDHq0pG/G1Rcy+LhYwNvjpF5
	 t5CUCEEe96GfMqEZEZPpdVIX/UUm65h7eKVDkos7ts0ZF/qURwaiVunCqHReTBeoF/
	 Sck1Wwjoi16Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUPTwOKF8DFn; Thu,  2 Mar 2023 16:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4732C81EDD;
	Thu,  2 Mar 2023 16:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4732C81EDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7A241BF290
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 13:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81BC261192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 13:46:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81BC261192
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tnMh6u5hlOG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 13:46:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D98160BAD
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D98160BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 13:46:26 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.98,227,1673913600"; d="scan'208";a="298774921"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-iad-1a-m6i4x-617e30c2.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-2101.iad2.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2023 13:46:22 +0000
Received: from EX19D009EUA001.ant.amazon.com
 (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
 by email-inbound-relay-iad-1a-m6i4x-617e30c2.us-east-1.amazon.com (Postfix)
 with ESMTPS id BAD75647B0; Thu,  2 Mar 2023 13:46:13 +0000 (UTC)
Received: from EX19D028EUB003.ant.amazon.com (10.252.61.31) by
 EX19D009EUA001.ant.amazon.com (10.252.50.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.24; Thu, 2 Mar 2023 13:46:11 +0000
Received: from u570694869fb251.ant.amazon.com.amazon.com (10.85.143.175) by
 EX19D028EUB003.ant.amazon.com (10.252.61.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.24; Thu, 2 Mar 2023 13:45:59 +0000
References: <cover.1674913191.git.lorenzo@kernel.org>
 <948292cc7d72f2bc04b5973008ecf384f9296677.1674913191.git.lorenzo@kernel.org>
 <pj41zlcz5v1kkg.fsf@u570694869fb251.ant.amazon.com>
 <Y/58Kzah/ERCYMGD@lore-desk>
User-agent: mu4e 1.6.10; emacs 28.0.91
From: Shay Agroskin <shayagr@amazon.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Thu, 2 Mar 2023 15:44:18 +0200
In-Reply-To: <Y/58Kzah/ERCYMGD@lore-desk>
Message-ID: <pj41zllekf467h.fsf@u570694869fb251.ant.amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.85.143.175]
X-ClientProxiedBy: EX19D032UWB001.ant.amazon.com (10.13.139.152) To
 EX19D028EUB003.ant.amazon.com (10.252.61.31)
Precedence: Bulk
X-Mailman-Approved-At: Thu, 02 Mar 2023 16:24:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1677764787; x=1709300787;
 h=references:from:to:cc:date:in-reply-to:message-id:
 mime-version:subject;
 bh=Gc7jiqMATF/WgV3NyGXXqkcSKEdhQ2vY+HxNsRmp5Uc=;
 b=T5RBNOtQIeHccGPbig/vu+s1bAzT2+TgJxZ17sD5boscSE9tLd9Z49tO
 xI3+G814/h/oxOfB7rwQ3qHLqHg+I/iDIwNR50kcQkwkcCdhaVDbSSboT
 dIgHQUDTJHw/9tQX4OC5Yp7eHIIBsCrxSqiiFT3xfEb+LkKRI6rSIe1vR
 4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=T5RBNOtQ
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

> [[PGP Signed Part:Undecided]]
>> 
>> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> 
>> > From: Marek Majtyka <alardam@gmail.com>
>> > 
>> > ...
>> > 
>> > diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> > b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> > index e8ad5ea31aff..d3999db7c6a2 100644
>> > --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> > +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> > @@ -597,7 +597,9 @@ static int ena_xdp_set(struct net_device 
>> > *netdev,
>> > struct netdev_bpf *bpf)
>> >  				if (rc)
>> >  					return rc;
>> >  			}
>> > +			xdp_features_set_redirect_target(netdev, 
>> > false);
>> >  		} else if (old_bpf_prog) {
>> > + xdp_features_clear_redirect_target(netdev);
>> >  			rc = 
>> >  ena_destroy_and_free_all_xdp_queues(adapter);
>> >  			if (rc)
>> >  				return rc;
>> > @@ -4103,6 +4105,8 @@ static void 
>> > ena_set_conf_feat_params(struct
>> > ena_adapter *adapter,
>> >  	/* Set offload features */
>> >  	ena_set_dev_offloads(feat, netdev);
>> >   +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC |
>> > NETDEV_XDP_ACT_REDIRECT;
>> > +
>> >  	adapter->max_mtu = feat->dev_attr.max_mtu;
>> >  	netdev->max_mtu = adapter->max_mtu;
>> >  	netdev->min_mtu = ENA_MIN_MTU;
>> > 
>> 
>> Hi, thanks for the time you put in adjusting the ENA driver as 
>> well.
>
> Hi Shay,
>
>> 
>> Why did you set NETDEV_XDP_ACT_NDO_XMIT dynamically for some 
>> drivers (like
>> ENA and mlx5) and statically for others (like atlantic driver 
>> which also
>> redirects packets only when XDP program is loaded) ?
>> Is it only for the sake of notifying the user that an XDP 
>> program has been
>> loaded ?
>
> there are some drivers (e.g. mvneta) where 
> NETDEV_XDP_ACT_NDO_XMIT is always
> supported while there are other drivers (e.g. intel drivers) 
> where it
> depends on other configurations (e.g. if the driver needs to 
> reserve
> some queues for xdp).
>
> Regards,
> Lorenzo
>

Well given that ENA's ability to redirect packets goes hand in 
hand with its ability to process any XDP traffic I'd say it always 
supports ndo_xmit.
Doesn't seem like a big issue though.

Thanks for the explanation,
Shay

>
> [[End of PGP Signed Part]]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
