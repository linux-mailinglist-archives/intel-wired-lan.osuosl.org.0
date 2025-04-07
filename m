Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C270AA7EF60
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 22:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7578E81CD0;
	Mon,  7 Apr 2025 20:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gydEZ6ttO6dr; Mon,  7 Apr 2025 20:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBE7081D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744058365;
	bh=tQe0PGDZfmp8rpY/ZTodvp4bt57E+3mmu/u8JN+CI9E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eG50TkkqyF4GiVSE1a4bokoUaYX4ZLsp0++SHABPclqRM+Deaa8nuECr2UL6ZnXXs
	 22+Hs12PhsGexU0UN3GSxHRMobf/o7P0IKfv2no/GFBGpTpfTD4eDHj9BUNwVcBisv
	 vKH9CfvLbdAyd5J33Cminjhdf73h84G5hyUbbLrBBhSPJ+qSFYvYs91IVtMrdijoZ4
	 /ENrTrFS7P1Ew9jXpTWxxiQ/QkkJ7fvHg7npdVhPr/ubylEw0A0XiiEp91GTVsf0wu
	 zYk06MED7HZCfrFwrYEA1MRv0+qSPrT8+/zzcykVfZEDziAe4BUEIYs9mMoWKkHewz
	 Pg773sS4ituhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBE7081D47;
	Mon,  7 Apr 2025 20:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA4ECDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BCDB40B15
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMPHl9GsLeBE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 20:39:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2E2C40454
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2E2C40454
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2E2C40454
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 20:39:21 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1u1tFV-008IsL-2W; Mon, 07 Apr 2025 22:39:17 +0200
Date: Mon, 7 Apr 2025 22:39:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Pazdan <mpazdan@arista.com>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Kory Maincent <kory.maincent@bootlin.com>,
 Willem de Bruijn <willemb@google.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Mina Almasry <almasrymina@google.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Daniel Zahka <daniel.zahka@gmail.com>,
 Jianbo Liu <jianbol@nvidia.com>, Gal Pressman <gal@nvidia.com>
Message-ID: <8b8dca4d-bdf3-49e4-b081-5f51e26269bb@lunn.ch>
References: <20250407123714.21646-1-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407123714.21646-1-mpazdan@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=tQe0PGDZfmp8rpY/ZTodvp4bt57E+3mmu/u8JN+CI9E=; b=csqrYtYLrstOUDID8fDr0c9AqB
 F0CAlOxBHi8sEuYWLH4NxtpkFB0cFnr/nEQ9zSvw1CMeufnlKnqafFISAsHlRWfJYS3qx6ykJO0gz
 5lcu6+wGw3Hukod7vFax88KwlV/trkypwiQU7uuG2TcYyE51USeDS5vIaTwlML5OslVw=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=csqrYtYL
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

On Mon, Apr 07, 2025 at 12:35:37PM +0000, Marek Pazdan wrote:
> Signal Definition section (Other signals) of SFF-8636 Spec mentions that
> additional signals like reset and module present may be implemented for
> a specific hardware. There is currently no user space API for control of
> those signals so user space management applications have no chance to
> perform some diagnostic or configuration operations.

How do you tell the kernel to stop managing the SFP? If you hit the
module with a reset from user space, the kernel is going to get
confused. And how are you talking to the module? Are you going to
hijack the i2c device via i2-dev? Again, you need to stop the kernel
from using the device.

Before you go any further, i think you need to zoom out and tell us
the big picture....

    Andrew
