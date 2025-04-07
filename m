Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C43FBA7DE12
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 14:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 730C14059A;
	Mon,  7 Apr 2025 12:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZ46-EMrRieu; Mon,  7 Apr 2025 12:47:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1461405A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744030069;
	bh=u+Z/AMBskEJ0BKMacTZ5uEoO1HtDbGTse6Y2qT9c77k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fjDA8JwH73Rnxoybuwu3piB7ScWfEE7/BOBwx6v+iRnAPKVrahxSAltWLXC+nPsEj
	 dTU6+EYQlQOsbx0kQ1f0qU4FVQO+u4b9c7Jf7LboE2nvEdVe0nCNd5U5BllKj7wGhC
	 BD67bQAreCkFh2jn46jYXsqi16Se+R8rTwrPLvQnazd5zhi4A8TsWa+3XvtvIhs3Az
	 YjMxM4NJUu1BoA20jM3gbbMiLvrMRYilRk/BHUfhOewymoYHKuFUMTaasYi5l86WSh
	 exvNMHWulnRTDwK1NEH2S8+S6Kzt22ziqnwG8/BjVe2Okef23bIRv6eAXaPwQNV5WK
	 gG/BxWddDD+KQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1461405A3;
	Mon,  7 Apr 2025 12:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 320B9DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1872960BB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:47:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQRopKh6rVxY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 12:47:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8258160A6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8258160A6D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8258160A6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:47:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 50012A48990;
 Mon,  7 Apr 2025 12:42:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B116C4CEDD;
 Mon,  7 Apr 2025 12:47:43 +0000 (UTC)
Date: Mon, 7 Apr 2025 13:47:41 +0100
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
Message-ID: <20250407124741.GJ395307@horms.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744030065;
 bh=IaB8foPsgHa6VHTC6ye/QBFhLDTe7BVG+PauPaynAM0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sPlW1FxOtPxLrYXc/E+Hd7eE9R4F7FlzvjlfXg0KlgJlq2KBXepi0oPo2kRm4LJEh
 M3jhM5oBaQm4a5TzPxXiFOm1sp3KVXljAclJVxjPC5ZnYcnP4ShWSBgJ9n86bKvstI
 Ahnzske/3EYalXgGFqKcuRgk+ZqJY7kOp76VBBHjYaNamRLhCPiINT5qn7dH3M3x0m
 brdfZ5cyF7ZuUNPZWw5lvK4Z7G8ETZGxNwFbbHzjCpgzJQVrPsFPVSVADoRDcYkHjl
 rFMrtRh6xuQuaHwhRMUFcNa11iBBGUIAhRn6Rh9/SovRBhFew/VHrKfQEmwBf81iau
 reQOUL7AYE7zQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sPlW1FxO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] igc: Limit netdev_tc
 calls to MQPRIO
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

On Fri, Mar 21, 2025 at 02:52:38PM +0100, Kurt Kanzenbach wrote:
> Limit netdev_tc calls to MQPRIO. Currently these calls are made in
> igc_tsn_enable_offload() and igc_tsn_disable_offload() which are used by
> TAPRIO and ETF as well. However, these are only required for MQPRIO.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Hi Kurt,

Thanks for the update. And I apologise that I now have question.

I see that:

* This patch moves logic from igc_tsn_disable_offload()
  and igc_tsn_enable_offload() to igc_tsn_enable_mqprio().

* That both igc_tsn_disable_offload() and igc_tsn_enable_offload()
  are only called from igc_tsn_reset().

* And that based on the description, this looks good for the case
  where igc_tsn_reset() is called from igc_tsn_offload_apply().
  This is because igc_tsn_offload_apply() is called from
  igc_tsn_enable_mqprio().

All good so far.

But my question is about the case where igc_tsn_reset() is called from
igc_reset(). Does the logic previously present in igc_tsn_enable_offload()
and igc_tsn_disable_offload() need to run in that case? And, if so,
how is that handled?
