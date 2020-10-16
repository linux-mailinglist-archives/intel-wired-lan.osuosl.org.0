Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F8290C2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Oct 2020 21:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EF0E881E9;
	Fri, 16 Oct 2020 19:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIdbSHs9Lr7b; Fri, 16 Oct 2020 19:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A98EB8837C;
	Fri, 16 Oct 2020 19:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 062FB1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 19:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 01AAB889AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 19:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Sd8H2nIg-wW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Oct 2020 19:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 93549889A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 19:21:29 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD86A20EDD;
 Fri, 16 Oct 2020 19:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602876089;
 bh=P+ivZQj1Yqwh0eMrFuoEe9IMBcx15gCBiKv4vonI4dw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=U6ELHr8aNe6X5y8IN03MaGd83m4ZLTdJE7oEepvo0C+a6dOF7YoaLZT34mmMIC0/C
 2yxIK+hEYivvhyXjKi9hfh8K3GXKXXB6tQ5iuCos+oPkj1egTXOrDA+UAcaXm7Kbh5
 jYsnFANl+CX5Sisf5Z5fXYN7iC9uI44LwoW09Ie8=
Date: Fri, 16 Oct 2020 12:21:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Kumlien <ian.kumlien@gmail.com>
Message-ID: <20201016122122.0a70f5a3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAA85sZs9wswn06hd7ien2B_fyqFM9kEWL_-vXQN-sjhqisizaQ@mail.gmail.com>
References: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
 <CAA85sZs9wswn06hd7ien2B_fyqFM9kEWL_-vXQN-sjhqisizaQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ixgbe - only presenting one out of four
 interfaces on 5.9
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 16 Oct 2020 11:35:15 +0200 Ian Kumlien wrote:
> Adding netdev, someone might have a clue of what to look at...
> 
> On Mon, Oct 12, 2020 at 9:20 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> >
> > Hi,
> >
> > I was really surprised when i rebooted my firewall and there was
> > network issues, I was even more surprised when
> > only one of the four ports of my ixbe (x553) nic was available when booted.

Just to be sure you mean that the 3 devices are not present in ip link
show?

> > You can actually see it dmesg... And i tried some basic looking at
> > changes to see if it was obvious.... but..

Showing a full dmesg may be helpful, but looking at what you posted it
seems like the driver gets past the point where netdev gets registered,
so the only thing that could fail after that point AFIACT is
mdiobus_register(). Could be some breakage in MDIO.

Any chance you could fire up perf, bpftrace and install a kretprobe to
see what mdiobus_register() returns? You can rebind the device to the
driver through sysfs.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
