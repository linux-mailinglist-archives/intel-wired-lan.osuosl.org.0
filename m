Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 772B8ABFF8D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 00:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2315C811AD;
	Wed, 21 May 2025 22:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NQ9ivDa-MBit; Wed, 21 May 2025 22:31:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FBDA81166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747866674;
	bh=J/+BX17Vgk7bFwwXrHXwRCm7zRa7EPbexbxHWjQACzI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nvJr7Fg1AEgoQ6kjl1LUOWNjhxqcUVMskga7BB1Db1s3XujZfz6nvc7nokWPkcGKL
	 W0Dcw9670xLmBf/uGOhxX0R+R2PtwM4nFTT12jfujqMR7OeuH2GK3Nd6rM1nZef3yd
	 IxJ+JZ4DuDCNKgu3xSjjvL7OSsH28yWcpnUWjwV6XWyl7VdRK04XqgvxwzbdR8UysU
	 xK7xrn97lL6UuhQX+0notfStSp6qzn1QZZTXiz0i7wTc3BI+yxQmgDCVgAKZ95rpnx
	 eANqca2UO0LlPSaGVX0crI3juK7DSzJqiGlc+F3xriuezjc8RHshwHTQZd6OpFModZ
	 w3UGnDMD4unZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FBDA81166;
	Wed, 21 May 2025 22:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C7151BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 22:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DACA409A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 22:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U-FYwPgrw3ey for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 22:31:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 766744010F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766744010F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 766744010F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 22:31:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F2C5A629CA;
 Wed, 21 May 2025 22:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4ECAC4CEE4;
 Wed, 21 May 2025 22:31:07 +0000 (UTC)
Date: Wed, 21 May 2025 15:31:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, ruanjinjie@huawei.com,
 mheib@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com, leon@kernel.org
Message-ID: <20250521153107.150f01e1@kernel.org>
In-Reply-To: <aC4FK0fmUoaXYt4k@mini-arch>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
 <20250520203614.2693870-3-stfomichev@gmail.com>
 <20250521073401.67fbd1bc@kernel.org> <aC4FK0fmUoaXYt4k@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747866668;
 bh=mfOAhsIWu5Z4ODKpt4UPUgtiPYOuu8DX97OEMhASu5k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YUL1rEPiwYnxwoN2OoAyzyGKm8BCc9d95twKiFTPMjfwdhNs5O2OzAKgdb8ggXx+3
 UJiiGWdX8UGQF+BSkt90/59AgI8walNx9x2AQHDpLL6v31o58OakNpvNuYrxw7/H66
 Md7q30GtamKasCWvDXPkncYzrf3diBC8u9KQIrQHiynVAUP8QrLDeedNCm+3GPzwx1
 wAX/VZbfZKn7ZiUszLGlKGGvFyNSua/3rSUb+pQcHuLFvji6290jC5Nco3RgaxFLcU
 qSJU78yAn1eGghCTO5w0m97NsTZKckEebotvqAqFQilRdHfd422dwk7Iu4+cEPRn+Z
 egpA0kYk8H4hg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YUL1rEPi
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] udp_tunnel: remove
 rtnl_lock dependency
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

On Wed, 21 May 2025 09:54:03 -0700 Stanislav Fomichev wrote:
> > >  enum udp_tunnel_nic_info_flags {
> > > -	/* Device callbacks may sleep */
> > > -	UDP_TUNNEL_NIC_INFO_MAY_SLEEP	= BIT(0),  
> > 
> > Could we use a different lock for sleeping and non-sleeping drivers?  
> 
> We can probably do it if we reorder the locks (as you ask/suggest
> below). Overall, I'm not sure I understand why we want to have two
> paths here. If we can do everything via work queue, why have a separate
> path for the non-sleepable callback? (more code -> more bugs)

I think when I was pulling this code out of the drivers I was trying 
to preserve the fast path for drivers which don't have to sleep.
But if some drivers are okay with the wq then the mechanism must work,
so I guess you're right, it should be fine to make all go via wq.
