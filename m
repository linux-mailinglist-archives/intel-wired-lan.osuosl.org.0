Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C27A80FC7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 17:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A22240D78;
	Tue,  8 Apr 2025 15:23:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jpf4XNXwD9v3; Tue,  8 Apr 2025 15:23:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 671D040D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744125802;
	bh=57GOkhRAEmABzLV8CjqEEgiNHZ46CcdaW9aZ9L3Mwv0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KEY3oQtHgzIvMe5DEnv0AbMgBzmbQ8hMqurUqJ45CHrdgS0d8TsSRmwUPnrR8L+LQ
	 /S+0uIRTrBuk5Ws+txLxz6nvEu032q0ns05qzV3INZUYDNz45GpaVE1a+J3owYzsHy
	 OCw35FTfMxY/eC8kX8h5YtxFLqtBAujJ1V6IUkLf8l9XXeWJXyfRbxoPUXNSPcTccW
	 I1ucqTtr4qimVKffzZItrs98JdRoVopfX72V4oUPh6EawMTeFnWuvk29srVpV2DAfm
	 D+mGig+OjcFS6avGhgSSS8LjfXza+W4Phn5dPjdoRGTe2SGQ7B8DrgE/Gn2BfZ/hYu
	 jR60xAjUhj0GA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 671D040D18;
	Tue,  8 Apr 2025 15:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 09C02DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3D0440C56
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VndtgbZypaTa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 15:23:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 43BC6409D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43BC6409D9
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43BC6409D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:23:20 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1u2AnC-008PkL-2g; Tue, 08 Apr 2025 17:23:14 +0200
Date: Tue, 8 Apr 2025 17:23:14 +0200
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
Message-ID: <d55a3455-defd-4b23-9e0f-42d87e25f72d@lunn.ch>
References: <6ad4b88c-4d08-4a77-baac-fdc0e2564d5b@lunn.ch>
 <20250408151439.29489-1-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408151439.29489-1-mpazdan@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=57GOkhRAEmABzLV8CjqEEgiNHZ46CcdaW9aZ9L3Mwv0=; b=ojAjtyYnPweJhd8q7Rd6rDR5SW
 viR2eHTLEQwbrcJqk9r9NmU8uxwmxlVhwwAYZWogQoOczHyHMpCaEt7zH4RybJeUuhkQgAKHHUwpC
 JPoljrBv2pdIDGNZkitahaFQpGOiA8M4+BupqPh8Qw1IFRRPRVcAN5O3oF6D+5GD+ZyA=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=ojAjtyYn
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: add qsfp transceiver reset
 and presence pin control
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

On Tue, Apr 08, 2025 at 02:22:43PM +0000, Marek Pazdan wrote:
> On Mon, 7 Apr 2025 22:30:54 +0200 Andrew Lunn wrote:
> 
> > As the name get/set-phy-tunable suggests, these are for PHY
> > properties, like downshift, fast link down, energy detected power
> > down.
> > 
> > What PHY are you using here?
> 
> Thanks for review.
> It's PHY E810-C in this case. According to spreadsheet: E810_Datasheet_Rev2.4.pdf
> (Chapter 17.3.3 E810 SDP[0:7] (GPIO) Connection), it's SDP0 and SDP2 GPIOs 
> are being connected to QSFP Reset and Presence pins correspondingly.
> I assume you may suggest this use case is not directly PHY related. In first approach
> I tried to use reset operation which has following flag in enum ethtool_reset_flags:
> ETH_RESET_PHY           = 1 << 6,       /* Transceiver/PHY */
> but this doesn't allow for reset asserting and later deasserting so I took 'get/set-phy-tunable'.

This does look like an abuse of the phy tunables. Lets get the big
picture, and then we can maybe suggest a better API.

Please consider my previous questions, how do you tell the kernel not
to use the SFP?  How do you ensure you don't reset the SFP in the
middle of the kernel performing a firmware upgrade of the SFP, etc.

	Andrew
