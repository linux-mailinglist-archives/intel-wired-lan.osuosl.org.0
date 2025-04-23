Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A519A9946E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 18:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 615F740897;
	Wed, 23 Apr 2025 16:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6lHQBLiCk3H; Wed, 23 Apr 2025 16:14:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91EB740904
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745424873;
	bh=N0GuzpYJ9PjJ5qIG1ZTeBmnHXrY4A3yI5cAwgF/TDQ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78ruFvOEd7Z67cgiZfNWvoolxOiTCGYHZdApTmtpv5REYKIK71g6t63N5K2TBqoHO
	 mEWPE2Vp0oO9KS3EVhPEL38VBKMaFKXwvQY9bNsLUPy0oxCa5hZiyHneKhWUaVudS1
	 LQfwxddJJ7mx8PKv2UemKPYBmxq/SbFdRRv/cUO3vmNuQCYF3aZeVsHSLJp3YQtDpK
	 +CqKXe01wSf6c/uxnZYFOwWYZBWni0R9L0EqMRxSUZk+5FFmmdW+UryNeJncUMRpBh
	 yd+gASPNRKoi1Cx5DjzJ1Hd9WUl/s/wnBTgf5KHhLuEFcVmuCrZrTVBRcWFXZjWQBD
	 Kk1dMdv2KUhag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91EB740904;
	Wed, 23 Apr 2025 16:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E2F01BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 16:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 142CC81ECA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 16:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0VqFv6GeFbGk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 16:14:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46CF581DCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46CF581DCA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46CF581DCA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 16:14:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D5EF95C592E;
 Wed, 23 Apr 2025 16:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B3FDC4CEE2;
 Wed, 23 Apr 2025 16:14:27 +0000 (UTC)
Date: Wed, 23 Apr 2025 17:14:25 +0100
From: Simon Horman <horms@kernel.org>
To: "Ertman, David M" <david.m.ertman@intel.com>
Cc: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "jgg@nvidia.com" <jgg@nvidia.com>, "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250423161425.GA2843373@horms.kernel.org>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
 <20250416021549.606-6-tatyana.e.nikolova@intel.com>
 <20250417112143.GE2430521@horms.kernel.org>
 <IA1PR11MB6194FD66BA60E12D6430DF22DDBF2@IA1PR11MB6194.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA1PR11MB6194FD66BA60E12D6430DF22DDBF2@IA1PR11MB6194.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745424869;
 bh=Z/4DmM8gueZBF5pkQ33eV/TOGnbp2ifSLowAhDlqItU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzl9HJgsjiv6OYRiFt5O2M0ta6p8Ba77FyXKYN2G+cx5d/s5boXYxcdHFaeuOgmyt
 6I19ywl2bpMIKMIuH6g/GCL3Q4vlp4avUahDcq8p04KXmOYsa9LWESKzUxgswLn5eQ
 iwM9/QtSrE3MjM2UYlUzaau1gdcQ+2pkFhsBxN4mKvKofdnyr+MWLtkT1g7sIuQeGJ
 UiTSV6ZIoJ2lG9f0bGah41y6kr+oQxcbfVPLFWaw34SMT9KuHpSCDUW7raJZo0k1Ab
 xaMc4diV6LsDmovTDwWNifJRz7+kWEHsA4thtGUp/yf3zXdVl9AexBTHSVVfLDFZDH
 Q9HaurUSXyKwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rzl9HJgs
Subject: Re: [Intel-wired-lan] [iwl-next v5 5/5] iidc/ice/irdma: Update IDC
 to support multiple consumers
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

On Fri, Apr 18, 2025 at 05:14:24PM +0000, Ertman, David M wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Simon Horman
> > Sent: Thursday, April 17, 2025 4:22 AM
> > To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
> > Cc: jgg@nvidia.com; leon@kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> > rdma@vger.kernel.org; netdev@vger.kernel.org
> > Subject: Re: [Intel-wired-lan] [iwl-next v5 5/5] iidc/ice/irdma: Update IDC to
> > support multiple consumers
> > 
> > On Tue, Apr 15, 2025 at 09:15:49PM -0500, Tatyana Nikolova wrote:
> > > From: Dave Ertman <david.m.ertman@intel.com>
> > >
> > > In preparation of supporting more than a single core PCI driver
> > > for RDMA, move ice specific structs like qset_params, qos_info
> > > and qos_params from iidc_rdma.h to iidc_rdma_ice.h.
> > >
> > > Previously, the ice driver was just exporting its entire PF struct
> > > to the auxiliary driver, but since each core driver will have its own
> > > different PF struct, implement a universal struct that all core drivers
> > > can provide to the auxiliary driver through the probe call.
> > >
> > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > > Co-developed-by: Mustafa Ismail <mustafa.ismail@intel.com>
> > > Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> > > Co-developed-by: Shiraz Saleem <shiraz.saleem@intel.com>
> > > Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> > > Co-developed-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> > > Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> > 
> > ...
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > > index fcb199efbea5..4af60e2f37df 100644
> > > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > > @@ -1339,8 +1339,13 @@ ice_devlink_enable_roce_get(struct devlink
> > *devlink, u32 id,
> > >  			    struct devlink_param_gset_ctx *ctx)
> > >  {
> > >  	struct ice_pf *pf = devlink_priv(devlink);
> > > +	struct iidc_rdma_core_dev_info *cdev;
> > >
> > > -	ctx->val.vbool = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2
> > ? true : false;
> > > +	cdev = pf->cdev_info;
> > > +	if (!cdev)
> > > +		return -ENODEV;
> > 
> > Is it possible for cdev to be NULL here?
> > 
> > Likewise for other checks for NULL arguments passed to functions
> > elsewhere in this patch.
> 
> Hi Simon,
> 
> In the resume path from Sx states it is possible to have a NULL pointer for
> the cdev_info pointer.  This is due to us not wanting to fail on resuming unless
> absolutely necessary.  I went through the rest of the patch looking for NULL checks
> and all of them are valid from my inspection (possible to be NULL).
> 
> Thanks for the review!

Likewise, thanks for checking.
