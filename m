Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F09A0247A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90376606DE;
	Mon,  6 Jan 2025 11:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0HsCBm_Ckgl; Mon,  6 Jan 2025 11:43:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E74036071A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736163831;
	bh=6T3Dzkr/7dXzdbtrXgHDrAjfbttiPMBRXk2nHEMvhUw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6RtZ3haGR/Sz56EnEOf7SEYiyVPxLXX2GorTPcRq8m30mQF2Sw5C6q/j6dFnF6Q2S
	 84Bmf6WgGKOTYS1zyfGov94agVfwKg31+iwIjYq0ZLtCCul1CQjP3Nst5pR4aISPxm
	 t37wlvNXUjwhmmZo5flGFMBCJO7vDGzrg96lITebmdMQ87muJdHSHj7aM/hhjxEWj4
	 jm6m4b1ZSHWWumqe1vH6PPDAokaH38EfWJm576BfB9PH7WIO8FPCvsmfLlyWKKyxnH
	 9GFQvV5ZnyD9MnTlsPhIGUokdSNEngvMYdhJh74fFzZtcO+G/UXcchv/tYkDhu6uF7
	 eSI5HuEGvGFxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E74036071A;
	Mon,  6 Jan 2025 11:43:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 110D6DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F33CB606D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aEIAprYbRrO2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:43:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E2B36060B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E2B36060B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E2B36060B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8A1265C58C0;
 Mon,  6 Jan 2025 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FB1BC4CEDD;
 Mon,  6 Jan 2025 11:43:45 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:43:43 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106114343.GE4068@kernel.org>
References: <20241221184247.118752-1-linux@treblig.org>
 <20241221184247.118752-4-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241221184247.118752-4-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736163827;
 bh=2ld1k+H+qBHYHKkgSbFa2Dfp5jAxjuza0MrZmW7YN0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G9xAwIlddfb44RWO74tve99JFDXbzi1H65E6efSrl9gzub86Pd1aGYMJVgYtpqLGL
 lFdOUmkKmuiRyRSS0E9+/06ri++u+MLUyS9VIlrJnL3A6NjT37D9Gg1Lg9ix827Nbo
 9NztVD+21fn3o08mBIqHO13rAp9AALDvhvtGEvD1ZxTcsdqgysVtIffTAyYPTw1YVg
 1PnNTGKF3x/bzL5Aj9bzrHKXYwr/dqhhv7YiQ1y/7yi9yDRd8rVT+TXMVzHmkGLpky
 Eab4ZEzfeQxp6s+zXKNOrhVkwheYt/1/7tboPKgkV3sy6xQzFJ7g5B+tIh5S0TXpzO
 um20DAh3HN2lQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=G9xAwIld
Subject: Re: [Intel-wired-lan] [RFC net-next 3/9] i40e: Remove unused
 i40e_(read|write)_phy_register
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

On Sat, Dec 21, 2024 at 06:42:41PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i40e_read_phy_register() and i40e_write_phy_register() were added in
> 2016 by
> commit f62ba91458b5 ("i40e: Add functions which apply correct PHY access
> method for read and write operation")
> 
> but haven't been used.
> 
> Remove them.
> 
> (There are more specific _clause* variants of these functions
> that are still used.)
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

