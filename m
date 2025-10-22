Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D45F4BFD0FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 18:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7E4040A9B;
	Wed, 22 Oct 2025 16:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kb7GquMUEwzn; Wed, 22 Oct 2025 16:12:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3281940A88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761149529;
	bh=hXJoSIXKAZqZaV1/Vtgd9fT53zuB/ef3PvkedjBFaZE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BCkkyQukAP3SRBIaaQemFa6Cfu92CYPulxQ83DYrTn0r8NE25ObqKUR2/kEvlS06b
	 xlzQJJAViDtydL8B5tRBDLZriMUyuMih3KIjUVmi3yQeXw1fuLH9p6iJF/6dyCqL7h
	 fXEU8Lya8DuxFEDmx59/awts5W9Gb7lQMzgM0jXOeROBUYpEepnAQqWVjVzAQGTvAE
	 WUwV6Sifj21OVFXKEWJGl8jsVoT7KA0qP3GFECGmrJxQGzkFjHt+NL1/vJsNLtAHoN
	 nXtMnaNiZ85So3pMOaohA/e/4gYVlGuKyxNPsxtylXVodewp/9zIC/8v5mKhx5ZBs6
	 HjRdMNFx8zr2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3281940A88;
	Wed, 22 Oct 2025 16:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD4B2DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF58D83C5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Zo46LPqSuZZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 16:12:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 915F483C41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 915F483C41
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 915F483C41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:12:05 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B830C3FCE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:12:02 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-63beab00b85so9486292a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:12:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761149519; x=1761754319;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hXJoSIXKAZqZaV1/Vtgd9fT53zuB/ef3PvkedjBFaZE=;
 b=Sca6Doo2uiKglYdndN9s9c7p5sz2kG6g7NS8StyIQidC587YyG6x943kKqSTot1Wgb
 WtlrYnXltW2JKm5eqMdsBjT1p6qKxnjw8ExlpX9aOnKT3LD0zVLMiBoIaTtCgWuodyoM
 9KAERmlo1CRdTT3tGXLgc3kSge8X7VXurUMghkWUgpylEOhRsobK428cSJh7BRaF11p2
 qmhSTxJHspmTpQVIs5OT9Ie7Rt1qQXsQaEphNTfz4r5aaQ2Q9FEEVW9t6m3+X5EU+i50
 sahVy7bAyfAlsPNTK0fDF6LjoynclOJ26EsUM2oRoMR0HSCZueKDBj4To+U7l1TobvDJ
 F70A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLqCoZvxjUFAS1ODM38kvkqfDF2wIFSTWI4m3QWFxINVBHplrTNVyhvu3MdtzdTB6YB92A1PnBxrmcZO2vdFc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxHLFTMSu5LgnERSkn73rbPxrCoTC/4Ner6p4T0xvWJ3aL/T/sE
 XuEitsUaIr3YlrXj3asM8rrJbgY7BfzGvOsUo3kTSrK/QBVe4oB8Jx+EcRql1QzPBEzbHV/a29o
 ZpUB6cX1Gw3w4A7reI0SgRVaPA4KKQLTzaOFWU/M4kZmVkeWs3t5zBzuzRZ9xDHR6UQLO15r0yd
 fpxtm78QphNz6GUC0P7JVNe4L3/uLjYYdo/Ng0vFqgvJiNGcyhDdXuzwmiVktl6g==
X-Gm-Gg: ASbGncumT+yFpi2wGGaZC0F2hctuRWDFB+rPaXizif6lKDN+j//u2t5pkG5+4QZM1Tk
 WmNrAPa3AMi6rVDqcAKGNGmFqUWfGBRCfmZOavZEHL4dZRvqlCnLGmk7zlr0a1v77Th+hJKeAkD
 NB2Rk2aovo9tiyjn3YQJ4pyS2e1WebZPM8EL8td2i+jSpnfP3ZDbS0L/UDLcmmHwTd2s292ToZp
 gNzw1g2PScx0w==
