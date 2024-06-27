Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBA4919B93
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 02:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEF8241369;
	Thu, 27 Jun 2024 00:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ytu4oBQIr4Cu; Thu, 27 Jun 2024 00:02:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B566410DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719446577;
	bh=QO2xejtBoyfzqIYIXZ07xLNI/iLFFRoJ0hhWbwTy46I=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W/qNV2i2GagzAQV/MhzwK0IW/lSqCccP4XEZYFKwYl2y/FNa6OrZyN4yskNdSPWv8
	 e3QNvUfQ6ANfvr6j+7CSsJyV/y//y6wJIdmq0PGgYUAswyWGBkizPxfy18oIA9cPuR
	 n5HML3hUKTNwwOvlifA0Yh68XQhGSQ9D80WrSM9g+bbZrMKjL1SBVhZMMCUls/1yDs
	 y63z4VOPC0dC3aKWYZs0nJNHzrdk6U2/v3ekmdOiLX/UyL55vBRAgUtJFfk572x9AH
	 ZXgB2De8nW4XniA3+EvDUH2G33xLPbf+v3HgbF8dVFEQAtE69uXhzsqD7unrHLX0du
	 hbmF2bVVqAqIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B566410DC;
	Thu, 27 Jun 2024 00:02:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3D21BF589
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 00:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2980883F67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 00:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MR1qNq1Q4qVV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 00:02:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D58783F66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D58783F66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D58783F66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 00:02:53 +0000 (UTC)
X-CSE-ConnectionGUID: CQ6G6zlfSNqCh0We19yNKA==
X-CSE-MsgGUID: ZmFi7GuFQXKxgnC0vXUwGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="27949015"
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; d="scan'208";a="27949015"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 17:02:52 -0700
X-CSE-ConnectionGUID: tBrthuaZROaz6RO6m1y5Pw==
X-CSE-MsgGUID: R3TfP28uTBC0yoW+QwOgzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; d="scan'208";a="44597666"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.222.58])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 17:02:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240212-igc_mqprio-v3-1-261f5bb99a2a@linutronix.de>
References: <20240212-igc_mqprio-v3-1-261f5bb99a2a@linutronix.de>
Date: Wed, 26 Jun 2024 17:02:51 -0700
Message-ID: <87zfr75k2c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719446574; x=1750982574;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=m8dYd71ZgQj/j1p3AmMSu7U7kjBQL7OOUdrL5H6PoKc=;
 b=Zp+mtIRUMEU4KIPMQDvlt76FyzrXLQVMveJ/8M8Jc02LUZ9zhOX2nIp/
 BGgXgma/Ql+SxP2CKG1vZO48TXKbxSbC0BgBtSyRlWUXsGDAnR5vt4Rhx
 7IHRfltSu43oZxxg6W8xzVQI1DBecHpPs506MDLVSsbBQOm88XfDKlXCS
 661QfzzcHCB2sR0mOv/SON1EhRsvZ6xT+zGQvBq6Fp311+VC56Rvt7zIf
 OfPASOUoOzz2Eq2WPReJi8kDMjKE5j0/NGUrXxMzXJWHcCJSkL3HN2IBA
 hpvMBfHD/eqxE/y42W584DZ0MHGgZuwEUVCq8k1i5vSmyNUB19FZ25OYo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zp+mtIRU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add MQPRIO offload
 support
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, "shenjian \(K\)" <shenjian15@huawei.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Add support for offloading MQPRIO. The hardware has four priorities as well
> as four queues. Each queue must be a assigned with a unique priority.
>
> However, the priorities are only considered in TSN Tx mode. There are two
> TSN Tx modes. In case of MQPRIO the Qbv capability is not required.
> Therefore, use the legacy TSN Tx mode, which performs strict priority
> arbitration.
>
> Example for mqprio with hardware offload:
>
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc 4 \
> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
> |   queues 1@0 1@1 1@2 1@3 \
> |   hw 1
>
> The mqprio Qdisc also allows to configure the `preemptible_tcs'. However,
> frame preemption is not supported yet.
>
> Tested on Intel i225 and implemented by following data sheet section 7.5.2,
> Transmit Scheduling.
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v3:
> - Use FIELD_PREP for Tx ARB (Simon)
> - Add helper for Tx ARB configuration (Simon)
> - Limit ethtool_set_channels when mqprio is enabled (Jian)
> - Link to v2: https://lore.kernel.org/r/20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de
>
> Changes in v2:
> - Improve changelog (Paul Menzel)
> - Link to v1: https://lore.kernel.org/r/20240212-igc_mqprio-v1-1-7aed95b736db@linutronix.de

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


-- 
Vinicius
