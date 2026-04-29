Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAcHJ2hm8mkBqwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 22:13:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B443649A01C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 22:13:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA70B616E7;
	Wed, 29 Apr 2026 20:13:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMEOuZKtxPhm; Wed, 29 Apr 2026 20:13:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E41B616D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777493605;
	bh=9jvyc7f7PRAOiwTjwKhbnQrjsI3mybG0X85iNl/kJTM=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=Aiffe5vznK1Pdp0BoHKxx5fhRKsiYqVe0g3Ov25dYlJ0gduNW57159sEof5XRF3h4
	 doZ6BrOi9SJblofuy6zBfqq2TJIOXizhMxHGR/XK5/G1lMxsf8aSXKFvwHagvQ3BJj
	 NARnVrv10Gi5dQ48JfpU38WGC654ktgQUfw7OQ/XkJe7FP/5bFuWqSRYKvzCO05GRG
	 BUh4XRkBp9uTfSr+8hC1G9fAv9JciQwr26TGF5QaWN5fueMcCKQorFuof4SKLxAoBP
	 dM4xKKoBK1JXDplp6eBHcvWPEP2SwLREF282D96C60gbv9OfSPQ7sxueYSBEHPEDpb
	 u5r3fZETM/rGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E41B616D9;
	Wed, 29 Apr 2026 20:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 635FF192
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4836983F21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YU3HcolOhYY7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 20:13:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b133; helo=mail-yx1-xb133.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 60DDF83E56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60DDF83E56
Received: from mail-yx1-xb133.google.com (mail-yx1-xb133.google.com
 [IPv6:2607:f8b0:4864:20::b133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60DDF83E56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 20:13:22 +0000 (UTC)
Received: by mail-yx1-xb133.google.com with SMTP id
 956f58d0204a3-6563f83ae9fso201902d50.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 13:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777493601; cv=none;
 d=google.com; s=arc-20240605;
 b=QNr4fF33xvsh1bxz6JhS9RF2BLGuhpi8xRVPnOYy+huU0JK2iwOl3vXOABDDFYmRFg
 HU3XMaWRAS15FnUiBj3w1dPqAOkLzs80oJ5dlSXLYLrF4qqAEtrhArswgwj/585MWXAF
 HvAv5FMKoG1Wx95j3ci0Qz5wObnNYuBVkWHKnhaWFueD+6EGMeiWrt6B2O4VKDRXoW1W
 Kbz5Z+5jVpGi0e/VFI2lABIdtQECf21+qpTW2ncXBc+SkoMvjbmw/q0XxHuK+y1rF44Q
 ZONZsHEfWW7DbSlS7VPyIuKdUDeoYeMqJIR+v6dkriN9SEKSeAhY9YiiEwMQefj6VAIb
 9ZqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=9jvyc7f7PRAOiwTjwKhbnQrjsI3mybG0X85iNl/kJTM=;
 fh=dl3wucD+2GVwLAlKRRc9S5gpN45t690BBi7h7CdUHWY=;
 b=IjjR+9PkjkGqS5to5ewJIspq4s6bbEVCKPs7MvSjjkGvyTeZtWIRZhYks9CpeAW+gC
 LyVr3ciplbZasFXnPEjUJrnJgh8H9BplaPWjHLkcO3oyRdni0RTtg8KH9Gk9MLJNlaaj
 PppNmjYkvWIGoSE51n4J1M3vkQddCwNY+bVtG9Czny0WNcRjx83sGUR66PpxPVhBVIj3
 tGxRsvtuXycV3NZKe9lognFNYwUxhD/6l+zDkINiivjXd/be7mzQnRtUetdQ8xS5tRes
 IXCjYXrtdeqjcwNp6MXY5JyA7gL3U2Fts36n08XsWiuhlKBEnFABdMXtAJrlP2BopFNs
 6PBA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777493601; x=1778098401;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9jvyc7f7PRAOiwTjwKhbnQrjsI3mybG0X85iNl/kJTM=;
 b=JFMlcmNynXuAwj08rtYzFomg/HgsjTKr0pcxo7v+axKwU5Es/xx/jGfib9PmjyV7hE
 /L8udMulrIoEbwJiX1RoqHTS12G0onrpjoS8LeGzPloe/vtAyEpJBvfxTFymhctfY638
 3HFAeROgR4LhCq20QSB87LgGJXz/MwZW3uGDhobOSFCwpnUPnBaz2ku7Td9Cx9AJvp1q
 GlFRjNy2W39j4QD2WuIPJWsKfmeYZ9koj88Xgk9qXagmXpSseexlzKSw/26AqK8136Jl
 f+MN9zD6LADILsWW2JexOnaE1ybJ5zgHrOZs5BaizkAuNPSa5iYQf6mJNDMrQ3SxP35H
 1VBw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+++OI+l/mmdLBM3y8qfV//G8IPZQ6xLvid3KN2QsChon+yIBjhykMg2Ik0TVeA5oC7kU/ZcksQWtUjkZ/j1Mc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwoNSp0pJSOYnpz4uwimB9yluieccxAOvR8NMyviRrq2sfqqWRR
 eLHDI558d2wCPskrYmJGF8a42n7TdpL8KX++g2s8FMmkG3Sv24PBeeOHIgxLosPeuxeIH3dTsng
 B3Tc6MpM9pQ9mxQ9pjkAf2GQs1nXG6mIfi2r/AF3j
X-Gm-Gg: AeBDietpKiStYVVYEADxjdYSiMtFiRnzjpoKMW6wv1bns8WyOh3XtID8gzaeZFtS6pu
 f+NGN12s2Xq1oy2/NvBclQesmzyTzTvV0uVI/PeEjtsLyfWm2rON3myw1OaZURe9+4kYETRqQoW
 HXQhynz5NAFlb8RtvtCGfjuDD+Pyt+DSMzxIEWfiOJrOFevSFVIX0Hx8msdawrVfdRrcBnVtipb
 mCwoUUgin2ZwR11ZAyLh3fM45p8OiHSoKb+lwbL89nG3PclhEfi7T4u8L15d67N4zoLYf/1ApBf
 LBNXnIYcJbcbdUw3ryfHF3muq1M9gjWzeyH1b1AmVcUqIe1gsrkKIj8SoqM=
X-Received: by 2002:a05:690e:1916:b0:656:30a1:70f3 with SMTP id
 956f58d0204a3-65beed92f14mr8048708d50.14.1777493600534; Wed, 29 Apr 2026
 13:13:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260425014842.1036981-1-boolli@google.com>
 <IA3PR11MB8986566C5F04D57DEC8DE45AE5362@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986566C5F04D57DEC8DE45AE5362@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Wed, 29 Apr 2026 13:13:07 -0700
X-Gm-Features: AVHnY4KRKw4LoyS3xC6Qv4GwmQjPl1AbHgwZ3PdkQOrkri_GO4mhq3Yme5RvCb8
Message-ID: <CAODvEq5WZNP7sp+Kym9-pmUQrpsJv_sW=zz82f8EARZh1ceYsg@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Decotigny <decot@google.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1777493601; x=1778098401; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9jvyc7f7PRAOiwTjwKhbnQrjsI3mybG0X85iNl/kJTM=;
 b=sGwJ89nQu4hN4AtHndYWXSSsk6m0deSQmO3RF+onqzR+alUQjtWqeuTVheyUgXMvh8
 R8mJ/Acyw71WR1n5LfgK/rb6Hz+uQG8msY2UD0CtnMZV1X1Je8kPX2xczhDFEpoNwL+B
 ZKzYiV3Wlssx2QtR8oRsUvoJ87zWep+KMQ39s1kEx0Tgk+K5+fXRTOtWnTO3eUb89hEJ
 rd5DUf0QLg9lIPK2TjRkV8TosImYtv2BsoZ5hi4nZZ+y26/1DOXsKX9FgK9jqEyhEDD/
 XxVIfITrUD3HMg92+iDW8RTFw7QKRxjowtFRVKTjX5EVIoam4l7GG40+A31Td0cmflv6
 U0Lw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=sGwJ89nQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] libie: log more info when
 virtchnl fails
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: B443649A01C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Mon, Apr 27, 2026 at 2:06=E2=80=AFAM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Saturday, April 25, 2026 3:49 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>; Li
> > Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v2] libie: log more info
> > when virtchnl fails
> >
> > Virtchnl failures can be hard to debug without logs. Logging the
> > details of virtchnl transactions can be useful for debugging virtchnl-
> > related issues.
> >
> > Tested: Built and booted on a test machine.
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> > v2:
> >  - Use dev_warn_ratelimited instead of dev_notice_ratelimited based on
> >    reviewer feedback.
> >
> >  drivers/net/ethernet/intel/libie/controlq.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> > b/drivers/net/ethernet/intel/libie/controlq.c
> > index ebc05355e39d..bf200fea1e12 100644
> > --- a/drivers/net/ethernet/intel/libie/controlq.c
> > +++ b/drivers/net/ethernet/intel/libie/controlq.c
> > @@ -762,6 +762,16 @@ libie_ctlq_xn_process_recv(struct
> > libie_ctlq_xn_recv_params *params,
> >       status =3D ctlq_msg->chnl_retval ? -EFAULT : 0;
> >
> >       xn =3D &xnm->ring[xn_index];
> > +
> > +     if (ctlq_msg->chnl_retval) {
> > +             dev_err_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Non-zero virtchnl ret val (msg op: %u, ret val:
> > %u, msg_cookie: %u, data_len: %u); xn op: %u, id: %u, cookie: %u\n",
> > +                     ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
> > +                     msg_cookie, ctlq_msg->data_len, xn-
> > >virtchnl_opcode,
> > +                     xn->index, xn->cookie);
> Dangerous! You add xn logging before it's fields validation.

I intentionally added the log before the field validation because I
wanted to surface corrupted or timed out virtchnl replies. If we log
it only after the field validation, we won't have the visibility into
the corrupted / timed-out virtchnl replies.

But so far the bugs we have seen in our internal OOT driver all
appeared after the field validation, so I'm fine with moving the log
to after the validation as well. I will do it in the v3 patch.

>
>
> > +     }
> > +
> >       if (ctlq_msg->chnl_opcode !=3D xn->virtchnl_opcode ||
> >           msg_cookie !=3D xn->cookie)
> >               return false;
> > @@ -1011,6 +1021,11 @@ int libie_ctlq_xn_send(struct
> > libie_ctlq_xn_send_params *params)
> >               params->recv_mem =3D xn->recv_mem;
> >               break;
> >       default:
> > +             dev_warn_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Transaction failed (op %u, xn state: %d, id: %u,
> > cookie: %u, size: %zu)\n",
> > +                     params->chnl_opcode, xn->state, xn->index, xn-
> > >cookie,
> > +                     xn->recv_mem.iov_len);
> >               ret =3D -EBADMSG;
> >               break;
> >       }
> > --
> > 2.54.0.rc2.544.gc7ae2d5bb8-goog
>
