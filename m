Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6189E9B112B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEDDF60BE8;
	Fri, 25 Oct 2024 21:02:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QLZVE8D15CWC; Fri, 25 Oct 2024 21:02:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E872560BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890123;
	bh=SXyMgVJ8SMoPT6DVm8ucQxYlv2RUv92E4LD4kUVHd0k=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a7JMS2AQYZt04K2AO8TEHnPVwGnSb3CCQsOcZhh+gjsk3XTHAeVWvHd3Aoo738WDL
	 cWvmuZ1sK6gXupyHGRhi0HnnjBe3Im9Y9KCjQP+ymYZbxtvo1trC2PanyaQTQ6IuRz
	 oCOMfBRLTF29b0XkpvOlBa+KryDim84IGrvM6gMvdJJJfllotRICWEnOOnx4U1iuf0
	 oJxuWCkMCzd1vhcpgA2dmp/ODtZj9+bPa4JI0nfkYVqaNqG9Wycj3IKDsrYoy53J2B
	 saHz75vpI/bpYxSOIhtSGLeULA1hhJWjKqvoKfgGdKagPd9H8wE+tJIB6Yn3bukVmr
	 zzu3GOlcAKD5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E872560BF8;
	Fri, 25 Oct 2024 21:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F4DE5C1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6122480D7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KnvrJ13x0u1x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 20:20:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1134; helo=mail-yw1-x1134.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 817B680D75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 817B680D75
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com
 [IPv6:2607:f8b0:4864:20::1134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 817B680D75
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:20:07 +0000 (UTC)
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-6e38fc62b9fso23145787b3.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 13:20:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729887606; x=1730492406;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SXyMgVJ8SMoPT6DVm8ucQxYlv2RUv92E4LD4kUVHd0k=;
 b=YBxa1g2OHyqJekLJ3YHy11cLyR8econaL87iB9zwtVNGtCr/QxX5g1mZ3VnUEhVJ16
 F+2Ryi+ltI/aDxNoYsc2+ASnbdj0I0kP1CPQKnK95ZzDcdt+PlbKJ1OWLOvmYxk/CMEF
 fn2F9gHBJTHoW56VB4SyJhdztHGk1mFv8Q3SfKhF3SzBZ3zq44sEC4iF2L38bH2cMA1w
 oGlZCKEsCD5rchGWn4h+oiwepThFYbbZZaMKlk5uppvPVveBn98UrN/OjpsvBDpNQ6z0
 TybwgTx7Lw5jgcCpj0rb47CA9RqF5aaYOuOojx7TMOsFQAnkcOwqsP5cCmqaHQFHQbob
 kN4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXd0xwk/DfT2HQaew7LZP7IhkdWo4rFeDYqd9514ijviLr+VGxx2dW74ftZNQC4ODxm7Xxt7pz0J1NrGZlXPao=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxAXz164I2IDfMTE36NOfqdqtZoA5nuuvRcwS/dEMZZHShmBBIE
 rTtcC8nSYIZWjRNzFf550ILiyMh9vhtEys0J6FM/BIQAEJ9Xn4nSOH8T07rCFzWvskn3+rvygLH
 lyqkbdMn4Wx5WurjwILJNIZurzcg=
X-Google-Smtp-Source: AGHT+IGgiZYXtL3ricAvXQWhc+ZCKVLRQRJgfz0rnJTfYaOfNAHNm7L+BtWFsi1GYEBC7DJW0AhKJQ1P3kF/zVyi/Eo=
X-Received: by 2002:a05:690c:2c01:b0:6e2:7dd:af61 with SMTP id
 00721157ae682-6e9d89768c1mr9213617b3.17.1729887606276; Fri, 25 Oct 2024
 13:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20241024195647.176614-1-rosenp@gmail.com>
 <1c9afb23-fcf8-4401-af06-4a0b2dcbb135@intel.com>
In-Reply-To: <1c9afb23-fcf8-4401-af06-4a0b2dcbb135@intel.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 25 Oct 2024 13:19:55 -0700
Message-ID: <CAKxU2N9XKEsr+c-Kwi+T08DqN8jt8Gdf0tH8Fy2M0Nb4fCjddA@mail.gmail.com>
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
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729887606; x=1730492406; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SXyMgVJ8SMoPT6DVm8ucQxYlv2RUv92E4LD4kUVHd0k=;
 b=Ax3aVMgqPvttyta9G+ES6U2BXG4kg6Mk7Jk6hO5uuaFjQRivvJ/k1hXlHQAFJOvru2
 FXpHsT1g+nVnBZPzeLCSeniktWwhC+YndxWf8OuZcGTrY7qhs/Fuxs09UhjXdYFItUdg
 6ofYgOpH81elCApEXMCFsNyekw2J10RQBG8UECNZ4BXYCedNUvcQKeVNTll60ZQPgwIp
 5BQ2nCemGYpXna71zl8EDkIGR9rKTX33wzb4z0SqPXS1kh9/79EHOna9ylR9yjKt5iQj
 RfBJrx7utOY5yw+NhmBpcMYOK01/BA5iyd3R1gXM43DkPOumQyl2+d9b9IyvDjg0lyJp
 2QyQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ax3aVMgq
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: intel: use ethtool
 string helpers
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

On Thu, Oct 24, 2024 at 9:06=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 10/24/24 21:56, Rosen Penev wrote:
> > The latter is the preferred way to copy ethtool strings.
> >
> > Avoids manually incrementing the pointer. Cleans up the code quite well=
.
>
> Indeed, thanks a lot!
>
> Could you please tag next version as [iwl-next], so it will be easier to
> via Tony's tree first?
message awaits moderator approval.
>
> Codewise it's good, just one nitpick from me.
>
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >   .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
> >   drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
> >   .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 12 +++---
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  8 ++--
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++-------=
-
> >   drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++--------
> >   drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++---------
> >   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++--------
> >   drivers/net/ethernet/intel/ixgbevf/ethtool.c  | 36 +++++++-----------
> >   10 files changed, 119 insertions(+), 111 deletions(-)
> >
>
> [..]
>
> > --- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> > +++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> > @@ -122,7 +122,7 @@ static const char fm10k_gstrings_test[][ETH_GSTRING=
_LEN] =3D {
> >       "Mailbox test (on/offline)"
> >   };
> >
> > -#define FM10K_TEST_LEN (sizeof(fm10k_gstrings_test) / ETH_GSTRING_LEN)
> > +#define FM10K_TEST_LEN ARRAY_SIZE(fm10k_gstrings_test)
>
> this line is not strictly related to the stated goal of the commit,
> fine anyway for me
I use grep ETH_GSTRING_LEN to find opportunities for these changes,
hence why I changed.
>
> >
> >   enum fm10k_self_test_types {
> >       FM10K_TEST_MBX,
> > @@ -180,17 +180,19 @@ static void fm10k_get_stat_strings(struct net_dev=
ice *dev, u8 *data)
> >   static void fm10k_get_strings(struct net_device *dev,
> >                             u32 stringset, u8 *data)
> >   {
> > +     int i;
> > +
> >       switch (stringset) {
> >       case ETH_SS_TEST:
> > -             memcpy(data, fm10k_gstrings_test,
> > -                    FM10K_TEST_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < FM10K_TEST_LEN; i++)
>
> for new code we put the iterator declaration into the loop, do:
>                 for (int i =3D 0; ...
>
> ditto other places/drivers
I changed the places where I had + int i;

I kept every other place as is.
>
> > +                     ethtool_puts(&data, fm10k_gstrings_test[i]);
> >               break;
> >       case ETH_SS_STATS:
> >               fm10k_get_stat_strings(dev, data);
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> > -             memcpy(data, fm10k_prv_flags,
> > -                    FM10K_PRV_FLAG_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < FM10K_PRV_FLAG_LEN; i++)
> > +                     ethtool_puts(&data, fm10k_prv_flags[i]);
> >               break;
> >       }
> >   }
>
