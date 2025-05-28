Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0C6AC6726
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 12:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DC3E8068F;
	Wed, 28 May 2025 10:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1BvIM0N0hMDw; Wed, 28 May 2025 10:40:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BC0580710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748428851;
	bh=0jQL35fZcG/Xut+Ytu12ngY9CVxfLuMZVPAxM6eDluA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CnJAGYFKwUW2+Pug9e1aKWW/6+ULQyQLNm12Ysl+97Si93LQ8sGONm7PBXcReHhnQ
	 Iywoq5s4m6+C8pZE9JXoS6V+IEMBXwwtTdGNJlHhDOeKF5gbLKI3+rB52HHOuyanQB
	 RZL8ZHd95aY0QlKEUyyG118SgYx5LrfkKjh5VPKj/5lk2vy8XnDAvIgKsysYIL2mar
	 u6MMzgH8k1mRdCunzf80eSBVhfODLtlBTE0OLaKKPEJalA05YZhioWLrD1L85Zi6Fa
	 uxrcE/n9H2Ni6Mk8NLSxU9266BcUO56ZFbZVzKQ+8+tfUb3tgEOSQLQhzTWj5VlUmw
	 rIWUEKVDjjn7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BC0580710;
	Wed, 28 May 2025 10:40:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CC0CFB66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1F368070D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oR5TrW4IOwVc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 10:40:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1303C806F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1303C806F7
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1303C806F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 10:40:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 61025614B4;
 Wed, 28 May 2025 10:40:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42EA0C4CEE7;
 Wed, 28 May 2025 10:40:45 +0000 (UTC)
Date: Wed, 28 May 2025 11:40:43 +0100
From: Simon Horman <horms@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, jgg@nvidia.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Joshua Hay <joshua.a.hay@intel.com>
Message-ID: <20250528104043.GA365796@horms.kernel.org>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
 <20250523170435.668-3-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523170435.668-3-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748428847;
 bh=VX4AsLj/Fc3QRbtPLrfPBaZuthCoHrVRnGWu/0hh6/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DBNy2Q7AqCm7rbyZI1/Jwu3dX6jaQZ/uR/Rm/RMLrneZa5W0YNMtjfnF4IhVJ81Vz
 j1htjKwNoaxpCO69J7Sxq0+CjDEeD2DrE00VFngcduUeDKqDAD2/8j2ZRNVU7No2WD
 3q9yS/S2311vS0svJnbhPEdfvNn6TSF388x/PAiWmEcWZjbkMAyG3+DSN3/MHdlZ1M
 B0hZpF1RFvR0Lbj6Pdv4JyDRMRRpyv+k3JAhFkAFmQ1gkgcsgn6lchNfQmfPkYOHSs
 4J0dC1ZockszvKCn866jqlPRcaaCumJj80bWPOQ9pYeYLIbZeqBp7NAvRHO3Au2GZ+
 0ypxKvEiA9HQw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DBNy2Q7A
Subject: Re: [Intel-wired-lan] [iwl-next 2/6] idpf: implement core RDMA
 auxiliary dev create, init, and destroy
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

On Fri, May 23, 2025 at 12:04:31PM -0500, Tatyana Nikolova wrote:
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> Add the initial idpf_idc.c file with the functions to kick off the IDC
> initialization, create and initialize a core RDMA auxiliary device, and
> destroy said device.
> 
> The RDMA core has a dependency on the vports being created by the
> control plane before it can be initialized. Therefore, once all the
> vports are up after a hard reset (either during driver load or a function
> level reset), the core RDMA device info will be created. It is populated
> with the function type (as distinguished by the IDC initialization
> function pointer), the core idc_ops function points (just stubs for
> now), the reserved RDMA MSIX table, and various other info the core RDMA
> auxiliary driver will need. It is then plugged on to the bus.
> 
> During a function level reset or driver unload, the device will be
> unplugged from the bus and destroyed.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c

...

> +/**
> + * idpf_idc_init_aux_core_dev - initialize Auxiliary Device(s)
> + * @adapter: driver private data structure
> + * @ftype: PF or VF
> + *
> + * Return: 0 on success or error code on failure.
> + */
> +int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
> +			       enum iidc_function_type ftype)
> +{
> +	struct iidc_rdma_core_dev_info *cdev_info;
> +	struct iidc_rdma_priv_dev_info *privd;
> +	int err;
> +
> +	adapter->cdev_info = kzalloc(sizeof(*cdev_info), GFP_KERNEL);
> +	if (!adapter->cdev_info)
> +		return -ENOMEM;
> +
> +	privd = kzalloc(sizeof(*privd), GFP_KERNEL);
> +	if (!privd) {
> +		err = -ENOMEM;
> +		goto err_privd_alloc;

Hi Joshua, Tatyana, all,

Jumping to err_privd_alloc will free cdev_info.
However cdev_info isn't initialised until a few lines
further down.

Flagged by Smatch.

> +	}
> +
> +	cdev_info = adapter->cdev_info;
> +	cdev_info->iidc_priv = privd;
> +	cdev_info->pdev = adapter->pdev;
> +	cdev_info->rdma_protocol = IIDC_RDMA_PROTOCOL_ROCEV2;
> +	privd->ftype = ftype;
> +
> +	idpf_idc_init_msix_data(adapter);
> +
> +	err = idpf_plug_core_aux_dev(cdev_info);
> +	if (err)
> +		goto err_plug_aux_dev;
> +
> +	return 0;
> +
> +err_plug_aux_dev:
> +	kfree(privd);
> +err_privd_alloc:
> +	kfree(cdev_info);
> +	adapter->cdev_info = NULL;
> +
> +	return err;
> +}

...
