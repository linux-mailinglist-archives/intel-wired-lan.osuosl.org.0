Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A85D13D58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 16:56:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F7B61CCB;
	Mon, 12 Jan 2026 15:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sW5-353yEexy; Mon, 12 Jan 2026 15:56:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6041B6F4BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768233389;
	bh=yVL7iT/rtDYvyNiRL1d4ysqCbmuXsXMI/xyJ7QnChRo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PtjTfevOBrwHksDZ59AaMwRMIo7Jxv8u79i93YeJOVjhPKEzjf4UIasCGxDUmXawG
	 ZD4NBMyuVwSPtJpmpis2bXGafKzOX7LYe98CMc7P3HGZlfwApLH4fvkjYwD2UIUQNg
	 mHAVfbo0rN6UpKSWMeBKUO2YCDH4arn/Wpj0UVoC+Ma7j34/Hk+fmvCvoiZvfrMCRl
	 iUJ+KrCkdLQkG8hT9ra4QucsSVG3PE/MUJDoodC+CiXMKVhVpqy0sniMQ5pbqO2wy9
	 0g4kR6Vym2a0dzqFJf9JMphRGP3WkN7RsZdjNIpMJLASYrEeEFCRu1AOjFNUAwA2Rh
	 ZplEsmHtLjA/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6041B6F4BE;
	Mon, 12 Jan 2026 15:56:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6ACAA1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C4BC400E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQARNhfNY5qm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 15:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 66FB9422CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66FB9422CF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66FB9422CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:56:26 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vfKHG-002VA5-Id; Mon, 12 Jan 2026 16:56:22 +0100
Date: Mon, 12 Jan 2026 16:56:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <8ca1bd29-a736-40bf-8d53-39c9577228c0@lunn.ch>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-8-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112140108.1173835-8-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=yVL7iT/rtDYvyNiRL1d4ysqCbmuXsXMI/xyJ7QnChRo=; b=fE21Mp34VUrVBaGb1BEQOever0
 /t8umgtrpOKpGjRoESfcXMvtzj5d0WpEfuwor+eyrUC0RV8rxuMZ6xscQoan0710VASKkaqoRjyEs
 nmXqawB9UD1GOnFtitvPv8epVSivDu06bkofUGEKel7PSJwJAV4yep91EYPDvHJdqk98=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=fE21Mp34
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 7/7] ixgbe: E610: add EEE
 support
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

> +/**
> + * ixgbe_setup_eee_e610 - Enable/disable EEE support
> + * @hw: pointer to the HW structure
> + * @enable_eee: boolean flag to enable EEE
> + *
> + * Enable/disable EEE based on @enable_eee.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_setup_eee_e610(struct ixgbe_hw *hw, bool enable_eee)
> +{
> +	struct ixgbe_aci_cmd_get_phy_caps_data phy_caps = {};
> +	struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg = {};
> +	u16 eee_cap = 0;
> +	int err;
> +
> +	err = ixgbe_aci_get_phy_caps(hw, false,
> +		IXGBE_ACI_REPORT_ACTIVE_CFG, &phy_caps);
> +	if (err)
> +		return err;
> +
> +	ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
> +	phy_cfg.caps |= (IXGBE_ACI_PHY_ENA_LINK |
> +			IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT);
> +
> +	if (enable_eee) {
> +		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_100_FULL)
> +			eee_cap |= IXGBE_ACI_PHY_EEE_EN_100BASE_TX;
> +		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_1GB_FULL)
> +			eee_cap |= IXGBE_ACI_PHY_EEE_EN_1000BASE_T;

You say in a few different places that EEE is not supported for <=
1G. So why have this? It should never happen.

> +bool ixgbe_is_eee_link_speed_supported_e610(struct ixgbe_adapter *adapter,
> +					    bool print_msg)
> +{
> +	switch (adapter->link_speed) {
> +	case IXGBE_LINK_SPEED_10GB_FULL:
> +	case IXGBE_LINK_SPEED_2_5GB_FULL:
> +	case IXGBE_LINK_SPEED_5GB_FULL:
> +		return true;
> +	case IXGBE_LINK_SPEED_10_FULL:

I don't think IEEE defines EEE for 10Mbs. So this should be in your
default case, where you handle 10_HALF, 100_HALF, 1G_HALF which also
are not defined in 802.3.

> +	case IXGBE_LINK_SPEED_100_FULL:
> +	case IXGBE_LINK_SPEED_1GB_FULL:
> +		if (print_msg)
> +			e_dev_info("Energy Efficient Ethernet (EEE) feature is not supported on link speeds equal to or below 1Gbps. EEE is supported on speeds above 1Gbps.\n");
> +		fallthrough;
> +	default:
> +		return false;
> +	}
> +}

	Andrew
