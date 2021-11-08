Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4197449A63
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Nov 2021 18:03:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4801980DFE;
	Mon,  8 Nov 2021 17:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRhWm5sWpdET; Mon,  8 Nov 2021 17:03:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4999880CCA;
	Mon,  8 Nov 2021 17:03:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 125621BF34A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 17:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AD1B6081F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 17:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uejh7pXty_Fy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Nov 2021 17:03:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75BF260800
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 17:03:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 86768613B3;
 Mon,  8 Nov 2021 17:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636390984;
 bh=zrbTUgiWFKy9WRGguNicvKrCsEpNnvi38XByEj5zrtU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SysNDm5qCXqdETv6f2JC/bFWsduWWi4GhtvZ0A099MvfewzJyiHEVG5nsZtOET2yq
 MtnxXIznzjxDIVa4tielj+253FglFOZmBdRPo1zqOpTDymwoDM+JbfmTmJaOyY6Ckg
 IhMbvuBygwHjyCAkdyDMnZGVut2w3tCuwPlUbhuFw46NGUxMaUspLdJCzEgm+EcMcl
 7SPZqtLi0KDP284EDx4ZtCV4v6T/T9svRsRKhyFe1DJm3qX/06OuFbjy8HwsgZP6fW
 JPseQKFyAQ4jWBpn8HS7luxOTt27UKGuK/xykslkhAmr5lKA6UAXXZcTWLoM84AXF9
 BYnhpT6IS8GKA==
Date: Mon, 8 Nov 2021 09:03:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20211108090302.64ca86a5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YYlQfm3eW/jRS4Ra@shredder>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
 <YYfd7DCFFtj/x+zQ@shredder>
 <MW5PR11MB58120F585A5CF1BCA1E7E958EA919@MW5PR11MB5812.namprd11.prod.outlook.com>
 <YYlQfm3eW/jRS4Ra@shredder>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 8 Nov 2021 18:29:50 +0200 Ido Schimmel wrote:
> I also want to re-iterate my dissatisfaction with the interface being
> netdev-centric. By modelling the EEC as a standalone object we will be
> able to extend it to set the source of the EEC to something other than a
> netdev in the future. If we don't do it now, we will end up with two
> ways to report the source of the EEC (i.e., EEC_SRC_PORT and something
> else).
> 
> Other advantages of modelling the EEC as a separate object include the
> ability for user space to determine the mapping between netdevs and EECs
> (currently impossible) and reporting additional EEC attributes such as
> SyncE clockIdentity and default SSM code. There is really no reason to
> report all of this identical information via multiple netdevs.

Indeed, I feel convinced. I believe the OCP timing card will benefit
from such API as well. I pinged Jonathan if he doesn't have cycles 
I'll do the typing.

What do you have in mind for driver abstracting away pin selection?
For a standalone clock fed PPS signal from a backplate this will be
impossible, so we may need some middle way.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
