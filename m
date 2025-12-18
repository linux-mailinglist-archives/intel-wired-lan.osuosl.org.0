Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9997CC9ED7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 01:52:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5156583CD7;
	Thu, 18 Dec 2025 00:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M5taBtiu9beR; Thu, 18 Dec 2025 00:52:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B97DD83C93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766019157;
	bh=du0kCtfi5QhpLe9dk7Ff2CQwdsFdE0qZL7AISkx1KXk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=fjjZvCMd/3HTmSyTui89gKZ6906QRISNKALRbHCmx0uipgIt94Dw0pwL30OgQyNRJ
	 o7DqGDPMOIG5McD8eFPQIKMNdUe+COsue+mlxxBXk4OT0e/EFg0ioaI8Y8dbt3LCb+
	 VnCLcOEVnPiR8e2kviU7ySNDwtuhBq5DR4gr/hMxLOF2vGHqWxu6mjkuHVztXyFBIY
	 sGPp8xTVgT9fPFvdqwslCKyWaLW3tg57tmgyoL7NIChX67NE6zpJ4GdZaZx9lIFkSm
	 6uSUrrWuBEPjjt4f+nsnbPpvpl88yYWRpfxqQO6BvcEKRpRJxl//9XTz6NyHkxm9hg
	 27oczIHWKkoYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B97DD83C93;
	Thu, 18 Dec 2025 00:52:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2AA9361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 921E940A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O8waWh7wCx10 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 00:52:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8046240A66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8046240A66
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8046240A66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:52:35 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-5942f46ad87so2888e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 16:52:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1766019153; cv=none;
 d=google.com; s=arc-20240605;
 b=FSeEQyv0k49EgddnYJKPV0I53E5musAx+wRxrUORqEjR0hc2goIqvHlf4sI/UtIgUi
 T6G1l1eWoDaW78yGZHgGduNAEJ3iCtgF38p5ugo18IG9iIbfu0E8Oq8m88AQPXiVy+ki
 /l9sCGN3N0cxQCuALh0jOCRbggxiwWNofBqad5FXiHT/tH24Gicx0WOkoTMKgvP36gC8
 Zcm43PPMAaKIxb5HfHTFix8s7yqQYjdN8d8VaDA3t6kXQAjejPBzSxi7Uo8A/nsJ57hW
 MyNC3dl00EiXmC/PgAxAH2VC7xlcjZ18DWheMugiKE1n19Z/P/ZkuF7PeL/ul+j2FLbf
 yiew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=du0kCtfi5QhpLe9dk7Ff2CQwdsFdE0qZL7AISkx1KXk=;
 fh=eiERpIZq4NTkjsr9oRXALpGIVCsOSJGNSUuSN24iMUY=;
 b=OdzC7x4hba4M68+hpa02lvYU9PyaZo+uJToDInOJXjRHdHHs1ndaEoKyKJvV57vwy8
 VfyBITY5VKorRmhzNygo/2nGDgUCii+wuQ9/mB98cHfm5lPJeH63YPiCGXCIM2JSBNcc
 vBuKmWlRsItK/7iK9mICZ19hTghHC58Ro2tSZ+rS6uEswfRiRI5/ORe/svH5tR+TMpp4
 VahwYYZf0kfuW/UORfKIVJiy9+nxW4XqN0zhlTVQ9QQYwINRG/E4ycCmGlaaX+62xhh6
 H9cVtwYS92EY5/ToKDrQ8G7p66/2JLxvKKazRChy+lvt2p3GGRiDdCDyr87LiqAInxYb
 410Q==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766019153; x=1766623953;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=du0kCtfi5QhpLe9dk7Ff2CQwdsFdE0qZL7AISkx1KXk=;
 b=SkfpoTFBB/oUsv6oER62ymV6k22GCR5scAC9K709q9iHwgUQDr96m/Mz1/sxerSJAP
 G4fAmCyJixDPGw3avdVIigHN2xopcg0/VqV0Uf7GfQdLg8AHl6RLnOYE4MTYvasaF/ec
 6ylRcm3ygF2a8ogedNkZU5OuNffCFYD9jpi96riIFXynSdvOBfHPGRNq6TLITWS/GVfP
 HCyxjXKF26UYtc97zUtNn/PsrMNBqBZz8rAsWcYZSh+GJ/sIGS+Irg3UMxZ4IJlb8QGu
 +vHEstRjmfA0P5+eHFwGYJ8ceF/7qSrBHvobL2+y3Nqkpbnznka7nZzKUMOqj4qgVg+U
 20bA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmtrg4OCynwwWBNlUOYgzrasdyZ1/BgY8/0hySHrTs/LuIfScfrxCDkZMTUyOVHERVkL0Z/r0mudPV0R9zOIE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz3cqh1yyfCylLJzDrBblB8ulPjzkmVS7SyfbHgVJiA2LeV/7yQ
 /ma6MgglPCtwCarfce/rAhzylZORIR3ssWfUtWBFJN9FKlsz11DScGW/kfi62C/Of1pRWxvxpQG
 AJHng/wKgOzFqGFZiikw/kBSGuPI6ctr/EjEFmQ1S
