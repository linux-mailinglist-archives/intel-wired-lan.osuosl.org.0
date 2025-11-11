Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4F2C536C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBAB2811C5;
	Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mj1cDoUV8oJE; Wed, 12 Nov 2025 16:35:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A652B814B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965319;
	bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k35kNP7+x6aJ3zNeYCHUFg2ckxsGtBHIopEfi1NlfH196+9Id2FICjTKQEW1FUzay
	 aHq1kIQfnDjtMS6jzsKd7rd895MxuzTXmAvVFeAU3/Fa4SX2W7ZJ/Z2rDwM/hksnEA
	 ET4JFM21IHJnNo68bWuVAtt8lAWslNRQPux0JlanJxSnHpJCs1xZB/p6VzOfgmp+pm
	 k8tMkyuq2urGSxKbjLHxwERGCPznKLU8SkYZD8DIR0lITOSdAbxB4zXTPPgA1guvWc
	 eJZhuyoZxlVfGoWY0JFURO7qWz8esEbAlx/4nhZg/kTfGmUAfuCOh/hvikW6qbBT3W
	 FGa+ODmIqVpsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A652B814B3;
	Wed, 12 Nov 2025 16:35:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBD8D31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2A2D407ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8og5sV9CdzFB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 14:30:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com;
 envelope-from=corey@minyard.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 243BC407D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 243BC407D8
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 243BC407D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:30:38 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-5930f751531so3952503e87.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:30:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762871437; x=1763476237;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=;
 b=Sx7wzPmwGrZnKDDlWo/30VN9oKulYeu5dqYVbB107pEYEW5wRtVRW4ozdmQVR0VwKg
 r7dDG2f/d7OssCh1WHG+daTjksbCeAA/xAKCbgrtWzYdlMIIPhaajgzek2FLs7lynsGc
 TLFUJjg9dJb1wY5NsuFd+vRjIlrL90iVQi2hGohUuUjM3DHfL+99Z36zRothppb2s6Ua
 +StxVGfAkFqEX6gU3ERdbobLFKRpigarB9XATKyj93pgEKC7cKpqN7COX4GNSY3RQVMI
 wIOpw5wF1ZpjzL1qxRaZG8SzY4lTQgPsKb8CHRrhtgEtA64Jh+XedzxT0i80GaWc5K19
 vEUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWruo+h14xbUMwd25qOMVcW6TMQHoQc1Kr1wcJJVpvOu4Vm0oV8weRA6MkJ+zr+OG4s1miDedFABSE8ao/ZQf0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzaoHlBY7lxTzOCUDHKubpmV9+PRjKbGdCpPQKfo/hKwDEoocf4
 TRb827Cuam+HyFTxfzOaS1DI0pSBn7oFBg7cbH4x+KlBAw3bVnYlDLzTL9051XDYxWGMN1zG4Ft
 h8qyBSLrKelJNrOEccPjZ3bwJWBOWSNNHo+uI37inzw==
X-Gm-Gg: ASbGncvRcWTCbn1LUOFZUkU87Yr6wVS4g0TG1v0D7VxIQOIZQPKHt7VRgh8CsupGTj5
 kVihum6Fhf5iECv66jyS5VJXxFW02oCON1LOSlGeQvMEhFLl9btU6e9RHzuSw7epqdKnNLmxiKh
 ZaxXfOsr5ovl4j6NoKcyCaWDG87DjZ3F9C27+XScrhVrkP7PME+OHEwzmOxoJIGB6NzbVLlRon1
 RpLFt7p3E8hfeuOaJ6FO+TqDhT4kgUdSCYr/pwzzaodUmPEti1vx7RHqKihNfoW2n8cZA==
X-Google-Smtp-Source: AGHT+IHIkpA6rhiYIBJPGXbu43mtrXsVXRAjUn5Tnc/nVn4XCQWhRjYlEu/X5WxF0zlqRt3mYY1fmThRtTARr/9+XVU=
X-Received: by 2002:a05:6512:10d2:b0:594:2db8:312b with SMTP id
 2adb3069b0e04-5945f1465c4mr3726443e87.7.1762871436263; Tue, 11 Nov 2025
 06:30:36 -0800 (PST)
MIME-Version: 1.0
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
 <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
In-Reply-To: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 11 Nov 2025 06:30:24 -0800
X-Gm-Features: AWmQ_bmtZ_NzCjBDc-E_88i-zoQ3qkiy8-YjkQobPCCDd_5SvJDnh5UOEsI6sqU
Message-ID: <CAB9gMfrr5ReWD6EzGLpwnubnkRJg-VX0vpnPn-kuXsaYGFEAMg@mail.gmail.com>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>, 
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, 
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, 
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>, 
 Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, 
 Sesidhar Baddela <sebaddel@cisco.com>, 
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, 
 Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Content-Type: multipart/alternative; boundary="000000000000be4f5a0643527dff"
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762871437; x=1763476237;
 darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=;
 b=YiDxvJ+ERcO3srA7vNdMJW99RGQww4WZZtLa4XTSOiKXNxQdLGX13m6NVLNtlpcR+X
 DgyYIOMqRlPEPIB3Bu2vOmPoqTZrecGbUFhSWD024IeQ7HQNDjl/faRBc6V51ayD8OJ/
 uMDW3JLVBP7Uzc6AXDc+PCa2IPHH8VN5hxJVYOcFMc09KZgGJZPz4EKaETOgxrxXRv8Y
 oEarQiRx49Mgj4erREtq1vKMLLnKuzz/9R/oNK98OfS9eUSQLADWX1Wkbt6rIO177Z/U
 ejpSOM/8c1C7M0245HaorBL5ZbLrtI3KGrtNvCveDCV65jhXe3Zxl4CfbCWAe26OcDWi
 GsPQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=minyard.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=minyard-net.20230601.gappssmtp.com
 header.i=@minyard-net.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=YiDxvJ+E
Subject: Re: [Intel-wired-lan] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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

--000000000000be4f5a0643527dff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No, it's not really important, and it's better to use a standardized
output.  Thanks for pointing this out, though.

-corey

On Tue, Nov 11, 2025 at 12:08=E2=80=AFAM Sergey Senozhatsky <
senozhatsky@chromium.org> wrote:

> On (25/11/10 19:40), Andy Shevchenko wrote:
> [..]
> > +     dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
>
> Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
> or %lld.%6.6ld but I don't know if that's of any importance.
>
>

--000000000000be4f5a0643527dff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, it&#39;s not really important, and it&#39;s better to =
use a standardized output.=C2=A0 Thanks for pointing this out, though.<div>=
<br></div><div>-corey</div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 11, 2025 at 12=
:08=E2=80=AFAM Sergey Senozhatsky &lt;<a href=3D"mailto:senozhatsky@chromiu=
m.org">senozhatsky@chromium.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On (25/11/10 19:40), Andy Shevchenko wrote=
:<br>
[..]<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(smi_info-&gt;<a href=3D"http://io.dev" re=
l=3D"noreferrer" target=3D"_blank">io.dev</a>, &quot;**%s: %ptSp\n&quot;, m=
sg, &amp;t);<br>
<br>
Strictly speaking, this is not exactly equivalent to %lld.%9.9ld<br>
or %lld.%6.6ld but I don&#39;t know if that&#39;s of any importance.<br>
<br>
</blockquote></div>

--000000000000be4f5a0643527dff--
