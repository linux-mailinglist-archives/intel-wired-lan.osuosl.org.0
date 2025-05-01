Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FCAAA5F84
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 15:51:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11CF5411C8;
	Thu,  1 May 2025 13:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JGaizSVKG5LL; Thu,  1 May 2025 13:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 757F3411EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746107513;
	bh=9uSfrKAOGl3lIWu236NHrP58hPNF6fscC8fGf8ZECKs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yLf9lusEcRCwEl26nfXStZz83huU4io9UTFgFrSqwYYP7s5oG0D9rMPWQd0eKfAky
	 pIuKhF04vVPHe/IvB6ytr3TBUR2F5RfrX/LtRQAoRD2lgmCN2+xMqzWTezXYoUJEx3
	 /EX0HhvM9Dqv+ZtwtYWnU/bWU4rpR7VeUzJM0NHm2xleVdeTW8jeH+mnGgPh94FXst
	 B4piPsJ8P2eTlt3GMyegWjEYUr+fQYfctR+I2i2NvV3leIj2XTVri4EhmOoxNST+5D
	 gpzhzluT0k+M1hs8PIcnsIhT5XY4XE3jQkKeaxuDL+Ub1zB/hoN01YFdSM+4pgnStS
	 pIGYR6weaeNdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 757F3411EB;
	Thu,  1 May 2025 13:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A559B22D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A253460E49
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lDqHN1I7fphl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 13:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 168DE60F9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 168DE60F9D
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 168DE60F9D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 53137A4B3C5;
 Thu,  1 May 2025 13:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B1CC4CEE3;
 Thu,  1 May 2025 13:51:48 +0000 (UTC)
Date: Thu, 1 May 2025 14:51:46 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev <netdev@vger.kernel.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250501135146.GZ3339421@horms.kernel.org>
References: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
 <20250430-jk-hash-ena-refactor-v1-1-8310a4785472@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-jk-hash-ena-refactor-v1-1-8310a4785472@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746107509;
 bh=DauXlMprmjXi7hubPObRIntEj9+slT7KeJ2HYpLM2uc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jdE2UzFGlsYU/wbzyVGHiEW9fEWlbLK758A1uVOmfq6pPmQ99km27+xgB6pWTAXpr
 NQQM3xqmaMC1waO+xM9Sb0jESFwhMnqaKGS1Ma9oAsG3+crnZ97biOGybUMw3hexhI
 rx82YUVrcwk83dDKzrjzBGn5+Cb+CImLKIjxs+QzvrZ7U5qNNeclQ4DWDpYABbcfDw
 PiWbjkuAdp/aA2CdKub6wvPpp0xh9G7cIr5RUhGPjB4HD1bQc7sp1/LjZOj7vK3jTH
 iIKTNVXhlSTZUuzjpnxZfSpvKsl71wvvM0XXnRQRriPil8COURCbrVVuHhMEar/hMe
 b8vITCBktpEJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jdE2UzFG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] net: intel: rename
 'hena' to 'hashcfg' for clarity
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

On Wed, Apr 30, 2025 at 10:11:52AM -0700, Jacob Keller wrote:
> i40e, ice, and iAVF all use 'hena' as a shorthand for the "hash enable"
> configuration. This comes originally from the X710 datasheet 'xxQF_HENA'
> registers. In the context of the registers the meaning is fairly clear.
> 
> However, on its own, hena is a weird name that can be more difficult to
> understand. This is especially true in ice. The E810 hardware doesn't even
> have registers with HENA in the name.
> 
> Replace the shorthand 'hena' with 'hashcfg'. This makes it clear the
> variables deal with the Hash configuration, not just a single boolean
> on/off for all hashing.
> 
> Do not update the register names. These come directly from the datasheet
> for X710 and X722, and it is more important that the names can be searched.
> 
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

