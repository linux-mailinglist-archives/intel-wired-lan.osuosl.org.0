Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 752D1869FC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 20:02:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AA9F414EA;
	Tue, 27 Feb 2024 19:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axxsof0Ed6CD; Tue, 27 Feb 2024 19:02:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE3C341503
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709060549;
	bh=4B9IF3rijefd1vYYgp3i9FYvW5cF1/4jOyjBy0z32oU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FhnbUABby1j1k5tOgWZsBFVfWtE8QZQFxhaCLFIBhLcVh4kwxS2NGqNGE39NJuP9X
	 SCDwlf12tALZWHBO2nprg4Hvzn5iIPjZdkz9eUJy42kDX0rXUZCr2+MwRz1dY8I8GG
	 w9mTpZdTApG/hFvKRdGrJPToCJSSWWN8TnwH1vBZ3Uv9PnTbM4HLwYIxvX6bi2eV6H
	 BwAj2bSBDkCUZ1zn/sSPRFOaNFUM0nrwnsiN+9BHOe5/QsCCFUNQAk6eWyfskCo4sH
	 YhThuSBCGKLAwb82CjPd48lloejj6VHvx2878nXxkERyFRtVbOE53/ZDTB3+qQrBrT
	 pb39T3K5Bz1uQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE3C341503;
	Tue, 27 Feb 2024 19:02:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 978AD1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9103E8207C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrJs97nC8QLX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 19:02:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D0E10817A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0E10817A9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0E10817A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:02:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BE2EDCE1D44;
 Tue, 27 Feb 2024 19:02:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82DECC433F1;
 Tue, 27 Feb 2024 19:02:18 +0000 (UTC)
Date: Tue, 27 Feb 2024 19:02:16 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240227190216.GL277116@kernel.org>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
 <20240226-keee-u32-cleanup-v5-4-9e7323c41c38@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226-keee-u32-cleanup-v5-4-9e7323c41c38@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709060541;
 bh=TwoGPBjM/mv8KwmBYJWDjdvYp9iuHArnd5e29nlNt0I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dCABcWH4q30saGgnE5D70vm7c9c75T/eiWyVywquOylUysdFWJHfFxErvXX36e/2f
 CUIaP0vM+qiQ0Ev7Xx5aDveoLetLL/vS0jdnmxpnjE0dK7pBxG+2GOD0h3LUwIN3IA
 XV1Ti01bvBmskP3laLJn588FPKzmW6yv/fk0wPZUkvIwHE/iVklrtj09yCK+44AZaX
 /2InBVLUApSE9vHY+71KbpiWzCdhPPPL5vWa7XUDzae+VbwMX9f38GR3G8lrzo1zpx
 aJJPO6v4T9qqeT/hBhE1nujWqD9OndMEUYkGM41jGopy6v1W7rl64LszkHUTbAc8d2
 nIdT3XAyp1JwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dCABcWH4
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 4/9] net: ethernet: ixgbe:
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

On Mon, Feb 26, 2024 at 07:29:10PM -0600, Andrew Lunn wrote:
> Convert the tables to make use of ETHTOOL link mode bits, rather than
> the old u32 SUPPORTED speeds. Make use of the linkmode helps to set
> bits and compare linkmodes. As a result, the _u32 members of keee are
> no longer used, a step towards removing them.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Simon Horman <horms@kernel.org>

