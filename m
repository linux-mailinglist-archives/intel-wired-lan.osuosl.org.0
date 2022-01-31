Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F0C4A4D96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:54:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A06E683EC5;
	Mon, 31 Jan 2022 17:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VqT51AbM0-45; Mon, 31 Jan 2022 17:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB24982FF9;
	Mon, 31 Jan 2022 17:54:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C3161BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74F9640156
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKxfl2vg8Duc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:42:56 +0000 (UTC)
X-Greylist: delayed 01:01:26 by SQLgrey-1.8.0
Received: from elvis.franken.de (elvis.franken.de [193.175.24.41])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15E1840142
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:42:56 +0000 (UTC)
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1nEZk7-000514-00; Mon, 31 Jan 2022 17:41:27 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 5D8BDC1F70; Mon, 31 Jan 2022 17:41:05 +0100 (CET)
Date: Mon, 31 Jan 2022 17:41:05 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <20220131164105.GA29636@alpha.franken.de>
References: <20220127150807.26448-1-tbogendoerfer@suse.de>
 <d32ac7da-f460-6d7a-5f7f-9c9d873bf393@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d32ac7da-f460-6d7a-5f7f-9c9d873bf393@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Mon, 31 Jan 2022 17:54:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] net: e1000e: Recover at least
 in-memory copy of NVM checksum
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 31, 2022 at 12:51:07PM +0200, Neftin, Sasha wrote:
> Hello Thomas,
> For security reasons starting from the TGL platform SPI controller will be
> locked for SW access. I've double-checked with our HW architect, not from
> SPT, from TGP. So, first, we can change the mac type e1000_pch_cnp to
> e1000_pch_tgp (as fix for initial patch)

ok, that would fix the mentioned bug. Are you sending a patch for that ?

> Do we want (second) to allow HW initialization with the "wrong" NVM
> checksum? It could cause unexpected (HW) behavior in the future. Even if you
> will "recover" check in shadow RAM - there is no guarantee that NVM is good.

sure. Out of curiosity why is the NVM fixup there in the first place ?

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
