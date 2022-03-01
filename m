Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B75914C7FF9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 02:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DFD240943;
	Tue,  1 Mar 2022 01:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WufnVPU9nbN3; Tue,  1 Mar 2022 01:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0111140761;
	Tue,  1 Mar 2022 01:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DAF61BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 01:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1876260B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 01:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux-foundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odC9s8SMLQJ6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 01:04:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39F736074C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 01:04:03 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id f37so24269528lfv.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 17:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+UrwimTIhzKiU9pJv3o5X6bf+6FXMWBGxz+Z+GIIGDc=;
 b=avIYh8aQ2dDobwKAVUmxzj/7dS14/rGtEVGY0pMiaJUsHbP3qIU6kno3XMfBz/RlQM
 DBr9tOtZ8iqO/uKNwSujAwo9mle8zBl2HT1HDuvvvRH+Bqr8BYPzCJojUUOk2VYbR5wW
 hMzIeM3di7snjNNfrAaBZvtX47IfluwYB/RPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+UrwimTIhzKiU9pJv3o5X6bf+6FXMWBGxz+Z+GIIGDc=;
 b=ONr2Z4M8PDK5pYIZMyldetI7YuOOYN+xdLPffyvqXLu+y1j8ZfWlqk1Fd+1YRI5abP
 9fe1r8dSTmRsNfsTOk3/0adZ8csJD9VHc+SJYoZoHaVWB00Clho01yOitOSB2eZsI2x8
 HsRX0BJtH0On0wbT1fSbQOmtY3SyjGvqX0gmeAh3eHEs0T62FVs+4WNd6x8V6OJ6dvcz
 SBilWdAGJVw8jaQbd2rJUN70J2dOeow5rZkxk05+mrWVtEnSBaZ0s0d3+UNW0I0hPQ3j
 yp/lTwyjBs2b1RdRPBk5cbV2+jdFq4QOWo5g96cDnKjKZzCUH73Px5hqAz+nSi3DPpav
 MK2A==
X-Gm-Message-State: AOAM5300VFJiLulD8AJHnCmZjzZ8z07lANFoR/O3F6yif+9oJKKOR/wu
 MSV4Y4AcTuaHOavEqtuaOh8ArnEfKjrJFkqevBs=
X-Google-Smtp-Source: ABdhPJw0N777CO/ExgKDmm8WVtrtGnL9/nnMd37l7pXRwLmI7HjSaCucTFkA2wNlwI4wBri+F6GMrg==
X-Received: by 2002:a05:6512:3d04:b0:436:b2ac:9e63 with SMTP id
 d4-20020a0565123d0400b00436b2ac9e63mr14437153lfv.549.1646096641005; 
 Mon, 28 Feb 2022 17:04:01 -0800 (PST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48]) by smtp.gmail.com with ESMTPSA id
 bu20-20020a056512169400b0043eaf37af75sm1213371lfb.199.2022.02.28.17.04.00
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 17:04:00 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id b9so24346211lfv.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 17:04:00 -0800 (PST)
X-Received: by 2002:a05:6512:3042:b0:437:96f5:e68a with SMTP id
 b2-20020a056512304200b0043796f5e68amr14803965lfb.449.1646096282839; Mon, 28
 Feb 2022 16:58:02 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
 <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
 <Yh0tl3Lni4weIMkl@casper.infradead.org>
 <CAHk-=wgBfJ1-cPA2LTvFyyy8owpfmtCuyiZi4+um8DhFNe+CyA@mail.gmail.com>
 <Yh1aMm3hFe/j9ZbI@casper.infradead.org>
 <CAHk-=wi0gSUMBr2SVF01Gy1xC1w1iGtJT5ztju9BPWYKjdh+NA@mail.gmail.com>
In-Reply-To: <CAHk-=wi0gSUMBr2SVF01Gy1xC1w1iGtJT5ztju9BPWYKjdh+NA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 16:57:46 -0800
X-Gmail-Original-Message-ID: <CAHk-=whqJmCZ+VHTJPwsHYc1YNNEvWS7=ukqGKfBxcBYAToAkw@mail.gmail.com>
Message-ID: <CAHk-=whqJmCZ+VHTJPwsHYc1YNNEvWS7=ukqGKfBxcBYAToAkw@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 4:45 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Yeah, except that's ugly beyond belief, plus it's literally not what
> we do in the kernel.

(Of course, I probably shouldn't have used 'min()' as an example,
because that is actually one of the few places where we do exactly
that, using our __UNIQUE_ID() macros. Exactly because people _have_
tried to do -Wshadow when doing W=2).

                 Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
