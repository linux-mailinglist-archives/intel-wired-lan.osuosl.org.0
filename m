Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72141FD1F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2020 18:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E32088804;
	Wed, 17 Jun 2020 16:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3xPwnWEhHyur; Wed, 17 Jun 2020 16:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDA4688856;
	Wed, 17 Jun 2020 16:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C2651BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 16:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 24B2188305
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 16:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrB5xLynPOLm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2020 16:28:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B86287DB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 16:28:56 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ABDF208D5;
 Wed, 17 Jun 2020 16:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592411335;
 bh=1H0CTWgSc5IHvLsUQzrRHh4kgeEBc5Pmj5ZbDHaTDAs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bG7XIEDR98xPTo6lRgqTpTUlXgdz0HlW1l4RSR8QVd0hgd9XqFG1AuMrOYBsa7gEP
 JSRlw6wkXiHht4VFpjafiHea/ZsYrZjPtMdZOrhtPVoqbq8hxy8fnprYf4i/I2Xa12
 f5TNhsJ9hXK5pvRC5EtGbl3YNZtwwa9MQoDjv+Xc=
Date: Wed, 17 Jun 2020 09:28:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <20200617092854.7be16376@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200617111249.20855-1-aaron.ma@canonical.com>
References: <20200616100512.22512-1-aaron.ma@canonical.com>
 <20200617111249.20855-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [v2][PATCH] e1000e: continue to init phy even
 when failed to disable ULP
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 kai.heng.feng@canonical.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 17 Jun 2020 19:12:48 +0800 Aaron Ma wrote:
> After commit: e086ba2fccd ("e1000e: disable s0ix entry and exit flows
>  for ME systems").
> ThinkPad P14s always failed to disable ULP by ME.
> commit: 0c80cdbf33 ("e1000e: Warn if disabling ULP failed")
> break out of init phy:
> 
> error log:
> [   42.364753] e1000e 0000:00:1f.6 enp0s31f6: Failed to disable ULP
> [   42.524626] e1000e 0000:00:1f.6 enp0s31f6: PHY Wakeup cause - Unicast Packet
> [   42.822476] e1000e 0000:00:1f.6 enp0s31f6: Hardware Error
> 
> When disable s0ix, E1000_FWSM_ULP_CFG_DONE will never be 1.
> If continue to init phy like before, it can work as before.
> iperf test result good too.
> 
> Fixes: 0c80cdbf33 ("e1000e: Warn if disabling ULP failed")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

Fixes tag: Fixes: 0c80cdbf33 ("e1000e: Warn if disabling ULP failed")
Has these problem(s):
	- SHA1 should be at least 12 digits long
	  Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
	  or later) just making sure it is not set (or set to "auto").
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
