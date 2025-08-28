Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D1CB3A35A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 17:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACDD14104B;
	Thu, 28 Aug 2025 15:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3IZglMjCvQv; Thu, 28 Aug 2025 15:03:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F28F141032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756393399;
	bh=32lnGp4lkPiIQG16uYgv0iwb9z8QnRiBWgi+huwiq98=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1begE77hqXOIXy7rz2oRUdJFWvIee+ykLrUSq6ZcRrsXrS+QFg1DbJVKbuY8qxkb+
	 4wSj1qnjy32GGUs1Zny6EraCRBzEfr7EQPu7Yi3drF7ubupl+HXQwqhdtXrde/rRwo
	 +caUSfxE2F+SUi+qMl7AoKzxjQvNgueHVAo3fQgLH9OgrYX3+t9N3CSlT/nqStR5mo
	 uBMpm2qQlhkoJnaSAcvDMmXaZNvAA7AN6Aums0BTpCNq09kedyEtX8lR8sdWsyR2xx
	 Je5tjxBv3be5SLYGFNZE18RemEMxz0w5k/z8ewD5UV7IOGaMCB/ZjRck56R8u2bSez
	 ryQh9iNTl67Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F28F141032;
	Thu, 28 Aug 2025 15:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 44B49B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36C5C40D5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLaRfV9kGS2h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 11:39:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=r772577952@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 52E6F40CFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52E6F40CFB
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52E6F40CFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:39:19 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-afee6037847so92517466b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 04:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756381157; x=1756985957;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=32lnGp4lkPiIQG16uYgv0iwb9z8QnRiBWgi+huwiq98=;
 b=w9ZxLqWDQIhgnfKD136kPpuYnR8TxrAaMG69F4KOkTt9F7CCVXRuvRMtSzuo0LyfDx
 RKVtJzTg2xDtwZEynR83/9ZeBgNR3m+dZ1b0DMHef+Uwvjr5dQ21KHphJ3QpzNCqjVtm
 XFx3ia8cSCTwmReBK+uV1n7VyefQ5zh17789ldRtmOnIntZFpO/XeMrZmtlAwefO8z2s
 VRv8ya2RP9dQ+W2bmu4CLfLEooLwv0CxbrfylocUUpK5BM5m4vDDsWOuXpOK3VD7/0+J
 EVu/EVnxNeT/69XChoqR6eZnohkXZvyvrAib7Z2PbGyHhh5/h23OZX+BuV+LJtiFTLHD
 dZyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7+pOXsaFr9TvV6rZAd01Ogksj31wR0ksBmY9fLyf271xjjKmPL/OITJq924+ZdaCI+z/DZzjwc3gdGAqFNMw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzJugjgiFfuF34bVL5Bt/2FXRcT5zn3jeUM3FlzQt16t7pBAsKS
 +t8HDb6ur6tK3hHSJJSnUajVXyBNH+gaREudof1p29UB0CKBlyYSY3b0IwltjQCLvHZT5Wekcuh
 hg7ABpY6aov4lMHSGOXvyx7WJyAz22Nw=
X-Gm-Gg: ASbGncvTbvITCADlY7x5uhqOhyVUGPJ4TcgJT/jSZu75jqGFq86p6gg7P8lx+7/uqCH
 BKTP5bWvBkln2J+CM9Zztq18J76hcoSHzlBdzS7nXTra52HM28bq3iS7ZetT+Oh6zdR7KalyCvc
 ToR7gwnDr37+dwkceQHgc88b7uRzg2gEpBKgQOunpS01WF69Zz9UJ3+4/v+sGjTWsDuePR8Uz6f
 M/hi94kYuF6pUKtop5EhaLuUAe8zQ==
