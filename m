Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F312C45AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Nov 2020 17:47:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AAD087674;
	Wed, 25 Nov 2020 16:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMTRG752Q4l2; Wed, 25 Nov 2020 16:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59A278757C;
	Wed, 25 Nov 2020 16:47:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1A961BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 10:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB75B86F87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 10:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpAVitLu7LCM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Nov 2020 10:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3BE3D86DB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 10:37:29 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id p6so909060plr.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 02:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lG3+Uwz8lZti6FSb8xjGyaQfdt5OwV03xvf6+L3ZqWc=;
 b=YCtEdyPA4vCzWZsMjIt3djSgR9gg7vMRhn3I5LT7lEmWHdT3b/jEkR0QdduouORJ7k
 kiuUl5RijkS3EJmc3PIdIbhuWrYEtLAccN+wdoprBDsU56ruoUGszfH1Sxvuy4WXIhMK
 0dDt7R//JtRYOU1+gQ96Rpa2FinP3O1pFccTMutbPTGjvqTac0chojMQO8cZdySzLIim
 HHsTKo91pUaUTwyxPnWizwDASocTC+n+eyDdN/HKPn9pe4V2vLDA/DOFrCcWbsrVXkvE
 5CsjPeXzCB0gF8EvrEVdW+qQjVnUcViOyjSAD57xy0gbwLs+FCHLejwxIxOdH/xJHiTG
 +NRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lG3+Uwz8lZti6FSb8xjGyaQfdt5OwV03xvf6+L3ZqWc=;
 b=VlcpfLKxrFEa0UsiCBUdYiynuKpiaRTXuC5xPPENzUj0yjwjDpn7DcCHT7YYRKaD4G
 DMQIil6zX+u22CBTv5WblvIt8bxvoeTlWYydAlWshmXP4+R3QhvUTfRjtP6dYMmogj/F
 m3aeD0Z0khNx5y0IZr+SgFftcG90IYzQwOU2baSBKOoWfAvgG2qe+Cdi/Io5yRrcmTt5
 K897NipG4YUP0aw0lCRFfnqoFt9o8YGLtEMMXuf7+e1bvZaqDW1YZeaF6IzFYKoaivoz
 I8tCOX+2hrBmJrxRlHSDFQXUP7UKD6f63dKLQEz6F9GUG4Mz5+rvtOzB/XRtxX/gfK2h
 /TWA==
X-Gm-Message-State: AOAM530434WUa7o2tOafpc+v0beTOEGez9hK2aJZ+OI4zrAVsZIjw/ey
 1zh5w98OePsg3BEXMxhf2r1Ii5aFNbUvpvT5zTI=
X-Google-Smtp-Source: ABdhPJzEY8ebPN4xZ4jf0ZFVw9i65L6qlCom+E751HZA34/qY3SkadUuuLf2HukIG4qONDPWI5feIsM1VQGLuSbFYSc=
X-Received: by 2002:a17:902:ead2:b029:da:2596:198e with SMTP id
 p18-20020a170902ead2b02900da2596198emr1937529pld.21.1606300648824; Wed, 25
 Nov 2020 02:37:28 -0800 (PST)
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
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
In-Reply-To: <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 25 Nov 2020 12:38:17 +0200
Message-ID: <CAHp75VfaewwkLsrht95Q7DaxFk7JpQjwx0KQ7Jvh5f7DUbZkRA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Mailman-Approved-At: Wed, 25 Nov 2020 16:47:02 +0000
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org,
 linux-iio <linux-iio@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 device-mapper development <dm-devel@redhat.com>, keyrings@vger.kernel.org,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 "open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module <linux-security-module@vger.kernel.org>,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input <linux-input@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 op-tee@lists.trustedfirmware.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
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
 USB <linux-usb@vger.kernel.org>, netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 target-devel <target-devel@vger.kernel.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 23, 2020 at 10:39 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2020-11-23 at 19:56 +0100, Miguel Ojeda wrote:
> > On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:

...

> > But if we do the math, for an author, at even 1 minute per line
> > change and assuming nothing can be automated at all, it would take 1
> > month of work. For maintainers, a couple of trivial lines is noise
> > compared to many other patches.
>
> So you think a one line patch should take one minute to produce ... I
> really don't think that's grounded in reality.  I suppose a one line
> patch only takes a minute to merge with b4 if no-one reviews or tests
> it, but that's not really desirable.

In my practice most of the one line patches were either to fix or to
introduce quite interesting issues.
1 minute is 2-3 orders less than usually needed for such patches.
That's why I don't like churn produced by people who often even didn't
compile their useful contributions.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
