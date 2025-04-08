Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5AAA7FB92
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 12:22:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF56261125;
	Tue,  8 Apr 2025 10:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NjC4MeLSNtlH; Tue,  8 Apr 2025 10:22:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24C1161136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744107760;
	bh=tGL4DQgFHOnbWIHIK99GCe91Oa6foeGiTjkwoeqmCJg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X+CjohrU+L3ZHvPvc4Hw95oA+GkQoLTIwV77rVcF9Uf023CyfbqcLH/iMargy7wLL
	 ZedcvU9/HjfWO59pWWbTxOA8gRT4shfg1u4QZYMeevdnZrUkPeGkXGp/Gc+9jKoA8j
	 4gziYVMnRMbb8wRqxdSyS0CWRVU8TucPrKA+WAMQEZ63o13SsXqacUGESaZHprr/q0
	 nBMMNlGrIUKGRMr7EZyCktm8K7uLPReDyFFaKOpsCYTbg12PCvNiIe2m7syll0zchC
	 jBW/Y7ON2pEGrGo5mJdCKJCwp0JP54C3GiiWU5nr81PCtVVtVCMAUUxG6PICjS/oK0
	 O61vCXD+H65RQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24C1161136;
	Tue,  8 Apr 2025 10:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DB3C1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 912796109F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aWMyCf5mUYQg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 10:22:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 01F9660861
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01F9660861
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01F9660861
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:22:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C853A5C365B;
 Tue,  8 Apr 2025 10:20:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E543AC4CEE5;
 Tue,  8 Apr 2025 10:22:34 +0000 (UTC)
Date: Tue, 8 Apr 2025 11:22:32 +0100
From: Simon Horman <horms@kernel.org>
To: luoxuanqiang <xuanqiang.luo@linux.dev>
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Message-ID: <20250408102232.GW395307@horms.kernel.org>
References: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
 <20250407140242.GK395307@horms.kernel.org>
 <6c463f96-18e7-4ee9-ba74-524772e008b4@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c463f96-18e7-4ee9-ba74-524772e008b4@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744107756;
 bh=kCH/a+k7unmddjwKGg0eIquZQgNgRx1HsejQiuThB9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHbbFkKmU4IrfTc0UM9nloW8n9jHBwyJNpjxiCOY80oZo3pl/KLO0sZ9vqLzU/j+L
 llncmF8qxgG1xjXHjTJ11KSLlqg0EybNDOH5TXQwFbm+RTINtVbxKFzQ0XgOVUoO81
 zv/m1d9Zy8G3cXHyz0HGJvBefMKCycxxiaq++Sa7yI1lpo0bkRkkp6KOVvSgJRv5Rt
 kjgH7M7Em81EIyq5WVNkjsGnsU3B2r1iV22KwXHi9o4CnJuO1GgLqgvao1qgqmLsi4
 /7hK3ksjGyvmPd3rAxhTuxTtSxmuZSNKi3sQo7gdZCx0sGrfiFSRChB9nqM+881z7T
 DSo4a1PMCVrkQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VHbbFkKm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Check VF VSI Pointer
 Value in ice_vc_add_fdir_fltr()
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

On Tue, Apr 08, 2025 at 10:19:39AM +0800, luoxuanqiang wrote:
> 
> 在 2025/4/7 22:02, Simon Horman 写道:
> > On Tue, Mar 25, 2025 at 10:01:49AM +0800, Xuanqiang Luo wrote:
> > > From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> > > 
> > > As mentioned in the commit baeb705fd6a7 ("ice: always check VF VSI
> > > pointer values"), we need to perform a null pointer check on the return
> > > value of ice_get_vf_vsi() before using it.
> > > 
> > > v2: Add "iwl-net" to the subject and modify the name format.
> > > 
> > > Fixes: 6ebbe97a4881 ("ice: Add a per-VF limit on number of FDIR filters")
> > > Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > 
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 6 ++++++
> > >   1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > index 14e3f0f89c78..53bad68e3f38 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > @@ -2092,6 +2092,12 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
> > >   	dev = ice_pf_to_dev(pf);
> > >   	vf_vsi = ice_get_vf_vsi(vf);
> > nit, but not need to repost because of this: it's seems nicer
> > not to have not to have a blank line here. And instead, if one is
> > really wanted, put it above the ice_get_vf_vsi() line.
> > 
> Thank you for the reminder. I will take this into consideration when
> submitting other patches next time. Since vf_vsi and its judgment logic
> are logically adjacent, it's better not to separate them with blank
> lines.

Yes, agreed. Thanks.
