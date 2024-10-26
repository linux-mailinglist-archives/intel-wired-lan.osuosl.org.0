Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 056C39B1943
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 17:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAEBC6062C;
	Sat, 26 Oct 2024 15:38:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dkZaUfdXoa-Y; Sat, 26 Oct 2024 15:38:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DBCE605DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729957101;
	bh=Lhv8zOozUzECyBqHYrdrDM0YBrvFUiG1KCPIuMa45NM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=95eyoS6uWEp3gJHjdu1SVfr9JGLi3yAOhSZpukp2D2E+9VVZ1BrMSi4E/J05Bc8ZP
	 2hqtEOgCI6PPYXTvOW7iqrdqAhkiBtDsC5VJV9EGxkX1a1SSsOyUEpod5TVNmAbpe0
	 /vLg2iUtkK/bdi6aGoViF4Pnk+lEtY6nfdLsGnbtShY/PFSbQ8R67OGywNLG57H/ZX
	 e49vOZwjKgZ4GzWDeDoIHPbsxGqRXR5Iy1GrtzbejH9IQIRiAWAu3PUwcRwhpEhVd8
	 L1jCMP+rJ8B5dg7ByhegA1rOA0V4wEIb8AthtsKcenrRQASxBVFu56Y+zk9hks9MW2
	 j67otz8hE0eXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DBCE605DB;
	Sat, 26 Oct 2024 15:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93F915C1E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74EDF406D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6iZHsKk7KuVV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 15:38:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89BEA40356
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89BEA40356
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89BEA40356
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 27D72A40B28;
 Sat, 26 Oct 2024 15:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24343C4CEC6;
 Sat, 26 Oct 2024 15:38:11 +0000 (UTC)
Date: Sat, 26 Oct 2024 16:38:10 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <20241026153810.GN1507976@kernel.org>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241026041249.1267664-5-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026041249.1267664-5-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729957096;
 bh=WoFOQrFDbt2BycOyxn0Rx5XH/N5keHBSRn4+P/slL3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kZialk5IA7F8jwSiHW3amfsbfcZQEOLS3YLnu3MDowfEfxUfJYvx4ybNKAOJAgNkp
 StTtJ7ELKCJlvZxR+7fzw1/UMbAOEGoEtDPOtJbSnGfH+X7J3/tAFUkDp+XuMPgmIK
 Dw20FZCCTOG0b/yUqmA10j/RHIZr3qj5Ig529JpVChUtrhmVT4Q+Hs+/hxwGSX1nYc
 NrdAc6L1y6LI9nn/UFAQsfteG9zM+hZ854RQo/OiI65c1C5kd6JkN8I04gC9JItjJp
 ZRAI6DiKkQ3XffMQTakCBtsW8eyjwVSnXoODEVH8WQkb+0d9SsHCmFqcpOxSebqi0R
 FfaWzy5qtYUig==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kZialk5I
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 4/4] ixgbevf: Fix passing
 0 to ERR_PTR in ixgbevf_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 jithu.joseph@intel.com, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 26, 2024 at 12:12:49PM +0800, Yue Haibing wrote:
> ixgbevf_run_xdp() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> ixgbevf_clean_rx_irq(). Remove this error pointer handing instead use
> plain int return value.
> 
> Fixes: c7aec59657b6 ("ixgbevf: Add XDP support for pass and drop actions")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

