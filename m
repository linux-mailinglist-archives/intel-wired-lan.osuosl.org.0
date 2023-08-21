Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7714B782475
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 09:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C3F9408D4;
	Mon, 21 Aug 2023 07:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C3F9408D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692603014;
	bh=ihg1mhHSgzGwI02ZK77lO0nIqxXMcr0VvU4dc9czvn8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1msphzQy0TzXWkcvEwgZXos/VZHZdn+l0ftZENawxC9qdMULWB/GXptpMOAlkC/Vs
	 wQZm4DTQxpTpmjnX14UuM563yX8ybxcTfyl1ED0tc4omVAQ9J+eqgrvnzN4ZDay2Ni
	 E/pawpdf8txv3MLO+iBptwOPdiHUc3UVC8eSiYJANGxrCLD2XWlxGW8P1uljUAusPe
	 oDM1hdTUlQC9C09BUWPbeKs+dKc8cCxAOC7ckOMvaSFp7G9ArQ7BZ6MAuPnh5XJBU6
	 XUNFK6J03S529g6ewFDPHs3wsIYgdJE2HEBj2sPTtZibPU0pYoE7+5jCDMUII0tMKm
	 9/WKQe1MvTFIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXTocA7yL-km; Mon, 21 Aug 2023 07:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDD7F40286;
	Mon, 21 Aug 2023 07:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD7F40286
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50D5D1BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36ACE81B52
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36ACE81B52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19IuG_YfnLi9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 07:30:06 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BDBB81A23
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BDBB81A23
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 934CE62BC6;
 Mon, 21 Aug 2023 07:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39352C433C7;
 Mon, 21 Aug 2023 07:30:03 +0000 (UTC)
Date: Mon, 21 Aug 2023 09:30:00 +0200
From: Simon Horman <horms@kernel.org>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <20230821073000.GC2711035@kernel.org>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
 <20230821023833.2700902-2-junfeng.guo@intel.com>
 <20230821072037.GB2711035@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230821072037.GB2711035@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692603004;
 bh=fJxR8tRtwimzAM69IKo/gimiMbMYo913Qdg4j6aF5/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o2yt0Jbag8YpsjfOAjbCks2pMkiSnfvqnBM5O9XCMowmoHsFI1Vlx8Zr2jNaOm3Kg
 SeAgroRaFa9VzF733FIC+09PBmcmnE8LMU6TjKg3Hde+H8V/dl7ozRMencsSdJX9ET
 VibHI0KTgTadHi7FNZyZLUEs1wDMAD6Ey+LGiKbIM+s6X9NRt6ckM6YLlzfFyyYInr
 07Noqjz/OFTfR63Po5907mZFle9gqEoqCx09MAE27ev3M7scbzdT0u0X4K0PeqwHDO
 KEGchDg0HNjT5cW0hnUAjry4NrDoxnWZvgkUxlu7AAUgaY/IXdpEiIXeDsb95Z/bwu
 Nm06G8ET773xQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o2yt0Jba
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/15] ice: add parser
 create and destroy skeleton
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 21, 2023 at 09:20:37AM +0200, Simon Horman wrote:
> On Mon, Aug 21, 2023 at 10:38:19AM +0800, Junfeng Guo wrote:
> > Add new parser module which can parse a packet in binary
> > and generate information like ptype, protocol/offset pairs
> > and flags which can be used to feed the FXP profile creation
> > directly.
> > 
> > The patch added skeleton of the create and destroy APIs:
> > ice_parser_create
> > ice_parser_destroy
> > 
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> 
> Hi Junfeng Guo,
> 
> some minor feedback from my side.
> 
> > ---
> >  drivers/net/ethernet/intel/ice/ice_common.h |  4 +++
> >  drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++---
> >  drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
> >  drivers/net/ethernet/intel/ice/ice_parser.c | 34 +++++++++++++++++++++
> 
> Perhaps I am missing something, but it seems that although
> ice_parser.c is added by this patch-set, it is not added to
> the build by this patch-set. This seems a little odd to me.

Sorry, somehow I wasn't looking at the entire series.
I now see that ice_parser.c is compiled as of patch 12/15 of this series.

> 
> >  drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
> >  5 files changed, 69 insertions(+), 5 deletions(-)
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> > new file mode 100644
> > index 000000000000..42602cac7e45
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -0,0 +1,34 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +
> > +/**
> > + * ice_parser_create - create a parser instance
> > + * @hw: pointer to the hardware structure
> > + * @psr: output parameter for a new parser instance be created
> > + */
> > +int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
> > +{
> > +	struct ice_parser *p;
> > +
> > +	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
> > +			 GFP_KERNEL);
> > +	if (!p)
> > +		return -ENOMEM;
> > +
> > +	p->hw = hw;
> > +	p->rt.psr = p;
> 
> It is, perhaps academic if this file isn't compiled, but the rt field of
> struct ice_parser doesn't exist at this point of the patch-set: it is added
> by the last patch of the patch-set.

And I see this field is added in patch 10/15, rather than the last patch
(15/15) as I previously stated.

> 
> > +
> > +	*psr = p;
> > +	return 0;
> > +}
> > +
> > +/**
> > + * ice_parser_destroy - destroy a parser instance
> > + * @psr: pointer to a parser instance
> > + */
> > +void ice_parser_destroy(struct ice_parser *psr)
> > +{
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> > +}
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
