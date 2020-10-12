Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2883D28B4CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 14:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B605687422;
	Mon, 12 Oct 2020 12:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rcoEzOxWZk3D; Mon, 12 Oct 2020 12:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EE2B873D5;
	Mon, 12 Oct 2020 12:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1790E1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 12:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 11F4A8687A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 12:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nsydb6fzRA2h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 12:44:46 +0000 (UTC)
X-Greylist: delayed 00:24:18 by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2CC1D86840
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 12:44:46 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q25so3413163ioh.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 05:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=codJjfFpUB7yFKdzDGxPNsE9k2tf5zO8nIAdm/LAccs=;
 b=ejNPyHqZIGbPK8xHeo6JPxYGNzlAzWvJ3L+GcKxz30BSfNkG18irpPNJ2ihA7Tev0l
 pLnjSe95AFAb4Ms5yh387lKw7dJU3mpzfraPwYnqiubqcsDccIUL+1/YMfO1OkwtW1gS
 6ezD0KCg0pSm91GHBV8I89C6kX6Op9XLljX5sZmciiYLOVnzC4hijM8AcQQrlGBxArvJ
 pvbNQ9Wijb4PBCaUbHh9JlCHB1lEUWBH3OQ23oB/cdQ8qWwJMrGcrzwm2eM0d6Fen6/J
 jCPxLNyUYATiBJx0OWR/OmAXCPJXm9K8upqzS3fNXKWrodkYC+ZzsPUestOFD7YNFLck
 MvQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=codJjfFpUB7yFKdzDGxPNsE9k2tf5zO8nIAdm/LAccs=;
 b=qPc+V9Ton5sIuwpvPwfTCc/jReYRg+MbsU52/v8iubIMajEEi+d7Un9NDmYCf7dVSa
 8eFynvVa/8UwQw2kGoC42zfJcFnTbdMDBJewhAnTLW9wOdcjE16K7oLRCs3r4XtptQTH
 pKNowA0fB3sVpmt17zEpwJZwdjqVX9zbN00eURkRsiADu7Ae9wXWsQs6OuYZE5R8aS1M
 1MFobi3dnLxiplLSxEJWCUbTTB65cszSW9Dh2vo275zdJ6qKrNnqSzyr4Y6FgSS/yeJE
 LZzcEL2j8zmBdHhScK3IsLSIwTW04G7ephUuotcl7DF7l4knQD+BIGVA0eETL5ld1HPs
 3U1g==
X-Gm-Message-State: AOAM5304jomQoCEAp6+vcUUCsZ34M3D3B8nEUPMJu5rnC/i5x2DxSdwQ
 H39Ctg5dA2zm6/tztUrgZk1ES+vCE5dZxhQlmizksEzbkGQ=
X-Google-Smtp-Source: ABdhPJzVhgjs7DEshXDI2I/lX0MRdzs4t+AubVA7E7D/6NsX+vf80BaRkSjcA4wLlIOYLXjLCnGQ4Sc6LInRamJkaeQ=
X-Received: by 2002:a92:b610:: with SMTP id s16mr15618441ili.6.1602505226974; 
 Mon, 12 Oct 2020 05:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200928071744.18253-1-brgl@bgdev.pl>
In-Reply-To: <20200928071744.18253-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 12 Oct 2020 14:20:16 +0200
Message-ID: <CAMRc=MexKweGRjF5KNg1saz7NmE+tQq=03oR3wzoMsaTcm+CAA@mail.gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: ixgbe: don't propagate
 -ENODEV from ixgbe_mii_bus_init()
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
Cc: netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Yongxin Liu <yongxin.liu@windriver.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 28, 2020 at 9:17 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> It's a valid use-case for ixgbe_mii_bus_init() to return -ENODEV - we
> still want to finalize the registration of the ixgbe device. Check the
> error code and don't bail out if err == -ENODEV.
>
> This fixes an issue on C3000 family of SoCs where four ixgbe devices
> share a single MDIO bus and ixgbe_mii_bus_init() returns -ENODEV for
> three of them but we still want to register them.
>
> Fixes: 09ef193fef7e ("net: ethernet: ixgbe: check the return value of ixgbe_mii_bus_init()")
> Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2f8a4cfc5fa1..d1623af30125 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11032,7 +11032,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>                         true);
>
>         err = ixgbe_mii_bus_init(hw);
> -       if (err)
> +       if (err && err != -ENODEV)
>                 goto err_netdev;
>
>         return 0;
> --
> 2.26.1
>

Hi!

Gentle ping for this patch. Who's picking up networking patches now
that David is OoO? Should I Cc someone else?

Bartosz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
