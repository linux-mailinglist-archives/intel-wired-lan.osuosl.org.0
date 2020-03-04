Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D298A1798BB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Mar 2020 20:14:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42EB586F3F;
	Wed,  4 Mar 2020 19:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hHcKAOiXe2t8; Wed,  4 Mar 2020 19:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAFCA86DD3;
	Wed,  4 Mar 2020 19:14:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4141BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 490E382024
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdEpq96UkJ2c for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2020 19:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D0F898111F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:10:10 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 536EB2146E;
 Wed,  4 Mar 2020 19:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583349010;
 bh=6fS4zsNnZBy5xztfhAvQV6wDOxNIHPzrOE4jVPzKmTY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b2S8rZKy5+bRC6O7Xf8bzw/tMfcq+ki/ttL0kBkW2wo9Bmgkpihdw3D1VILqkVzo3
 7DMb6hDmJPmioLECdjmFd/fg+z6dwJLDBxhOesB6ydO43CtXyfvQMha2ABkQnS6Dvn
 +A7cq8weLASDzboALNPKqdff/MLu47hqyO0daFdw=
Date: Wed, 4 Mar 2020 11:10:08 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20200304111008.2c85f386@kicinski-fedora-PC1C0HJN>
In-Reply-To: <32fd09495d86bb2800def5b19e782a6a91a74ed9.camel@intel.com>
References: <9e23756531794a5e8b3d7aa6e0a6e8b6@AcuMS.aculab.com>
 <32fd09495d86bb2800def5b19e782a6a91a74ed9.camel@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 Mar 2020 19:14:16 +0000
Subject: Re: [Intel-wired-lan] [PATCH net 0/1] e1000e: Stop tx/rx setup
 spinning for upwards of 300us.
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
Cc: Network Development <netdev@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 04 Mar 2020 10:02:08 -0800 Jeff Kirsher wrote:
> Adding the intel-wired-lan@lists.osuosl.org mailing list, so that the
> developers you want feedback from will actually see your
> patches/questions/comments.

Is that list still moderated? I was going to CC it yesterday but 
I don't want to subject people who respond to moderation messages..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
