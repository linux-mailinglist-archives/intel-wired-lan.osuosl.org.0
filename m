Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMJ8LT5d8WlrgQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 03:22:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B0E48DEF2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 03:22:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B755283E41;
	Wed, 29 Apr 2026 01:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PyFf_mip0EfD; Wed, 29 Apr 2026 01:22:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C0A083E3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777425723;
	bh=6f4tckrLY3J7+4J32u1EKG+jNDMEtwYZPpMg9Iuh0zQ=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=SnYJzSB+VJuFdsQLeTB+c+J2Slvgf8Q2Na1XLP0CeguKdWmQr9DLycUv2GUdYGIRU
	 f2NWjcJOPnkyIKExSvjQCHJpah+wuZ6XT+8jg/tMXDGaEQWOn+EOz8+5Pnclcu3ojo
	 q+V6T97KvAZQ+MdhBtMXxkhDSVK1d3A2bxJ8Ets/jOc58qHkpHt+ST6r3cYoCMdxUv
	 r2WTJaSEBOZscKL9vPw5gcBNrwhhZHSca8XNvBV6kSxAMMppZ8JmBNTssP1emNzczQ
	 5YQqt4FEwac6EPhZ+kP8zIVrYNpHTYDUron55XhcRBu/soGbnkcmerFM4nFZdtBxUB
	 m94BX4rvTA7Mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C0A083E3C;
	Wed, 29 Apr 2026 01:22:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5681D231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 01:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F7E540854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 01:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2pgxHxC8cF1T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 01:22:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::22c; helo=mail-oi1-x22c.google.com;
 envelope-from=vincent.chen@sifive.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F88840846
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F88840846
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F88840846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 01:22:01 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-479d37e7d7fso3085805b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 18:22:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777425720; cv=none;
 d=google.com; s=arc-20240605;
 b=C1zg+t4SwOP5nhJKPNvgWE2NRdJpMizNxKQvdFPcSgiOaTcwt09SnmNLlr5J+kb/Uh
 yEo3HTzXJfdS9kdjzdA8ki+7tHos0tCY2uugzocvLzPJzNM1GSL1+JHKgznFSt3cTGPF
 7IgNHlg41bcC0UnTeXJhBBe4FZqnkA5EaOKrEyuTIWkLapjcbIGGa5mwdTWdQEDje/qD
 s+4FQZSsSu96FMD/cqLf+DpsmtCe1A3IYksAKdc8NRgSJL7mokKFvOeHylXhPjPgyswh
 H3gPFc4e0acwmV22OeXED/zU6SHMkE9OmKA4b/KX8hCiarSHnJQNg/snWp+IzqBoKQ4u
 9Jrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=6f4tckrLY3J7+4J32u1EKG+jNDMEtwYZPpMg9Iuh0zQ=;
 fh=ciAhGXkhwEsl2eBs7CpTrKf1Jy+bThlyHqEeeirjHME=;
 b=lCzX2txWgVVHNGm+aDjYQS1tP2IjTnBYEiLFFrlSRH8mRu1ZM+OaE6UQ4knMD/g7+P
 t6IFGxtssCGwaLrzeTvxaccFjk3PdRRQgqTNC1BDG1c7TVPBivSYW4/+txJXPbd+2Axu
 ENnwXLT+wg1vsql8BiEAQMqYF5OBnnDr5h8ZMBEtsIdkUXqZ2bUMgiu4rfsgqTkbSZO/
 jMlfFFIyRuCcV7s2yOHvcEk9RlL8j0Jj7/IOPZoT64jDB1lsQNUjNI2Ukam7WvqvKlIU
 8iaMR2Kt9DT+bYnsDEXfM0asiJj062rT86SL3BaIbpkEmRV/CFoEnoYdPERa4kHkZLKE
 BxAA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777425720; x=1778030520;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6f4tckrLY3J7+4J32u1EKG+jNDMEtwYZPpMg9Iuh0zQ=;
 b=GyRP+qM9tnjekQ5pOo5wyge7bWU9DPx4UUeBfpOcRPrNJgQu4q6vTF9MMBqigPnVDK
 yoW9Qedltx+rRPGkgnA0ET51JFkNssyDXCZakofRcJAGqwQ7L6MpewOQDVNLWR1rlD0b
 iEgGOtXsSyusZJIJasjGxHYyk1y8xeeILSylzie1X1vuBGpcpCYcqeFt046EoE+RNGIm
 GjtlzjHfR/QgCmYYLZ7G9qsTpNEu9YrkyG1coc2HnVX3nT2ehi9RUAea2FIVfvakuFeY
 s06D1ITh/2nJf4dsq5UxLyF8JNxFaFdzN5Zw9BWfXmBRLNpgwom3ofzzN8qZ7UlxZ1l4
 d3gw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+08M7V38jfSHz/ycwlVolTgVqssJzJ1eJPLpe6SDAC6H0ACH9xfdiNKJYC89LQET5Lywt00DB7DwWpxH95pBs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywbz9RLj+o22MMVBdOcQZilDbOnxyTcGqQJEbcHdOps3NEpSVvk
 EcGEzktivy1tuvHsLN7XSHNwDRnMShwycSpiAdaPS/c7ldLUi8P3CmfMpxiRdzDkF+gBJToE/Lq
 CW2K7We7Cx42YzdclVWhejgzc09KqI6z1jpB3QE0CPA==