X-Received: by 2002:a05:6402:3585:b0:636:240f:9ece with SMTP id
 4fb4d7f45d1cf-63c1f6d90d0mr21265293a12.34.1761149519166; 
 Wed, 22 Oct 2025 09:11:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGo+EUlFBfQHcw0UwsmPphdFUhsNMc7g4lASSpo/GqY9R6yD4UV9MMURzb4IVRJTknj/6hFy7Q+FY5jHEndIVo=
X-Received: by 2002:a05:6402:3585:b0:636:240f:9ece with SMTP id
 4fb4d7f45d1cf-63c1f6d90d0mr21265253a12.34.1761149518706; Wed, 22 Oct 2025
 09:11:58 -0700 (PDT)
MIME-Version: 1.0
References: <20251021154439.180838-1-robert.malz@canonical.com>
 <0c62b505-abe7-474e-9859-a301f4104eeb@molgen.mpg.de>
 <IA3PR11MB89860CA0245498E6FF720E48E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <5578e792-2dd6-42db-8ad6-b12cd05c2617@molgen.mpg.de>
In-Reply-To: <5578e792-2dd6-42db-8ad6-b12cd05c2617@molgen.mpg.de>
From: Robert Malz <robert.malz@canonical.com>
Date: Wed, 22 Oct 2025 18:11:47 +0200
X-Gm-Features: AS18NWC0K4JlNBwhxK-j9aBt205Uc7UwVg8g7j0m6_4GsNSQueSsgnqvetVnQuU
Message-ID: <CADcc-bxT13tqWKQFfXX6a5R125dRT21VT+5_ozzV-pmpX708gA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jamie Bainbridge <jamie.bainbridge@gmail.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>, 
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, 
 Anthony L Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1761149522;
 bh=hXJoSIXKAZqZaV1/Vtgd9fT53zuB/ef3PvkedjBFaZE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=K8kRQeJ5D9plcFPESOcMLPlEW4gxxOKFvjXlbkxRKZlEDtdVC1/uwgnYJUVAXXilw
 t865cX5XEHddOzpkXWy9AsUzNzlyQuV5oJLuLVRWYCdIYWy4oI8D7w7fm4g/QSWg7l
 RRg6J8n9w2cMAE4C6uEC6Faw45m37pqvkT+QdTb7TjUpQDqPTkMah81Eh7YiaZlnVh
 Hy6jvpTJNViN461yKFORoVg4+z6Cxxmri6m1EG+QEJ9QueVa+HWrKT0Y1Swe21QyOI
 4WtDim6IGrkfjitbJQGm7PD7PKCy3pOj5lwUidDImuEAB8Dn6Urtjbj+RUDmdFX7qD
 xLIUVz4d2SrFGHiZLInm8EMkjes4W3HvrUe++SfDVJ7wXV8jjlaQY/FJRlJHREUkFl
 5fhUZVJApH+lJ1MlQNIfv+6B8+EGOGCp9H3bZcsq/sPTuQZkMSlk5uXq3yllL91+H+
 KgIBpxVeNtATmBv9gxtC+wW68ozYE26TCPaN1taq0Dd86NkYEqFAvK+mIU322zzNCV
 /+wkbUS9YOdAM3sB8KGo9Dbe2UEV6xJkhQv/ESIfn8JenRyRjGrFhjdwJN/JKht/79
 nWZ1hXNOkC1jvnwSoKJVBxvHhpHGTe9pyMaBW+TwaM5JxClh+TQAJWXeo8q7DDeCZW
 O6lZ/E6rxrQIpkpmkCNz6FWc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=K8kRQeJ5
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
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

Hey Paul, Aleksandr
Thanks for the feedback.
I have updated the commit message in [PATCH v2], some notes inline.

