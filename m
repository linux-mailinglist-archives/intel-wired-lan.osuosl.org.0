Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30308647FDD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 10:09:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B96EA60B93;
	Fri,  9 Dec 2022 09:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B96EA60B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670576961;
	bh=E2vPy4oTNnyZPd6Uy9VaSd4aYc8036GKDIPZASURcGA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7qj6kY6H2d3YgFvSy9hivM1uWOGUu/5zhdScbf3/LhBrqP84o/Hog+FKJIWtae1fm
	 L+bMqyz180cB5ljzECmqrq7Kwqscye5Ph86X63gfwZAIzQ/rNHyqsa34YxxcMLH2ou
	 8LdTdP6ZAFkpOj5i59chgqo8FF3MBhfa4o0qM4mi92LsAsbU7/YTYl/nLL8OeC3f/S
	 LW7PAvFqK0HkddjzWmD9W6XQly9d9YtAuw7T3z/SCKHmDtfBWXbvwsT4Y/6waC8fMJ
	 +WU/W+HD+ys+0h6WREPdxxoaBHaxRbC1xpyBMpA75/VPIdgElmY/ZXmSmV4TzhxoDL
	 Hcv5V9Ln3iKvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gqf3WFOJhD2l; Fri,  9 Dec 2022 09:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9755F607F0;
	Fri,  9 Dec 2022 09:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9755F607F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BF7A1BF476
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 09:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34697415AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 09:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34697415AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HYcW6w4NWoiy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 09:09:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 921A4410DC
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 921A4410DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 09:09:14 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id n20so10109879ejh.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Dec 2022 01:09:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fgt48rlINqJ++gacbxzdaxwfqg3JChGGNmk6rKS5098=;
 b=OpQZ7W94nwOI6v8zgt89q+Ao07qVSwed1Wd7hMqWZvIg9MIikYZDQVM7OV2w38veUw
 AO6nAGy2XYKWjEPlywhGu9qUjdrYv7/Ht/tOw/4GCyhdwWyBjlpsfLybQieeCmax/pvh
 birhhfU8FsrAin302UU9CDjDTJXoXG5YkieGTkRSfCDeluoBMi0eSi6/mjCTaSaZ6Te7
 /8PYTtMv4bhkSe5qN5QdjTucAZEItvu4ECSXoUBl/aWAdPAQEcLKoqdkTAn3LLsHDjto
 4OdpvnPMoBWZDdoCOD35gC2hlPrb5F0CXqyhrzCagFre4wbvHXygzRgZlUgbGgzRnQei
 8p1w==
X-Gm-Message-State: ANoB5pnXpLfdQ4xBsKGisf1BxwnsVpkKKtqZXjCE+Qlv29P3B/KsAudP
 PUBQ4ebwzaN0rjR6/PGiAW6U8fcpnsiICH0rk3c=
X-Google-Smtp-Source: AA0mqf5DLMTCrXds3dIr04vA44eSdXU4m05VJ0nn6h21t7DCRo/HUhy7HWIoC0jY748nadNyO+9AG8GwUrzCiICNBGg=
X-Received: by 2002:a17:906:6b97:b0:7c0:fe68:35e9 with SMTP id
 l23-20020a1709066b9700b007c0fe6835e9mr12098147ejr.49.1670576952640; Fri, 09
 Dec 2022 01:09:12 -0800 (PST)
MIME-Version: 1.0
References: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
 <Y3ytcGM2c52lzukO@unreal> <20221122155759.426568-1-alexandr.lobakin@intel.com>
 <MN2PR11MB404540A828EDDE82F00E8E2BEA1A9@MN2PR11MB4045.namprd11.prod.outlook.com>
 <CAJ8uoz1RjaGv=HEwmaZw1hKH_GpHA9u-sBvz-Cxb0W_wdYjDZg@mail.gmail.com>
In-Reply-To: <CAJ8uoz1RjaGv=HEwmaZw1hKH_GpHA9u-sBvz-Cxb0W_wdYjDZg@mail.gmail.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Fri, 9 Dec 2022 10:09:00 +0100
Message-ID: <CAJ8uoz2_s_hyYZaPt15a9c274UXC-8Ejc2nPAmqMN9437fcciQ@mail.gmail.com>
To: "Rout, ChandanX" <chandanx.rout@intel.com>, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fgt48rlINqJ++gacbxzdaxwfqg3JChGGNmk6rKS5098=;
 b=cg9EXQ+Rf7e0oz0EmjAlbT5rQH90QcXrsnQudbV0PkUPgPs3Em4g8N6xYIW5L68gsD
 BA9xDyfWjcZLsLKPukBPLaA3DnV2+Gqsdy457UOCz2Iyu/IBdkyZyRl8Kz2cz7omCUd7
 SpMl0xXqSMKX7AZ2STfDKAnkspOm/hCJZ4cqVz/ROXozYCel2AauuGpQvrwLTfI9UVpl
 OXHWCoqZiNIgEyGXlhbgcnYP903O1i0v2g3PxBJxv3OCr+oZQ6QguC/bTIwyg/OhzllB
 o6lHVTBOiM8EiHbx6Q3zvl8f8wKaqwHAbpS6exEkda9NOdlPRg8jibSMelZ0weBJbPSx
 uu7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=cg9EXQ+R
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4] i40e: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: Leon Romanovsky <leon@kernel.org>, "Sarkar,
 Tirthendu" <tirthendu.sarkar@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tirtha@gmail.com" <tirtha@gmail.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 7, 2022 at 4:37 PM Magnus Karlsson
