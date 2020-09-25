Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D7E2794CD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 01:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 997B92E190;
	Fri, 25 Sep 2020 23:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmGpSSWxfEwz; Fri, 25 Sep 2020 23:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 622092E199;
	Fri, 25 Sep 2020 23:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE6641BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2AE787508
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2X+i0sTYzL18 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 23:31:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D5B9B872E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:31:18 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5638A13BA071C;
 Fri, 25 Sep 2020 16:14:29 -0700 (PDT)
Date: Fri, 25 Sep 2020 16:31:15 -0700 (PDT)
Message-Id: <20200925.163115.1983585891277676668.davem@davemloft.net>
To: jesse.brandeburg@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
References: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 25 Sep 2020 16:14:29 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/9] make
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, saeed@kernel.org,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Fri, 25 Sep 2020 15:24:36 -0700

> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The Goal: move to W=1 being default for drivers/net/ethernet, and
> then use automation to catch more code issues (warnings) being
> introduced.
> The status: Getting much closer but not quite done for all
> architectures.
> 
> After applying the patches below, the drivers/net/ethernet
> directory can be built as modules with W=1 with no warnings (so
> far on x64_64 arch only!). As Jakub pointed out, there is much
> more work to do to clean up C=1, but that will be another series
> of changes.
> 
> This series removes 1,247 warnings and hopefully allows the
> ethernet directory to move forward from here without more
> warnings being added. There is only one objtool warning now.
> 
> This version drops one of the Intel patches, as I couldn't
> reproduce the original issue to document the warning.
> 
> Some of these patches are already sent and tested on Intel Wired
> Lan, but the rest of the series titled drivers/net/ethernet
> affects other drivers. The changes are all pretty
> straightforward.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Saeed Mahameed <saeed@kernel.org>

Series applied, but that sh_eth.c thing gives me major cancer.

There has to be a better way to describe that table and I recently
pushed back on someone trying to stick a CFLAGS modification into
that subdirectory's Makefile to fix it.

That strategy of initializing a table might be convenient, but with it
you can't look at each table and see which registers DO NOT exist for
each chip which is just as interesting as which ones do exist.

But the main point is that the warning should be avoided in a cleaner
way somehow.  And by doing so we'll likely make the tables more
expressive.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
