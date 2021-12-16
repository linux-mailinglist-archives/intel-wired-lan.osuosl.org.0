Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A123E477640
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 16:46:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BC1983E5C;
	Thu, 16 Dec 2021 15:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WEr3XH2k63Hq; Thu, 16 Dec 2021 15:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D13A983E39;
	Thu, 16 Dec 2021 15:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3D71BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BFEA83E39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zE2ZZpqZP2WW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 15:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D5AE83E29
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:45:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id CF251CE21BD;
 Thu, 16 Dec 2021 15:45:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95CF5C36AE0;
 Thu, 16 Dec 2021 15:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639669547;
 bh=swrQv+Dg77aT1ZBQsKFX507kKA/X+/gI+NK/C8bHL3M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iVqlQ79AOtCwa3CxXCdxHAOhfc/mxg6x15+hQuigsraTaU2ED2cCGv2vEdNvfG3HG
 HXjfa51ECAlnxqaPaOreh8AzwkmW7GcqPDjDW3s7p9MXgcu6cCvTDy81QS7cAlhtLi
 jr52vQ/sNgp3LCZ/+AGesQbaY6SbkKDyv4HwP7uiy6WTLcUwGZay4y03RBQZJTo3VO
 ykBu6Cj/WegJdIkAs2As2waMGMwIYeABQUIKR3DnmntjL0v/VYlKaLuA0oTDQx/eK0
 hOUXc4oKw9rP1Yg47CrwFe6UesW/fOagqU/Cziuc8mPtTDrEhhp9+R3IgiMJVm744+
 ArLUw87rFD0nA==
Date: Thu, 16 Dec 2021 07:45:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20211216074545.036ab8e3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1639521730-57226-2-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
 <1639521730-57226-2-git-send-email-jdamato@fastly.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-queue PATCH 1/5] i40e: Remove rx page
 reuse double count.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Dec 2021 14:42:06 -0800 Joe Damato wrote:
> Page reuse was being tracked from two locations:
>   - i40e_reuse_rx_page (via 40e_clean_rx_irq), and
>   - i40e_alloc_mapped_page
> 
> Remove the double count and only count reuse from i40e_alloc_mapped_page
> when the page is about to be reused.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Possibly a fix, this one?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
