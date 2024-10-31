Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C7B9B84DD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 22:03:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A71640C2F;
	Thu, 31 Oct 2024 21:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u0NJd-OVlCnh; Thu, 31 Oct 2024 21:03:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5435140BEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730408618;
	bh=PzQXq7XhxpTP+PwRlgBStzXT4waoPXFXg/qtJ44GAfA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l7p3Uw2NosGNVYLOrLT0BaWhSJ2qAg4KYpCylMgbPfzPgxxdEBeXBpE+REu9iqrPp
	 O45Vir/4g6eYpCkFyN9sb8C3p16EqVn0pNqGHtsQP8NRxTvLRONo61WLHY2FsJYGbJ
	 Cmrs2CVZqr3IVQOrftwusDRH5OsQF1hyNXERo2V0n8jSu/3/PcYBfOfBtY+0icxu2v
	 33eAv4/1NorUYzRhT6COnOgp2LbMvCV5ETbSpq4AJ8kf2E5i49qHRPlQM2NhRVPVIn
	 0kQ6uZ6itEF+44Q5C13ZPijP8ss2zsBJovQ8m22hxukhkRz/OAI6OezwUZlnEgA9/S
	 3D2NamyNoBFHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5435140BEF;
	Thu, 31 Oct 2024 21:03:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75F41494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 630A540F2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id szHme7bnuXPm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 21:03:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0608940F28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0608940F28
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0608940F28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:03:34 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-6ea339a41f1so12157237b3.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 14:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730408613; x=1731013413;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PzQXq7XhxpTP+PwRlgBStzXT4waoPXFXg/qtJ44GAfA=;
 b=e17W0Zm5rCx5CNc7hyaHhRWYSyGqZu/+lWJPHXUEWF+9slI+wwaFSSpRBG8+6mDlJw
 hegx8uKtLs9A6s720n3EwGg+oMScocsNUDyp6/XTTFphAHkWbUR9T/7ot1rh+2hin5a/
 zSXM/Wsw6jN0MQ01h/LqXWeB+Wcrrg056MzZYsLOcSmCzvo9bEX/vBoeongIntULkBnE
 7j/kij9AHmPeJ3b32tZWm2TVf6l1X1/HKYcrWC2X4n6FUuv6zGauRqZHl/8yNrkKd/AN
 QxcXQsK2/UJDOxyNtin7kms5RXxgjqsG6+0mVpAKq4QTzt758+45ZhoYLa10LZrbt/kW
 GiWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWn3sQ6+21JDMMtU+7Et81DOFkOnfYYT+zeY7AhWMt72Sc0vG2o9mRaARpA1m1MXIBxeSIRnUYwkOf19s1KoM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxFFG/5tIBNFt3FPNHEUkFmdel9tQ1jYArGbV5BF+oCgFt74dmG
 ejOm9jqUokNdtbLKSQAwynuNyUXAxjgU9EUPVO5JkO4uG33aZcXoNV80i+QUQAt85KyB6pjK5kS
 zZT0HMg54Pukl7J5EY8gmOlrBy5s=
X-Google-Smtp-Source: AGHT+IHy8DQ1HGI9zkUS8yokJKso/acy/GTv8smDz5u00ITmraTSJlnFkEub2JffNHXzVENVysSrQhtA0eFO1024aTA=
X-Received: by 2002:a05:690c:4513:b0:6ea:3075:1fb5 with SMTP id
 00721157ae682-6ea525205e0mr57010167b3.33.1730408613135; Thu, 31 Oct 2024
 14:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <20241025201713.286074-1-rosenp@gmail.com>
 <ca89f03e-6dc1-44fa-bfd1-aac95ede0cbe@intel.com>
 <CAKxU2N9hhwfdZN28kTDf3qUT8GXuxLDPFsA04jBaJSWqPRaHqQ@mail.gmail.com>
 <59f4a6e6-23ad-4f99-b168-047f1d0d801a@intel.com>
