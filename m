Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7B47AE17C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 00:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAED141D69;
	Mon, 25 Sep 2023 22:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAED141D69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695679437;
	bh=BgGL8krfUM4gpVnoOVMsHFSt9FiiYHVfYhgO+1g1nWQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ezTHb22b7/sxbiuvoJYw3UVuS3mNbhxqeCEpJirSZAfVjlP7TYkJqzsvhW7f3H4S
	 XdT9fST8pNgLxfT4FTg0kyow5NIfi0uwEDZJvyVtAfkhQGzjdN3oo3ft+ij5Evc+pJ
	 0nOMiSvVw49tveOT85XPtzEl+2sN+KWeP6RfN8R5GJPdl7ighSTjkBBgf0tlCVJQ5Q
	 F4HHyH3Xfu2d6Unp0FIpB3qfypZ7zVc2/ZPoZTyY8EMwiHNwVESMGkeHu2KSA630sU
	 or+yhh2PYbZi2W0l0B+GfFbWALSspXNepQnTOynZx5vwelUyA2aZdckApGNT8g6b7j
	 8mu3NRgErr3VA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QoDhuQevpIe4; Mon, 25 Sep 2023 22:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FF71408CF;
	Mon, 25 Sep 2023 22:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FF71408CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3D71BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 19:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E52440352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 19:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E52440352
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GcmT5nNAHISQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 19:41:12 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74EF740131
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 19:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74EF740131
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-40572aeb73cso38069475e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 12:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695670870; x=1696275670;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=T6trxzudUI1eKlqa/eejHE9u02o7xmWO8q0nCXY+t8E=;
 b=EDZLhjeuwsObeluWmHzpTDm1MFcr9GG9n5YEvA1g92flAlKBsxFbVmxg7whWNia0an
 /fE5sFpaVH6ojY1pHIXi/5ogskQAeS9/R5fXCFQbt55wng5Q33MFUVkpLk9Ck3kYJxeY
 YfjAqkO/S+2RWQJXMG0QP1UPc1J0cKNNcFK49/N+zWOnvOjdrQ7+Qo46LTZePPGE8X8F
 jQfHkuIORHIW97haFyP7qxeE9S956bZReU94wG4NnJRvB+G54jRcqBZ6auOOsWwfa61k
 RGFlB70I2PbMCF+0RaL9dx1t/WN0hwNGg4RCWrTAOhPc7oPL88sb8PpzzACkbwsZ2Jwm
 q6TA==
X-Gm-Message-State: AOJu0YzfPowG1nVQRJTsYw5RiGIQOWp7GPqPmvTef54bG/VufitVBfbq
 oNj5FU9SB4XWSkauky/HVzAZHA5hTABuplEfV0gyyg==
X-Google-Smtp-Source: AGHT+IFsfyqROc7vEhTQkheAeKxctGFVKQHa8xnqk0VQilhLlTVjkCLCkZew4hTAAKIjyCDVxd+qCDOS38onFq/k89k=
X-Received: by 2002:adf:f110:0:b0:320:459:5a3 with SMTP id
 r16-20020adff110000000b00320045905a3mr6559562wro.33.1695670870451; 
 Mon, 25 Sep 2023 12:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
 <40c11058-5065-41f0-bf09-2784b291c41b@intel.com>
 <04bc5392-24da-49dc-a240-27e8c69c7e06@lunn.ch>
