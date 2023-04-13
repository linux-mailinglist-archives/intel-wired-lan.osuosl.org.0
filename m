Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7EC6E1352
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 19:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8B7F429F3;
	Thu, 13 Apr 2023 17:17:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8B7F429F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681406242;
	bh=Adc6koBRk58FKZou5XyphAUx7h65AAmgbRwaOMeWOMk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LqVpx4iNlJqpJy+G2iTB48OI2ctZlSS9HGOO98aLjxWbKrYQWIihQH33nae8TUfs9
	 7fEWjDnLbURFpXLSgr2xXHnU6GklzKtf1Dw17hbGw3usu8RW5yn7ZbTs4ehoMrMNXv
	 lB2Qf33tMs8SeMPC57EDQU3WKcTNwcvtt2pvhnZhofW3JJjvORwtbLz3clds1c/VzZ
	 kK4Nsnj8sWKDeCr70cqLahRzXASxG2XPjZT6DRpcuN69rf9cNvX2tKtrBD5pSEA6KW
	 vcaJu0CteGnJ0ZXFsZ8y7TQm7E8gOQJMET2EfqyAWQwdPkukap8Gw8/QMwublSS68X
	 5Uno80K4uvaoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otgsr5Zrw_GW; Thu, 13 Apr 2023 17:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1BB6429E4;
	Thu, 13 Apr 2023 17:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1BB6429E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B97E71BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 17:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 912B161698
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 17:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 912B161698
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFQr1kKfblAe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 17:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE1096168B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE1096168B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 17:17:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1E6D064066;
 Thu, 13 Apr 2023 17:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE555C433D2;
 Thu, 13 Apr 2023 17:17:13 +0000 (UTC)
Date: Thu, 13 Apr 2023 20:17:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20230413171710.GW17993@unreal>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <20230413131726.GQ17993@unreal>
 <DM6PR11MB4657BB5D26421ECA7709C79B9B989@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657BB5D26421ECA7709C79B9B989@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681406234;
 bh=WVGfre3QBuukzcuJT8qpJQMfItIiegxThh0TEh6FLlE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MbSTT/OuM1W9kazwfGCuX7qMry/bvpClkZ6rzFpsmqQSpq/Ar9sPKGBiiRtvQA5Li
 xdVDkmFJYHFppAe1nyI6Jtnki9ooxHLNj2pNwA0Chx7PMS2MNGvDr9zbaqif8eL3rz
 UfzWQ5fVRYl9RCzgFNoWmr+2kxLjZpiTn0fYhIej7p2KEkGhghuN5ab3+rtCcOA7p8
 CmIvdKtCSJjMglB0MTBxF6njyb9oL8ZRzlN0mcGUDtvK9RvW+KL6945ES2R/e9rtyF
 RgSlWo8uZ9oCfK9g2FaiXLe3x8FC8Zyib4PuQpxSARaY1T5IUq0htYdbBbxtI8yDwb
 cmtUzqIOYU4hA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MbSTT/Ou
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 13, 2023 at 02:04:33PM +0000, Kubalewski, Arkadiusz wrote:
> >From: Leon Romanovsky <leon@kernel.org>
> >Sent: Thursday, April 13, 2023 3:17 PM
> >
> >On Wed, Apr 12, 2023 at 03:38:11PM +0200, Arkadiusz Kubalewski wrote:
> >> If Clock Generation Unit and dplls are present on NIC board user shall
> >> know its details.
> >> Provide the devlink info callback with a new:
> >> - fixed type object `cgu.id` - hardware variant of onboard CGU
> >> - running type object `fw.cgu` - CGU firmware version
> >> - running type object `fw.cgu.build` - CGU configuration build version
> >>
> >> These information shall be known for debugging purposes.
> >>
> >> Test (on NIC board with CGU)
> >> $ devlink dev info <bus_name>/<dev_name> | grep cgu
> >>         cgu.id 8032
> >>         fw.cgu 6021
> >>         fw.cgu.build 0x1030001
> >>
> >> Test (on NIC board without CGU)
> >> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
> >> 0
> >>
> >> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> >> ---
> >>  Documentation/networking/devlink/ice.rst     | 14 +++++++++
> >>  drivers/net/ethernet/intel/ice/ice_devlink.c | 30 ++++++++++++++++++++
> >>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
> >>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
> >>  drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
> >>  5 files changed, 62 insertions(+), 8 deletions(-)
> >
> ><...>
> >
> >>  Flash Update
> >>  ============
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> index bc44cc220818..06fe895739af 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> @@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf
> >>__always_unused *pf,
> >>  		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
> >>  }
> >>
> >> +static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
> >> +{
> >> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
> >> +		struct ice_hw *hw = &pf->hw;
> >> +
> >> +		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
> >> +	}
> >
> >Please use kernel coding style - success oriented flow
> >
> >struct ice_hw *hw = &pf->hw;
> >
> >if (!ice_is_feature_supported(pf, ICE_F_CGU))
> >  return;
> >
> >snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
> >
> >
> >However, it will be nice to have these callbacks only if CGU is
> >supported, in such way you won't need any of ice_is_feature_supported()
> >checks.
> >
> >Thanks
> 
> Sure, I will fix as suggested in the next version.
> Although most important is to achieve common understanding and agreement if
> This way is the right one. Maybe those devlink id's shall be defined as a
> part of "include/net/devlink.h", so other vendors could use it?

Once second vendor materialize, it will be his responsibility to move
common code to devlink.h.

> Also in such case probably naming might need to be unified.
> 
> Thank you!
> Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
