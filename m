Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8233A8503A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 01:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64C8583A91;
	Thu, 10 Apr 2025 23:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Po_kDr_3DXOG; Thu, 10 Apr 2025 23:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CB3683FB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744328680;
	bh=CgAMgSjNaLPrEDdhlIHh+mTeyqUviDBFIaRSloBlCXo=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9Sg8kbSIPyqhaaqaqYz4Dd2jziN+MoCTMijuP7tIjH6dG4303Lk4tnXqdFXxWuCE5
	 D0HVt+2IEPIaUK9lGF5AjvE/OVLzJhxzxcdsIqcoGIIZzLyjU2/a2zVUcNtcF0tbSK
	 deAp+evxP9Olep84ZQczhNrBscYBVCxGVBTolbwS5Dnfrt94JhXXVGp8HF9bbVXYt6
	 t3YsO2cZh8LESLl/AxETZtOfVmrAxH9P8x0jZmDcMcYZo/EK4/imln1iCzWrNcDp1a
	 U03GoEHBkMnywCjU8qwgJGQclQwcwYb3puB5V/t7GTSTb9LTRN+ljVj1qbYAfqgHVa
	 OJSgEK8cd9cVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CB3683FB3;
	Thu, 10 Apr 2025 23:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A2BF108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 23:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA96441E92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 23:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iEwuOtlX3kJe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 23:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B995E405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B995E405AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B995E405AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 23:44:36 +0000 (UTC)
X-CSE-ConnectionGUID: aes7MBcpTzyEOMMEvYOHsw==
X-CSE-MsgGUID: Br0w5gq/T9SarShzKToaOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45111309"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45111309"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 16:44:36 -0700
X-CSE-ConnectionGUID: aXuBzH4PTtOmeVumBPKkXQ==
X-CSE-MsgGUID: EmLzFr8AR2K5b/rPAxFCVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="128913170"
Received: from iweiny-desk3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.101])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 16:44:35 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, rodrigo.cadore@l-acoustics.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Jacob Keller
 <jacob.e.keller@intel.com>, Christopher S M Hall
 <christopher.s.hall@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mor Bar-Gabay
 <morx.bar.gabay@intel.com>, Avigail Dahan <avigailx.dahan@intel.com>,
 Corinna Vinschen <vinschen@redhat.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
Date: Thu, 10 Apr 2025 16:44:35 -0700
Message-ID: <87y0w74m58.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744328677; x=1775864677;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i/KH7aPk7pQ0Wb/Co75kxU2dezWiH/Fz3PcyNabRYn4=;
 b=HPCuZW724Qed3Kaow71PWI+PAzw3jj7UWtrcjoPgWWPFqLpoyi1FeErc
 kzGm2sSBTGz1jztzZp1iKh0qAzYb2bThx/RvR+jDWaHffsaH4YfmAwhDK
 2rJXGRPJppweOw6iZ5nzphR2p2jSF9kM2wml1eOLupdxS54eGkoiSSEcK
 2a7OGJVlggwbIXA4WYzUeJCNRsS1uCb4zy14JzU3KnBOTuJKDXIfDDqAe
 EKyNv83IM03ebiTa3jJKIGq8j7raEXnXUmtMLh7JIyvhu6FsJFkqUj9d+
 /APY0rvCmBa7/829hVdRH7wluiuohQ6PAjB97Up6X9bqeUpTOTJwM2Q9P
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HPCuZW72
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 0/6] igc: Fix PTM timeout
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

Hi,

Jacob Keller <jacob.e.keller@intel.com> writes:

> There have been sporadic reports of PTM timeouts using i225/i226 devices
>
> These timeouts have been root caused to:
>
> 1) Manipulating the PTM status register while PTM is enabled and triggered
> 2) The hardware retrying too quickly when an inappropriate response is
>    received from the upstream device
>
> The issue can be reproduced with the following:
>
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
>
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
>
> PHC2SYS exits with:
>
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
>
> The first patch in this series also resolves an issue reported by Corinna
> Vinschen relating to kdump:
>
>   This patch also fixes a hang in igc_probe() when loading the igc
>   driver in the kdump kernel on systems supporting PTM.
>
>   The igc driver running in the base kernel enables PTM trigger in
>   igc_probe().  Therefore the driver is always in PTM trigger mode,
>   except in brief periods when manually triggering a PTM cycle.
>
>   When a crash occurs, the NIC is reset while PTM trigger is enabled.
>   Due to a hardware problem, the NIC is subsequently in a bad busmaster
>   state and doesn't handle register reads/writes.  When running
>   igc_probe() in the kdump kernel, the first register access to a NIC
>   register hangs driver probing and ultimately breaks kdump.
>
>   With this patch, igc has PTM trigger disabled most of the time,
>   and the trigger is only enabled for very brief (10 - 100 us) periods
>   when manually triggering a PTM cycle.  Chances that a crash occurs
>   during a PTM trigger are not zero, but extremly reduced.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes in v4:
> - Jacob taking over sending v4 due to lack of time on Chris's part.
> - Updated commit messages based on review feedback from v3
> - Updated commit titles to slightly more imperative wording
> - Link to v3: https://lore.kernel.org/r/20241106184722.17230-1-christopher.s.hall@intel.com
> Changes in v3:
> - Added mutex_destroy() to clean up PTM lock.
> - Added missing checks for PTP enabled flag called from igc_main.c.
> - Cleanup PTP module if probe fails.
> - Wrap all access to PTM registers with PTM lock/unlock.
> - Link to v2: https://lore.kernel.org/netdev/20241023023040.111429-1-christopher.s.hall@intel.com/
> Changes in v2:
> - Removed patch modifying PTM retry loop count.
> - Moved PTM mutex initialization from igc_reset() to igc_ptp_init(), called
>   once during igc_probe().
> - Link to v1: https://lore.kernel.org/netdev/20240807003032.10300-1-christopher.s.hall@intel.com/
>
> ---
> Christopher S M Hall (6):
>       igc: fix PTM cycle trigger logic
>       igc: increase wait time before retrying PTM
>       igc: move ktime snapshot into PTM retry loop
>       igc: handle the IGC_PTP_ENABLED flag correctly
>       igc: cleanup PTP module if probe fails
>       igc: add lock preventing multiple simultaneous PTM transactions
>

For the series:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
