Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA5F50E237
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 15:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE360409B0;
	Mon, 25 Apr 2022 13:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DyZadwkXWFiv; Mon, 25 Apr 2022 13:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 057CE4098D;
	Mon, 25 Apr 2022 13:46:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D1A11BF316
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 593D340153
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Csv-8rNJgDn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 19:02:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8C114002B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:02:48 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id gh6so1724864ejb.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=tMc8dx1x0WTZHwZFBrRcSeOqVhcF6yntkMmbjUKYaEs=;
 b=jl6VytIvlwLw3tz+i+mjRTXbkoIoqk47bL1KGaKkFAVVjauRo4olu+rfaxG+RJVemC
 KjLeN406HRQTxZMxroX02dRkXN7n6RySWd9wK//lduGJNXuP9eaNyTteRJEvfAIMGMTS
 CBb7tI7yYhtE0X0pr7vbn1vrO5mIRY7m7XCGC0pfU5DMb9jBq269HZl3UTFbquo3xVCT
 PaUzhgWcFrDVrTAu/QqaYhqRrOMC2io32oAimAhgKhpPTDUZilYJn8fci3yRAKtPzqoG
 ttHXcg50WOdB4e+DLnG14UZWa3BqIrRj7hHGCFMw/WPbUJbYNPyy+4IZv5Lr1ets/gJ9
 aQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=tMc8dx1x0WTZHwZFBrRcSeOqVhcF6yntkMmbjUKYaEs=;
 b=vjfjgKoTu4oyTTxtU0aEjSj+xd96yvDvVmWqgYiFpwSYdIdKkHE8Z+HQ4dwueQSBy3
 sybp+W+p0k3Rqcz6WuwFJiWV8fgEet4AJb86hMPkGcYkpCx2nIZt9COH39ePPEGDQXOg
 bzQcDY/NOvx4lIiz8GcxlV3UwN1OmC0/cvxs9LzXWUTGKzmyYyKFv66j4yzO3mFQHX+V
 uDKqxmh0a5JEk6V3NEmbjfm9ziDqplkPS/3gVGjfBYZFCzCYw6fuH7QGGoFk0rC1NE2l
 pOqavyrVAwsOF9xbLBE3Ql2prvVhNS7LaDSMvbCbvdhr3yxegC1oOsY2NZxFOqs5hmIl
 7n+A==
X-Gm-Message-State: AOAM533Tg6+6m2+ZfTm5MppreokwgRsFXFPBMQ5flUCO9oSsbwlEnxpH
 pIk2mrPkQASvM+GF73cfnjtJpg==
X-Google-Smtp-Source: ABdhPJxWlN1ezoMKBrE70Jh+9BSLKTQrHryPQeexeEAwXqWQ5O/9z//Hs1KS2/JVF75MEB89VdOfHA==
X-Received: by 2002:a17:907:a429:b0:6f3:88cf:2e94 with SMTP id
 sg41-20020a170907a42900b006f388cf2e94mr4039352ejc.550.1650826966668; 
 Sun, 24 Apr 2022 12:02:46 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 tc3-20020a1709078d0300b006f00345be60sm2767926ejc.22.2022.04.24.12.02.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:02:46 -0700 (PDT)
