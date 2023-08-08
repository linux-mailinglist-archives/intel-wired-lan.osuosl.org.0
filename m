Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E54774B8C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A8C141756;
	Tue,  8 Aug 2023 20:49:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A8C141756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691527791;
	bh=1geq9VUsggow4ILXrH4+fLKeCRAv5D62mQAoV1Zs2f4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k26lulQEgU13cMUK/EqVIeYEdbLfrqIDtYZhjG/6L6MM7w6kHKBz1f3xeoNHkalf0
	 dQEiEdIEfA2jzOSmeSGcNU7Uuj4Mgpz6LHJR5JlHLEaDyV/yBrhfspmc498KQGnKBh
	 X9RY8KetDF7IFedOA4/HYRi46DNziR4h6qaeOz8TtfLebYtxPGtsMh4IgjxgUT4gDY
	 okHbELKQLX3zC1Dvtpt4g1vuvTFwlkPM9IXU8sY5bwNtq4V+DhQn8vsZS2ykP0cmfV
	 SWENGggC1iHiqKMITopXqGP9ok1wFHzUd14oiOPfYlSDX/MVkSgEXLIbMwQTKVNUgs
	 TawiEa5mswhRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 68sDjRuqb-yf; Tue,  8 Aug 2023 20:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D90DD40939;
	Tue,  8 Aug 2023 20:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D90DD40939
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4657B1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D8DF4038E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D8DF4038E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CP4BuVPuO3lU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:49:43 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75355401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:49:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75355401AD
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AD6FC62C51;
 Tue,  8 Aug 2023 20:49:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A83BDC433C7;
 Tue,  8 Aug 2023 20:49:40 +0000 (UTC)
Date: Tue, 8 Aug 2023 22:49:38 +0200
From: Simon Horman <horms@kernel.org>
To: Wenjun Wu <wenjun1.wu@intel.com>
Message-ID: <ZNKqYlC86siUsRzd@vergenet.net>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-5-wenjun1.wu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230808015734.1060525-5-wenjun1.wu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691527782;
 bh=JYHRhEx/YWaT7o/axmRTijT6ZjSVmkc8XuhZg3PcQ8w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HfjUR/oebhUhEd+UQfCAKdc3H9NQbZe1xja3nMcQStE1m++9lgjIRY+eZoEmqcSrX
 3cka0Z/YKxef3cHOw35HdxFPxPx6kolAGF5PNorYDNVHUwEx7zOl9JDU7IczPsgJDy
 ir/MR2qVArG/O0eo2cDfzFyHyePKYqo6OyJzP0CVScZ1hoHZhzWuIC9bUEqsXbxHR1
 r4R3pE8DmVgLffZ3gAL7iENBKUFz6xVdc+sEND0xAEXmDnPYoq1npWIsaBrhg91elY
 vYDcYuQPlOKSHShwMfAJORMaVSaJdQ5Zv5Seum/SCsJzTm0yr8Ni+0NGh5lO/IdgG4
 aKyoaSPDtAJvg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HfjUR/oe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] iavf: Add devlink
 port function rate API support
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 08, 2023 at 09:57:33AM +0800, Wenjun Wu wrote:
> From: Jun Zhang <xuejun.zhang@intel.com>
> 
> To allow user to configure queue based parameters, devlink port function
> rate api functions are added for setting node tx_max and tx_share
> parameters.
> 
> iavf rate tree with root node and  queue nodes is created and registered
> with devlink rate when iavf adapter is configured.
> 
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

...

> +/**
> + * iavf_update_queue_tx_max - sets tx max parameter
> + * @adapter: iavf adapter struct instance
> + * @node: iavf rate node struct instance
> + * @bw: bandwidth in bytes per second
> + * @extack: extended netdev ack structure
> + *
> + * This function sets max BW limit.
> + */
> +static int iavf_update_queue_tx_max(struct iavf_adapter *adapter,
> +				    struct iavf_dev_rate_node *node,
> +				    u64 bw, struct netlink_ext_ack *extack)
> +{
> +	/* Keep in kbps */
> +	node->tx_max_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
> +	if (ADV_LINK_SUPPORT(adapter)) {
> +		if (node->tx_max_temp / 1000 > adapter->link_speed_mbps)
> +			return -EINVAL;
> +	}
> +
> +	node->tx_update_flag |= IAVF_FLAG_TX_MAX_UPDATED;
> +
> +	return iavf_check_update_config(adapter, node);
> +}
> +
> +/**
> + * iavf_devlink_rate_node_tx_max_set - devlink_rate API for setting tx max
> + * @rate_node: devlink rate struct instance

Hi Jun Zhang,

Please describe all the parameters of iavf_devlink_rate_node_tx_max_set
in it's kernel doc.

./scripts/kernel-doc -none is your friend here.

> + *
> + * This function implements rate_node_tx_max_set function of devlink_ops
> + */
> +static int iavf_devlink_rate_node_tx_max_set(struct devlink_rate *rate_node,
> +					     void *priv, u64 tx_max,
> +					     struct netlink_ext_ack *extack)

...

-- 
pw-bot: changes-requested
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
