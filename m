Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9457E85BC8B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:47:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A91F415A8;
	Tue, 20 Feb 2024 12:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PcRPo6cj7-bJ; Tue, 20 Feb 2024 12:47:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C725415AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708433243;
	bh=F8k3eSQqLdNKIFFL3WtPP714x7WBTfKjTwOawlMpruE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DYE2Z5pKlBGoH1ARyXT4q5u1VtDFKOHw6AHIIKDOjzBR2ztN7PeYwui04jifNibZ9
	 AcAWbEvAqjri6HfkUUutenGAJydxC1VtreaZBc0YrBRga9WMBlvxPGy0eskQbcsu5S
	 ZPJYRucBGBPUQ+/9zoGgTr3fgLeKv6OxV+8mvG+gXyCPcSXMSxMS1Npk51MfQZpW5X
	 CB3ttjzjIZifGzjjC2Rf6BLn3x137h5Jx3bGrpmSyaeN05VUvy/9J0OU6TILtEaG8p
	 LeJhiunnBNrGXPvkG7n6j0i6aiZEOzpTBzG7LcYkm2v2Q/Un9x5HUr8nZVfhPJBOaI
	 V4cywC7LNUFiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C725415AA;
	Tue, 20 Feb 2024 12:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7C171BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2DF7415A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RV8pAGnnSAN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:47:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CC6A4053C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CC6A4053C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CC6A4053C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:47:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 562DD60F6B;
 Tue, 20 Feb 2024 12:47:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B92CC433C7;
 Tue, 20 Feb 2024 12:47:16 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:47:14 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220124714.GF40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-9-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-9-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708433239;
 bh=ShM9njjCxawrjQ/ZQDOu2m6lUpiT5zfxfZ1QJIMyxCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GnKT9VjrUMqyDQrYKel4WSgau86TunXqwSFMQE+9PRrh3qtwrPflVSKAN4cJcGvuP
 R8z2NhEwro7lMHdV9rFNNsKLVevei0YNk7fMSlp3K3vjeBNon5Ea9F330tSPiOd7fV
 Atkk3B1mV1H8O0GKUbmqAXK3RSV3szM4t+0g8zCguFqvS2d91WJt/MsIFcJHpDI2dj
 CiizMsTwhyODEa368kXAQDwX+8YBauRRD6JQRI4KsblbBbf/W3r7G4ln9LAVgTlW4r
 no3e4MuxKdi++Ygcp+xrEMFoB9BTqVGQ5W+PZEBYcS7Nsg4MiQf7XWzjbmdAdOtWR2
 H8qA3FdAL17RQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GnKT9Vjr
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 9/9] net: ethtool: eee:
 Remove legacy _u32 from keee
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

On Sun, Feb 18, 2024 at 11:07:06AM -0600, Andrew Lunn wrote:
> All MAC drivers have been converted to use the link mode members of
> keee. So remove the _u32 values, and the code in the ethtool core to
> convert the legacy _u32 values to link modes.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  include/linux/ethtool.h |  3 ---
>  net/ethtool/eee.c       | 31 ++++---------------------------
>  net/ethtool/ioctl.c     | 29 ++++++++++-------------------
>  3 files changed, 14 insertions(+), 49 deletions(-)

Nice :)

Reviewed-by: Simon Horman <horms@kernel.org>

...
