Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E672A8306E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 21:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0F6B81F67;
	Wed,  9 Apr 2025 19:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOmnzK3iRirz; Wed,  9 Apr 2025 19:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57C2881F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744226607;
	bh=Thi7zDIqcmX2haI5U5e4xl9mNP55VPbrQvjyJydniiA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ak4ZdZJiBmPznT/xJzPWKm1TRx1NmclJ/+CjlFE8ddP8ziNgTXzdxCe+mF6056/Ra
	 kWF3YT+Tdd5OtXQEKGXVn3RyPszzINJukFhBV9h5rl7jFx5uRiAZbKcMXO7x3p7pcc
	 ovjVx/x7c2+aF+tFym2y8MVX+6wRt99L2cVPJ1zPfgAO2En+xL8gBpndA+2sdlrXQ4
	 H4eV9EL5LDUGzlr2m67XJLqxP1WgA/tkKuz1qgYo7/YdQ5MVWti5V1NpbwGv2vS8Cw
	 kpNFSlJ+yIMmwuNfHTMdtLivkbqI8ntVjdA6QZ5/bxx3+xJT2RAyK+ut1KF+SXP4vL
	 3wFd/KbVXPtQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57C2881F91;
	Wed,  9 Apr 2025 19:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B23F9201
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 19:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3844811A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 19:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aactFs_JQLCE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 19:23:25 +0000 (UTC)
X-Greylist: delayed 539 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Apr 2025 19:23:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED11181779
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED11181779
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED11181779
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 19:23:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0591D61127;
 Wed,  9 Apr 2025 19:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3BEC4CEE2;
 Wed,  9 Apr 2025 19:14:22 +0000 (UTC)
Date: Wed, 9 Apr 2025 20:14:20 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 Michal Swiatkowski <michal.swiatkowski@intel.com>
Message-ID: <20250409191420.GR395307@horms.kernel.org>
References: <20250321151357.28540-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321151357.28540-1-michal.kubiak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744226063;
 bh=mkegaqk9Qgo7XWvZ8uMZPxdjYbkUplu8dX1c47OLdFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eqsJAkDcbHZUev17YYh5zyDaybb0eJ9DEaogTyAQyMBieBlb3IgCynp5uY7pMelbQ
 EPodJmkLaB0FMW/sx0bJv4gWpTUHRCrGT2MUkoYZWNWpp5aLHiWY4sULH1YHRM78sI
 T0BD3Kq92WHo+Z6rF+HiZWapka4RDTyr2UzRb+9eCxSWbYDeD4OKoxTG7z0/WWXpJ1
 Upb4BjF+6JQDynYZ72WNtcnfzV3CKQl9TckbaqAUX8PTTLS7oDpMi83I7znmhf50vK
 ecYytzpM/OCQ10nfK/7cUzxMB6qEpdCsL9jUHuaG3mpOSnBICVaZv47Dr/DQEdQCpV
 XmqwKze6JIy0g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eqsJAkDc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add a separate Rx
 handler for flow director commands
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

On Fri, Mar 21, 2025 at 04:13:57PM +0100, Michal Kubiak wrote:
> The "ice" driver implementation uses the control VSI to handle
> the flow director configuration for PFs and VFs.
> 
> Unfortunately, although a separate VSI type was created to handle flow
> director queues, the Rx queue handler was shared between the flow
> director and a standard NAPI Rx handler.
> 
> Such a design approach was not very flexible. First, it mixed hotpath
> and slowpath code, blocking their further optimization. It also created
> a huge overkill for the flow director command processing, which is
> descriptor-based only, so there is no need to allocate Rx data buffers.
> 
> For the above reasons, implement a separate Rx handler for the control
> VSI. Also, remove from the NAPI handler the code dedicated to
> configuring the flow director rules on VFs.
> Do not allocate Rx data buffers to the flow director queues because
> their processing is descriptor-based only.
> Finally, allow Rx data queues to be allocated only for VSIs that have
> netdev assigned to them.
> 
> This handler splitting approach is the first step in converting the
> driver to use the Page Pool (which can only be used for data queues).
> 
> Test hints:
>   1. Create a VF for any PF managed by the ice driver.
>   2. In a loop, add and delete flow director rules for the VF, e.g.:
> 
>        for i in {1..128}; do
>            q=$(( i % 16 ))
>            ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
>        done
> 
>        for i in {0..127}; do
>            ethtool -N ens802f0v0 delete "$i"
>        done
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