On Wed, Oct 22, 2025 at 2:25=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Alex,
>
>
> Thank you for your input.
>
> Am 22.10.25 um 14:06 schrieb Loktionov, Aleksandr:
>
> >> -----Original Message-----
> >> From: Paul Menzel <pmenzel@molgen.mpg.de>
> >> Sent: Wednesday, October 22, 2025 1:49 PM
>
> >> Am 21.10.25 um 17:44 schrieb Robert Malz:
> >>> From: Jay Vosburgh <jay.vosburgh@canonical.com>
> >>>
> >>> Multiple sources can request VF link state changes with identical
> >>> parameters. For example, Neutron may request to set the VF link state
> >>> to
> >>
> >> What is Neutron?
> >>
> >>> IFLA_VF_LINK_STATE_AUTO during every initialization or user can issue=
:
> >>> `ip link set <ifname> vf 0 state auto` multiple times. Currently, the
> >>> i40e driver processes each of these requests, even if the requested
> >>> state is the same as the current one. This leads to unnecessary VF
> >>> resets and can cause performance degradation or instability in the VF
> >>> driver - particularly in DPDK environment.
> >>
> >> What is DPDK?
> >>
> > I think Robert needs:
> > - to expand acronyms in the commit message (Neutron =E2=86=92 OpenStack=
 Neutron, DPDK =E2=86=92 Data Plane Development Kit).
> > - to fix the comment style as per coding guidelines.
> > - add a short note in the commit message about how to reproduce the iss=
ue.
> > @Paul Menzel right?
>

@Aleksandr Loktionov you mentioned that comment style does not follow
coding guidelines, from my perspective it looks good.
Could you elaborate on that point?

> Correct.
>
> Maybe also mention how to force it, as there seems to be such an option
> judging from the diff.
>
> >>> With this patch i40e will skip VF link state change requests when the
> >>> desired link state matches the current configuration. This prevents
> >>> unnecessary VF resets and reduces PF-VF communication overhead.
> >>
> >> Add a test (with `ip link =E2=80=A6`) case to show, that it works now.
> >>
> >>> Co-developed-by: Robert Malz <robert.malz@canonical.com>
> >>> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> >>> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
> >>> ---
> >>>    drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++=
++
> >>>    1 file changed, 12 insertions(+)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> >>> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> >>> index 081a4526a2f0..0fe0d52c796b 100644
> >>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> >>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> >>> @@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_devic=
e *netdev, int vf_id, int link)
> >>>     unsigned long q_map;
> >>>     struct i40e_vf *vf;
> >>>     int abs_vf_id;
> >>> +   int old_link;
> >>>     int ret =3D 0;
> >>>     int tmp;
> >>>
> >>> @@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct net_devi=
ce *netdev, int vf_id, int link)
> >>>     vf =3D &pf->vf[vf_id];
> >>>     abs_vf_id =3D vf->vf_id + hw->func_caps.vf_base_id;
> >>>
> >>> +   /* skip VF link state change if requested state is already set */
> >>> +   if (!vf->link_forced)
> >>> +           old_link =3D IFLA_VF_LINK_STATE_AUTO;
> >>> +   else if (vf->link_up)
> >>> +           old_link =3D IFLA_VF_LINK_STATE_ENABLE;
> >>> +   else
> >>> +           old_link =3D IFLA_VF_LINK_STATE_DISABLE;
> >>> +
> >>> +   if (link =3D=3D old_link)
> >>> +           goto error_out;
> >>
> >> Should a debug message be added?
> >
> > I think adding one would be redundant since skipping identical state
> > changes is expected behavior.
>
> My thinking was, if something does not work as expected for a user, like
> issuing the command to force a reset, that it might be useful to see
> something in the logs.

I treat VF reset in this scenario as a side effect which helps VF
bring up the queues.
User should not expect to see VF reset each time these commands are
run and there are
specific commands, like triggering VFLR through pci reset, which are
available for that
purpose.
Like Aleksandr, I found the logs in this area to be redundant.
>
> >>> +
> >>>     pfe.event =3D VIRTCHNL_EVENT_LINK_CHANGE;
> >>>     pfe.severity =3D PF_EVENT_SEVERITY_INFO;
>
> Kind regards,
>
> Paul

Thanks,
Robert
