Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B102DAB852A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 13:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0086160726;
	Thu, 15 May 2025 11:46:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XcIV841ZJehH; Thu, 15 May 2025 11:46:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68ED360839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747309600;
	bh=OXAvDyZj4d07v3uk61mn4E6PY37cM7BshDqCBlEq5r0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s9NKAuiPEz8jJNOhs9/uIVaW6Wi102ZHY3g/7owcf1zeLbJSCBOZLGQ+HCSCpebrs
	 g+eW6cDn7iYHu9lY4JYotHfoa/oJvGHT3V1afg/RsvpRftWxVZxQA4nWSuHr+DhRKa
	 WsALHbpkwjkgX4619KeNBOO2OUJxdRdDuBOmGTBTTeMdUF4xArF6lcgMOCsp5uzIOc
	 iv9w0Hc1StFpTfvum6RVWTeSKL+6GhMKRrvwLU7f8QfQ+PmbfUtnJfiMjdiaeXHjRt
	 E816zD3hauWndUBX0AAZDIDLofftV7NjxtdtiPiSQ6G4AOfapBCJAwqCW4An8JWy93
	 6S2RnEB5CikIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68ED360839;
	Thu, 15 May 2025 11:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E871E153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE8B781FE6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iy6NgGQAh_sC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 11:46:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D3DC811AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D3DC811AE
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D3DC811AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 11:46:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CE5F1A4E2A1;
 Thu, 15 May 2025 11:46:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E480C4CEE7;
 Thu, 15 May 2025 11:46:34 +0000 (UTC)
Date: Thu, 15 May 2025 12:46:32 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, jacob.e.keller@intel.com,
 jbrandeburg@cloudflare.com, netdev@vger.kernel.org
Message-ID: <20250515114632.GV3339421@horms.kernel.org>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-3-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513105529.241745-3-michal.kubiak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747309596;
 bh=AP6Dp0p8NKjVUPvz2D4egauEQFFJpKeje2G/5dCJwiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MZ/JivS6nowEfo+rg1lmC3E+xZGHRpij4+9hC26bcTrSPcM8vSJYatKhOFY2tfdi1
 GKP6g1qFBwd0AsWzNDN6CtbPjsjtUw8YArtr3p+SbV3MDTI0V8YznaOO5foQU/ywz0
 YG2R/NQbnTa0+N5zNL89p6ZpPlA08+BOvO9ayvLLMQ0JG2puy5e6p/9lZ8jdG01DLl
 KCDtrgwmBEP1mA49lrdFAey8pF13Fsv+HpKFTOU2ni1A6Hp1YYl5A69bNa6p0MHJbH
 0sGcPDISsnBA2Z2K2XhAvVNa9pLNV3yF3o/rtCQYXvTptDqw5i8/Xp5GxQkGwOjtJu
 j/eWADVd1+L4Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MZ/JivS6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: create new Tx
 scheduler nodes for new queues only
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

On Tue, May 13, 2025 at 12:55:28PM +0200, Michal Kubiak wrote:
> The current implementation of the Tx scheduler tree attempts
> to create nodes for all Tx queues, ignoring the fact that some
> queues may already exist in the tree. For example, if the VSI
> already has 128 Tx queues and the user requests for 16 new queues,
> the Tx scheduler will compute the tree for 272 queues (128 existing
> queues + 144 new queues), instead of 144 queues (128 existing queues
> and 16 new queues).
> Fix that by modifying the node count calculation algorithm to skip
> the queues that already exist in the tree.
> 
> Fixes: 5513b920a4f7 ("ice: Update Tx scheduler tree for VSI multi-Tx queue support")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

