Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC96AA02483
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67482404BE;
	Mon,  6 Jan 2025 11:45:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9LYB2hIeKn3O; Mon,  6 Jan 2025 11:45:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A00E7404A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736163919;
	bh=Ww1bxhu4kNjY+NZ/+Npd1ijNmwWvKOZx6tj/lkDMEao=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spzjzYsNivvlLVsOWoK66FyXIW9gtVJfdg6fsmre737aT/UvccnhWg3a6P4GDcjVy
	 tQaPHvGOpPY03kpbJ+FWl5eXQvJuSEaCehVioEYhFlJ1/m9vZHXSfqelqGYZo+XG35
	 jFu0ys5kf9uz4zTdwjVb7yOQnzFFPNdVrunhdQIpFnl1KxqlqbvfyUxtPnz6KjeHiv
	 Kll5ibVUUOYKblCd+xRkf8Sq6X1er+UtRp1Fcw+OnXVFfzGbvlw7dubMVs7CNQfv3o
	 z+a8QSLuMEqXC2YWJR+GPqi5tFXrAnWHVTywAdln5kB7Tb+V7TBJ8b7CEAKd432a5a
	 /0swwhURZsPNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A00E7404A5;
	Mon,  6 Jan 2025 11:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 811B36B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C72D400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:45:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1M5QdynZIuOj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:45:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5FCE400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5FCE400F9
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5FCE400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:45:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BA425A415E3;
 Mon,  6 Jan 2025 11:43:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33A67C4CED2;
 Mon,  6 Jan 2025 11:45:13 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:45:11 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106114511.GH4068@kernel.org>
References: <20241221184247.118752-1-linux@treblig.org>
 <20241221184247.118752-9-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241221184247.118752-9-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736163915;
 bh=+UqgieBeJZ/+el25B5lGcvWlVHZV5rYJGEhr/qhW3AA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nmg0XeTrj7NKv7WdTDGds1tVnoFraA57z8m/A+MSVpt2/UGuZmJE43ZSMGrHj/B/1
 9NSz7AOKgNo41T1wtER5/ArqCwMqL7UuHD5Rbiqyu5bXAmi3a/5EtJMmIxT06i3nJV
 XBVoBCZNcKiD4lVML0KM2lsYQlLOgvfwujq91oHXy2sS6FaiJ3Wi8dk1fXutzfY8iQ
 gLW9SPduvJA6eYGoUFpTt6uXUfntWFaxVFKEswYJoM/koLZ8RjO5T4Spf/P3WF12v/
 IH2bnfIMgPt9sQ7MAOgLzicoUHRQVcaFiCnS1Dwjf5pyy35QJrtlIvUOivkEgfdOaR
 JMRVpnQuBrB0A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nmg0XeTr
Subject: Re: [Intel-wired-lan] [RFC net-next 8/9] i40e: Remove unused
 i40e_asq_send_command_v2
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

On Sat, Dec 21, 2024 at 06:42:46PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i40e_asq_send_command_v2() was added in 2022 by
> commit 74073848b0d7 ("i40e: Add new versions of send ASQ command
> functions")
> but hasn't been used.
> 
> Remove it.
> 
> (The _atomic_v2 version of the function is used, so leave it).
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

