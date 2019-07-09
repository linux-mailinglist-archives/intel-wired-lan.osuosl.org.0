Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8BD638EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 17:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0462686747;
	Tue,  9 Jul 2019 15:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXQrrku1gqbL; Tue,  9 Jul 2019 15:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B90E878CE;
	Tue,  9 Jul 2019 15:55:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE1C1BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 14:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A72B20110
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 14:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fGWkFxLlzn0O for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2019 14:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id ED8A920024
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 14:59:57 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u14so8237901pfn.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jul 2019 07:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=7U0l1HqZdESWoUhNN00XrQX1RX1424dZGJPx+8cvVr0=;
 b=Zi+zQq+OEkyjbdWYmK4r7yTs7xwIhdQza7KqOwg6V+PlbaKom1xOH5b0awWeSoOMQp
 IYOFq6hB7FkJJkgsu7rIYL9IaANbTNQeO4L9Zrz/a8BlneoWuQ0IWV41UOx8r3vQzgqU
 VGt67q0h1H4q8saxAeipZeXnEH5mR2EfrqLfZ3qpUeFRnP36pygmiaPNIvt/kfeSMpA8
 Jicv/RCyuqlSOtEaQm4lSkeRnSJ4EQmKLEbWoBr+2AJdz31PqBxOvgofHBcLcI4oHQVZ
 ILlFh2pI2LXPV9S58+cymq9Uw4YjrPHAW5T6jjmWZdWvSYfSn+EWcQpRjX9AWjVEVLK7
 dKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7U0l1HqZdESWoUhNN00XrQX1RX1424dZGJPx+8cvVr0=;
 b=WzJS10VLEMoZNlU79vGtQwS+840iS1dHEDQL9jxtq8vgfT+lTCL2RN8ZgnFQrUFwo5
 7Z4Yo/ZE0CYNzpXx60xzYkswWmKEirze7FukW5D6r8UrzvKtcSrNJ/HX4nzR3hf9YM6p
 A1h53jquDNqfki6F8mBGS+UJYYMAY90eY2p1EzORrhszgxKZjFuI3JXpYZdCIcLHTqx4
 x4B8HoAyULmXgUzhuyxmtq/+EREaNKLwbrIjB5bBrLYJj8imNzhXgGFIZFEdpg9NAaZm
 hx13xRU8s4HTNmeNZlhH+KkpAGjOlXkCG0RwGgaVCMU6LClg5U79G6MiEs74pHoUFCw4
 Wnlg==
X-Gm-Message-State: APjAAAXP+4V/zbdRMnNWE63EQCzYIegogiahsIF0kKNNPOqa1SYrJtVE
 hZPOWL0aYtq6f2VEr+5gDc+vz+chjoKzntYMriC2iYnNNfA=
X-Google-Smtp-Source: APXvYqzHP1sNBfWydAkpEYX/pwQw6E2RQb0ougmrbiJfCpoiBMj4fJRFlXDequ+VxwVZZyDx5N4AeqQOcIa2xHG1doM=
X-Received: by 2002:a63:7e17:: with SMTP id z23mr30178772pgc.14.1562684397288; 
 Tue, 09 Jul 2019 07:59:57 -0700 (PDT)
MIME-Version: 1.0
From: Simon Barber <simon.d.barber@gmail.com>
Date: Tue, 9 Jul 2019 15:59:46 +0100
Message-ID: <CAJQj_PrxS3OrPVfopuOQtpJkSt1G4MautCMgTBG0pvB5rYondw@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Tue, 09 Jul 2019 15:55:49 +0000
Subject: [Intel-wired-lan] ibg i210 tx hang will PCIE_ASPM configured
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
Content-Type: multipart/mixed; boundary="===============0412708324566349351=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0412708324566349351==
Content-Type: multipart/alternative; boundary="000000000000658691058d40d09d"

--000000000000658691058d40d09d
Content-Type: text/plain; charset="UTF-8"

Hi,

I am are seeing a hang on the transmit side of an  i210 when we have
PCIE_ASPM configured in  the kernel build. i210 is also shared with a bmc.

The kernel is 4.14 based. If I remove the configuration of APSM in the
kernel build I  don't experience the hang. This is with a kernel based
driver rather than a DPDK driver which also experiences the same problem.

Is there a know problem with ASPM and its interaction with the  i210


Simon

--000000000000658691058d40d09d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I am are seeing a hang on the=
 transmit side of an=C2=A0 i210 when we have PCIE_ASPM configured in=C2=A0 =
the kernel build. i210 is also shared with a bmc.=C2=A0<div><br></div><div>=
The kernel is 4.14 based. If I remove the configuration of APSM in the kern=
el build I=C2=A0 don&#39;t experience the hang. This is with a kernel based=
 driver rather than a DPDK driver which also experiences the same problem.<=
/div><div><br></div><div>Is there a know problem with ASPM and its interact=
ion with the=C2=A0 i210</div><div><br></div><div><br></div><div>Simon</div>=
<div><br></div></div>

--000000000000658691058d40d09d--

--===============0412708324566349351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0412708324566349351==--