X-Google-Smtp-Source: AGHT+IGZH/o3/ZWnUowQ1BIqtmwigFCWIn3F2IS+uL3bqn93Wy1CKlPLan+sf2rvYLelRLO9nIF8Muv/3x7fpKZTGp0=
X-Received: by 2002:a17:907:7ea9:b0:afe:11:2141 with SMTP id
 a640c23a62f3a-afe2953815amr2412568666b.31.1756381156530; Thu, 28 Aug 2025
 04:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANypQFbECe10JE9MKzdU3X7kehVDoHr0kGnQpK1CVMJrg+qJwA@mail.gmail.com>
 <CACT4Y+YLTF0bG6yJABOXg7zZt+1nV6ajHLJxSWzazSk2sH=tfA@mail.gmail.com>
In-Reply-To: <CACT4Y+YLTF0bG6yJABOXg7zZt+1nV6ajHLJxSWzazSk2sH=tfA@mail.gmail.com>
From: Jiaming Zhang <r772577952@gmail.com>
Date: Thu, 28 Aug 2025 19:38:34 +0800
X-Gm-Features: Ac12FXxtJpZJlZSZbFMYLNM5iLVnyn4qxfZp5SpXlursZxc9iOqGDqNUTLhd0dc
Message-ID: <CANypQFYzTMwpWHgn3sPwpP7nF3js-Q4gt7rFBBsFy494uEnB0g@mail.gmail.com>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 davem@davemloft.net, 
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com, kuba@kernel.org, 
 netdev@vger.kernel.org, security@kernel.org, linux-kernel@vger.kernel.org, 
 syzkaller@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:03:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1756381157; x=1756985957; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=32lnGp4lkPiIQG16uYgv0iwb9z8QnRiBWgi+huwiq98=;
 b=hY/Se0rw1wacJdbF8S/U4hvg+2puz3vPfmZ/eD61Ew1rm/ClyKIe8MOVsa/MybmW9z
 RgIZdSajqvjGDpUTA18Wn3oqd1HqNCxnUhEAaY2dYte7lRCXEAlOpWaxo7qgIKH2vNdS
 k4NnHYDp5riTkbBYYxtzJyBtItoMGCzNMaKjdFSpbpSLWlWt8y+RxxTjIWwn4COiSsHO
 56stMopuQqdMYp1xixPBbq28VDNi83KLAzEzSJ791CZmX9dwRNnTxBxn/tYmmn4xtjWt
 JJiCGaE2w6S5zsCcr1BxysB+jWK/vLYt9MMDfqWbotF42jhGBvv2tf5lI4yWkC8h9ZxW
 65ZA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=hY/Se0rw
Subject: Re: [Intel-wired-lan] [Linux Kernle Bug] INFO: rcu detected stall
 in e1000_watchdog
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

Hi Dmitry,

Got it. Thank you for the heads-up.

Dmitry Vyukov <dvyukov@google.com> =E4=BA=8E2025=E5=B9=B48=E6=9C=8828=E6=97=
=A5=E5=91=A8=E5=9B=9B 19:05=E5=86=99=E9=81=93=EF=BC=9A
>
> On Thu, 28 Aug 2025 at 12:40, Jiaming Zhang <r772577952@gmail.com> wrote:
> >
> > Dear Linux kernel developers and maintainers:
> >
> > We are writing to report a kernel bug discovered with our modified
> > version of syzkaller.
> >
> > The bug was initially found in Linux kernel v5.15.189 (commit
> > c79648372d02944bf4a54d87e3901db05d0ac82e). We have attached the
> > .config file and symbolized crash report for your reference.
> >
> > Unfortunately, we do not have a reliable reproducer at this time. We
> > are actively analyzing the root cause and working to create a
> > consistent reproducer, which we will share as soon as it is available.
> >
> > Please let us know if you need any further information.
> >
> > Best regards,
> > Jiaming Zhang
>
> Hi Jiaming,
>
> This is likely to be a false positive. We found the default kernel
> timeouts are not really suitable for fuzzing. Consider using the
> official syzkaller-recommended configs with proper tuning for fuzzing.
>
> Additionally, v5.15 is extremely old. Check out:
> https://github.com/google/syzkaller/blob/master/docs/linux/reporting_kern=
el_bugs.md
