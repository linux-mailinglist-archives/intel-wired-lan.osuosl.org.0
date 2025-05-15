Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 639ABAB852D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 13:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DA9540630;
	Thu, 15 May 2025 11:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I5QH5prvU_AK; Thu, 15 May 2025 11:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A5C44055A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747309611;
	bh=3t8AVsvUFFxY362jwv8uM+rFUxwTs0dmvxCxlUfsoOc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FiKDhe99o2EqGgy99sVopi6ciyDd5dCuUkTMOPE/SpFnZdmx1U5uTWCuANItQjAa6
	 UMfFDyiv+YPMQRhPPfePNu5hzOQxWNJgBcNal9o9p4daLkeWLMZjh7yVcCPah7MK0N
	 tbOQr8+0Mt4zAEopRKtn6ZHreATxD77H/hCs30gM5daaH4pZtsSkyj773GYsmgvW9v
	 wAeNZAcFQpAoUj4SN4dvqe3Rs2qEDOh+QhYv3NdCnNjc2L0bkimy2HceOcHKkCj6ng
	 aEI6dLS8zC/wQ/INhCcj0FC/U7qyri2exNQ99RLjyjTZ5W6PXIWGLGoXQH5qUA33uU
	 /5ySu6dBb49yA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A5C44055A;
	Thu, 15 May 2025 11:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75672119
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66F1E80D75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rw073WL8LPeK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 11:46:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CDFDF80DEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDFDF80DEA
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDFDF80DEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D4FE8A4E2D7;
 Thu, 15 May 2025 11:46:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB4AFC4CEE7;
 Thu, 15 May 2025 11:46:46 +0000 (UTC)
Date: Thu, 15 May 2025 12:46:44 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, jacob.e.keller@intel.com,
 jbrandeburg@cloudflare.com, netdev@vger.kernel.org
Message-ID: <20250515114644.GW3339421@horms.kernel.org>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-4-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513105529.241745-4-michal.kubiak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747309608;
 bh=vxJ1lJpDsokpa+3eqqj8W/hw7hRFfKPXaUCS5sNBDaw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S5GJrYui6Neqip2Tdi88KT8vqKUr/aOlX5Mr8fasyFqNbjETDWUYwIOA7LxlACcRU
 XprmjGC7X7/CLN/CjPZhoUce8NSMNl/ef9cqoVju34XMiYNOOTMCbI1Wh4aS7DF9WO
 Fxm98Kt9cBE1VsTJ515XLRwTgq69KlZTOW6JwYSRqgjPjD6wg3NdePNGnTHoECTROV
 aLkV4x/GAb2RPDve7E+bA/Py0uIRCw0ddS7sv4DhkDwTlXn1Mw6n5hHu8gcrXMOLyA
 1fBs1VOzPa1tkPYCeNurRTVf1yqTTkth9t/ydkcsuWb9vciKZ1gaxT8bOOm8A/532+
 CM/Klz9/j7nGA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S5GJrYui
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: fix rebuilding
 the Tx scheduler tree for large queue counts
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

On Tue, May 13, 2025 at 12:55:29PM +0200, Michal Kubiak wrote:
> The current implementation of the Tx scheduler allows the tree to be
> rebuilt as the user adds more Tx queues to the VSI. In such a case,
> additional child nodes are added to the tree to support the new number
> of queues.
> Unfortunately, this algorithm does not take into account that the limit
> of the VSI support node may be exceeded, so an additional node in the
> VSI layer may be required to handle all the requested queues.
> 
> Such a scenario occurs when adding XDP Tx queues on machines with many
> CPUs. Although the driver still respects the queue limit returned by
> the FW, the Tx scheduler was unable to add those queues to its tree
> and returned one of the errors below.
> 
> Such a scenario occurs when adding XDP Tx queues on machines with many
> CPUs (e.g. at least 321 CPUs, if there is already 128 Tx/Rx queue pairs).
> Although the driver still respects the queue limit returned by the FW,
> the Tx scheduler was unable to add those queues to its tree and returned
> the following errors:
> 
>      Failed VSI LAN queue config for XDP, error: -5
> or:
>      Failed to set LAN Tx queue context, error: -22
> 
> Fix this problem by extending the tree rebuild algorithm to check if the
> current VSI node can support the requested number of queues. If it
> cannot, create as many additional VSI support nodes as necessary to
> handle all the required Tx queues. Symmetrically, adjust the VSI node
> removal algorithm to remove all nodes associated with the given VSI.
> Also, make the search for the next free VSI node more restrictive. That is,
> add queue group nodes only to the VSI support nodes that have a matching
> VSI handle.
> Finally, fix the comment describing the tree update algorithm to better
> reflect the current scenario.
> 
> Fixes: b0153fdd7e8a ("ice: update VSI config dynamically")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

