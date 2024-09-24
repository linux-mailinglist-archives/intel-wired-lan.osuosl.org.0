Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6386F98446B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 13:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1480D80E21;
	Tue, 24 Sep 2024 11:21:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UIkRSbWXj8Vm; Tue, 24 Sep 2024 11:21:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64B9780D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727176912;
	bh=SMqzVhG5SdaonHmaAq6rRj2N1TQoLv9pnExCxLW4ek4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hzx0v2orKNv5rQCK51wADkN3fF7dn6eNS6WoZAROsm8xqDw1OPOQElho+QLBz44Ni
	 Sa7Qn8trMhzUiPMBMY80Jj1zOoUxCDW04o5x7WIT49fAy+N8yriIGRoiKUri2cIkIC
	 7ioisEIcNTxDEw5xhseThG8+JGERLc4UoE9LyAMh9xX78ze7eWo+Cj08yWdRd7Vvvs
	 KbOuRgGqYIgds3lKruVl9T3Jw1nz5he0YRV4Dq6vBKK1BhtZkiWiHMyQjGlZ83vNvZ
	 nFpEjK18FHkGtGq3ZjW9SNFOkhGONWMv0yZMIQcsDo6H9YQ+TbMupjbvXV2XvZjmq2
	 oraR0Z7HobfDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64B9780D6B;
	Tue, 24 Sep 2024 11:21:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A86D1BF37C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 11:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67A9641878
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 11:21:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X9YdGUksE7uV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 11:21:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wcosta@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 797B541871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 797B541871
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 797B541871
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 11:21:48 +0000 (UTC)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-qQecRv7tNiqx-1t-wWcwJQ-1; Tue, 24 Sep 2024 07:21:43 -0400
X-MC-Unique: qQecRv7tNiqx-1t-wWcwJQ-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-53567ffae5fso4102711e87.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 04:21:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727176902; x=1727781702;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SMqzVhG5SdaonHmaAq6rRj2N1TQoLv9pnExCxLW4ek4=;
 b=H233ZdUtMmowWTnE0G9Q58OghK3NE8KOggq4rfuAfLXaK8y8jIrzTMj8/VL8Kf+elH
 EyNXE9bXgEc1Ko32Lf+3pm2RQAOdO6WlDIQbgDbMJaGrOONkf6r/I0HuS2wCLFrtABLy
 jGPYPt7CWu7GKB0loscDCeHrszeHOhWPTFrYcgMMs6nBQp9wQZG2nBtsbX6mhK9YCrIK
 X5Ul5H3eBd9SIWzUx1KhtDGfX2asl7nFj7fBPjvgbJXquCG3O9zFD46uyLAKRBzlr6cb
 uKNA2wFXqHGYfz0VxgIO10bOx2I9PqzuA2cSCcGxGXVhj7gjR34RbG9HeHcSgSqVDKhc
 r3Bw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJQ4J2+jfkugzDD50uOoAnHLMO1I8u26hJ20DqMx0uYZ4TJf/cd8WEYL1WdeIAOGqsx98/VLP0h5E/BMXRkW4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzNqpg13kGGDdaEnznWBCHdBOhr7CaFdask6EyaFPPrOG9wJHnA
 0ZHXG4m47nvGpoM0e0ifqH2F2/+2F43EnhLNnIXXXVn5g1IRQHxZ6RMQQp9nHl/iYlR8N6e38R7
 yia/ZmaAm1kFEhYabmV+liGQLpUOUR0EuvBkejL/Tvn/rwrAlF38+amxaz2Ll5yjlQt9OgnOP5v
 vsvZAhPWuXqhci0cpUo7oFTxKL0A5pyfNeZpbz9kuhdA==
X-Received: by 2002:a05:6512:281c:b0:533:44a3:21b9 with SMTP id
 2adb3069b0e04-536acf6abdemr7539255e87.1.1727176902194; 
 Tue, 24 Sep 2024 04:21:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCJLTsjiLCDndre4ai+QsmabLg00scLxW4mqpYCR/Nr6z9gFp7Mfekj01pgzF+20w2ueRN1Yg+hqwbsOwhBrI=
X-Received: by 2002:a05:6512:281c:b0:533:44a3:21b9 with SMTP id
 2adb3069b0e04-536acf6abdemr7539227e87.1.1727176901734; Tue, 24 Sep 2024
 04:21:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240920185918.616302-1-wander@redhat.com>
 <20240920185918.616302-3-wander@redhat.com>
 <7e2c75bf-3ec5-4202-8b69-04fce763e948@molgen.mpg.de>
 <02076f9d-1158-4f3e-85cc-83ee4d41091e@intel.com>
 <CAAq0SUkeVkiit383065nhfCibn-CG701uvaM6UHpWu9RaZE83g@mail.gmail.com>
 <8702d2c1-faf0-44bb-93e9-e905f077b6c0@intel.com>
In-Reply-To: <8702d2c1-faf0-44bb-93e9-e905f077b6c0@intel.com>
From: Wander Lairson Costa <wander@redhat.com>
Date: Tue, 24 Sep 2024 08:21:29 -0300
Message-ID: <CAAq0SU=n0Qym5EmpimHb=6ayEeURYpHgoYxX8ZxuFbXziKHprw@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727176907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SMqzVhG5SdaonHmaAq6rRj2N1TQoLv9pnExCxLW4ek4=;
 b=Tu53hUhjgHdb29jDoMFO2CcFisM0gWfSZChhWIHL2XknJSsskmWUqiFptZw4g5/Mdz4ZSb
 s1rMU7rxDOe1H0vfmjOxiXRL3rNB9/n36bzCVosQ/smTEp6DhOOJciqZ9nVBXRtyjppc+M
 vOrulHz4oxfdZEELO88HwFL0vWZP3Fo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Tu53hUhj
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igbvf: remove unused spinlock
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 23, 2024 at 3:44=E2=80=AFPM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
>
>
> On 9/23/2024 9:46 AM, Wander Lairson Costa wrote:
> > On Mon, Sep 23, 2024 at 6:04=E2=80=AFAM Przemek Kitszel
> > <przemyslaw.kitszel@intel.com> wrote:
> >>
> >> On 9/21/24 14:52, Paul Menzel wrote:
> >>> Dear Wander,
> >>>
> >>>
> >>> Thank you for your patch.
> >>>
> >>> Am 20.09.24 um 20:59 schrieb Wander Lairson Costa:
> >>>> tx_queue_lock and stats_lock are declared and initialized, but never
> >>>> used. Remove them.
> >>>>
> >>>> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> >>>
> >>> It=E2=80=99d be great if you added a Fixes: tag.
> >>
> >> Alternatively you could split this series into two, and send this patc=
h
> >> to iwl-next tree, without the fixes tag. For me this patch is just
> >> a cleanup, not a fix.
> >>
> >>>
> >>
> >
> > Should I send a new version of the patches separately?
>
> The patches apply to the respective trees when split out so I can take
> these without a re-send. Patch 1 will need a Fixes: for it though...
>
> I'm seeing it as: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet
> driver")?
>

Can you add the tag when you apply the patch or should I add it?

> Thanks,
> Tony
>
> >> [...]
> >>
> >>>
> >>> With that addressed:
> >>>
> >>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> >>>
> >>>
> >>> Kind regards,
> >>>
> >>> Paul
> >>
> >
>

