Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FFF61FBC2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 18:45:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D804D813DB;
	Mon,  7 Nov 2022 17:45:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D804D813DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667843129;
	bh=eUU01E8fV1W+ZXtCyV8M4ZXMM5jICvueadzsDIBm3BA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PHXYE2iYD2c4P1MOr3VEMoht4MLtmZ3ILf0ljTZSpaOGW+wfBoMVpmYT0OGL5YLYj
	 j2DCv0Bwnx2dkODoe3cJrYLljmUi+8OK5aRAvti0Q4f8BYRLd3tAeL4VnrLqiciDZt
	 wPk5ZZSBa0zOaP++E2y0EGnhfG8rwbEbWvQHwImDJEuowTS7IClKb+YuG8eTV5CHzf
	 earNeG1fyHsZUcFE+4sSNu9hEEHrcASineCHmmwcTRI1LwVnllo4AbCpPI9ibk4JO7
	 6YYTOeFFDkn0dSdMOmjZ1WTjIo5a+s4TcvnYLKFPEJwyrQZ0iW08H9GFqFzk0q/Lnh
	 fr8FHABg3n6Gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GTdIc10NL9ZH; Mon,  7 Nov 2022 17:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C20B5813CD;
	Mon,  7 Nov 2022 17:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C20B5813CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD4E1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 17:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 513824031E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 17:45:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 513824031E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yp18BtkYoJt0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 17:45:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CDFD402A8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CDFD402A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 17:45:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 212A4611DA;
 Mon,  7 Nov 2022 17:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C71C433C1;
 Mon,  7 Nov 2022 17:45:19 +0000 (UTC)
Date: Mon, 7 Nov 2022 19:45:15 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <Y2lEK4CMdCyEMBLf@unreal>
References: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
 <20221104205414.2354973-6-anthony.l.nguyen@intel.com>
 <Y2itqqGQm6uZ/2Wf@unreal>
 <DM5PR11MB1324FDF4D4399A6A99727B5EC13C9@DM5PR11MB1324.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR11MB1324FDF4D4399A6A99727B5EC13C9@DM5PR11MB1324.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667843120;
 bh=cL0Cmn1wMSgyZwA7z18q8ng4pj7xfO231EleFGDrTNs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cKLweVQxAximlaYYUdVyVnlFYThWpbJvwt/OhHpsbx0ZhBjl+pqGe2N05tE5v4gzH
 FEIC13zcYsdlm/CSLM/RCPBYrbq+CEj7lePrRvbyt1bXIDq93WRKQ49ZEYsgsN2eKI
 pZfRawMG4B3K3I41fnUDcXRApzmmojsuoX/V/n8Io0K+3aYyMXQ1JwGgN6RKIDl2T1
 H3oIaOpCLds4DQbsa8aGZ8TTm65XPqyb1cBTgIF/GSRuP/uKm5hDQmtN5vDvLb1Rg3
 HaWmEdKsh2IJCixttrZZ4yUtiyAfFFYy1P/CkxTVoaHOAfBSgH59G+4P0QH/ipCX8t
 Xh8taIO0hAnng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cKLweVQx
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] igb: Do not free
 q_vector unless new one was allocated
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
Cc: Kees Cook <keescook@chromium.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 07, 2022 at 01:55:58PM +0000, Ruhl, Michael J wrote:
> >-----Original Message-----
> >From: Leon Romanovsky <leon@kernel.org>
> >Sent: Monday, November 7, 2022 2:03 AM
> >To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> >Cc: davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com;
> >edumazet@google.com; Kees Cook <keescook@chromium.org>;
> >netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> >intel-wired-lan@lists.osuosl.org; Ruhl, Michael J <michael.j.ruhl@intel.com>;
> >Keller, Jacob E <jacob.e.keller@intel.com>; G, GurucharanX
> ><gurucharanx.g@intel.com>
> >Subject: Re: [PATCH net-next 5/6] igb: Do not free q_vector unless new one
> >was allocated
> >
> >On Fri, Nov 04, 2022 at 01:54:13PM -0700, Tony Nguyen wrote:
> >> From: Kees Cook <keescook@chromium.org>
> >>
> >> Avoid potential use-after-free condition under memory pressure. If the
> >> kzalloc() fails, q_vector will be freed but left in the original
> >> adapter->q_vector[v_idx] array position.
> >>
> >> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> >> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> >> Cc: "David S. Miller" <davem@davemloft.net>
> >> Cc: Eric Dumazet <edumazet@google.com>
> >> Cc: Jakub Kicinski <kuba@kernel.org>
> >> Cc: Paolo Abeni <pabeni@redhat.com>
> >> Cc: intel-wired-lan@lists.osuosl.org
> >> Cc: netdev@vger.kernel.org
> >> Signed-off-by: Kees Cook <keescook@chromium.org>
> >> Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> >> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> >> Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker
> >at Intel)
> >
> >You should use first and last names here.
> >
> >> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> >> ---
> >>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
> >>  1 file changed, 6 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> >b/drivers/net/ethernet/intel/igb/igb_main.c
> >> index d6c1c2e66f26..c2bb658198bf 100644
> >> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> >> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> >> @@ -1202,8 +1202,12 @@ static int igb_alloc_q_vector(struct igb_adapter
> >*adapter,
> >>  	if (!q_vector) {
> >>  		q_vector = kzalloc(size, GFP_KERNEL);
> >>  	} else if (size > ksize(q_vector)) {
> >> -		kfree_rcu(q_vector, rcu);
> >> -		q_vector = kzalloc(size, GFP_KERNEL);
> >> +		struct igb_q_vector *new_q_vector;
> >> +
> >> +		new_q_vector = kzalloc(size, GFP_KERNEL);
> >> +		if (new_q_vector)
> >> +			kfree_rcu(q_vector, rcu);
> >> +		q_vector = new_q_vector;
> >
> >I wonder if this is correct.
> >1. if new_q_vector is NULL, you will overwrite q_vector without releasing it.
> >2. kfree_rcu() doesn't immediately release memory, but after grace
> >period, but here you are overwriting the pointer which is not release
> >yet.
> 
> The actual pointer is: adapter->q_vector[v_idx]
> 
> q_vector is just a convenience pointer.
> 
> If the allocation succeeds, the q_vector[v_idx] will be replaced (later in the code).
> 
> If the allocation fails, this is not being freed.  The original code freed the adapter
> pointer but didn't not remove the pointer.
> 
> If q_vector is NULL,  (i.e. the allocation failed), the function exits, but the original
> pointer is left in place.
> 
> I think this logic is correct.
> 
> The error path leaves the original allocation in place.  If this is incorrect behavior,
> a different change would be:
> 
> 	q_vector = adapter->q_vector[v_idx];
> 	adapter->q_vector[v_idx] = NULL;
> 	... the original code...
> 
> But I am not sure if that is what is desired?

I understand the issue what you are trying to solve, I just don't
understand your RCU code. I would expect calls to rcu_dereference()
in order to get q_vector and rcu_assign_pointer() to clear
adapter->q_vector[v_idx], but igb has none.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
