Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D058D474B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 10:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C22161047;
	Thu, 30 May 2024 08:39:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6wC-ez3JPoc; Thu, 30 May 2024 08:39:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C906F61045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717058363;
	bh=tMJb+X5rFOm/8h5g2VHIevAuWgAsNBn0K9qQmDWI2IA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w5oe0hoGDC0pRTXQONGhtiLpwwPvMF1ima30fPCOlbT2u0IPgb/YTMxW86Bdcapfg
	 7tpjKSwclKd6FkSB3q8BqXfm33xKx4B/QSoSyAbkPDDeKIY7bnpmfy6gcXpuySn3wF
	 tdYhibSvAeVDQGVB3llzdqZKKHCXZzMEaTeomksjkn9qsBoKcyHgMXEps7tJDZBwzC
	 0rLMLuGXmmK6ZEsP6k61DKfSTKmy/vt0YJmTqL4+NYUoU6L30TkviSsf90wvqFBs87
	 ReUSAS0BAeBNBv0BCBzP4lJCNE7JhhY7HucSnihR6BMBgZIdv4VTbPLo6VLN7rUcUa
	 XQYKx2v1vZIwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C906F61045;
	Thu, 30 May 2024 08:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E672E1D4455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA25F4141E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5JyvOpTHDm78 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 08:39:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FBFF413D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FBFF413D1
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FBFF413D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:39:19 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-a63359aaacaso51294666b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717058357; x=1717663157;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tMJb+X5rFOm/8h5g2VHIevAuWgAsNBn0K9qQmDWI2IA=;
 b=v5RBEmuTH1q5jqMptZ8pHjb4EvuoYKu4Jl36xMVj2cgm4klvxQp7j+8ISLs9CP2gf0
 qZAzSt1olLNiCCGRw027nQP9L9r3IuHyk1FkFw+iRxMrdUGSCL5Vv+gig6jr98ENgFv1
 qLckHf+LCb3BsOKSt1oYDfFbVQmv7KgSuzyI4RxYYaahI3GkafBIRAVXj/er1YcrjtZY
 NnqiSZ7Jnd6OkRYuKdys0uINtfU+q+x3uzCaQgG8oumhX4luUMSR50yMDE1gvGCYahbJ
 NNeocIpedRxeAFb9ZF9V9855VmbJkMQfLEDlDhMgd7oza+lHcTQOMxFQnYQSNecbano+
 8sQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5Sb96t3esfaHCWX1r/xD5/934ckKODJMa4NSnPvuSi7nt0OJtP3dwDXHqqtKidJ82dje1p0JMm6t1iVehl1X1wyrnOcB6YskecdkV80313A==
X-Gm-Message-State: AOJu0YzgKX78kWXM/dhMkN6PLu3TTW3h5JnvdGQXwPIeZUJyVgzwWVah
 A90Di27xPwZDAsDggK89lI8lXqnD1CyDB/w6y4v14QV+lJjl3UqIt6VPwZjUtlCMFczUAIc/znE
 0WWzeqRCqYswn8VTVR0bmvr/KztI=
X-Google-Smtp-Source: AGHT+IG7yOFBPDUV2NHqb1k6mZUOqdzgdMdSZX6ZWJyyabNzowuy9EYpTY9T3kf064PGg0Fz4wHjKlI8QOZpr/4OWWU=
X-Received: by 2002:a17:907:11cf:b0:a59:c28a:7ec2 with SMTP id
 a640c23a62f3a-a65e8f6f43bmr92418466b.41.1717058357020; Thu, 30 May 2024
 01:39:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
 <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
 <CY8PR11MB7364D1C85099E4337408EBAFC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
 <ZlSZ63ST-Pj9CwCh@surfacebook.localdomain>
 <CY8PR11MB7364118081A77973A9504C4CC4F32@CY8PR11MB7364.namprd11.prod.outlook.com>
In-Reply-To: <CY8PR11MB7364118081A77973A9504C4CC4F32@CY8PR11MB7364.namprd11.prod.outlook.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 30 May 2024 11:38:40 +0300
Message-ID: <CAHp75Vevif+oX8Lq9D90ekTSixC6Q2Mfr38HrgVhzq0ab-COyQ@mail.gmail.com>
To: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717058357; x=1717663157; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tMJb+X5rFOm/8h5g2VHIevAuWgAsNBn0K9qQmDWI2IA=;
 b=XyCBTZku6bzdvtioZq9TQYYIS0NHwZYOf9l4JMLSWqGeuQUJDS/my1EJyDNq4JcFGB
 iClcT34aoxrIB14qa5t5LYEKvQUMBBHzrA207S+bxNVZxvsZs57axjlPEvAFgDKuUZAX
 9ZP8XTRw6ZaHuTjf5U8Byoz9bSrtD7OUNlcMTinVgnsHHA5hQ/+pqde5RfV8MiW8WFHn
 Ah6/6qyR6t7WqoqCRgbDCQDjB8GGXDA+NDA+hcpB8CkyvfiMaNxpxz9dFi6OPjCakcTn
 azeU2pBGGT5x3A1uE0YmPYJ+ikUq2rL8s3UKPz2nR4ZR12Jde8XQI3kF+MSGb50W4Whb
 BFhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XyCBTZku
