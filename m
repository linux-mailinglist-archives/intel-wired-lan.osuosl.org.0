Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8A6A42FA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 23:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 095FA60E3D;
	Mon, 24 Feb 2025 22:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWOx7SCRpCUU; Mon, 24 Feb 2025 22:00:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F22A60E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740434428;
	bh=3zPSUVVp/T+8vFi/tUsIPuC6g6SLca3sEkldYv+ofWQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CXVgpJevSgzmUirItdSANWuk1/RTwntLhheEUfcbbo/cZygpcRLebCpgOl5X0ajX4
	 NpM1/hLLJdXLVB1qzmGoJarrn3DWnOR7XQ4Pq2ySs3AZOaPBf0ghhLQjBSQSxiC6ss
	 tdpMz48w9O0LjbMQs3PsDeMXlEa4ltSTmr6R+JzoNtdRkeUr1Q73lGxRd1xVrMn3H9
	 auHjR+lbj9SVn4dPJO2bpwGDeBcWtASTTyyI9iFrbntPT74o1iY4aENOosCXkuIOGI
	 UfMkx3SsDS1AUEBWWPEU+Sl4U6t7uY07ofOzB+jtpLWXWPtLcadcHfE0AG4C6Wg2Jl
	 ExJ5pMULqrlMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F22A60E15;
	Mon, 24 Feb 2025 22:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14CC02292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0135540966
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:00:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQ0w3HrNl0RJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 22:00:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 386BD409F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 386BD409F3
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 386BD409F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:00:23 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af521.dynamic.kabel-deutschland.de
 [95.90.245.33])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1DEF161E64788;
 Mon, 24 Feb 2025 22:59:32 +0100 (CET)
Message-ID: <1e8e6855-0c87-4007-aadd-bdcad51f97cf@molgen.mpg.de>
Date: Mon, 24 Feb 2025 22:59:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
 MQPRIO offloading
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

Dear Kurt,


Thank you for the patch.


Am 24.02.25 um 11:05 schrieb Kurt Kanzenbach:
> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
> this mode the hardware uses four packet buffers and considers queue
> priorities.

If I didn’t miss anything, later on you do not specify how many buffers 
are used after changing the Tx mode.

> In order to harmonize the TAPRIO implementation with MQPRIO, switch to the
> regular TSN Tx mode. In addition to the legacy mode, transmission is always
> coupled to Qbv. The driver already has mechanisms to use a dummy schedule
> of 1 second with all gates open for ETF. Simply use this for MQPRIO too.
> 
> This reduces code and makes it easier to add support for frame preemption
> later.
> 
> While at it limit the netdev_tc calls to MQPRIO only.
> 
> Tested on i225 with real time application using high priority queue, iperf3
> using low priority queue and network TAP device.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v2:
> - Add comma to commit message (Faizal)
> - Simplify if condition (Faizal)
> - Link to v1: https://lore.kernel.org/r/20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  4 +---
>   drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 40 ++-----------------------------
>   3 files changed, 20 insertions(+), 42 deletions(-)

[…]


Kind regards,

Paul
