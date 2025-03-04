Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD7DA4E8C6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 18:30:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 374ED817EB;
	Tue,  4 Mar 2025 17:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwYYJXA_gNcE; Tue,  4 Mar 2025 17:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C7B281177
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741109429;
	bh=4XZ83idWzI9RFRBdvxHmTuPOrheXC7/d1oOEtcKE2fU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOqwo+PEn3hMBR1FZTeiXTJ2M/3fn/qn+MJ4y63SYg06axMfVZL3pbB6mTWFwyaKs
	 rr00t1vD4JE2dDCetzD6UV5CWTAvMfE2kYdBSQ20YDrhbOY0qGO4UxvzR7xo5RM6JP
	 tJzP1KMrMWWMsIX6R90uxPjricfvIvJSNp9PZiyj12Q5ktlvVDIp5yP4i/BBhJhFYL
	 OKbnugVe5pkTzyZqM0PeXZnFDLauPxAPvpG9AscfeGkU+AYWN1jwK2sq5BRnWwdhKA
	 NBZpqwFVYH8qYpp0Q8F/dGESScLcinf7UehfswHXCqETZMvjgnamyMj1i1af0LVLWq
	 V7UW/ghfpWQtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C7B281177;
	Tue,  4 Mar 2025 17:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A571941
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F0C060ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2GtCKa4Q7h-q for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 17:30:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FD8E607CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FD8E607CE
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FD8E607CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:30:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 58978A45A9B;
 Tue,  4 Mar 2025 17:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84BA8C4CEE5;
 Tue,  4 Mar 2025 17:30:23 +0000 (UTC)
Date: Tue, 4 Mar 2025 17:30:21 +0000
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
Message-ID: <20250304173021.GH3666230@kernel.org>
References: <20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741109425;
 bh=xuCB2v1oTiS5aN88F+t/9IxGezhQ8OSGjVyYYhNHj48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hA5A/kjpuNwBuwkBfBPzGm3c4k3T/6X2O42kzkDgPM2PQPURnd4VrfbdjGinzSe4R
 7Earfx7KtvrVS18Y89YQ1cKi63QqWQfJFiDazGcTh2Z2e/0O1M5pbTkoXGjheQeZbT
 E3n0D8ZgEJgjrRzLIPa/rpi9ac3UJsaiINh8HCMepERMI6BuUr0L0F2UV8rWlj6e79
 f5+rQ+1Jx1qLnMGQ+66e63rlXkF2KcrZuIXeppiz8sWlrE6iIO4ql1Yb/O+3j3wiqj
 pik0zlBL1U/vRlK8BBkZT9MNphx5hh3nJpOcfZrakObklpaP2RJxc0W9BtlSKByAIh
 W3Z/3ygTR/GJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hA5A/kjp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Change Tx mode for
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

On Mon, Mar 03, 2025 at 10:16:33AM +0100, Kurt Kanzenbach wrote:
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
> While at it limit the netdev_tc calls to MQPRIO only.

Hi Kurt,

Can this part be broken out into a separate patch?
It seems so to me, but perhaps I'm missing something.

The reason that I ask is that this appears to be a good portion of the
change, and doing so would make the code changes for main part of the
patch, as per the description prior to the line above, clearer IMHO.

> 
> Tested on i225 with real time application using high priority queue, iperf3
> using low priority queue and network TAP device.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

...
