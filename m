Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2E846CC4E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 05:21:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDF65409EE;
	Wed,  8 Dec 2021 04:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lph8kF4GL4Kq; Wed,  8 Dec 2021 04:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96D9140144;
	Wed,  8 Dec 2021 04:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F28D51BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 04:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAFD860EFE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 04:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LB-Pv8nXnqBI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 04:21:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9239B60F04
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 04:21:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DC9F6B81113;
 Wed,  8 Dec 2021 04:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58EB2C00446;
 Wed,  8 Dec 2021 04:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638937263;
 bh=cQVgvHDHPYJ56anN/8+yMuzVmF9obIn6/LddtUoqZX0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DBlhztBI3vRhDIAIIYVEhesl9bCL1Pr1/phh7U07zOPv8knMr8TMCAVPztIfJtPys
 2D9ubWrx10u8w4Z7neWobqDbFkvrhTBxnMXJCNI6ZJbrRvhV46a29GYF7gXkEpXv0s
 QQKO4A5Xl4qkKWXA5Qm7eSeH77HjU9dzA3uZy5v7LH9UnYib/9eEYpzns9j//tcWCC
 IY0vXYJhrTumz+0Qmr5C/oAVZYm0XxUSKb/LfsoKJdzl3+HwrrGWdfFIhxOAgzc7CU
 cc54ATSj1PyOIUwWzZchl99WKt3Qy5YCJGUe4ACd7El5JTzlZR/oqXxC91AYWFeDPl
 Md80L5T32cmNA==
Date: Tue, 7 Dec 2021 20:21:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hayes Wang <hayeswang@realtek.com>
Message-ID: <20211207202101.3a3a93b0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <e2fd429a489545e7a521283600cb7caa@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
 <20211130190926.7c1d735d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d3a1e1c469844aa697d6d315c9549eda@realtek.com>
 <20211203070410.1b4abc4d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <e2fd429a489545e7a521283600cb7caa@realtek.com>
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

On Tue, 7 Dec 2021 07:28:02 +0000 Hayes Wang wrote:
> Jakub Kicinski <kuba@kernel.org>
> > Ah, I've only spotted the enable/disable knob in the patch.
> > If you're exchanging arbitrary binary data with the FW we
> > can't help you. It's not going to fly upstream.   
> 
> How is it that we only provide certain basic settings,
> such as IPv4 address, IPv6 address, and so on? Then,
> they are not the arbitrary binary data.
> 
> Could devlink param be used for more than 4 bytes settings?
> At least the IPv6 address is longer.

We can add a new devlink sub-command and driver callback in that case.

> Besides, we need the information of SMBIOS which could
> be 4K ~ 8K bytes data. Is there any way we could transmit
> it to firmware?

Is structure of that data defined by some DMTF standard?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
