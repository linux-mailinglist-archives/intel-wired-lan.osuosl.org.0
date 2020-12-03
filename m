Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F8E2CDC94
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 18:41:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F2F587CFA;
	Thu,  3 Dec 2020 17:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7mTblAmqMrYG; Thu,  3 Dec 2020 17:41:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4595287CEB;
	Thu,  3 Dec 2020 17:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65A5E1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60DE187B18
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QSyjUkpdi1z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 17:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E35BF87B10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:41:02 +0000 (UTC)
Date: Thu, 3 Dec 2020 09:41:00 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607017262;
 bh=aIkWrXx0JDsapSDY/q9+inHrf0Z/KsQRChX1vIRkqJM=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=EntDGUAqhSKz0+oOEK4jNFbOQS/yxrVKVqXACUHY6UIAyKNeFEmlfjaWi4OAOHtGO
 xXCe81Di+uqUjEpfEJ1LRMfVTh0y3bD1Lax1wPvpsK1UbIyhW7XNrVKTuFUbSo2KjO
 bErrBooCXnFLRFRFfneMsf56veVUgMzpm5gUQiQrnUmiynDAhtHx3MaHQ9j4D3GrWr
 j+hSM7b5wITwdzaPknlaoSLTTC8ENEdaYGkc5RR8kzUGSqMhA63ogrMYt6ch0zrx7s
 wJAYo8pzDdtVoQqaJLqiVbDTSxqcB6/VUj99OxsLo/GZZJD8vjob5LNBTbYEjXTIIu
 GFv7dZ3atdXGw==
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20201203094100.516612a1@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <1867f98e7951f8d044a7dbf16fcf6a93996914f7.camel@intel.com>
References: <20201203021806.692194-1-kuba@kernel.org>
 <1867f98e7951f8d044a7dbf16fcf6a93996914f7.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix double-release of
 rtnl_lock
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 3 Dec 2020 17:04:14 +0000 Nguyen, Anthony L wrote:
> On Wed, 2020-12-02 at 18:18 -0800, Jakub Kicinski wrote:
> > This code does not jump to exit on an error in iavf_lan_add_device(),
> > so the rtnl_unlock() from the normal path will follow.
> > 
> > Fixes: b66c7bc1cd4d ("iavf: Refactor init state machine")
> > Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)  
> 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
> Did you want to apply this or did you want me to take it?

Please take it, I'm currently running with the assumption that you'll
take all Intel patches (minus some corner cases, maybe, like patches
which are part of some cross-tree series with dependencies).

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
