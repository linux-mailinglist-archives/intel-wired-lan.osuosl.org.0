Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE68AB8527
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 13:46:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5008A41564;
	Thu, 15 May 2025 11:46:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmCL4oOzAMDb; Thu, 15 May 2025 11:46:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE1914156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747309582;
	bh=/ZhKCQ2bUCgswyRWRf3ouln9u/AW4Q2hbY1K7nFMKDw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=csB5X8J9EzisBuRHgbFrmKw1At6v5i7gsTd6wlswEBlH8Zpn586x55BJ/FUANu158
	 jJPpAE+gnmUVLX0hRxBMaCUeYrHwPcgJwrR83vD3IpQz73QgDjy+XJ2QSGM14Mcx3s
	 T3i3FKDiyFWnSi/atHeGfAcUweGpqv6ZXXRdLKfgu2RSRiUMqCEXZiKov+z6jaP2XJ
	 1+cU1SCCLyjWDZRtJKgQhqtGhNpmnCJ34/IarG8AVHE4LZ6zE+5e/LZgol7JxNqokb
	 uJSAs6VY1eidyOcJ0yUPtEQQ9Vb7QA+bqpJFirGSkGrkaHhXv1Lxjwnr0UGQWcSqR/
	 Wtw+B7SFVXXng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE1914156D;
	Thu, 15 May 2025 11:46:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18E5B153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F311D40607
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTYH33bjyxKa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 11:46:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 65E454057A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65E454057A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65E454057A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C953F49C03;
 Thu, 15 May 2025 11:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDF68C4CEE7;
 Thu, 15 May 2025 11:46:17 +0000 (UTC)
Date: Thu, 15 May 2025 12:46:15 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, jacob.e.keller@intel.com,
 jbrandeburg@cloudflare.com, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250515114615.GU3339421@horms.kernel.org>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-2-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513105529.241745-2-michal.kubiak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747309579;
 bh=sOOr/cGmH1ZHziLiI3ddYS5UABl35cDPdQilJlXbXw4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fea3SdvkxuOMxetev5CptIA99sIoAXbCdjBNw6fyelAoRe6Y6iHC/XJQxP5+1F2lr
 ax0w/uVNcYCRLF9PubVoUNjVB5EPpMpcA/XICK3ipe+IEiIh9M7BA2JYn790PKcl3k
 5Z+sLJuVD5DGJJtyjuu1PvlhqcFNjxy/WIWyzzFq/86QBmefiCh/Ofxp0p0ZlOhzjI
 UWHRF4J+HmKaX62D0mSXcIaGHfgo05djHnu4BsonnChfWoaOWFuVq53f2I7g20mbQ4
 AnC4owNvheAsVQm92CgnMzYY032g1Jwaa9pxZWKVJIMVScWgjn6t0DTZZJAueuQTFZ
 tq4WVnVz1pj+Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Fea3Sdvk
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: fix Tx scheduler
 error handling in XDP callback
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

On Tue, May 13, 2025 at 12:55:27PM +0200, Michal Kubiak wrote:
> When the XDP program is loaded, the XDP callback adds new Tx queues.
> This means that the callback must update the Tx scheduler with the new
> queue number. In the event of a Tx scheduler failure, the XDP callback
> should also fail and roll back any changes previously made for XDP
> preparation.
> 
> The previous implementation had a bug that not all changes made by the
> XDP callback were rolled back. This caused the crash with the following
> call trace:
> 
> [  +9.549584] ice 0000:ca:00.0: Failed VSI LAN queue config for XDP, error: -5
> [  +0.382335] Oops: general protection fault, probably for non-canonical address 0x50a2250a90495525: 0000 [#1] SMP NOPTI
> [  +0.010710] CPU: 103 UID: 0 PID: 0 Comm: swapper/103 Not tainted 6.14.0-net-next-mar-31+ #14 PREEMPT(voluntary)
> [  +0.010175] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022
> [  +0.010946] RIP: 0010:__ice_update_sample+0x39/0xe0 [ice]
> 
> [...]
> 
> [  +0.002715] Call Trace:
> [  +0.002452]  <IRQ>
> [  +0.002021]  ? __die_body.cold+0x19/0x29
> [  +0.003922]  ? die_addr+0x3c/0x60
> [  +0.003319]  ? exc_general_protection+0x17c/0x400
> [  +0.004707]  ? asm_exc_general_protection+0x26/0x30
> [  +0.004879]  ? __ice_update_sample+0x39/0xe0 [ice]
> [  +0.004835]  ice_napi_poll+0x665/0x680 [ice]
> [  +0.004320]  __napi_poll+0x28/0x190
> [  +0.003500]  net_rx_action+0x198/0x360
> [  +0.003752]  ? update_rq_clock+0x39/0x220
> [  +0.004013]  handle_softirqs+0xf1/0x340
> [  +0.003840]  ? sched_clock_cpu+0xf/0x1f0
> [  +0.003925]  __irq_exit_rcu+0xc2/0xe0
> [  +0.003665]  common_interrupt+0x85/0xa0
> [  +0.003839]  </IRQ>
> [  +0.002098]  <TASK>
> [  +0.002106]  asm_common_interrupt+0x26/0x40
> [  +0.004184] RIP: 0010:cpuidle_enter_state+0xd3/0x690
> 
> Fix this by performing the missing unmapping of XDP queues from
> q_vectors and setting the XDP rings pointer back to NULL after all those
> queues are released.
> Also, add an immediate exit from the XDP callback in case of ring
> preparation failure.
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

