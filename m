Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0468B94F3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2024 09:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE1E741773;
	Thu,  2 May 2024 07:00:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4pkXmfEGYrIG; Thu,  2 May 2024 07:00:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D901241836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714633231;
	bh=Ll+6TLZ+pWO0lUflG7VcStQZQKVNV0nIjcG7nz+9+xc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FCQv7IPwEdd+bpxoA96hh/gDfawEjyOHGuLUOTdcdiiwjLDJ4pIQ8uP8Irj4h6wLz
	 P89/ZkjhX5DfjOFQHdW/u90OfTvtCE1dE8NP1aaCYvGk8kOhcf9m3eWa15gl1ZEYEZ
	 ziirB3t1BFJlUWJ43gIbpLn64HXv6wwXBZtDFVcNLt4ZJCqppQZKSWrOQWmcwC47m0
	 H/rm85/FPLkTfv/o2NGtEKFhEtDrMw7uuklvuPr5yKNjofZ26YX5cGjHJD/8r+Pi3k
	 romjAeqiY39ra3DAPhljTyvh2KfH6IoRk8muYWuOWAmKkRtKXWzQE5c3mavSSEZ1Fl
	 gex6REneMpVvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D901241836;
	Thu,  2 May 2024 07:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69EC41BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 07:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52C7741820
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 07:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uM4NH2xpW8jK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2024 07:00:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A7D641773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A7D641773
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A7D641773
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 07:00:25 +0000 (UTC)
X-CSE-ConnectionGUID: +D3z1j38T4m2H34g7MaYFQ==
X-CSE-MsgGUID: /bRGYJkBQe2DP8Tq+amhUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="14190998"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14190998"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 00:00:24 -0700
X-CSE-ConnectionGUID: wbeC7JhYQ5eG/oN0tvO1iQ==
X-CSE-MsgGUID: ez3i0D7YSz2UmqxIYZcTnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27036344"
Received: from unknown (HELO [10.12.48.215]) ([10.12.48.215])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 00:00:21 -0700
Message-ID: <cb3e9c4b-a4eb-4ed5-b0aa-ec614076b6e6@linux.intel.com>
Date: Thu, 2 May 2024 10:00:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Hui Wang <hui.wang@canonical.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, vitaly.lifshits@intel.com,
 dima.ruinskiy@intel.com
References: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714633226; x=1746169226;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=XtdJpWx3DQWHhoNN2IO2/VKN26SpTdALv3eG+kmd9TE=;
 b=iKKjs2HWskjQsmj0ayF5itmEEk5sUel+gTRyqW+7yOtAtjZti8Fs/q8i
 d7IFuHnvrTlwtXwxiXOUx+lcoqe+WwufUpCvUOJaadvdAZeEP6CKVeoxp
 pcrM7AxZEPofAhZwAGpoE5YQiDilr8U+/T5nVWIBdiHZQ0V7HIlKI4YxC
 iKA935nY6iIFEjRvHUy84+5nneda6lzhM2wbz16MmhEjkw7+vYqS/K8HM
 J8kElJ0Y+2P3bG8gobEPz8FYMSbwev22JzwgXI1bLmDSn162Hm5ujGWh1
 VPOPOKswgAukv868QGCXwcAwC1Jt/Zxf10S0zpcBjK2Bqm3szC2CX34GG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iKKjs2HW
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: move force SMBUS near the end
 of enable_ulp function
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/13/2024 12:27, Hui Wang wrote:
> The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
> function to avoid PHY loss issue") introduces a regression on
> CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without this commit, the
> ethernet works well after suspend and resume, but after applying the
> commit, the ethernet couldn't work anymore after the resume and the
> dmesg shows that the NIC Link changes to 10Mbps (1000Mbps originally):
> [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Without the commit, the force SMBUS code will not be executed if
> "return 0" or "goto out" is executed in the enable_ulp(), and in my
> case, the "goto out" is executed since FWSM_FW_VALID is set. But after
> applying the commit, the force SMBUS code will be ran unconditionally.
> 
> Here move the force SMBUS code back to enable_ulp() and put it
> immediate ahead of hw->phy.ops.release(hw), this could allow the
> longest settling time as possible for interface in this function and
> doesn't change the original code logic.
> 
> Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
> Signed-off-by: Hui Wang <hui.wang@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 +++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ------------------
>   2 files changed, 19 insertions(+), 18 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
