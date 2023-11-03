Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CB67E0734
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Nov 2023 18:09:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43D9741BEC;
	Fri,  3 Nov 2023 17:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D9741BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699031385;
	bh=U8hUuNLR4IHdnbeF6t01PiwtZ473eXg2/rFgcR/z/1Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RvAcehlluuR6uKfNsh2pKhf8YvtC4zU926eGFZhnOO7Jnnflpt0/dxAdNYmlzwTKZ
	 bjp2TRcBUT6mv8kKfn8pdNBf3Sza9+cu2N+oU+YiZQ8Z6osSWMtkMohbNIch0ZKR+g
	 bcabWyHzsq2lGaqlc4RzKadIVDQMnF3izZ2OmmmbQMHpIGj2Y83cr4I6nr9+ZCOTCg
	 iQ65C5oGE2FJLGjdJQnihDGjc9+LFYI3ETzdYbJ8yikSuMvPcjBKBMCqK/kPhDcLEA
	 AV0ugj1ONlAYTSSEcABYs2d5FmZZHnBLT89Mu9p57z0ahKNLT6+vX6ckiP9UOYDJvY
	 4Sbx+SHU5/9iA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5u-iLFVwRPn0; Fri,  3 Nov 2023 17:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3470A41BD4;
	Fri,  3 Nov 2023 17:09:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3470A41BD4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D97B1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 17:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D973660A87
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 17:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D973660A87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flPy_UGaGxJ4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 17:09:38 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18C6A60A81
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 17:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18C6A60A81
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 3A6DEB81FA2;
 Fri,  3 Nov 2023 17:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4560C433C8;
 Fri,  3 Nov 2023 17:09:30 +0000 (UTC)
Date: Fri, 3 Nov 2023 17:09:28 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231103170928.GD714036@kernel.org>
References: <20231026083932.2623631-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231026083932.2623631-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699031373;
 bh=sq3L5gUrO9wxalfWm5HOiwIfw0lC8DkpESy25Odx+hE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tkhmF8t+hdszhtvZFdcxIUCkZguAyqoHMDR2jOPEL+5Ked3zu9OKkuNyiwqVLy/zr
 fdB95qyMygnaWOzw5t9vbfRhjzYrKSYi0JNsxd4zmLq+FPUmFeRWegt7XPiFDEx7GV
 nPHRTjDtBEdyok9/nLUpZjzEpOVgRY7Tw1o/izNpDfFzPrsq23Y+FKgxPNH/UktSUJ
 /CtAipVpNhDWss8cxTM8wD9nSarGpkH8RRjHX+MX5ID9pKEz0AtOrbGxFD5OcFW72x
 QoCRp1XTBISxXF0s+oDYMZF6LmxK1aygn1ecLzoFztXYt4+2ERqi6gg3p4tv4H1DhN
 ZWAFlbJpccrZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tkhmF8t+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: Remove queue tracking
 fields from iavf_adminq_ring
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 10:39:32AM +0200, Ivan Vecera wrote:
> Fields 'head', 'tail', 'len', 'bah' and 'bal' in iavf_adminq_ring
> are used to store register offsets. These offsets are initialized
> and remains constant so there is no need to store them in the
> iavf_adminq_ring structure.
> 
> Remove these fields from iavf_adminq_ring and use register offset
> constants instead. Remove iavf_adminq_init_regs() that originally
> stores these constants into these fields.
> 
> Finally improve iavf_check_asq_alive() that assumes that
> non-zero value of hw->aq.asq.len indicates fully initialized
> AdminQ send queue. Replace it by check for non-zero value
> of field hw->aq.asq.count that is non-zero when the sending
> queue is initialized and is zeroed during shutdown of
> the queue.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks, this is a nice cleanup.

Reviewed-by: Simon Horman <horms@kernel.org>

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
