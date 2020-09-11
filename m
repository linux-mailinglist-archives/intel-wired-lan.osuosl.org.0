Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22726266193
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 16:55:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAF56878A8;
	Fri, 11 Sep 2020 14:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEX4vVYhDDe3; Fri, 11 Sep 2020 14:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A8EF878AA;
	Fri, 11 Sep 2020 14:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E00381BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 14:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D68158786D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 14:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D++UchgP91tE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 14:55:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 820DC87831
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 14:55:17 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A363222E7;
 Fri, 11 Sep 2020 14:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599836117;
 bh=UBc5WNuPQYUcmUI+gnu0Z+iU3e58vtUR4oq2800t3vY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ksVYEceYca6dn20TQzhx0m3RxO1bI9m4gfDecykVW3KQxGE3GbcD1pHTe9/94QfCl
 hJa1Op39JFk8OzCUSNDtAdkzWqEw6XEpSmFJpiESpI9PXXFvJeuc1XnblJxyTdcS5M
 14Kq9AaPmk2/9Y/oBf/KBO9N48Vjsmljv8xZanHI=
Date: Fri, 11 Sep 2020 07:55:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 00/11] make
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

On Thu, 10 Sep 2020 18:23:26 -0700 Jesse Brandeburg wrote:
> This series is a placeholder to show I've about finished this work.
> 
> After applying the patches below, the drivers/net/ethernet
> directory can be built as modules with W=1 with no warnings.
> 
> This series removes 1,283 warnings and hopefully allows the ethernet
> directory to move forward from here without more warnings being added.
> 
> Some of these patches are already sent to Intel Wired Lan, but the rest
> of the series titled drivers/net/ethernet affects other drivers, not
> just Intel, but they depend on the first five.

Great stuff. Much easier to apply one large series than a thousand
small patches. I haven't read all the comment changes but FWIW:

Reviewed-by: Jakub Kicinski <kuba@kernel.org>

I feel slightly bad for saying this but I think your config did not
include all the drivers, 'cause I'm still getting some warnings after
patch 11. Regardless this is impressive effort, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
