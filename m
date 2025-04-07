Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C5A7DDCA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 14:37:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7938F61066;
	Mon,  7 Apr 2025 12:37:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7TEQOez2_am; Mon,  7 Apr 2025 12:37:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCD916106B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744029441;
	bh=sX946Cy4MhhnAPrIla+63/uS0WVF1V9wtrasFYqrYXo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xlddkPmpKDplZntW7YZNatBg2QqQd1LAesRakv2mTx4qedcd5QZknV+EHLpqgFZOz
	 hCzF0a0LBJpop0iZ+NqKzPUTLiDXcq0kDlB+k8kpH3AMIbbx8pj5+qX9Rd21vF/DPn
	 QLYUoZM1MFlhKkEu/FqUzs6P/Q5qKDlPONhsfEE7B2emMPEsgGLa15+Mmmvod+kzHB
	 u6CnP9mUQLRMjT8cAiihbcqOvcORS6i56EDrLKhCV1fbijDkfAHNTtgWPh9n1KlX+S
	 ZvSuBlHIu6A4lVZRomB/Pu+UgxOq+wfk0kJWf6Mqn2y6FRnkD9SNwfvMxJ5nSr51ow
	 gWQXIiDVB4sdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCD916106B;
	Mon,  7 Apr 2025 12:37:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D88E1F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A45A380D26
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XFHS9lQJhmlo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 12:37:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 124C280D24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 124C280D24
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 124C280D24
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1DF0E61129;
 Mon,  7 Apr 2025 12:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07904C4CEDD;
 Mon,  7 Apr 2025 12:37:14 +0000 (UTC)
Date: Mon, 7 Apr 2025 13:37:12 +0100
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250407123712.GI395307@horms.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-2-4571abb6714e@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321-igc_mqprio_tx_mode-v4-2-4571abb6714e@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744029437;
 bh=oZyI1mpgLuMcg85lAyaMpnatD7EAnPF9QqXpdxcNdMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SM1HEJsGT99defB7ng7EQ+pkfPfQka8Vm40nYknRIi3YG2B4bCVbrPE4Ny/IXdj1g
 SmwUS9Y9Rd4gwUw66lFu78IAxUlol8h9rY0UMCPp+yq0SfPnXHUEXE+acm8A6j8xKO
 lX6uzz6l3dOcfzPxoeMYGNJJYGMPUrhXd7ldXB+LhJ4zPT+5GEBflmnBX6jlsmw2q+
 OAJ2h23AosRLcDIcT9tP4e+hk8ESPam/ji9/JmPmQ+D+FxZW60prY7lW9bNnFrvxlr
 Xsgn8JreP8onFjKvs7Cv7qtEHPSsC2/A/8bmbfyhuuvRYQ3Ua/hCHm9M/ryUZnrmWC
 XcxqS+CknObgg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SM1HEJsG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] igc: Change Tx mode
 for MQPRIO offloading
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

On Fri, Mar 21, 2025 at 02:52:39PM +0100, Kurt Kanzenbach wrote:
> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
> this mode the hardware uses four packet buffers and considers queue
> priorities.
> 
> In order to harmonize the TAPRIO implementation with MQPRIO, switch to the
> regular TSN Tx mode. This mode also uses four packet buffers and considers
> queue priorities. In addition to the legacy mode, transmission is always
> coupled to Qbv. The driver already has mechanisms to use a dummy schedule
> of 1 second with all gates open for ETF. Simply use this for MQPRIO too.
> 
> This reduces code and makes it easier to add support for frame preemption
> later.
> 
> Tested on i225 with real time application using high priority queue, iperf3
> using low priority queue and network TAP device.
> 
> Acked-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Reviewed-by: Simon Horman <horms@kernel.org>

