Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C3977B741
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Aug 2023 13:04:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E9B641722;
	Mon, 14 Aug 2023 11:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E9B641722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692011069;
	bh=mpKEU2TWQgbgPwnk/np5QCeHlEN5M+fNSb2llDbd8i8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3XJgVLnz92wdwt2kVV2Fq6Es+gdbERhcbKRT61rf7cKRaGXLgIAhWkhEQg4W82vaN
	 mZ6UE/5QtL7EFnMmbSmzd2+1/FMiuNW3WHq/aWH6pwyAFFJ3Ud5Enxl8wDCyHeMFa1
	 rFw+bmJGo81Q4/Yu6njpNGmgWFnC1us5At3RGWbuuA1Wp0h2c95qZIoJi22/OHwO9+
	 uKu/tA1uJBi0lkMEBp6KA4qA3YFI7BGsEfIH5LDeMbx0EVqGWfBFgIEKCvvgCIh1Sw
	 jsebwv+2cdcoV2x0NmZrepacaLgGLGV4UzXBDx5bfP4AsmtCRpTFK+jf6xh1mo0PXY
	 sn0DMPCRPWriQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lxHgi6FNvpXH; Mon, 14 Aug 2023 11:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB7A040951;
	Mon, 14 Aug 2023 11:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB7A040951
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EE601BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 11:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7461D40951
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 11:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7461D40951
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZZ1fUg7uHXK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 11:04:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A8EC408F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 11:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A8EC408F5
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 325CA6142D;
 Mon, 14 Aug 2023 11:04:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 302AFC433C7;
 Mon, 14 Aug 2023 11:04:18 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon, 14 Aug 2023 12:04:15 +0100
Message-ID: <5962826.lOV4Wx5bFT@saruman>
In-Reply-To: <3329047.e9J7NaK4W3@saruman>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <3186253.aeNJFYEL58@saruman> <3329047.e9J7NaK4W3@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692011059;
 bh=X4sVDlguYz5tjg9hwDCiyx+vB92yLKZdyBV6FcV6r7Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=K4Lw6ZR8a7owfJBnUQ0WbiNRBfef3MPlV+X1+2WtxNb54bapktF08BEySVgh6/Xj+
 nejnT6m94DsZ0B+2nABbZjwDSpLO/0yPc0rS6Ri/R+UH/KF3FSJo0u3XQPlwrysEMH
 gqLyaY8YZsSiki2xDR4+jHTCwzwHTlRRA1fiBvQ0yaUa81jndGiHGqtJ61D/j0MLqt
 BJe/ceXOQKKk6qgEZF/ceTewFiyQ3Ki7U3KBMA1N5M5XfuR0tWxYuEPjQV5Y3n9upd
 +JPMoiLVUlaxxCHZlMgO5fUQeGjU2RUHTWGxBDoCQBCvE6Vrh5MZTmbqFX9JTJ2XP5
 nR5zmPcxfUasQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K4Lw6ZR8
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sunday, 2 October 2022 11:56:28 BST James Hogan wrote:
> On Monday, 29 August 2022 09:16:33 BST James Hogan wrote:
> > On Saturday, 13 August 2022 18:18:25 BST James Hogan wrote:
> > > On Saturday, 13 August 2022 01:05:41 BST Vinicius Costa Gomes wrote:
> > > > James Hogan <jhogan@kernel.org> writes:
> > > > > On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
> > > > >> It was reported a RTNL deadlock in the igc driver that was causing
> > > > >> problems during suspend/resume.
> > > > >> 
> > > > >> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
> > > > >> caused by taking RTNL in RPM resume path").
> > > > >> 
> > > > >> Reported-by: James Hogan <jhogan@kernel.org>
> > > > >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > > > >> ---
> > > > >> Sorry for the noise earlier, my kernel config didn't have runtime
> > > > >> PM
> > > > >> enabled.
> > > > > 
> > > > > Thanks for looking into this.
> > > > > 
> > > > > This is identical to the patch I've been running for the last week.
> > > > > The
> > > > > deadlock is avoided, however I now occasionally see an assertion
> > > > > from
> > > > > netif_set_real_num_tx_queues due to the lock not being taken in some
> > > > > cases
> > > > > via the runtime_resume path, and a suspicious
> > > > > rcu_dereference_protected()
> > > > > warning (presumably due to the same issue of the lock not being
> > > > > taken).
> > > > > See here for details:
> > > > > https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/
> > > > 
> > > > Oh, sorry. I missed the part that the rtnl assert splat was already
> > > > using similar/identical code to what I got/copied from igb.
> > > > 
> > > > So what this seems to be telling us is that the "fix" from igb is only
> > > > hiding the issue,
> > > 
> > > I suppose the patch just changes the assumption from "lock will never be
> > > held on runtime resume path" (incorrect, deadlock) to "lock will always
> > > be
> > > held on runtime resume path" (also incorrect, probably racy).
> > > 
> > > > and we would need to remove the need for taking the
> > > > RTNL for the suspend/resume paths in igc and igb? (as someone else
> > > > said
> > > > in that igb thread, iirc)
> > > 
> > > (I'll defer to others on this. I'm pretty unfamiliar with networking
> > > code
> > > and this particular lock.)
> > 
> > I'd be great to have this longstanding issue properly fixed rather than
> > having to carry a patch locally that may not be lock safe.
> > 
> > Also, any tips for diagnosing the issue of the network link not coming
> > back
> > up after resume? I sometimes have to unload and reload the driver module
> > to
> > get it back again.
> 
> Any thoughts on this from anybody?

Ping... I've been carrying this patch locally on archlinux for almost a year 
now. Every time I update my kernel and forget to rebuild with the patch it 
catches me out with deadlocks after resume, and even with the patch I 
frequently have to reload the igc module after resume to get the network to 
come up (which is preferable to deadlocks but still really sucks). I'd really 
appreciate if it could get some attention.

Many thanks
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
