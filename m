Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A795B808EE7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:40:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A96F61AF3;
	Thu,  7 Dec 2023 17:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A96F61AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701970833;
	bh=cDbP81segQOzXq1+W7HragvhqEEE4wudPUz9/CHFsYc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=80SCUTQARcgpbqCk1UWKss+qx1lxBvWV9r6BAdoEsnG3o45LBULEsRoe19Doxblov
	 /IKt0oTiMkz+iUUQGDuYJ1iFhB/JU0ztGPOwsLqsNY4juWMhPZjfOxb6AXURkyKYlU
	 /2tTOFJN5aRNFbsugDdqoDCyRUcwod9eV3RlXZi9Bbu4pmpw8WDfwExJwAwrE02Y6N
	 4aJ8VZtAx72qU9orxsVoBfYB0VvDN4wHad1+3DrABeeqY5JaVCh48Co8moIe7WZCF8
	 +ftFj3aGQvGJ7doZgS18RzgdaQsRe1jkspP3+u9UtFeQVnNnNIqjcjJEXfCz29ZRao
	 pIC9zrP89zKPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_takKw4rTmi; Thu,  7 Dec 2023 17:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 535CA61AEF;
	Thu,  7 Dec 2023 17:40:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 535CA61AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77FA31BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57D2A4227D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57D2A4227D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vYE2MtVXY9pO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:40:26 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6F874227B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6F874227B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 92E2EB8296F;
 Thu,  7 Dec 2023 17:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BBC5C433C8;
 Thu,  7 Dec 2023 17:40:22 +0000 (UTC)
Date: Thu, 7 Dec 2023 09:40:21 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20231207094021.1419b5d0@kernel.org>
In-Reply-To: <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701970822;
 bh=3MgrRRErz3B11UzvKdbThDbzeiqoC9nl2Co0KiKHKTk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=R7SuUsyjeYZVjUYjy9EFw2ib1iHEJTtYdMVmNH7f02ietc+AZGEaGmOPGeAVPM+Tp
 7MuWLZ4NX0ohB6arsxCJdNEJUSN8/eRiLMyT7g7cge/9EbVcN/antkqLsGbQ+QQIu9
 n+KPNeAjB2i3sywdMiiIjScvcyRS870eFGT56ixMUb5VoUu/vg5XSMKZE+rGNT/aX4
 JQBc42daqQyGC+R+uirXAygB2P7tfyNaoyuS2rYiOdyvzYCggYFL4dWYzaxlzTWfP4
 ECAzlY3wHQrcnbfueTWGKjy9kHgG2RhpJfoV75VchpnlF/s1va2iYVyTKIOVjt0oyg
 oxTOGyE93WayQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=R7SuUsyj
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>,
 Marc MERLIN <marc@merlins.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 7 Dec 2023 11:16:10 +0100 Przemek Kitszel wrote:
> I have let know our igc TL, architect, and anybody that could be
> interested via cc: IWL. And I'm happy that this could be done at
> relaxed pace thanks to Johannes

I think you may be expecting us to take Johannes's patch.
It's still on the table, but to make things clear -
upstream we prefer to wait for the "real fix", so if we agree
that fixing igb/igc is a better way (as Heiner pointed out on previous
version PM functions are called by the stack under rtnl elsewhere too,
just not while device is open) - we'll wait for that. Especially
that I'm 80% I complained about the PM in those drivers in
the past and nobody seemed to care. It's a constant source of rtnl
deadlocks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
