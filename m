Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A23A91A9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 13:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2F426FC25;
	Thu, 17 Apr 2025 11:21:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uyqoC7UPPZoS; Thu, 17 Apr 2025 11:21:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B3EB6FCAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744888910;
	bh=mxrdV5cUi1ngVdpdwuzyQnLLblMeHvkZJ8nab6BowKc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dkJbeupkxbIwwTuxoorrpQfcuaM9+0VRPtl0CnT3CK2ZLeuAnaGj2u684JBS8r7RK
	 4SWePSQr+ajWYWCR6n85sGQwEYuI8Iegq8DJU38my1KcEhjTZUlbAGa5sF5rwb7rxy
	 lnXlb3xPPg9zEaNEZ9mlVoNmKNkoE67NHB6g78QXn0ACYOdtU3iqlibH009ZQiP/je
	 W8uQf27MFMjqk2e2UFofbEwkZufKB++9Uy/4yD99chdJqErBHZF6SZNKU5ZWrlttX/
	 PxfyhL3vVt8mypc9KaPg9Pbz4nI5GN4y3yBXTvp00eqzLT3+UL3MEswFSDh+qbdrpB
	 1XHTgT35e6qkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B3EB6FCAB;
	Thu, 17 Apr 2025 11:21:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 85DF11F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BAD06FCA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BbEFRwlILPYF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 11:21:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D32366FC2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D32366FC2A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D32366FC2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:21:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9AE2A5C1094;
 Thu, 17 Apr 2025 11:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1029FC4CEE4;
 Thu, 17 Apr 2025 11:21:45 +0000 (UTC)
Date: Thu, 17 Apr 2025 12:21:43 +0100
From: Simon Horman <horms@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: jgg@nvidia.com, leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org
Message-ID: <20250417112143.GE2430521@horms.kernel.org>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
 <20250416021549.606-6-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416021549.606-6-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744888907;
 bh=cKGsn1KKHqWxVH9Dg8CQ8Go9CXiV1USwr3gjtvak9Lw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sq3quHBK8r91e3sTPAplQTi/VY5dF0nGMvoUvkCMPSWTWMB+oC6B9m9XQEaYxPTCJ
 bpcJ8nwotmnvrt0hpiQnRnH4KWwj+CoUoYRz7EJco8YWoxH0H0X+RE2fgfGnPR4D3V
 rA0olR3hV4ckmuSd9y4WG1ztQbqSi7zNWyaMhX/CRuPUBC2P6KazToDz2MD1qS5qoL
 6lF0C2c+11irXZo7n2yxazFbTuITAyuq0BNadldMUig+brvmUN9iY6QzeIWQO8VKXx
 WDNDM2nNt2xMhbvAylmBUZwu1FAHdQqt/pRu98RgEXwigeW6mn/fnCwu3ONWa8mpz7
 mLFmQSjbInfTQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sq3quHBK
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

On Tue, Apr 15, 2025 at 09:15:49PM -0500, Tatyana Nikolova wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> In preparation of supporting more than a single core PCI driver
> for RDMA, move ice specific structs like qset_params, qos_info
> and qos_params from iidc_rdma.h to iidc_rdma_ice.h.
> 
> Previously, the ice driver was just exporting its entire PF struct
> to the auxiliary driver, but since each core driver will have its own
> different PF struct, implement a universal struct that all core drivers
> can provide to the auxiliary driver through the probe call.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Co-developed-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Co-developed-by: Shiraz Saleem <shiraz.saleem@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> Co-developed-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index fcb199efbea5..4af60e2f37df 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1339,8 +1339,13 @@ ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>  			    struct devlink_param_gset_ctx *ctx)
>  {
>  	struct ice_pf *pf = devlink_priv(devlink);
> +	struct iidc_rdma_core_dev_info *cdev;
>  
> -	ctx->val.vbool = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ? true : false;
> +	cdev = pf->cdev_info;
> +	if (!cdev)
> +		return -ENODEV;

Is it possible for cdev to be NULL here?

Likewise for other checks for NULL arguments passed to functions
elsewhere in this patch.

> +
> +	ctx->val.vbool = !!(cdev->rdma_protocol & IIDC_RDMA_PROTOCOL_ROCEV2);
>  
>  	return 0;
>  }

...
