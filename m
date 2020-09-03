Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5F25CE3F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 01:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 719668747D;
	Thu,  3 Sep 2020 23:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 041C-dYQoJao; Thu,  3 Sep 2020 23:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAD6F874A0;
	Thu,  3 Sep 2020 23:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1181BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Sep 2020 23:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B53B86D1F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Sep 2020 23:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHZn3UrkvHxs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Sep 2020 23:22:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB36786B88
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Sep 2020 23:22:22 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46B2A2078E;
 Thu,  3 Sep 2020 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599175342;
 bh=M6g66WpLTMQTNAb9mC0cMfugcxarhyhUGBx2mYsX5gY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nKO5YObpRBUGqmS06dQf7SX6B+MLDYn8/rX2w8hM2wQV/Nxjvwy+LQ2UTdO3SLuSH
 P2KLptug1WkJ6zbCtI876MrM6x8iI+Bbp7nVSXTuOXaj12zc334T7LvVmzZRHYJqgs
 03AoR7n3fjx1uGPbGpl+pq5t8HUaOl1k20+hDSt8=
Date: Thu, 3 Sep 2020 16:22:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20200903162220.061570d0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <1af4aea7869bdb9f3991536b6449521b214ed103.camel@intel.com>
 <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] udp_tunnel: convert
 Intel drivers with shared tables
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Jul 2020 20:06:15 +0000 Nguyen, Anthony L wrote:
> On Wed, 2020-07-22 at 14:22 -0700, Tony Nguyen wrote:
> > On Tue, 2020-07-21 at 18:27 -0700, Jakub Kicinski wrote:  
> > > This set converts Intel drivers which have the ability to spawn
> > > multiple netdevs, but have only one UDP tunnel port table.
> > > 
> > > Appropriate support is added to the core infra in patch 1,
> > > followed by netdevsim support and a selftest.
> > > 
> > > The table sharing works by core attaching the same table
> > > structure to all devices sharing the table. This means the
> > > reference count has to accommodate potentially large values.
> > > 
> > > Once core is ready i40e and ice are converted. These are
> > > complex drivers, and I don't have HW to test so please
> > > review..  
> > 
> > I'm requesting our developers to take a look over and validation to
> > test the ice and i40e patches. I will report back when I get results.  
> 
> Would you mind if I pick these patches up into Jeff's tree? It will
> make it easier to test that way.

It's been a month. Any ETA on these?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
