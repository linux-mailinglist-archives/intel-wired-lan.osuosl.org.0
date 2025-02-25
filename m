Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F4089A43691
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 08:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9198360879;
	Tue, 25 Feb 2025 07:55:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tj9Xvmht4f9i; Tue, 25 Feb 2025 07:55:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D218A608C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740470139;
	bh=ClBVpTw1OU80fijBaxSv2SgzPEBdGdTlk/Ze5pRbK44=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nS6VwcjZfkC3Lzjp4U3X1nIwXe6f2ve7DqEAYHYAXPkM60mioUDVpfJhrFidZazzC
	 mvD0r1fB76Gl0Qi/g7a8rZZRgiSDgA8btniinL7+Qil82ClyqykGGMWXtpOlJVsX2I
	 qVlvaVPVTeEq4IET7wdHCxjTsiaorxwoCm/y6wvlPJkWyNpK33GfYm3jB3rwss7fNF
	 BsB4GxOZhk/rqgC7gOv5OCTyIEBD7+YqqTIG3kvl40bI02AMBntEESB1Y/7JPJk/oZ
	 /VwucC6HzElOOuD28UNA0/jDIEl0HMJhSEIABeYusAXzj4O44LDN3mfogqEvZF2GJ/
	 q4OvnzEIK1oyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D218A608C1;
	Tue, 25 Feb 2025 07:55:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E0AC82292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD2A960852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:55:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nD3baJcIADOX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 07:55:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EFCD360851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFCD360851
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFCD360851
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:55:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A96DE5C077B;
 Tue, 25 Feb 2025 07:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08CDC4CEDD;
 Tue, 25 Feb 2025 07:55:34 +0000 (UTC)
Date: Tue, 25 Feb 2025 09:55:30 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: jgg@nvidia.com, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 david.m.ertman@intel.com
Message-ID: <20250225075530.GD53094@unreal>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740470135;
 bh=26kEWrHsJUAlh0ZBlcW151O8ytU26+XAmiyBTfJHjuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YVut6nzuR9giRKPXY4xVu2aIIY+V1CAxMbDfW7/hqsw0oDsfXkzJrGryRePr7QF8T
 FdAi1+SczvwO2Y2SGetPuPR4Oe/vHRGnB0A3KwBmfMGX1wiETbKfey9ZA0tP51z/pi
 cghhL6C68iNC7wx6YNTAMzWwfa++Z4aFCvANUYWS1IJ8wP5sNony4xqdLOatm+ZkZP
 FAbSF5nK1BmvCNZfoN5MvTs/7z3PZqhn+AT51q3uWxPZhmHqHNbKPBlb8oPb0usZg+
 YGiOGZP89gvw42MIyYHsfI/RIVFHOBX7sMmjIkIyoyHlB/VFryur9z/0Hzwauyje4H
 pGZcwr/2rybpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YVut6nzu
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
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

On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> To support RDMA for E2000 product, the idpf driver will use the IDC
> interface with the irdma auxiliary driver, thus becoming a second
> consumer of it. This requires the IDC be updated to support multiple
> consumers. The use of exported symbols no longer makes sense because it
> will require all core drivers (ice/idpf) that can interface with irdma
> auxiliary driver to be loaded even if hardware is not present for those
> drivers.

In auxiliary bus world, the code drivers (ice/idpf) need to created
auxiliary devices only if specific device present. That auxiliary device
will trigger the load of specific module (irdma in our case).

EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
true, load of irdma will trigger load of ice/idpf drivers (depends on
their exported symbol).

> 
> To address this, implement an ops struct that will be universal set of
> naked function pointers that will be populated by each core driver for
> the irdma auxiliary driver to call.

No, we worked very hard to make proper HW discovery and driver autoload,
let's not return back. For now, it is no-go.

<...>

> +/* Following APIs are implemented by core PCI driver */
> +struct idc_rdma_core_ops {
> +	int (*vc_send_sync)(struct idc_rdma_core_dev_info *cdev_info, u8 *msg,
> +			    u16 len, u8 *recv_msg, u16 *recv_len);
> +	int (*vc_queue_vec_map_unmap)(struct idc_rdma_core_dev_info *cdev_info,
> +				      struct idc_rdma_qvlist_info *qvl_info,
> +				      bool map);
> +	/* vport_dev_ctrl is for RDMA CORE driver to indicate it is either ready
> +	 * for individual vport aux devices, or it is leaving the state where it
> +	 * can support vports and they need to be downed
> +	 */
> +	int (*vport_dev_ctrl)(struct idc_rdma_core_dev_info *cdev_info,
> +			      bool up);
> +	int (*request_reset)(struct idc_rdma_core_dev_info *cdev_info,
> +			     enum idc_rdma_reset_type reset_type);
> +};

Core driver can call to callbacks in irdma, like you already have for
irdma_iidc_event_handler(), but all calls from irdma to core driver must
be through exported symbols. It gives us race-free world in whole driver
except one very specific place (irdma_iidc_event_handler).

Thanks
