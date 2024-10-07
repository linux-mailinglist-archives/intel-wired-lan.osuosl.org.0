Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB6B992939
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 12:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A8A6405D6;
	Mon,  7 Oct 2024 10:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dcjd7gCAEmaP; Mon,  7 Oct 2024 10:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35978405E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728296979;
	bh=pMRWAsaLaqbJ1r2Kkm1LasrPoIyE2GOQXu1m+HPSAmQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DVYuA75soquulocIelWREaO5BndU1C5DhnLJdE4rMHZR9ICG9bSEoxnykHs9PbU0J
	 wTMFytWPkK8HbcugTYdyhFzbvMCKP98OEVg6xCHNUqruerFh2q9tqwL7l+PO++EdDP
	 JjpR5yAQ9KXsdOeGf99Xnr0GcmzI7Kh918EtHyHX6PT3OLCtJ+TS4aLWnxHjQ72NfW
	 BJAAXElmWbv4gduIGRweVAzETHe1GgkhbQ91/hpcKroRoq2il2Bw3s0tu+KKRMOpfY
	 gjeLq3nrzjJnka6y+Bcn4XpoUcs6C2Tft3Q/lJeng4fJ9bePO+CNekI9HdzKI/kXyV
	 FCNzqMyG66bjA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35978405E1;
	Mon,  7 Oct 2024 10:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97B191BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 10:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85027401F4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 10:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eq_W4OcNDDD8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 10:29:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=frederic@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95D45401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95D45401E2
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95D45401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 10:29:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A34E35C5D52;
 Mon,  7 Oct 2024 10:29:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42664C4CEC6;
 Mon,  7 Oct 2024 10:29:33 +0000 (UTC)
Date: Mon, 7 Oct 2024 12:29:30 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZwO4CrZ_c92ZUseg@localhost.localdomain>
References: <20240922222420.18009-1-frederic@kernel.org>
 <db2c96f3-c35d-42ee-a4e6-5233ccbac7bb@intel.com>
 <3ad7ab07-d91f-a3fe-4d0f-5305ae05e65a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3ad7ab07-d91f-a3fe-4d0f-5305ae05e65a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728296973;
 bh=j+9Acn5g80rnuNquoPdyftVcOMofnW6vI9n0nIM4bY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m0gNPDHi/svdjRjAwplMy1YjZlWPTqXJnGwvRTzKeJ03qwmSl0UEAP27fbuZngDEh
 q6boMSRpZYmJAj7YJjrMCsndpdNAbHUKArNV9cdbQ3ojPZKkEQKklXn6X5xmi+bfwx
 zOq+ADmnKHyU/2iRp2u3d0ZVCXjHFfW4n1JMBNdabBvVeo0xlielBgtSSmHVwzSHXE
 d67/2nJ5bmiPqxx8MlaS7SrPPvdjtnFhKikYtmMZ2WoO22UoddQDf0EIIvyT8EKXjk
 Wjdls6d4Kx6cLtjq7ahHVHcWHnUTKPMM58LELY2h9cY2Sng+2uILTYPX5+G8zBokuG
 IKLTn6vR6Jrpg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=m0gNPDHi
Subject: Re: [Intel-wired-lan] [PATCH] ice: Unbind the workqueue
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Le Mon, Sep 23, 2024 at 11:28:20AM -0700, Tony Nguyen a écrit :
> 
> 
> On 9/23/2024 1:57 AM, Przemek Kitszel wrote:
> > On 9/23/24 00:24, Frederic Weisbecker wrote:
> > > The ice workqueue doesn't seem to rely on any CPU locality and should
> > > therefore be able to run on any CPU. In practice this is already
> > > happening through the unbound ice_service_timer that may fire anywhere
> > > and queue the workqueue accordingly to any CPU.
> > > 
> > > Make this official so that the ice workqueue is only ever queued to
> > > housekeeping CPUs on nohz_full.
> > > 
> > > Signed-off-by: Frederic Weisbecker <frederic@kernel.org>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index ea780d468579..70990f42ac05 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -5924,7 +5924,7 @@ static int __init ice_module_init(void)
> > >       ice_adv_lnk_speed_maps_init();
> > > -    ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
> > > +    ice_wq = alloc_workqueue("%s", WQ_UNBOUND, 0, KBUILD_MODNAME);
> > >       if (!ice_wq) {
> > >           pr_err("Failed to create workqueue\n");
> > >           return status;
> > 
> > Thank you for the patch, it would make sense for our iwl-next tree,
> > with such assumption:
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > 
> > @Tony, do you want it resent with target tree in the subject?
> 
> No, I can apply this as-is but please remember to designate a tree for
> future patches.

Sorry I didn't know about any tree. I can't even find where iwl-next is
hosted.

Thanks.

> Thanks,
> Tony
