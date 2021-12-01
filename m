Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BD3464442
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 01:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE83060757;
	Wed,  1 Dec 2021 00:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FWNW89v7W6rk; Wed,  1 Dec 2021 00:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD1186070A;
	Wed,  1 Dec 2021 00:51:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1F9B1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 00:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDA17400D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 00:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8D6GSng-oa4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 00:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D40514012E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 00:51:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 94410CE1D64;
 Wed,  1 Dec 2021 00:51:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A355C53FC7;
 Wed,  1 Dec 2021 00:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638319872;
 bh=603hQGx7M3Fo6rynDEeE7WkR9kjjmrt0v24vGZPo3qg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mco++8171NAKa7VIuKVmGkcJSCV1AfBGEmFZec9Fomak+0VH24ySk9lWybztbfd6b
 kILXl2DhHu1NV6CxmhUfn5Y8ykx3UVE5lbW4+LyrzYmokV4G/s5xrea18wHzwLno0Y
 5CMGcTtvhE+RQnKoaIe7kajKfhm1AvUGl5sff4a/IkW6npywtcvnfxtfhT/KTlQEKS
 n9bjz3srrkxU++iob81zoUPMeHyHBA2VxeZfXP37/fzpjvguzFI52l/452zFqgzetz
 VnPcm+0F85MsnnXkWCGldTq+8gwMGrviB7xMRBta/oETR64xM9sQYmpmmWX9QZK3HO
 pqBHH6gzHOPYQ==
Date: Tue, 30 Nov 2021 16:51:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20211130165110.291af62a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <c6f3caef-dac2-cc4a-b5b5-70e7fa54d73f@gmail.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <6edc23a1-5907-3a41-7b46-8d53c5664a56@gmail.com>
 <20211130091206.488a541f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <c6f3caef-dac2-cc4a-b5b5-70e7fa54d73f@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 30 Nov 2021 22:35:27 +0100 Heiner Kallweit wrote:
> On 30.11.2021 18:12, Jakub Kicinski wrote:
> >> Not sure whether igb uses RPM the same way as r8169. There the device
> >> is runtime-suspended (D3hot) w/o link. Once cable is plugged in the PHY
> >> triggers a PME, and PCI core runtime-resumes the device (MAC).
> >> In this case RTNL isn't held by the caller. Therefore I don't think
> >> it's safe to assume that all callers hold RTNL.  
> > 
> > No, no - I meant to leave the locking in but add ASSERT_RTNL() to catch
> > if rpm == true && rtnl_held() == false.
> >   
> This is a valid case. Maybe it's not my day today, I still don't get
> how we would benefit from adding an ASSERT_RTNL().
> 
> Based on the following I think that RPM resume and device open()
> can't collide, because RPM resume is finished before open()
> starts its actual work.
> 
> static int __igb_open(struct net_device *netdev, bool resuming)
> {
> ...
> if (!resuming)
> 		pm_runtime_get_sync(&pdev->dev);

Ah, thanks, gotta start looking at the code before I say things..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
