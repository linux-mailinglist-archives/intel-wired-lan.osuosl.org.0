Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF03D2A19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 14:55:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 978CE86B8C;
	Thu, 10 Oct 2019 12:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZX5HlXXGiQDQ; Thu, 10 Oct 2019 12:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78C4486BA5;
	Thu, 10 Oct 2019 12:55:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8820E1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 12:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8176A86B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 12:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocFPYWIdeE69 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2019 12:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 779F986B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 12:55:40 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 77A71998;
 Thu, 10 Oct 2019 12:55:39 +0000 (UTC)
Date: Thu, 10 Oct 2019 06:55:38 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Message-ID: <20191010065538.62c14aed@lwn.net>
In-Reply-To: <20191009154803.34e21bae@cakuba.netronome.com>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
 <20191002.172526.1832563406015085740.davem@davemloft.net>
 <20191003082953.396ebc1a@lwn.net>
 <20191009154803.34e21bae@cakuba.netronome.com>
Organization: LWN.net
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, j.neuschaefer@gmx.net,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 drivers@pensando.io, snelson@pensando.io, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 9 Oct 2019 15:48:03 -0700
Jakub Kicinski <jakub.kicinski@netronome.com> wrote:

> Hi Jon, I think Dave intended a few more patches to go via the doc
> tree, in particular:
> 
>  docs: networking: devlink-trap: Fix reference to other document
>  docs: networking: phy: Improve phrasing
> 
> Looks like those went missing. Would you mind taking those, or
> would you prefer for them to land in the networking trees?

Not missing, just sitting in a folder waiting for me to get back to
dealing with the queue.  I'll get caught up soon.

jon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
