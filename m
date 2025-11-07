Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48175C3EBE4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 08:27:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA18F84749;
	Fri,  7 Nov 2025 07:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uiocTvas-2Cy; Fri,  7 Nov 2025 07:27:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 465678474C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762500450;
	bh=Pm6klTaX1rSZ57/FJIJfQv26XKgYx42g4E8YZTbf4DA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PFkPnXryxE7eJ7gg/LTWakhxtJG5xpULz8yUqXl3VNHur60nHiT9Ft2tSoG1Wh0Bi
	 xnmAvI+ZYWPSJRJ1LJTi2S65I7tVUs2clmYt/EUwLG25lbaX7bCQb/cjEDC/2G3f1n
	 VT+vPKSzV/DHfRDGgU4Hn8j86+Wkl7kRJKpnCgWDyEQisn+UbRoQlf4blw9k7cP1W0
	 nNmEn3nBBNnIyMHXHYcUeShBJ89Y6Zk7o3UXWnLZqkGZ/EyDbCWdMOwDlVDuths7xO
	 qSi78rYVXjeYWbNKZT/b7M1XGr04hxZ6ggDgxwd2KnE9UV02RMHT+zJchoWqZiTvwm
	 1r73jodGc0GMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 465678474C;
	Fri,  7 Nov 2025 07:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BEA4B961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 07:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0BA8404AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 07:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LQH2VrrGoSa4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 07:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1682140473
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1682140473
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1682140473
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 07:27:27 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-34101107cc8so382251a91.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 23:27:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762500447; x=1763105247;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pm6klTaX1rSZ57/FJIJfQv26XKgYx42g4E8YZTbf4DA=;
 b=PQmdsAi3kUoBR2oyIwUMFR2JP3kc3rf/LaA3Z3nWR7T2t8rtDF07lzctZWS5WfG5jN
 PAi3OTe6VkRITmQ3WHRfPlGB7tf0Gpt7koa2sqYej4eerjLbX8mbdwywrQOcwVmqDHUB
 l9ZcL3/y+Ncey0Zvma0OXK1RziPU1hYFjIf20u9/5ZztliyVE1UT0ySXnjBfTGcDz8eG
 sLidgfMLnIx0CFUzBfgnrVasYMa893U9uVwYo0GSmykfFvpnEK00xDPBawt80/rHc8fL
 DSDhFzsfZpZrWHVH5aXQmRZ3ifC8rPB5jJRpL2pg9t95XipB+k6YL5uqsqjT8s7eYGfk
 aChA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMJSdlATcYIJz0zWp/+WIg3Gk5bGHaodWNIvK1ToQD3wM8vVsR0KrCU7jM7/UthzHDNjq3x+4no7+misbfOCo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxyhsTvTLyY+XkoMfDFWMZuJORlv6CVSLtCZGaGTlk1IIYq1XsL
 laikWBXmtMPvzkKbH9aoG/YpWgD/G+E/bZoxtA72f89H0tYBFv0zgtBM
X-Gm-Gg: ASbGncsNumvcyIXONY+kw10E2J+D3WjJStOMPqajBUFPd3oq+AnQGKKKHWKo9RFpyXY
 pDFAnsoDkvONtRyZOKwFWA3FuL/gq5E4rc8E4Gb1O59+ICu1O7GqOfFrMrLqeSmAASQ43CtTUaO
 /ohDbtpMujV6nlp+8izBmWdogBYUxZIG7nbvOxs/CyvPIprN5kJoYaUFEGuIDAWisnkmd1J3Wmv
 buCtKh0Li5mhi8gGld3oMzOgo5CvOu9GC0CFlPh7Tl3HU0CTCJoCTtYGaJhqOOSzuAEnYm9mQa/
 aj6mpMdhmdavVfAYDkFCAl3ldYmYTP7yWN/+gKzRUQi+1Fg7P901Av7Ft68dpLmj5zVVnCkaAFr
 2gFfyVqG0Qvlef9Yg2RqWlc6iOdsTs+hL5HsO094sIASa41jkMrrowdO5l372gC+DcXyxdu8I3u
 lHQO00PkQr2g3dfeF4qQNdm/b4UsD2NjqxSbL9g6wmH3uceBgi+7ONOoPxFqgzP7nG4MkDow==
X-Google-Smtp-Source: AGHT+IFO8f3zSjdykqf1Kr0gxE3ErDzCv2okjONO6xVq4LBpyclJaVAQQcXbM33ML2tW+E89S1xQpQ==
X-Received: by 2002:a17:90b:2b43:b0:340:d1a1:af6d with SMTP id
 98e67ed59e1d1-3434c59666cmr2511464a91.36.1762500447252; 
 Thu, 06 Nov 2025 23:27:27 -0800 (PST)
