Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CCACA056
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 16:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68441881CC;
	Thu,  3 Oct 2019 14:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cAxOApmx0dO1; Thu,  3 Oct 2019 14:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A4B0881B7;
	Thu,  3 Oct 2019 14:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1272B1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 14:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F440881CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 14:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKG4DwLyuHY5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 14:29:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7957B881BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 14:29:55 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 70EFC300;
 Thu,  3 Oct 2019 14:29:54 +0000 (UTC)
Date: Thu, 3 Oct 2019 08:29:53 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: David Miller <davem@davemloft.net>
Message-ID: <20191003082953.396ebc1a@lwn.net>
In-Reply-To: <20191002.172526.1832563406015085740.davem@davemloft.net>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
 <20191002.172526.1832563406015085740.davem@davemloft.net>
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
 drivers@pensando.io, snelson@pensando.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 02 Oct 2019 17:25:26 -0700 (PDT)
David Miller <davem@davemloft.net> wrote:

> Jon, how do you want to handle changes like this?

In whatever way works best.  Documentation should make our lives easier,
not get in the way :)

> I mean, there are unlikely to be conflicts from something like this so it
> could simply go via the documentation tree.
> 
> Acked-by: David S. Miller <davem@davemloft.net>

OK, I'll go ahead and apply it, then.

Thanks,

jon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
