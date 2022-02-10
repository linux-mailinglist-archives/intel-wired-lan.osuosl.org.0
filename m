Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A23D4B19DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 00:55:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 381E9827A5;
	Thu, 10 Feb 2022 23:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id urAzgXB9zL-I; Thu, 10 Feb 2022 23:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF5FB82977;
	Thu, 10 Feb 2022 23:55:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0930A1BF487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04B4660B1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yj_d0xX2b8Rh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 23:53:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59F1B606A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:53:42 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id c188so9471276iof.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=dlcn0c8FYc7DODG7QrUeh/RDtAB+I+F4Kdfoio51FaI=;
 b=pT8V02cRnyvge4g/jEw/vfDpSCJQ6mG8f5/2aDrsolSd6MEJ2MeTditvg5HTS3jTiY
 WtGZZX0/SoKQZhzIgkP9n0Dcpz+r0Ry6EqlDS1ADj+r+2ulVo+sw3mWYm6spJo0j4izv
 N1Ts5gZLSbXcfXixzzF1vDOzXCcZZGoO1De22gzUYl4uxS93hxyIA0QHPiwWxW7NznE1
 lewNaZm3nBzJFJx6tYvobMi78QVigZ22b58D/vnMuMkpRkUzPV6fqocJUenoiOeZYDlQ
 W543WAQd+q0/+WonyRm+lCqOpJHOTkjXAKKjvaVnXKxFWTPxKbP0S6V7BC0ngGjwAxig
 dinw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dlcn0c8FYc7DODG7QrUeh/RDtAB+I+F4Kdfoio51FaI=;
 b=YxwDZ6DGseitipMsXCSMAAnaVi3tFTUMF/LIhDD3+sGIO5AH/F7LWP8pJ0SgOVdPvm
 ziVk8NYBwdbUC/s8N9z0zwc/jJcsbItpdDRU6V5ZTPZxG1SgsmB8j9k3JzqzgOjlYXTX
 JOUyo4U5qKfgIE19S7cIe23lYy7qOF4qM8uTMTxBnhhP3+JK0vSPqYTHnGenivJnDiWr
 fbWxvxIUePD3X7p8lD9KxfottoTjiKaWqs8KD54LfUwYlBiaMa4lEWGw4Ilo4vEaRYeH
 65A0T8KK5/Chy7fwUDNaZj1QxlJosNgLSlsuibK6XYlBVx5Hm/2ga1/u000w8SpSQgCa
 ufaw==
X-Gm-Message-State: AOAM530g0XVKkkFtMMjMDiWHsxubpQXE7JYdjlNEBfFCIq5l9U1Mou3e
 joRLwW3Qs0NL7zDhss9TWkQ=
X-Google-Smtp-Source: ABdhPJy1cnRyAEVSz8FK6oisjYTOYyOW5apveqRHtmqXfgAdrv7GPswYZO2OmUFJkYqdisR1K1A0IQ==
X-Received: by 2002:a05:6602:2c8d:: with SMTP id
 i13mr5215640iow.181.1644537221384; 
 Thu, 10 Feb 2022 15:53:41 -0800 (PST)
Received: from localhost ([12.28.44.171])
 by smtp.gmail.com with ESMTPSA id e17sm11144879ilm.67.2022.02.10.15.53.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 15:53:41 -0800 (PST)
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <yury.norov@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 David Laight <David.Laight@aculab.com>, Joe Perches <joe@perches.com>,
 Dennis Zhou <dennis@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Nicholas Piggin <npiggin@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Alexey Klimov <aklimov@redhat.com>, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Thu, 10 Feb 2022 14:49:12 -0800
Message-Id: <20220210224933.379149-29-yury.norov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220210224933.379149-1-yury.norov@gmail.com>
References: <20220210224933.379149-1-yury.norov@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 10 Feb 2022 23:55:01 +0000
Subject: [Intel-wired-lan] [PATCH 28/49] iio: replace bitmap_weight() with
 bitmap_weight_{eq, gt} where appropriate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

drivers/iio calls bitmap_weight() to compare the weight of bitmap with
a given number. We can do it more efficiently with bitmap_weight_eq
because conditional bitmap_weight may stop traversing the bitmap earlier,
as soon as condition is (or can't be) met.

Signed-off-by: Yury Norov <yury.norov@gmail.com>
---
 drivers/iio/industrialio-trigger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/industrialio-trigger.c b/drivers/iio/industrialio-trigger.c
index f504ed351b3e..98c54022fecf 100644
--- a/drivers/iio/industrialio-trigger.c
+++ b/drivers/iio/industrialio-trigger.c
@@ -331,7 +331,7 @@ int iio_trigger_detach_poll_func(struct iio_trigger *trig,
 {
 	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(pf->indio_dev);
 	bool no_other_users =
-		bitmap_weight(trig->pool, CONFIG_IIO_CONSUMERS_PER_TRIGGER) == 1;
+		bitmap_weight_eq(trig->pool, CONFIG_IIO_CONSUMERS_PER_TRIGGER, 1);
 	int ret = 0;
 
 	if (trig->ops && trig->ops->set_trigger_state && no_other_users) {
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
