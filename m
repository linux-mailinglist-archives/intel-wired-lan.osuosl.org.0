Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 028E48B3EA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 19:55:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 782F8834BA;
	Fri, 26 Apr 2024 17:55:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_3dKKCETpKo; Fri, 26 Apr 2024 17:55:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E3D58354B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714154111;
	bh=r8c3fp45OFJMal76GyuAg1MWr//D/Pxstvhd99L3qf4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XFF3SFyGVcsU/wLDoxCtbONhafNi0F3mZe4Vl0oGkDljO7Gs0X6AgTZ7I2Dmi1n0u
	 7Odzy3eLmGsXZgcvM+TMgxvl/7Tj4CgENIAmr+u0CamyR2BiTTn1MuQ6uQW6WUx13V
	 ZF0MBPnNFbQlABCk05GjsHIE6CdaxU1+WjuZw7BdCUW8DKzJKml1yedzObmV6aJpAk
	 DGv8194+21nfFX5jff8+KFk28BmUPPDJu+g9iEv9cOLgYSgaemyOsUxnVpRu/gK+l+
	 oG3xHn1pFXLhWPjsdid/CQddfUBYt1xmpnzmy3lMm9saxKk8g8j58uut0wOCTLTaOC
	 9Cl6whxZvGAAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E3D58354B;
	Fri, 26 Apr 2024 17:55:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21D421BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1616440385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PeO55at_6UZ6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 17:55:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::530; helo=mail-ed1-x530.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0A2D4011C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0A2D4011C
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0A2D4011C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:55:08 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-571b5fba660so1086a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 10:55:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714154107; x=1714758907;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r8c3fp45OFJMal76GyuAg1MWr//D/Pxstvhd99L3qf4=;
 b=wakGv53bX8S00qMpK0lYbgUom9J4Ilz4eH5Hw0CkmHICnUcww7Setu0Q2Uh09MC6QJ
 HvesAV0NqZhf8EDMqlx2Qqu+gooKNCm0g35fYZB/7sfzmJBRBi5hnoeJJ7m6TRQGmxCS
 VA28qAVH3vu4NnYG+ha6F62LuBzOrEFzgKFJ6wv8o+OVNjieHANPPX9Z47inXAQkxuiK
 AqMQteBKECkmSnnVGj49rYKmL1omvjJmrv+Jq0wbXJiDRzAcDb7xCb0ZP5pPom0TqOWF
 NJDOaiyXcGxCs4SplPqjamKiNVVDfsTy6BNtg9iC9+t9A+3jdb/gNQjALNihyzF7qnX9
 XMmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWpT5pvJ1l7oP9A/8ixUfauFZI+xkiQyVwyf21hLO4nC6Za754lD23DycMKueaFdTOzdU/7iR9PG3kXsWMNxUKQzGpR6CmCpM7m6qjrE4iilA==
X-Gm-Message-State: AOJu0YyiwRX/K5hFbaJKOJ7Xk4aKvWi+wQUVuZahVIORKrQwgydsX7NN
 hXKeeDBXEBj+JgBxD9WqLV4aPFpgBuFCBeVmB5coLOsQRmDlsNQQfxkgboCvtCi/18737CVWjYP
 WNf8mdBcPBHjOmg0hpEjjAJhZBUb2T3VIvCqM
X-Google-Smtp-Source: AGHT+IGNneXmQFDgqQc9JoRJ7D4mFnW6fLkrjLGyh1mdJTz9eclJLKxSl2hXpj0qG+wm1H4YOnpVMdvcBQl67A2FHxE=
X-Received: by 2002:aa7:c6c9:0:b0:572:fae:7f96 with SMTP id
 b9-20020aa7c6c9000000b005720fae7f96mr3051eds.6.1714154106362; Fri, 26 Apr
 2024 10:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240423134731.918157-1-vinschen@redhat.com>
 <CANn89iKv1J3AS3rEmEhFq5McHmM+L=32pWg3Wj4_drsdKUx77A@mail.gmail.com>
 <Ziu6k5cjXsaUpAYH@calimero.vinschen.de>