<magnus.karlsson@gmail.com> wrote:
>
> On Wed, Dec 7, 2022 at 4:01 PM Rout, ChandanX <chandanx.rout@intel.com> wrote:
> >
> > Hi Team,
> > We observed some different result on i40e driver which are as follows
> >
> > Issue Summary: Unable to find loopback test in "ethtool -t <interface> using i40e driver using latest next-queue.
> > Observations:
> > ===========
> > 1. we are able to enable loopback mode on i40e driver.
> > 2. We are unable to find loopback test in "ethtool -t <interface>" command while using i40e driver.
>
> That is correct, there is no loopback test in i40e. We chose not to
> add one since it was broken in ice (until Maciej fixed it), so we
> thought nobody actually used it. Instead, we have a much more thorough
> test shipped in tools/testing/selftests/bpf/xsk* that tests the
> loopback support in more ways than just sending a single message. I
> have run this test using Tirtha's patch and it passes. So can I sign
> off with a Tested-by? Would save you a lot of time, which is good.
> There is no point for you to run the same test as I did again. Just a
> waste of valuable testing time.

Adding intel-wired and Tony who was not on the reply for some reason.

I have now tested the patch and it passes all the tests executed by
tools/testing/selftests/bpf/test_xsk.sh. The script launches over 100
tests that send 1000s of different packets through the loopback
interface and verifies that the packet content is the same as what was
sent and that they are received in order.

Tested-by: Magnus Karlsson <magnus.karlsson@intel.com>

Tony, please pick this up for your next i40e pull request / release.

Thank you: Magnus

> > 3. However, in ice driver we are able to enable loopback mode also we are able to see the loopback test using "ethtool -t <interface>".
> >
> > Note: Detail Observation is attached in excel format.
> >
> > On I40e
> > =======
> > [root@localhost admin]# ethtool -k ens802f3 | grep loopback
> > loopback: off
> > [root@localhost admin]# ethtool -K ens802f3 loopback on
> > [root@localhost admin]# ethtool -k ens802f3 | grep loopback
> > loopback: on
> > [root@localhost admin]# ethtool -t ens802f3 online
> > The test result is PASS
> > The test extra info:
> > Register test  (offline)         0
> > Eeprom test    (offline)         0
> > Interrupt test (offline)         0
> > Link test   (on/offline)         0
> > [root@localhost admin]# ethtool -t ens802f3 offline
> > The test result is PASS
> > The test extra info:
> > Register test  (offline)         0
> > Eeprom test    (offline)         0
> > Interrupt test (offline)         0
> > Link test   (on/offline)         0
> >
> > On ice
> > =====
> > [root@localhost admin]# ethtool -k ens801f0np0 | grep loopback
> > loopback: off
> > [root@localhost admin]# ethtool -K ens801f0np0 loopback on
> > [root@localhost admin]# ethtool -k ens801f0np0 | grep loopback
> > loopback: on
> > [root@localhost admin]# ethtool -t ens801f0np0 online
> > The test result is PASS
> > The test extra info:
> > Register test  (offline)         0
> > EEPROM test    (offline)         0
> > Interrupt test (offline)         0
> > Loopback test  (offline)         0
> > Link test   (on/offline)         0
> > [root@localhost admin]# ethtool -t ens801f0np0 offline
> > The test result is PASS
> > The test extra info:
> > Register test  (offline)         0
> > EEPROM test    (offline)         0
> > Interrupt test (offline)         0
> > Loopback test  (offline)         0
> > Link test   (on/offline)         0
> >
> >
> > Thanks & Regards
> > Chandan Kumar Rout
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Lobakin, Alexandr
> > Sent: 22 November 2022 21:28
> > To: Leon Romanovsky <leon@kernel.org>
> > Cc: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>; tirtha@gmail.com; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Karlsson, Magnus <magnus.karlsson@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH intel-next v4] i40e: allow toggling loopback mode via ndo_set_features callback
> >
> > From: Leon Romanovsky <leon@kernel.org>
> > Date: Tue, 22 Nov 2022 13:07:28 +0200
> >
> > > On Fri, Nov 18, 2022 at 02:33:06PM +0530, Tirthendu Sarkar wrote:
> > > > Add support for NETIF_F_LOOPBACK. This feature can be set via:
> > > > $ ethtool -K eth0 loopback <on|off>
> > > >
> > > > This sets the MAC Tx->Rx loopback.
> > > >
> > > > This feature is used for the xsk selftests, and might have other
> > > > uses too.
> >
> > [...]
> >
> > > > @@ -12960,6 +12983,9 @@ static int i40e_set_features(struct net_device *netdev,
> > > >     if (need_reset)
> > > >             i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
> > > >
> > > > +   if ((features ^ netdev->features) & NETIF_F_LOOPBACK)
> > > > +           return i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
> > >
> > > Don't you need to disable loopback if NETIF_F_LOOPBACK was cleared?
> >
> > 0 ^ 1 == 1 -> call i40e_set_loopback()
> > !!(0) == 0 -> disable
> >
> > >
> > > > +
> > > >     return 0;
> > > >  }
> > > >
> > > > @@ -13722,7 +13748,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
> > > >     if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
> > > >             hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
> > > >
> > > > -   netdev->hw_features |= hw_features;
> > > > +   netdev->hw_features |= hw_features | NETIF_F_LOOPBACK;
> > > >
> >
> > Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> >
> > Thanks,
> > Olek
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
