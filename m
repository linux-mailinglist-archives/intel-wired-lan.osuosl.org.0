Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B35A3DDAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 16:04:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A019410CF;
	Thu, 20 Feb 2025 15:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EhCCU6QVk-n; Thu, 20 Feb 2025 15:04:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACDC340B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740063877;
	bh=JNFOsg4fz6eogYfDd3xWVylP4nu1Il0i2Mdj+u140Lw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D4fIRJsB8lB7kfLTfIgpzMv0dncfJzjVpP8hpYzfZh2W9yhV7sXyOnMC6IZY4zeta
	 GnFP7TTnazk6qn1yzsBNSTs9c8uDqENd1b1k3STRTVAxLSzQqMGkJtQgY2zSPywyu/
	 e/SGuHZ1ZExZC5Icz3jP3JI0rmhJNACzikpqh9bftepHQQW/Hqo0tdNzc8yVtSakBj
	 tgPykT61Hy0gMrV+SWgXM49n5Y+OG5ffGxBcvN1vjNpgpB4SbTl/aKBTQnT/MQzX3W
	 9L0sPmIeUL/KYFG57GRT8+FEQOCwQp1jZBOSuAnjc4HJZzKhmdWHIzzPJTFqo0Cpq5
	 G78YjsEAmxYYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACDC340B75;
	Thu, 20 Feb 2025 15:04:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46323CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B6058148E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjNcF04nOvxN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 15:04:33 +0000 (UTC)
X-Greylist: delayed 530 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Feb 2025 15:04:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C470180F84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C470180F84
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C470180F84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 735FA614BB;
 Thu, 20 Feb 2025 14:59:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 502E7C4CED1;
 Thu, 20 Feb 2025 14:59:10 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:59:08 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <20250220145908.GD1615191@kernel.org>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-7-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214085215.2846063-7-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740063552;
 bh=MMP4FPdql5WvdX7WzGJ+wFCey1YYR03dzrTF6bOjS4o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tVsIe6gLh44Er3lzRLeU7F8t7GIvXkwR8HbpyvlSBMeF6ASi3Vl5zUWAVzgnNh0LR
 j8MsM5fXaa71DGyotHPKEeKQbISsPzMIZrIdiHxj9gznqVetKT84qQ0M6ZJiXMSRTp
 xR4JAl5FQdFwyjGENu1XYev2TriOH4zFyhcsINnEoKjayIp6/6xJF14ZuOdl0TYFdW
 levFZirHbooVXRqFI9jG+S0UKT+1PGbV7XDXTtZ6ERjFsvFNIxmxkM+PZagdXo9ZhY
 hRNHXJUdCl2S43sFrfcrQIqnpi7EBUZf1llOh4gUzu1q4q/BFNXPE70rbzivAAM0Zd
 WARI+64HtNNyA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tVsIe6gL
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: enable LLDP TX
 for VFs through tc
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

On Fri, Feb 14, 2025 at 09:50:40AM +0100, Larysa Zaremba wrote:
> Only a single VSI can be in charge of sending LLDP frames, sometimes it is
> beneficial to assign this function to a VF, that is possible to do with tc
> capabilities in the switchdev mode. It requires first blocking the PF from
> sending the LLDP frames with a following command:
> 
> tc filter add dev <ifname> egress protocol lldp flower skip_sw action drop
> 
> Then it becomes possible to configure a forward rule from a VF port
> representor to uplink instead.
> 
> tc filter add dev <vf_ifname> ingress protocol lldp flower skip_sw
> action mirred egress redirect dev <ifname>
> 
> How LLDP exclusivity was done previously is LLDP traffic was blocked for a
> whole port by a single rule and PF was bypassing that. Now at least in the
> switchdev mode, every separate VSI has to have its own drop rule. Another
> complication is the fact that tc does not respect when the driver refuses
> to delete a rule, so returning an error results in a HW rule still present
> with no way to reference it through tc. This is addressed by allowing the
> PF rule to be deleted at any time, but making the VF forward rule "dormant"
> in such case, this means it is deleted from HW but stays in tc and driver's
> bookkeeping to be restored when drop rule is added back to the PF.
> 
> Implement tc configuration handling which enables the user to transmit LLDP
> packets from VF instead of PF.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

