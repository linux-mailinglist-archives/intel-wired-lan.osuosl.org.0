Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B43585F22C8
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 12:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 854E3827A1;
	Sun,  2 Oct 2022 10:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 854E3827A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664708201;
	bh=y7YlOqT/dTSdsWPN+6oYmxUHX67dsuPTK6sa+8O1Jmo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E+B0mgOyxpkjoAw92nRsxE/Xx67iOyjF3SJ5gbA4z9f79yreIRnQuUIzIomiPjpJc
	 YKOpxNip+PrMJ4pBRaB8BJgz3ppglRMadreagxQPA6u75nIIOpKpv+kmIHUfnNbWG+
	 qhWV4+QUgi1C9cKw1eOu3QR8keiHCZ0mj9bccWC1cm/VuAp3h/5ubVQvZS7ljIElKe
	 J2dhiSyrH1lxbFQZR9Ln2cAakmM4Rw6Lr8qX48PayckYNMVnqSj+woziP1/Rx7XXpZ
	 qhftb5ZM2KqXhAiXLC5YQSq/7v7yDP3cWJX9kSZMhne3tBlMmJD9GMRsHOoc4NCicJ
	 Y9aaunHo7ba3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCtAeAymIm0Y; Sun,  2 Oct 2022 10:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87B848278F;
	Sun,  2 Oct 2022 10:56:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87B848278F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90BCF1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AB3760B3D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AB3760B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kaOZY7Jml5gl for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Oct 2022 10:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56BAE606C6
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56BAE606C6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:56:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3D89B60E75;
 Sun,  2 Oct 2022 10:56:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22F60C433D6;
 Sun,  2 Oct 2022 10:56:30 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Sun, 02 Oct 2022 11:56:28 +0100
Message-ID: <3329047.e9J7NaK4W3@saruman>
In-Reply-To: <3186253.aeNJFYEL58@saruman>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <2301866.ElGaqSPkdT@saruman> <3186253.aeNJFYEL58@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1664708192;
 bh=fb9Xn9fC5RTn47FZjAgyFHsnb5kIGpvDJyPJccDp3bc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EVuG+UsjF3z1rHSUNbNjke65t6Oz01hqxesN1Gsu2PKqu8ldSQQ+41PBNJ2CVAyNl
 wPFByM8RMzqSq0hI5RjsUl4Bngvle7I2inGo5bjWOQ4Ga5TrhCoW79UCO2KR7Zpuon
 9Gwy60lik0EOXeeNf7dD3MoWhACgN9MNv7Zy1mk8WZQQnBK9ATeacAcg2hNdmjCDIp
 4R68KfWqg5wQYZ81gZur7ayh4Ex3EXSUO5yLUGgt7uPgzX/f6YWYCBlVLWUXGyADFL
 Z5ag4uI6s/mxVXyRbql9ONAWzeDsYrhZvDfK37qdb3bg68fjVN9fE7yQ52HiKZhrFf
 gzV+g4l7GSNvA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EVuG+Usj
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

On Monday, 29 August 2022 09:16:33 BST James Hogan wrote:
> On Saturday, 13 August 2022 18:18:25 BST James Hogan wrote:
> > On Saturday, 13 August 2022 01:05:41 BST Vinicius Costa Gomes wrote:
> > > James Hogan <jhogan@kernel.org> writes:
> > > > On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
> > > >> It was reported a RTNL deadlock in the igc driver that was causing
> > > >> problems during suspend/resume.
> > > >> 
> > > >> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
> > > >> caused by taking RTNL in RPM resume path").
> > > >> 
> > > >> Reported-by: James Hogan <jhogan@kernel.org>
> > > >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > > >> ---
> > > >> Sorry for the noise earlier, my kernel config didn't have runtime PM
> > > >> enabled.
> > > > 
> > > > Thanks for looking into this.
> > > > 
> > > > This is identical to the patch I've been running for the last week.
> > > > The
> > > > deadlock is avoided, however I now occasionally see an assertion from
> > > > netif_set_real_num_tx_queues due to the lock not being taken in some
> > > > cases
> > > > via the runtime_resume path, and a suspicious
> > > > rcu_dereference_protected()
> > > > warning (presumably due to the same issue of the lock not being
> > > > taken).
> > > > See here for details:
> > > > https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/
> > > 
> > > Oh, sorry. I missed the part that the rtnl assert splat was already
> > > using similar/identical code to what I got/copied from igb.
> > > 
> > > So what this seems to be telling us is that the "fix" from igb is only
> > > hiding the issue,
> > 
> > I suppose the patch just changes the assumption from "lock will never be
> > held on runtime resume path" (incorrect, deadlock) to "lock will always be
> > held on runtime resume path" (also incorrect, probably racy).
> > 
> > > and we would need to remove the need for taking the
> > > RTNL for the suspend/resume paths in igc and igb? (as someone else said
> > > in that igb thread, iirc)
> > 
> > (I'll defer to others on this. I'm pretty unfamiliar with networking code
> > and this particular lock.)
> 
> I'd be great to have this longstanding issue properly fixed rather than
> having to carry a patch locally that may not be lock safe.
> 
> Also, any tips for diagnosing the issue of the network link not coming back
> up after resume? I sometimes have to unload and reload the driver module to
> get it back again.

Any thoughts on this from anybody?

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
