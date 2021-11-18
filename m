Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994C4553EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 05:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92BAE40499;
	Thu, 18 Nov 2021 04:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JMuUBdtC6Mgx; Thu, 18 Nov 2021 04:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AA3D40487;
	Thu, 18 Nov 2021 04:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D87BE1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3B6B40487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKqN6fnX5big for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 04:49:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 282E84028B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B96B261AA9;
 Thu, 18 Nov 2021 04:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637210971;
 bh=lJFDHSsqV7NCzkdnIJxwt/k0k5Wl7IKnURedtNP2mk8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pu2qkk6pB6Xi/MEgV5z1b0MFzM9PXUOVhe7uzpX+lGdF0JM4lyDHFkfnRYVngqsdd
 NB7Z4bQhBe2h6TF29ktVNnIwjK/Vf8XEOFETMTQL8bGmMEpfT1h2O/HNC1o1T3dubw
 gFsQbyyTAQb47Kt+9Z5xtKIhL92zVwvGEa1rUcWXB0g2ELDbrAZftg3lnXsfuybC5A
 F7IjkQe0YOfucXA7NQnAlW4VyOwbo9Oww6ruuQprWMB3b3FyQ1YVUlfwO1+/BcxxFX
 VbB7cx6lOp5TRGE7HJFp9snGgX4pZ89X13GFGFraVQs2Zxv19jvV1jxqYIAbjTKyCo
 aWYBPCH9Xrwfg==
Date: Wed, 17 Nov 2021 20:49:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20211117204929.4bd24597@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <9c3eb77a90a2be10d5c637981a8047160845f60f.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
 <9c3eb77a90a2be10d5c637981a8047160845f60f.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/6] devlink: Clean
 registration of devlink port
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 drivers@pensando.io, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rdma@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Aya Levin <ayal@mellanox.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Shannon Nelson <snelson@pensando.io>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 17 Nov 2021 20:26:20 +0200 Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> devlink_port_register() is in-kernel API and as such can't really fail
> as long as driver author didn't make a mistake by providing already existing
> port index. Instead of relying on various error prints from the driver,
> convert the existence check to be WARN_ON(), so such a mistake will be
> caught easier.
> 
> As an outcome of this conversion, it was made clear that this function
> should be void and devlink->lock was intended to protect addition to
> port_list.

Leave this error checking in please.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
