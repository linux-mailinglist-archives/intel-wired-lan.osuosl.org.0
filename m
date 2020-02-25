Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F4416F059
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2020 21:46:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A7C086D29;
	Tue, 25 Feb 2020 20:46:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odGGRau1+k1G; Tue, 25 Feb 2020 20:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9B4086E21;
	Tue, 25 Feb 2020 20:46:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CAA91BF44A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 20:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91235227CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 20:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4PGZObHhjJj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2020 20:46:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BD41A21503
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 20:46:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC60520675;
 Tue, 25 Feb 2020 20:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582663576;
 bh=4IWGZkg45H4wwTJtRfLUUjItUN8vOEIOKvgXXkO48Ws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iOW/0dQ1nMgVUxUvb8Ly1JCK6yWLNLEbKpLGtLM2DH+s361gQ89XpGOTsitOHm4EP
 tIqB1M6SForyzr64pIxrAInpJwS0d/CIcxQ1Y21vGmYLN1ZXwMkkB3417fo0qskFcz
 hr8f7Pz6oOgNg54re0P8PRA5VfAD0+S8mXFWi8NI=
Date: Tue, 25 Feb 2020 21:46:13 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20200225204613.GA14366@kroah.com>
References: <CAKgT0UdwqGGKvaSJ+3vd-_d-6t9MB=No+7SpkbOT2PnynRK+2w@mail.gmail.com>
 <20191007172559.11166.29328.stgit@localhost.localdomain>
 <681404C7-9015-4C64-B8FE-2C93D75A7318@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <681404C7-9015-4C64-B8FE-2C93D75A7318@canonical.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] e1000e: Use rtnl_lock to
 prevent race conditions between net and pci/pm
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
Cc: zdai@linux.vnet.ibm.com,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 stable <stable@vger.kernel.org>, zdai@us.ibm.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 25, 2020 at 05:42:26PM +0800, Kai-Heng Feng wrote:
> Hi Greg,
> 
> > On Oct 8, 2019, at 01:27, Alexander Duyck <alexander.duyck@gmail.com> wrote:
> > 
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > This patch is meant to address possible race conditions that can exist
> > between network configuration and power management. A similar issue was
> > fixed for igb in commit 9474933caf21 ("igb: close/suspend race in
> > netif_device_detach").
> > 
> > In addition it consolidates the code so that the PCI error handling code
> > will essentially perform the power management freeze on the device prior to
> > attempting a reset, and will thaw the device afterwards if that is what it
> > is planning to do. Otherwise when we call close on the interface it should
> > see it is detached and not attempt to call the logic to down the interface
> > and free the IRQs again.
> > 
> >> From what I can tell the check that was adding the check for __E1000_DOWN
> > in e1000e_close was added when runtime power management was added. However
> > it should not be relevant for us as we perform a call to
> > pm_runtime_get_sync before we call e1000_down/free_irq so it should always
> > be back up before we call into this anyway.
> > 
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Please merge this commit, a7023819404ac9bd2bb311a4fafd38515cfa71ec to stable v5.14.
> 
> `modprobe -r e1000e` triggers a null pointer dereference [1] after the the following two patches are applied to v5.4.y:
> d635e7c4b34e6a630c7a1e8f1a8fd52c3e3ceea7 e1000e: Revert "e1000e: Make watchdog use delayed work"
> 21c6137939723ed6f5e4aec7882cdfc247304c27 e1000e: Drop unnecessary __E1000_DOWN bit twiddling

Now queued up, thanks.

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