In-Reply-To: <04bc5392-24da-49dc-a240-27e8c69c7e06@lunn.ch>
From: Prasad Koya <prasad@arista.com>
Date: Mon, 25 Sep 2023 12:40:58 -0700
Message-ID: <CAKh1g55zm4jcwB34Qch=yAdLwLyPcQD0NbgZtUeS=shiRkd_vw@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Approved-At: Mon, 25 Sep 2023 22:03:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1695670870; x=1696275670; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=T6trxzudUI1eKlqa/eejHE9u02o7xmWO8q0nCXY+t8E=;
 b=cpT+8LRMMEZxGc+e6PInOX1CEhEhBXYAMFSe0rb8+EB3DP2sQoVxOG3yORXeEp528k
 L3aLwAzg4tGe+TAagV/qfoLjivUvLMnorVqpQhngpYF/35GGNnaNvEnzakfA9AsfjtI0
 5SuefUd9TgU5bfqCCsDU2//BlIHO5iGrO5qjtrznkWixk+eZU99rwhpuVq0cLRxBidpm
 oftiKnoizdgivhp/AYm7bhfJj0+Qd1VS/yhYIkx7hGM+nfAfINrFKsxn38B3uTqml5V2
 a8Io2MJUf6rUR6GyM0sVmFJJGL07ndqDiCL68T3IzJOECG5HVfLCk8WLuv4HXTj4j2Bx
 uwHQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=cpT+8LRM
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] Revert "igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings"
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>, edumazet@google.com,
 netdev@vger.kernel.org, jesse.brandeburg@intel.com, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, "lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============4888331503274847271=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4888331503274847271==
Content-Type: multipart/alternative; boundary="000000000000e443e706063423f6"

--000000000000e443e706063423f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Here is the ethtool output before and after changing the speed with the
commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2:

-bash-4.2# ethtool ma1
Settings for ma1:
        Supported ports: [ TP ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 1000Mb/s
        Duplex: Full
        Auto-negotiation: on
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
-bash-4.2#
-bash-4.2# ethtool  -s ma1 speed 100 duplex full autoneg on
-bash-4.2#
-bash-4.2# ethtool ma1
Settings for ma1:
        Supported ports: [ TP ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  100baseT/Full
                                2500baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 100Mb/s
        Duplex: Full
        Auto-negotiation: on
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
-bash-4.2#

With the patch reverted:

-bash-4.2# ethtool -s ma1 speed 100 duplex full autoneg on
-bash-4.2#
-bash-4.2# ethtool ma1
Settings for ma1:
        Supported ports: [ TP ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  100baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 100Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
-bash-4.2#

with the patch enabled:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Default 'advertising' field is: 0x8000000020ef
ie., 10Mbps_half, 10Mbps_full, 100Mbps_half, 100Mbps_full, 1000Mbps_full,
Autoneg, TP, Pause and 2500Mbps_full bits set.

and 'hw->phy.autoneg_advertised' is 0xaf

During "ethtool -s ma1 speed 100 duplex full autoneg on"

ethtool sends 'advertising' as 0x20c8 ie., 100Mbps_full, Autoneg, TP, Pause
bits set which are correct.

However, to reset the link with new 'advertising' bits, code takes this
path:

[  255.073847]  igc_setup_copper_link+0x73c/0x750
[  255.073851]  igc_setup_link+0x4a/0x170
[  255.073852]  igc_init_hw_base+0x98/0x100
[  255.073855]  igc_reset+0x69/0xe0
[  255.073857]  igc_down+0x22b/0x230
[  255.073859]  igc_ethtool_set_link_ksettings+0x25f/0x270
[  255.073863]  ethtool_set_link_ksettings+0xa9/0x140
[  255.073866]  dev_ethtool+0x1236/0x2570

igc_setup_copper_link() calls igc_copper_link_autoneg().
igc_copper_link_autoneg() changes phy->autoneg_advertised

    phy->autoneg_advertised &=3D phy->autoneg_mask;

and autoneg_mask is IGC_ALL_SPEED_DUPLEX_2500 which is 0xaf:

/* 1Gbps and 2.5Gbps half duplex is not supported, nor spec-compliant. */
#define ADVERTISE_10_HALF       0x0001
#define ADVERTISE_10_FULL       0x0002
#define ADVERTISE_100_HALF      0x0004
#define ADVERTISE_100_FULL      0x0008
#define ADVERTISE_1000_HALF     0x0010 /* Not used, just FYI */
#define ADVERTISE_1000_FULL     0x0020
#define ADVERTISE_2500_HALF     0x0040 /* Not used, just FYI */
#define ADVERTISE_2500_FULL     0x0080

#define IGC_ALL_SPEED_DUPLEX_2500 ( \
    ADVERTISE_10_HALF | ADVERTISE_10_FULL | ADVERTISE_100_HALF | \
    ADVERTISE_100_FULL | ADVERTISE_1000_FULL | ADVERTISE_2500_FULL)

so 0x20c8 & 0xaf becomes 0x88 ie., the TP bit (bit 7
of ethtool_link_mode_bit_indices) in 0x20c8 got interpreted as
ADVERTISE_2500_FULL. so after igc_reset(), hw->phy.autoneg_advertised is
0x88. Post that, 'ethtool <interface>' reports 2500Mbps can also be
advertised.

@@ -445,9 +451,19 @@ static s32 igc_copper_link_autoneg(struct igc_hw *hw)
        u16 phy_ctrl;
        s32 ret_val;

        /* Perform some bounds checking on the autoneg advertisement
         * parameter.
         */
+       if (!(phy->autoneg_advertised & ADVERTISED_2500baseX_Full))
+               phy->autoneg_advertised &=3D ~ADVERTISE_2500_FULL;
+       if ((phy->autoneg_advertised & ADVERTISED_2500baseX_Full))
+               phy->autoneg_advertised |=3D ADVERTISE_2500_FULL;
+
        phy->autoneg_advertised &=3D phy->autoneg_mask;

I see phy->autoneg_advertised modified similarly in igc_phy_setup_autoneg()
as well.

Above diff works for:

ethtool -s <intf> speed 10/100/1000 duplex full autoneg on
or
ethtool -s <intf> advertise 0x3f (0x03 or 0x0f etc)

but I haven't tested on a 2500 Mbps link. ADVERTISE_2500_FULL is there only
for igc.

Thanks
Prasad


On Sun, Sep 24, 2023 at 7:51=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote:

> On Sun, Sep 24, 2023 at 10:09:17AM +0300, Neftin, Sasha wrote:
> > On 22/09/2023 19:38, Prasad Koya wrote:
> > > This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.
> > >
> > > After the command "ethtool -s enps0 speed 100 duplex full autoneg on"=
,
> > > i.e., advertise only 100Mbps speed to the peer, "ethtool enps0" shows
> > > advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen
> > > when changing the speed to 10Mbps or 1000Mbps.
> > >
> > > This applies to I225/226 parts, which only supports copper mode.
> > > Reverting to original till the ambiguity is resolved.
> > >
> > > Fixes: 9ac3fc2f42e5 ("igc: set TP bit in 'supported' and
> > > 'advertising' fields of ethtool_link_ksettings")
> > > Signed-off-by: Prasad Koya <prasad@arista.com>
> >
> > Acked-by: Sasha Neftin <sasha.neftin@intel.com>
> >
> > > ---
> > >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 --
> > >   1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > index 93bce729be76..0e2cb00622d1 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > @@ -1708,8 +1708,6 @@ static int igc_ethtool_get_link_ksettings(struc=
t
> net_device *netdev,
> > >     /* twisted pair */
> > >     cmd->base.port =3D PORT_TP;
> > >     cmd->base.phy_address =3D hw->phy.addr;
> > > -   ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> > > -   ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>
> This looks very odd. Please can you confirm this revert really does
> make ethtool report the correct advertisement when it has been limited
> to 100Mbps. Because looking at this patch, i have no idea how this is
> going wrong.
>
>         Andrew
>

--000000000000e443e706063423f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Here is the ethtool outp=
ut before and after changing the speed with the commit 9ac3fc2f42e5ffa1e927=
dcbffb71b15fa81459e2:</div><div><br></div><div>-bash-4.2# ethtool ma1<br>Se=
ttings for ma1:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported ports: [ TP ]<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported link modes: =C2=A0 10baseT/Half 10bas=
eT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100baseT/Half 100baseT/Ful=
l<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1000baseT/Full<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 2500baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supp=
orted pause frame use: Symmetric<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports au=
to-negotiation: Yes<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported FEC modes: Not=
 reported<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised link modes: =C2=A010bas=
eT/Half 10baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100baseT/Hal=
f 100baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1000baseT/Full<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2500baseT/Full<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Advertised pause frame use: Symmetric<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Advertised auto-negotiation: Yes<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adve=
rtised FEC modes: Not reported<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: 1000Mb=
/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex: Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Auto-negotiation: on<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Port: Twisted Pair<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Tran=
sceiver: internal<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 MDI-X: off (auto)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Supports Wake-on: pumbg<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Wake-on: d<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Current message level: 0x0=
0000007 (7)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drv probe link<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes<br>-bash-4.2#<br></div>-bash-4.=
2# ethtool =C2=A0-s ma1 speed 100 duplex full autoneg on<br>-bash-4.2#<br>-=
bash-4.2# ethtool ma1<br>Settings for ma1:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 S=
upported ports: [ TP ]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported link modes:=
 =C2=A0 10baseT/Half 10baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=
00baseT/Half 100baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1000base=
T/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2500baseT/Full<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Supported pause frame use: Symmetric<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Supports auto-negotiation: Yes<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Supported FEC modes: Not reported<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertise=
d link modes: =C2=A0100baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
500baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised pause frame use: Sy=
mmetric<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised auto-negotiation: Yes<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised FEC modes: Not reported<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Speed: 100Mb/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex: =
Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-negotiation: on<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Port: Twisted Pair<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: 0<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transceiver: internal<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 MDI-X: off (auto)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports Wake-on: p=
umbg<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Wake-on: d<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Current message level: 0x00000007 (7)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0drv probe link<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes<=
br>-bash-4.2#<div><br></div><div>With the patch reverted:</div><div><br></d=
iv><div>-bash-4.2# ethtool -s ma1 speed 100 duplex full autoneg on<br>-bash=
-4.2#<br>-bash-4.2# ethtool ma1<br>Settings for ma1:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Supported ports: [ TP ]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported=
 link modes: =C2=A0 10baseT/Half 10baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 100baseT/Half 100baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1000baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2500base=
T/Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported pause frame use: Symmetric<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports auto-negotiation: Yes<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Supported FEC modes: Not reported<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Advertised link modes: =C2=A0100baseT/Full<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Advertised pause frame use: Symmetric<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Advertised auto-negotiation: Yes<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised=
 FEC modes: Not reported<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: 100Mb/s<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex: Full<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Por=
t: Twisted Pair<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: 0<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Transceiver: internal<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-neg=
otiation: on<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 MDI-X: off (auto)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Supports Wake-on: pumbg<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Wa=
ke-on: d<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Current message level: 0x00000007 (=
7)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drv probe link<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Link detected: yes<br>-bash-4.2#<br></div><div><br></div><div=
>with the patch enabled:<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</div><div><br></div><div>Default &#39;advertising&#39; f=
ield is:=C2=A00x8000000020ef=C2=A0</div><div>ie., 10Mbps_half, 10Mbps_full,=
 100Mbps_half, 100Mbps_full, 1000Mbps_full, Autoneg, TP, Pause and 2500Mbps=
_full bits set.</div><div><br></div><div>and &#39;hw-&gt;phy.autoneg_advert=
ised&#39; is 0xaf=C2=A0<br></div><div><br></div><div>During &quot;ethtool -=
s ma1 speed 100 duplex full autoneg on&quot;</div><div><br></div><div>ethto=
ol sends &#39;advertising&#39; as 0x20c8 ie., 100Mbps_full, Autoneg, TP, Pa=
use bits set which are correct.</div><div><br></div><div>However, to reset =
the link with new &#39;advertising&#39; bits, code takes this path:</div><d=
iv><br></div><div>[ =C2=A0255.073847] =C2=A0igc_setup_copper_link+0x73c/0x7=
50<br>[ =C2=A0255.073851] =C2=A0igc_setup_link+0x4a/0x170<br>[ =C2=A0255.07=
3852] =C2=A0igc_init_hw_base+0x98/0x100<br>[ =C2=A0255.073855] =C2=A0igc_re=
set+0x69/0xe0<br>[ =C2=A0255.073857] =C2=A0igc_down+0x22b/0x230<br>[ =C2=A0=
255.073859] =C2=A0igc_ethtool_set_link_ksettings+0x25f/0x270<br>[ =C2=A0255=
.073863] =C2=A0ethtool_set_link_ksettings+0xa9/0x140<br>[ =C2=A0255.073866]=
 =C2=A0dev_ethtool+0x1236/0x2570<br></div><div><br></div><div>igc_setup_cop=
per_link() calls=C2=A0igc_copper_link_autoneg().=C2=A0 igc_copper_link_auto=
neg()=C2=A0changes phy-&gt;autoneg_advertised</div><div><br></div><div>=C2=
=A0 =C2=A0 phy-&gt;autoneg_advertised &amp;=3D phy-&gt;autoneg_mask;<br></d=
iv><div><br></div><div>and autoneg_mask is=C2=A0IGC_ALL_SPEED_DUPLEX_2500 w=
hich is 0xaf:</div><div><br></div><div>/* 1Gbps and 2.5Gbps half duplex is =
not supported, nor spec-compliant. */<br>#define ADVERTISE_10_HALF =C2=A0 =
=C2=A0 =C2=A0 0x0001<br>#define ADVERTISE_10_FULL =C2=A0 =C2=A0 =C2=A0 0x00=
02<br>#define ADVERTISE_100_HALF =C2=A0 =C2=A0 =C2=A00x0004<br>#define ADVE=
RTISE_100_FULL =C2=A0 =C2=A0 =C2=A00x0008<br>#define ADVERTISE_1000_HALF =
=C2=A0 =C2=A0 0x0010 /* Not used, just FYI */<br>#define ADVERTISE_1000_FUL=
L =C2=A0 =C2=A0 0x0020<br>#define ADVERTISE_2500_HALF =C2=A0 =C2=A0 0x0040 =
/* Not used, just FYI */<br>#define ADVERTISE_2500_FULL =C2=A0 =C2=A0 0x008=
0<br><br>#define IGC_ALL_SPEED_DUPLEX_2500 ( \<br>=C2=A0 =C2=A0 ADVERTISE_1=
0_HALF | ADVERTISE_10_FULL | ADVERTISE_100_HALF | \<br>=C2=A0 =C2=A0 ADVERT=
ISE_100_FULL | ADVERTISE_1000_FULL | ADVERTISE_2500_FULL)<br></div><div><br=
></div><div>so 0x20c8 &amp; 0xaf becomes 0x88 ie., the TP bit (bit 7 of=C2=
=A0ethtool_link_mode_bit_indices) in 0x20c8 got interpreted as ADVERTISE_25=
00_FULL. so after igc_reset(),=C2=A0hw-&gt;phy.autoneg_advertised is 0x88. =
Post that, &#39;ethtool &lt;interface&gt;&#39; reports 2500Mbps can also be=
 advertised.=C2=A0</div><div><br></div><div>@@ -445,9 +451,19 @@ static s32=
 igc_copper_link_autoneg(struct igc_hw *hw)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
u16 phy_ctrl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s32 ret_val;<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Perform some bounds checking on the autoneg advertisem=
ent<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* parameter.<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0*/<br>+ =C2=A0 =C2=A0 =C2=A0 if (!(phy-&gt;autoneg_adverti=
sed &amp; ADVERTISED_2500baseX_Full))<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 phy-&gt;autoneg_advertised &amp;=3D ~ADVERTISE_2500_FULL;=
<br>+ =C2=A0 =C2=A0 =C2=A0 if ((phy-&gt;autoneg_advertised &amp; ADVERTISED=
_2500baseX_Full))<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 phy=
-&gt;autoneg_advertised |=3D ADVERTISE_2500_FULL;<br>+<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 phy-&gt;autoneg_advertised &amp;=3D phy-&gt;autoneg_mask;<br></d=
iv><div><br></div><div>I see phy-&gt;autoneg_advertised modified similarly =
in=C2=A0igc_phy_setup_autoneg() as well.</div><div><br></div><div>Above dif=
f works for:</div><div><br></div><div>ethtool -s &lt;intf&gt; speed 10/100/=
1000 duplex full autoneg on</div><div>or</div><div>ethtool -s &lt;intf&gt; =
advertise 0x3f (0x03 or 0x0f etc)=C2=A0</div><div><br></div><div>but I have=
n&#39;t tested on a 2500 Mbps link. ADVERTISE_2500_FULL is there only for i=
gc.</div><div><br></div><div>Thanks</div><div>Prasad</div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, Sep 24, 2023 at 7:51=E2=80=AFAM Andrew Lunn &lt;<a href=3D"mailto:and=
rew@lunn.ch" target=3D"_blank">andrew@lunn.ch</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Sun, Sep 24, 2023 at 10:09:=
17AM +0300, Neftin, Sasha wrote:<br>
&gt; On 22/09/2023 19:38, Prasad Koya wrote:<br>
&gt; &gt; This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.<br>
&gt; &gt; <br>
&gt; &gt; After the command &quot;ethtool -s enps0 speed 100 duplex full au=
toneg on&quot;,<br>
&gt; &gt; i.e., advertise only 100Mbps speed to the peer, &quot;ethtool enp=
s0&quot; shows<br>
&gt; &gt; advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen<=
br>
&gt; &gt; when changing the speed to 10Mbps or 1000Mbps.<br>
&gt; &gt; <br>
&gt; &gt; This applies to I225/226 parts, which only supports copper mode.<=
br>
&gt; &gt; Reverting to original till the ambiguity is resolved.<br>
&gt; &gt; <br>
&gt; &gt; Fixes: 9ac3fc2f42e5 (&quot;igc: set TP bit in &#39;supported&#39;=
 and<br>
&gt; &gt; &#39;advertising&#39; fields of ethtool_link_ksettings&quot;)<br>
&gt; &gt; Signed-off-by: Prasad Koya &lt;<a href=3D"mailto:prasad@arista.co=
m" target=3D"_blank">prasad@arista.com</a>&gt;<br>
&gt; <br>
&gt; Acked-by: Sasha Neftin &lt;<a href=3D"mailto:sasha.neftin@intel.com" t=
arget=3D"_blank">sasha.neftin@intel.com</a>&gt;<br>
&gt; <br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 --<b=
r>
&gt; &gt;=C2=A0 =C2=A01 file changed, 2 deletions(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drive=
rs/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; &gt; index 93bce729be76..0e2cb00622d1 100644<br>
&gt; &gt; --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; &gt; +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; &gt; @@ -1708,8 +1708,6 @@ static int igc_ethtool_get_link_ksettings(s=
truct net_device *netdev,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0/* twisted pair */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0cmd-&gt;base.port =3D PORT_TP;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0cmd-&gt;base.phy_address =3D hw-&gt;phy.addr;<=
br>
&gt; &gt; -=C2=A0 =C2=A0ethtool_link_ksettings_add_link_mode(cmd, supported=
, TP);<br>
&gt; &gt; -=C2=A0 =C2=A0ethtool_link_ksettings_add_link_mode(cmd, advertisi=
ng, TP);<br>
<br>
This looks very odd. Please can you confirm this revert really does<br>
make ethtool report the correct advertisement when it has been limited<br>
to 100Mbps. Because looking at this patch, i have no idea how this is<br>
going wrong.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Andrew<br>
</blockquote></div>

--000000000000e443e706063423f6--

--===============4888331503274847271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4888331503274847271==--