X-Gm-Gg: AeBDieu+6DULcZRH6QYNS2ripKFfzXGvyuZTsnrz6j+mYZD7LVSkpXS1fb/v82YVvgF
 8ZAUFG8FSl9FlzeKya6wYHEC9kUnJ5GYnLPGvOqDt4vYId0gxLy3uU9VXGRp9u/+bWmCnlaVU+r
 oTCboSA5ghaAo3ieZJ+xK9qslOdq1JFYFxEl+nUTkOwQUfcO1Ae74u2oOWsMWszlicr8t2wlKcu
 f9g6n8cJ2akRFsxYiiEHMMQM0e7sxu2B0k3WDNhkvzBfn36zn4J382EaOh8lu/jA+5Y/CMDGcsf
 SBRDOJZ99PttlovGxqVv
X-Received: by 2002:a05:6808:1929:b0:450:bbed:7a75 with SMTP id
 5614622812f47-47c28f816bcmr3004473b6e.28.1777425720132; Tue, 28 Apr 2026
 18:22:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260427031158.2665916-1-vincent.chen@sifive.com>
 <f9fbc8c3-3b1d-456c-a389-4f95bf07822a@molgen.mpg.de>
In-Reply-To: <f9fbc8c3-3b1d-456c-a389-4f95bf07822a@molgen.mpg.de>
Date: Wed, 29 Apr 2026 09:21:49 +0800
X-Gm-Features: AVHnY4Ldv6uyCJi_ZE8aGxC2v2tla6lK0w3XQ3_fjdXzKK6Ue5badKUDFLkz3tE
Message-ID: <CABvJ_xhLj+GKpsT2wDNXoS_oWJoydR0h0qxa3BSxSTCvC2-bVA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sifive.com; s=google; t=1777425720; x=1778030520; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6f4tckrLY3J7+4J32u1EKG+jNDMEtwYZPpMg9Iuh0zQ=;
 b=StMbxrOf1QqnlVRa3eDjalxLLscAirVnPLea/HlBQbU4ZvLLpGqX8/UbWvhS6kW4pl
 PJQHdR27IErdH74cZEtsFiRVDyF8now8+go915DXWBoXJnJwrScenPGvjHU3F8hWMwkY
 dg2yi7eYY53iwtqp6ngOj3Q3/09ok8Ijo/LSl2o/ZhtyZNvaB+OnYUNPsaaQrm7ungiB
 eNVDYgf3hHGZw3VkvLw3i1xceZQQIIHyqPGqNYmkYXSxV3eAlhy9W8FpIMvekaT3QhRJ
 x68oEe0TlkBqPbQEoHuujXXQIJGCbTb4jHhOCjwhYpWqIdc3qO/y/Af1dm8GXAwg91XQ
 989w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=sifive.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sifive.com header.i=@sifive.com header.a=rsa-sha256
 header.s=google header.b=StMbxrOf
