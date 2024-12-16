Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB3E9F3518
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 16:57:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F2F580D05;
	Mon, 16 Dec 2024 15:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RBl4etBYiblz; Mon, 16 Dec 2024 15:57:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DD4780CF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734364653;
	bh=GggK6Hg5aofy/l6GPtSv4OcqBaHliS9ouBKASQPpya4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dltvjVTQ8WV8gq6TDy2OWGT1FlFkZ1ms4eqMOAnADAV2NVKSMYJJjw3Man1R906P7
	 tmnh9GEiiED/CXClU7MqPnPg78GP9s6TpF57ZnTW3cAW2tPPcsubyrnDkZUJsKznXK
	 YgFS180iWLiK/OJ9p8ZzkpSofoa+l/8aFhsmkF9M75fWMVrxXtobC1QXEdBVb9CPXL
	 IYJWEr4Mbz1+dqKXRpXjeK34vOjMDFZtSAJI1w5wzA31XusAbq2ALObHR8cYydoCCc
	 kClS5bnfgsA8JnBxDnV5DW5hwgWZNuwZp3IRprtYKnUyH0ctReJv1LnKO5rYCuNc29
	 FjucKt6x6jFeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DD4780CF4;
	Mon, 16 Dec 2024 15:57:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 345FDC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E72040283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aSQzmnVlPTSW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 15:57:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48453404FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48453404FD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48453404FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:57:28 +0000 (UTC)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-cNw-vNbvNL6yYUDY75Nnkg-1; Mon, 16 Dec 2024 10:57:26 -0500
X-MC-Unique: cNw-vNbvNL6yYUDY75Nnkg-1
X-Mimecast-MFC-AGG-ID: cNw-vNbvNL6yYUDY75Nnkg
Received: by mail-ot1-f71.google.com with SMTP id
 46e09a7af769-71e222441b7so708806a34.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 07:57:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734364645; x=1734969445;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GggK6Hg5aofy/l6GPtSv4OcqBaHliS9ouBKASQPpya4=;
 b=u/vqMpRelRVkasnCEOb7pUGj5adJFUJvJoE88/7Y87Fn/GLPGRmkbpxdaRhJjDPfci
 IiTkGE7Agf3A4LXdkN3GKJwYQs/nLOezN4ITKZ+25+s4YDaSCMpqdJoLCesDrHY/mEcX
 PtBYlMOwx/9fXyjHAa3i/ish9ZBicRTIdSdQkWue83VnKk1qvd9JmIC33UX5N5nlzkMy
 SYjG2/RVSEiqhsivLU3OfSX2+6HKFpdvsO4fhR2+KiK7LDGeG+VcRHzi++LJVPVa2roF
 mOgPKBqjdXYdJAwh0LZ9RenHpXwX8DZ8I3T8+iEm6A51aRlZp+6HnwHp0KWJ7EkaIj2u
 UDSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVckbD5A6Sc6IHS1JG8DJjyTGRmBctAq4BFMEBqQUvMR7T9F+GOqjyVpJvwoVBOjiIbu2Ro0OKRlY16KysVnsM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7SLX59z2jJ7GfPHz6bP/VMhikvf4q7q0IjIgG0E0HeVCvNHiz
 BNNY56U31NKEH5AcYsluDr/MhQF6x7R+IRNVgzuuXqzEMpFR2yPXR5mDnlTxkyrusUoYR/B7VjX
 HcPyl9nyCnfbu/UkTIuw+D+e0YrW3qxfxT4WmJl5OSBX0c65uiKqfiHdWDsnkqFkSSGVOqLHPVv
 D4U/lT+2SY83O5Gs5ckNSd/JCvFuewJcmOqYK+8fScgA==
X-Gm-Gg: ASbGncs/1ePlvtMBQpa40t155c3rszMC/ZExOESOEJxpuKfFICbtWgGTlTXyon5a4XB
 zd7tx/zwTwUTLNQsq8dFzqynlKJsa+5p8N/B7gQ==