Subject: Re: [Intel-wired-lan] [PATCH v8 10/12] pps: generators: Add PPS
 Generator TIO Driver
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 30, 2024 at 8:52=E2=80=AFAM D, Lakshmi Sowjanya
<lakshmi.sowjanya.d@intel.com> wrote:
> > -----Original Message-----
> > From: Andy Shevchenko <andy.shevchenko@gmail.com>
> > Sent: Monday, May 27, 2024 8:04 PM
> > Mon, May 27, 2024 at 11:48:54AM +0000, D, Lakshmi Sowjanya kirjoitti:
> > > > -----Original Message-----
> > > > From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > > Sent: Monday, May 13, 2024 4:49 PM
> > > > On Mon, May 13, 2024 at 04:08:11PM +0530,
> > > > lakshmi.sowjanya.d@intel.com
> > > > wrote:

...

> > > > > +static ssize_t enable_store(struct device *dev, struct
> > > > > +device_attribute
> > > > *attr, const char *buf,
> > > > > +                           size_t count)
> > > > > +{
> > > > > +       struct pps_tio *tio =3D dev_get_drvdata(dev);
> > > > > +       bool enable;
> > > > > +       int err;
> > > >
> > > > (1)
> > > >
> > > > > +       err =3D kstrtobool(buf, &enable);
> > > > > +       if (err)
> > > > > +               return err;
> > > > > +
> > > > > +       guard(spinlock_irqsave)(&tio->lock);
> > > > > +       if (enable && !tio->enabled) {
> > > >
> > > > > +               if (!timekeeping_clocksource_has_base(CSID_X86_AR=
T)) {
> > > > > +                       dev_err(tio->dev, "PPS cannot be started =
as clock is
> > > > not related
> > > > > +to ART");
> > > >
> > > > Why not simply dev_err(dev, ...)?
> > > >
> > > > > +                       return -EPERM;
> > > > > +               }
> > > >
> > > > I'm wondering if we can move this check to (1) above.
> > > > Because currently it's a good question if we are able to stop PPS
> > > > which was run by somebody else without this check done.
> > >
> > > Do you mean can someone stop the signal without this check?
> > > Yes, this check is not required to stop.  So, I feel it need not be m=
oved to (1).
> > >
> > > Please, correct me if my understanding is wrong.
> >
> > So, there is a possibility to have a PPS being run (by somebody else) e=
ven if there
> > is no ART provided?
> >
> > If "yes", your check is wrong to begin with. If "no", my suggestion is =
correct, i.e.
> > there is no need to stop something that can't be started at all.
>
> It is a "no", PPS doesn't start without ART.
>
> We can move the check to (1), but it would always be checking for ART eve=
n in case of disable.

Please do,

> Code readability is better with this approach.
>
>         struct pps_tio *tio =3D dev_get_drvdata(dev);
>         bool enable;
>         int err;
>
>         if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
>                 dev_err(dev, "PPS cannot be started as clock is not relat=
ed to ART");

started --> used

>                 return -EPERM;
>         }
>
>         err =3D kstrtobool(buf, &enable);
>         if (err)
>                 return err;
>
> > > > I.o.w. this sounds too weird to me and reading the code doesn't giv=
e
> > > > any hint if it's even possible. And if it is, are we supposed to
> > > > touch that since it was definitely *not* us who ran it.
> > >
> > > Yes, we are not restricting on who can stop/start the signal.
> >
> > See above. It's not about this kind of restriction.
> >
> > > > > +               pps_tio_direction_output(tio);
> > > > > +               hrtimer_start(&tio->timer, first_event(tio),
> > > > HRTIMER_MODE_ABS);
> > > > > +               tio->enabled =3D true;
> > > > > +       } else if (!enable && tio->enabled) {
> > > > > +               hrtimer_cancel(&tio->timer);
> > > > > +               pps_tio_disable(tio);
> > > > > +               tio->enabled =3D false;
> > > > > +       }
> > > > > +       return count;
> > > > > +}

--=20
With Best Regards,
Andy Shevchenko
