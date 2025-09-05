Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1F6B4579C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 14:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B61C040C45;
	Fri,  5 Sep 2025 12:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z1dovK99nCEI; Fri,  5 Sep 2025 12:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B69440AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757074966;
	bh=oOPw9vOcSGUEXa2DyzLqTmniom/cTqjWeocxyQYN50g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tKVF1BUlqEQ02CC8nHytUoLnS7o39XZ1gax84KaFr8m9StFiLf4o3pFzM8+dP71yU
	 lCaSYaGMocvalmZ/RMvjrkUGdDqJTyN1Mp0pzWB7xDqBOhUDQFlCvbQ8x0JT3nN7d9
	 RSbyFgmcfa+4cPHD9QJgoW/DIzcGQU6pBU+MQRUL2SXi+zs2sBp0E9ARg9GD5clMzO
	 55Jy7BfvQ0cf3mIAeeSqrcWHIU+yKSrZ3rh4f3hW/IryhQ3ORs23s7bgqng0HNTKIJ
	 ZVdhgwyvlhFUbnnFawQgz2N0RpLLnXncq3C7dgrGGILqaqk1i+iU/JNzmd95yOnbRS
	 weYMu6tijVbPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B69440AAD;
	Fri,  5 Sep 2025 12:22:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 369DE1E04
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 284F8405F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SpP454gQbJ9m for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 12:22:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D010405E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D010405E4
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D010405E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:22:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6E67360280;
 Fri,  5 Sep 2025 12:22:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C858C4CEF1;
 Fri,  5 Sep 2025 12:22:40 +0000 (UTC)
Date: Fri, 5 Sep 2025 13:22:38 +0100
From: Simon Horman <horms@kernel.org>
To: mheib@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 jiri@resnulli.us, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <20250905122238.GA553991@horms.kernel.org>
References: <20250903214305.57724-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903214305.57724-1-mheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757074962;
 bh=/mm/vrMlSexYGeq/0pE3zP6vvAMX18pTZ5LKa/xIF1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nyEWSaDEluAd4Ot+nHPqlV2zu8xDWh1Inrht4eb2A1cQs7ff5Cd/sO+fdEuX8pPWx
 BAnJuYEHv+rncK7YEwsbAEsCSZ8cenb/lxgEJHzpKKgIAqVj2wNvbkwMxcjdvBm5Ob
 B7JvnI+cTrr6ScmCjF8ZGqeFurOzIoBnu6AlfXy9deE99uVBjto3leUg38wu2ZiSBl
 74mB10R9rrjmrnJ8OZdVvLctDLjfs+8k2IVmYM0Vt64YuCdhaGC0gAm7wmvYn+eV32
 ZeULtUqllzNrXnLXElWVloCuz/KK/WUgHysE6cebgKiJn6dqWh7wHVDG1n/x4+pb0t
 aCtMEdZ9nobaw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nyEWSaDE
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

On Thu, Sep 04, 2025 at 12:43:04AM +0300, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
> 
> Add a new device generic parameter to controls the maximum
> number of MAC filters allowed per VF.
> 
> For example, to limit a VF to 3 MAC addresses:
>  $ devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>         value 3 \
>         cmode runtime
> 
> Signed-off-by: Mohammad Heib <mheib@redhat.com>

Overall this looks good to me, thanks.

Reviewed-by: Simon Horman <horms@kernel.org>

One point: This patch-set applies cleanly to iwl but not net-next.
If it is to be picked up by Tony and go via the iwl tree, then all good
on my side. But if it is targeted at net-next then you'll need to
rebase and repost.

...
