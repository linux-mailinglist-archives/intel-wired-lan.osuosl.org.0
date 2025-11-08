Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD1EC43008
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 17:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC07B811C6;
	Sat,  8 Nov 2025 16:37:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDFKkQ5nwi3r; Sat,  8 Nov 2025 16:37:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11CE580F5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762619825;
	bh=OgKvQpo+18c2Kd8I5LEEz34v3JgbfmdfKeQ9jCsdo+o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LJX89am+WPvzTJzUzCzjR5ciUpAcIF40UV1vWoQizyEuE9YbI4FysvFsLUQJzQuHr
	 gJX6T4pdDGJv8EoRpwHZwtYWNsLsyGM6WznQa0QEEICnZKlNkFdyTZseg5JweBk1Fw
	 g3wNYDezyioD9ZOIbUHMWRO/wEOJOmKpr4HZBvCIOxueBM1e3NCyRPRwqUB77pLC1f
	 GtxK6s0FNJqTc4XAzOm+7PNX2ku1fQcmdVCnWChgeLlJtmrJuL70XGJ+57A1kNlpgB
	 X0nqaNslJAWdeFYkE+6ANxFoUUFCNW9ittX1/iLZgGgqNEMe9TCRn05eJG1sZiEE48
	 1lX3/IEmU8OkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11CE580F5F;
	Sat,  8 Nov 2025 16:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 307C22CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 16:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 227E86063B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 16:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L5dtvG2INFJp for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 16:37:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BADAB60638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BADAB60638
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BADAB60638
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 16:37:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DF0B540B98;
 Sat,  8 Nov 2025 16:37:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334C7C16AAE;
 Sat,  8 Nov 2025 16:36:57 +0000 (UTC)
Date: Sat, 8 Nov 2025 16:36:55 +0000
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Ally Heev <allyheev@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <aQ9xp9pchMwml30P@horms.kernel.org>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762619820;
 bh=LVT/aIc2AON71l19ykVx0Fj5Bo0LsiK+P1KP4yuRAkc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UogX/wtWXGveHNi5Em0vXRdgXw47JbmHjtRNDT1sbxetQOrviyCtRRnWBqFBMbyh/
 DjfLPBul3iwbBViop268FCO1X1Sh345YbI0xD7QH4rTBGwV82ApQ0uo2HcEKGi91i5
 T4ixlSoOkS0aVHfEw9wTUDzdVlg0EaYv2veGEEN1nqtVnvmtluIvThF2BBVEE1TaM1
 QGbzZOo1waADecLNENgmjqFwpPd9DYb2PyR5hYc8tAaA0JxPFDiCnP6fgXIQXFkjRT
 SD1Ls0Pi+qbphltPr0kHJO6ywttC7sqMeeAlEglbSC0OZ+gpunSTmLV6lib5M45Qo0
 nbhdv69juwlqQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UogX/wtW
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 06, 2025 at 03:07:26PM +0100, Alexander Lobakin wrote:
> From: Ally Heev <allyheev@gmail.com>
> Date: Thu, 06 Nov 2025 17:25:48 +0530
> 
> > Uninitialized pointers with `__free` attribute can cause undefined
> > behavior as the memory assigned randomly to the pointer is freed
> > automatically when the pointer goes out of scope.
> > 
> > It is better to initialize and assign pointers with `__free`
> > attribute in one statement to ensure proper scope-based cleanup.
> > 
> > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
> > Signed-off-by: Ally Heev <allyheev@gmail.com>
> > ---
> > Changes in v3:
> > - fixed style issues
> > - Link to v2: https://lore.kernel.org/r/20251106-aheev-uninitialized-free-attr-net-ethernet-v2-1-048da0c5d6b6@gmail.com
> > 
> > Changes in v2:
> > - fixed non-pointer initialization to NULL
> > - NOTE: drop v1
> > - Link to v1: https://lore.kernel.org/r/20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com
> > ---
> >  drivers/net/ethernet/intel/ice/ice_flow.c       | 5 +++--
> >  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++--
> >  2 files changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> > index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b3809d715e40bb290e40c4aa 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > @@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
> >  			 struct ice_parser_profile *prof, enum ice_block blk)
> >  {
> >  	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > -	struct ice_flow_prof_params *params __free(kfree);
> >  	u8 fv_words = hw->blk[blk].es.fvw;
> >  	int status;
> >  	int i, idx;
> >  
> > -	params = kzalloc(sizeof(*params), GFP_KERNEL);
> > +	struct ice_flow_prof_params *params __free(kfree) =
> > +		kzalloc(sizeof(*params), GFP_KERNEL);
> 
> Please don't do it that way. It's not C++ with RAII and
> declare-where-you-use.
> Just leave the variable declarations where they are, but initialize them
> with `= NULL`.
> 
> Variable declarations must be in one block and sorted from the longest
> to the shortest.
> 
> But most important, I'm not even sure how you could trigger an
> "undefined behaviour" here. Both here and below the variable tagged with
> `__free` is initialized right after the declaration block, before any
> return. So how to trigger an UB here?

FWIIW, I'd prefer if we sidestepped this discussion entirely
by not using __free [1] in this driver.

It seems to me that for both functions updated by this
patch that can easily be achieved using an idiomatic
goto label to free on error.

[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

...
