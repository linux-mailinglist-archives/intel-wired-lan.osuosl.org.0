Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621C4553F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 05:50:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B83260674;
	Thu, 18 Nov 2021 04:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-mFekfZZIBa; Thu, 18 Nov 2021 04:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4C6460683;
	Thu, 18 Nov 2021 04:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5E371BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D297760674
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPdeV6bZ98Ch for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 04:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58C8E60632
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 04:49:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18D1361AA9;
 Thu, 18 Nov 2021 04:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637210998;
 bh=EdrBJtFyZU7Qsg46P7CP2x6ybwCyntc4rOKfRN5PTCQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PmzPjN/jxDGfJftekaTpHykA7zQk2URTVYqxqz9gXuHOoXVjRAKxwVSOYfRnsW9l+
 lLSEMrhv/MPzmXZEwcIyWTV7J2rQbsI6C+yOWwuqI5/IHLzpp+raDDL90D621AN8j9
 po40W2jKmfAdtfk2Iunz6QjyySIapO7YYovfnew7st3mLlGvXX1tbKC+Xzh5IpbLE3
 tGiTBdnDaoI87yyoz7uVgRu1TYP/i6NYk2QawfY+eHnj5hBl74LYmMfcz7tnaDfMjc
 DOACU3B5zLCX9GjPo8tTqte/v8wGBDduCwfVzc43KXelAppK8Zr7VYVZLLj6muKZcL
 4IeY5EpVgFG6w==
Date: Wed, 17 Nov 2021 20:49:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] devlink: Reshuffle
 resource registration logic
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

On Wed, 17 Nov 2021 20:26:21 +0200 Leon Romanovsky wrote:
> -	top_hierarchy = parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP;
> -
> -	mutex_lock(&devlink->lock);
> -	resource = devlink_resource_find(devlink, NULL, resource_id);
> -	if (resource) {
> -		err = -EINVAL;
> -		goto out;
> -	}
> +	WARN_ON(devlink_resource_find(devlink, NULL, resource_id));

This is not atomic with the add now.

>  	resource = kzalloc(sizeof(*resource), GFP_KERNEL);
>  	if (!resource) {
> @@ -9851,7 +9843,17 @@ int devlink_resource_register(struct devlink *devlink,
>  		goto out;
>  	}
>  
> -	if (top_hierarchy) {
> +	resource->name = resource_name;
> +	resource->size = resource_size;
> +	resource->size_new = resource_size;
> +	resource->id = resource_id;
> +	resource->size_valid = true;
> +	memcpy(&resource->size_params, size_params,
> +	       sizeof(resource->size_params));
> +	INIT_LIST_HEAD(&resource->resource_list);
> +
> +	mutex_lock(&devlink->lock);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
