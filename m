Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD7085BF0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 15:47:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3956414BE;
	Tue, 20 Feb 2024 14:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHpbIrbFeqGT; Tue, 20 Feb 2024 14:47:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20F3B4149D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708440435;
	bh=1zdNjHcqPugIf4Zw2EB6aLcTZtqonnwTaHUPJU0bi/w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8LG6iYMWRxvCsw1ir+L3/x4SzaWRDDLtCl+Xdf5khJad+yLDPGNcEC8d4KW5l0X96
	 WjRoVrm3IsTp0Q+rkvdFLRGBdxJdZEseEDuDA2s3kDI7MixQ6zsAnro+kIW85FctU/
	 Kwip/zTLRnv7I4k69xGhvYrM1Bo9amVzN7WOOGvS12C9vOZddYZLFJCt05Zn/Qw5KH
	 zNKpyyRWueeBthKwYfGABeOZQ4KsBighKn2D+s2brzDUv9cExOhSIwhb6oMBKugDdX
	 RovJgkyfEWrvariCXkk8PrXxCXEWcoxNBCtj83IobkKYOVAPobQfdHQeLz3NfyHrIK
	 862p9hQm5Y+xA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20F3B4149D;
	Tue, 20 Feb 2024 14:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA1A1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7533F414A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tI3i8ePNsGdb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 14:47:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 770AC4149D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 770AC4149D
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 770AC4149D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:47:10 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rcROs-008I5V-Qt; Tue, 20 Feb 2024 15:47:14 +0100
Date: Tue, 20 Feb 2024 15:47:14 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Simon Horman <horms@kernel.org>
Message-ID: <610e70a3-eb3e-4a64-87c8-d03a17332dcb@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-4-71f13b7c3e60@lunn.ch>
 <20240220120643.GZ40273@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220120643.GZ40273@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=1zdNjHcqPugIf4Zw2EB6aLcTZtqonnwTaHUPJU0bi/w=; b=lC5DvzlwuEcreFh/z1w63BLTFZ
 tHnhJ9TvLr6D228PLFJn763Pc604Vq4m/SX4kMiBoZHnGGPC/hH3ypfuxx0CKLDUoNQwQ4DPlx3Vd
 EJs3qZ3eBvBB3kbeiqhE0tlQ7uT5TEIGlEp46ctcZO3LbGSe7E9VaE3vBKiftm0oC5Eg=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=lC5Dvzlw
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/9] net: ethernet: ixgbe:
 Convert EEE to use linkmodes
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

On Tue, Feb 20, 2024 at 12:06:43PM +0000, Simon Horman wrote:
> On Sun, Feb 18, 2024 at 11:07:01AM -0600, Andrew Lunn wrote:
> > Convert the tables to make use of ETHTOOL link mode bits, rather than
> > the old u32 SUPPORTED speeds. Make use of the linkmode helps to set
> > bits and compare linkmodes. As a result, the _u32 members of keee are
> > no longer used, a step towards removing them.
> > 
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++++------------
> >  1 file changed, 25 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> 
> ...
> 
> > @@ -3436,28 +3437,29 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
> >  	if (rc)
> >  		return rc;
> >  
> > -	edata->lp_advertised_u32 = 0;
> >  	for (i = 0; i < ARRAY_SIZE(ixgbe_lp_map); ++i) {
> >  		if (info[0] & ixgbe_lp_map[i].lp_advertised)
> > -			edata->lp_advertised_u32 |= ixgbe_lp_map[i].mac_speed;
> > +			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> > +					 edata->lp_advertised);
> >  	}
> >  
> > -	edata->supported_u32 = 0;
> >  	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
> >  		if (hw->phy.eee_speeds_supported & ixgbe_ls_map[i].mac_speed)
> > -			edata->supported_u32 |= ixgbe_ls_map[i].supported;
> > +			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> > +					 edata->lp_advertised);
> 
> Hi Andrew,
> 
> should this be edata->supported rather than edata->lp_advertised?

Correct :-(

	Andrew
