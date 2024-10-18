Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8A39A47E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 22:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0CDD40B27;
	Fri, 18 Oct 2024 20:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qpzpXgz2IeYB; Fri, 18 Oct 2024 20:25:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E437C4098E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729283135;
	bh=JAzDRLPr0s3SdBW8oJdL2yEp2WhchgAIJ4U2S5qbN8g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X32rv0lbykKGHahfpKwDCRNOiM2no3J/yNeRzOerqW6TnS+qjxcG2Js3KIEdMvKno
	 iM29U10C67sTmurS2i0uuG1vWU3cXO005JM/R7i+YsJKg2U5cbyhClf2NmK8POtTK9
	 tIcOK0wJCPp3JHt5YF0ZXZTVhcFZMEd4mvtc5qwBBmvuRU5B0QqYbP9RTlZq8Ro5wV
	 3lCuf+088/W4N1nNcpwG+KgkA0nbcPgQeUPUhTtaPdedbCRSsG3wiSxC4Ul1mYO149
	 Bi/6fRaK1oRgF1rbzm52xhml6IthWbBN29E8VEHVvkM6EjFdRFPOVvLmhVd7ZKcN9N
	 WF/uE8rguc44A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E437C4098E;
	Fri, 18 Oct 2024 20:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E28127E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BE8140247
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:25:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y3-C-fDiMjXK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 20:25:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08617401C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08617401C9
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08617401C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:25:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 6C47AA4152B;
 Fri, 18 Oct 2024 20:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75772C4CEC3;
 Fri, 18 Oct 2024 20:25:27 +0000 (UTC)
Date: Fri, 18 Oct 2024 21:25:25 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20241018202525.GE1697@kernel.org>
References: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
 <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
 <20241017100659.GD1697@kernel.org>
 <f902994c-6f8d-42b5-84d5-c9b277cd2b3a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f902994c-6f8d-42b5-84d5-c9b277cd2b3a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729283129;
 bh=OUnvg0wD5PJrKQJNYvFgcNTAiqsb76J4fRDN4ePuGb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SWhee3dyCY0qWZs3bHXl5eDS1cbC3RbJI6lFQJGoSmDCO3lOzucBPfJM+wkITeZMn
 BJdQ7/F9JKAZvLv/S8ILBirL9+OUSxSYhpSx+KC5oyVXzYZfOfNxABDkdihlpd5ocD
 Ux+sxCP0fc5MU4hh9HwXnnjwfux8GXedrsmg2jb+mJb3dMfIPLY+6DmXiTLaEV6l93
 adPLOJxlUvJS+VAWsoCW+ubx06Diwthok2cuCQ7OpNoz1JDw8BuKj38YNCu7azywxY
 pt3TpbWx3yr1V6TcIgFgcYhuRbKU/3iE2vAlsZheo7XmSL8V3OS92bRh/kZbPu9hw5
 0b0V/H8feWZzw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SWhee3dy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last"
 segment of DDP pkg
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

On Fri, Oct 18, 2024 at 02:06:27PM +0200, Przemek Kitszel wrote:
> On 10/17/24 12:06, Simon Horman wrote:
> > On Thu, Oct 03, 2024 at 02:10:31AM +0200, Przemek Kitszel wrote:
> > > Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order
> > > to mark the "last" one in more elegant way. Next commit will add even
> > > more complicated "sent FW" flow, so it's better to untangle a bit before.
> > > 
> > > Note that metadata buffers were not skipped for NOT-@indicate_last
> > > segments, this is fixed now.
> > > 
> > > Minor:
> > >   + use ice_is_buffer_metadata() instead of open coding it in
> > >     ice_dwnld_cfg_bufs();
> > >   + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to have
> > >     better git-diff, as this function was rewritten (in terms of git-blame)
> > > 
> > > CC: Paul Greenwalt <paul.greenwalt@intel.com>
> > > CC: Dan Nowlin <dan.nowlin@intel.com>
> > > CC: Ahmed Zaki <ahmed.zaki@intel.com>
> > > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > 
> > Hi Przemek,
> > 
> > Some minor feedback from my side.
> 
> Thank you for reaching out!
> 
> > > +static bool ice_is_buffer_metadata(struct ice_buf_hdr *buf)
> > > +{
> > > +	return le32_to_cpu(buf->section_entry[0].type) & ICE_METADATA_BUF;
> > 
> > I see this is moving existing logic around.
> > And I see that this is a no-op on LE systems.
> > But it might be nicer to perform the byte-order conversion on the constant.
> 
> As far as I remember, for this driver we always do have binary-arith
> constants (flags, masks, etc) in CPU-order, so do as I did.
> 
> I could imagine keeping all such constants in HW-order, and such
> approach could potentially set the boundary for byte-order conversions
> to be better expressed/illustrated.
> 
> For new drivers, I will still think more about unit-test-abilty instead,
> and those will be easiest with as much constants expressed in CPU-order.
> 
> No strong opinion here anyway, and I think we agree that it's most
> important to be consistent within the driver/component. I manually
> sampled that for ice, but I don't have a proof.

Yes, we agree. And I also have no strong opinion on this.
So lets leave things as you have them.

...

> > > @@ -1454,17 +1459,16 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
> > >   	}
> > >   	count = le32_to_cpu(seg->signed_buf_count);
> > > -	state = ice_download_pkg_sig_seg(hw, seg);
> > > +	state = ice_download_pkg_sig_seg(ctx, seg);
> > >   	if (state || !count)
> > >   		goto exit;
> > >   	conf_idx = le32_to_cpu(seg->signed_seg_idx);
> > >   	start = le32_to_cpu(seg->signed_buf_start);
> > > -	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
> > > -					    count);
> > > -
> > > +	return ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start, count);
> > 
> > This changes the conditions under which this function sets
> > ctx->err, which is then changed again by the following patch.
> > Is that intentional?
> > 
> > >   exit:
> > > +	ctx->err = state;
> 
> This line is unusual as it changes ctx->err from ctx user code.
> ctx itself updates @err only on new error, it uses "retained error"
> style of API (that I'm clearly a fan of ;))
> 
> Next commit replaces the last (successful) write (via ctx) of ddp,
> and error return from new path would result in
> "ctx->err = ctx->err" update. Not clear, not intentional, not harmful.
> I will update code to leave less space for confusion.

Thanks for the clarification, much appreciated.

...
