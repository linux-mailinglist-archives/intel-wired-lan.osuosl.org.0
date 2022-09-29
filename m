Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D71575EF6F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 15:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F173408AC;
	Thu, 29 Sep 2022 13:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F173408AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664459791;
	bh=BXAtECk6XX6UKaD7N7DDO4cuCO7zmY2v2vjk1NuSKVU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rQfB35i8msxJppy8/qwa/w7YroB+lYc71C1Z5kRJjWHiugOSY730sUL1klphGGPhi
	 D1qOEc6WwgJJ+BIXNlwh09fNKS1YImaFBhSbBFDwNkrKnPjvxy0ujB06BK54MMTM34
	 H3U4+AOeA7VB6chX4aw2rgVx7JEpJB0BEF58kZmfKTx3OQFbO8QMA6yPZykbjirE+x
	 Ad5leF4XQntrPGWQRuMA8HhRjXG5QNyK1jHyGP/5B+j19MAfhzyTJJBg3FrlTKbK+C
	 miH0l2WXiCHhwbFX5dViWLllp/g1SLEt4TRTACsjGO6e01zD/PDoA8F+gWSHQWERJ+
	 nzqmJBX/oGAEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JtautkuzX6pc; Thu, 29 Sep 2022 13:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A823240275;
	Thu, 29 Sep 2022 13:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A823240275
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 607221BF2B4
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 13:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AD5B60BC6
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 13:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AD5B60BC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPqtBN7EFoUn for <intel-wired-lan@osuosl.org>;
 Thu, 29 Sep 2022 13:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C03C60B77
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C03C60B77
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 13:56:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 16663CE21B8;
 Thu, 29 Sep 2022 13:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEF16C433D7;
 Thu, 29 Sep 2022 13:56:16 +0000 (UTC)
Date: Thu, 29 Sep 2022 06:56:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20220929065615.0a717655@kernel.org>
In-Reply-To: <SJ1PR11MB6180CAE122C465AB7CB58B1BB8579@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
 <20220927170919.3a1dbcc3@kernel.org>
 <SJ1PR11MB6180CAE122C465AB7CB58B1BB8579@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1664459777;
 bh=IZWkitAl8YosjSaE9485+Ts9rzl3eqH6rjc4QjpoN4A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G6tA1GhDnbVOPoE6tUOI0ARB6k/YpO9OJ/U1X/nVWM77qvrnhK0sdC5yyv2BUmM08
 gAo95DKwjiiqb+mlBSUciUfi+gG9ZR7lXBfkz2vfAOe3y4hQccERC/mRBvnUy5+vMb
 OrQgy01zJytwjpgVmnCoFzNekZOxsm9U01ZJHsHgYjmW+X3gsGpDwT0mRYQnmA1PSc
 vZraNuEslZisd9JSoW2IBbyUF+AG32znE3oastoA/D/nUfuHt+e2ZzoeqqNSJ7zrHT
 LHvP5wf+a/xvrSb2QLXQfZWqmAhEYs1e8HME1wxGv7Ss2SleaxWTE6io4MCaOapSyh
 mhSUJZbDp0pJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=G6tA1GhD
Subject: Re: [Intel-wired-lan] [PATCH v1 0/4] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Richard Cochran <richardcochran@gmail.com>, Saeed Mahameed <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, Gal Pressman <gal@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>, "Ahmad Tarmizi,
 Noor Azura" <noor.azura.ahmad.tarmizi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Sep 2022 02:35:29 +0000 Zulkifli, Muhammad Husaini wrote:
> > High level tho, are we assuming that the existing HW timestamps are always
> > PTP-quality, i.e. captured when SFD crosses the RS layer, or whatnot? I'm
> > afraid some NICs already report PCI stamps as the HW ones.  
> 
> Yes. HW timestamps always can be assume equivalent to PTP quality.
> Could you provide additional information regarding SFD crosses the RS layer?

I mean true PTP timestamps, rather than captured somewhere in the NIC
pipeline or at the DMA engine.

> According to what I observed, The HW Timestamps will be requested if the application side 
> specifies tx type = HWTSTAMP TX ON and timestamping flags = SOF TIMESTAMPING TX HARDWARE.
> So it depends on how the application used it.
> 
> > So the existing HW stamps are conceptually of "any" type, if we want to be
> > 100% sure NIC actually stamps at the PHY we'd need another tx_type to
> > express that.  
> 
> Yes, you're right. Are you suggesting that we add a new tx_type to specify
> Only MAC/PHY timestamp ? Ex. HWTSTAMP_TX_PHY/MAC_ON.

Perhaps we can call them HWTSTAMP_TX_PTP_* ? Was the general time
stamping requirement specified in IEEE 1588 or 802.1 (AS?)? 

Both MAC and PHY can provide the time stamps IIUC, so picking one of
those will not be entirely fortunate. In fact perhaps embedded folks
will use this opportunity to disambiguate the two..

> Sorry about the naming here. Just so you know, the DMA timestamp does not
> quite match the PTP's level timestamping. The DMA timestamp will be capture when
> DMA request to fetch the data from the memory. 
> 
> > 
> > Same story on the Rx - what do you plan to do there? We'll need to configure
> > the filters per type, but that's likely to mean two new filters, because the
> > current one gives no guarantee.  
> 
> Current I225 HW only allow to retrieve the dma time for TX packets only. 
> So as of now based on our HW, on RX side we just requesting rx filter to timestamps any incoming packets.
> We always allocating additional bytes in the packet buffer for the receive packets for timestamp. 
> It is a 1588 PTP level kind of timestamping accuracy here.

I see. I think datacenter NICs can provide DMA stamps for Rx as well.
Intel, Mellanox, Broadcom folks, could you confirm if your NIC can do Rx
DMA stamps?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
