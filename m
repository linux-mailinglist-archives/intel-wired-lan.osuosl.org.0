Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD2DAC6779
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 12:44:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 303C681426;
	Wed, 28 May 2025 10:44:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B2-j9O-uSXx8; Wed, 28 May 2025 10:44:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90B3B81311
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748429054;
	bh=mY7lmYflqTA9hNYXrOMGjYXP3ycCnoSm0ESCskYo/FE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dDkzQ0wR31Jsjz31tApO078EAMqTt3VDFsTbTQ545nI6ZXUoEqi72xJxe4HnxbxZX
	 7vGjaMVb06D1TRFaZnTBfegt7dC1MW/OaWjAdBMTsBKYJNpQlS9qq706Z4ag+sH+qX
	 UJaebXZGJBkJel3bRmzBzcGt9ByAfgjl29UtTSalHTEPbZRpi1zqme16P7WifIwDmz
	 tGDPqK9Vl8n/14L2sF0dqyCW1zB1RTfpdD9uegh5mG//oKoZYLWM/YQEFZYbXL17Sc
	 n4tsSmes+RO0QNXd5rymkY/CSd74CYRrCVbXp5KsqZEzMbCO14M7P2ZISfNImf5Juj
	 3A9caYTnWoDLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90B3B81311;
	Wed, 28 May 2025 10:44:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AC353DCA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E35940AC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:44:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yp7Dq2xUwYdR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 10:44:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBCE0409FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBCE0409FD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBCE0409FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:44:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2FA745C4371;
 Wed, 28 May 2025 10:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 150C5C4CEE7;
 Wed, 28 May 2025 10:44:09 +0000 (UTC)
Date: Wed, 28 May 2025 11:44:07 +0100
From: Simon Horman <horms@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, jgg@nvidia.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Joshua Hay <joshua.a.hay@intel.com>
Message-ID: <20250528104407.GB365796@horms.kernel.org>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
 <20250523170435.668-7-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523170435.668-7-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748429051;
 bh=3VvPOVTPfky32Wj9xAy3aa71oo39L3aLtSBZat6Oa24=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iAfhC0NOSWJRUFmNUInJJGJ+OcGalmd/KFHT76JPvejknwJ0KvYoKWJ5OlSIxiYMi
 WuJ4MFd+ISoa5ml1UB6xM3XB3g/DPM9t6caFglVpa9o1V1C+xIlk6uQ6bOtaY81nNJ
 LKDpDlXRp4FJgJQDkH5YtzQLrC9vdS3LW2zFgxR3n97RkJvhYiQO3OmBB/ps9hedKI
 93hzPUP1oK8dOu9W9pHmY17HilN5WJP5asMnTQ4btdOTyHPzhnAOsbl63a67y2DfmG
 vRlyrj3q16EGiAcb2ZjYKkR0jponXhr4iFLfo2Q0+P1/y/pB/e4oqCLMXjvbmOK726
 OU51rkUSyZX/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iAfhC0NO
Subject: Re: [Intel-wired-lan] [iwl-next 6/6] idpf: implement get LAN MMIO
 memory regions
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

On Fri, May 23, 2025 at 12:04:35PM -0500, Tatyana Nikolova wrote:
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> The RDMA driver needs to map its own MMIO regions for the sake of
> performance, meaning the IDPF needs to avoid mapping portions of the BAR
> space. However, the IDPF cannot assume where these are and must avoid
> mapping hard coded regions as much as possible.
> 
> The IDPF maps the bare minimum to load and communicate with the
> control plane, i.e., the mailbox registers and the reset state
> registers. Because of how and when mailbox reigster offsets are
> initialized, it is easier to adjust the existing defines to be relative
> to the mailbox region starting address. Use a specific mailbox register
> write function that uses these relative offsets. The reset state
> register addresses are calculated the same way as for other registers,
> described below.
> 
> The IDPF then calls a new virtchnl op to fetch a list of MMIO regions
> that it should map. The addresses for the registers in these regions are
> calculated by determining what region the register resides in, adjusting
> the offset to be relative to that region, and then adding the
> register's offset to that region's mapped address.
> 
> If the new virtchnl op is not supported, the IDPF will fallback to
> mapping the whole bar. However, it will still map them as separate
> regions outside the mailbox and reset state registers. This way we can
> use the same logic in both cases to access the MMIO space.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c

...

> @@ -447,12 +469,15 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
>   */
>  void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info)
>  {
> +	struct iidc_rdma_priv_dev_info *privd = cdev_info->iidc_priv;
> +

Hi Joshua, Tatyana, all,

On the line below it is assumed that cdev_info may be NULL.
But on the line above cdev_info is unconditionally dereferenced.
This doesn't seem consistent.

Flagged by Smatch.

>  	if (!cdev_info)
>  		return;
>  
>  	idpf_unplug_aux_dev(cdev_info->adev);
>  
> -	kfree(cdev_info->iidc_priv);
> +	kfree(privd->mapped_mem_regions);
> +	kfree(privd);
>  	kfree(cdev_info);
>  }
>  

...
