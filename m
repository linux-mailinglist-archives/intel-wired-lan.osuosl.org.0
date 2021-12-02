Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 396A8465BE3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 02:57:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E5CE40466;
	Thu,  2 Dec 2021 01:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7vieuOKtkmY; Thu,  2 Dec 2021 01:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B70C64045B;
	Thu,  2 Dec 2021 01:57:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94E711BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 01:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D33282468
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 01:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5IG6ic8SyQDk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 01:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 356918242D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 01:56:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 876CACE1FD1;
 Thu,  2 Dec 2021 01:56:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B30FC00446;
 Thu,  2 Dec 2021 01:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638410176;
 bh=zZKEPA4iQLhVBOohhM5LVpxfiIwhRk/rw5IJ70ettsA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lVmGD3Y3/K7DR9EMi4LBt1SaFrFcKB0/tR6l79vW/ULfbEKE/RYO6PqGXMWOvrVQU
 IymafejFxgjn0y83/wrL4eCuwDt6NGSQTJdsZn7kuzauxyVotBAfehUu0WWx8ErEBK
 94Mj6uRKgnB2diR2/EPgoE0n/DrhQvhcNMR6ICC6yLkhpANTBhmuDN3zrQ9bOzEKQK
 mwhZsBlJq7GNL7aObI5N4nWK1o/o3kYFcNV/oqRHbK6Kz5KPv6btABBkM3tOA+NFuT
 mkDersY9MwU5AQ2GsNDp3dPrb7T/LCNoEbLdE8HVW+faXFSV9WdAQhs5Iw/jxN4wUK
 A0eG0nMdUb48g==
Date: Wed, 1 Dec 2021 17:56:15 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20211201175615.4b403560@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211201180208.640179-5-maciej.machnikowski@intel.com>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-5-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 4/4] ice: add support for
 SyncE recovered clocks
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 netdev@vger.kernel.org, richardcochran@gmail.com, idosch@idosch.org,
 linux-kselftest@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  1 Dec 2021 19:02:08 +0100 Maciej Machnikowski wrote:
> Implement ethtool netlink functions for handling SyncE recovered clocks
> configuration on ice driver:
> - ETHTOOL_MSG_RCLK_SET
> - ETHTOOL_MSG_RCLK_GET
> 
> Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>

drivers/net/ethernet/intel/ice/ice_ethtool.c:4090: warning: Excess function parameter 'ena_mask' description in 'ice_get_rclk_range'

drivers/net/ethernet/intel/ice/ice_dcb_nl.c:66:6: warning: variable 'bwcfg' set but not used [-Wunused-but-set-variable]
        int bwcfg = 0, bwrec = 0;
            ^
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
