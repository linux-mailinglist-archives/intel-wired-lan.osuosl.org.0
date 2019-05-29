Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BB72E2D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 19:05:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B955586329;
	Wed, 29 May 2019 17:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mw4uGwIYQ1Pc; Wed, 29 May 2019 17:05:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFE4284ABB;
	Wed, 29 May 2019 17:05:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6D6E1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBEEB8623E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4oI-yW9z_tl4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 17:05:35 +0000 (UTC)
X-Greylist: delayed 00:22:05 by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6A1C84ABB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:05:35 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d30so253328pgm.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 10:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYXje7pkSQOlawqAWE5SmLuc60hKf0FafMLhT40aro4=;
 b=HzpC0qmw+hi+wxNs0qM40dFyonuMi7Bwb2k+tFbOesTzBeZBOfDBx0+EAkrAoZCUHw
 XYtC7TeTj/1vIUxlmgGzB1AhFFhRBsE+jMIH6a3R5WIAFYvzuLhSBnp/IEEQBkZ5e/ek
 WsQz9YWMWQn+K6ij5Yj5irLOe4DGrjvwRUsI5aK7JHVo0QFgzLQvCKcpAIWAN6s98P8m
 0SYsWPVf0/IuQKFxW4LajOrGMRv+AVFbjaGYwdkJ9EpLTu0A4m+taaOAyVV1IhNAUzeI
 PtJG1T4XS5PhwlMeW4/sVsCIzxLxsZVwqLOXB+WnjakWX9il7Nyt4L5cDR/UsZcLJKhD
 MdrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYXje7pkSQOlawqAWE5SmLuc60hKf0FafMLhT40aro4=;
 b=MHL5evD2C8froUGRHUMSuMSp+IwuCNSWldGiwz/yOME7HRog6+2Sq5lM9lEmNxsQ3E
 Bu2aAa6Ah2OGC7Hdb6B+BrJTFXMYY6al9Im3O6RQecw/YAleMXn/514efSbfvdKS1dhH
 CCJbPWDyyhL11lEkooTHaIjwsydMW5bZAmlPg7piBW9JFaHNqKkkae23Ght/1lPX0dX0
 smMBJ8ad+sQa+6wIi4C4aavuDoCEcUQ1r9YP3ARtYfAnDPA/XMcGdNLboOF33KawgM8K
 PNPc+scOrVIhnrjCpPwJ/9v/TiSItQp4tja8/E0JL+9yAk2Z4quZpmR3ygM7mzfkDDBQ
 iWyw==
X-Gm-Message-State: APjAAAUjFZEkzWETHrndDqdKp+qV6kQCLEFIEV5eTnSMKoEwjIIadRlX
 /usj+J9uYaPcCiWysjI/3T/B0l4/RyA=
X-Google-Smtp-Source: APXvYqyxEAEh9Ml0eSaDbqfzNPYl7K6SJN3kxuzDOeDcbyjeiHXPApREIkOKRA2MpiLkXWFsDvT14A==
X-Received: by 2002:a62:1846:: with SMTP id 67mr132559052pfy.33.1559147862067; 
 Wed, 29 May 2019 09:37:42 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id d24sm45802pjv.24.2019.05.29.09.37.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 09:37:41 -0700 (PDT)
Date: Wed, 29 May 2019 09:35:48 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <20190529093548.3df7ee73@hermes.lan>
In-Reply-To: <CANn89i+VvwMaHy2Br-0CcC3gPQ+PmG3Urpn4KpqL0P7XBykmcw@mail.gmail.com>
References: <e070e241-fb65-a5b0-3155-7380a9203bcf@molgen.mpg.de>
 <8627ea1e-8e51-c425-97f6-aeb57176e11a@gmail.com>
 <eb730f01-0c6d-0589-36cc-7193d64c1ee8@molgen.mpg.de>
 <CANn89i+VvwMaHy2Br-0CcC3gPQ+PmG3Urpn4KpqL0P7XBykmcw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Driver has suspect GRO implementation,
 TCP performance may be compromised.
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Eric Dumazet <eric.dumazet@gmail.com>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 29 May 2019 09:00:54 -0700
Eric Dumazet <edumazet@google.com> wrote:

