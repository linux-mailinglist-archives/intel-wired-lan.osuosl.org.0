Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 201B76CECF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D67D841DD;
	Wed, 29 Mar 2023 15:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D67D841DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680104002;
	bh=hVVZAvFrxUrvvKFE74eDlRohtdOYiiPRTH3aomqiatE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EE1VBsMX2aeiC9jrHXSXBeArXyfsgmyTVb23gVqsDwFZ5aSu3gZnyKffjcQvRiwHz
	 HBaIZFtOar1YS7m978TGZ2Xxz825d+8RnjLvOOJ5ddbmcyoKqj853luZtWHViOWsii
	 DXNoR52nB+KpHDfCVGBF9Jo5odO3//XtW/aIeOI4nW4Q2GJrL9Xwk9WaLiZw6D1MAg
	 5feymmHWoFOnH4yltnRtQyqYDKW3xTC6oryDMfWNtEY/QgzZLctv1FWr6tBfX9YnFN
	 Noe6miEx78KtoriIu2181FtXlHXZSH7SwSy720XMmelmcsM4dRcBLFQerdKiQO0Lvq
	 r0LjVPbMbYUpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oryyyYOd1ngG; Wed, 29 Mar 2023 15:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70A5B841D9;
	Wed, 29 Mar 2023 15:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70A5B841D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 719E31BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54325841D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54325841D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkud4rAWq9RP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 15:33:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1A48841C9
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1A48841C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:33:14 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1phXnR-008lye-7A; Wed, 29 Mar 2023 17:33:09 +0200
Date: Wed, 29 Mar 2023 17:33:09 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <53741774-bf50-4c17-9ea9-0c101ea21d52@lunn.ch>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-15-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230329140404.1647925-15-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=4jtDd//KLM1/az8/LDt0TKRVf5SXIeJK6JOubZyXexo=; b=Z6aHOTEmhw/y6OkHLc0pdf0OqF
 PVq2sEnsDv+LT5AT69zsrOyc30xbx7owichltZyPc07b05kUXLXOcqzYw0i+n7N/AvtAnbTK78T74
 ci1BlN7QmT5kDntqpOkrxgUYPdWiaglLKmLUxnh/W8C2tZ739lO3PLuEh/yGo0wWDSl0=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Z6aHOTEm
Subject: Re: [Intel-wired-lan] [PATCH net-next 14/15] idpf: add ethtool
 callbacks
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> +static int idpf_get_link_ksettings(struct net_device *netdev,
> +				   struct ethtool_link_ksettings *cmd)
> +{
> +	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!vport)
> +		return -EINVAL;
> +
> +	ethtool_link_ksettings_zero_link_mode(cmd, supported);
> +	cmd->base.autoneg = AUTONEG_DISABLE;
> +	cmd->base.port = PORT_NONE;
> +	cmd->base.duplex = DUPLEX_FULL;
> +	cmd->base.speed = vport->link_speed_mbps;


No supported modes, yet it has a duplex and a link speed?

> +static void idpf_recv_event_msg(struct idpf_vport *vport)
> +{
> +	struct virtchnl2_event *v2e = NULL;
> +	bool link_status;
> +	u32 event;
> +
> +	v2e = (struct virtchnl2_event *)vport->vc_msg;
> +	event = le32_to_cpu(v2e->event);
> +
> +	switch (event) {
> +	case VIRTCHNL2_EVENT_LINK_CHANGE:
> +		vport->link_speed_mbps = le32_to_cpu(v2e->link_speed);
> +		link_status = v2e->link_status;
> +
> +		if (vport->link_up == link_status)
> +			break;
> +
> +		vport->link_up = link_status;
> +		if (vport->state == __IDPF_VPORT_UP) {
> +			if (vport->link_up) {
> +				netif_carrier_on(vport->netdev);
> +				netif_tx_start_all_queues(vport->netdev);
> +			} else {
> +				netif_tx_stop_all_queues(vport->netdev);
> +				netif_carrier_off(vport->netdev);
> +			}
> +		}

It has a link speed even when the carrier is off? This just makes me
think the link speed is bogus, and you would be better reporting
DUPLEX_UNKNOWN, SPEED_UNKNOWN. Or not even implementing ksettings,
since you don't have anything meaningful to report.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
