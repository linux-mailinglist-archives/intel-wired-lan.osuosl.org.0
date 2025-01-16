Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 157BAA141BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 19:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D790417CC;
	Thu, 16 Jan 2025 18:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e1qWeRmRNZdS; Thu, 16 Jan 2025 18:30:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8958D41745
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737052207;
	bh=MqqCKdn6g6UfESQLbTSudjVMsSSLbiKYHrv2/ET05H0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KYYYQFQfDODdDiILMP72q4rBhdhHuqZUHt40mAR/vBMxUb5BeoaTn5KHrkkHZH5oo
	 0QQGmn0eWpcEbxBYDDGG7v7w2IedxAMOCzkJw96ObFzDdYsQ5wGcpvx+N5NLFM7aeD
	 /UuTom/Ima9n4DUbesyhEyJ8B3dAcwbWeKJzZe4fYUo/xWtHF95cXnXn45l6Yxq3+k
	 ezLQDoDDZe51PyWhQ46KjRO8iCqWcxTuifAxDhWr3XNQ8jbXbyVaqT++JBMHA1Zo+T
	 KGxlzKJ+bYsiwA7eGz+vDsBmybdYbH5Rtml+cB3aDFKj8dTtMHlH04bEqYBj9xGbK2
	 I0E1Ejw7sYtTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8958D41745;
	Thu, 16 Jan 2025 18:30:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B13D0B89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98C3484BE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PXdXeAM2Hvzf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 18:30:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 996E484BB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 996E484BB8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 996E484BB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:30:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A395B5C48B2;
 Thu, 16 Jan 2025 18:29:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D7DC4CED6;
 Thu, 16 Jan 2025 18:30:00 +0000 (UTC)
Date: Thu, 16 Jan 2025 18:29:58 +0000
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Message-ID: <20250116182958.GG6206@kernel.org>
References: <20250116134257.93643-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116134257.93643-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737052202;
 bh=lwAG8HHQXAjrk4Z8xyWN05Bb//cNJmJJFqicFPLtoN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rIgXc7KJ9p2Ry0L7VgNlTTVuV42OAfhU3iXOxrBoLlOX1jY3hE1L2vZOPShaEPBcC
 TRc9Sr76IC2rcvvXAmh9+sM/Dzpw7i0Sx4LxZGNjm9v4uZBKy5cgkD7plQPJ0VyNWg
 jI2q4b4IOfY1/V9QSVd3HgZHwZyqgCy9kzaeU2u2Lh8CuiNjtpqFeCnogsuNGNDd38
 zaOFg+n4yfycMjuHUWvo5AZm74sOLh5y/5jk5l525clqjr1JARx1qtNaKtCuD0PrxR
 UI1Q2Pr6+GQkFsLvEdR8dtBb88/sWZQtOT5EK9iUSq2u3CsF6WTNpXMeBWkdIg3mQD
 YSWTY3zrRzi2A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rIgXc7KJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: synchronize pending
 IRQs after disable
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

On Thu, Jan 16, 2025 at 06:42:57AM -0700, Ahmed Zaki wrote:
> Wait for pending IRQ handler after it is disabled. This will ensure the IRQ
> is cleanly freed afterwards.
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Suggested-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
