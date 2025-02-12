Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA1CA332B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 23:33:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD657407A8;
	Wed, 12 Feb 2025 22:33:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cysxdVl1iXbJ; Wed, 12 Feb 2025 22:33:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 389A3414A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739399583;
	bh=AjD5c5Z/nOcFqJ1zoOXQlAY5nML8UX6BLoysdrIad+g=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y1sbSeJ69VQcSB/4kOkY8p8e2Nz4Fmd9+168upoH9VYHg2AkXDQiRqD0VRMuFP0NP
	 3//7T+Xnrw0Vjd8dBQLAsrPRCZBhweLfal6VqwK14rTHHda4CPnMDwI2D1RDjTr11m
	 hgw7CQ0eU9N/2r77VfWUinv3iQBeIBu3/nlzE2DStBOKvLvwqSr8BmjhOiKNjwfAht
	 CzZOPXUEr6Hcyygdq+Awe5I3bgXikXHvjCG2S/k4G4Dye3o5SkIczn/U3i+Son9NmL
	 7bturQxXFoRxJjtlGZSgIITZQn9rOrG6B8QgVEdiQars1sgS2RzOfBz5V1r3RFmR6X
	 eV0W33MwSeeSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 389A3414A2;
	Wed, 12 Feb 2025 22:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A63F81A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80777610D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V2kW41Gg5rg0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 22:32:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::935; helo=mail-ua1-x935.google.com;
 envelope-from=wejmanpm@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B21061094
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B21061094
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com
 [IPv6:2607:f8b0:4864:20::935])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B21061094
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:32:59 +0000 (UTC)
Received: by mail-ua1-x935.google.com with SMTP id
 a1e0cc1a2514c-86707fe3eccso123858241.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739399578; x=1740004378;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AjD5c5Z/nOcFqJ1zoOXQlAY5nML8UX6BLoysdrIad+g=;
 b=WLUyI/gCFmdWiaIDfAvTE8un1gyNIsZbCmSB4O8O77rTuYAZZn79uaYO/U2Mj11tqu
 K35QNpyTSWT3nRKdBv5rGRqgiDt+xDh6nsXcxoaYlwxrbu+vVI3bnHPm0YnbN8WWM97v
 UyA0IFRW6yb9A7y42XtdEP6sD40WJ7pO5YT2i2sfvIe8slmquZ1NjUEOsfpzCYJ7h4iK
 U719z1NaNu64F/e0LczlmsElhvOH9HPSrWiQLY983rvPcI189UaO8btp3gigOrnH7942
 7JR0WPC1vpV7yJdDShUsj5/2Zk5GHeiOb7Zsf5rW6/I6cutPH4/hF56R7W1s6TjtNODr
 bdjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnkSH6TIPcA7NpsGVa708npO/MUo0pb94JkhYwNDxdYdRXJj7d1Zz3woiCJZiY+dB2X62LIp9NplaFhsK9+JU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzPP72v35urplKbjMnVefsqSOYVRxXpWBs+V9faid0OZZi0v6/r
 Jz9gyyfWhcrxeA6zU9RWDRomRF3fKWBqKI3qpBy+hJTGDQJrsJHlvRv/EJiZyvram1W86Vai5u1
 o80T1E8KqRa5ow2NWWrxGwEUu704=
X-Gm-Gg: ASbGncsGboJQfwS3HPhVvsrnGr2p0V/dqoWI+e02ObCFuf75dskbKC0WNXGhXjw2AUz
 liufv7cIWjSm4BSt2VeYHq5rpldh3M3zIWwBg/2NPReTpdfWcZMF83W0ERCZb0z47iEmM6dcf5c
 sfI6taew6eZcjp8sNjVWRBMI2IZ38l
X-Google-Smtp-Source: AGHT+IEc/svxJP9ZEqxO5z1spAxd5auUZZJlH9tuH8voVu2R9q6y4QOFPq0FU+OTG7o6Xj5WRxohz7nCkF9vt/f/ozY=
X-Received: by 2002:a05:6102:511f:b0:4bb:ccf5:c24b with SMTP id
 ada2fe7eead31-4bc04dc08famr990664137.2.1739399577848; Wed, 12 Feb 2025
 14:32:57 -0800 (PST)