X-Received: by 2002:a05:6870:a44a:b0:29e:79ce:933a with SMTP id
 586e51a60fabf-2a3ac926e06mr2858378fac.12.1734364645404; 
 Mon, 16 Dec 2024 07:57:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGK1g/uqWSnnXcpZH9OFchKgNHws71LzECyhL9q8HUo0ekk6UxMypcTN7DdAw7xktTJzNxWHoKvpzSQOAMeTAY=
X-Received: by 2002:a05:6870:a44a:b0:29e:79ce:933a with SMTP id
 586e51a60fabf-2a3ac926e06mr2858370fac.12.1734364645104; Mon, 16 Dec 2024
 07:57:25 -0800 (PST)
MIME-Version: 1.0
References: <20241212153417.165919-1-mschmidt@redhat.com>
 <20241212153417.165919-3-mschmidt@redhat.com>
 <40d030d5-8d30-41b7-ae86-8baae6f594c5@intel.com>
In-Reply-To: <40d030d5-8d30-41b7-ae86-8baae6f594c5@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 16 Dec 2024 16:57:13 +0100
Message-ID: <CADEbmW10cLEeSm5qZDSXFVOkzM3k1-iHZTX62T3jAV7BV6A8uw@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lNqOJBujraT10cc-N9Vt7NX6O8Gckd_GLrllWxw_2Ek_1734364645
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1734364647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GggK6Hg5aofy/l6GPtSv4OcqBaHliS9ouBKASQPpya4=;
 b=QvALylanPOtkB8s42GJ7BqLt4/0oH4f+htD+bj2kEnPSfVDPlkZ1t0wcutDVFdyQAd7ewm
 A92B6KgETMSYMUYos4KWIY8p2IOXHrqCwWo0HCmzTPBYHeEdanc7GZ9aWTztV//yGFgz84
 C6OSxW3hwAD73YpKXgvxqvGxdcUF72s=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QvALylan
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: lower the latency
 of GNSS reads
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Johan Hovold <johan@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 16, 2024 at 6:39=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> On 12/12/24 16:34, Michal Schmidt wrote:
> > The E810 is connected to the u-blox GNSS module over I2C. The ice drive=
r
> > periodically (every ~20ms) sends AdminQ commands to poll the u-blox for
> > available data. Most of the time, there's no data. When the u-blox
> > finally responds that data is available, usually it's around 800 bytes.
> > It can be more or less, depending on how many NMEA messages were
> > configured using ubxtool. ice then proceeds to read all the data.
> > AdminQ and I2C are slow. The reading is performed in chunks of 15 bytes=
.
> > ice reads all of the data before passing it to the kernel GNSS subsyste=
m
> > and onwards to userspace.
> >
> > Improve the NMEA message receiving latency. Pass each 15-bytes chunk to
> > userspace as soon as it's received.
> >
>
> Thank you, overall it makes a good addition!
> Please find some review feedback below.
>
> > Tested-by: Miroslav Lichvar <mlichvar@redhat.com>
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_gnss.c | 29 +++++++---------------=
-
> >   drivers/net/ethernet/intel/ice/ice_gnss.h |  6 ++++-
> >   2 files changed, 14 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/et=
hernet/intel/ice/ice_gnss.c
> > index 9b1f970f4825..7922311d2545 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> > @@ -88,10 +88,10 @@ static void ice_gnss_read(struct kthread_work *work=
)
> >       unsigned long delay =3D ICE_GNSS_POLL_DATA_DELAY_TIME;
> >       unsigned int i, bytes_read, data_len, count;
> >       struct ice_aqc_link_topo_addr link_topo;
> > +     char buf[ICE_MAX_I2C_DATA_SIZE];
> >       struct ice_pf *pf;
> >       struct ice_hw *hw;
> >       __be16 data_len_b;
> > -     char *buf =3D NULL;
> >       u8 i2c_params;
> >       int err =3D 0;
> >
> > @@ -121,16 +121,6 @@ static void ice_gnss_read(struct kthread_work *wor=
k)
> >               goto requeue;
> >
> >       /* The u-blox has data_len bytes for us to read */
> > -
> > -     data_len =3D min_t(typeof(data_len), data_len, PAGE_SIZE);
>
> prior to your patch, the buffer is too small when there is more than
> PAGE_SIZE bytes to read, that warrants sending it as -net
> There is not that much code here, and with your description it is easy
> to follow, and the change is really "atomic" (send out each time instead
> of just once at the end), no refactors, so feels nice for -net IMO.

