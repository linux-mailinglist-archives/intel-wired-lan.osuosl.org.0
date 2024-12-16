Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BAF9F35EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B52081EAD;
	Mon, 16 Dec 2024 16:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9XquIp4mo7u; Mon, 16 Dec 2024 16:25:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF6CB81FB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366351;
	bh=B1JBC0yzglAUTPJPyRXxDLADQI+3/EsK5xxpb/QppY0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6sdIyTz5mAToHsxKc5fob3fZaJlK60KKOeKz14EILYXNB1+aLruBsexvwlgnKAr+z
	 7+VuSiZxXx0MlAq1y4opihZlGkn3VnHP205YblOjj/BwR6UmG/1j5dtBrQrRaF8TUv
	 vMgqYzZKUHc5EJ5YTVzqyW50Iat9GQVfC1UG2i7FHr+ucTApV859yDKyEtseGiYGFL
	 61UJBES5Yp4vLUFcL/J6VryUdENKEqO0UN72q4nL/G4vwVm3iBO7T52O4ThwYAXu0j
	 MOs9+NRwCEAwPW8rKKX8IWUzs5tXXtgb1KuNcwyicCSxCa0UFCiPJtDG8Vy9nc7GoG
	 9lIy1DSFWcshw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF6CB81FB0;
	Mon, 16 Dec 2024 16:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06043C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DAAAE60BB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qbQQfCC9n_0e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:25:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42b; helo=mail-wr1-x42b.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDC9460A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDC9460A47
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDC9460A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:25:48 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-3862d161947so2022641f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:25:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734366347; x=1734971147;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=B1JBC0yzglAUTPJPyRXxDLADQI+3/EsK5xxpb/QppY0=;
 b=EU0rX1nQje/lZvaBpyZdAdLfCabWq0nm7aqK6Ls9DK/q3ej7s2He1/0AjTBZBJxjvD
 zVp78EdD+lXNQpNSVSg3zw6sqYvwJJ/8jei6hQFfnCU3IhSr1gvlZUPHNZNx2lbz4a26
 SMGu6onRvrIvv7PRmDatuAaQEFA8r3WkrqwDsj7nayELgUX4HF6nArhNL136tZvR2orc
 +42JOUj2/Z+m7OJRA3yCAYSAS95ABVokjSYNGf/aFZEZYvkK0YYS65mZI/Es7dR0IWp4
 ffF2ZBolOOiL/ffJ1CU8pZNcfSyn0kqEq1IX8GL2LVZ3Xs7zGCztmtqfVXjMW5/PNTwm
 11rQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5PlaAa42FQfREXJ9aGq2hfLNqogmkH2jRYd1b3HZht9//rriRXZIVZyBkIjaPPvJNUTxB6ettKHUt8xosbA8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyveMyxdxOXgaryP3yHWNZvTVC7ZBWy4yf+S28+uye4bfn8BkM2
 AXBZ8iKScGYWZdBGpQE4UeeLYYuUvcFZyZ4hMEkKViZVzLwgYdxiCcve1fPW/EM4x/hz37wxGTe
 uf5zaErFB0wMsadwTs5eRtr4hVRr7IkfdNhgw
X-Gm-Gg: ASbGncth3DUzkH0qgX2tY4MdZ/h6hwdUk2+1zDdD64nsWJhm6cdy2T5ucDIhcXx3nsq
 qXXzDVYcIIEdWHIlb/6SnCkYoPvv9U0+vuaak5FzDQwLDV3+cWvhhEvt3nJu0N151nj6yZw==
X-Google-Smtp-Source: AGHT+IHRTldSp79yqNLLeq6Qq+q+4KGHMflo1B58ysZ6ESeNK5Ivs7mdObG/TtxwHRV+DFXh7Xiji2PO9c1XmyQwkC4=
X-Received: by 2002:a5d:584c:0:b0:386:4a0d:bb21 with SMTP id
 ffacd0b85a97d-38880acda4cmr9693116f8f.22.1734366346756; Mon, 16 Dec 2024
 08:25:46 -0800 (PST)
MIME-Version: 1.0
References: <20241212233333.3743239-1-brianvv@google.com>
 <20241212233333.3743239-4-brianvv@google.com>
 <bc95ab79-6b4a-41be-b5b7-daaec04f23d0@molgen.mpg.de>
