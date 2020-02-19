Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1F165031
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2020 21:43:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1487486AB8;
	Wed, 19 Feb 2020 20:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgkQQjtqPEBZ; Wed, 19 Feb 2020 20:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C248869BA;
	Wed, 19 Feb 2020 20:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E70C01BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E29B585AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ui0ppSnUzKCy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2020 19:22:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69E2A8587D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:22:05 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1659D15AE0877;
 Wed, 19 Feb 2020 11:22:03 -0800 (PST)
Date: Wed, 19 Feb 2020 11:22:02 -0800 (PST)
Message-Id: <20200219.112202.41545263500542131.davem@davemloft.net>
To: hkallweit1@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
References: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 19 Feb 2020 11:22:04 -0800 (PST)
X-Mailman-Approved-At: Wed, 19 Feb 2020 20:43:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/13] net: core: add
 helper tcp_v6_gso_csum_prep
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
Cc: linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org, doshir@vmware.com,
 pv-drivers@vmware.com, chris.snook@gmail.com, _govind@gmx.com,
 pkaustub@cisco.com, sashal@kernel.org, sthemmin@microsoft.com,
 cooldavid@cooldavid.org, intel-wired-lan@lists.osuosl.org, jcliburn@gmail.com,
 nic_swsd@realtek.com, haiyangz@microsoft.com, jaswinder.singh@linaro.org,
 drivers@pensando.io, GR-Linux-NIC-Dev@marvell.com, timur@kernel.org,
 rmody@marvell.com, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, snelson@pensando.io, skalluru@marvell.com,
 benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Tue, 18 Feb 2020 20:55:18 +0100

> Several network drivers for chips that support TSO6 share the same code
> for preparing the TCP header, so let's factor it out to a helper.
> A difference is that some drivers reset the payload_len whilst others
> don't do this. This value is overwritten by TSO anyway, therefore
> the new helper resets it in general.

Series applied, thanks Heiner.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
