Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C584516CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Nov 2021 22:42:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0E5B40167;
	Mon, 15 Nov 2021 21:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1_0N13Jx08K; Mon, 15 Nov 2021 21:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14CFC400C7;
	Mon, 15 Nov 2021 21:42:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C88AB1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 21:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5CA280D7E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 21:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVTK0TBSK4PP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Nov 2021 21:42:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 505E780BA0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 21:42:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 576FD61B2C;
 Mon, 15 Nov 2021 21:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637012569;
 bh=LVsPdaw2yY7qWBTlOQrq7wYxukq/AP9opsWvdVtsMmI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uqkD3GfTytoMGYLQ5dXGmYjfMgpBUh/3gTTpinb9tYV/suVLU0EYuVg2ADRV+5Kg3
 sZcYfzrcwmXpyTAzz3Q6u5CEZ/fJGhwoq+vr28dO5Z+T5fox2MNJQhQNeG/0cJxl9v
 vcslsPEb0h49jfKWUABZYDqf/eBEA2NFd6jifzYkJseGOdFm062QuHB7MlDAlwpomE
 1J2j4xBNOTZu7Qm+MR0a0sKFyn0vqpkp4PeGqBIM2MGsdxnZFjbsdA6JGvULL4di7f
 s1R3O9qYO7tqUoTEdnKiffTE/X5gBUvCRCp1D6v1EJkUHtI+YMYmmkSPQDNfFmTkkX
 kPUyjALAmgHYQ==
Date: Mon, 15 Nov 2021 13:42:48 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>, Vadim Fedorenko
 <vfedorenko@novek.ru>
Message-ID: <20211115134248.5d111036@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <MW5PR11MB58121DC2755B9AADA3516E75EA989@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
 <87r1bqcyto.fsf@nvidia.com>
 <MW5PR11MB5812B0A4E6227C6896AC12B5EA929@MW5PR11MB5812.namprd11.prod.outlook.com>
 <87mtmdcrf2.fsf@nvidia.com>
 <MW5PR11MB5812D4A8419C37FE9C890D3AEA929@MW5PR11MB5812.namprd11.prod.outlook.com>
 <87bl2scnly.fsf@nvidia.com>
 <MW5PR11MB5812034EA5FC331FA5A2D37CEA939@MW5PR11MB5812.namprd11.prod.outlook.com>
 <874k8kca9t.fsf@nvidia.com>
 <MW5PR11MB5812757CFF0ACED1D9CFC5A2EA939@MW5PR11MB5812.namprd11.prod.outlook.com>
 <87y25vbu19.fsf@nvidia.com>
 <MW5PR11MB58121DC2755B9AADA3516E75EA989@MW5PR11MB5812.namprd11.prod.outlook.com>
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
Cc: Petr Machata <petrm@nvidia.com>, "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "abyagowi@fb.com" <abyagowi@fb.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 15 Nov 2021 10:12:25 +0000 Machnikowski, Maciej wrote:
> > > Netdev owns the PHY, so it needs to enable/disable clock from a given
> > > port/lane - other than that it's EECs task. Technically - those subsystems
> > > are separate.  
> > 
> > So why is the UAPI conflating the two?  
> 
> Because EEC can be a separate external device, but also can be integrated
> inside the netdev. In the second case it makes more sense to just return
> the state from a netdev 

I mentioned that we are in a need of such API to Vadim who, among other
things, works on the OCP Timecard. He indicated interest in developing
the separate netlink interface for "DPLLs" (the timecard is just an
atomic clock + GPS, no netdev to hang from). Let's wait for Vadim's work
to materialize and build on top of that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
