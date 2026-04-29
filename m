Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABuRMFtV8mnGpgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 21:00:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4594E4996D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 21:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A43E961695;
	Wed, 29 Apr 2026 19:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m1wvcpGEB0u3; Wed, 29 Apr 2026 19:00:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C6A5616A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777489230;
	bh=GmsyAk+1K4Zh4JpsAlzbO2xUG7nOG4rp6/xwDZcjDBE=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=FB2rBoAWelr1TJN2v1+4iwZlDSChM8vNj/j9Cipfo9xh3pnOTHlNWihxjx5c3DZT9
	 PqadWNpzkeXLs6JLVcemNpujSZCKiSEz/Sjo9npnkcsd/bdnOTRwghkelGRcABeYkR
	 cgPL0gq6igf8AJz0m7YA6oFijJ2iDbJ+0zJrjtIJfTuEa0GG8dUrLSqJL1B+f5upfr
	 mVwGHBgUsHUD1Jpmbu7WsRZl7ugawbiY6wu/i+yO9oaHOpFW7nfyKFwAVF2jtDc5zp
	 D1MkTpbOg9DhAP9BwfvhG8d44KDG8pJvy5ZM1r3K+EwTNz9KA5/NkpI7DpnkT9IK7U
	 g6T0oTMXGG9Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C6A5616A7;
	Wed, 29 Apr 2026 19:00:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C73E18F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 19:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E56540AE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 19:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d3OM3jYnt_pw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 19:00:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12c; helo=mail-yx1-xb12c.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CF7D40B88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CF7D40B88