Message-ID: <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
Date: Sun, 24 Apr 2022 22:02:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailman-Approved-At: Mon, 25 Apr 2022 13:46:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] rtnetlink: add extack
 support in fdb del handlers
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 24/04/2022 15:09, Alaa Mohamed wrote:
> Add extack support to .ndo_fdb_del in netdevice.h and
> all related methods.
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V3:
>         fix errors reported by checkpatch.pl
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>  drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>  drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>  drivers/net/macvlan.c                            | 2 +-
>  drivers/net/vxlan/vxlan_core.c                   | 2 +-
>  include/linux/netdevice.h                        | 2 +-
>  net/bridge/br_fdb.c                              | 2 +-
>  net/bridge/br_private.h                          | 2 +-
>  net/core/rtnetlink.c                             | 4 ++--
>  9 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index d768925785ca..7b55d8d94803 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>  static int
>  ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>  	    struct net_device *dev, const unsigned char *addr,
> -	    __always_unused u16 vid)
> +	    __always_unused u16 vid, struct netlink_ext_ack *extack)
>  {
>  	int err;
> -
> +

What's changed here?

>  	if (ndm->ndm_state & NUD_PERMANENT) {
>  		netdev_err(dev, "FDB only supports static addresses\n");
>  		return -EINVAL;
> diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
> index 247bc105bdd2..e07c64e3159c 100644
> --- a/drivers/net/ethernet/mscc/ocelot_net.c
> +++ b/drivers/net/ethernet/mscc/ocelot_net.c
> @@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
> 
>  static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>  			       struct net_device *dev,
> -			       const unsigned char *addr, u16 vid)
> +			       const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>  {
>  	struct ocelot_port_private *priv = netdev_priv(dev);
>  	struct ocelot_port *ocelot_port = &priv->port;
>  	struct ocelot *ocelot = ocelot_port->ocelot;
>  	int port = priv->chip_port;
> 
> -	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
> +	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
>  }
> 
>  static int ocelot_port_fdb_dump(struct sk_buff *skb,
> diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> index d320567b2cca..51fa23418f6a 100644
> --- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> +++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> @@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)
> 
>  static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>  			struct net_device *netdev,
> -			const unsigned char *addr, u16 vid)
> +			const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>  {
>  	struct qlcnic_adapter *adapter = netdev_priv(netdev);
>  	int err = -EOPNOTSUPP;
> diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
> index 069e8824c264..ffd34d9f7049 100644
> --- a/drivers/net/macvlan.c
> +++ b/drivers/net/macvlan.c
> @@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
> 
>  static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>  			   struct net_device *dev,
> -			   const unsigned char *addr, u16 vid)
> +			   const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>  {
>  	struct macvlan_dev *vlan = netdev_priv(dev);
>  	int err = -EINVAL;
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index de97ff98d36e..cf2f60037340 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
>  /* Delete entry (via netlink) */
>  static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  			    struct net_device *dev,
> -			    const unsigned char *addr, u16 vid)
> +			    const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>  {
>  	struct vxlan_dev *vxlan = netdev_priv(dev);
>  	union vxlan_addr ip;
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 28ea4f8269d4..d0d2a8f33c73 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1509,7 +1509,7 @@ struct net_device_ops {
>  					       struct nlattr *tb[],
>  					       struct net_device *dev,
>  					       const unsigned char *addr,
> -					       u16 vid);
> +					       u16 vid, struct netlink_ext_ack *extack);
>  	int			(*ndo_fdb_dump)(struct sk_buff *skb,
>  						struct netlink_callback *cb,
>  						struct net_device *dev,
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6ccda68bd473..5bfce2e9a553 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
>  /* Remove neighbor entry with RTM_DELNEIGH */
>  int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  		  struct net_device *dev,
> -		  const unsigned char *addr, u16 vid)
> +		  const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>  {
>  	struct net_bridge_vlan_group *vg;
>  	struct net_bridge_port *p = NULL;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 18ccc3d5d296..95348c1c9ce5 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -780,7 +780,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>  		   const unsigned char *addr, u16 vid, unsigned long flags);
> 
>  int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
> -		  struct net_device *dev, const unsigned char *addr, u16 vid);
> +		  struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);

This is way too long (111 chars) and checkpatch should've complained about it.
WARNING: line length of 111 exceeds 100 columns
#234: FILE: net/bridge/br_private.h:782:
+		  struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);

>  int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
>  	       const unsigned char *addr, u16 vid, u16 nlh_flags,
>  	       struct netlink_ext_ack *extack);
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 4041b3e2e8ec..99b30ae58a47 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>  		const struct net_device_ops *ops = br_dev->netdev_ops;
> 
>  		if (ops->ndo_fdb_del)
> -			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
> +			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
> 
>  		if (err)
>  			goto out;
> @@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>  	if (ndm->ndm_flags & NTF_SELF) {
>  		if (dev->netdev_ops->ndo_fdb_del)
>  			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
> -							   vid);
> +							   vid, extack);
>  		else
>  			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
> 
> --
> 2.36.0
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
