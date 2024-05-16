Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004258C72C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:27:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A94041C55;
	Thu, 16 May 2024 08:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LInINZM8nK8M; Thu, 16 May 2024 08:27:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 082AF4092B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715848067;
	bh=+3U4xUApSYgddyfwELO5jrGeTunG7x8fJn6ivijjQlo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ohu+X5SaPNNyBZ0hl2XEmSc5L6Y2Ar1oIOn6W8uBaIqdKw1QXblZT4dTczYXgxUyo
	 sHKv8cQOscADsvfgq695iMbWjxVhCXmza1kMu8QGByB8/bK7mDTBixUbLOrhSgD4uw
	 fW2GVN18JQNsTA4UIdPYSY68jo84arsQkE62BIZG3LoRdc1qvJ+crNLw3LuLTJnuNj
	 BRCeTtaHa8/ydaT5Ask/gu81+WfZKUaruGXi6VS05TT/kTZJ0Up4fOrivcxRIf1sbo
	 1uUlC+jbLr7PLSXAQ2ACiYMdYm4kVW94087iwgv/zxcPBh2pRFQr+wYPSAOvRFKywq
	 MEcbvjGrTtXiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 082AF4092B;
	Thu, 16 May 2024 08:27:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C46B41BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACF4740795
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_r_YMFcaux9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:27:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1AEB540794
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AEB540794
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1AEB540794
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 085BC615F4;
 Thu, 16 May 2024 08:27:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40375C32789;
 Thu, 16 May 2024 08:27:36 +0000 (UTC)
Date: Thu, 16 May 2024 09:27:33 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240516082733.GD179178@kernel.org>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
 <20240515160246.5181-3-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515160246.5181-3-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715848059;
 bh=9LRNAuur+huZKRDmejnPug6GuKAfA0xgXvFKeLB4wLo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mU5Wpl8fCqZC6kZltsIgQeTYGjz4QB/WYbrXvz7R/+YdO0nxnKnRx2KdNJnYxLCs0
 zCLxREkNgG/FkZ1VQ84uTCOBuPLL0tGIH5PADs083gnXzlTc/MQKYaT9nyzs/iLGeY
 i0OiRL7ef/29o/JLkpJxgFJak0dQpyhCVpXjaDyNEyJebiTFeHVBSIHzt9tZAR71CC
 KQAithRyMZ+Qza+XemZzid9Is1m3GSkn2/8cpzwnuY9yxQbxH9O39ABXJ+S/a7vgQp
 W1iLGegicc2MvRaHMRaGhRkRTRUw24wzkArSJLTSR/4CcB8m/BboT57kW3qAty8UNi
 mavlwMDJmJAMQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mU5Wpl8f
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: add flag to
 distinguish reset from .ndo_bpf in XDP rings config
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Magnus Karlsson <magnus.karlsson@gmail.com>, igor.bagnucki@intel.com,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 15, 2024 at 06:02:15PM +0200, Larysa Zaremba wrote:
> Commit 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> has placed ice_vsi_free_q_vectors() after ice_destroy_xdp_rings() in
> the rebuild process. The behaviour of the XDP rings config functions is
> context-dependent, so the change of order has led to
> ice_destroy_xdp_rings() doing additional work and removing XDP prog, when
> it was supposed to be preserved.
> 
> Also, dependency on the PF state reset flags creates an additional,
> fortunately less common problem:
> 
> * PFR is requested e.g. by tx_timeout handler
> * .ndo_bpf() is asked to delete the program, calls ice_destroy_xdp_rings(),
>   but reset flag is set, so rings are destroyed without deleting the
>   program
> * ice_vsi_rebuild tries to delete non-existent XDP rings, because the
>   program is still on the VSI
> * system crashes
> 
> With a similar race, when requested to attach a program,
> ice_prepare_xdp_rings() can actually skip setting the program in the VSI
> and nevertheless report success.
> 
> Instead of reverting to the old order of function calls, add an enum
> argument to both ice_prepare_xdp_rings() and ice_destroy_xdp_rings() in
> order to distinguish between calls from rebuild and .ndo_bpf().
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