Received: from mail-yx1-xb12c.google.com (mail-yx1-xb12c.google.com
 [IPv6:2607:f8b0:4864:20::b12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CF7D40B88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 19:00:24 +0000 (UTC)
Received: by mail-yx1-xb12c.google.com with SMTP id
 956f58d0204a3-651b4d09141so250572d50.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 12:00:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777489223; cv=none;
 d=google.com; s=arc-20240605;
 b=fIlNWE8BGfu3CMHcrpJ7zHkm4luIerekzWL2kmCdlsr3FUBlI0ttg9FveXVrBVPJFd
 J+u2i6FmZsXeBwEQ5+GADtFPncEv6B1Kt30JCx1rBx3BngOLDxPGOhaWK5F52cxfv1cZ
 2uevY2Bm7xngnZcEwItUxl2DkD06Vltiu57ztw47BMzVlPBW5dy+i2fTqv6E0fEH6xrj
 zh18m0FBue06vFXD9ygAZPlaP6No25hgO5DWC3m07fXpsMfonqNvt5IzNuXI8pCvmdIK
 RkiA581D7xdntBXbuGrTyCni8QumXIB8XucGbzbrOMotWxlYpVQ0tB7b8yyt5RUiLj8f
 QkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=GmsyAk+1K4Zh4JpsAlzbO2xUG7nOG4rp6/xwDZcjDBE=;
 fh=6w+SJKger0LefYofond1waSXdfAc5+mz7ek6azohjF8=;
 b=Q8o2GaiKSHEb5iT3a7jiCIxEKxjdKkEaDNevh90/i8mhKoKHZuIIFKDugh1GkLXiFv
 AGZSKWSqotgZIIk8nOC5pJ755ydlT2otQzEpSS1jYTStdnl0drmgwtmNdniNvF0l5TmF
 5mic17GiIPcJn0v2ZeyMWmfOAbQb6IZ0kaLMujmDGsRYVsPYTBJvbDY02kIdsBhu5hCU
 p0IM9PWZqeV2lj8C17mPLdXjOiO9b9KlnTVXMwJTxHf++s4H+Q0ezrLEvZhm/JGgvRT7
 qbhhJzlWuBN5Tltqmu72pN9Cu44Uxs0+2fDr3uj0Ztm4ot7jrKevHt5nTlDIpjya7nqT
 KfnQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777489223; x=1778094023;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=GmsyAk+1K4Zh4JpsAlzbO2xUG7nOG4rp6/xwDZcjDBE=;
 b=FAN/cFLyu7jCyrK4cU+S+D7vhjUfH7Od5h7xXU6B6XKvdvRLbIC1lW1CUUoPwU/uVW
 +wjat1sQyr4B3QaUcEEqwMmU1/EKbI0dOcdO3kQAg+kZTatrdwk6/N7EaCF4R4tosOuw
 ilq/G+kp9j6jhPMNc3FizPvrqSFB3ZYPkWNW5YEB09GPxTNkqJ02llYxWpQdG2FfY9kB
 nNMrmMJlBytgaF48lX769n84Ij6a294THhaI60mjhC9saYkMVXf+xfsDF4NM1EcQsx03
 mFVZMbTaNaHjTwFO0P1W03jTwk0/f0+z0+OCWVuxDAOU+Qpd4KjrpEteB9tk7gWJcqYn
 3Ecg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/+EwNjLQMb1pWmJu6Ia46yekb5s4eR5vaFdXlK9u1HFBtK6nExLFR36tc4+Og0KeJGDOLuPJvJy4u3OwWE+hg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy7IPJoJyKrGKQmw2xKmpQ7jWhKTYyOR8aR5cN9mSroSmvpaLqP
 HEHZBWDN1+lYeWkWANo3dlUwKgLYAxvW/1sJ0dCJpsPhhIlnkui6z4PzmHfOSMktXHi2irWcmFd
 MWM3eF/eHguGl+7waznVvPY7HRA0rlbSxRF1lxkWk
X-Gm-Gg: AeBDiesFarTIyPLQQH64ByvHRirnNq+Dq1uHOG8N4rYQzF8xBfCbahYesHhQLVQtwJC
 fsu+fv/8tp4P4ylw1VPGuqRjP1ov9u8do0WLEKu2hYorSB+ZDHAktM2mtr6uW67Wp5FiJSfOtId
 +zuidIS2wEXHilzKScNy81MQmbblABjjeCZggEs9X+HpcBVXHCfS+UtYjI96TvBQH4c8CXQgyWW
 TDR0mr7KNDlEHhCN1fq7+Z0YTXhE69eXD2RHGC8JYMoCsYrzY/wVzGu1OU1kKisTQoz/Y2+NE7L
 xBCY0evYc8J4R9w7xfE1zBY11OHbCfg/DL929Ohby5NSyO+mdcwpsDK2A5E=
X-Received: by 2002:a05:690e:1445:b0:64a:d7e6:a1e4 with SMTP id
 956f58d0204a3-65bff459cbfmr3311716d50.38.1777489222600; Wed, 29 Apr 2026
 12:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260424031545.3777023-1-boolli@google.com>
 <2d8bd703-f368-4405-9266-d0d8824455aa@molgen.mpg.de>
In-Reply-To: <2d8bd703-f368-4405-9266-d0d8824455aa@molgen.mpg.de>
Date: Wed, 29 Apr 2026 12:00:10 -0700
X-Gm-Features: AVHnY4K-GqWrj9dfjsEYCEiuG9ysJ5WntmXLLc6b-8jqsGSXaVn7-1bjI0Zpo_c
Message-ID: <CAODvEq5xMxsn+N0VV=CEGfGQO7rxAc8UR=LBU6NHPAydPy9+kA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1777489223; x=1778094023; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GmsyAk+1K4Zh4JpsAlzbO2xUG7nOG4rp6/xwDZcjDBE=;
 b=aAmL4j9/oVBwFNdAXtWZvk/o+1Ln3G2ZT0v4XO3KCmTzQ6ayRbJTjjbnZ9zky7ob0v
 AeY/wFbPNRN6P6cOrzjEix2CtBbuCDKZHzcDrzVvXfD1Xo0c6nG/ly53c4cRlN+JuBmG
 NGHcjsljWtKY9oYp4yfzCWY0sd2riRMxIvFiDHtyA1rsHr2Tj7PSUKH4zKXwB24X2Rik
 Gk2Afv++7VXvOnvEw+5m56XSnFTbGgYbwNix32WsPSRLR/ncRj7pn3S1gO0zeQcbwaXb
 p1VdvTU9xNShpU0kb/6ae9PqYOdZ7NbKM2v4rrdDmbTCytlN10HcrfWngjNW0SWGZncv
 0UTA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=aAmL4j9/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
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
X-Rspamd-Queue-Id: 4594E4996D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,mail.gmail.com:mid,osuosl.org:dkim,mpg.de:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MAILSPIKE_FAIL(0.00)[2605:bc80:3010::136:query timed out];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Mon, Apr 27, 2026 at 3:40=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Li,
>
>
> Thank you for your patch.
>
> Am 24.04.26 um 05:15 schrieb Li Li via Intel-wired-lan:
> > Virtchnl failures can be hard to debug without logs. Logging the detail=
s
> > of virtchnl transactions can be useful for debugging virtchnl-related
> > issues.
>
> Why is the first added one added as error, and the second as info?

Originally I was thinking the second log doesn't warrant an err level
log, but on second thought, I think it makes more sense to use
dev_err_ratelimited() in both places. I will send out a v3 patch to
update it.

>
>
> Do you have a reproducer to get each of the new log messages?

We recently had an IOMMU subsystem bug in our internal kernel that
caused virtchnl failures, and this patch helped root cause the IOMMU
subsystem issue. However, the patch we used internally was applied to
the OOT driver, which is implemented slightly differently than the
upstream driver. Example log we saw in our OOT driver, with the patch
applied:

idpf 0000:43:00.0: Non-zero virtchnl ret val (msg: 523, ret val: 6,
data_len: 0) (xn 523, id: 254, salt: 40, iov len: 128)

The message looks slightly different from the log added in this patch
because the OOT driver uses different terminology.

>
> > Tested: Built and booted on a test machine.
>
> Please paste the new messages.

As mentioned above, I don't have a reproducer for a real virtchnl
error in the upstream kernel, but I synthetically produced an error by
changing ctlq_msg->chnl_retval, and the following message appeared:

[  309.891790] idpf 0000:01:00.0: Non-zero virtchnl ret val (msg op:
1, ret val: 6, msg_cookie: 0, data_len: 8); xn op: 1, id: 0, cookie: 0
[  309.892357] idpf 0000:01:00.0: Transaction failed (op 1, xn state:
3, id: 0, cookie: 0, size: 8)

I will mention it in the v3 patch as well.



>
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >   drivers/net/ethernet/intel/libie/controlq.c | 15 +++++++++++++++
> >   1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/=
ethernet/intel/libie/controlq.c
> > index ebc05355e39d..7eaa77413621 100644
> > --- a/drivers/net/ethernet/intel/libie/controlq.c
> > +++ b/drivers/net/ethernet/intel/libie/controlq.c
> > @@ -762,6 +762,16 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_re=
cv_params *params,
> >       status =3D ctlq_msg->chnl_retval ? -EFAULT : 0;
> >
> >       xn =3D &xnm->ring[xn_index];
> > +
> > +     if (ctlq_msg->chnl_retval) {
> > +             dev_err_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Non-zero virtchnl ret val (msg op: %u, ret val: =
%u, msg_cookie: %u, data_len: %u); xn op: %u, id: %u, cookie: %u\n",
> > +                     ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
> > +                     msg_cookie, ctlq_msg->data_len, xn->virtchnl_opco=
de,
> > +                     xn->index, xn->cookie);
> > +     }
> > +
> >       if (ctlq_msg->chnl_opcode !=3D xn->virtchnl_opcode ||
> >           msg_cookie !=3D xn->cookie)
> >               return false;
> > @@ -1011,6 +1021,11 @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send=
_params *params)
> >               params->recv_mem =3D xn->recv_mem;
> >               break;
> >       default:
> > +             dev_notice_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Transaction failed (op %u, xn state: %d, id: %u,=
 cookie: %u, size: %zu)\n",
> > +                     params->chnl_opcode, xn->state, xn->index, xn->co=
okie,
> > +                     xn->recv_mem.iov_len);
> >               ret =3D -EBADMSG;
> >               break;
> >       }
>
>
> Kind regards,
>
> Paul
