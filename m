Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 340EC46DDB3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 22:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99E7582803;
	Wed,  8 Dec 2021 21:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bW7B3WP9ZvLI; Wed,  8 Dec 2021 21:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B8C1827AF;
	Wed,  8 Dec 2021 21:38:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 641051BF38E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 21:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A09760649
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 21:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJy_xBhIZJkO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 21:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C31A60648
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 21:38:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 42B69B822DB;
 Wed,  8 Dec 2021 21:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E332C00446;
 Wed,  8 Dec 2021 21:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638999477;
 bh=uv3lW73H6rii/Y56uVMhsqWoArsk/ypwWk7L1hXwXjk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ck1fWy9x2qOExYNs6oiSMvCnuyHFtlicWPNctqMPR7LgRtosXEd5sFeT5CjfIhE7M
 3CudEwGYmJHRGDq3Ob3wPfsJGsVDDlty8Oy76yEATgpoXOP/ZRtKcKwB4Hj+Z5j5mE
 4CYjHbL6z6cBdhh2tyTTnx/3A/PEvpnyp8LJ8J42wx/gxSpgqLkL9yuRs/StLW2t2O
 JJgSBEgKB2z3H2JUDbfl43GBYHJa5u9e9bnuC7+VNAwEjZPg3D58Q0nj9McykyFVmJ
 jqc3qLV7kmruORbNlnRvaRiObZWFrV+OpV9XxYGSld2YxfXmKRUwdGHo7iqXNOzr9L
 sDZWUP0r1gYGw==
Date: Wed, 8 Dec 2021 13:37:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hayes Wang <hayeswang@realtek.com>
Message-ID: <20211208133754.3809bb5e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <67d7f6f7b6e84af692bc0a7c4c48bb84@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
 <20211130190926.7c1d735d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d3a1e1c469844aa697d6d315c9549eda@realtek.com>
 <20211203070410.1b4abc4d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <e2fd429a489545e7a521283600cb7caa@realtek.com>
 <20211207202101.3a3a93b0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <67d7f6f7b6e84af692bc0a7c4c48bb84@realtek.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/4] r8169: support dash
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
 nic_swsd <nic_swsd@realtek.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 8 Dec 2021 07:53:28 +0000 Hayes Wang wrote:
> Jakub Kicinski <kuba@kernel.org>
> > Sent: Wednesday, December 8, 2021 12:21 PM  
> > > Could devlink param be used for more than 4 bytes settings?
> > > At least the IPv6 address is longer.  
> > 
> > We can add a new devlink sub-command and driver callback in that case.  
> 
> Excuse me. Do you mean someone will add it? Then, I could use it.
> Or, I have to add it.

You'd need to write all the code.

> > > Besides, we need the information of SMBIOS which could
> > > be 4K ~ 8K bytes data. Is there any way we could transmit
> > > it to firmware?  
> > 
> > Is structure of that data defined by some DMTF standard?  
> Yes.

That's good, as long as the kernel parses and validates the messages
the exact interface to user space does not matter that much.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
