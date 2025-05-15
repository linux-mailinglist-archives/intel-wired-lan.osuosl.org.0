Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F83FAB7AF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 03:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A3B041558;
	Thu, 15 May 2025 01:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uskDkYJ6jtiF; Thu, 15 May 2025 01:23:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA33041529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747272228;
	bh=ZNEVePrYcEKpGjmy4ptaEK0bCgRenH9d4U+STgUBLp8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aVHCZFtmex7YSN8xJeYugtjHNmy4clfoAby6d3iB/zoYA5MGbE5eREX3bnCizOosf
	 C52uiJrKto5Nwd+ZSxr2h7SZDsan2sTCiQEY+d8AiGxfve8z5cRLTnwMOGw/8i/aj/
	 rLvBcO50yd+dWVThN9s1eV5MCkEXGOeQxBsPUVSKQcEcGv94u2XvUoX8CYZM4f/UTN
	 rRP7ojGTPksAaFZECz1SqIBFigxNTpr8y0/9CyXCFdBpscERnYAFicEtA/Owi9cz2R
	 w5+SXN55SBJ8ANw0wiSz8ilCy/7g2R3WFIQWssW6Y2hXFrefhapHpgk8MSRB5DAyGA
	 OXQ2PzaQfi5xQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA33041529;
	Thu, 15 May 2025 01:23:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B34F5179
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A47F340254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWunAphlIeya for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 01:23:46 +0000 (UTC)
X-Greylist: delayed 793 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 15 May 2025 01:23:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 92AD6401B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92AD6401B0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92AD6401B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:23:45 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uFNJz-00CcSc-Nn; Thu, 15 May 2025 03:23:39 +0200
Date: Thu, 15 May 2025 03:23:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Pazdan <mpazdan@arista.com>
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com,
 daniel.zahka@gmail.com, davem@davemloft.net, ecree.xilinx@gmail.com,
 edumazet@google.com, gal@nvidia.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, jianbol@nvidia.com,
 kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Message-ID: <200f7d11-50c2-4ee2-a80b-15341fbbd5f4@lunn.ch>
References: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
 <20250513224017.202236-1-mpazdan@arista.com>
 <20250513224017.202236-2-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513224017.202236-2-mpazdan@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=ZNEVePrYcEKpGjmy4ptaEK0bCgRenH9d4U+STgUBLp8=; b=TqrC6tHx2nDhX1MPJu5HfQDFFF
 7iqxY6YE+cP/esAGf7veHNXV1UqPnK7nme2FRbF2NuoIM2IJw58Wj7bkVswUBcQrkVJntiDzFCHdt
 tu1FC0gCzbV4WHr4o5HNEWiaqNxr5IwE+rAp/swFVcVA9BuGHRag39g70xUNxAlv4Grs=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=TqrC6tHx
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: add qsfp
 transceiver reset, interrupt and presence pin control
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

> + * ice_get_module_mgmt_signal - get module management signal status
> + * @dev: network interface device structure
> + * @params: ethtool module management signal params
> + * @extack: extended ACK from the Netlink message
> + *
> + * Returns -EIO if AQ command for GPIO get failed, otherwise
> + * returns 0 and current status of requested signal in params.
> + */
> +static int
> +ice_get_module_mgmt_signal(struct net_device *dev,
> +			   struct ethtool_module_mgmt_params *params,
> +			   struct netlink_ext_ack *extack)
> +{
> +	struct ice_netdev_priv *np = netdev_priv(dev);
> +	struct ice_pf *pf = np->vsi->back;
> +	struct ice_hw *hw = &pf->hw;
> +	u16 gpio_handle = 0; /* SOC/on-chip GPIO */
> +	bool value;
> +	int ret = 0;
> +
> +	if (hw->has_module_mgmt_gpio) {
> +		switch (params->type) {
> +		case ETHTOOL_MODULE_MGMT_RESET:
> +			ret = ice_aq_get_gpio(hw, gpio_handle,
> +					      ICE_MGMT_PIN_RESET, &value, NULL);
> +			break;

Reset, i can kind of understand being used this way.

> +		case ETHTOOL_MODULE_MGMT_INT:
> +			ret = ice_aq_get_gpio(hw, gpio_handle,
> +					      ICE_MGMT_PIN_INT, &value, NULL);
> +			break;
> +		case ETHTOOL_MODULE_MGMT_PRESENT:
> +			ret = ice_aq_get_gpio(hw, gpio_handle,
> +					      ICE_MGMT_PIN_PRESENT, &value, NULL);
> +			break;

but not these two. These represent events. I've not looked at the
datasheet... Does the GPIO controller support interrupts? For PRESENT
you are interested in the edges, maybe with some debounce logic. For
INT, i _guess_ it is active low? But i've no idea what user space is
going to actually do on an interrupt, and how is it going to clear the
interrupt? This smells like a user space driver, which is not
something we want. Even if there is a legitimate use case, which there
might be for PRESENT, polling does not make much sense when the kernel
can broadcast a netlink message to user space if the GPIO controller
has interrupt support.

    Andrew

---
pw-bot: cr
