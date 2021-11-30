Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC21463C95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 18:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FC6561BA6;
	Tue, 30 Nov 2021 17:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XJv5k75glfOE; Tue, 30 Nov 2021 17:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68812606A6;
	Tue, 30 Nov 2021 17:12:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 111761BF358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 17:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3A588175F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 17:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6HPZ24jIcbvH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 17:12:12 +0000 (UTC)
X-Greylist: delayed 15:54:55 by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F5B180F90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 17:12:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 795E3B81A1F;
 Tue, 30 Nov 2021 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D88DC58321;
 Tue, 30 Nov 2021 17:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638292327;
 bh=c7spWKu8dYoVFR3sXy90R1iv3uTWonZ5PZWCIKcze5Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pUqWUp+92OvHF0xIa6x2HEQlbBnmS1+W4kni3BVFa/FL0fR7vL/aqqYSZ9vwtFAjq
 JZuCGUVNb0R89jH6Cuyh+wyXHJgaHCedy2IWT/nnhVvAZQmDNuOOmKVWZ3E8Eo6pNy
 94egXIxdaa3VxskzUGXVTvxfobazh1fqtPZeydvn3aDAkBd2GGs+23c4+zRLNjxrRP
 BlhhByAszE4DZT/4WsitJC3CVguv4R2ukfKIbJ18BrKWROejqZLnEu/6HpI+ygtRqi
 /MbXJkFywW1j2/pOqTlOMA8fC52CDk5MO/DaAZObnjyPZVkih8NzP4FsxqN1bNVRFQ
 1UmDMPJqQBnSg==
Date: Tue, 30 Nov 2021 09:12:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20211130091206.488a541f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <6edc23a1-5907-3a41-7b46-8d53c5664a56@gmail.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <6edc23a1-5907-3a41-7b46-8d53c5664a56@gmail.com>
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

On Tue, 30 Nov 2021 07:46:22 +0100 Heiner Kallweit wrote:
> On 30.11.2021 02:17, Jakub Kicinski wrote:
> > On Mon, 29 Nov 2021 22:14:06 +0100 Heiner Kallweit wrote:  
> >> -	rtnl_lock();
> >> +	if (!rpm)
> >> +		rtnl_lock();  
> > 
> > Is there an ASSERT_RTNL() hidden in any of the below? Can we add one?
> > Unless we're 100% confident nobody will RPM resume without rtnl held..
> >   
> 
> Not sure whether igb uses RPM the same way as r8169. There the device
> is runtime-suspended (D3hot) w/o link. Once cable is plugged in the PHY
> triggers a PME, and PCI core runtime-resumes the device (MAC).
> In this case RTNL isn't held by the caller. Therefore I don't think
> it's safe to assume that all callers hold RTNL.

No, no - I meant to leave the locking in but add ASSERT_RTNL() to catch
if rpm == true && rtnl_held() == false.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