In-Reply-To: <Ziu6k5cjXsaUpAYH@calimero.vinschen.de>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 26 Apr 2024 19:54:52 +0200
Message-ID: <CANn89iJ_eM2oK5ruGu1NMk0ZEivEQO=R64E9eb9ujYj+=qWiKA@mail.gmail.com>
To: Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 Nikolay Aleksandrov <razor@blackwall.org>,
 Jason Xing <kerneljasonxing@gmail.com>, 
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>, 
 "David S . Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1714154107; x=1714758907; darn=lists.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=r8c3fp45OFJMal76GyuAg1MWr//D/Pxstvhd99L3qf4=;
 b=RhYBmUSgBSMIb6JAfp3qbSQVx3p72ZuUz494LcOugY56iFDr3T8sRh4NYWJJCGx7Fz
 TVUT4ZH7Ms88nX1N9c03yBRsa2MHHw2dNAhUZxcGzyFdyLnG1fk8ZcyIzEZG5qv0IYUV
 NrPIYhQMqDXqCZ4UpQL4SZqD+A6TOXFHGAROR+cmnKtpYzwJyQkg0B4TaDVbrUGovIrA
 K9m8F9fwbSoJySROTTvh9pmHQw/q7vRCtD/KeoPKH8bGg68JlIlyizurhOKjRv6HN8OQ
 gMwW4iRa/oeSACvV3an5/Bw53mEPCYe7R9sorJlgGTtG8RSwe0Q2UKy185wUMxCGUZHu
 c+Zw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=RhYBmUSg
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: cope with large
 MAX_SKB_FRAGS
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 26, 2024 at 4:30=E2=80=AFPM Corinna Vinschen <vinschen@redhat.c=
om> wrote:
>
> Hi Eric,
>
> On Apr 23 16:10, Eric Dumazet wrote:
> > On Tue, Apr 23, 2024 at 3:47=E2=80=AFPM Corinna Vinschen <vinschen@redh=
at.com> wrote:
> > >
> > > From: Paolo Abeni <pabeni@redhat.com>
> > >
> > > Sabrina reports that the igb driver does not cope well with large
> > > MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> > > corruption on TX.
> > >
> > > An easy reproducer is to run ssh to connect to the machine.  With
> > > MAX_SKB_FRAGS=3D17 it works, with MAX_SKB_FRAGS=3D45 it fails.
> > >
> > > The root cause of the issue is that the driver does not take into
> > > account properly the (possibly large) shared info size when selecting
> > > the ring layout, and will try to fit two packets inside the same 4K
> > > page even when the 1st fraglist will trump over the 2nd head.
> > >
> > > Address the issue forcing the driver to fit a single packet per page,
> > > leaving there enough room to store the (currently) largest possible
> > > skb_shared_info.
> > >
> > > Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB=
_FRAG")
> > > Reported-by: Jan Tluka <jtluka@redhat.com>
> > > Reported-by: Jirka Hladky <jhladky@redhat.com>
> > > Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> > > Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> > > Tested-by: Corinna Vinschen <vinschen@redhat.com>
> > > Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> > > ---
> > > v2: fix subject, add a simple reproducer
> > >
> > >  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/=
ethernet/intel/igb/igb_main.c
> > > index a3f100769e39..22fb2c322bca 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_ad=
apter *adapter,
> > >
> > >  #if (PAGE_SIZE < 8192)
> > >         if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> > > +           SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2)=
 ||
> >
> > I wonder if adding IGB_SKB_PAD would be needed ?
> >
> > adapter->max_frame_size does not seem to include it.
> >
> > I would try using all mtus between 1200 and 1280 to make sure this work=
s.
>
> Erm... did you mean between 1500 and 1580 by any chance?  1200 doesn't
> really seem to make sense...

No, I meant 1200 to 1280 .  IPv4 should accept these MTU .

1200 + 768 =3D 1968
1280 + 768 =3D 2048 (2 KB)

I am worried of some padding that would cross 2048 bytes boundary,
while SKB_HEAD_ALIGN(adapter->max_frame_size) could still be < 2048


>
> I tested this patch now with mtu 1500, 1540 and 1580 successfully.
>
> Either way, I'm just heading into vacation, so I guess I'll pick this up
> again when I'm back, unless Paolo takes another look during my absence.
>

I guess your patch is better than nothing, this can be refined if
necessary later.