MIME-Version: 1.0
References: <20250208154350.75316-1-wejmanpm@gmail.com>
 <7d0fccb0-6fee-44d9-8f1c-455c889a21a1@intel.com>
In-Reply-To: <7d0fccb0-6fee-44d9-8f1c-455c889a21a1@intel.com>
From: Piotr Wejman <wejmanpm@gmail.com>
Date: Wed, 12 Feb 2025 23:32:46 +0100
X-Gm-Features: AWEUYZn2ddEQE9HrtaK8of06GwCrWd9kvlYSrFkI_l8dCvrsOFD7F0AasaLhrvs
Message-ID: <CAMRHcQyp0MppaoL8fT+U7hh45zkZbFFRsDFU=nrYBpqFptTu6g@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739399578; x=1740004378; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AjD5c5Z/nOcFqJ1zoOXQlAY5nML8UX6BLoysdrIad+g=;
 b=fzOjC3hpEk3prnZbNcIUe6j6sOpNh9WLBXlTsHtMc5N6ePAl2chh2Esvu8U9XF2VU7
 eGLiSiSkFHhafaX9q9LrLNhAVZhA9wjaL/Cjtb6jblHx+4El9Xti3vRLdaIG9j0EBImi
 JAmfO3HpB5e3LTYwp5CsNXKrauHGckZ0xiDfOQi3XuGZD1kjuCHdiz8MrsrfnmsiY2pS
 0jiCEy9YhJjC7MlFvZJqJSJTiDCNXexkQWLxdnFxiirrcFZciZhcn8xnOWmst7lZonlA
 zj8PaPiigQ//5OlmMhbpQIW2ZXrpZ2MhQWeVy2z6i93C4cb2n6uv2ShaWPgJ/w+xG10y
 k8Mw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=fzOjC3hp
