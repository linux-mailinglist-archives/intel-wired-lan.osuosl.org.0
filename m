Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F3184D6E2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 01:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4D0941A45;
	Thu,  8 Feb 2024 00:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZzDWwNpex19x; Thu,  8 Feb 2024 00:04:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F36A94061F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707350687;
	bh=tZeUAfa9RbjQgBECn/qu6rSKPyPLTMOJXAfT7Ol4Lo4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3h5Efs2UqyzTej9eVCEvyb6anbjldZKjFaJQ7Zh9hmX7k5ahnUbg8gS0dQ0xo47sr
	 Mg4O2iN4aAZOo8obEL3LbvJB8/LI9loJrr+FbBSws+HXrtNu+Wr4/r4eBPTd2D3Uuk
	 y9DrOmuhCqC8B96sHa942EkwAzcHrXEJZ9UP4SyuMGengzzPtWClSQvdEv7AS5c4Mb
	 9ZSsUmHV1NnEFfUvT4KzZ6Kx4I3WFdaU1yr4K9AIiMEo8SuswRCNF0fDGJNgveQndO
	 aunafltsGN8+W+W9XCjddFTubYDKYxrLMLMHXVNJCQb5HklnjWcroVtGmIZOjSvsc9
	 5dOdy69GtQHBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F36A94061F;
	Thu,  8 Feb 2024 00:04:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45CF71BF28A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3286540634
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x92jMVpIqy3V for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 00:04:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3817405BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3817405BD
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3817405BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:04:43 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rXru6-007GKM-J4; Thu, 08 Feb 2024 01:04:34 +0100
Date: Thu, 8 Feb 2024 01:04:34 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jon Maxwell <jmaxwell37@gmail.com>
Message-ID: <36a95b38-99c5-4fda-b9bf-8b9fb3b67e1c@lunn.ch>
References: <20240207230430.82801-1-jmaxwell37@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240207230430.82801-1-jmaxwell37@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=tZeUAfa9RbjQgBECn/qu6rSKPyPLTMOJXAfT7Ol4Lo4=; b=AWYPE2gPECpdOo0HyywKFwofzn
 7PoFX+CsN0BmAngxv/WIWboVxZAQenabvsk0nx+9g+wHSUx1VUkvkhaCvA4U/skO4rNSqwGl47Rrr
 KVvDDkChL4QzheXD33QbNXIznetLqWf7ofbM80MxFA3s6m6N6nqTCOwFrBnzLe3Glz6E=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=AWYPE2gP
Subject: Re: [Intel-wired-lan] [net-next] intel: make module parameters
 readable in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 08, 2024 at 10:04:30AM +1100, Jon Maxwell wrote:
> Linux users sometimes need an easy way to check current values of module
> parameters. For example the module may be manually reloaded with different
> parameters. Make these visible and readable in the /sys filesystem to allow
> that.
> 
> Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
> ---
>  drivers/net/ethernet/intel/e100.c                 | 6 +++---
>  drivers/net/ethernet/intel/e1000/e1000_main.c     | 2 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c        | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c       | 2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c         | 4 ++--
>  drivers/net/ethernet/intel/igbvf/netdev.c         | 2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c         | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 6 +++---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
>  9 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index 01f0f12035caeb7ca1657387538fcebf5c608322..2d879579fc888abda880e7105304941db5d4e263 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -170,9 +170,9 @@ MODULE_FIRMWARE(FIRMWARE_D102E);
>  static int debug = 3;
>  static int eeprom_bad_csum_allow = 0;
>  static int use_io = 0;
> -module_param(debug, int, 0);
> -module_param(eeprom_bad_csum_allow, int, 0);
> -module_param(use_io, int, 0);
> +module_param(debug, int, 0444);

ethtool should show you debug. And it is pretty much standardized, it
should work for most ethernet interfaces which support msglvl. So i
would say it is better to teach your Linux users how to use ethtool
for this.

There might be some value in this change for module parameters which
are not standardised, but i suggest you drop debug from the patchset.

    Andrew