> On Wed, May 29, 2019 at 7:49 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> >
> > Dear Eric,
> >
> >
> > Thank you for the quick reply.
> >
> > On 05/28/19 19:18, Eric Dumazet wrote:  
> > > On 5/28/19 8:42 AM, Paul Menzel wrote:  
> >  
> > >> Occasionally, Linux outputs the message below on the workstation Dell
> > >> OptiPlex 5040 MT.
> > >>
> > >>     TCP: net00: Driver has suspect GRO implementation, TCP performance may be compromised.
> > >>
> > >> Linux 4.14.55 and Linux 5.2-rc2 show the message, and the WWW also
> > >> gives some hits [1][2].
> > >>
> > >> ```
> > >> $ sudo ethtool -i net00
> > >> driver: e1000e
> > >> version: 3.2.6-k
> > >> firmware-version: 0.8-4
> > >> expansion-rom-version:
> > >> bus-info: 0000:00:1f.6
> > >> supports-statistics: yes
> > >> supports-test: yes
> > >> supports-eeprom-access: yes
> > >> supports-register-dump: yes
> > >> supports-priv-flags: no
> > >> ```
> > >>
> > >> Can the driver e1000e be improved?
> > >>
> > >> Any idea, what triggers this, as I do not see it every boot? Download
> > >> of big files?
> > >>  
> > > Maybe the driver/NIC can receive frames bigger than MTU, although this would be strange.
> > >
> > > diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
> > > index c61edd023b352123e2a77465782e0d32689e96b0..cb0194f66125bcba427e6e7e3cacf0c93040ef61 100644
> > > --- a/net/ipv4/tcp_input.c
> > > +++ b/net/ipv4/tcp_input.c
> > > @@ -150,8 +150,10 @@ static void tcp_gro_dev_warn(struct sock *sk, const struct sk_buff *skb,
> > >                 rcu_read_lock();
> > >                 dev = dev_get_by_index_rcu(sock_net(sk), skb->skb_iif);
> > >                 if (!dev || len >= dev->mtu)
> > > -                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised.\n",
> > > -                               dev ? dev->name : "Unknown driver");
> > > +                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised."
> > > +                               " len %u mtu %u\n",
> > > +                               dev ? dev->name : "Unknown driver",
> > > +                               len, dev ? dev->mtu : 0);
> > >                 rcu_read_unlock();
> > >         }
> > >  }  
> >
> > I applied your patch on commit 9fb67d643 (Merge tag 'pinctrl-v5.2-2' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl):
> >
> >      [ 5507.291769] TCP: net00: Driver has suspect GRO implementation, TCP performance may be compromised. len 1856 mtu 1500  
> 
> 
> The 'GRO' in the warning can be probably ignored, since this NIC does
> not implement its own GRO.
> 
> You can confirm this with this debug patch:
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 0e09bede42a2bd2c912366a68863a52a22def8ee..014a43ce77e09664bda0568dd118064b006acd67
> 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -561,6 +561,9 @@ static void e1000_receive_skb(struct e1000_adapter *adapter,
>         if (staterr & E1000_RXD_STAT_VP)
>                 __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), tag);
> 
> +       if (skb->len > netdev->mtu)
> +               pr_err_ratelimited("received packet bigger (%u) than
> MTU (%u)\n",
> +                                  skb->len, netdev->mtu);
>         napi_gro_receive(&adapter->napi, skb);
>  }

I think e1000 is one of those devices that only has receive limit as power of 2.
Therefore frames up to 2K can be received.

There always some confusion in Linux about whether MTU is transmit only or devices
have to enforce it on receive.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
