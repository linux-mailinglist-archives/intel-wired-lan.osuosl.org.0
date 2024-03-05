Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE9D871394
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 03:23:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1EB760D80;
	Tue,  5 Mar 2024 02:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUdtbhadbNn3; Tue,  5 Mar 2024 02:23:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAEC360D55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709605380;
	bh=lyDBQ+22yrp72E595L3mg2lYk2PEqYaqKKUdLQjHJus=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h4i9YuQwa2ojtVtGqJQZB7KEXjZHogFukMuQlIRtqWD8eJQfkzT6Liz+o4mndxOev
	 HTEJEs8ubBxmtJnv8DnXNRYaruCrwH7u7Jl16TxI1r2OGqb4jveUlqYbhnVUkNV8PU
	 Vq5gWVJ3yAPUhGToLmM3vTme3gwaFX7dYIxyKk1Wfb1nKwIHwRj2Fy55qRm30op/dj
	 9Uslg+UMKQmVD9vuf/gRxbZ+j3figUpGFmRL8dV+y+b4AEcOt9NLGwZNIeZ6oF+fqF
	 62jbHqR2Amkkt+BbJIM8HT6ErFltSiPwI4Kn7AQdvyvGXxQTt0sR6nxycM4vvZz9xs
	 XMOz2ObNO9rLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAEC360D55;
	Tue,  5 Mar 2024 02:22:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B72081BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 02:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A23A18219C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 02:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjPlRgP5FdDK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 02:22:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::e30; helo=mail-vs1-xe30.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4040C82198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4040C82198
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4040C82198
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 02:22:55 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id
 ada2fe7eead31-472b709bb5fso209731137.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 Mar 2024 18:22:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709605375; x=1710210175;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lyDBQ+22yrp72E595L3mg2lYk2PEqYaqKKUdLQjHJus=;
 b=WCiM3ZRhyUjJTum4dhmjUbavVn+Kn9N4Gjtnyv7/KKva4XbJGQAup00d/pzjOQJmi5
 96Y+b9qyjgdtdNhOR07dfxbU0RXzTsj2vENAuFo1bVUaXs3/Z44jxm7bUGdt0PfoIuxq
 ZQA6BGsHa8n0vjjKFmCnb7lHiZO+bPTEi3PRitrKBewKAeYeHhHFnlMgUF2mE3esdBm/
 KXyP0XNLv+5DycBuiCubAtAFU/xj3AVdGNaQlgXTzKyJ0hERgJ/zC3P9PU08+zSPXEAp
 azItY1vgce88a5OueheCISH0giCtrXvKYClypstYK1ReKI/utSbLxty9qtuxXolbS6zs
 XvvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgF4Qk0Hfs89kS1eQZxCTtDWVCrWxkAkRWwJOBEdXy4JWeSUMdMA5S46tA/E0Xv6r3OuP3mmqEkD/F6T5iEfR/uLfMQUEGIl01FipDos5Rbw==
X-Gm-Message-State: AOJu0YxeS2iTOaxHvfYzlCWYU3VyDyTIuSRTzcdcFag+xP1PHsQglTBc
 UqJDyQ1yeTFOD4mwE0/jsJdQ9+6yyeZCalda0Hzfr0+SKAuEfGUCY5s2KxhxeImmWjoiy0xH0+a
 O+bPxGYStGzcGXf3SeBFUof9QVAA=
X-Google-Smtp-Source: AGHT+IEJjbVykwk6l7yGQdOtaLiYdeBNq/pEj+9wBlBNqTGI1CEUlzvLT+rU73oRpT1flJVazofNP8/bDQLys9OKogI=
X-Received: by 2002:a67:efcf:0:b0:470:4454:c40e with SMTP id
 s15-20020a67efcf000000b004704454c40emr573764vsp.14.1709605374582; Mon, 04 Mar
 2024 18:22:54 -0800 (PST)
MIME-Version: 1.0
References: <20240227192704.376176-1-e.velu@criteo.com>
 <827d22da-fb32-1012-422d-d283b28ce5ec@intel.com>
In-Reply-To: <827d22da-fb32-1012-422d-d283b28ce5ec@intel.com>
From: Erwan Velu <erwanaliasr1@gmail.com>
Date: Tue, 5 Mar 2024 03:22:43 +0100
Message-ID: <CAL2Jzuzf54qcsCM4CAUOLaogWrBL=Mm4ma_4pRbaf8A=dZeOFQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709605375; x=1710210175; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lyDBQ+22yrp72E595L3mg2lYk2PEqYaqKKUdLQjHJus=;
 b=XrnurvlC/pJjkSGwfy8IvUt46CGMsPDaX13eR4726LAiVr+pDmaV/ZiHY5BzM06VoB
 oY3TkPWg1CwKt5VzAOweZa4QQ/RmARbNVJc/gutJem8fNRt2/o+WbFS/d5hP7CgkG9Jz
 kS5UHzwaMJS9ivMMIgW9xPFt7mIdSoVDQGpZQPVyX1SpOn8+YPzkHIDYNOozWoSayX11
 UfuRwwVVttohcu3tnAPIKQrLiaYwybZdEwqkOFhxMb3U5rummmNrYiWFbAU18h4lxcA4
 CWqVcfuisCpfB6rm8pqDDcvrzEmh+epMyXejIBhrl+9kjX6DAtxubyB7pvO9h2bpeyry
 lUgw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XrnurvlC
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Prevent setting MTU if greater
 than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Le lun. 4 mars 2024 =C3=A0 23:10, Tony Nguyen <anthony.l.nguyen@intel.com> =
a =C3=A9crit :
> > Signed-off-by: Erwan Velu <e.velu@criteo.com>
>
> The Author and Sign-off needs to be fixed; they don't match.
>
> WARNING: From:/Signed-off-by: email address mismatch: 'From: Erwan Velu
> <erwanaliasr1@gmail.com>' !=3D 'Signed-off-by: Erwan Velu <e.velu@criteo.=
com>'

Yeah, I have a complicated email setup between my personal and
professional emails.
I'll see how I can fix that.

I was also wondering if I shouldn't subtract I40E_PACKET_HDR_PAD from
the mfs to be more accurate, can you confirm this ?

If one can have a look at what is the exact procedure to fix the MFS
size when too small, that would be lovely/ideal in addition to my
patch.