In-Reply-To: <59f4a6e6-23ad-4f99-b168-047f1d0d801a@intel.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 31 Oct 2024 14:03:22 -0700
Message-ID: <CAKxU2N9gE_OZgfmTimMUcN=-P-SMSyFfCkHCd9xLqXKGabNtyw@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, 
 "open list:XDP (eXpress Data Path):Keyword:(?:b|_)xdp(?:b|_)"
 <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730408613; x=1731013413; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PzQXq7XhxpTP+PwRlgBStzXT4waoPXFXg/qtJ44GAfA=;
 b=GrSx0V9S8DGj8eon3muIZ4bwyICGky0fEtvM1uKbwdQ47BBi0rrWWODpgd+oSGQIv4
 N03n3xX0Fh89myH0tS1yHPZFIuGu1kj43liRRzJoO1PXibxbpN9E3al4A8LSWSb357M4
 D6d4eQaAv7jonFma/7USpxiah//N8jdv0WDdO/nBmer5z8PtMhwZchwsw/Hgw7lxEIFC
 QgFRFGvJzaWqWAmyN9YE0zyiFDMLfoJeFzgmVh/u6K59YJdID0h+1yWvpZnzWBcSKh6k
 N1Gi+330OMbmi5EgNF7PzTcKme5/cq4kpJEIL5JgyQMb8WUHlojfwCwl3SSv0TnyTeDC
 D3FQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=GrSx0V9S
Subject: Re: [Intel-wired-lan] [PATCHv2 net-next iwl-next] net: intel: use
 ethtool string helpers
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

