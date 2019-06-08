Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640FF399F0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2019 02:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E36287629;
	Sat,  8 Jun 2019 00:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebgOi+F655Qc; Sat,  8 Jun 2019 00:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19584877FF;
	Sat,  8 Jun 2019 00:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30A861BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2019 00:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C939865C1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2019 00:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSEwh1K8ZedE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2019 00:06:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1239C8651A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2019 00:06:01 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id e3so2732574ioc.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Jun 2019 17:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=XcdHncspNoe337oc/GpXYYj/h5Nj0Cb3fyN8afCSf4k=;
 b=gpWcS/cPF8xUqTAC2X65sNwol3qeVt9LnjX0zHyPs/wrk3u9StFdI8eNU7piqayk4f
 eO7vSjXNHJq6O5v18zV8zSpMivZg6pR5kjvBLybHtVtPGM23kve0vpKmseJXt2aOXRW2
 dXKrg1cS9cay+45waYWecWBH0M1i7c4Srkd3abAnRa8RFnot+6ChQeky6fqPbI9G6mPE
 WDHGAkwzHyBHAZ/IEBruJS0ehCcy3WeEewVHukjC8duoTFe3DWzbEzvzW9phE1eFTztS
 e2AmoA4wgR212GbteQaqfAgK5/jlNYfZc4chjLmOosfEeFqBNfBEOtYvVf+gLS6ZV3hK
 XptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=XcdHncspNoe337oc/GpXYYj/h5Nj0Cb3fyN8afCSf4k=;
 b=ty/Oeey9DVJFu2xpnR5twQSY0uNLhtXWf2pfTIN+Hb0k3befYIyCtHYUbEuFj4r2hA
 WRGHr0Tldy6D+6UXT5NxvAIIwmAfhU90+/jCnEqNcXLIRWo1kWl+8T+7k5NLL0dlTXPU
 gpElrQMtJjhHtMSHoyFl9VbFbdr3UCK+OS9igrEhp1zDTPVMTq0z/Sx854ziDXPSpJX1
 +7oX8CiLVa5xpubVydXP+nHnHb3BL2dkpLd3c+hAsAwv5X9cYcyi41gh83loqOlQa+l4
 vPP4irisBhskJ8aGfKIyZYAXpBoZdyxm612KJtGws0O6H+FpwlNxz6+k2BQmprs8fV0w
 DlDg==
X-Gm-Message-State: APjAAAWSTd0N0F1+A4V4jg2hbttt540D9qSt23XORipvu67ISyAYUn6+
 pldqjjNtTRuvGEkjG+QXgbH5QPHo5BD4bkutLJA=
X-Google-Smtp-Source: APXvYqw5WtGd+2PGb+TRuxAhz7RsArrDLDbobij4c2F7ac1n2MiYFTWru1Q6uaL29fN7KdceqSztkupEyojW5FzxJfQ=
X-Received: by 2002:a5d:87da:: with SMTP id q26mr10855768ios.193.1559952360401; 
 Fri, 07 Jun 2019 17:06:00 -0700 (PDT)
MIME-Version: 1.0
From: Anuprita Duggal <www.anuprita804@gmail.com>
Date: Sat, 8 Jun 2019 05:35:41 +0530
Message-ID: <CAL-ge-q30QL1HPRovAJYjuohR5TgrSX2nPORALmh4fvJTuP=0Q@mail.gmail.com>
To: linux-kernel@vger.kernel.org
X-Mailman-Approved-At: Sat, 08 Jun 2019 00:27:51 +0000
Subject: [Intel-wired-lan] E1000 network bug in 5.2-rc3
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============6765870481063365766=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6765870481063365766==
Content-Type: multipart/alternative; boundary="0000000000004eef34058ac4b67b"

--0000000000004eef34058ac4b67b
Content-Type: text/plain; charset="UTF-8"

Upgraded to 5.2-rc3 from 5.2-rc2 on a virtual server using the e1000 driver
for internet access and the connection doesn't work at all

For further details please refer to the bugzilla link
https://bugzilla.kernel.org/show_bug.cgi?id=203847

--0000000000004eef34058ac4b67b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Upgraded to 5.2-rc3 from 5.2-rc2 on a virtual server usin=
g the e1000 driver for internet access and the connection doesn&#39;t work =
at all<div dir=3D"auto"><br></div><div dir=3D"auto">For further details ple=
ase refer to the bugzilla link <a href=3D"https://bugzilla.kernel.org/show_=
bug.cgi?id=3D203847">https://bugzilla.kernel.org/show_bug.cgi?id=3D203847</=
a></div></div>

--0000000000004eef34058ac4b67b--

--===============6765870481063365766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6765870481063365766==--
