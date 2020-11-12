Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8472B09A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 17:13:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7879D20346;
	Thu, 12 Nov 2020 16:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qnPMDku54oB5; Thu, 12 Nov 2020 16:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CAD372E20A;
	Thu, 12 Nov 2020 16:13:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0228B1BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F266187126
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KHb9BOpVWuoo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 16:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2E4E87019
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:13:13 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB6E622227;
 Thu, 12 Nov 2020 16:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605197593;
 bh=szils6tcEcwwVZZ4gp8vhFScN28Lkvc8EBBHksEFcks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p31NeE54E7p/+JXUrncHbgL6Xb8FPe6NQpS9T+m5uiAsPN0Oh/ObvmpWYYDjo4ImL
 lqIqAY2e1dOS9hjrU1gyVb9x4r9mVPiQdHq+mAPngf+6y7gQxwT3JOCZZ19junOye6
 CQ9r6a693ioDcpmOx9nzsJCM3/XZB/lPSZJlr5pg=
Date: Thu, 12 Nov 2020 11:13:11 -0500
From: Sasha Levin <sashal@kernel.org>
To: Ben Hutchings <ben.hutchings@codethink.co.uk>
Message-ID: <20201112161311.GE403069@sasha-vm>
References: <f5e2e87fb1a9613b161e63cf5504cc375e095dbc.camel@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5e2e87fb1a9613b161e63cf5504cc375e095dbc.camel@codethink.co.uk>
Subject: Re: [Intel-wired-lan] [4.4] Security fixes (pinctrl, i40e, geneve)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 stable <stable@vger.kernel.org>, Sasha Levin <Alexander.Levin@microsoft.com>,
 linux-gpio@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 11, 2020 at 11:43:56PM +0000, Ben Hutchings wrote:
>Here are backports of some fixes to the 4.4 stable branch.
>
>I wasn't able to test the pinctrl fix (no idea how to reproduce it).
>
>I wasn't able to test the i40e changes (no hardware and no reproducer
>available).
>
>I tested the geneve fix with libreswan as (roughly) described in the
>commit message.

Queued up, thanks Ben!

-- 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
