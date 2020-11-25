Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9BC2C4C46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 01:48:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06D6D87622;
	Thu, 26 Nov 2020 00:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WfXbm+FALRBy; Thu, 26 Nov 2020 00:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A5D1875C7;
	Thu, 26 Nov 2020 00:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0924F1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE6942E13C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTdw+9A3tXcD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Nov 2020 22:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F3AC2E12A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:09:41 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id l11so107195plt.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 14:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ob3FEJdYP5qhdHPeLajEb6PUDm9frxLF1mdXzRdH3M=;
 b=L3KZpP3LXxZlW/DP5AmTnD4MuZ72/rcy+coOeUVeCNTiwrWtzoVQx/hBMoKUsqDMm0
 Foet9vcyJsJZ2PSgueU+Q+MvDj0KUWyeWX5guwBWRMdbnXZ08cX56htqXhsZrxHUuRIn
 vYFnIpmbgrasg1vSD5AH5hKwOy9NejMhVovtjBrzY+2P0ug3w3+5RlYsOk03C83VD9da
 OdGtf9c6uotPHdYcmuyOqbnF5k3fP8Yo6l5eFDVR7n6m5okfFX1oHlXNOB3u6UsnrVGE
 wa6MluYkHn1XOYZTDyrE2KQmcun7Qe6vVmhaYurLDnZVMQG/lFJsGakXcuEY3+Obie2U
 RVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ob3FEJdYP5qhdHPeLajEb6PUDm9frxLF1mdXzRdH3M=;
 b=AEMGvEj52b3lkZXPaAZtWEj+2SRcPmtVf04CJrIttiyS8B2s14EVot6R62mQr2NzbK
 aGTmjiCz4PcCvwxEYyKUDtdMuORJmOoTs6mP+xsmAS0SaxaHOupjRaBJyvrNV+dZmNnf
 434l+2MpSxR1gQ8OUUL073Ct8cAGUx98yg+odSYwr4XXcuouWyRz1MEn4xtA6tQmroks
 8W4+6O4uDW/WuIKXgo2oyjeSDM/rZgQvUTFDbGkMQPKlaeYFHDw3uZD4R1PH3O6Dxu+p
 ArxXaB4mew0578pahwA4ExK5Akdt3/jFFw/Z/5CF9l160qHozAN3eQI8OVaiSINeMOn6
 aqmA==
X-Gm-Message-State: AOAM5308azkEV/l6MUnMbDUd1zjcOrmP+xo9Te5OanjzGJ/N8yocTm5V
 ocR170yD2X+lBMOuUu4KfVv3ReZb5LR+pxvIv9zAUA==
X-Google-Smtp-Source: ABdhPJz8lLt/1COGEMpWkFDfyIK6h7HwbxIAa+xtHaAqLUfnjsVh22wexUgkVgdtXLczfRnuDI51yr8PXCWqKuZKul4=
X-Received: by 2002:a17:902:c14a:b029:d8:dc05:d7ef with SMTP id
 10-20020a170902c14ab02900d8dc05d7efmr4885886plj.83.1606342180784; Wed, 25 Nov
 2020 14:09:40 -0800 (PST)
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
 <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
 <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
 <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 25 Nov 2020 14:09:29 -0800
Message-ID: <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
To: Finn Thain <fthain@telegraphics.com.au>
X-Mailman-Approved-At: Thu, 26 Nov 2020 00:48:08 +0000
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
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
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 usb-storage@lists.one-eyed-alien.net, linux-mmc@vger.kernel.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, linux-ext4@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netfilter-devel@vger.kernel.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 selinux@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-can@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-watchdog@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com,
 Joe Perches <joe@perches.com>, linux-integrity@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 25, 2020 at 1:33 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> Or do you think that a codebase can somehow satisfy multiple checkers and
> their divergent interpretations of the language spec?

Have we found any cases yet that are divergent? I don't think so.  It
sounds to me like GCC's cases it warns for is a subset of Clang's.
Having additional coverage with Clang then should ensure coverage for
both.

> > This is not a shiny new warning; it's already on for GCC and has existed
> > in both compilers for multiple releases.
> >
>
> Perhaps you're referring to the compiler feature that lead to the
> ill-fated, tree-wide /* fallthrough */ patch series.
>
> When the ink dries on the C23 language spec and the implementations figure
> out how to interpret it then sure, enforce the warning for new code -- the
> cost/benefit analysis is straight forward. However, the case for patching
> existing mature code is another story.

I don't think we need to wait for the ink to dry on the C23 language
spec to understand that implicit fallthrough is an obvious defect of
the C language.  While the kernel is a mature codebase, it's not
immune to bugs.  And its maturity has yet to slow its rapid pace of
development.
-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
