Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 579E19F36F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 18:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06F1C60C1F;
	Mon, 16 Dec 2024 17:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykkyg6kxX5Sa; Mon, 16 Dec 2024 17:05:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF234605C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734368756;
	bh=y0ycYAuMAPO9UXgHsm2RPG9h4UA+MMZz7iE/cCNoxJ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ppkKaGX0v7ciivgzuYHYfFaAlyAXsB37JlQkM2ztF6PtEmRM1gEQLlwb2619Vtm4e
	 uC16XBRsBKaKZ9qeP0/deCaiY5517oIQ12pCWcLA1L/p8lZQtn9SXA6QQwvvtFBG4C
	 Qzxm8b2Ca/lNUIscaqvmgBOHOgwpJiyH4Ju//47FnrKQquxSISOuztVEEpl3B+pn6Q
	 Be4W/XfYbn8JWNvgJSkXh+ystFoE3/VmRGoK2th8WmsZXX7itZoY9Ju9Xj3hITt3f4
	 uQSjeVdceqfpaIRCgAYOvU/fKyUphkEoN6/omEG8OW2uNMZhLJeGmUlD3f4jl5/Xci
	 o8iRv9OEQBOaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF234605C8;
	Mon, 16 Dec 2024 17:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E6B41C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C25EA40714
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q0DgPvRDWVt0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 17:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 779D840710
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779D840710
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 779D840710
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:05:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 29DF45C64C2;
 Mon, 16 Dec 2024 17:05:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93F6DC4CED0;
 Mon, 16 Dec 2024 17:05:50 +0000 (UTC)
Date: Mon, 16 Dec 2024 17:05:48 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20241216170548.GI780307@kernel.org>
References: <20241211132745.112536-2-przemyslaw.kitszel@intel.com>
 <20241212163047.GA73795@kernel.org>
 <7367ea55-1607-4fd2-a392-13a9fe84167f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7367ea55-1607-4fd2-a392-13a9fe84167f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734368752;
 bh=o7V9eLY9EflcOwMEm3JOIuftFONI4Cv7WKHRUJrVVBU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fYTbq1Ftud10zREkEN0d1t9a+C9QD7pKRMxZQ8c9HfODl5JK1++u7cq2TWGMAeaqM
 InRBE9XJ4qoMzAGOUF6bspup5iLrbwhBjjij97CUnKIu0/RBON7bkb7ZuHlm5RDjWl
 FxtPPT+/3/kXO20t9BeXhdjE3uz9Z+pky0Ogm9EY/P/TiLs/ClHGlGEnxasxvKL3s8
 iUo8XF1Dy+78vg0m7SvPAtm1SQ8VnRZJg1iSWCDpw7J6GuKvoMvoDmYp8IiLZkWVAS
 px8Rj6WItDbopfMQTAWkJsmt50HjZsP5ekt9YQGWM9j0sUfGorduSYUU65pkiFsYNi
 sqEzSaNRf0wAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fYTbq1Ft
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix
 ice_parser_rt::bst_key array size
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

On Mon, Dec 16, 2024 at 06:58:35AM +0100, Przemek Kitszel wrote:
> On 12/12/24 17:30, Simon Horman wrote:
> > On Wed, Dec 11, 2024 at 02:26:36PM +0100, Przemek Kitszel wrote:
> > > Fix &ice_parser_rt::bst_key size. It was wrongly set to 10 instead of 20
> > > in the initial impl commit (see Fixes tag). All usage code assumed it was
> > > of size 20. That was also the initial size present up to v2 of the intro
> > > series [2], but halved by v3 [3] refactor described as "Replace magic
> > > hardcoded values with macros." The introducing series was so big that
> > > some ugliness was unnoticed, same for bugs :/
> > > 
> > > ICE_BST_KEY_TCAM_SIZE and ICE_BST_TCAM_KEY_SIZE were differing by one.
> > > There was tmp variable @j in the scope of edited function, but was not
> > > used in all places. This ugliness is now gone.
> > > I'm moving ice_parser_rt::pg_prio a few positions up, to fill up one of
> > > the holes in order to compensate for the added 10 bytes to the ::bst_key,
> > > resulting in the same size of the whole as prior to the fix, and miminal
> > > changes in the offsets of the fields.
> > > 
> > > This fix obsoletes Ahmed's attempt at [1].
> > > 
> > > [1] https://lore.kernel.org/intel-wired-lan/20240823230847.172295-1-ahmed.zaki@intel.com
> > > [2] https://lore.kernel.org/intel-wired-lan/20230605054641.2865142-13-junfeng.guo@intel.com
> > > [3] https://lore.kernel.org/intel-wired-lan/20230817093442.2576997-13-junfeng.guo@intel.com
> > > 
> > > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > Closes: https://lore.kernel.org/intel-wired-lan/b1fb6ff9-b69e-4026-9988-3c783d86c2e0@stanley.mountain
> > > Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
> > > CC: Ahmed Zaki <ahmed.zaki@intel.com>
> > > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > 
> > Hi Przemek,
> > 
> > I agree that these changes are good.  But I wonder if it would be best to
> > only treat the update size of bst_key as a fix.
> 
> I was also wondering, to the point that my first version was with
> all 20 key bytes debug-printed in the exact way as it was prior to the
> patch. Would be fine to just drop the printing part?

Sorry, I didn't notice that the printing is updated to accommodate
the larger key. So on a second review, I think the patch is fine,
as long as a delimiter is added as noted in my previous email.

> 
> > 
> > ...
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > > index dedf5e854e4b..d9c38ce27e4f 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > > @@ -125,22 +125,20 @@ static void ice_bst_key_init(struct ice_parser_rt *rt,
> > >   	else
> > >   		key[idd] = imem->b_kb.prio;
> > > -	idd = ICE_BST_KEY_TCAM_SIZE - 1;
> > > +	idd = ICE_BST_TCAM_KEY_SIZE - 2;
> > >   	for (i = idd; i >= 0; i--) {
> > >   		int j;
> > >   		j = ho + idd - i;
> > >   		if (j < ICE_PARSER_MAX_PKT_LEN)
> > > -			key[i] = rt->pkt_buf[ho + idd - i];
> > > +			key[i] = rt->pkt_buf[j];
> > >   		else
> > >   			key[i] = 0;
> > >   	}
> > > -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
> > > -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
> > > -		  key[0], key[1], key[2], key[3], key[4],
> > > -		  key[5], key[6], key[7], key[8], key[9]);
> > > -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
> > > +	ice_debug_array_w_prefix(rt->psr->hw, ICE_DBG_PARSER,
> > > +				 KBUILD_MODNAME "Generated Boost TCAM Key",
> > 
> > Should there be a delimeter between KBUILD_MODNAME and "Generated ..." ?
> > e.g.:
> 
> thank you :)
> 
> > 
> > 				 KBUILD_MODNAME ": Generated Boost TCAM Key",
> > 
> > > +				 key, ICE_BST_TCAM_KEY_SIZE);
> > >   }
> > >   static u16 ice_bit_rev_u16(u16 v, int len)
> > > 
> > > base-commit: 51a00be6a0994da2ba6b4ace3b7a0d9373b4b25e
> > > -- 
> > > 2.46.0
> > > 
> > > 
> 
