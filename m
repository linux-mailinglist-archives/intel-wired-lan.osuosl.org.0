Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3291C419884
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 18:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07D12404DF;
	Mon, 27 Sep 2021 16:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ojKTuGqLr7Q; Mon, 27 Sep 2021 16:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9633940480;
	Mon, 27 Sep 2021 16:07:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC941BF955
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 16:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A27881A30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 16:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMDccSavBTiR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 16:07:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 822A880FC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 16:07:10 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id m21so18196208pgu.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 09:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XTLDjg6tKpXO0n3tGXRecJAHRamIK6iZPCPoGCwwYoA=;
 b=n+WFlH5sDsKJBIqbhXBL0q86YID/cm95Hb4Pn7OgXho2+PQI0nSIdRbWypwC1UKBDc
 DLGkfkLNRgU/4Jp5PtjVk8wlNcPXFV82TekHIAWzakfClYLV1up37fwMMsaFds99YrVu
 hNhlWvvXJ7s5t7jexJWYFgrPnilemlVeEY6QOZlKBD8momja0/KMxsagYQWYBX3Swb0R
 IBff6ti5Yo9g23SYXpecR6u2VLeocqeAEBuEh7d2TS0npVBk3zwvJ6xEwnVe9dM1BC3A
 QwKM/wGB/13xUZ8eKf1kP0LtQtr2a4f5cOQEzBeZGmRFBfWO/kxwb9qc8cB5gj0PVpiy
 36Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XTLDjg6tKpXO0n3tGXRecJAHRamIK6iZPCPoGCwwYoA=;
 b=mBKT/ArJvL2KGWxVE2ezS/AjNV3PlOiw83ZAl8dz7CaHC3IV22WhtgIEWrJlju6V7N
 Yf3qLROMQXhxqHZEq+hbEj6sAr2uTNlA2KXVuqAYDcaRXnDDEd8afanxzLh8nulTKct0
 NrNVUkp14gbq+YTVwT8CPThnRbdNFgiQcQCeZF+aCBFsFiou7h2yXv0xFQGkycvV4VO9
 5oEtcGwm1Z5C3GbTuaZiUeVc4LSHdjxT6q/yFzsMILTJlywOk0wQ58QbtO8MajxjeL16
 6Ibi5kDySb+DbAz4sqPMZnPzQ46pZjNsCP9eE1dKKFBRlZC+PvFpBjzs6zgh+1KwnzbJ
 1Jrw==
X-Gm-Message-State: AOAM531vqquB7L8zowOrd20hs7ASeyhlC84JHyUJgZ3k12zELQZtrQwl
 6i7Z58qD/kZvlO9TpfmuqVZ58g==
X-Google-Smtp-Source: ABdhPJwR7BDUtOf/PI25/vpcHZm+mNUz7FflOv5PSidwcLqI4zYdDEmizFXZbBjNUgQkz/U1dIeC3A==
X-Received: by 2002:aa7:94aa:0:b0:43e:2cf:d326 with SMTP id
 a10-20020aa794aa000000b0043e02cfd326mr447025pfl.62.1632758829714; 
 Mon, 27 Sep 2021 09:07:09 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id 77sm17358967pfu.219.2021.09.27.09.07.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 09:07:09 -0700 (PDT)
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <cover.1632565508.git.leonro@nvidia.com>
 <cb187a035b75dbcc27f6dd10d72f18f1101bad44.1632565508.git.leonro@nvidia.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <f1d3e167-a991-13cb-d263-6466110fa8c4@pensando.io>
Date: Mon, 27 Sep 2021 09:07:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <cb187a035b75dbcc27f6dd10d72f18f1101bad44.1632565508.git.leonro@nvidia.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 14/21] ionic: Move devlink
 registration to be last devlink command
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, Simon Horman <simon.horman@corigine.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/25/21 4:22 AM, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
>
> This change prevents from users to access device before devlink is
> fully configured.
>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Thanks for the work,

Acked-by: Shannon Nelson <snelson@pensando.io>


> ---
>   drivers/net/ethernet/pensando/ionic/ionic_devlink.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> index 93282394d332..2267da95640b 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> @@ -82,7 +82,6 @@ int ionic_devlink_register(struct ionic *ionic)
>   	struct devlink_port_attrs attrs = {};
>   	int err;
>   
> -	devlink_register(dl);
>   	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
>   	devlink_port_attrs_set(&ionic->dl_port, &attrs);
>   	err = devlink_port_register(dl, &ionic->dl_port, 0);
> @@ -93,6 +92,7 @@ int ionic_devlink_register(struct ionic *ionic)
>   	}
>   
>   	devlink_port_type_eth_set(&ionic->dl_port, ionic->lif->netdev);
> +	devlink_register(dl);
>   	return 0;
>   }
>   
> @@ -100,6 +100,6 @@ void ionic_devlink_unregister(struct ionic *ionic)
>   {
>   	struct devlink *dl = priv_to_devlink(ionic);
>   
> -	devlink_port_unregister(&ionic->dl_port);
>   	devlink_unregister(dl);
> +	devlink_port_unregister(&ionic->dl_port);
>   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