In-Reply-To: <bc95ab79-6b4a-41be-b5b7-daaec04f23d0@molgen.mpg.de>
From: Brian Vazquez <brianvv@google.com>
Date: Mon, 16 Dec 2024 11:25:35 -0500
Message-ID: <CAMzD94QaBxYF_oqrWTKG1a2gHWbaeHEcCguENRTpgaiJbQXZ9w@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Manoj Vishwanathan <manojvishy@google.com>,
 Brian Vazquez <brianvv.kernel@gmail.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, 
 David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Jacob Keller <jacob.e.keller@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734366347; x=1734971147; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B1JBC0yzglAUTPJPyRXxDLADQI+3/EsK5xxpb/QppY0=;
 b=m5rbAhTMLsQtX1j8Ls2XN+/Wjho34j/F0f8zqdtl/25n5XC9vkl+yMWbPiMR5xtQGM
 4q3+wihcThWFcSPxJ4/LBQ+Lw+1nhEr/+a1aXZpeaptNGzX7wKSBztw/ndh9JueAAtTj
 Qi8ZMDeRsY0V4Tzp5M9i6EKJVbzl35bFV2FWPfKZRBWY/zCdVOCCQ0IdWcHwoEuseY8x
 E5gmkzK7L9KAjtYRCethGkhtkXt/8X69I8sYNiZ9k0RXDPtrYtP9nilrd8UiAJ8G/lut
 /KMnn+ljv0B2EPw3yFZvP/F5+l7GJ92ivxq8ccPI3R3cPVIw2mWjV5uX3LrEfj2fYMIn
 Fccw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=m5rbAhTM
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v3 3/3] idpf: add more info
 during virtchnl transaction time out
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

Thanks for the feedback, I will address it in the next version.

On Fri, Dec 13, 2024 at 4:36=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Brian, dear Manoj,
>
>
> Thank you for your patch.
>
> Am 13.12.24 um 00:33 schrieb Brian Vazquez:
> > From: Manoj Vishwanathan <manojvishy@google.com>
> >
> > Add more information related to the transaction like cookie, vc_op,
> > salt when transaction times out and include similar information
> > when transaction salt does not match.
>
> If possible, the salt mismatch should also go into the summary/title. May=
be:
>
> idpf: Add more info during virtchnl transaction timeout/salt mismatch
>
> > Info output for transaction timeout:
> > -------------------
> > (op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
> > -------------------
>
> For easier comparison, before it was:
>
> (op 5015, 60000ms)
>
> > Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> > Signed-off-by: Brian Vazquez <brianvv@google.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 13 +++++++++----
> >   1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/=
net/ethernet/intel/idpf/idpf_virtchnl.c
> > index 13274544f7f4..c7d82f142f4e 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -517,8 +516,10 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter=
 *adapter,
> >               retval =3D -ENXIO;
> >               goto only_unlock;
> >       case IDPF_VC_XN_WAITING:
> > -             dev_notice_ratelimited(&adapter->pdev->dev, "Transaction =
timed-out (op %d, %dms)\n",
> > -                                    params->vc_op, params->timeout_ms)=
;
> > +             dev_notice_ratelimited(&adapter->pdev->dev,
> > +                                    "Transaction timed-out (op:%d cook=
ie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
> > +                                    params->vc_op, cookie, xn->vc_op,
> > +                                    xn->salt, params->timeout_ms);
> >               retval =3D -ETIME;
> >               break;
> >       case IDPF_VC_XN_COMPLETED_SUCCESS:
> > @@ -615,8 +613,9 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapt=
er,
> >       idpf_vc_xn_lock(xn);
> >       salt =3D FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
> >       if (xn->salt !=3D salt) {
> > -             dev_err_ratelimited(&adapter->pdev->dev, "Transaction sal=
t does not match (%02x !=3D %02x)\n",
> > -                                 xn->salt, salt);
> > +             dev_err_ratelimited(&adapter->pdev->dev, "Transaction sal=
t does not match (exp:%d@%02x(%d) !=3D got:%d@%02x)\n",
> > +                                 xn->vc_op, xn->salt, xn->state,
> > +                                 ctlq_msg->cookie.mbx.chnl_opcode, sal=
t);
> >               idpf_vc_xn_unlock(xn);
> >               return -EINVAL;
> >       }
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
