Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 976654C7AAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 21:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B97760E59;
	Mon, 28 Feb 2022 20:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfK4uOirix7J; Mon, 28 Feb 2022 20:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1392860E5F;
	Mon, 28 Feb 2022 20:41:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 660531BF255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FDF44092B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux-foundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6__gpVkjruW3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 20:41:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9695A4091E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:41:32 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id g20so19293855edw.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qhbC6eV8gO++7ErI4p8jtmcwHU0MP2/Ov9cpdMFArow=;
 b=WVa5dIiqx38h7wrDwDC1XUsKJKiBFCag4a2cDDwm9PX3cUtT8qqZ7IT4jQUgf/P4m+
 SFGMe+WsS02R4cGzO91FNZKGdT/lUA2soxV9cxmDWvmKG61T36jSK+GypeHu4wmj47J3
 J2dEWo9WRu5EKgz1ZgjNDbSUreOeJ25KIOWY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qhbC6eV8gO++7ErI4p8jtmcwHU0MP2/Ov9cpdMFArow=;
 b=eqH/BjZWP1To2voqOKahSTymseqUsRt7jO9dToEefdO2vhxFCumaoHSoNjy+ITU7gD
 HIP1nnZqtGSrFi/a4Cy99LyuXKQm8Lr6zKuXCkYNf8QYIBEhaCwLG19Vax497RSD/9Ka
 aoOxIOOa5yptYlvmUDX0A+BO9j5bGe1CemyirEMIoaM/Tt7mB1WmIUWwVGvpNE20p7HL
 IfB+vR0qmXO/8FX7pAro5AVRoCTBXiDT6uUhuGxcTk0Zxrb9euaMsVpMmbl23NAXnF1c
 hMNNk8lPEIgt5HZqUIuOF41r8i3dUatqMnroyIQiXNEEMNO+pKvlZu+6OV2NhF50wTpI
 1jwQ==
X-Gm-Message-State: AOAM533xh6Yzl//vfoocXKtnUCE6svLAwjs6iDqjElbIwcDkZc7ZjegX
 qhtsprWxVl4O8PyrgXAIKzQIvyplXwuvy/6omPQ=
X-Google-Smtp-Source: ABdhPJyyeytyIFxo6xszWK9CT8e4RP3qdekcQxysrGnkaIC5bOnzFGOuLA2MxCz61cclIvj301R58g==
X-Received: by 2002:a05:6402:1bc7:b0:413:7273:770c with SMTP id
 ch7-20020a0564021bc700b004137273770cmr16823653edb.379.1646080890498; 
 Mon, 28 Feb 2022 12:41:30 -0800 (PST)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com.
 [209.85.218.49]) by smtp.gmail.com with ESMTPSA id
 lu14-20020a170906face00b006ce375399b6sm4666746ejb.28.2022.02.28.12.41.28
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 12:41:28 -0800 (PST)
Received: by mail-ej1-f49.google.com with SMTP id a8so27285250ejc.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:41:28 -0800 (PST)
X-Received: by 2002:a05:6512:e8a:b0:443:7b8c:579a with SMTP id
 bi10-20020a0565120e8a00b004437b8c579amr13784522lfb.687.1646080877791; Mon, 28
 Feb 2022 12:41:17 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
 <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
 <Yh0tl3Lni4weIMkl@casper.infradead.org>
 <e3bb7d0632f8ef60f18c19976d57330e1ef00584.camel@sipsolutions.net>
In-Reply-To: <e3bb7d0632f8ef60f18c19976d57330e1ef00584.camel@sipsolutions.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 12:41:01 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjNgWNa9njuBJEoafc-cRV3SbzZfh3m5YfxcZxdCw3+XQ@mail.gmail.com>
Message-ID: <CAHk-=wjNgWNa9njuBJEoafc-cRV3SbzZfh3m5YfxcZxdCw3+XQ@mail.gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
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
 Cristiano Giuffrida <c.giuffrida@vu.nl>, Matthew Wilcox <willy@infradead.org>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, "Bos, H.J." <h.j.bos@vu.nl>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
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

On Mon, Feb 28, 2022 at 12:29 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> If we're willing to change the API for the macro, we could do
>
>   list_for_each_entry(type, pos, head, member)
>
> and then actually take advantage of -Wshadow?

See my reply to Willy. There is no way -Wshadow will ever happen.

I considered that (type, pos, head, member) kind of thing, to the
point of trying it for one file, but it ends up as horrendous syntax.
It turns out that declaring the type separately really helps, and
avoids crazy long lines among other things.

It would be unacceptable for another reason too - the amount of churn
would just be immense. Every single use of that macro (and related
macros) would change, even the ones that really don't need it or want
it (ie the good kinds that already only use the variable inside the
loop).

So "typeof(pos) pos" may be ugly - but it's a very localized ugly.

                    Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
