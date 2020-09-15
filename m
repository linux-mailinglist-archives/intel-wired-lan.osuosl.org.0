Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386F126AEB2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 22:32:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEABC8727F;
	Tue, 15 Sep 2020 20:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id drncHWln3uWw; Tue, 15 Sep 2020 20:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 495828726A;
	Tue, 15 Sep 2020 20:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B9E51BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18AB922875
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ZH3SYSitvh0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 20:32:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id EDF56203BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:31:59 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7762213684403;
 Tue, 15 Sep 2020 13:15:10 -0700 (PDT)
Date: Tue, 15 Sep 2020 13:31:56 -0700 (PDT)
Message-Id: <20200915.133156.1580615428345209072.davem@davemloft.net>
To: jesse.brandeburg@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Tue, 15 Sep 2020 13:15:10 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Mon, 14 Sep 2020 18:44:45 -0700

> After applying the patches below, the drivers/net/ethernet
> directory can be built as modules with W=1 with no warnings (so
> far on x64_64 arch only!).
> As Jakub pointed out, there is much more work to do to clean up
> C=1, but that will be another series of changes.
> 
> This series removes 1,283 warnings and hopefully allows the
> ethernet directory to move forward from here without more
> warnings being added. There is only one objtool warning now.
> 
> Some of these patches are already sent to Intel Wired Lan, but
> the rest of the series titled drivers/net/ethernet affects other
> drivers. The changes are all pretty straightforward.
> 
> As part of testing this series I realized that I have ~1,500 more
> kdoc warnings to fix due to being in other arch or not compiled
> with my x86_64 .config. Feel free to run
> $ 'git ls-files *.[ch] | grep drivers/net/ethernet | xargs
> scripts/kernel-doc -none'
> to see the remaining issues.

Jesse, in all of these patches, I want to see the warning you are
fixing in the commit message.

Especially for the sh_eth.c one because I have no idea what the
compiler is actually warning about just by reading your commit
message and patch on it's own.

Thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
