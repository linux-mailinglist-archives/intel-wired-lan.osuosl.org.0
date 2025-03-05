Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D57A2A4FD69
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:18:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE60081BCB;
	Wed,  5 Mar 2025 11:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5FW40oYN69BN; Wed,  5 Mar 2025 11:18:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1087F81A5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173501;
	bh=AdWVyIfxz0UQdMzRE4lO20zV95NynJXkpqJCFbGsuWU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l8XJeKQw+y8m/5LxooJn4kEfIRTMRW2qk6k1usbYeRlaST4i04BRUwn0xVcKUFRfv
	 U1LRqPlIZ57Saa7u/z9lZRKeFsHCPvfzzqCnPCeX/YHgfrGgUjF8d8XtbP+taLVSQD
	 /EgNwHTCPqaQSxfBkQd2fVR0uSkL5FQjq8z2phJw2bkLTZiISHclYVY87/jCGhdPJC
	 P3J61oByTY9RjEkzIZAhYIPg30N0DVSEqxrOYvTP5dwnYGWN0aMPiva1re/VhwlQZo
	 XU5IoDGHzAQEXFoRR5wsGXpwZBsglZm5DESxUSPIz7eFFj3xr79uJiXwdiQJGAFmHN
	 sgPgp1J7mpO4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1087F81A5F;
	Wed,  5 Mar 2025 11:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F1EDE2E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B6CF400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Khjz0t0QZy_l for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:18:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 735BC4055F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 735BC4055F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 735BC4055F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:18:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CFDDF5C6751;
 Wed,  5 Mar 2025 11:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B52BC4CEE8;
 Wed,  5 Mar 2025 11:18:16 +0000 (UTC)
Date: Wed, 5 Mar 2025 11:18:14 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250305111814.GN3666230@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
 <20250228171753.GL1615191@kernel.org>
 <68c841b7-fb5b-4c52-bd55-b98c80ad8667@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68c841b7-fb5b-4c52-bd55-b98c80ad8667@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741173497;
 bh=AMj0T5cjbneiIK87/JwlTZphSCgrwEa5xD0C7q8jdB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uA7J1/yOxXvwwe6wJsQwf4Ewwx1aMg0LInGJab0UOxx8Skuod61OXmP+gpN97CUoR
 OirujzcP9sgTw25TCPe5sg5KaLr2MfRVBCZ/aBUXIOQF67l9AJRKUAR0/qezkLCZw5
 wsPfaPu8moX9RDk2HB0okM70dS3OKwxP5VBZgKet4hkKoKmpzmg2G8/7deAqIJV2Za
 ffQCp1ElcAZXl/iCUIpjRInkPfF3Zxs/wS6eipED8MWd/N1lK5sPGuYSGSMH4Vf0/q
 q4q1BHAd17QYALdfpd6H1vQhj9jHwb95YKojpzzhDw2T33MVaAdQ2TxIyDJdaGLxOR
 OU2KaVlV2961w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uA7J1/yO
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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

On Mon, Mar 03, 2025 at 11:00:35AM +0100, Przemek Kitszel wrote:
> On 2/28/25 18:17, Simon Horman wrote:
> > On Tue, Feb 25, 2025 at 10:08:49AM +0100, Martyna Szapar-Mudlaw wrote:
> > > From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> > > 
> > > Fix using the untrusted value of proto->raw.pkt_len in function
> > > ice_vc_fdir_parse_raw() by verifying if it does not exceed the
> > > VIRTCHNL_MAX_SIZE_RAW_PACKET value.
> > > 
> > > Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
> > > Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> > > Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> > > ---
> > >   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
> > >   1 file changed, 17 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > index 14e3f0f89c78..6250629ee8f9 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > @@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
> > >   	u8 *pkt_buf, *msk_buf __free(kfree);
> > >   	struct ice_parser_result rslt;
> > >   	struct ice_pf *pf = vf->pf;
> > > +	u16 pkt_len, udp_port = 0;
> > >   	struct ice_parser *psr;
> > >   	int status = -ENOMEM;
> > >   	struct ice_hw *hw;
> > > -	u16 udp_port = 0;
> > > -	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > > -	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > > +	if (!proto->raw.pkt_len)
> > > +		return -EINVAL;
> > 
> > Hi Martyna,
> > 
> > It seems to me that the use of __free() above will result in
> > kfree(msk_buf) being called here. But msk_buf is not initialised at this
> > point.
> > 
> > My suggest would be to drop the use of __free().
> > But if not, I think that in order to be safe it would be best to do this
> > (completely untested;
> > 
> > 	u8 *pkt_buf, *msk_buf __free(kfree) = NULL;
> 
> Oh yeah!, thank you Simon for catching that.
> 
> I would say "naked __free()" was harmful here.

Yes, quite.
