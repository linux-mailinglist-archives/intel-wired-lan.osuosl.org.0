Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8B373664
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 20:14:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 366C187E5C;
	Wed, 24 Jul 2019 18:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tqa15KmhotsP; Wed, 24 Jul 2019 18:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AED9684ADE;
	Wed, 24 Jul 2019 18:14:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5EC81BF373
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 18:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E25AD204B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 18:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2r+Qzb719WMz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 18:14:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 59FFB203FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 18:14:38 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id F0DF3154086E4;
 Wed, 24 Jul 2019 11:14:35 -0700 (PDT)
Date: Wed, 24 Jul 2019 11:14:35 -0700 (PDT)
Message-Id: <20190724.111435.1790922345411569346.davem@davemloft.net>
To: hslester96@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190724060512.23899-1-hslester96@gmail.com>
References: <20190724060512.23899-1-hslester96@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 24 Jul 2019 11:14:36 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] Use dev_get_drvdata
 where possible
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
Cc: jcliburn@gmail.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 chris.snook@gmail.com, cooldavid@cooldavid.org, prashant@broadcom.com,
 linux-kernel@vger.kernel.org, siva.kallam@broadcom.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 michael.chan@broadcom.com, klassert@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Chuhong Yuan <hslester96@gmail.com>
Date: Wed, 24 Jul 2019 14:05:12 +0800

> These patches use dev_get_drvdata instead of
> using to_pci_dev + pci_get_drvdata to make
> code simpler where possible.
> 
> Changelog:
> 
> v1 -> v2:
> - Change pci_set_drvdata to dev_set_drvdata
>   to keep consistency.

Some of these patches were applied yesterday, weren't they?

Please take that into consideration when you repost, especially
when the maintainer(s) explicitly reply to your patches saying
"Applied." or similar like I always do.

Thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
