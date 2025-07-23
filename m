Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F576B0F68C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 17:08:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9F9C40826;
	Wed, 23 Jul 2025 15:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gh0CHF8GKAFu; Wed, 23 Jul 2025 15:08:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEA5540843
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753283324;
	bh=ZKbZ8cnQOOtrgfGFkg29kEiIrGzXYKMrp4uzCCBKFmk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OQ/xoAnZ0j8C221e59NZAYd0XSHY4W0omRZd0BnoiqtisM+DUxEdd+BeUVcNAlQfQ
	 kF7NxWRpiv7bjE0rtRjToCqxHY6aVucAab49RZb+BFPkD9hujOMRCHZOk8HfvlwQdp
	 5s8ZspH39H5/5DX2nhdRgU1g6fdfZBEkpi5vVcFqjgD8vCSyuNOiSHmJ6K7nHnXmGM
	 gQmgc/YryCvkc/4MYo5X97S5lFUsbZpCXthdKxsAFohHdbvVqKAwdHa3RYYsSkxgqJ
	 5l26QUg1MYIlzH/OattUO0mfIDvhgGqE7u3OVyEU0LqKuSDUT9v03vuWu0PHNl5SlD
	 RaWJx0fCADVJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEA5540843;
	Wed, 23 Jul 2025 15:08:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C735DCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 15:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8F9360E5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 15:08:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q1RHnbcxYsfy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 15:08:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 92D9B60E58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D9B60E58
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92D9B60E58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 15:08:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id EA016601D1;
 Wed, 23 Jul 2025 15:08:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C75B0C4CEE7;
 Wed, 23 Jul 2025 15:08:38 +0000 (UTC)
Date: Wed, 23 Jul 2025 16:08:35 +0100
From: Simon Horman <horms@kernel.org>
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250723150835.GF1036606@horms.kernel.org>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718002150.2724409-1-joshua.a.hay@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753283319;
 bh=6ac3yCnZRiKybVgrw6uQZVIG3hlH9OMCgFZI/ldwaNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pCcuC1j4/HvMAX6yDgfCynzSqRMJKiz6BFuNsLjc4qnyCMxvg59LqbpoKMD4FFxoe
 Aah0Xn5Q3OO0fstFULQZANvHkTSSLTXmWkJnsv2Ipz5ZUyVWd4JYI0tzdi6iH4wzNF
 2oxLvqVobo73qklxtrhDb8rajRKlXJjD4KX9ZT3gptbG9PQpHx5ANNnX0ldmD1OKvX
 BTyINyWt8LLZQsJFJqSmKCY1fIyVBEzUH++/W4clUsc87UQN/28sc84ScqM8meLwQR
 7H82UuRfdO3gmvW0751Hm1RnzzpjR9kz1nx5SqjcU6FJDVhdevS4YFGYm44nEaJYlg
 W2uslGEdGJZVg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pCcuC1j4
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
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

On Thu, Jul 17, 2025 at 05:21:44PM -0700, Joshua Hay wrote:
> This series fixes a stability issue in the flow scheduling Tx send/clean
> path that results in a Tx timeout.
> 
> The existing guardrails in the Tx path were not sufficient to prevent
> the driver from reusing completion tags that were still in flight (held
> by the HW).  This collision would cause the driver to erroneously clean
> the wrong packet thus leaving the descriptor ring in a bad state.
> 
> The main point of this refactor is to replace the flow scheduling buffer
> ring with a large pool/array of buffers.  The completion tag then simply
> is the index into this array.  The driver tracks the free tags and pulls
> the next free one from a refillq.  The cleaning routines simply use the
> completion tag from the completion descriptor to index into the array to
> quickly find the buffers to clean.
> 
> All of the code to support the refactor is added first to ensure traffic
> still passes with each patch.  The final patch then removes all of the
> obsolete stashing code.
> 
> ---
> v2:
> - Add a new patch "idpf: simplify and fix splitq Tx packet rollback
>   error path" that fixes a bug in the error path. It also sets up
>   changes in patch 4 that are necessary to prevent a crash when a packet
>   rollback occurs using the buffer pool.
> 
> v1:
> https://lore.kernel.org/intel-wired-lan/c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de/T/#maf9f464c598951ee860e5dd24ef8a451a488c5a0
> 
> Joshua Hay (6):
>   idpf: add support for Tx refillqs in flow scheduling mode
>   idpf: improve when to set RE bit logic
>   idpf: simplify and fix splitq Tx packet rollback error path
>   idpf: replace flow scheduling buffer ring with buffer pool
>   idpf: stop Tx if there are insufficient buffer resources
>   idpf: remove obsolete stashing code
> 
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  61 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 723 +++++++-----------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  87 +--
>  3 files changed, 356 insertions(+), 515 deletions(-)

Hi Joshua, all,

Perhaps it is not followed much anymore, but at least according to [1]
patches for stable should not be more than 100 lines, with context.

This patch-set is an order of magnitude larger.
Can something be done to create a more minimal fix?

[1] https://docs.kernel.org/process/stable-kernel-rules.html#stable-kernel-rules
