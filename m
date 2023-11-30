Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E937FF534
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 17:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5CBC8460B;
	Thu, 30 Nov 2023 16:26:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5CBC8460B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701361610;
	bh=Che3iWO0WVl7LqrJSZD3qTkdAEkrWvB7PNNdT2CD4Sw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2VLYebCtywZXViSzljvjPfe5ypqH0tr09O12dLHXGqLpvOr8KY5fDoEVXvlaNGgja
	 pd8wtLeGj5j6v9DVesFf7iOn2Ud7N9O/6XADejfUlRW47kWqhO1Ps3vm+Ir0cFo5B1
	 mcFwPNnClCwp9P6nyMj7JzTRx+Lm9EetlmSjn0vYDHNk4JdBhB+ePArJ8g+HXpbIxx
	 1tcwAkaBpmlAMFHC+zA/Br5rXppBY07tT38wuY0v2hO9pDESedWDetByiZ8+3Kw/8e
	 60aZvG86I6LJ9yaDKmL32Oxx1nhpn++L1g47uBeFvI8fbNwWFNlz1JgYSclQomjUAr
	 WPJ8EPaojMZ3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4AC_xnT-ql8; Thu, 30 Nov 2023 16:26:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A835A8456B;
	Thu, 30 Nov 2023 16:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A835A8456B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1A11BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7E35615B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7E35615B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VbYRWgi5xcCU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 16:26:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D4E261527
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D4E261527
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 10B3C61CBB;
 Thu, 30 Nov 2023 16:26:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63175C433C8;
 Thu, 30 Nov 2023 16:26:41 +0000 (UTC)
Date: Thu, 30 Nov 2023 16:26:38 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231130162638.GB32077@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-14-jesse.brandeburg@intel.com>
 <20231124110335.GM50352@kernel.org>
 <7f2f2eaa-ab5b-461f-80ae-fce4133a2c1d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f2f2eaa-ab5b-461f-80ae-fce4133a2c1d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701361602;
 bh=xfaVrcCdW69x+UyIVWg5cih80tcXR5effRxP4fTm0+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BS/8xhH6Now352SAp4/IyCVYf5HHfg5Cq9YmFjrdae5NZZbodYhm+/SDm2+6xdURc
 z8rJlLEr0hhDOKBMUcCss0F/k2mjAHWNVIaR9wdMvypYlgRfJ7BIi3353181GUi5Dw
 pBeb4Jg4uO+3kvvs2jFTNdLP074S1uylf4Nk5hIGFbn7BKOXe6bylXxilvqo8nRB/g
 ew6cqraztT0M3gH3e5xibPR0SKs8UzNO/zIPBTWO3QoK/lYfSqn+l8o7XCpod4aQTQ
 nAB/xjijsk+HN07Hj07QFOZySF9z3KE6iInIJGLoqgor6IA4W+1X2gkMiz1FqsvaRh
 jleaTTJJKDuUw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BS/8xhH6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 13/13] ice: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, intel-wired-lan@lists.osuosl.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 29, 2023 at 02:31:53PM -0800, Jesse Brandeburg wrote:
> On 11/24/2023 3:03 AM, Simon Horman wrote:
> > On Tue, Nov 21, 2023 at 01:19:21PM -0800, Jesse Brandeburg wrote:
> >> Refactor the ice driver to use FIELD_GET() for mask and shift reads,
> >> which reduces lines of code and adds clarity of intent.
> >>
> >> This code was generated by the following coccinelle/spatch script and
> >> then manually repaired.
> >>
> >> @get@
> >> constant shift,mask;
> >> type T;
> >> expression a;
> >> @@
> >> -(((T)(a) & mask) >> shift)
> >> +FIELD_GET(mask, a)
> >>
> >> and applied via:
> >> spatch --sp-file field_prep.cocci --in-place --dir \
> >>  drivers/net/ethernet/intel/
> >>
> >> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> >> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> >> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > 
> 
> thanks for the review Simon! I wanted to note here, I found a small fix
> was needed to the code while doing further review and testing on this patch.
> 
> <pasted as quote below>
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
> > index 7f3e00c187b4..74418c445cc4 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dcb.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
> > @@ -967,7 +967,7 @@ void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
> > 
> >         mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
> > 
> > -       change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M,  mib->type);
> > +       change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
> >         if (change_type == ICE_AQ_LLDP_MIB_REMOTE)
> >                 dcbx_cfg = &pi->qos_cfg.remote_dcbx_cfg;
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 8cdd53412748..d1c1e53fe15c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -974,8 +974,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
> >         /* Traffic from VSI can be sent to LAN */
> >         ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;
> >         /* allow all untagged/tagged packets by default on Tx */
> > -       ctxt->info.inner_vlan_flags = FIELD_GET(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
> > -                                               ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
> > +       ctxt->info.inner_vlan_flags = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
> > +                                                ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
> >         /* SVM - by default bits 3 and 4 in inner_vlan_flags are 0's which
> >          * results in legacy behavior (show VLAN, DEI, and UP) in descriptor.
> >          *
> 
> I'll work with Tony to get the fixes above applied before he relays the
> patch upstream as a pull request.

Thanks Jesse,

for the record this is fine by me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
