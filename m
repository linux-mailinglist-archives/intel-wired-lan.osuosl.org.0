Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 209542044A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 01:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8356D86E96;
	Mon, 22 Jun 2020 23:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KurqhUqRkGWM; Mon, 22 Jun 2020 23:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C952386D2E;
	Mon, 22 Jun 2020 23:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB0EC1BF958
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B601789361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bb+clsknu+th for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 22:49:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5AC2289351
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:49:47 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4719B2073E;
 Mon, 22 Jun 2020 22:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592866187;
 bh=2V6HAjG7opCc+ZDYvmLhiL4vCmwHjAGV4dXL2KgDUgU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pxkH1O/E5nimem1BAuyNZBPi7mq7aD5aqD4q3UynCIiX/IxGBdHGVz0HjWSEK72XO
 kwL+VVhb7zOH+Qj+fSgW/LJWeo7ZWtY/+tClGqJ8CG3lvnnheEOHUHc4vtBikwCwBW
 Oa1T8C9mi3Yc12/7OoPuIjNMjbf7DFepGPEdZl9o=
Date: Mon, 22 Jun 2020 15:49:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Message-ID: <20200622154943.02782b5a@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200622100056.10151-4-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
 <20200622100056.10151-4-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 23:46:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH 03/11] net: devres: relax
 devm_register_netdev()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 devicetree@vger.kernel.org,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 22 Jun 2020 12:00:48 +0200 Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This devres helper registers a release callback that only unregisters
> the net_device. It works perfectly fine with netdev structs that are
> not managed on their own. There's no reason to check this - drop the
> warning.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

I think the reasoning for this suggestion was to catch possible UAF
errors. The netdev doesn't necessarily has to be from devm_alloc_* 
but it has to be part of devm-ed memory or memory which is freed 
after driver's remove callback.

Are there cases in practice where you've seen the netdev not being
devm allocated?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