Received: from ?IPv6:2401:4900:88f4:f6c4:d67f:d090:f2ee:1569?
 ([2401:4900:88f4:f6c4:d67f:d090:f2ee:1569])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-341d13a6031sm2386518a91.6.2025.11.06.23.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 23:27:26 -0800 (PST)
Message-ID: <cb130473feb7b02a85c210df192fc6482ff4fa35.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn	
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet	 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni	 <pabeni@redhat.com>, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang
 Zhang	 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui	
 <decui@microsoft.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org, Dan Carpenter	
 <dan.carpenter@linaro.org>
Date: Fri, 07 Nov 2025 12:57:18 +0530
In-Reply-To: <afa219b7-9ce3-4da8-a339-8f363d77824e@intel.com>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
 <00748f83a8ae688b7063f36844e38073d29b5e19.camel@gmail.com>
 <afa219b7-9ce3-4da8-a339-8f363d77824e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762500447; x=1763105247; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Pm6klTaX1rSZ57/FJIJfQv26XKgYx42g4E8YZTbf4DA=;
 b=Qm1m0hgwXDeLA4RaHvMWKfNqjjuJbwZ9bHuBQotOR0AVLiV6ZUCgQUYVg3TIFy4M79
 yxPRz3ET2rfCb54fLtNlBNRWL0HqbXWfhS42OiqIzN+GXAsTsj1FK8sgR8sb2bDf6OHK
 bs+ANUJI1K0QksLRC41Tc30o7NznUFbQI008ZnXtUj79yIJH/1/ldjU+HcxKcd3lt166
 ucS0qRrAVE1zjXhaIx5PUj1QznSp/IqZ7ckE1pp7JbXKNZSeU7gtC1+gBTX2/eI8ftwY
 TJwlthJEFNUVPsHAF8nErrG1LHBMN8qu5kewGVyUCT+Jjlt7VP2BcPZ9dtFTpO0vOSmZ
 Lonw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Qm1m0hgw
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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

On Fri, 2025-11-07 at 06:39 +0100, Przemek Kitszel wrote:
> On 11/6/25 17:05, ally heev wrote:
> > On Thu, 2025-11-06 at 15:07 +0100, Alexander Lobakin wrote:
> > [..]
> > > >=20
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/ne=
t/ethernet/intel/ice/ice_flow.c
> > > > index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b38=
09d715e40bb290e40c4aa 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > > > @@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw,=
 u16 dest_vsi, u16 fdir_vsi,
> > > >   			 struct ice_parser_profile *prof, enum ice_block blk)
> > > >   {
> > > >   	u64 id =3D find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > > > -	struct ice_flow_prof_params *params __free(kfree);
> > > >   	u8 fv_words =3D hw->blk[blk].es.fvw;
> > > >   	int status;
> > > >   	int i, idx;
> > > >  =20
> > > > -	params =3D kzalloc(sizeof(*params), GFP_KERNEL);
> > > > +	struct ice_flow_prof_params *params __free(kfree) =3D
> > > > +		kzalloc(sizeof(*params), GFP_KERNEL);
> > >=20
> > > Please don't do it that way. It's not C++ with RAII and
> > > declare-where-you-use.
> > > Just leave the variable declarations where they are, but initialize t=
hem
> > > with `=3D NULL`.
>=20
> +1
>=20
> > >=20
> > > Variable declarations must be in one block and sorted from the longes=
t
> > > to the shortest.
> > >=20
> > > But most important, I'm not even sure how you could trigger an
> > > "undefined behaviour" here. Both here and below the variable tagged w=
ith
> > > `__free` is initialized right after the declaration block, before any
> > > return. So how to trigger an UB here?
> >=20
> > It doesn't occur here. But, many maintainers/developers consider it a
> > bad practice because if the function returns before initialization or
> > use of `goto` can cause such behaviors.
>=20
> we were bitten by that already, scenario is as follow:
> 0. have a good code w/o UB and w/o redundant =3D NULL
> 1. add some early return, say:
> 	if (dest_vsi =3D=3D fdir_vsi)
> 		return -EINVAL;
> 2. almost granted that person adding 1. will forget to add =3D NULL to al=
l
> declarations marked __free
>=20
> >=20
> > Here though, the definitions are still at the top right? Maybe I could
> > just sort them
>=20
> we discourage putting any operations, including allocations, that may
> fail into the declarations block
>=20

Makes sense. I will just initialize them with NULL then
