Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3968392DCE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 01:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF71840B77;
	Wed, 10 Jul 2024 23:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MHviKhqE4KVq; Wed, 10 Jul 2024 23:45:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6437840B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720655102;
	bh=dGpvPeKiFYO2WYGISkSfu4wXEFjI39K5KUGz66ek3AQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9u7r0YtD1IxTde4FRC4kmN1tc1P83/3eBbDFchoeFiL9kXF48jdmPa7r2bbWyb/td
	 M3UTBnSiWtqTH8amSUzQZiT2FVYXuEORLjOZ4nKdvXzJDhYFAPlRf0VivdDL0gajPo
	 DgqgQNCBqu49urUbp0FQlHJECfLVEN0iNhf+NQjZN8LYamuCV8Ni1MhYyjGOXDJuNV
	 wEYip4F/T/3qA+31RQj+VuqsNxarOX6Pq2H9nUeNNUS1FY4un0tLf4iag35KRoUnsm
	 lOWD26lFSdpcm04bk4a4Cs11GxlaRsZQ8S7iscREdoJXazKJgJhW+wjaMf+Q6jhnKt
	 vbVuMZgjg4Mew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6437840B8B;
	Wed, 10 Jul 2024 23:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AFFA1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 773D961065
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecZR8XpO4Nu9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 23:44:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8FD6461046
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FD6461046
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FD6461046
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:44:59 +0000 (UTC)
X-CSE-ConnectionGUID: d5Chpp+qSBuq9rU1s8BC9A==
X-CSE-MsgGUID: qoMdExdrSRiHhe9xZc/AVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="18145499"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="18145499"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 16:44:59 -0700
X-CSE-ConnectionGUID: EtNu+p8KSAqlqVHEqTAZsw==
X-CSE-MsgGUID: LZ2kLGFIQxadmLv6EIr4Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48344507"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.70])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 16:44:57 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
Date: Wed, 10 Jul 2024 16:44:56 -0700
Message-ID: <87o774u807.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720655100; x=1752191100;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2FL1KLCRwEBjN0Eyy0mybvPOrQPAKC/0qRzk5OZQZ3s=;
 b=FJERfVni9PUYFtJCvWvW6axhRG2qco3t5jAkcWPO4twan8lgNwwW9EZD
 Sor0CjH2VfNEEHzqeq4as8UmqDO1UCN3uxs8wMscMCw1waGB4MHscn95C
 cgW5dIdCK7ZMiWSQq5YwebMEn8Naa/XhT/Y4ZimXCr9hi1ZNUBofpMyjf
 PdA59F7k5psexvZwFQYeCk5T9UeebBluiz4UoJTj1zobLwmAzq/xhmn+h
 Rdj4XpR+3sKNCnFgXbiycbombONHg4SNj4FyXlEzu9idNIGQznONjEXly
 CDaF+CaSXjIhRnUBER+cbsglUWlrDpop4HDdFsnX0Ko7SMjDymG1pX37E
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FJERfVni
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:

> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
> have been observed:
>
> 1. The reset adapter logics for i225 and i226 differ, although they should
>    be the same according to the guidelines in I225/6 HW Design Section
>    7.5.2.1 on software initialization during tx mode changes.
> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>    This occurs solely based on the condition  igc_is_device_id_i225() when
>    calling schedule_work().
> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>    resets adapter for legacy->tsn tx mode transitions.
> 4. qbv_count introduced in the patch is actually not needed; in this
>    context, a non-zero value of qbv_count is used to indicate if tx mode
>    was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>    be replaced by checking the existing register
>    IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
>
> This patch resolves all issues and enters schedule_work() to reset the
> adapter only when changing tx mode. It also removes reliance on qbv_count.
>
> qbv_count field will be removed in a future patch.
>
> Test ran:
>
> 1. Verify reset adapter behaviour in i225/6:
>    a) Enrol a new GCL
>       Reset adapter observed (tx mode change legacy->tsn)
>    b) Enrol a new GCL without deleting qdisc
>       No reset adapter observed (tx mode remain tsn->tsn)
>    c) Delete qdisc
>       Reset adapter observed (tx mode change tsn->legacy)
>
> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>    to confirm it remains resolved.
>
> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---

There were a quite a few bugs, some of them my fault, on this part of
the code, changing between the modes in the hardware.

So I would like some confirmation that ETF offloading/LaunchTime was
also tested with this change. Just to be sure.

But code-wise, looks good:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