On Thu, Oct 31, 2024 at 12:46=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 10/30/24 23:52, Rosen Penev wrote:
> > On Mon, Oct 28, 2024 at 3:13=E2=80=AFAM Przemek Kitszel
> > <przemyslaw.kitszel@intel.com> wrote:
> >>
> >> On 10/25/24 22:17, Rosen Penev wrote:
> >>> The latter is the preferred way to copy ethtool strings.
> >>>
> >>> Avoids manually incrementing the pointer. Cleans up the code quite we=
ll.
> >>>
> >>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> >>> ---
> >>>    v2: add iwl-next tag. use inline int in for loops.
> >>>    .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
> >>>    drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
> >>>    .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
> >>>    .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
> >>>    drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++----=
----
> >>>    drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++-----=
---
> >>>    drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
> >>>    drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++------=
---
> >>>    .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++-------=
-
> >>
> >> for ice, igb, igc, and ixgbe the current code already uses ethtool
> >> string helpers, and in many places you are just changing variable name=
,
> >> "p" to "data", I would rather avoid that.
> > well, since I'm cleaning some of this code up, might as well get rid
> > of variables. That was suggested to me with other similar patches.
> >>
> >> sorry for not spotting that earlier, and apologies that we have so man=
y
> >> drivers to fix up in the first place
> >>
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/n=
et/ethernet/intel/ice/ice_ethtool.c
> >>> index 2924ac61300d..62a152be8180 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >>> @@ -83,7 +83,7 @@ static const char ice_gstrings_test[][ETH_GSTRING_L=
EN] =3D {
> >>>        "Link test   (on/offline)",
> >>>    };
> >>>
> >>> -#define ICE_TEST_LEN (sizeof(ice_gstrings_test) / ETH_GSTRING_LEN)
> >>> +#define ICE_TEST_LEN ARRAY_SIZE(ice_gstrings_test)
> >>>
> >>>    /* These PF_STATs might look like duplicates of some NETDEV_STATs,
> >>>     * but they aren't. This device is capable of supporting multiple
> >>> @@ -1481,48 +1481,53 @@ static void
> >>>    __ice_get_strings(struct net_device *netdev, u32 stringset, u8 *da=
ta,
> >>>                  struct ice_vsi *vsi)
> >>>    {
> >>> +     const char *str;
> >>>        unsigned int i;
> >>> -     u8 *p =3D data;
> >>>
> >>>        switch (stringset) {
> >>>        case ETH_SS_STATS:
> >>> -             for (i =3D 0; i < ICE_VSI_STATS_LEN; i++)
> >>> -                     ethtool_puts(&p, ice_gstrings_vsi_stats[i].stat=
_string);
> >>> +             for (i =3D 0; i < ICE_VSI_STATS_LEN; i++) {
> >>> +                     str =3D ice_gstrings_vsi_stats[i].stat_string;
> >>> +                     ethtool_puts(&data, str);
> >>> +             }
> >>>
> >>>                if (ice_is_port_repr_netdev(netdev))
> >>>                        return;
> >>>
> >>>                ice_for_each_alloc_txq(vsi, i) {
> >>> -                     ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> >>> -                     ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> >>> +                     ethtool_sprintf(&data, "tx_queue_%u_packets", i=
);
> >>> +                     ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> >>>                }
> >>>
> >>>                ice_for_each_alloc_rxq(vsi, i) {
> >>> -                     ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> >>> -                     ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> >>> +                     ethtool_sprintf(&data, "rx_queue_%u_packets", i=
);
> >>> +                     ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> >>>                }
> >>>
> >>>                if (vsi->type !=3D ICE_VSI_PF)
> >>>                        return;
> >>>
> >>> -             for (i =3D 0; i < ICE_PF_STATS_LEN; i++)
> >>> -                     ethtool_puts(&p, ice_gstrings_pf_stats[i].stat_=
string);
> >>> +             for (i =3D 0; i < ICE_PF_STATS_LEN; i++) {
> >>> +                     str =3D ice_gstrings_pf_stats[i].stat_string;
> >>> +                     ethtool_puts(&data, str);
> >>> +             }
> >>>
> >>>                for (i =3D 0; i < ICE_MAX_USER_PRIORITY; i++) {
> >>> -                     ethtool_sprintf(&p, "tx_priority_%u_xon.nic", i=
);
> >>> -                     ethtool_sprintf(&p, "tx_priority_%u_xoff.nic", =
i);
> >>> +                     ethtool_sprintf(&data, "tx_priority_%u_xon.nic"=
, i);
> >>> +                     ethtool_sprintf(&data, "tx_priority_%u_xoff.nic=
", i);
> >>>                }
> >>>                for (i =3D 0; i < ICE_MAX_USER_PRIORITY; i++) {
> >>> -                     ethtool_sprintf(&p, "rx_priority_%u_xon.nic", i=
);
> >>> -                     ethtool_sprintf(&p, "rx_priority_%u_xoff.nic", =
i);
> >>> +                     ethtool_sprintf(&data, "rx_priority_%u_xon.nic"=
, i);
> >>> +                     ethtool_sprintf(&data, "rx_priority_%u_xoff.nic=
", i);
> >>>                }
> >>>                break;
> >>>        case ETH_SS_TEST:
> >>> -             memcpy(data, ice_gstrings_test, ICE_TEST_LEN * ETH_GSTR=
ING_LEN);
> >>> +             for (i =3D 0; i < ICE_TEST_LEN; i++)
> >>> +                     ethtool_puts(&data, ice_gstrings_test[i]);
> >>>                break;
> >>>        case ETH_SS_PRIV_FLAGS:
> >>>                for (i =3D 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
> >>> -                     ethtool_puts(&p, ice_gstrings_priv_flags[i].nam=
e);
> >>> +                     ethtool_puts(&data, ice_gstrings_priv_flags[i].=
name);
> >>>                break;
> >>>        default:
> >>>                break;
> >>
> >> really no need to git-blame touch most of the code here>
> >
> > Actually the function should be taking a double pointer here I think
> > in case something gets called after it in the main function.
> I mean that both @p and @data are (u8 *).
> I'm fine getting rid of tmp var, and updating the originally passed
> argument is fine. But you could achieve it by just changing param name.
>
> BTW I guess it was @p to fit into 80 chars more easily ;)
Yeah I think so too.
