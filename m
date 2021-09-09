Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BCA405F11
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 23:48:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C29682FF9;
	Thu,  9 Sep 2021 21:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DepN7KvYaWL; Thu,  9 Sep 2021 21:48:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CE8984A84;
	Thu,  9 Sep 2021 21:48:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D24391BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFB4A40562
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N20cTUGNiMfb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 21:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4D9D40113
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:48:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB10B61131;
 Thu,  9 Sep 2021 21:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631224115;
 bh=zgld0ENlJlel6GXYsTEi10TI+j+hHy9GAC9tRdTbpmU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s3gSANa5PaatYRdPl+UZjLCJtfDR2TSj6pSaJjtIlpqFpTh7mRBJ0nFYPxnZAZa/E
 yQgCacQlbxweBMAFDhnqZGG9shtUowlzinoR/oZ6TYrlzs6BuKAQVeJJVINzvnWqbl
 ElhkbozbzU4QKe1dXqRQtiUym0TDJD/2Y1vDx7yQlQeVJD+HOVNYsuXlZKi6rSFPLk
 YigZKx02u/D8BEaU0qB9hyx5JG4xn9ZvaIg5+fxQG3NbqBwtMUKb4gRKfUY2rE+EXk
 rQwInkOSDr6KsxM5E3kSfPAy0gPKuFSL516hQ6wVZslpnln6Qv6PwkJ0YNPhILyye4
 KJeCyvCrW4hjw==
Date: Thu, 9 Sep 2021 14:48:33 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20210909144833.2ca0069d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210909085612.570229-1-david.m.ertman@intel.com>
References: <20210909085612.570229-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Correctly deal with PFs that
 do not support RDMA
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yongxin.liu@windriver.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  9 Sep 2021 01:56:12 -0700 Dave Ertman wrote:
> There are two cases where the current PF does not support RDMA
> functionality.  The first is if the NVM loaded on the device is set
> to not support RDMA (common_caps.rdma is false).  The second is if
> the kernel bonding driver has included the current PF in an active
> link aggregate.
> 
> When the driver has determined that this PF does not support RDMA, then
> auxiliary devices should not be created on the auxiliary bus.  Without
> a device on the auxiliary bus, even if the irdma driver is present, there
> will be no RDMA activity attempted on this PF.
> 
> Currently, in the reset flow, an attempt to create auxiliary devices is
> performed without regard to the ability of the PF.  There needs to be a
> check in ice_aux_plug_dev (as the central point that creates auxiliary
> devices) to see if the PF is in a state to support the functionality.
> 
> When disabling and re-enabling RDMA due to the inclusion/removal of the PF
> in a link aggregate, we also need to set/clear the bit which controls
> auxiliary device creation so that a reset recovery in a link aggregate
> situation doesn't try to create auxiliary devices when it shouldn't.
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Why CC lkml but not CC RDMA or Leon?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
