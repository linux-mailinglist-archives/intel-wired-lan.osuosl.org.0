Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOCILeod7Gl7UgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 03:50:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 068EB4647D0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 03:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98A5C40D86;
	Sat, 25 Apr 2026 01:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vOOELBNUa2Cj; Sat, 25 Apr 2026 01:50:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1514E40D7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777081832;
	bh=5yyNxj6NWUM+f89oZJaJqjwJPEfazVPGjbOFd9EG0Bo=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=qL/jaHSA7jdYKo/Y01YddwYhUj1symTb1OKn5sTXSrmjcuchAF4YN0zRvh/K2erUU
	 vMoi6MQlBytGnHf8iR4JRLTndJZ89T0ooovYi6sKkcbAzUflmUYz4sC4LG8xj1J+c1
	 oAzePMcRa/IpTrSiBWfopb5hoj14pUsbmRBLS1dFSg1q6oIN13AxQUCfhRcMWwZgYc
	 O3SUFSx2EWMHdHvhs1yp8ywo2HydZJ6Y1uldwNsrt7yyxx7sPwvgUENr7X/7qIUG18
	 c2rmEDP5q8Dpvs1gfdU+Lwy18C80A6MmFvR1A+0uIeLJ71elgWIXpc17m4oIzcAbz0
	 YuX5kpG4vHJqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1514E40D7B;
	Sat, 25 Apr 2026 01:50:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7150A194
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 01:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5776140D75
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 01:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-uZT8MXga1S for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Apr 2026 01:50:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::230; helo=mail-lj1-x230.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 61A2740CBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61A2740CBC
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61A2740CBC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 01:50:29 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-38be5e86918so95360561fa.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 18:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777081827; cv=none;
 d=google.com; s=arc-20240605;
 b=Ol0hZy6OdemzQ0dAsisEAJNzsimo11i9QooZmXX2kYSmr0rCjS7ZwPnmeR3CWBEUb2
 tt7+00I1XeBhOZCa9j8wueEe7d+yW+YjvfAIBpzd/YEUknoO2ZhgF2BIGaYcHeL6gTfr
 lbZbeWHGeo8erNrwMh7PBVt27m9UPhBchr0RxiMLVDjFrgyDUcyEPwcvAxagI+inPjct
 vPhu083JUQLEFwMSBWrVlmKYPauvzTF0iA2A79TfGmQ+El1QcdODvBpW13iDY3HuOs9E
 Kk+mOyHIAwCgD+MfOpzdPSLxAKkePIWKBfo0oOCjDJEz9ukRRNyM8po3JmhrywLNDgtj
 QVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=5yyNxj6NWUM+f89oZJaJqjwJPEfazVPGjbOFd9EG0Bo=;
 fh=gL3E0p5Rp7h1nRaSVVWARhLtS3b0cAS+CZV6Q+DcgvE=;
 b=bhE/+r2biHZ7hsIpiAWo4MirTTctx5OBOZ436+d88OOkbJRbiHwiFWPJ7BJWNpMU8b
 ql6+o8lmYe+X8JrmM2XNJb1oyutOE/gQ3uTTpBtlCK6bFqiHNaIaIJVGoi+i2UEMGp/g
 SIMesJCSCotPObiDNgtzukF+Yk8tYAzCW8LFVVqWA9x3oYfRG2r0QK7mU3kkv7RzF7mT
 MsEN5FjNhJjSZQHfk6T+UTW4Q6Sc5kki4VXSHAmBzhvgzuIVATkPaa7l1NxRO2HaTWbA
 DU4Q47iS9koY9sjFUwtMwfObjihIFIW3uFjQmmpwsvJOO7Oqt3wrQvLlTYnXDU8j54oj
 oNPA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777081827; x=1777686627;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=5yyNxj6NWUM+f89oZJaJqjwJPEfazVPGjbOFd9EG0Bo=;
 b=KlqydRsMmkO8QdvsohPynrrbDnpWk5qjVKerJ/QYkHyyZoOZ3IvjTykRThdqS2Qpy/
 2dH094BoxJy1dsmLH/e2vYjz+t9Ye8Q6RYhuk+PDxJsuKqZGr9Sz1OxaMplm1AJW12rX
 +CpLUW7vjXX7OoycWjHItNjR4co4bKn5s6y6dGlh4STxPMfTBHeapuFMso/g4yzVkXc5
 5cAxdCl0LkKzHa8tXW6gWLQ8osT0MwA1jNIKrg4cLXuwHQ55qWXoM+KqavXQk3Z4TTGO
 /07g0k0NQIFaz+fnfQHAArvJQMGkQAYSluxJtHu/4jZ/oKbAojhabghkZ3YYUK0J1o5G
 HPlw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+iu2zhhMNYpWT2AyBe5sL2ovX4iE8ImMAKjjecz/xdQbgMAu2Vp7JiCKIkDHEfY/6QKq5I050lj5TAOqZ4CDA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyj/yPfm7GGizzahU8heI6z+DFbi+hNAyEDu5Y9JLg3QTHTMPl6
 xCge83zgv9+wLIXG1PidjmUoDhNSJ+7KKWeawD/fKsuyN9tHfHH1K2yING9rCr86JU9zeCcaI6/
 je6XEWyEAIhD9tgadZRxgVoglXPahzbwiSvfSOGpG
