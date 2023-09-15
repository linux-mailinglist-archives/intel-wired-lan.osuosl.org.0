Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEA37A2044
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 15:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0458613C7;
	Fri, 15 Sep 2023 13:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0458613C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694786021;
	bh=0MP7lwkG4EkieGjKVnWSiL3QU98klpexWEr8Ca2vw0E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RRLSD7ZBfR6yz1tW6qtqdhSNpLGUNTeQfoVoYBwqPdTZBerhlTAq70TtMhGrFl8Qs
	 xSXzt7lTljJ6yVj8BtG3Tb/t2SnVgtFbQIxS8+RJwU1LruiggtkAxblre2O+nq6f+1
	 vkM9qw5BYv2E5+6KdbDRVLPwTJslGXzGBC9WGjkSYu27p/aT1WNeDCZL3c1xF84jaV
	 h6l35JBrpnTJcM1rbsUTIoTKxqv0rC11fiNVwMZ0cZiiGnRS8pa1YmHwdfcg9PWxq2
	 GcKEXT1aPMa+mbQe3u7rLllgeHjsrZBRXI7M6cQOMFQ7GeKJUTsmqvPOn1zlvBsPxB
	 HjuYUIXfCpdLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwAajZfzwB1u; Fri, 15 Sep 2023 13:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5FFE61381;
	Fri, 15 Sep 2023 13:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5FFE61381
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 842461BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 525524179F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 525524179F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qGoSV5rCWRTq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 13:53:34 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B14E4148B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B14E4148B
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qh9GC-006Y1X-RB; Fri, 15 Sep 2023 15:53:28 +0200
Date: Fri, 15 Sep 2023 15:53:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <046e07df-0ea1-4e4a-a205-29d17f637d69@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
 <ZPCQ5DNU8k8mfAct@baltimore>
 <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
 <ZQMYUM3F/9v9cTQM@baltimore>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZQMYUM3F/9v9cTQM@baltimore>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=6oQE1aYLEK1IdNuoBWg7lIbLQLaDZbwcrNkGd3/rd4s=; b=lQklDGCPF1REEPbiaq+I10DHyL
 iePuehpJIcKeDUbZBTqJamXPyzansRxxUTI7iQcjLwX2k/WSAH5OGUR9znoZHhbPDpG5yvCpmU8CJ
 xoPru/za1+W8fVNgj8qJF2TfXaRv1TITnlBa6mvDDAQiTQlZufCBaZE0M2LwkLOh+rGE=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=lQklDGCP
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

On Thu, Sep 14, 2023 at 04:27:28PM +0200, Pawel Chmielewski wrote:
> On Sun, Sep 03, 2023 at 04:00:57PM +0200, Andrew Lunn wrote:
> > > Let me check if I understand correctly- is that what was sent with the
> > > v3 [1] , with the initialization helper (ethtool_forced_speed_maps_init)
> > > and the structure map in the ethtool code? Or do you have another helper
> > > in mind?
> > 
> > Sorry for the late reply, been on vacation.
> > 
> > The main thing is you try to reuse the table:
> > 
> > static const struct phy_setting settings[] = {}
> > 
> > If you can build your helper on top of phy_lookup_setting() even
> > better. You don't need a phy_device to use those.
> > 
> > 	Andrew
> 
> Thank for the hint Andrew! I took a look into the phy-core code,
> and a little into phylink. However, I still have the same concern
> regarding modes that are supported/unsupported by hardware (managed
> by the firmware in our case). Let's say I'm only looking for duplex
> modes and iterate over speeds with advertised modes map as an argument
> for phy_lookup_setting. In this case, I still need another table/map of
> hardware compatible link modes to check against. Theese are actually
> the maps we'd like to keep in the driver (and proposed in [1]), so
> maybe the simple intersect check between them and the advertised modes
> is sufficient?

The idea was you have a mask of link modes which your hardware
actually supports. You then ask the core code, give me a link mode
which fulfils this speed and duplex, taking into account the mask.

      Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
