Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E915A44CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 10:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C6D3404B1;
	Mon, 29 Aug 2022 08:16:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C6D3404B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661761009;
	bh=CuyygTBkA0qC1wVHCt6TN03t8/ALgG6uZ3uXSpVHUUg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AauET0A81jKpZZq/pE76IvCr2JEA1g1mVC1+36aWOqujYdzSQLGokeUb3N1p8HyHv
	 hudbgzMbqvyX/jGErv6b8PPXpItbF4h7eGHoBnSH1d83SqYWHJ4ZF/pr585gNFplAG
	 HaH17PNIWmpUvMiC6GptPWc2VGNXGZnGfm4efyLJ9PygswPmOSBKarRZeIjWYtbY5j
	 87BSW32eM6ZzOs9eZ+cw0ayH6I9Xs9w5TFSnkQvY+kNF5/NcNkEj8CcbZn3R2ykLOv
	 zV1VUdzKY8pms/S9MI6o/U3UqMXd+/eh2tC+YNqJ/Jhstx2KCt4DabRJuiyOQQkeGl
	 O5n6vBXBPOslg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0cC3-KXEvWG; Mon, 29 Aug 2022 08:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2679F400C1;
	Mon, 29 Aug 2022 08:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2679F400C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3021BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 08:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1F8D81990
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 08:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1F8D81990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gokmx05lDgAQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 08:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F1281678
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18F1281678
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 08:16:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AAF23B80D56;
 Mon, 29 Aug 2022 08:16:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A149C433D7;
 Mon, 29 Aug 2022 08:16:35 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon, 29 Aug 2022 09:16:33 +0100
Message-ID: <3186253.aeNJFYEL58@saruman>
In-Reply-To: <2301866.ElGaqSPkdT@saruman>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <87o7wpxb1m.fsf@intel.com> <2301866.ElGaqSPkdT@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1661760997;
 bh=ddsvlm5uix9WdTqZZUfUm4ae/TUa8Ac9HgZ4vXlgitw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nyTLiLJwI53BGou1Q4bYu2E/sJUkEa8MPRjeT4rtU+sj7S5UBwIAtQy9yvwvaQ2rW
 /BJ02Hc6Lm9Lpkzzq34E34z8VA9R5LMQQKkLk1E2Mi/Z1VNyDHqdpjkLuz+Cig7jyA
 KSFkerTmZ0nFEgFl89dMi4BMpecgIKYc9ItWYtZxrtHukTi/VBYCXe4CQVV/WPjwG1
 1dOpqaudAscibiH/qa6krsptGXJSQhFyecNbklmkha22asT7qWoYjReYVelqPV2d74
 +5tvXjQOkvHJiafZTB7SxGmtJEbKEF0ObmyPOBCY0qfandis++r+kYL4k9nEYx/s/S
 JCIAJ/vOxdv7A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nyTLiLJw
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Saturday, 13 August 2022 18:18:25 BST James Hogan wrote:
> On Saturday, 13 August 2022 01:05:41 BST Vinicius Costa Gomes wrote:
> > James Hogan <jhogan@kernel.org> writes:
> > > On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
> > >> It was reported a RTNL deadlock in the igc driver that was causing
> > >> problems during suspend/resume.
> > >> 
> > >> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
> > >> caused by taking RTNL in RPM resume path").
> > >> 
> > >> Reported-by: James Hogan <jhogan@kernel.org>
> > >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > >> ---
> > >> Sorry for the noise earlier, my kernel config didn't have runtime PM
> > >> enabled.
> > > 
> > > Thanks for looking into this.
> > > 
> > > This is identical to the patch I've been running for the last week. The
> > > deadlock is avoided, however I now occasionally see an assertion from
> > > netif_set_real_num_tx_queues due to the lock not being taken in some
> > > cases
> > > via the runtime_resume path, and a suspicious
> > > rcu_dereference_protected()
> > > warning (presumably due to the same issue of the lock not being taken).
> > > See here for details:
> > > https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/
> > 
> > Oh, sorry. I missed the part that the rtnl assert splat was already
> > using similar/identical code to what I got/copied from igb.
> > 
> > So what this seems to be telling us is that the "fix" from igb is only
> > hiding the issue,
> 
> I suppose the patch just changes the assumption from "lock will never be
> held on runtime resume path" (incorrect, deadlock) to "lock will always be
> held on runtime resume path" (also incorrect, probably racy).
> 
> > and we would need to remove the need for taking the
> > RTNL for the suspend/resume paths in igc and igb? (as someone else said
> > in that igb thread, iirc)
> 
> (I'll defer to others on this. I'm pretty unfamiliar with networking code
> and this particular lock.)

I'd be great to have this longstanding issue properly fixed rather than having 
to carry a patch locally that may not be lock safe.

Also, any tips for diagnosing the issue of the network link not coming back up 
after resume? I sometimes have to unload and reload the driver module to get 
it back again.

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
