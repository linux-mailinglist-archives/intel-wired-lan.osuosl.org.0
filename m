Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1D520AA6C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 04:17:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9D7E88293;
	Fri, 26 Jun 2020 02:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v949fGS8Pz5x; Fri, 26 Jun 2020 02:17:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE0768829B;
	Fri, 26 Jun 2020 02:17:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E827D1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 09:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0CEA86365
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 09:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2h9RxehJB3nt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2020 09:16:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0F03861EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 09:16:14 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id c4so5296546iot.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 02:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XiSuE1sOXIBipbRmQaXWKIM5hIBA/1GaMgH8/QBx+Fg=;
 b=iB+W7XizU/ZyE68RYq0Wy4WGwaVug8o35XV3WoVujzhd4fj/jviokDCLfKsAQNC/CD
 MyjHMfGahHsCmh+oNfL4i4fg/Hb/6rvxRKd7w2PvYmqMcysZPcQJBmTMsBPhx+WOoEsx
 sYURxtLFEFzEW28VjADaxTZh/LDWcFA4+Q7lAQjdn+vsj3IgSUam5KQTIduedT/ZowyW
 BerGQgVSZmKKMJoRZikaa7enYMqpZrY1zQ9+Qw8deZc/FMtg+PJ/JBKKtQRGBgloKC7o
 MRB8xVCpEPuusL9dD5xscCw3iNFGIq00p9DefAs9DqKlrMYOfvBO4YsPKk+Q8tJ/ZxEN
 w2CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XiSuE1sOXIBipbRmQaXWKIM5hIBA/1GaMgH8/QBx+Fg=;
 b=Wn/NIsOm6QW4xMWWI23+co/uK+1D9RqPtpz2Jg+3GtWxNv3NUCW3olS1E/thjZfpnQ
 5AybjAIWH8XNbneoJkbz1BeDhYcwRamUv16FKIVtbG8e+UbmQSQbJk48uKghoOwJjlcn
 1aPHd569BJPzE5Ca0uoojpheHCjpcdQ1L1Z8Tf1jm3gqVN8YmVufX2SXZRdWfZz5jiuu
 lTvyOI03OBozU+lJ+Qnr2fNfrYVprYrMrTB9h1sZcATV1SQeootd+q+1nX3Z30pZOtzo
 tiwU2d5dyghZNujlG+8W6JKwDkTcQwk8IqPbmHT2TgkHnsipiyhAPngbh0qaDccnvTYj
 uWow==
X-Gm-Message-State: AOAM531EzD6w1cjhNNBzraI1Ecmpv1lmpOkrZxbHtfrd3AjY+qcp5Zr2
 NGU5xt//GuJgdfB450QQlZExOCVN6KHYRuSRqHa9ZA==
X-Google-Smtp-Source: ABdhPJxfpwzz3MthY2lWlmiAjEp1yFspUytO7/QblbPNv/YGcRZeoCZxvPdkVQWmmMe0TIcWMFI5nbF4CoLcMrctrC0=
X-Received: by 2002:a02:ac8e:: with SMTP id x14mr71189jan.57.1593076573834;
 Thu, 25 Jun 2020 02:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200622100056.10151-1-brgl@bgdev.pl>
 <20200622100056.10151-7-brgl@bgdev.pl>
 <39e761f3-6607-d209-61df-535330f50db3@gmail.com>
In-Reply-To: <39e761f3-6607-d209-61df-535330f50db3@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 25 Jun 2020 11:16:02 +0200
Message-ID: <CAMRc=MfE9JjNiZr9_nL37Zbgz_OpKXW1sbdWvbTeq2_orOBKAw@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailman-Approved-At: Fri, 26 Jun 2020 02:17:55 +0000
Subject: Re: [Intel-wired-lan] [PATCH 06/11] phy: un-inline
 devm_mdiobus_register()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc <linux-doc@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Frank Rowand <frowand.list@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, devicetree <devicetree@vger.kernel.org>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 23, 2020 at 1:55 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 6/22/20 3:00 AM, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> >
> > Functions should only be static inline if they're very short. This
> > devres helper is already over 10 lines and it will grow soon as we'll
> > be improving upon its approach. Pull it into mdio_devres.c.
> >
> > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > ---
> >  drivers/net/phy/Makefile      |  2 +-
> >  drivers/net/phy/mdio_devres.c | 18 ++++++++++++++++++
> >  include/linux/phy.h           | 15 ++-------------
> >  3 files changed, 21 insertions(+), 14 deletions(-)
> >  create mode 100644 drivers/net/phy/mdio_devres.c
>
> This would likely require an update to the MAINTAINERS file for this new
> file to be picked up by the correct entry.

It's already included in drivers/net/phy/ in the ETHERNET PHY LIBRARY entry.

Bartosz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