X-Gm-Gg: AY/fxX40VhcswwoyAuiWf2LIsjMaQs7zWydvcXYvj8grf8VlCZJl7o0H7qqwbf43RDy
 SvP4mXdb+icSQ2QUS10R/9Rd0PmVjcrAOOawbs6UKxKAV8DA3DuesG1gHiRgTKTt0SWoNXsxE1W
 bvtxmDf5wmEzBEC8TZ20panSo5w8x9QcSG5mC6jaatk3CP7VMB2DWQfMe6Ikj4XNwctCg+JpNU3
 hC6YbvKlTpCf/SiKD1hA1vdsgk3AVe2oG8gnB/qf2/KXOQakV6mAqG/lGUcXaP+kl6QzFiwzhB/
 I0lfeQ==
X-Google-Smtp-Source: AGHT+IGhRe6cacnalU4Sbbx0+P+c9GB+XE3RKJaZT80HPKy2K0IZ0T6hUEygSC8LmCwKJ+ato7ctj90QisAGmb29DwQ=
X-Received: by 2002:a05:6512:6797:b0:594:2644:95c6 with SMTP id
 2adb3069b0e04-59a143f2106mr6242e87.7.1766019152768; Wed, 17 Dec 2025 16:52:32
 -0800 (PST)
MIME-Version: 1.0
References: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
 <20250930212352.2263907-3-sreedevi.joshi@intel.com>
 <aN1MSIO27C24q-gL@horms.kernel.org>
In-Reply-To: <aN1MSIO27C24q-gL@horms.kernel.org>
Date: Wed, 17 Dec 2025 16:52:20 -0800
X-Gm-Features: AQt7F2rjkM-TcPM4FYbg46wjt_nAwd51pZtMcJTG3c8bX0EM5tdjUpRcCMo7RqQ
Message-ID: <CAHS8izM9dFNtkbdR+_rCrEmb0L6r9vga0gDr8GXeHX5N_4=32g@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Sreedevi Joshi <sreedevi.joshi@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Erik Gabriel Carrillo <erik.g.carrillo@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1766019153; x=1766623953; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=du0kCtfi5QhpLe9dk7Ff2CQwdsFdE0qZL7AISkx1KXk=;
 b=bdNxjyBR50U+A03+VaC5BwejpGJ4C+BkjrEC3KtKSIV6rEYoDTWoxTmcucnUxvW+s8
 xVVSscZtwf+dvWpMgzJ1y3vyejnHXqSrHt/NinAu2/1tJT5QTkGh8VSYKeoBIpllYzKU
 AhoEM+Kw54BnRSMtXaPjxK+UYN2ix5+uCFRwfGG8x7uriEJQKv1QIlrawO5S7B6rd8yR
 ZAmrRTDHF6+oVix+sPimU6JI8NYpJ105PYwj/L40mKPFp/E7zKN+8XyHFx56TlFRQUIK
 FQN1flxg4yCGPHFxlvzls1gVOcy1cz2GaJXuGNfzKDvt5RqX9DjR5WshTWIq/x2qDJbC
 d5pQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=bdNxjyBR
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/2] idpf: fix issue with
 ethtool -n command display
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
From: Mina Almasry via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Mina Almasry <almasrymina@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 1, 2025 at 8:45=E2=80=AFAM Simon Horman <horms@kernel.org> wrot=
e:
>
> On Tue, Sep 30, 2025 at 04:23:52PM -0500, Sreedevi Joshi wrote:
> > From: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
> >
> > When ethtool -n is executed on an interface to display the flow steerin=
g
> > rules, "rxclass: Unknown flow type" error is generated.
> >
> > The flow steering list maintained in the driver currently stores only t=
he
> > location and q_index but other fields of the ethtool_rx_flow_spec are n=
ot
> > stored. This may be enough for the virtchnl command to delete the entry=
.
> > However, when the ethtool -n command is used to query the flow steering
> > rules, the ethtool_rx_flow_spec returned is not complete causing the
> > error below.
> >
> > Resolve this by storing the flow spec (fsp) when rules are added and
> > returning the complete flow spec when rules are queried.
> >
> > Also, change the return value from EINVAL to ENOENT when flow steering
> > entry is not found during query by location or when deleting an entry.
> >
> > Add logic to detect and reject duplicate filter entries at the same
> > location and change logic to perform upfront validation of all error
> > conditions before adding flow rules through virtchnl. This avoids the
> > need for additional virtchnl delete messages when subsequent operations
> > fail, which was missing in the original upstream code.
> >
> > Example:
> > Before the fix:
> > ethtool -n eth1
> > 2 RX rings available
> > Total 2 rules
> >
> > rxclass: Unknown flow type
> > rxclass: Unknown flow type
> >
> > After the fix:
> > ethtool -n eth1
> > 2 RX rings available
> > Total 2 rules
> >
> > Filter: 0
> >         Rule Type: TCP over IPv4
> >         Src IP addr: 10.0.0.1 mask: 0.0.0.0
> >         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
> >         TOS: 0x0 mask: 0xff
> >         Src port: 0 mask: 0xffff
> >         Dest port: 0 mask: 0xffff
> >         Action: Direct to queue 0
> >
> > Filter: 1
> >         Rule Type: UDP over IPv4
> >         Src IP addr: 10.0.0.1 mask: 0.0.0.0
> >         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
> >         TOS: 0x0 mask: 0xff
> >         Src port: 0 mask: 0xffff
> >         Dest port: 0 mask: 0xffff
> >         Action: Direct to queue 0
> >
> > Fixes: ada3e24b84a0 ("idpf: add flow steering support")
> > Signed-off-by: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
> > Co-developed-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>

Tested-by: Mina Almasry <almasrymina@google.com>


--=20
Thanks,
Mina
