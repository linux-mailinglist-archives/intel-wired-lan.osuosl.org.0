Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2782C3615
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Nov 2020 02:12:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E1CF8647F;
	Wed, 25 Nov 2020 01:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKm_qo64uWC6; Wed, 25 Nov 2020 01:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EC3686582;
	Wed, 25 Nov 2020 01:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84FE21BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 23:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65E1D20414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 23:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0+mc7zs6KlW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 23:16:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 2C60B20337
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 23:16:06 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id n132so1119101qke.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jbdr1BEjJUZERXYDOU4Gv/mlbgAbUhdHLiICpsfXV1E=;
 b=l+vUmSI7i0l7fGuVwLPE5fOuxSSHusFrOEG0e9vJ5rcmJlRUOrCYTNMgOLszTPHVi8
 kkm8fDq5tpugZyKejz3uk0cqdmJQS1mRaMRBkOrvbAyI5fs/P/fRtiJLDz+N02sHzTn9
 5/inSz1Fbn+KfojwxtYTlcXPJfmsrqKqTBJHlwr9t4EjDd547DXA4VcN7evdsnVsuQ6p
 BBfcG3FVJZcSml9If1GSG7EsdjE7zI8hFJDY7AHsK/qRYVzYo+XeozyqqdAfx+vCyNIu
 chiyZGm6NoHt+eS3/xbHVpbDRehhnbGG6wOdrUeu9OVynRP4/UUYeZuXMpT7icG9n0vb
 4oYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jbdr1BEjJUZERXYDOU4Gv/mlbgAbUhdHLiICpsfXV1E=;
 b=qxzXMFJsFTx9FtPxYJFEBJ5Xkz0SI5dPIWFP2mbgyMIwzIAI3INGg+AFdTifDfMzAZ
 Xk4yQn2eZA5/65tMMObPUDIgomPWFI6LzuTUcgvKDt/X12f7iPS/La0Ye1Ur3QoqN906
 ed8aZ3zjPhAUPd97rVryzNw2qg6vOc1qh9cAzgM4gN3KBNAXAJ3zh8+n2RGsiNu5eUYD
 C2Hxt5L1zzDjpfp0v9iQhL5QcCgn6DNVi5NrgKNAsLcAr+jdL7rbQarYuVi//N2kp6Qb
 awGq1K+ESkmdkEA1LPBPkywklUDan6lQ/2+OrGo1fhmKni4C2HfifQ0cJq7ymBMqXbuz
 nZdQ==
X-Gm-Message-State: AOAM5307NwXgQACrn5bTCuy3kxPhB127wLCZXBVIWz4MyZmEzyPKm24V
 WhVWPP5s8UmIzoofoQlOSZk5XYknExcupNUItzs=
X-Google-Smtp-Source: ABdhPJzk8nFL+kqPtl4RF6lmqD43KwMnT4A8Oapd7ArTtvgjfEhtR30+WEgNSraaEzhK8tG/u1tJxvxiaOrV9LODN+o=
X-Received: by 2002:a25:61c5:: with SMTP id v188mr748702ybb.422.1606259765056; 
 Tue, 24 Nov 2020 15:16:05 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook>
 <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 00:15:54 +0100
Message-ID: <CANiq72nUt57u5DG9rH=DB0DzQH7U6-QbG-2Ou+PyCY=p=_Ggag@mail.gmail.com>
To: Finn Thain <fthain@telegraphics.com.au>
X-Mailman-Approved-At: Wed, 25 Nov 2020 01:12:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through warnings for
 Clang
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
Cc: alsa-devel@alsa-project.org, bridge@lists.linux-foundation.org,
 target-devel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 linux-atm-general@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, usb-storage@lists.one-eyed-alien.net,
 linux-mmc@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 virtualization@lists.linux-foundation.org, netfilter-devel@vger.kernel.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
 nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-watchdog@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, Linux-MM <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 24, 2020 at 11:24 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> These statements are not "missing" unless you presume that code written
> before the latest de facto language spec was written should somehow be
> held to that spec.

There is no "language spec" the kernel adheres to. Even if it did,
kernel code is not frozen. If an improvement is found, it should be
applied.

> If the 'fallthrough' statement is not part of the latest draft spec then
> we should ask why not before we embrace it. Being that the kernel still
> prefers -std=gnu89 you might want to consider what has prevented
> -std=gnu99 or -std=gnu2x etc.

The C standard has nothing to do with this. We use compiler extensions
of several kinds, for many years. Even discounting those extensions,
the kernel is not even conforming to C due to e.g. strict aliasing. I
am not sure what you are trying to argue here.

But, since you insist: yes, the `fallthrough` attribute is in the
current C2x draft.

Cheers,
Miguel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
