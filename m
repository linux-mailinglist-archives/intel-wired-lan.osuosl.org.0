Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C1F2C11D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 18:22:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67B1B203DA;
	Mon, 23 Nov 2020 17:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l2-b5oBWjx99; Mon, 23 Nov 2020 17:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAE5B204BE;
	Mon, 23 Nov 2020 17:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E56C81BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 16:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFFD42049C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 16:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YOAzQd5EVRE0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 16:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CA6C920429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 16:25:03 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 79so16412474otc.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 08:25:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SWzdE85KMSmQ5K6aYMgWVQjn8/tst2VI3dLUnv/55SM=;
 b=HpWCv6aKnPz4EwM9ojxne1u0rg2fnxfpyAdFJ4IbVgnIs3sj2lqirz2e+UKByt0u+q
 z5xuMPAQP5nbqy/aQVkLqXhlYtqWe9PYlnqh6d5rJ1kDGjkXxwC1sf84gi7ZNigpQu1u
 bsaD39NbPeNAU8ztR3Za38R1IfkJ9pYlSU2Q4PvTu4DoUrFXc7gs+caX5rIsTMWinnEM
 jePT+mmob2N4J9ocRxJNnAAxQbfI65hfsWhiIaErvKswHHmwOfOiHKU1EgHyakCKjTFA
 R9e4xn5BxvBd5/V5SZT6Aq2aC8oWS3ko0qas6hxG7Ao9p6EMGUYjrlwOXLN/r+L4rpRv
 N4Yw==
X-Gm-Message-State: AOAM531QwuQtk/Leqiswa9f1hpUM1A/efAkEF9PxbK9cN8lNDu/l7ah7
 HsIuYShweV7N6ft7zF/UJ2JB+9alsE4+szk+i5k=
X-Google-Smtp-Source: ABdhPJxW9u67TbnPp8ObIChv5a6F+ncd8SoV+BFvs894Bl4MJzyAX0TVAjkpawJr+z1OvIzzPyEcIsCefAg0WelXSFg=
X-Received: by 2002:a9d:16f:: with SMTP id 102mr68959otu.206.1606148702991;
 Mon, 23 Nov 2020 08:25:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
In-Reply-To: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 23 Nov 2020 17:24:51 +0100
Message-ID: <CAJZ5v0jJ6GFm4LFCR2V3qvD9rZrVw=pXyXSjSWPYtQudg-F3xg@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Mailman-Approved-At: Mon, 23 Nov 2020 17:22:07 +0000
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, samba-technical@lists.samba.org,
 linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 "open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, linux-geode@lists.infradead.org,
 linux-can@vger.kernel.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 xen-devel@lists.xenproject.org, nouveau <nouveau@lists.freedesktop.org>,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc <linux-mmc@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-sctp@vger.kernel.org,
 "open list:ULTRA-WIDEBAND \(UWB\) SUBSYSTEM:" <linux-usb@vger.kernel.org>,
 netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Mon, 2020-11-23 at 15:19 +0100, Miguel Ojeda wrote:
> > On Sun, Nov 22, 2020 at 11:36 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:

[cut]

> >
> > Maintainers routinely review 1-line trivial patches, not to mention
> > internal API changes, etc.
>
> We're also complaining about the inability to recruit maintainers:
>
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
>
> And burn out:
>
> http://antirez.com/news/129

Right.

> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches ... I'm pushing back
> on that assumption in two places, firstly the valulessness of the time
> and secondly that all trivial patches are valuable.
>
> > If some company does not want to pay for that, that's fine, but they
> > don't get to be maintainers and claim `Supported`.
>
> What I'm actually trying to articulate is a way of measuring value of
> the patch vs cost ... it has nothing really to do with who foots the
> actual bill.
>
> One thesis I'm actually starting to formulate is that this continual
> devaluing of maintainers is why we have so much difficulty keeping and
> recruiting them.

Absolutely.

This is just one of the factors involved, but a significant one IMV.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
