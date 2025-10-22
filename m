Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F6BFC975
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 16:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 876B840A58;
	Wed, 22 Oct 2025 14:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LwK4-q0-21_d; Wed, 22 Oct 2025 14:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BE0840A20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761143924;
	bh=/coiQbSe12Q5krk1URbQ26p769UEH0Xgzk14Hhsx2zs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eQyGIB+dBjx5ooPa/gQCz4gC2fa4QbAwTNbZOtr2sFSWpU4cfloWlizZwvIwlIxd5
	 BhpGmG3xLuy/0PAAtyvppzdj+6DEAqxaIDBfhn8J2DdGFbKNxXAVYtWAMgQfCiWYtY
	 IA5KMEF0Ah3ZNtRtQA3s6a5P3DPn4g+AxGYQkWZh7rcMwdWN/Ph+nEYy+pUM7+oLad
	 wNAZaGF/t6SG6H/pOeeF5O87FJImF9aBuOemUs30TlJv5v3RKJNdSu+gy6m29MEAgO
	 VNyGK4+Ph6f9imiXipgqDMYpKhKnq4v1nAr5gSs85ccSdU+ydiZgTv9gLuARddklbw
	 51CR3I066OYLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BE0840A20;
	Wed, 22 Oct 2025 14:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BAD3970A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC1F383626
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pMKRlYLX8Qre for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 14:38:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BFA283265
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BFA283265
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BFA283265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:38:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6448860209;
 Wed, 22 Oct 2025 14:38:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EABF9C4CEE7;
 Wed, 22 Oct 2025 14:38:37 +0000 (UTC)
Date: Wed, 22 Oct 2025 15:38:36 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
Message-ID: <aPjsbGYDtohQaAy7@horms.kernel.org>
References: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761143920;
 bh=5OLoP/JafLChQU6zqWjThxLWCd9/hPsGnsvrMaiR+CA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P+h/Ls+RjFImMpD83TtltRkQ6BrDJ/DcEnv8tD0j6ZZo7s06PmTY/gCZtQTzepef+
 YwUzY/7FslYtyZ8PII1aamj7oujylD7o7GX1U2s6VKWSot+Oqpf0qLGwcFpKth608J
 6dCAABdcDK6E3ksU/9cTrLdwM12GFpVMzz7Y/qn4P+rOEDwGr/SPhPl0oeitGMG4XA
 WeWEakHkh8mim9F0Km7cnAJCaRDUzpIzgbp7OK5+1SHuIyO1vTR6cUvFeRmA5GRV+U
 D4wZG+tNlQVIni1DjWxYwdxgKLljKoUurUyNy8+R8T2Jwyg1jll+tK/yDYbv8IZoIM
 9XWDyFmwtxUZA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=P+h/Ls+R
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] idpf: correct queue
 index in Rx allocation error messages
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

On Tue, Oct 21, 2025 at 11:40:54AM -0700, Alok Tiwari wrote:
> The error messages in idpf_rx_desc_alloc_all() used the group index i
> when reporting memory allocation failures for individual Rx and Rx buffer
> queues. The correct index to report is j, which represents the specific
> queue within the group.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...
