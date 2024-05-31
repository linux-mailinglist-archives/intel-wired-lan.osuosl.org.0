Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC1D8D68BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28D1E4246C;
	Fri, 31 May 2024 18:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id olRKImtnvqOG; Fri, 31 May 2024 18:12:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5075342468
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179128;
	bh=YTeCQH8c4iSgAEch1LLSZ7JoenQRRD0qfgLROm4HE4Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kAfny4qTQR2OLc07oouRxiu3i6B7aT/6bBMkOotLNcWCJkwO3jKQDhVSE7x8tRv9b
	 og8T7R8F+Gy8jWzVPORmjUkEOG5ym9eeT0Uj/ZJ70W7ZAwNkXbmu6UIrQzk+CS+rI9
	 sffmzMqeBGqP72+fxGnu8iPMX7YCkduulnI6gpr1raRXfgnKEeeRSgqRbLWiTexioM
	 YGIGr+nddIrcHSVbf2yL+m/Z7osriVKd/s9BjYsnb6yCiJRuO42v36pK65ZcsqXrWv
	 l1jmic/tVu1F8W7MhTNjD3g9i9WOUIj2GKEa5VQ4U9gSu1O6aoq3qw+yO4g48uTQua
	 QhaPk/TGdhu2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5075342468;
	Fri, 31 May 2024 18:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8BB21BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE134845C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:12:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CdYoGbVPE_Sk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:12:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1068C845BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1068C845BF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1068C845BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:12:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7FFC262A98;
 Fri, 31 May 2024 18:12:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81B49C116B1;
 Fri, 31 May 2024 18:12:01 +0000 (UTC)
Date: Fri, 31 May 2024 19:11:59 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240531181159.GD491852@kernel.org>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-12-ahmed.zaki@intel.com>
 <20240531131802.GG123401@kernel.org>
 <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179123;
 bh=2W5a4FkyIWrmZpTDIuM0HNCBwfLq0NtYDbJGbW/qSwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WkNB/UYde4Vf4gq7BXTPhxovzYDYIarLppMOLcp9q/QSxifA7WHFr0sIiqliUgEa/
 X6OVdRZsBeCD4r7VLcUao9G8cCd9GO9ifbn1uzWws4yeeduNabTJuC471LZh/3tPri
 pilBEin7I3FpXt6EuwrBmB8hezFfuWgCN9cIj6P8u5LbksJG+mqnRg8fz2Ojmm2eLR
 OqPZ9OHMCqtE9e4BF41mPjLsxf/wIbrEHf2iq9UFvfKlCOdaFoAMrnjY6icuQNBSGW
 y/QDgLXvFl0fAoDd0G5gUbnL4rKJiwHjyJYwwICtZgRSsUOQ8nuCM5NksjAVwt9n29
 yX3Dzuahiuytw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WkNB/UYd
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
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
Cc: Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 31, 2024 at 09:47:47AM -0600, Ahmed Zaki wrote:
> 
> 
> On 2024-05-31 7:18 a.m., Simon Horman wrote:
> > On Mon, May 27, 2024 at 12:58:08PM -0600, Ahmed Zaki wrote:
> > > From: Junfeng Guo <junfeng.guo@intel.com>
> > > 
> > > Enable VFs to create FDIR filters from raw binary patterns.
> > > The corresponding processes for raw flow are added in the
> > > Parse / Create / Destroy stages.
> > > 
> > > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > > Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > 
> > ...
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> > 
> > ...
> > 
> > > +/**
> > > + * ice_flow_set_parser_prof - Set flow profile based on the parsed profile info
> > > + * @hw: pointer to the HW struct
> > > + * @dest_vsi: dest VSI
> > > + * @fdir_vsi: fdir programming VSI
> > > + * @prof: stores parsed profile info from raw flow
> > > + * @blk: classification blk
> > > + */
> > > +int
> > > +ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
> > > +			 struct ice_parser_profile *prof, enum ice_block blk)
> > > +{
> > > +	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > > +	struct ice_flow_prof_params *params __free(kfree);
> > > +	u8 fv_words = hw->blk[blk].es.fvw;
> > > +	int status;
> > > +	int i, idx;
> > > +
> > > +	params = kzalloc(sizeof(*params), GFP_KERNEL);
> > > +	if (!params)
> > > +		return -ENOMEM;
> > 
> > 
> > params seems to be leaked when this function returns below,
> > in both error and non-error cases.
> 
> Shouldn't the __free guard take care of this?

Yes, sorry for missing that.

...

> > > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > index 5635e9da2212..9138f7783da0 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > @@ -1,8 +1,8 @@
> > >   // SPDX-License-Identifier: GPL-2.0
> > >   /* Copyright (C) 2022, Intel Corporation. */
> > > -#include "ice_vf_lib_private.h"
> > >   #include "ice.h"
> > > +#include "ice_vf_lib_private.h"
> > >   #include "ice_lib.h"
> > >   #include "ice_fltr.h"
> > >   #include "ice_virtchnl_allowlist.h"
> > 
> > To me tweaking the order of includes seems to indicate
> > that something isn't quite right. Is there some sort of
> > dependency loop being juggled here?
> 
> This was needed because of the changes in ice_flow.h, struct ice_vsi is now
> used. I will check if there is a better fix.

Thanks.

...

> > > +static int
> > > +ice_vc_fdir_parse_raw(struct ice_vf *vf,
> > > +		      struct virtchnl_proto_hdrs *proto,
> > > +		      struct virtchnl_fdir_fltr_conf *conf)
> > > +{
> > > +	u8 *pkt_buf, *msk_buf __free(kfree);
> > > +	struct ice_parser_result rslt;
> > > +	struct ice_pf *pf = vf->pf;
> > > +	struct ice_parser *psr;
> > > +	int status = -ENOMEM;
> > > +	struct ice_hw *hw;
> > > +	u16 udp_port = 0;
> > > +
> > > +	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > > +	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > 
> > msk_buf appears to be leaked both in when this function
> > returns for both error and non-error cases.
> 
> Same, guarded by __free. I am new to these guards myself, pls let me know if
> I am missing something.

No, sorry. Somehow I missed the __free.
I think we are good here.
