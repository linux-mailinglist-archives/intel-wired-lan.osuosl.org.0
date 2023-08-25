Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 020967888E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 15:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65F6361468;
	Fri, 25 Aug 2023 13:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F6361468
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692971253;
	bh=6Ohsk2YiBESJys23H1BjDqGLDIpXneXmgd+UwEcuduU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5dzvLWkHkzoqWLSIM3X4YQ/nL9Dtu9ezdyZJZerImTzFLVoe1WHKHJ6SYvYSs/ab5
	 m0iQ2TZQplvVhBn14s9I3aA7z65JmqR4Bf+2OgyFzk2Hpz1JQKG7qFGOA8c5OFhkqT
	 dBXpR7OryFf2Fb25LVJJeAf8waf27GybkvdIHbYRjPUcC9kIFwar0Qwy1ym6+71nX6
	 kGOHAzIMUzbae0uRwCckL3plh2p8IP7lw8449wx5gR4RZwxGUtTHknj4sm0vnnYJQY
	 WlOaP6SMPJBp7Y6tJQcvvMg/9QgdeTjn286EQbsRhVlrrcXHH/Jcb5fcJPg0kTAOFN
	 AXBG3z8sp0wWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFhXT2IyqVub; Fri, 25 Aug 2023 13:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32D9961451;
	Fri, 25 Aug 2023 13:47:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32D9961451
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8FBF1BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80CA961451
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:47:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80CA961451
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fo8suv90YQJZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 13:47:25 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECD8B61455
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECD8B61455
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qZX9k-0055vx-0Y; Fri, 25 Aug 2023 15:47:20 +0200
Date: Fri, 25 Aug 2023 15:47:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=gKuBgkbgBYolUQH8i5kQlcPak6MN8SYhusYfvpxpzM8=; b=0meFFz3aMsHLiLRCk6G1W1z4Ri
 UirXjCPly9DzueUCBu/VRaQDIIT4IIP4gVHyWkH97MreLyHwcVblRgiUCjQVliu/C+jTEsRdxAQ4q
 264pd8nsJahLqFU/zzGAvJVkLtIZy2TWLlzPbSjPUgoBRFYgbh90zEKc1lVmPboCaXf0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=0meFFz3a
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Let me think how we could do that.
> Andrew's idea is good. But most high-speed NICs, which have a standalone
> management firmware for PHY, don't use phylib/phylink.
> So in order to be able to unify all that, they should have ->supported
> bitmap somewhere else. Not sure struct net_device is the best place...

I would probably keep it in the driver priv structure, and just pass
it as needed. So long as you only need one or two values, i don't see
the need for a shared structure.

> If I recall Phylink logics correctly (it's been a while since I last
> time was working with my embedded project),
> 
> 1) in the NIC (MAC) driver, you initialize ->supported with *speeds* and
>    stuff like duplex, no link modes;
> 2) Phylink core sets the corresponding link mode bits;
> 3) phylib core then clears the bits unsupported by the PHY IIRC

No, not really.

All i think you need is a low level helper. So don't worry too much
about how phylink works, just implement that low level helper passing
in values as needed, not phylib or phylink structure.

What i don't want is a second infrastructure to be built for those MAC
drivers which don't use Linux to control the PHY. Either share a few
helpers, or swap to phylink.

> The third step in case with those NICs with FW-managed PHYs should be
> done manually in the MAC driver somewhere. Like "I am qede and I don't
> support mode XX at 50Gbps, but support the rest, so I clear that one bit".

I don't think that will work. New bits keep getting added, more speeds
added. So 'support the rest' is not well defined. You need an explicit
list of link modes the driver needs. We already have code to convert
an array of link mode bits into an actual mask, e.g:

        linkmode_set_bit_array(phy_basic_t1_features_array,
                               ARRAY_SIZE(phy_basic_t1_features_array),
                               phy_basic_t1_features);

	Andrew			       
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
