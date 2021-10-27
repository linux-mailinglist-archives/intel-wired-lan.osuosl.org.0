Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C12743CC7C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 16:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7314B606DC;
	Wed, 27 Oct 2021 14:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYDElJXQFVT7; Wed, 27 Oct 2021 14:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7500260665;
	Wed, 27 Oct 2021 14:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50CCF1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 14:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E5DD80DD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 14:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKNfaPLw4O-4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 14:40:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7DEA80DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 14:40:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EFE9760720;
 Wed, 27 Oct 2021 14:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635345625;
 bh=NOqWKfn6Yz4kBIFHpmZu4vO/wZyXegOGpxv8kVU+EH0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FvWE+yz4d/I5eCSy9m0flmjwqqt7FYfH9yzkx/7HqfQSHToiyg6H0v6c+VVccUCoP
 wd+qEL3kIj86bDjasBojn+b2Jvnvsqtzy3fwUY/AsdaI07CCGD6lz22Tf4HoO3Y6jO
 cw8RYwZmN7ZKVfcvX0iq1nOz6/Q3ZsI4piFRkonPalJ5pC55E8E4vsA3zR9VZztaIL
 kR72HlZhQxgbrWPbksxbp1ztRLOCh2qvrs8WHgEhJ3bPuQKEfgt+UteFBfxmF7W+2J
 diQpFr48CCXuFmx6jrq1lIzwqeH1MUF0IEWZk2Nt9FVAFHdiSn1UQgYiLq/o+yTxXN
 UY+utz71Fh83A==
Date: Wed, 27 Oct 2021 07:40:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20211027074023.2589af7a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB495117F04EED3A5D56AFB527EA859@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
 <20211026173146.1031412-5-maciej.machnikowski@intel.com>
 <20211026143236.050af4e9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495117F04EED3A5D56AFB527EA859@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v5 net-next 4/5] rtnetlink: Add support
 for SyncE recovered clock configuration
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
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 27 Oct 2021 13:29:40 +0000 Machnikowski, Maciej wrote:
> > Please add a write up of how things fit together in Documentation/.
> > I'm sure reviewers and future users will appreciate that.  
>  
> Sure! Documentation/networking/synce.rst would be the right place to add it?
> Or is there any better place?

SGTM
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