Subject: Re: [Intel-wired-lan] [RFC PATCH] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
From: Vincent Chen via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vincent Chen <vincent.chen@sifive.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 67B0E48DEF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mpg.de:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[vincent.chen@sifive.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.916];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Tue, Apr 28, 2026 at 5:45=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Vincent,
>
>
> Thank you for your patch.
>
> Am 27.04.26 um 05:11 schrieb Vincent Chen via Intel-wired-lan:
> > Currently ice_eswitch_attach_vf() is called unconditionally in
> > ice_start_vfs() and ice_reset_all_vfs(), which causes VF creation
> > to fail when CONFIG_ICE_SWITCHDEV is not defined or switchdev mode
> > is not enabled at runtime.
>
> I=E2=80=99d add a blank line between paragraphs.

This is a good suggestion. I will modify it in my next version patch.

>
> > Fix this by adding switchdev mode checks at the call sites before
> > calling ice_eswitch_attach_vf(), consistent with how
> > ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
> > Also remove the redundant check inside ice_eswitch_attach_vf() itself.
>
> *Also* is a good indicator to make it a separate patch. I=E2=80=99d favor=
 this
> in this case.
>
OK, I will move the code snippet used to remove the redundant check
inside ice_eswitch_attach_vf() to a separate patch in my next version
patch.

> > This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
> > !CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
> > ice_eswitch_configure() API.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ---
> >   drivers/net/ethernet/intel/ice/ice_sriov.c   | 14 ++++++++------
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  3 ++-
> >   3 files changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net=
/ethernet/intel/ice/ice_eswitch.c
> > index 2e4f0969035f..c709decb26d5 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > @@ -512,9 +512,6 @@ int ice_eswitch_attach_vf(struct ice_pf *pf, struct=
 ice_vf *vf)
> >       struct ice_repr *repr;
> >       int err;
> >
> > -     if (!ice_is_eswitch_mode_switchdev(pf))
> > -             return 0;
> > -
> >       repr =3D ice_repr_create_vf(vf);
> >       if (IS_ERR(repr))
> >               return PTR_ERR(repr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/e=
thernet/intel/ice/ice_sriov.c
> > index 843e82fd3bf9..6a0b724e46f9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)
> >                       goto teardown;
> >               }
> >
> > -             retval =3D ice_eswitch_attach_vf(pf, vf);
> > -             if (retval) {
> > -                     dev_err(ice_pf_to_dev(pf), "Failed to attach VF %=
d to eswitch, error %d",
> > -                             vf->vf_id, retval);
> > -                     ice_vf_vsi_release(vf);
> > -                     goto teardown;
> > +             if (ice_is_eswitch_mode_switchdev(pf)) {
> > +                     retval =3D ice_eswitch_attach_vf(pf, vf);
> > +                     if (retval) {
> > +                             dev_err(ice_pf_to_dev(pf), "Failed to att=
ach VF %d to eswitch, error %d",
> > +                                     vf->vf_id, retval);
> > +                             ice_vf_vsi_release(vf);
> > +                             goto teardown;
> > +                     }
> >               }
> >
> >               set_bit(ICE_VF_STATE_INIT, vf->vf_states);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/=
ethernet/intel/ice/ice_vf_lib.c
> > index de9e81ccee66..71595410174c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > @@ -807,7 +807,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
> >               ice_vf_rebuild_vsi(vf);
> >               ice_vf_post_vsi_rebuild(vf);
> >
> > -             ice_eswitch_attach_vf(pf, vf);
> > +             if (ice_is_eswitch_mode_switchdev(pf))
> > +                     ice_eswitch_attach_vf(pf, vf);
> >
> >               mutex_unlock(&vf->cfg_lock);
> >       }
>
> The diff looks good.
>
>
> Kind regards,
>
> Paul
