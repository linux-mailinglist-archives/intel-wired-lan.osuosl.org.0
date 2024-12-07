Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E52F79E7D9F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Dec 2024 01:49:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 486A4606D6;
	Sat,  7 Dec 2024 00:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L0QWTbtsUYni; Sat,  7 Dec 2024 00:49:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CBF8606BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733532562;
	bh=sWkXAS5/d4qY6CPjX+Xs+FfdLRwyQuZ1F6xa14Fxx68=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kl2Tvwy6i2zcwVj2lqdZwTwtWHgqNqJiko0EDfIYRatqgydTlEkIcnkjeTl8i5u+B
	 SLF7F39QIE1Q4vwI8NJfdi/40drJdfrNRxZQEVOoDJ70Qlp3OlHMkd15tXJCAW00Dp
	 lPiJ6F25ZoSire4aZG6GDVW2avTAVUgduS4Igpek4K4ZkuOHmw6D2yrrTD43XYOYc5
	 kD5xAIk15DUc8A0EnfnVtEIr5NZok9WPO7PSzv4Opc2XWPMZDN8FvGayqeCNQJEZi+
	 oJJ0hnMeBUTcIBOBdg48oIloggsHZa+MKb0fl1OGwxrGICF+yUkAUHsyZDVVfsj4ZQ
	 12BxbfR+aisbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CBF8606BD;
	Sat,  7 Dec 2024 00:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6AE0ECA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 00:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87FC3813AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 00:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eAbO2PoQnBdx for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Dec 2024 00:49:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 983D1813A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 983D1813A1
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 983D1813A1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 00:49:19 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-6eff5f99de4so2797367b3.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Dec 2024 16:49:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733532558; x=1734137358;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sWkXAS5/d4qY6CPjX+Xs+FfdLRwyQuZ1F6xa14Fxx68=;
 b=TgK1onYAz5FvBMPUyPbJHnZz/YDizbCUUI0218QFIBvCirM7gY68QigBR/g5CiWe/6
 /NJfzlAMesP+ntXX+wrh9+UNbqW1bdh4RwWSYHve7JQ3diKkF/FJNfDo2UNKrQNWxwGX
 k2Wb7S4xe+Ly9lagIJzcqnciFmUGKYNDYmDNxAKCOTZ8+XbcSSu8XqrA78U2T3DFJswq
 I08W8wCbJRQGklKVernDFdtr66Mj9SN3dxECPLe2J0IlRXnvZ9ONAvdjlYFSJBewMmhi
 9gZnDd0COFeN4Q7PEHhIRRrH8Rucl37UAgtF/l8cQhPWjV4oFAIS/CcQw2+2iYCYXd8g
 L/Gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0CPiGakWv67srYQC1XHIowp0OgHB9dAEGTzxYZsOhiR56RerHXt4RLiieVy5ZPa49tODNgCRlFpz/+FOB2dE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyvGDFT5xN96QsNIhC7tA/r19LyAg9vqsdIsQ1AA5SyTMVfQL2j
 0ko+dAYc0tVsDdP+yXw37u7wcurqzUIaY8RrtwaOdqKy4Hh38/yFglD/3g2qNgfZuCboseCpPrd
 tEScbACAq/e74OZJqISYzu1uEHmQ=
X-Gm-Gg: ASbGncs07xIOx4rEfLHjESGrPKLPLt3bN+etsRUbZhTddAn6p08C1XOmUIaCKPLZTUJ
 uQhNoA1QFFEmdoy4DZBwkt1g1UeWfYmNXecs0MxAq4xDJ
X-Google-Smtp-Source: AGHT+IGVAvyFGjlrwDwStyvFoYw/4H+pukPwC1OtZNc7tT/A+6Fi1IMsvs94Nqj0jVa4kd0fb+st7CZiayaSoKlv160=
X-Received: by 2002:a05:690c:74c4:b0:6ee:7339:ab42 with SMTP id
 00721157ae682-6efe3bfaefdmr60755937b3.14.1733532558306; Fri, 06 Dec 2024
 16:49:18 -0800 (PST)
MIME-Version: 1.0
References: <20241031211413.2219686-1-rosenp@gmail.com>
 <d97614cb-1798-46d2-a3b8-88fa100d9765@intel.com>
 <94ab7f28-c74b-49c5-920c-a3a881de0b86@intel.com>
In-Reply-To: <94ab7f28-c74b-49c5-920c-a3a881de0b86@intel.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 6 Dec 2024 16:49:07 -0800
Message-ID: <CAKxU2N9_HJKPB-jcaT=jqJfZ_KVUj_Y1PC_ZH=8=n+So1MdN3w@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733532558; x=1734137358; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sWkXAS5/d4qY6CPjX+Xs+FfdLRwyQuZ1F6xa14Fxx68=;
 b=Y8J23UJg1ltxRrg7nTHzQpxLpD66t9NV/fTlejqVk+6tbP9FsSb9ZImn6htCo5XCwP
 /ZO9my0dQG/QwClPzXfy3acJr+1flzW7m9WbOylmboqY0ueESS+E+U9miQfK2UNaHX36
 tIpSGvovWAK/i2XADsKoSHqoOuQ6rYg/VnArGGeqXwHzK89GEWaY4zlWSs5FP6qu0XCv
 iZWfbkadEbRLoTjBAxS9JSg3MiHiAjn9sDxPU7LBd40gMxj/WQXj4xu+RxN/ytjJtLQA
 beHq8INMKv2pBrn6z6BN5LBssyq5R8rdXXQz/IxFjzlvFgs3grT+YrYeFjAdU4oNvrDp
 cWVw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Y8J23UJg
Subject: Re: [Intel-wired-lan] [PATCHv3 net-next iwl-next] net: intel: use
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

On Wed, Dec 4, 2024 at 1:10=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 11/5/24 06:47, Przemek Kitszel wrote:
> > On 10/31/24 22:14, Rosen Penev wrote:
> >> The latter is the preferred way to copy ethtool strings.
> >>
> >> Avoids manually incrementing the pointer. Cleans up the code quite wel=
l.
> >>
> >> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> >> ---
> >>   v3: change custom get_strings to u8** to make sure pointer increment=
s
> >>   get propagated.
> >
> > I'm sorry for misleading you here, or perhaps not being clear enough.
> >
> > Let me restate: I'm fine with double pointer, but single pointer is als=
o
> > fine, no need to change if not used.
> >
> > And my biggest corncern is that you change big chunks of the code for n=
o
> > reason, please either drop those changes/those drivers, or adjust to
> > have only minimal changes.
> >
> > please fine this complain embedded in the code inline for ice, igb, igc=
,
> > and ixgbe
>
> I would be happy to accept your changes trimmed to the drivers I didn't
> complained about, I find that part a valuable contribution from you
Resent with removed variable renames. Hopefully this gets merged.
>
> PS. No need to CC XDP/BFP list/people for such changes
> [removed those]
>
> >
> >>   v2: add iwl-next tag. use inline int in for loops.
> >>   .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
> >>   drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++---
> >>   .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
> >>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
> >>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 43 +++++++++++------=
--
> >>   drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++-------
> >>   drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
> >>   drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 ++++++++--------
> >>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 +++++++-------
> >>   drivers/net/ethernet/intel/ixgbevf/ethtool.c  | 36 ++++++----------
> >>   10 files changed, 118 insertions(+), 114 deletions(-)