X-Gm-Gg: AeBDieulLqDhNcY81vJBldY+9ZuFX8os+7KLu0f68RPy7WAV+9MytHtmgNqeCpO6wmf
 gtwZZFhEvY6iBqERkg9wZhEqDQqEbZwZQe6Vjs5NZZfhSijZ/rf6SHgABx/qs7ve6P9QAy5F5QP
 dkp7qfmT3tedai5iPPTrvkCEcZ+0VQWLhid3QoWO0Lhh7opyKiyrtyAoOBDoPibxq84F1UIIk1B
 we8iRZgWNpqNw/XVGVV0x8BNiBuwiHXPVpXtJqFwFD5GQc9VjgkTEbtuBoCUXmU60hF5+g0lzgA
 EiqD2P3hr1jYIhl4401Tl3536svJFx1zq8QBJRCD
X-Received: by 2002:a05:651c:154d:b0:38e:a00e:2bb5 with SMTP id
 38308e7fff4ca-38ec7aa49bcmr112416431fa.19.1777081826490; Fri, 24 Apr 2026
 18:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260424031545.3777023-1-boolli@google.com>
 <IA3PR11MB898659D8A18DF05024CB56BEE52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898659D8A18DF05024CB56BEE52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Fri, 24 Apr 2026 18:50:11 -0700
X-Gm-Features: AQROBzDeobX20L43pWhysvIHG0YsODdmZoEaU8gLVt6v_GL31LiadtmkaQyrvOM
Message-ID: <CAODvEq4Q-4ko=AoaAVaGvFJmk3OvUJKL4ZcQhvYojjqdeGjc3w@mail.gmail.com>
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
 d=google.com; s=20251104; t=1777081827; x=1777686627; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5yyNxj6NWUM+f89oZJaJqjwJPEfazVPGjbOFd9EG0Bo=;
 b=cjFpDvEwVquQOL2JR/AZ63oH2Sr6/AWYxaNYFvG42N7N1xRqNI8bDbyqnHWkEhsRT4
 eCz6qqqTOUbNIAuIwFsYgflA7IsAkzzCT7dEeZPfro8YjR6TAzi+CATIs0zjLgvhNJgh
 IjpyWEt/U44FHlG42eR2em950v4gyQcVgjF3//Ey5ps8jrOwMIaYfVoGMBvI1iExsdIS
 LKXnzoGcLdf6A9kAPZJP/4E7fchdtpHAKODXHqWFLzovcrHrMviR2/L/EQ/+UU003kac
 NMQbQse5kbPs2Q0inNMduW5CuvFoo64Befsq9gXNrmXMXo0c9KsehobvRpecv54Z2DSa
 HGrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=cjFpDvEw
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
X-Rspamd-Queue-Id: 068EB4647D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,mail.gmail.com:mid];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Fri, Apr 24, 2026 at 9:08=E2=80=AFAM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Friday, April 24, 2026 5:16 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>; Li
> > Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
> > virtchnl fails
> >
> > Virtchnl failures can be hard to debug without logs. Logging the
> > details of virtchnl transactions can be useful for debugging virtchnl-
> > related issues.
> >
> > Tested: Built and booted on a test machine.
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >  drivers/net/ethernet/intel/libie/controlq.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> > b/drivers/net/ethernet/intel/libie/controlq.c
> > index ebc05355e39d..7eaa77413621 100644
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
> > +             dev_notice_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Transaction failed (op %u, xn state: %d, id: %u,
> > cookie: %u, size: %zu)\n",
> > +                     params->chnl_opcode, xn->state, xn->index, xn-
> > >cookie,
> > +                     xn->recv_mem.iov_len);
> For me dev_notice_ratelimited() level is low for a failure messages.
> Why not dev_warn_ratelimited() instead?

Good call. Switched to using  dev_warn_ratelimited() in the v2 patch.
Thanks for the suggestion!

>
> >               ret =3D -EBADMSG;
> >               break;
> >       }
> > --
> > 2.54.0.rc2.544.gc7ae2d5bb8-goog
>
