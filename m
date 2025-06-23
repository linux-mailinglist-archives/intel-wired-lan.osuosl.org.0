Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62927AE4A8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 18:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 137BF8206E;
	Mon, 23 Jun 2025 16:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FVamzwKhW1va; Mon, 23 Jun 2025 16:20:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D1C7820A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750695640;
	bh=wndlzR2olmUc9vN+a61+mXuJB5JjMBfvuK0gronPu5Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z48JvCAjuXzgQoPZMg8qNxCLqCsPanRgrE1A9LU9AsICK9eZ3NuBLjZlFq7b5bQjz
	 yyba5gvEso7b3YJAC/NSCS+FwCpEb9IXgiMV9XO/ii6sMyqeuB8/NogRYIndTlgAcz
	 6oO4babV4SmKVoAzE8gXd7bTPqIFjHBV4Ky4V2nXjHfBJAp2TkO9rXs2/N5YKh9E0R
	 P5HJ9HQfyO+ogosjkygnVYBkglRk44I93R6M510iaIWMVVGvFQ7R9BmdOenEenW+UD
	 xmPYN0+PZs491/SBb7aTT8rMCkOuN40rjQD6anpAZJYsKIj3Q0vEgVX9qh4NqmvHa4
	 VHj6st/3mqoow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D1C7820A6;
	Mon, 23 Jun 2025 16:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 61810443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47AE4401C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJqDjTh--veG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 16:20:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B83634025F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B83634025F
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B83634025F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:20:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1FB494A8F8;
 Mon, 23 Jun 2025 16:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE59C4CEEA;
 Mon, 23 Jun 2025 16:20:34 +0000 (UTC)
Date: Mon, 23 Jun 2025 17:20:32 +0100
From: Simon Horman <horms@kernel.org>
To: Jamie Bainbridge <jamie.bainbridge@gmail.com>
Message-ID: <20250623162032.GB506049@horms.kernel.org>
References: <39898c5f9a1d6172aa346ad96a831a899a58ec54.1750633468.git.jamie.bainbridge@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39898c5f9a1d6172aa346ad96a831a899a58ec54.1750633468.git.jamie.bainbridge@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750695637;
 bh=ghy4DPgcI6c8nygLNevpmDIsNbsgcFIhd8rwOHjZ4ZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TCqJVVsFGirXl78BUR1zqYsgcE3iurRB1CAvoT3bbrZITcGkwRxePpBgvwV/VTPMk
 FF+ESiGGZVMSU9ebqgpMfaMV5g1CgAU2cOGlsVrKrqQIOmZZ0ojAYcIclHNAT8fqt9
 gokBLExkwgb1ml9gblL7akCyCPkhY9zo8ZMHAtGvH6TRK5YKkWpNhLlIw41wb9s9wD
 lq80Sn0EjEojukuDF9Iy1gP0sE6C+cIvRpPmghdU6XNCpuTSyeCrJf/JxYrwdpMG80
 yJUfzRDak9p7VPgR+VfZgp73n3acVrLLYJGJLjytOl3jfaGtO8pRqZVf6YoFcek8IU
 2mt+gWm2R2wAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TCqJVVsF
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Match VF MAC deletion
 behaviour with OOT driver
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
Cc: Ivan Vecera <ivecera@redhat.com>, Brett Creeley <brett.creeley@amd.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 23, 2025 at 09:04:41AM +1000, Jamie Bainbridge wrote:
> When the PF is processing an AQ message to delete a VF's MACs from the
> MAC filter, the Linux kernel driver checks if the PF set the MAC and if
> the VF is trusted. However, the out-of-tree driver has intentionally
> removed the check for VF trust with OOT driver version 2.26.8.
> 
> This results in an undesirable behaviour difference between the OOT
> driver and the Linux driver, where if a trusted VF with a PF-set MAC
> sets itself down (which sends an AQ message to delete the VF's MAC
> filters) then the VF MAC is erased from the interface with the Linux
> kernel driver but not with the OOT driver.
> 
> This results in the VF losing its PF-set MAC which should not happen.
> 
> Change the Linux kernel driver and comment to match the OOT behaviour.
> 
> Fixes: ea2a1cfc3b201 ("i40e: Fix VF MAC filter removal")
> Signed-off-by: Jamie Bainbridge <jamie.bainbridge@gmail.com>

Hi Jamie,

I hate to be a pain but I'm wondering if we could rephrase the subject
and patch description to emphasis that this is correcting undesirable
(incorrect?) behaviour. And as a footnote, that the new behaviour matches
the OOT driver.

Correctness is what matters most from an upstream PoV.

Thanks!
