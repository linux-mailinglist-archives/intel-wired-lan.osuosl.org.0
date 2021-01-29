Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6293083DD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 03:33:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE8E48747F;
	Fri, 29 Jan 2021 02:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHIEzE7WsUoP; Fri, 29 Jan 2021 02:33:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7700487479;
	Fri, 29 Jan 2021 02:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5370C1BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 02:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4E8632E11B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 02:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTSV0JcMr2W8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 02:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E1F8C20242
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 02:33:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 043C564DBD;
 Fri, 29 Jan 2021 02:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611887624;
 bh=KLQefFFQ5pcFGhFE5flj1il6GX5Wea1PhTE94Uz6hYE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MZ+co7AvQk6qveAR4nht7gM/Y/c82FD1tJUeaK33QfEdXfJOsceC4kIO2gcamZAfr
 ZxvWE5GasPZ7fOiCZK3QqocokNq+XEQTyM6CeM1Sb54B0s6w4bSKWX0HUkGw5FkuNE
 +CT61naj4Uml/97JOXO7DSauiIVPeh/IbVarrsdnaxWp4Yhpzgn5sUZBn6cJVj4qTp
 orHgeVjKIXuBd1D7Lj2DmNyBSTK8cAf2xtHm6uz+woDx+BWO2xyGKG42NkvV1VwS9m
 EPkcJppVEC9AhKK2lUuPaxPwF20jxEzB/juxgWTqfQ6pNeCO871oOL4Lq9uwcJ3ByI
 0NEI8asrYSKlA==
Date: Thu, 28 Jan 2021 18:33:43 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210128183343.06762fc6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <268fcfd4dbd929948e8cdb58457ede1efa3898c6.camel@intel.com>
References: <20210128210736.749724-1-christophe.jaillet@wanadoo.fr>
 <268fcfd4dbd929948e8cdb58457ede1efa3898c6.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH resend] e100: switch from 'pci_' to
 'dma_' API
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "christophe.jaillet@wanadoo.fr" <christophe.jaillet@wanadoo.fr>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 28 Jan 2021 21:45:02 +0000 Nguyen, Anthony L wrote:
> >  drivers/net/ethernet/intel/e100.c | 92 ++++++++++++++++-------------
> 
> My apologies, this patch slipped through the cracks for me. I will send
> it in my next net-next 1GbE series or Jakub you can take it directly if
> you'd like.

No preference but since I have to type a response either way let me say:

Applied, thanks!

;)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
