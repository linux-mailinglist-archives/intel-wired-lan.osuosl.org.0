Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 027952C1360
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 19:56:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8586204C4;
	Mon, 23 Nov 2020 18:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-DN7UQQRbGO; Mon, 23 Nov 2020 18:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6994E204B6;
	Mon, 23 Nov 2020 18:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7C31BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 18:56:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 060AA84FA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 18:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id case0mUyyju1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 18:56:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 309E284F35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 18:56:13 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id t33so16921842ybd.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 10:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KNG9rf3jiBLOHJ1Qe+5HClUHwDC8G2v5PJoNSRMQj2o=;
 b=ZA1WcoeOdsWbRfOoumZEJTLTRH6V2Lpq2CDbZ0VVs1hbOT/vd/v8/YkJaULhb4MkV5
 MHmDtgQZ7Y6vQOoRafNcjdab1m8jmYbh8Ox0xcyAJF866JXyArBCoNYzebFkQV1wRZF3
 r3hM3WSnIq7Ht5VQ2PIwvurJMfamtV7PLgYZxEoHoT74qEv3IGeXPryfDRdu7AW/qetQ
 L1ocOXaYsoIrsq1AVQ8cgaa4G2qWRkZviQ+mOBHOVW/MFUti3ALLJAr2MKUeWh+s4BW6
 tAJsdEl41qUIuUvcW5DdLnVlmhWMC8lZFuXyyo4x1R3eX3DaWLHh1JzDrRZDt/CN6qga
 036w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KNG9rf3jiBLOHJ1Qe+5HClUHwDC8G2v5PJoNSRMQj2o=;
 b=lBLQLQpxoycK1wiKSX4XAJ56yJmeignR8ceof8q5+pu4d6oLQZyloOsXIwVgfQDfje
 WRvqbe+uw5XazLcUvXOiH/SXcEpA9rA/J9p2mBV5tpCI/ZTMxu8lwGwWtGtXi1hGq3eW
 0sQWz3Orfu721lXpr+LsCGxB36tt+XgRbWniGKPLEEj0pP6vCtKHP+cYN8tYc9u11Oph
 ix1IbMiphj2lV8pi2+iUU0hw45XftxH4aqQEKV9mNBy+mv2ONV7Ikmb5y6Lnbf31frXr
 pnaYF466AMQNchrUe2k5uio1z1ioulHp+wlnkkmvXRIzJ6KaQeE4E6ZeOGFH/lpHuEQQ
 t8jA==
X-Gm-Message-State: AOAM532FROb8e51f/7Z0bh29roFP+njBiS8PinQDnEvoFWVA+OQNMhoo
 cH7MRTmNcYqQ2KkCl3Jwp9d7UrF7UzKbpHLuN5I=
X-Google-Smtp-Source: ABdhPJyhWLCSkpSmtD0p55Cmpr9Ao1aJs0IYHWLu4Tcyj9q39OBvqgrIxMZMaEy7w1zacpD3mVr5R93EsjzwMBkGuSA=
X-Received: by 2002:a25:df55:: with SMTP id w82mr977719ybg.135.1606157772316; 
 Mon, 23 Nov 2020 10:56:12 -0800 (PST)
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
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 23 Nov 2020 19:56:01 +0100
Message-ID: <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Mailman-Approved-At: Mon, 23 Nov 2020 18:56:44 +0000
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
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
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
> Well, I used git.  It says that as of today in Linus' tree we have 889
> patches related to fall throughs and the first series went in in
> october 2017 ... ignoring a couple of outliers back to February.

I can see ~10k insertions over ~1k commits and 15 years that mention a
fallthrough in the entire repo. That is including some commits (like
the biggest one, 960 insertions) that have nothing to do with C
fallthrough. A single kernel release has an order of magnitude more
changes than this...

But if we do the math, for an author, at even 1 minute per line change
and assuming nothing can be automated at all, it would take 1 month of
work. For maintainers, a couple of trivial lines is noise compared to
many other patches.

In fact, this discussion probably took more time than the time it
would take to review the 200 lines. :-)

> We're also complaining about the inability to recruit maintainers:
>
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
>
> And burn out:
>
> http://antirez.com/news/129

Accepting trivial and useful 1-line patches is not what makes a
voluntary maintainer quit... Thankless work with demanding deadlines is.

> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches

I have not said that, at all. In fact, I am a voluntary one and I
welcome patches like this. It takes very little effort on my side to
review and it helps the kernel overall. Paid maintainers are the ones
that can take care of big features/reviews.

> What I'm actually trying to articulate is a way of measuring value of
> the patch vs cost ... it has nothing really to do with who foots the
> actual bill.

I understand your point, but you were the one putting it in terms of a
junior FTE. In my view, 1 month-work (worst case) is very much worth
removing a class of errors from a critical codebase.

> One thesis I'm actually starting to formulate is that this continual
> devaluing of maintainers is why we have so much difficulty keeping and
> recruiting them.

That may very well be true, but I don't feel anybody has devalued
maintainers in this discussion.

Cheers,
Miguel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
