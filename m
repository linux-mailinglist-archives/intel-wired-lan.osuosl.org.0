Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1CA417526
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 15:14:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25B0A83E9D;
	Fri, 24 Sep 2021 13:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FubwpAJ2mfAX; Fri, 24 Sep 2021 13:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20C0683EA5;
	Fri, 24 Sep 2021 13:14:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86E551BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81781402AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s6c6cDWjwnVu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 13:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE8554024B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:14:40 +0000 (UTC)
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net
 [86.15.196.61])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 050B74F7CC988;
 Fri, 24 Sep 2021 06:14:32 -0700 (PDT)
Date: Fri, 24 Sep 2021 14:14:26 +0100 (BST)
Message-Id: <20210924.141426.1767931642845359040.davem@davemloft.net>
To: leon@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Fri, 24 Sep 2021 06:14:38 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] Batch of devlink related
 fixes
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
Cc: irusskikh@marvell.com, alobakin@pm.me, jhasan@marvell.com,
 michal.kalderon@marvell.com, leonro@nvidia.com, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com, jiri@nvidia.com,
 kuba@kernel.org, aelior@marvell.com, jejb@linux.ibm.com,
 vasundhara-v.volam@broadcom.com, sathya.perla@broadcom.com,
 michael.chan@broadcom.com, martin.petersen@oracle.com, skashyap@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 GR-QLogic-Storage-Upstream@marvell.com, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leon@kernel.org>
Date: Thu, 23 Sep 2021 21:12:47 +0300

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Hi,
> 
> I'm asking to apply this batch of devlink fixes to net-next and not to
> net, because most if not all fixes are for old code or/and can be considered
> as cleanup.
> 
> It will cancel the need to deal with merge conflicts for my next devlink series :).

ok, but just this one time.

I much rather this kind of stuff goes to net and we deal with the merge
conflicts that arise.

Thsnks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
