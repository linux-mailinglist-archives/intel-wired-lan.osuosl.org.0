Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 574F24F025
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 22:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F323D22668;
	Fri, 21 Jun 2019 20:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fotiPy-XAr-n; Fri, 21 Jun 2019 20:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BD352264A;
	Fri, 21 Jun 2019 20:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEB2D1BF359
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 13:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9E85221BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 13:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3k5ohmEezrV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 13:47:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id ABDFE20378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 13:47:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F07E2206B7;
 Fri, 21 Jun 2019 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561124862;
 bh=pNldUrqmJvya/Uwu9bDRmh68i2HgU65QwS4iKeIec5c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oCKJQsAxHNH+eZZtSWdAK01ZD+7IvrRz9N0tstd1wnfuSwvYFeU40smNuMdeKIVTq
 DH83XTjHwc5jLQEnTUBzj5OGl7VYS4dga6Adwzlz0s+q2BAxCGZrUvQGe0EuRQJofj
 ZmoAtS0rnjTz1nWMkoe70INYL2oQmlD9uyy3Fql8=
Date: Fri, 21 Jun 2019 15:47:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190621134740.GA26549@kroah.com>
References: <cover.1560890800.git.mchehab+samsung@kernel.org>
 <0ac41c7d682452cdbd867c4ae7729b6b34d79c0b.1560890800.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ac41c7d682452cdbd867c4ae7729b6b34d79c0b.1560890800.git.mchehab+samsung@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Approved-At: Fri, 21 Jun 2019 20:52:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 09/29] docs: driver-model: convert
 docs to ReST and rename to *.rst
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
Cc: linux-hwmon@vger.kernel.org, Julia Lawall <Julia.Lawall@lip6.fr>,
 Jean Delvare <jdelvare@suse.com>, Gilles Muller <Gilles.Muller@lip6.fr>,
 Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Nicolas Palix <nicolas.palix@imag.fr>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michal Marek <michal.lkml@markovi.net>, intel-wired-lan@lists.osuosl.org,
 linux-gpio@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 cocci@systeme.lip6.fr, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2019 at 05:53:27PM -0300, Mauro Carvalho Chehab wrote:
> Convert the various documents at the driver-model, preparing
> them to be part of the driver-api book.
> 
> The conversion is actually:
>   - add blank lines and identation in order to identify paragraphs;
>   - fix tables markups;
>   - add some lists markups;
>   - mark literal blocks;
>   - adjust title markups.
> 
> At its new index.rst, let's add a :orphan: while this is not linked to
> the main index.rst file, in order to avoid build warnings.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com> # ice

Now applied, thanks.

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
