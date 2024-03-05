Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EBF87173A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 08:47:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 583F84155D;
	Tue,  5 Mar 2024 07:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RITI3o8nnoT4; Tue,  5 Mar 2024 07:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2505641560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709624872;
	bh=UppqAarfwY+zIiaC2kTHlfDrH6S8pSlvdHIG4B7CkdE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Eh7KWG0ayxeARm0N25JYpNWJepwkry8GdfCnu4JNJ612doXa3Eydk+S0lp0/pGXpb
	 PHRQhtrUZNilLiKs1TNP9UJZUFY1rSqXqBg3DNgAZ4FM1hRrGMNbiRqgrQ2QdB/FhT
	 M7YIrMCgXRKsSzG8X2nyUUMahwCMRU5YiZ1J2GC4ru4ylkA+eabLTENuxTUrEXBJbn
	 n4XNczF34WS6ZlFYlHu28an+hBa0zb+slxlJDkVwER2bd4sILSg4fNf+5L1uk8qq6i
	 uOfXrHR1neV4khwXslkNUS6LBB+i7xXgPPJXyOb74zo7mFEdB4O7Wsowrx2vtw1dF/
	 Aws+nIWfmm4Hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2505641560;
	Tue,  5 Mar 2024 07:47:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27DD91BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1451140B49
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iOllFe9bqcP3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 07:47:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b34; helo=mail-yb1-xb34.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0609740137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0609740137
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0609740137
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:47:47 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id
 3f1490d57ef6-dc6d8bd612dso5464838276.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 Mar 2024 23:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709624867; x=1710229667;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UppqAarfwY+zIiaC2kTHlfDrH6S8pSlvdHIG4B7CkdE=;
 b=MRbRcN6OE46mlg2d7PrOHYOyUsuE7AyswS+mw7FXAHzxbEI7b7dzIU5+4mjKD6xKxx
 qTtaBPQLT1GQCxkCe5tAeP/snTsEmRmm6Ckum1cDSoTiwVpV64RfDmj1KxKkTjXod8KY
 ckZEvqJq3M9/YCfMyGeUbXp9UgA15b6arEa0TgFRMh2lk3EQIFyPZOIePSdPgxjYJWWL
 1rhEeY3+ItYCT2/PIW1kXcAofO3A/8tIGNtYFbymgtT9VdqGqClbNhoGB2qKdQGXZEYa
 HU3Rx3u/AK0gi7BsbQbHa+JjEIl7PCrgvm2E0VYZcVEoKaO4GP2VoPrKTpKDGbm1Sooz
 L0Cw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXl6dnEgyMmtIoQum/A+uZCMyeon0zELsQRVbT2v0i2H+ADNZQIOANXs4iogCiHs8AqxRDAXxNLnnhp7AswBVmfgcywCaukqrBteG4BnvsImw==
X-Gm-Message-State: AOJu0YwAiPPa8RT9GGgDex1OrucRwmufqrrV2fk4DXDH/2QLZaFJj2iX
 kxDYp0E24h3PdsK5fj75gJ4+ixmwtdDTFIXjMtXb7XYbz7s2cWcQgYYV2/cZoMsM5hrvWJjE2io
 AJbZKvCN9TD2wKnqhFegUdWWKEqQ=
X-Google-Smtp-Source: AGHT+IHfZSuQQsq0Y6qpFsVyqy6sZNeaHlt0da7iEaRL5PP45J0iq/yS5BKZvfCWvC85In5QPT2Hm95+UNnJE//HDXM=
X-Received: by 2002:a25:4a06:0:b0:dcf:2b44:f38d with SMTP id
 x6-20020a254a06000000b00dcf2b44f38dmr9182681yba.49.1709624866673; Mon, 04 Mar
 2024 23:47:46 -0800 (PST)
MIME-Version: 1.0
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CYYPR11MB8429FCD568EE2AF90AEE2CABBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
 <CADFiAc++edOb7-O6yCUgpAaonZ1sQdkrwwH8432D=e40g1CwoQ@mail.gmail.com>
 <CYYPR11MB84290126F884C2AB4F9AA5FBBD222@CYYPR11MB8429.namprd11.prod.outlook.com>
