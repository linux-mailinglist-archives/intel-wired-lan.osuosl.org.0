Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91589790C54
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Sep 2023 16:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 427F560EC5;
	Sun,  3 Sep 2023 14:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 427F560EC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693749675;
	bh=KQKP/lOUgaYR8JWwjlcvfN9XiZpo/wIsMwjqO0Hcmug=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K1erM44/X3E3Ue+dRxGjpxbKMY7kNcW0Ddet3UP2ELeFEjLtTjNnKo04TzdEuTVG9
	 qhCMemH1UbOhO0fzKbcOiVWypPB4pvxJN326RJDpadRLXVztrbMuLMgxYvD5iUfhgH
	 ryHsRnheYd07qJHG8dahClqIcyA09P4633WxgLtL76F9bTXVXh9NCDKheQmiG9McXM
	 g6HVyJADPL3FdasLmNoVzlzLYRmodweJiUBpSofjlUocND1zpbzsq2cka+nUaJUNXD
	 jEE5jjRb52PMBmkorN9bb0Gf9FI3lN9ORf0plrsjmok53Dl/Y+GwETAaNmHWIvo9jf
	 yTYdhiPPqanpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHUU3bpo-IC9; Sun,  3 Sep 2023 14:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EF9760C25;
	Sun,  3 Sep 2023 14:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EF9760C25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD3EF1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 14:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5DD7404B4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 14:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5DD7404B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I6T5o5lXwwuo for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Sep 2023 14:01:03 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 233A6401B2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 14:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 233A6401B2
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qcner-005gdi-GE; Sun, 03 Sep 2023 16:00:57 +0200
Date: Sun, 3 Sep 2023 16:00:57 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
 <ZPCQ5DNU8k8mfAct@baltimore>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZPCQ5DNU8k8mfAct@baltimore>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=FRmvoZb9t6APhYJBtCKJrCvXQcrJ9in/X9+fCHbnW6w=; b=3tXvc7/7TjDjVhrzlFQFzrSQsj
 JHAXRK4NsORbzL6xAJaeJNyoBDCf+z0+YTgjpDlDVQ/chI3DRuJ6Bf9wy3B2c8co3iH4DZ+I9Yiei
 hjSddfw8kLk+SJ0tMAjjDaM4q1sxAiLmkdTslvP3dxZ79BOPctPlQ2WOarayMQHmtpaI=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=3tXvc7/7
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
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Let me check if I understand correctly- is that what was sent with the
> v3 [1] , with the initialization helper (ethtool_forced_speed_maps_init)
> and the structure map in the ethtool code? Or do you have another helper
> in mind?

Sorry for the late reply, been on vacation.

The main thing is you try to reuse the table:

static const struct phy_setting settings[] = {}

If you can build your helper on top of phy_lookup_setting() even
better. You don't need a phy_device to use those.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
