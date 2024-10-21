Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A29A714F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 19:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D86880D39;
	Mon, 21 Oct 2024 17:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vUKUWIjiJIkL; Mon, 21 Oct 2024 17:48:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0C9B80D29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729532908;
	bh=bw+5MmyC2zwV1J+KKd6gSvR3snGanlI/79WuCrrZJ4M=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HtoCgle5ZKEPjN+8Ejy/PtjhvbsqmAGWo1gOiAs782xAW3FSBI6Y/WdZcBs2tzPGe
	 yBhTPTqtPsgzJpuc9GWuVsJY8U3uZmozmrqQjhTDHAuH9cUk0S15PrM2hlJ+c+GSJO
	 aMTrKxf1WfcViDaxiROxsnK8IR/feWe0kIzk3wFf//iwR29fH6wNiJqrOgL3I4infj
	 iHv5N0jwMMJcrHQRzchVNqKaZwReHmq7cvc0l7h081r8Ip7E1rR+BLc5QXKKldwbOu
	 gCvK1AfcQLmsgSzbti6dSV7QKn/GSxDB8aUdxi2pSmGzSfRzd9YAXraoooFGGZX9LK
	 2HJX9OGoh4PnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0C9B80D29;
	Mon, 21 Oct 2024 17:48:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 400E92072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E30A80B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuz8uXNxuWCE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 17:48:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C6C2880D39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6C2880D39
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6C2880D39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:21 +0000 (UTC)
X-CSE-ConnectionGUID: eT3D+H14QKWsRE6Bz7LAZg==
X-CSE-MsgGUID: HqFcWtz9Q6alPZSrtUKZVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16663288"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="16663288"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 10:48:21 -0700
X-CSE-ConnectionGUID: ZtSOvIZcTwyhQrB+3z08CA==
X-CSE-MsgGUID: qhfYvI10QSmqJMIREiZfxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80001296"
Received: from philliph-desk.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.220.26])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 10:48:19 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
Cc: kurt@linutronix.de, Joe Damato <jdamato@fastly.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>
In-Reply-To: <20241018171343.314835-2-jdamato@fastly.com>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-2-jdamato@fastly.com>
Date: Mon, 21 Oct 2024 10:48:18 -0700
Message-ID: <878quhgxel.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729532902; x=1761068902;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fySSFkngfY5fa46FAuxT2ZsveJWPtJxTCyFd6HqJqEo=;
 b=XcgebuaegV+YpmMGI/5QL38SWBCrhhk6vBgSSnQv7vl/Fk1x6WQWvpwN
 PyXqL8qrV7tdazXsGdq4eN9P7hp9A6PxuQMKnZbcBQ2bMO0DtuQZrzk2k
 RrPp6nxl9YrJ2RYdES55iIb6qW9Eu1dIwnV8fEvgZcVRtK6yQzqph+AjF
 6uqHy7ttGJIfeAxpQxLaTlkVoQXzP4Y7af6NQG2SSGg0hbXc4ybDoU5xc
 rL10K3c6mQcISX8a6ol/3llW21OMQR6tuWkVpMPImVIy0/p3UQ+WjoY4X
 ejZLw+9rLz+twcJ36Raj5/xSQjI21N2a3YxGNNTkXZ0vZx4aIBGp1x54T
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xcgebuae
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] igc: Link IRQs to NAPI
 instances
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

Joe Damato <jdamato@fastly.com> writes:

> Link IRQs to NAPI instances via netdev-genl API so that users can query
> this information with netlink.
>
> Compare the output of /proc/interrupts (noting that IRQ 144 is the
> "other" IRQ which does not appear to have a NAPI instance):
>
> $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
>  128
>  129
>  130
>  131
>  132
>
> The output from netlink shows the mapping of NAPI IDs to IRQs (again
> noting that 144 is absent as it is the "other" IRQ):
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json='{"ifindex": 2}'
>
> [{'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8196,
>   'ifindex': 2,
>   'irq': 132},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8195,
>   'ifindex': 2,
>   'irq': 131},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8194,
>   'ifindex': 2,
>   'irq': 130},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8193,
>   'ifindex': 2,
>   'irq': 129}]
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
