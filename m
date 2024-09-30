Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014498A7BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 16:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1C61402B0;
	Mon, 30 Sep 2024 14:51:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdROIcIpcpw3; Mon, 30 Sep 2024 14:51:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A5F740270
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727707909;
	bh=7pS/JNTBFKK5kVZwxJu36lU5d4xMjiL1mMw/1yAp2ok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3/VjSddT0E0GZYkrcSt6dIMJt5Ps3u4vObUWwdp25pDLlwdQiV6VOSPXv5PGwVurJ
	 OolfBD3da0gpl3XQ/Fk5DsKQjxuwDTX40Vzo90msRLID1x5OoVCXtZh+TLBvhvNb9X
	 QYvGjNcocHEHPmKYxyIYDhu05+vEIgmgD1RnWmCb7RxIL2k6rWbpDtWGR3sPvIzut8
	 qoRTNNj2LieNMqCqscyrOzRl3xqHZUgRlsgw9hgvERQ92/s2nQdB1Yip8D4SCL19zB
	 XUIrUj8OuL/sRdP1Wa83sjhfBae5iqObqn57RanlUQTrf1JjUiwi0os/z5Mwp83ss1
	 lpN+H/wbtpF8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A5F740270;
	Mon, 30 Sep 2024 14:51:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8B31BF335
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 14:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A578405CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 14:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NdrdiT8hay3S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 14:51:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 175614052D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 175614052D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 175614052D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 14:51:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 82B6EA40EEA;
 Mon, 30 Sep 2024 14:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42308C4CEC7;
 Mon, 30 Sep 2024 14:51:43 +0000 (UTC)
Date: Mon, 30 Sep 2024 15:51:41 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240930145141.GA1310185@kernel.org>
References: <20240927151541.15704-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240927151541.15704-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727707904;
 bh=LZ21acJUlmDDdoVxxT6yhtqKNPjH/hUR3in9MD3hqRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvuyuIfuvpOehNOb3T8RpTBQDz6/Ti0x2fX/7+fSvH51jGhHa5VuSlI4jWnsu/LAm
 6mgdrQN6Mio8noBQMclZPmPvOkiqZyhNoww/TzMcBX0PoXnVPdM7pPdQ3rZiqOGU7N
 NIRjoIBkjtdPWAnuQrnLz3Swrp+hj1dq8d+l72KTU6Zs0UKdEWa6SB7GdC6gKkMSN4
 MdOOtyVeWn11halzjPsjFBG7YHgsxxs9q6r9zp0befdiKOwEwITn5yjbn5xT2hoO9s
 1G6QZoI91nrylsl7BOOiLdu5ouONh+Xk2t0/eBskWenqlJh4p0c3jKriExlHIb9FvB
 ewTmZsBCsX2Tg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TvuyuIfu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix increasing MSI-X on
 VF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 27, 2024 at 05:15:40PM +0200, Marcin Szycik wrote:
> Increasing MSI-X value on a VF leads to invalid memory operations. This
> is caused by not reallocating some arrays.
> 
> Reproducer:
>   modprobe ice
>   echo 0 > /sys/bus/pci/devices/$PF_PCI/sriov_drivers_autoprobe
>   echo 1 > /sys/bus/pci/devices/$PF_PCI/sriov_numvfs
>   echo 17 > /sys/bus/pci/devices/$VF0_PCI/sriov_vf_msix_count
> 
> Default MSI-X is 16, so 17 and above triggers this issue.
> 
> KASAN reports:
> 
>   BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
>   Read of size 8 at addr ffff8888b937d180 by task bash/28433
>   (...)
> 
>   Call Trace:
>    (...)
>    ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
>    kasan_report+0xed/0x120
>    ? ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
>    ice_vsi_alloc_ring_stats+0x38d/0x4b0 [ice]
>    ice_vsi_cfg_def+0x3360/0x4770 [ice]
>    ? mutex_unlock+0x83/0xd0
>    ? __pfx_ice_vsi_cfg_def+0x10/0x10 [ice]
>    ? __pfx_ice_remove_vsi_lkup_fltr+0x10/0x10 [ice]
>    ice_vsi_cfg+0x7f/0x3b0 [ice]
>    ice_vf_reconfig_vsi+0x114/0x210 [ice]
>    ice_sriov_set_msix_vec_count+0x3d0/0x960 [ice]
>    sriov_vf_msix_count_store+0x21c/0x300
>    (...)
> 
>   Allocated by task 28201:
>    (...)
>    ice_vsi_cfg_def+0x1c8e/0x4770 [ice]
>    ice_vsi_cfg+0x7f/0x3b0 [ice]
>    ice_vsi_setup+0x179/0xa30 [ice]
>    ice_sriov_configure+0xcaa/0x1520 [ice]
>    sriov_numvfs_store+0x212/0x390
>    (...)
> 
> To fix it, use ice_vsi_rebuild() instead of ice_vf_reconfig_vsi(). This
> causes the required arrays to be reallocated taking the new queue count
> into account (ice_vsi_realloc_stat_arrays()). Set req_txq and req_rxq
> before ice_vsi_rebuild(), so that realloc uses the newly set queue
> count.
> 
> Additionally, ice_vsi_rebuild() does not remove VSI filters
> (ice_fltr_remove_all()), so ice_vf_init_host_cfg() is no longer
> necessary.
> 
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

