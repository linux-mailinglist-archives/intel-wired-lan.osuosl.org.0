Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 243CF404860
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 12:24:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FC6A40201;
	Thu,  9 Sep 2021 10:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RNhj79lq64gJ; Thu,  9 Sep 2021 10:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0EB7401FA;
	Thu,  9 Sep 2021 10:24:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 313EC1BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 10:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3A1C83E76
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 10:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A_WdiVpvXold for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 10:24:48 +0000 (UTC)
X-Greylist: delayed 00:08:45 by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 422A383E79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 10:24:48 +0000 (UTC)
Received: from localhost (unknown [149.11.102.75])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id E4FD14F65C2E3;
 Thu,  9 Sep 2021 03:15:57 -0700 (PDT)
Date: Thu, 09 Sep 2021 11:15:52 +0100 (BST)
Message-Id: <20210909.111552.1875064195273792824.davem@davemloft.net>
To: maciej.machnikowski@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <PH0PR11MB4951328A680F3D0FC7F9051CEAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210908165802.1d5c952d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49516BE62562735F017470A4EAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
 <PH0PR11MB4951328A680F3D0FC7F9051CEAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Thu, 09 Sep 2021 03:16:00 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, abyagowi@fb.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, saeed@kernel.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Date: Thu, 9 Sep 2021 09:24:07 +0000

> Dave,
> 
> Are there any free slots on Plumbers to discuss and close on SyncE interfaces 
> (or can we add an extra one). I can reuse the slides from the Netdev to give 
> background and a live discussion may help closing opens around it,
> and I'd be happy to co-present with anyone who wants to also join this effort.

Sorry, I think it's much too late for this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
