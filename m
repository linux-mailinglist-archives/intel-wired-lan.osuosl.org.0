Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFF6CF5DD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 23:39:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 832ED4087F;
	Mon,  5 Jan 2026 22:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jLm1n2dO_uvc; Mon,  5 Jan 2026 22:39:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C26D140878
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767652787;
	bh=NSg8N+p4ZY6TdRjVD+24MP7xmpU/zu49SGnBak1XIWY=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=305nQ1IGGxGlesP2k4cxlEmsUYo/nzQ+5Agv+ylyjzohn6aK6EXHWylC/kJbr+S6Q
	 9nQ9FYUwkhIpFp4veOMkHc4s9owaH9J6WukgglYWYanDBzhVDwJPBhpPGv+kAlPj/0
	 yXiMUP78yFwWF8UiokYrH6znasPhpXy3C6CGTn942UJ1Je201JdYfiaNh9uXcyLlHt
	 ldPZoGIUHF6ZaYJfUo/pN4isMq9oIwYLFXzFnpeu6j1akq50fjKGBE0sV8AkpSVCc/
	 dESmiFShC/z9rcxyp6aWNUfH1sBaTgISz6q4XtnCkuobMsVkGp1KIe7kJqL3jnw9Ms
	 8q7ReBU6yaJ2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C26D140878;
	Mon,  5 Jan 2026 22:39:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ECCC9E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF0EC60AAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1VL1z0XOjv5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 22:39:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D3DEF60852
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3DEF60852
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3DEF60852
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:39:44 +0000 (UTC)
X-CSE-ConnectionGUID: cJDzMZL8R12VBSQucvXZXA==
X-CSE-MsgGUID: qUPPknzlT+OlgAqETBewcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91678210"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="91678210"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 14:39:44 -0800
X-CSE-ConnectionGUID: wxKxTIrqTpWE/FidL4bAIQ==
X-CSE-MsgGUID: Dbt2w69nQiOrSG+8WJsP2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207386714"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.88.27.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 14:39:44 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
In-Reply-To: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
References: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
Date: Mon, 05 Jan 2026 14:39:43 -0800
Message-ID: <87y0mbwuog.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767652785; x=1799188785;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Y/YyKuGAEyuZSeUBg9J3jnSkXBnkFLLiLAiSve8KMIs=;
 b=HFAcMs5T1YPRCbqBpmNc3d6dOOiy/CccOSI6Y+gkBLJANcoTQVGW+qIp
 HiDWHH7fOZJ+Oibxe7sa8SZYkYgKK0WBlmQyAgkpkSbPDvMoGYi1c1vYl
 av6p0lWYUJjWWYc4Fy0En5cVgZKnKNPgBy2zC0/tkwr4wgrObFNnb9+pD
 3877LauejfUZ92bFXUK6A8uAegW7+kgwRZ4tNL4Ss5tqCvFZzhYmXlkXL
 A/qWeM4NAeol5qZVU/MRBhyEOlF5kT04AP2/rCojq+Rh8eOTMsJOZz2zO
 9Hslfx3ukh3vB2Bfl4K7j0W7n12L15GLhkeAw0Yy1Pao0ye75yttxYjvK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HFAcMs5T
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Restore default Qbv
 schedule when changing channels
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

Kurt Kanzenbach <kurt@linutronix.de> writes:

> The Multi-queue Priority (MQPRIO) and Earliest TxTime First (ETF) offloads
> utilize the Time Sensitive Networking (TSN) Tx mode. This mode is always
> coupled to IEEE 802.1Qbv time aware shaper (Qbv). Therefore, the driver
> sets a default Qbv schedule of all gates opened and a cycle time of
> 1s. This schedule is set during probe.
>
> However, the following sequence of events lead to Tx issues:
>
>  - Boot a dual core system
>    igc_probe():
>      igc_tsn_clear_schedule():
>        -> Default Schedule is set
>        Note: At this point the driver has allocated two Tx/Rx queues, because
>        there are only two CPUs.
>
>  - ethtool -L enp3s0 combined 4
>    igc_ethtool_set_channels():
>      igc_reinit_queues()
>        -> Default schedule is gone, per Tx ring start and end time are zero
>
>   - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>       num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>       queues 1@0 1@1 1@2 1@3 hw 1
>     igc_tsn_offload_apply():
>       igc_tsn_enable_offload():
>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i), causing Tx to stall/fail
>
> Therefore, restore the default Qbv schedule after changing the number of
> channels.
>
> Furthermore, add a restriction to not allow queue reconfiguration when
> TSN/Qbv is enabled, because it may lead to inconsistent states.
>
> Fixes: c814a2d2d48f ("igc: Use default cycle 'start' and 'end' values for queues")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v3:
> - Adjust commit message and comments (Aleksandr)
> - Link to v2: https://lore.kernel.org/r/20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de
>
> Changes in v2:
> - Explain abbreviations (Aleksandr)
> - Only clear schedule if no error happened (Aleksandr)
> - Add restriction to avoid inconsistent states (Vinicius)
> - Target net tree (Vinicius)
> - Link to v1: https://lore.kernel.org/r/20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>



Cheers,
-- 
Vinicius
