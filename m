Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 040BDA02664
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:23:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7976480DB6;
	Mon,  6 Jan 2025 13:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id csaz_Vhe0lnw; Mon,  6 Jan 2025 13:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBAA080E28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736169788;
	bh=9AQaUulps+jftz59M5vSE3IuCQmtwiDS7RIvISxAg3I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pcv+BB6XO6VqAhu9FJzHZ6uc8gPmnPYJBdKMZX4luz1W/DEHrWktrAagvbbcHOk1q
	 FAkfo6PKMbF8dRQu3Aln6dyh7yHU65rtPcRW7Lw8J8gTr8natyQOyFNcNYkrFvuMSS
	 nzkh+4p1PB2kGOspD/ntS2xzKh2nDe+3nibsu2TWimbX/59aPJ+chGs+lnYjgyjBE4
	 eSxeXqigoP8vW/dWSbUc9dTCd3cOIjH3U07qVJjFtNKe4JYmyrVsPK47FENXc8JR8U
	 b1bQlbbeAb5Glf/erya7gxB+G4jkcm89+HPJLIPFHhjC5cJcF6+gt5B0vQ7QgBfz0n
	 7al6xLdPO8rvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBAA080E28;
	Mon,  6 Jan 2025 13:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8823E6B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6444040202
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P66rMfUNkOXR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A843D401D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A843D401D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A843D401D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5D8D85C5892;
 Mon,  6 Jan 2025 13:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EC4BC4CED2;
 Mon,  6 Jan 2025 13:23:02 +0000 (UTC)
Date: Mon, 6 Jan 2025 13:23:01 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106132301.GK4068@kernel.org>
References: <20241226165215.105092-1-linux@treblig.org>
 <20241226165215.105092-2-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226165215.105092-2-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736169785;
 bh=K5tq2lme0yYfypOyqqSCPn26xsmF+xHbpio7Ejb6UZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rHeT7P6PSLtnTqCRkbJE/9vSbwTSLLDMFyXUDe47Esr/avjRSYvgJOuZRx7PPM1yR
 dxCg/lfRRaMClXTOp8hJ6+L4Vj305/KPSXsnO86YRDGA0ZmURtcN9ZggPrpO4+JCsq
 btPI1N7JyH/8aySp7tEg7WaeLDWsSKTWzbpoKT2RwPFs9MEew4Q5d5t5aFMN7r2aJK
 JCXnNG7HAHA6QoHAfrKjMgTPceA9ogyHKzOzf2xmGPFpT26ikMdAx5MPh13wOjrFqc
 QC17kNx/Y5c+ei2mMilS9GaqTE2qmXqbYGn5SAtW5lhSZSQv40VkukW0LZpMDCKagT
 jE16PGBA9m1dg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rHeT7P6P
Subject: Re: [Intel-wired-lan] [RFC net-next 1/3] igc: Remove unused
 igc_acquire/release_nvm
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

On Thu, Dec 26, 2024 at 04:52:13PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> igc_acquire_nvm() and igc_release_nvm() were added in 2018 as part of
> commit ab4056126813 ("igc: Add NVM support")
> 
> but never used.
> 
> Remove them.
> 
> The igc_1225.c has it's own specific implementations.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

