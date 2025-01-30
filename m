Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E2DA23801
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 00:42:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9E7A40114;
	Thu, 30 Jan 2025 23:42:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IpomovZEKBeZ; Thu, 30 Jan 2025 23:42:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6448416A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738280565;
	bh=QLdGJ3oUC4191pyblaj+XY7Mrb33AqpXrBaKEN3nK6I=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W1wUV4QDDl7RmlvLHrOePqJmMm10ZYQ7mxwk1PloXzr0+L6Q/DNqVXoHl/C+BbkeR
	 7gawJLIRTyKnLUzeVniBMFuBTkkRqRiIOyfMm7hrK8NfUjL/xW3cqIrD87bzNpd2nC
	 a1xZfFGlEJIpaCi76FiU3AAP/jQkWMmj5diYctawNnEf6+fSo6IMi13UoKfKO0BIPG
	 cyKqa0AMl0rRvVGd8SLl5yku52y5L3oLm/mPxwZZzefvvXMrgNcYVmT+sku0upCynY
	 +u5f1METXSVStegU6InUTzWuXQrLxECMJQldmxLwtHVusrAiUCy053h9aQg8RFEQ7s
	 Tc2XvN1h0mPmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6448416A3;
	Thu, 30 Jan 2025 23:42:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9730712C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 23:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BF5F80A95
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 23:42:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-XqrMBi9Pa0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2025 23:42:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F4BD80A7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F4BD80A7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F4BD80A7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 23:42:43 +0000 (UTC)
X-CSE-ConnectionGUID: 1fGe/e9oQ9uRUjhf/pNGOg==
X-CSE-MsgGUID: kwOGQWDdQj+FcdljfT47FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="56392374"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="56392374"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 15:42:43 -0800
X-CSE-ConnectionGUID: AX6mNGHhQwWBZd3qMSmH6A==
X-CSE-MsgGUID: tg0EZPT9SgeNGo2EEfp3cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114081720"
Received: from johunt-mobl9.ger.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.222.4])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 15:42:41 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Florian Bezdeka
 <florian.bezdeka@siemens.com>, Jan Kiszka <jan.kiszka@siemens.com>, Song
 Yoong Siang <yoong.siang.song@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org, Zdenek Bouska
 <zdenek.bouska@siemens.com>
In-Reply-To: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
References: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
Date: Thu, 30 Jan 2025 15:42:41 -0800
Message-ID: <87r04jc1hq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738280564; x=1769816564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SNgWdW0+w8g7zWzmvBJ6hqxTIrMFupouLSnDTRPedqs=;
 b=njBD4CqeB5D6xy51Tc8bVyUbpf5GhYjisE/+RIUI25Dnsi7knQt37i8z
 //ijX4l6nYKHHS0knmhUaRKBvco9pV0iarSJuxZiyu+5SezGAvDMIM5Wp
 ZebOAruyR7yqYNWyBgB+8QvxPNhS3svWXqCR+52c2YqLUYR74D8l2Q84/
 pCmMfO0mKFOpQ4vocePBpmNlezhf/mtWNCM/Q5G0aJVj2IkyYocXzXbar
 06Z5WWdawqfu5mnVYRxKJXPqZqq7Ygu8v0fokcd9mA1JmlvYZoLDXEzUk
 r+kX2xXFiXUlnvL0BF162Gw11lvWf2qEnJ6vCpVf8UpKOR8sRFWDMd6QT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=njBD4Cqe
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix HW RX timestamp when passed
 by ZC XDP
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

Zdenek Bouska <zdenek.bouska@siemens.com> writes:

> Fixes HW RX timestamp in the following scenario:
> - AF_PACKET socket with enabled HW RX timestamps is created
> - AF_XDP socket with enabled zero copy is created
> - frame is forwarded to the BPF program, where the timestamp should
>   still be readable (extracted by igc_xdp_rx_timestamp(), kfunc
>   behind bpf_xdp_metadata_rx_timestamp())
> - the frame got XDP_PASS from BPF program, redirecting to the stack
> - AF_PACKET socket receives the frame with HW RX timestamp
>
> Moves the skb timestamp setting from igc_dispatch_skb_zc() to
> igc_construct_skb_zc() so that igc_construct_skb_zc() is similar to
> igc_construct_skb().
>
> This issue can also be reproduced by running:
>  # tools/testing/selftests/bpf/xdp_hw_metadata enp1s0
> When a frame with the wrong port 9092 (instead of 9091) is used:
>  # echo -n xdp | nc -u -q1 192.168.10.9 9092
> then the RX timestamp is missing and xdp_hw_metadata prints:
>  skb hwtstamp is not found!
>
> With this fix or when copy mode is used:
>  # tools/testing/selftests/bpf/xdp_hw_metadata -c enp1s0
> then RX timestamp is found and xdp_hw_metadata prints:
>  found skb hwtstamp = 1736509937.852786132
>
> Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
