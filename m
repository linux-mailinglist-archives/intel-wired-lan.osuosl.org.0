Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FD051B66B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 05:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D7344194D;
	Thu,  5 May 2022 03:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dmh2OY_A6SQa; Thu,  5 May 2022 03:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 028E141920;
	Thu,  5 May 2022 03:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8461BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 03:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3508040223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 03:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KovYVdSPMngp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 03:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1A494010E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 03:16:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 73A4D617BE;
 Thu,  5 May 2022 03:16:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B490C385AC;
 Thu,  5 May 2022 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651720593;
 bh=EUd+FQNjVhYPHngnfqRNiGUw9qP+rE/n5F5xlcFB4Ak=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=osKma1W+URS/BXiFLBUBrRLnfzM0rDplolvKg/BjR0bm3FHE5uE+C2NU708HyQ89F
 CUBMXtrBVEFTjucpC/AcE9N5QZD/rh2rdkLHVGk1nmdA00hBYPtc0YVPQLpGlxuWxW
 URodyeuI0ii3rwQ9mY/rrbZFZpr0IR5QHL9+1aPbae/Nc95nCjEQ+xEGAUmIkHs+NU
 KyGuFyN3bS91qsRcJVr6RbnCwEOCKezOJhdogyy9UZjTJ8aH+HboHARRWS9KMgJMRv
 qrn59pYhUlQ/5DWID99rUS7REILjpq0l+CWu5/Ko3C7/+oxBNC3AnRyGqzyGcEIsvk
 ndS1OFXM1iydg==
Date: Wed, 4 May 2022 20:16:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maximilian Heyne <mheyne@amazon.de>
Message-ID: <20220504201632.2a41a3b9@kernel.org>
In-Reply-To: <20220503150017.16148-1-mheyne@amazon.de>
References: <20220503150017.16148-1-mheyne@amazon.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers,
 ixgbe: show VF statistics
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 3 May 2022 15:00:17 +0000 Maximilian Heyne wrote:
> +		for (i = 0; i < adapter->num_vfs; i++) {
> +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
> +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
> +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
> +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
> +			ethtool_sprintf(&p, "VF %u MC Packets", i);
> +		}

Please drop the ethtool stats. We've been trying to avoid duplicating
the same stats in ethtool and iproute2 for a while now.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
