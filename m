Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB776F939F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 May 2023 20:33:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98829817A3;
	Sat,  6 May 2023 18:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98829817A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683398024;
	bh=7+82mxjkXUzeNn4Jvw3gKS3Xre+hrXbINNosOUVhMrs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZPOGErZEoz6p5HTnbVLodjv+QvcCsM0Tjtqw35e/SqiGcCy1Q3VLNmYmACVgfUOAz
	 T7S05Zv+QYpvW5s9J3ASYsnOxeiQ+xPevO5vccWqpka5waByTAGjb5VJaqf4mL9toA
	 L5esryU3lNveZERgdPuxOvHmkfo42Jc8MI6QICQ2pYptl9Ge+QoXLycCHi55GEw9ah
	 /0MtwTPFSagETWRKFeiRVD2vDIDa0SkhKsrPZi6Ig46gmeQ/95GTCi866VweTBJzrT
	 dpokik1y9bjYWRhOSEmZ0hBuy1+G1Jrfs8DhmORj7254o72lIRSXu16GHGoQkePBu8
	 Amc/pxV3JxOjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VxzM9CmdDYmH; Sat,  6 May 2023 18:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F85C81A73;
	Sat,  6 May 2023 18:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F85C81A73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F33901BF365
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 18:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D873D81221
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 18:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D873D81221
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FauUS4FhQsUA for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 May 2023 18:33:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6544E80FB7
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6544E80FB7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 18:33:36 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-95369921f8eso486217266b.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 06 May 2023 11:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683398014; x=1685990014;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DBvBtsXFrMCKf+Mdtn1KdnKIvrTdrW9+mryJI8A0yl8=;
 b=Hm5dRcMprF/J1W48O4Cq8wcxZsZ0AhoL7dRn2AfwvGjYp43YOuUjHi6+MLRRFvBEm2
 1kStwcOfaFfz+a1tIxKoVEN8wP7Ft7nVu+xP5fDEfZpPDblGkXVzHcQrJsHuq1e/ckMn
 j7HBaPPKTNuYIyKcCPfa4qyNc1GxrxWyk91K13NIIbipUpcwERGVJPWaO8g6thuFK0pv
 9ecrl803VFT0BLI8YplJr8Bi0NkswHfKIv/+6NeaOEX7w2hdj0m4A8hgIyu/PFRKIpJ+
 b5piLw70U3pg7C4ZyAu0oVbIirFl802UEiPyTYcWkpuWN6t4USLo4dldx8ulktNPjSFa
 9eMA==
X-Gm-Message-State: AC+VfDy0nPX7uySJLgwud57SGbaCMcACAlc3bdTzqpHJTfUiVHVZtCwE
 jmlSleNZaL8OCrNQgzx02/7SfKMhXHkVXy7jRSE=
X-Google-Smtp-Source: ACHHUZ7slS6zaSUTrHPDGpdVMvK9f0a767Pao5+aX0kfTWX8TWJlYTmsLUmIEc8b8JalO20pCkiPNdpswcsOasHfdUk=
X-Received: by 2002:a17:906:da8e:b0:94f:7c4e:24ea with SMTP id
 xh14-20020a170906da8e00b0094f7c4e24eamr3945599ejb.38.1683398013855; Sat, 06
 May 2023 11:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
 <20230505142144.46622-1-piotrx.skajewski@intel.com>
 <CAA85sZsMdK6xWjf7JdujOhdXjKaLvSjbTjiGRw7n_Y+7afe5Vw@mail.gmail.com>
 <CAA85sZsZMFMCLtL_70AMXvVsQ+jNze0C=sNmZfwNdwUhTp_kxw@mail.gmail.com>
In-Reply-To: <CAA85sZsZMFMCLtL_70AMXvVsQ+jNze0C=sNmZfwNdwUhTp_kxw@mail.gmail.com>
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Sat, 6 May 2023 11:33:22 -0700
Message-ID: <CAEuXFEzznsMofUJNLvRQKugDs+EpY1eEKkdykM5_O=9wkgBKPw@mail.gmail.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683398014; x=1685990014;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=DBvBtsXFrMCKf+Mdtn1KdnKIvrTdrW9+mryJI8A0yl8=;
 b=QinfytY5egBdKb038DGhuWJbgWT0mHK8EkNDQxN9rgV3H0fOkJBhNgmesAMnPloGNz
 g4x1F7dqHlk42Jq/7720dpiLlC/8fRkHMWOfyCRdiozl6LlgG/73ROCOQkd0fY8iahK2
 nIVPDW9ggsYcXYODwnOa01bKIiBYLtVFFYAkvQsP3doRIpwXU4Mz+OMHkUcsqMh4cozS
 6XsjdbCddhT/KFtNUvZ5py8Z6Zq5n4860Ay4Xw+Mzltol8G8l3bXDrOHOahKtcrcbDNM
 3iaaT7lGZJ270cupDGDST5cY+WMV/TXA+wTOT/pcbD2RiQ00Poz6cB1B3SV6PDpi+wNm
 NcLw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=QinfytY5
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Piotr Skajewski <piotrx.skajewski@intel.com>, jesse.brandeburg@intel.com
Content-Type: multipart/mixed; boundary="===============5446031601732367425=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5446031601732367425==
Content-Type: multipart/alternative; boundary="000000000000a1af8205fb0aa4e4"

--000000000000a1af8205fb0aa4e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 5, 2023 at 1:28 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:

> As a side note, I don't understand how the switch booted with jumbo
> frames off - the config stated that they should be on....
> So, some kind of failover... sorry for the noise..
>
> On Fri, May 5, 2023 at 7:50=E2=80=AFPM Ian Kumlien <ian.kumlien@gmail.com=
> wrote:
> >
> > Sorry... It seems like my cisco switch booted with jumbo-frames
> > disabled after a power outage...
> > The conf says it should be enabled - but somehow it wasn't :/



Thanks for letting us know!
#regzbot resolve: not a regression. The reporter found the cause to be a
network config issue after a power outage.

--000000000000a1af8205fb0aa4e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 5, 2023 at 1:28 PM Ian Kumlien &lt;<a href=3D"m=
ailto:ian.kumlien@gmail.com">ian.kumlien@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">As a side note, I don&#39;t understand how t=
he switch booted with jumbo<br>
frames off - the config stated that they should be on....<br>
So, some kind of failover... sorry for the noise..<br>
<br>
On Fri, May 5, 2023 at 7:50=E2=80=AFPM Ian Kumlien &lt;<a href=3D"mailto:ia=
n.kumlien@gmail.com" target=3D"_blank">ian.kumlien@gmail.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; Sorry... It seems like my cisco switch booted with jumbo-frames<br>
&gt; disabled after a power outage...<br>
&gt; The conf says it should be enabled - but somehow it wasn&#39;t :/</blo=
ckquote><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks for letting us know!</div><div dir=3D"auto">#regzbot resolve:=
 not a regression. The reporter found the cause to be a network config issu=
e after a power outage.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"=
auto"><br></div></div></div>

--000000000000a1af8205fb0aa4e4--

--===============5446031601732367425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5446031601732367425==--