OK, the next version will target -net.

> > -
> > -     buf =3D (char *)get_zeroed_page(GFP_KERNEL);
> > -     if (!buf) {
> > -             err =3D -ENOMEM;
> > -             goto requeue;
> > -     }
> > -
> > -     /* Read received data */
> >       for (i =3D 0; i < data_len; i +=3D bytes_read) {
> >               unsigned int bytes_left =3D data_len - i;
> >
> > @@ -139,19 +129,18 @@ static void ice_gnss_read(struct kthread_work *wo=
rk)
> >
> >               err =3D ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_B=
US_ADDR,
> >                                     cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA=
),
> > -                                   bytes_read, &buf[i], NULL);
> > +                                   bytes_read, buf, NULL);
> >               if (err)
> > -                     goto free_buf;
> > +                     goto requeue;
> > +
> > +             count =3D gnss_insert_raw(pf->gnss_dev, buf, bytes_read);
> > +             if (count !=3D bytes_read)
>
> Before there was nothing to do on this condition, but now it's in the
> loop, so I would expect to either break or retry or otherwise recover
> here. Just going with the next step of the loop when you have lost some
> bytes feels wrong.

Userspace should handle corrupt NMEA (or UBX) messages anyway. And in
the driver we don't interpret the protocol, so we don't know where the
next valid message starts. I don't see what else we can do.

> Not sure how much about that case is theoretical,
> perhaps API could be fixed instead.

It might be a good idea to change the gnss subsystem API to allow
overwriting old buffered data, rather than reject new data.
[+CC:Johan].

> > +                     dev_dbg(ice_pf_to_dev(pf),
>
> in case of v2, I would squash the first commit here, an "additional
> paragraph" would be enough

OK, I will squash the two patches.

> > +                             "gnss_insert_raw ret=3D%d size=3D%d\n",
> > +                             count, bytes_read);
> >       }
> >
> > -     count =3D gnss_insert_raw(pf->gnss_dev, buf, i);
> > -     if (count !=3D i)
> > -             dev_dbg(ice_pf_to_dev(pf),
> > -                     "gnss_insert_raw ret=3D%d size=3D%d\n",
> > -                     count, i);
> >       delay =3D ICE_GNSS_TIMER_DELAY_TIME;
> > -free_buf:
> > -     free_page((unsigned long)buf);
> >   requeue:
> >       kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay=
);
> >       if (err)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/et=
hernet/intel/ice/ice_gnss.h
> > index 15daf603ed7b..e0e939f1b102 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_gnss.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
> > @@ -8,7 +8,11 @@
> >   #define ICE_GNSS_POLL_DATA_DELAY_TIME       (HZ / 50) /* poll every 2=
0 ms */
> >   #define ICE_GNSS_TIMER_DELAY_TIME   (HZ / 10) /* 0.1 second per messa=
ge */
> >   #define ICE_GNSS_TTY_WRITE_BUF              250
> > -#define ICE_MAX_I2C_DATA_SIZE                FIELD_MAX(ICE_AQC_I2C_DAT=
A_SIZE_M)
> > +/* ICE_MAX_I2C_DATA_SIZE is FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M).
> > + * However, FIELD_MAX() does not evaluate to an integer constant expre=
ssion,
> > + * so it can't be used for the size of a non-VLA array.
> > + */
> > +#define ICE_MAX_I2C_DATA_SIZE                15
>
> static_assert() is better than doc to say that two values are the same

Unfortunately, you can't use FIELD_MAX() in a static_assert(), for the
same reason you can't use it for sizing an array. You'll get either
"error: expression in static assertion is not constant", or "error:
braced-group within expression allowed only inside a function",
depending on where you put the static_assert().

I tried improving this some time ago:
https://lore.kernel.org/lkml/20240515172732.288391-1-mschmidt@redhat.com/T/=
#u
... but it required some more work.

Michal

> >   #define ICE_MAX_I2C_WRITE_BYTES             4
> >
> >   /* u-blox ZED-F9T specific definitions */
>

