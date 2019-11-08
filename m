Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF6AF3EA8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 05:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B224A2046B;
	Fri,  8 Nov 2019 04:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KzfDMxBTpcP; Fri,  8 Nov 2019 04:01:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B99AC2046F;
	Fri,  8 Nov 2019 04:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0224B1BF988
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 04:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1F8F87AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 04:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHksX8Ld+mUR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 04:01:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E22378790D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 04:01:32 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BA21F14F3AC23;
 Thu,  7 Nov 2019 20:01:31 -0800 (PST)
Date: Thu, 07 Nov 2019 20:01:31 -0800 (PST)
Message-Id: <20191107.200131.396855107998573876.davem@davemloft.net>
To: f.fainelli@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191107223537.23440-1-f.fainelli@gmail.com>
References: <20191107223537.23440-1-f.fainelli@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 Nov 2019 20:01:32 -0800 (PST)
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] net: Demote MTU change
 prints to debug
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, timur@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Thu,  7 Nov 2019 14:35:35 -0800

> This patch series demotes several drivers that printed MTU change and
> could therefore spam the kernel console if one has a test that it's all
> about testing the values. Intel drivers were not also particularly
> consistent in how they printed the same message, so now they are.

Series applied, thanks Florian.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
