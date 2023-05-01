Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D6F6F2FC0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 May 2023 11:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A8646112C;
	Mon,  1 May 2023 09:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A8646112C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682931985;
	bh=D3zo5+mTsg8Hfegurqooovjte/e/sqxko2FrVvGf0SQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ewm3l9sBnOb0G4lwNsr/baMpM3Dy+6eRmhlAdTIgjJOlrxFJqHImKn7NUV9HiDZII
	 42McBRyOfamDNaM0oToPdSuaCYag7mlxeGrSyHzsHXXv5ByzAz7jYvLhm5mtrYplKr
	 81a/j8QRXP7sx5cUjmzfHiyKpAAE1b51GGjyXVW8sdHt2+fHEDspHWU6DpDVVwHEov
	 maS1Ibhs0LWEB59VfO7PaCteTd+5Ge2BJUN9pGul9ZJFfj1NK3o0+XyuNCcP7cYfNE
	 GpcOFgwo5SP3h+6PlkhvmUmmk9efguzhK64Qj9p+e+Kwcru8cODk8Ig2HUyc7PjtZ6
	 H/dy18z42xpNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llbNWAMmP7fU; Mon,  1 May 2023 09:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2208961101;
	Mon,  1 May 2023 09:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2208961101
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4AE1BF427
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 09:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 245FE40101
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 09:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 245FE40101
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuqWb7gZ8bPo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 May 2023 09:06:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56A01400B8
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56A01400B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 09:06:18 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-959a3e2dd27so462696466b.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 May 2023 02:06:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682931976; x=1685523976;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6BOrgMbkoxQifoarCbFZUQ477nJk9Jd/bYAL2D2FUSM=;
 b=Wt7qiZmcNI0/xvEXiEIhzgznvenoAhM/AaQi80hCbQCJhij9TzBuGQY951aoSuafGH
 SRGu6sHquT/UFRwv5p+bKi+fhz/Dw8/p6hrJRMh6Qi9+l8Sp2bNwqb84of6LkTAXSUio
 i2Akyr83DZQgdVjGW35LmheLpMRti0RwkxvyqxtxlqvMalAY9mClUrRAnRacLXi9YH+i
 kTy2K+KiwJn3fsRwxHI6lQpzhLfHSkDs2O9BPaD2xqjSUlyLXqHqc4dyZ6TcouiSwGmq
 4Le4wMoPev5pj3a/KwNAIBZ6TAMuZee+vlEEzkbkQRnAnHHiaJd2wII5NzTuhKsMc4Vq
 fERg==
X-Gm-Message-State: AC+VfDwv4bcMxb5FsZgTzvvFYLa9D5an/Dk8vfUPFr1GMAg3IXXPfQYx
 7lZW9t+i3iFhM3rzCyXCfpj2mOapLBJWzWkTKlAZldUJh0w=
X-Google-Smtp-Source: ACHHUZ41Vz4+M5D8T+7+itcD2lLOcBDi0AjOBSQDG0uOaBmMuxDj8JYsWzMlhcwLYKfxX0NPQeBSHy3ceq/PAnZvmMk=
X-Received: by 2002:a17:907:94ca:b0:92f:924b:e8f4 with SMTP id
 dn10-20020a17090794ca00b0092f924be8f4mr12294132ejc.4.1682931975914; Mon, 01
 May 2023 02:06:15 -0700 (PDT)
MIME-Version: 1.0
From: James Dutton <james.dutton@gmail.com>
Date: Mon, 1 May 2023 10:05:40 +0100
Message-ID: <CAAMvbhG_gG8SMV+GDSadT3p2+mbX2_HZnrh8zCpi=xVODKmGvQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682931976; x=1685523976;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6BOrgMbkoxQifoarCbFZUQ477nJk9Jd/bYAL2D2FUSM=;
 b=YnmRCiS74ckZwfdT5US+MnY7/fjbz0/gIb40M93ROqZOJAHLDsC7RVXrSTQVEB8Qhz
 heGBCLjxs4OqlgRqMUwemBz1sirpYJWKGlQpFvGzVFQA6tHS0p8qWuURxZRrdB2PQmn+
 n96z/Q3VqDuKY0roM+mSxLG5RImt5ErhfCWSWKsUExVqYP/FhulttiX9LZlYBxf5h13u
 O98ZJoYPkJYi/0PiIgX1gnhUwJGXvBUpmDOh9JeAaZI04E+nG9DSXgVLuPYGwr+Qxy6V
 2w6QcVxHQdNMGZI8AWKB1a3izI/ADeCaWbRxzF07ID3Qi3GRCi923jU4oOGpWVAbDuSc
 ggBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=YnmRCiS7
Subject: [Intel-wired-lan] firmware bug in Linux iwlwifi
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
Content-Type: multipart/mixed; boundary="===============8668103108182496467=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8668103108182496467==
Content-Type: multipart/alternative; boundary="0000000000009b09ed05fa9e225c"

--0000000000009b09ed05fa9e225c
Content-Type: text/plain; charset="UTF-8"

Hi,

Where should I report a bug in the firmware for a Intel Wifi ?
Linux driver: iwlwifi
Kernel: 6.3.0
First line of error: iwlwifi 0000:00:12.3: Microcode SW error detected.
Restarting 0x0.
Symptom: Wifi stops working, manual stop/start wifi makes it work again.

I don't wish to spam here, so once I know where to raise the bug, I will
put the full logs there.

Kind Regards

James

--0000000000009b09ed05fa9e225c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Where should I report a =
bug in the firmware for a Intel Wifi ?</div><div>Linux driver: iwlwifi</div=
><div>Kernel: 6.3.0</div><div>First line of error: iwlwifi 0000:00:12.3: Mi=
crocode SW error detected. Restarting 0x0.</div><div>Symptom: Wifi stops wo=
rking, manual stop/start wifi makes it work again.</div><div><br></div><div=
>I don&#39;t wish to spam here, so once I know where to raise the bug, I wi=
ll put the full logs there.</div><div><br></div><div>Kind Regards</div><div=
><br></div><div>James</div><div><br></div></div>

--0000000000009b09ed05fa9e225c--

--===============8668103108182496467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8668103108182496467==--
