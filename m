Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8D0A02642
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BF016075D;
	Mon,  6 Jan 2025 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5h_kZrFQBf-S; Mon,  6 Jan 2025 13:11:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0E936072E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736169108;
	bh=tCYHEirAF0oNWC1P+w1/QZYW6dW4WsVIwNrvwNJsKNQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rRX7OwTOhFBxgfIo2Cgx616c6PY+Pq96+SPi9FRr/eiLKvwO67Ddgfah6Ph+xqlCF
	 cFDe0Lx/+iL9gAzyl9vdU+LhZw+gbAP5LzyhgGoqspWnjCIHasYS7kMXcsE+5f1qre
	 0dbqVMGlPAGRD376rwpf4hqaqVS75Hqmxt4JF8l6LuC4pogiIFLtDy03oBM+IF9oHU
	 z4zpTkcm/sFH1B0uOYxR66r/bvhTMM0cLFG0xNZyQw6sKtCrEMbX4VplgdWHUoFxtv
	 Cx6ulvtV9ZnfZMDg+tFYfhE49TNokAi3AOpIjrAy2+oJZLXjtwRsLh/eguin21WsTh
	 DiotQf4XqTGLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E936072E;
	Mon,  6 Jan 2025 13:11:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EEF49F1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD20240561
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TJUFW9aMCyYm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:11:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2885640552
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2885640552
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2885640552
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:11:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BCD8CA416B9;
 Mon,  6 Jan 2025 13:09:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AB47C4CED2;
 Mon,  6 Jan 2025 13:11:41 +0000 (UTC)
Date: Mon, 6 Jan 2025 13:11:40 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106131140.GJ4068@kernel.org>
References: <20241226140923.85717-1-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226140923.85717-1-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736169104;
 bh=znXx1vBzSeFX/v04A2pBxldDMCIVvWraxlI9GGnBFS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KmYXhxuyiSPJe4a6bbV3UUgMGunnWtXC4tIWCe/N5e5UmZPXytEz69M7HDZdhoVkh
 O7JHjjLr7IKis7UTq1cG3v0faxQfuOO+5AI09mbLzjW6YBaR2OZ2FDbBBeFjn1Bk+D
 gQgZrQ3hIaadbsNwgiXLfbQ0tk8QrfByYVkbZ1ZvyhgmqqH5XU6sX/EM+cXhcoqLLX
 bEViFiXcszAyYusxnuNn4TMD+F09twpv75jRdljIL80M9teILh25cODGUKWjN+AgqY
 djxZR51HaXoiox2SAEk0DV6KY5aPPX7PGOOjbYtIiPgcV0jvN2ca5Sh48SSRYJQyH3
 niJ2TZTjWRH1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KmYXhxuy
Subject: Re: [Intel-wired-lan] [RFC net-next] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
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

On Thu, Dec 26, 2024 at 02:09:23PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The const struct ixgbevf_hv_mbx_ops was added in 2016 as part of
> commit c6d45171d706 ("ixgbevf: Support Windows hosts (Hyper-V)")
> 
> but has remained unused.
> 
> The functions it references are still referenced elsewhere.
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

