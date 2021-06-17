Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1CE3ABCEC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 21:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 799CE421E6;
	Thu, 17 Jun 2021 19:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hM1b8Emueloo; Thu, 17 Jun 2021 19:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 415A0421E3;
	Thu, 17 Jun 2021 19:35:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD0DD1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C91EA421E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2DOjOJlcErz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 19:35:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 154C7421E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:35:15 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2601:281:8300:104d:444a:d152:279d:1dbb])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id A93469A9;
 Thu, 17 Jun 2021 19:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net A93469A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1623958514; bh=Ob76x7fxQDpyGJnHa31xoDRYOIjUeb2UTOSmumypFGM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Wl987n+7qTGE/KOM2prVX9YDpbSt8wwuxgz0twwMYYpUJfEgudq12x+JUN63FHKBC
 CtHRaIFZiFgQfgOh2IGa26RFx/+yx5WFl1FJ3X9RmhWnPhOTok8vOP8kjPHWKONWZZ
 J9uKe8iXDnLzd3wYdgPwEZITwVLlffEj9pCjBHFFV8FbAIBnjAl54FTCMJdEVGZLRi
 8qrb9j/kiT9YV85XXtje09nGoQZCBZ+HlYUIYKCAsrnZj5XL4gk0A0zDK8yV1vdlAU
 y7uxQWkMhnNl/RQMgdBd0wpzPDnRSWUieK0ts+R755yHXeeIfQfoRF3d5zda2F/niH
 07rNDop6MQbfA==
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>
In-Reply-To: <cover.1623826294.git.mchehab+huawei@kernel.org>
References: <cover.1623826294.git.mchehab+huawei@kernel.org>
Date: Thu, 17 Jun 2021 13:35:14 -0600
Message-ID: <87lf78thcd.fsf@meer.lwn.net>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 0/8] Replace some bad characters on
 documents
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
Cc: linux-ext4@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-pci@vger.kernel.org,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 linux-kernel@vger.kernel.org, Thorsten Leemhuis <linux@leemhuis.info>,
 linux-usb@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Dilger <adilger.kernel@dilger.ca>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:

> Hi Jon,
>
> This series contain the remaining 8 patches I submitted at v3 that
> weren't merged yet at -next.
>
> This series is rebased on the top of your docs-next branch.
>
> No changes here, except by some Reviewed/ack lines, and at the
> name of the final patch (per PCI maintainer's request).

Applied, thanks.

jon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