In-Reply-To: <CYYPR11MB84290126F884C2AB4F9AA5FBBD222@CYYPR11MB8429.namprd11.prod.outlook.com>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Tue, 5 Mar 2024 16:47:35 +0900
Message-ID: <CADFiAcJtJWMqeiVRLyZQivYw2J5EBeMVjP+qeJfS9YeWokdX+Q@mail.gmail.com>
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709624867; x=1710229667; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UppqAarfwY+zIiaC2kTHlfDrH6S8pSlvdHIG4B7CkdE=;
 b=mf4cGVcrHSk2AsNLpeV0G4YW88SeQN4cIEqa4mq9/Q2XW4hQhIDk0RELxOLGFg8K5g
 f50o/ssynfEzyaLItstV7ucoAb63Mixje+zBz9MoV0DXJvjh1zQVq4nECoOMh6D6b8Ay
 dIqQoM7CtgKRTCrcjv92BnOfSAkwctLxKeZAqClcAgo3TCRRByRcn53vIUb4jLVRiLng
 MKrspseT+Fa4HuRylajyeifBEQOaLZvsPDI30LbmJTh8PPLAMJe33X57/mCPj6F9+6be
 ey7NZQa/0tSJg9hVlaOqo+K6WwIrrL13HaA+j1cgMZA3VLpu5rEprnRicGFGUPKJxkmJ
 Bwpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=mf4cGVcr
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "mailhol.vincent@wanadoo.fr" <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Himasekhar Reddy-san

> After added the above v4 patch able to to see tab completion for flow-typ=
e but not rx-flow-hash. Please find below logs.

Sorry. I submitted a code with the conditions reversed. I have
resubmitted it, so could you please check it again?
https://lore.kernel.org/all/20240305074350.533622-1-hayatake396@gmail.com/

Takeru

2024=E5=B9=B43=E6=9C=885=E6=97=A5(=E7=81=AB) 13:28 Pucha, HimasekharX Reddy=
 <himasekharx.reddy.pucha@intel.com>:
>
> >-----Original Message-----
> > From: Takeru Hayasaka <hayatake396@gmail.com>
> > Sent: Tuesday, March 5, 2024 9:12 AM
> > To: Pucha, HimasekharX Reddy <himasekharx.reddy.pucha@intel.com>
> > Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <=
anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Du=
mazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni =
<pabeni@redhat.com>; Jonathan Corbet <corbet@lwn.net>; linux-doc@vger.kerne=
l.org; vladimir.oltean@nxp.com; linux-kernel@vger.kernel.org; laforge@gnumo=
nks.org; Marcin Szycik <marcin.szycik@linux.intel.com>; intel-wired-lan@lis=
ts.osuosl.org; netdev@vger.kernel.org; mailhol.vincent@wanadoo.fr
> > Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP=
 RSS hash options to ethtool.h
> >
> > Hi Himasekhar Reddy-san
> >
> > > Functionality wise its working fine. But the ethtool part (tab comple=
te doesn't show GTP)
> >
> > I forgot to add the tab completion feature! Thank you for the good
> > points. I've added it again in this version's patch.
> > https://lore.kernel.org/all/20240305033555.524741-1-hayatake396@gmail.c=
om/
> >
> > Takeru
> >
>
> After added the above v4 patch able to to see tab completion for flow-typ=
e but not rx-flow-hash. Please find below logs.
>
> # ethtool -N eth4 rx-flow-hash
> ah4    ah6    esp4   esp6   ether  sctp4  sctp6  tcp4   tcp6   udp4   udp=
6
> # ethtool -N eth4 rx-flow-hash
> ah4    ah6    esp4   esp6   ether  sctp4  sctp6  tcp4   tcp6   udp4   udp=
6
> # ethtool -N eth4 flow-type
> ah4     esp4    ether   gtpc4t  gtpc6t  gtpu4d  gtpu4u  gtpu6d  gtpu6u  i=
p6     sctp6   tcp6    udp6
> ah6     esp6    gtpc4   gtpc6   gtpu4   gtpu4e  gtpu6   gtpu6e  ip4     s=
ctp4   tcp4    udp4
>