Subject: Re: [Intel-wired-lan] [PATCH v2] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Wed, Feb 12, 2025 at 3:10=E2=80=AFPM Lifshits, Vitaly
<vitaly.lifshits@intel.com> wrote:
>
>
>
> On 2/8/2025 5:43 PM, Piotr Wejman wrote:
> > Update the driver to use the new hardware timestamping API added in com=
mit
> > 66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
> > Use Netlink extack for error reporting in e1000e_hwtstamp_set.
> > Align the indentation of net_device_ops.
> >
> > Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
> > ---
> > Changes in v2:
> >    - amend commit message
> >    - use extack for error reporting
> >    - rename e1000_mii_ioctl to e1000_ioctl
> >    - Link to v1: https://lore.kernel.org/netdev/20250202170839.47375-1-=
piotrwejman90@gmail.com/
> >
> >   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 68 ++++++++++-----------=
-
> >   2 files changed, 31 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/et=
hernet/intel/e1000e/e1000.h
> > index ba9c19e6994c..952898151565 100644
> > --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> > +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> > @@ -319,7 +319,7 @@ struct e1000_adapter {
> >       u16 tx_ring_count;
> >       u16 rx_ring_count;
> >
> > -     struct hwtstamp_config hwtstamp_config;
> > +     struct kernel_hwtstamp_config hwtstamp_config;
> >       struct delayed_work systim_overflow_work;
> >       struct sk_buff *tx_hwtstamp_skb;
> >       unsigned long tx_hwtstamp_start;
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/e=
thernet/intel/e1000e/netdev.c
> > index 286155efcedf..43933e64819b 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -3574,6 +3574,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter =
*adapter, u32 *timinca)
> >    * e1000e_config_hwtstamp - configure the hwtstamp registers and enab=
le/disable
> >    * @adapter: board private structure
> >    * @config: timestamp configuration
> > + * @extack: netlink extended ACK for error report
> >    *
> >    * Outgoing time stamping can be enabled and disabled. Play nice and
> >    * disable it when requested, although it shouldn't cause any overhea=
d
> > @@ -3587,7 +3588,8 @@ s32 e1000e_get_base_timinca(struct e1000_adapter =
*adapter, u32 *timinca)
> >    * exception of "all V2 events regardless of level 2 or 4".
> >    **/
> >   static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
> > -                               struct hwtstamp_config *config)
> > +                               struct kernel_hwtstamp_config *config,
> > +                               struct netlink_ext_ack *extack)
> >   {
> >       struct e1000_hw *hw =3D &adapter->hw;
> >       u32 tsync_tx_ctl =3D E1000_TSYNCTXCTL_ENABLED;
> > @@ -3598,8 +3600,10 @@ static int e1000e_config_hwtstamp(struct e1000_a=
dapter *adapter,
> >       bool is_l2 =3D false;
> >       u32 regval;
> >
> > -     if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
> > +     if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP)) {
> > +             NL_SET_ERR_MSG(extack, "No HW timestamp support\n");
> >               return -EINVAL;
> > +     }
> >
> >       switch (config->tx_type) {
> >       case HWTSTAMP_TX_OFF:
> > @@ -3608,6 +3612,7 @@ static int e1000e_config_hwtstamp(struct e1000_ad=
apter *adapter,
> >       case HWTSTAMP_TX_ON:
> >               break;
> >       default:
> > +             NL_SET_ERR_MSG(extack, "Unsupported TX HW timestamp type\=
n");
> >               return -ERANGE;
> >       }
> >
> > @@ -3681,6 +3686,7 @@ static int e1000e_config_hwtstamp(struct e1000_ad=
apter *adapter,
> >               config->rx_filter =3D HWTSTAMP_FILTER_ALL;
> >               break;
> >       default:
> > +             NL_SET_ERR_MSG(extack, "Unsupported RX HW timestamp filte=
r\n");
> >               return -ERANGE;
> >       }
> >
> > @@ -3693,7 +3699,7 @@ static int e1000e_config_hwtstamp(struct e1000_ad=
apter *adapter,
> >       ew32(TSYNCTXCTL, regval);
> >       if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=3D
> >           (regval & E1000_TSYNCTXCTL_ENABLED)) {
> > -             e_err("Timesync Tx Control register not set as expected\n=
");
> > +             NL_SET_ERR_MSG(extack, "Timesync Tx Control register not =
set as expected\n");
>
> In the case where this function is being called from e1000e_systim_reset
> function, won't it cause this debug print to do nothing?

Yes, you're right.

>
> >               return -EAGAIN;
> >       }
> >
> > @@ -3706,7 +3712,7 @@ static int e1000e_config_hwtstamp(struct e1000_ad=
apter *adapter,
> >                                E1000_TSYNCRXCTL_TYPE_MASK)) !=3D
> >           (regval & (E1000_TSYNCRXCTL_ENABLED |
> >                      E1000_TSYNCRXCTL_TYPE_MASK))) {
> > -             e_err("Timesync Rx Control register not set as expected\n=
");
>
> Same question here.
>
> > +             NL_SET_ERR_MSG(extack, "Timesync Rx Control register not =
set as expected\n");
> >               return -EAGAIN;
> >       }
> >
> > @@ -3932,7 +3938,7 @@ static void e1000e_systim_reset(struct e1000_adap=
ter *adapter)
> >       spin_unlock_irqrestore(&adapter->systim_lock, flags);
> >
> >       /* restore the previous hwtstamp configuration settings */
> > -     e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
> > +     e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, NULL);

I'll pass an extack instead of NULL and add a print here.

> >   }
> >
> >   /**
> > @@ -6079,8 +6085,8 @@ static int e1000_change_mtu(struct net_device *ne=
tdev, int new_mtu)
> >       return 0;
> >   }
> >
> > -static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *if=
r,
> > -                        int cmd)
> > +static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
> > +                    int cmd)
> >   {
> >       struct e1000_adapter *adapter =3D netdev_priv(netdev);
> >       struct mii_ioctl_data *data =3D if_mii(ifr);
> > @@ -6140,7 +6146,8 @@ static int e1000_mii_ioctl(struct net_device *net=
dev, struct ifreq *ifr,
> >   /**
> >    * e1000e_hwtstamp_set - control hardware time stamping
> >    * @netdev: network interface device structure
> > - * @ifr: interface request
> > + * @config: timestamp configuration
> > + * @extack: netlink extended ACK report
> >    *
> >    * Outgoing time stamping can be enabled and disabled. Play nice and
> >    * disable it when requested, although it shouldn't cause any overhea=
d
> > @@ -6153,20 +6160,18 @@ static int e1000_mii_ioctl(struct net_device *n=
etdev, struct ifreq *ifr,
> >    * specified. Matching the kind of event packet is not supported, wit=
h the
> >    * exception of "all V2 events regardless of level 2 or 4".
> >    **/
> > -static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq=
 *ifr)
> > +static int e1000e_hwtstamp_set(struct net_device *netdev,
> > +                            struct kernel_hwtstamp_config *config,
> > +                            struct netlink_ext_ack *extack)
> >   {
> >       struct e1000_adapter *adapter =3D netdev_priv(netdev);
> > -     struct hwtstamp_config config;
> >       int ret_val;
> >
> > -     if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
> > -             return -EFAULT;
> > -
> > -     ret_val =3D e1000e_config_hwtstamp(adapter, &config);
> > +     ret_val =3D e1000e_config_hwtstamp(adapter, config, extack);
> >       if (ret_val)
> >               return ret_val;
> >
> > -     switch (config.rx_filter) {
> > +     switch (config->rx_filter) {
> >       case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
> >       case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
> >       case HWTSTAMP_FILTER_PTP_V2_SYNC:
> > @@ -6178,38 +6183,23 @@ static int e1000e_hwtstamp_set(struct net_devic=
e *netdev, struct ifreq *ifr)
> >                * by hardware so notify the caller the requested packets=
 plus
> >                * some others are time stamped.
> >                */
> > -             config.rx_filter =3D HWTSTAMP_FILTER_SOME;
> > +             config->rx_filter =3D HWTSTAMP_FILTER_SOME;
> >               break;
> >       default:
> >               break;
> >       }
> >
> > -     return copy_to_user(ifr->ifr_data, &config,
> > -                         sizeof(config)) ? -EFAULT : 0;
> > +     return 0;
> >   }
> >
> > -static int e1000e_hwtstamp_get(struct net_device *netdev, struct ifreq=
 *ifr)
> > +static int e1000e_hwtstamp_get(struct net_device *netdev,
> > +                            struct kernel_hwtstamp_config *kernel_conf=
ig)
> >   {
> >       struct e1000_adapter *adapter =3D netdev_priv(netdev);
> >
> > -     return copy_to_user(ifr->ifr_data, &adapter->hwtstamp_config,
> > -                         sizeof(adapter->hwtstamp_config)) ? -EFAULT :=
 0;
> > -}
> > +     *kernel_config =3D adapter->hwtstamp_config;
> >
> > -static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, i=
nt cmd)
> > -{
> > -     switch (cmd) {
> > -     case SIOCGMIIPHY:
> > -     case SIOCGMIIREG:
> > -     case SIOCSMIIREG:
> > -             return e1000_mii_ioctl(netdev, ifr, cmd);
> > -     case SIOCSHWTSTAMP:
> > -             return e1000e_hwtstamp_set(netdev, ifr);
> > -     case SIOCGHWTSTAMP:
> > -             return e1000e_hwtstamp_get(netdev, ifr);
> > -     default:
> > -             return -EOPNOTSUPP;
> > -     }
> > +     return 0;
> >   }
> >
> >   static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 w=
ufc)
> > @@ -7346,9 +7336,11 @@ static const struct net_device_ops e1000e_netdev=
_ops =3D {
> >   #ifdef CONFIG_NET_POLL_CONTROLLER
> >       .ndo_poll_controller    =3D e1000_netpoll,
> >   #endif
> > -     .ndo_set_features =3D e1000_set_features,
> > -     .ndo_fix_features =3D e1000_fix_features,
> > +     .ndo_set_features       =3D e1000_set_features,
> > +     .ndo_fix_features       =3D e1000_fix_features,
> >       .ndo_features_check     =3D passthru_features_check,
> > +     .ndo_hwtstamp_get       =3D e1000e_hwtstamp_get,
> > +     .ndo_hwtstamp_set       =3D e1000e_hwtstamp_set,
> >   };
> >
> >   /**
> >
>
>
> Also you are missing a subject prefix, I assume that you mean to send it
> to iwl-next since it is not a bug fix. Please add it to your patch.
