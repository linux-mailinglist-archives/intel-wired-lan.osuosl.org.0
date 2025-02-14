Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CF7A35681
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 06:45:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C3C183365;
	Fri, 14 Feb 2025 05:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B9-DYybe344i; Fri, 14 Feb 2025 05:45:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A44A831E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739511923;
	bh=i32KyHZn2vU4b8HRXYeZBjRsFAGvePfWlCE8MNpdinc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MgY0lqGLwDX3AdhD7ZaasOmi0Al7R397rdBHr/Yilh1b7cdLZvjdlkJnAvlhBmYKE
	 duRNx5xbn/8UNkADwDwUxBH4PdNBcKzDGBu+T1Hhh81QiVKVPfe+BOKWjUm5AMzsiU
	 eCMRwc7+kqEvhlHRzUaULEGl6PQ3kMvcGuW+efFM1WVATaicmRZbZW61//CR9IPWi9
	 +if7ep4MokTX7YTpx8njfyNxzMQ9G/VKpCILrNFFdtHowzvFfgE+AsI6hAodQlOKjS
	 6JO7rKyCxXqJyVkePvEJ9wKgzJpIzfZmBgyADeZkjN4d+KgZJ4bWEcniTv8in8yb3M
	 W6eJmLNJ5iYww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A44A831E3;
	Fri, 14 Feb 2025 05:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23A591C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 05:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07F1440159
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 05:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 036B5trCqS1I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 05:45:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BBE83400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBE83400D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBE83400D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 05:45:16 +0000 (UTC)
X-CSE-ConnectionGUID: fJEHWl0qRvqDn4SeetPj6g==
X-CSE-MsgGUID: M3hxK1WLSvanV4TbUUIORQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="39955441"
X-IronPort-AV: E=Sophos;i="6.13,284,1732608000"; d="scan'208";a="39955441"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 21:45:16 -0800
X-CSE-ConnectionGUID: X3ElYp6mRuamoI8ErGA/tQ==
X-CSE-MsgGUID: WPA/9lNuTzGl0YLZ3L8yDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113226630"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 21:45:12 -0800
Date: Fri, 14 Feb 2025 06:41:35 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, himasekharx.reddy.pucha@intel.com,
 pmenzel@molgen.mpg.de, marcin.szycik@intel.com,
 netdev@vger.kernel.org, rafal.romanowski@intel.com,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@aculab.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <Z67XjwByeVSuLooq@mev-dev.igk.intel.com>
References: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
 <20241203065817.13475-6-michal.swiatkowski@linux.intel.com>
 <8e533834-4564-472f-b29b-4f1cb7730053@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e533834-4564-472f-b29b-4f1cb7730053@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739511917; x=1771047917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WkDTYJr0mQ8LaGzM86s/k8BZhKOQcrJIJdVs6kspsYA=;
 b=PEoWTBFIaxDQJZZAFQssSm2yVG04qh1d4tLy1vmpPWNFHTxL2TzsV2nB
 dz+PpJ9QLCCdXs7YD2fDisZoWidu0mHZTu8qC8uW85pn83Xo8fQ8ag7Yj
 PW7bvrOsI2/Ma5v5UBacNw791IHDUBNPbCf/Ve84swT1nGYisa+k2nl1D
 AOZteAumfepDpzfId74FexfQamPtuA1NRrQWr3dUpYvGS2yZoLHUH54iS
 f5olMJo7Fd50smgIdhM/MP1KgMokp70+js0Vw+O5kHCaJIwOjwxEQcJy+
 fMQzmRNyWOXuG01YQ3F5+hgrT7RS3UwnwjVQeVHPEl2Ymic9XXbgwTjxu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PEoWTBFI
Subject: Re: [Intel-wired-lan] [iwl-next v9 5/9] ice,
 irdma: move interrupts code to irdma
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

On Thu, Feb 13, 2025 at 08:20:31PM +0100, Marcin Szycik wrote:
> 
> 
> On 03.12.2024 07:58, Michal Swiatkowski wrote:
> > Move responsibility of MSI-X requesting for RDMA feature from ice driver
> > to irdma driver. It is done to allow simple fallback when there is not
> > enough MSI-X available.
> > 
> > Change amount of MSI-X used for control from 4 to 1, as it isn't needed
> > to have more than one MSI-X for this purpose.
> 
> Hi, I'm observing KASAN reports or kernel panic when attempting to remove irdma
> with this patchset, most probably this patch being the culprit, since it touches
> functions from splat.
> 
> Reproducer:
>   sudo rmmod irdma
> 
> Minified splat(s):
>   BUG: KASAN: use-after-free in irdma_remove+0x257/0x2d0 [irdma]
>   Call Trace:
>    <TASK>
>    ? __pfx__raw_spin_lock_irqsave+0x10/0x10
>    ? kfree+0x253/0x450
>    ? irdma_remove+0x257/0x2d0 [irdma]
>    kasan_report+0xed/0x120
>    ? irdma_remove+0x257/0x2d0 [irdma]
>    irdma_remove+0x257/0x2d0 [irdma]
>    auxiliary_bus_remove+0x56/0x80
>    device_release_driver_internal+0x371/0x530
>    ? kernfs_put.part.0+0x147/0x310
>    driver_detach+0xbf/0x180
>    bus_remove_driver+0x11b/0x2a0
>    auxiliary_driver_unregister+0x1a/0x50
>    irdma_exit_module+0x40/0x4c [irdma]
>   
>   Oops: general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN NOPTI
>   KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
>   RIP: 0010:ice_free_rdma_qvector+0x2a/0xa0 [ice]
>   Call Trace:
>    ? ice_free_rdma_qvector+0x2a/0xa0 [ice]
>    irdma_remove+0x179/0x2d0 [irdma]
>    auxiliary_bus_remove+0x56/0x80
>    device_release_driver_internal+0x371/0x530
>    ? kobject_put+0x61/0x4b0
>    driver_detach+0xbf/0x180
>    bus_remove_driver+0x11b/0x2a0
>    auxiliary_driver_unregister+0x1a/0x50
>    irdma_exit_module+0x40/0x4c [irdma]

Thanks, I will work on it.

> 
