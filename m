Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF55C54A44
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 22:42:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0909540B6A;
	Wed, 12 Nov 2025 21:42:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id my-V9s39M95O; Wed, 12 Nov 2025 21:42:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ACEC40B66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762983729;
	bh=jiekbv30cnJajhia2PGf9D1APtZYxzCKhh6RI8DQqt4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LNB4tCd6HkqI5nGsS6QcFWerPXdkuoAQcPGPSd6NoXd7kWBOb0y30IUHUir9N3xu8
	 1UdX6R1r3xWUsMNATeqEcUSOOUbczjE+KGaSAfhOyCTdo79M/FT/M8Xr7p4jnV8t1G
	 NuKv266gmeC6hRaKmgRyQKFaOSX3Ytz+Ieyxyu8nzvupga6wm3dwPlXsKhxzSQiqQ9
	 zorygm5v8ruFZlLiNkoOi7vRcYEXf13FVWM0fZx2BtM72bs/i+9KRXr6UpS+7FrNEn
	 6KumZ2EQ5ltMAbfDhMkSZvpjrA+HaPjIww0nmC7W4rolnwVa3F6SAjHxtSO94ttQ1e
	 yKipJq4YL+1hA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ACEC40B66;
	Wed, 12 Nov 2025 21:42:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61743230
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 21:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46B3A6089D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 21:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60S83ILvJkN8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 21:42:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8410460888
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8410460888
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8410460888
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 21:42:06 +0000 (UTC)
X-CSE-ConnectionGUID: ygzjcGuiQxi7Zd8SchCllg==
X-CSE-MsgGUID: MxSQu9CKTdCsoZ5kVmE72w==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="68690801"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="68690801"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 13:42:06 -0800
X-CSE-ConnectionGUID: pDCoAjLJS8S/Rxb6WZ+AUA==
X-CSE-MsgGUID: 93od+bRgTFWGXIxSQcb8rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="189183119"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.88.27.140])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 13:42:05 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
In-Reply-To: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
Date: Wed, 12 Nov 2025 13:42:06 -0800
Message-ID: <87ldkblyhd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762983727; x=1794519727;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nuB61kww3NYzARmWzyj3/JWtL1K+5aUzT9fCLeONkXM=;
 b=HCMK2PW2LL9OIJKM4Nd6GRwA9Ta86gZSCAM08nWr/NSSKfzpLQZ95ml1
 CaiZV7OzZXwzYD8JSKAGjuslWaXZUoRDulxlZT7PEGBdpLSPCkjXoEnTl
 qs6xJTsjDe1ll2y8tjOFMxYygBsPPcQ7GQL9pEVsTOn/YvQn/ViJpbfq7
 dYUE8KvaelgqL4BQLAY1pOep6P+zdjvbUQGN08uJc6XtgeyjBD4/Ct+FM
 bqR+DCW8Q3qjTpjPxMJqyKovSZ87S9uYtuQObgoBIqIzB9dS/3BB2ZHKk
 fp83mqsO1SSTu606jXyO564qvWekdZsoR7/TzrB9gXocstF+1jL0/wBNY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HCMK2PW2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
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

Hi,

Kurt Kanzenbach <kurt@linutronix.de> writes:

> The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is always
> coupled to Qbv. Therefore, the driver sets a default Qbv schedule of all gates
> opened and a cycle time of 1s. This schedule is set during probe.
>
> However, the following sequence of events lead to Tx issues:
>
>  - Boot a dual core system
>    probe():
>      igc_tsn_clear_schedule():
>        -> Default Schedule is set
>        Note: At this point the driver has allocated two Tx/Rx queues, because
>        there are only two CPU(s).
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
>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom
>
> Therefore, restore the default Qbv schedule after changing the amount of
> channels.
>

Couple of questions:
 - Would it make sense to mark this patch as a fix?

 - What would happen if the user added a Qbv schedule (not the default
   one) and then changed the number of queues? My concern is that 'tc
   qdisc' would show the custom user schedule and the hardware would be
   "running" the default schedule, this inconsistency is not ideal. In
   any case, it would be a separate patch.


> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 728d7ca5338bf27c3ce50a2a497b238c38cfa338..e4200fcb2682ccd5b57abb0d2b8e4eb30df117df 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7761,6 +7761,8 @@ int igc_reinit_queues(struct igc_adapter *adapter)
>  	if (netif_running(netdev))
>  		err = igc_open(netdev);
>  
> +	igc_tsn_clear_schedule(adapter);
> +
>  	return err;
>  }
>  
>
> ---
> base-commit: 6fc33710cd6c55397e606eeb544bdf56ee87aae5
> change-id: 20251107-igc_mqprio_channels-2329166e898b
>
> Best regards,
> -- 
> Kurt Kanzenbach <kurt@linutronix.de>
>


Cheers,
-- 
Vinicius
