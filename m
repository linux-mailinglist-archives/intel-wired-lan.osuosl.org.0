Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C92B525446
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 19:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F2B782F76;
	Thu, 12 May 2022 17:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrK707kwbbeX; Thu, 12 May 2022 17:58:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F29B82D04;
	Thu, 12 May 2022 17:58:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 010021BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEAB84175C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B12Qx8UCd5aW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 17:58:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F32C74167A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:58:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C6D7FB8299F;
 Thu, 12 May 2022 17:58:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB189C385B8;
 Thu, 12 May 2022 17:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652378324;
 bh=kQnu+lsa2BUbB7erRsO6spXf2F1r4I80WSaklHtS+s0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=d9W+LDq884RVoEBnQEgLuNAGooZLGmPR+72DGXjdQVUCU7f9bd4DTzfLYrjZoq7ZP
 vVwuvVQs/mptne1Hs5Tx1tP3aG+zmJBI4tdn6PDJsrGdjQOH2QmIyxQ0XfjPGGj8dJ
 L52GZVxR1y9IRQplwaGlYBGNzOXw+OB4fCPDmqYHMUutjXK006W18FMNBhFzOxEUPQ
 vr8Yemsd1UmPS0jae+L4/PZ9j4wwqrJ/YN0jAxdle6Y5Be85oWM3PiHK2CpaOLyIVh
 mBPDZXavBbf875VBqF/KHGFmtxxCkEIgoY/ct7dfL4MXhVoaxN9FXy0o6KnhC5j001
 Ce7ADn4ZERN+Q==
Date: Thu, 12 May 2022 10:58:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <20220512105842.68716894@kernel.org>
In-Reply-To: <c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
 <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
 <20220512094743.79f36d81@kernel.org>
 <c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 May 2022 10:17:13 -0700 Roopa Prabhu wrote:
> On 5/12/22 09:47, Jakub Kicinski wrote:
> > Also the patches don't apply to net-next, again.  
> 
> that's probably because the patches were already applied. Ido just told 
> me abt it also
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5dd6da25255a9d64622c693b99d7668da939a980
> 
> I have requested Alaa send an incremental fix (offline).

Oh, I see, sorry about the confusion.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
