Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA1AAC5C56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 23:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8063181134;
	Tue, 27 May 2025 21:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHXvHfs7qjTv; Tue, 27 May 2025 21:42:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 806D580EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748382157;
	bh=i+gW2LdhsX8mVrWu3C6sM6tUvLVRRXub0MosDWgoTfc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jzw4rVo9EQ14nJ03tDjjCXdudsk5QkTlVFLBCf3Ayq+NZgeYYVfALX8g93X3bujYQ
	 PHhBp4IkB/tBNF6OzE5cb5TKoCXfZT51/3V8Rv7FriWdwEpUzyeFy4HKn39dTeZ/rO
	 LqBnN2oyThf6qGH9iWSAbJzHwkGtYJh/YkYuFXjVh0A/9FGr/t3uOi8o2d6jX0dy5l
	 Hrp9JTgHulHX/6kXSiyeDR9aQuHcvl4upVaax7mjVnnf9sC5BFo7ae8k1a8+zmWHLu
	 DVUWqsghTa8g4w8lvjiGFePPlbqlOb98n5SX9z8HxH29bG3D1741M6g5Yi1KhwmCF7
	 z2aV3SYhtO/7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 806D580EC0;
	Tue, 27 May 2025 21:42:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05E4E127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E05C840204
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:42:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYF1YjROUUwk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 21:42:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 382104098E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 382104098E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 382104098E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:42:33 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uK241-00E6ye-OG; Tue, 27 May 2025 23:42:25 +0200
Date: Tue, 27 May 2025 23:42:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Mikael Wessel <post@mikaelkw.online>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 torvalds@linuxfoundation.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 security@kernel.org, stable@vger.kernel.org, davem@davemloft.net,
 edumazet@google.com, linux-kernel@vger.kernel.org
Message-ID: <10cf162e-ca02-44b0-b238-74a93fe05f54@lunn.ch>
References: <20250527211332.50455-1-post@mikaelkw.online>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527211332.50455-1-post@mikaelkw.online>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=i+gW2LdhsX8mVrWu3C6sM6tUvLVRRXub0MosDWgoTfc=; b=GwH/VnrMSLT1WoOmGD2gqW5PKI
 pgPx7dreOe02g96LUx9QD2tM3nNkyJfD4n0vJbwdCvXAp5h/V01RTeOZpuMHGlGPpWoo14pa+n2m3
 gk4hh3fcOMAGURgHjs/uQecCMNZTf64588vX+MkpN9jBF5xaYyOlrsLKm9N8ETXPsVXk=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=GwH/VnrM
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix heap overflow in
 e1000_set_eeprom()
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

On Tue, May 27, 2025 at 11:13:32PM +0200, Mikael Wessel wrote:
> The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
> without validating eeprom->len and eeprom->offset. A CAP_NET_ADMIN
> user can overflow the heap and crash the kernel or gain code execution.
> 
> Validate length and offset before kmalloc() to avoid leaking eeprom_buff.
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Reported-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Cc: stable@vger.kernel.org
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 98e541e39730..d04e59528619 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -561,7 +561,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
>  		return -EOPNOTSUPP;
>  
>  	if (eeprom->magic !=
> -	    (adapter->pdev->vendor | (adapter->pdev->device << 16)))
> +		(adapter->pdev->vendor | (adapter->pdev->device << 16)))
>  		return -EFAULT;

That look like a white space change, which should not be part of a
fix.

Please also take a read of

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html

You need to set the tree in the Subject line.

    Andrew

---
pw-bot: cr
	
