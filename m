Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57926B23A33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 22:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2CA641DB2;
	Tue, 12 Aug 2025 20:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8juxurG1TmID; Tue, 12 Aug 2025 20:49:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5283241D5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755031757;
	bh=7wRLFUVwRKZP/1fxbtjl5Kx6bfXZjDSs5QnVvOP+/us=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wEibBoWbLWeEYS5rtxwa7pdSles9x88Q60q/QjMCLU0B+tM/dYIFeQRlEk90uDPea
	 Z8iDDZhU0hDcaNrpFN3D4zSjqCwuRGMvHRsb6dgpLLPrip+Lj4RpvEHqPYiojJs+af
	 6iFx/xqE0kDmRTyHKxWEnBkJIBJbJT4UQdMHLki5yMVq7hBwtH4FfyT1In5RsZYBFn
	 uBlx5hwWq1R7LubppEm6J+4XUMdyXkLiusMnNj919NFMY8rBHpRqiCDuEUZ49haq1F
	 R9NZF2YYbrUqEteEa2AII4QEDuJEZYY+0GtHiA6BgbTdoC+ymwXSWKBmt1IbkkdUH6
	 ltQ00DUbQg6tA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5283241D5A;
	Tue, 12 Aug 2025 20:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F0721C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14EB783265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x4YSEWqfKZDV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 20:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7FDD080DF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FDD080DF2
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FDD080DF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:49:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D6FE7456D1;
 Tue, 12 Aug 2025 20:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DFBEC4CEF0;
 Tue, 12 Aug 2025 20:49:13 +0000 (UTC)
Date: Tue, 12 Aug 2025 13:49:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Qianfeng Rong <rongqianfeng@vivo.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org (moderated list:INTEL
 ETHERNET DRIVERS), netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list), bpf@vger.kernel.org (open
 list:XDP (eXpress Data Path):Keyword:(?:\b|_)xdp(?:\b|_))
Message-ID: <20250812134912.6c79845e@kernel.org>
In-Reply-To: <20250812133226.258318-2-rongqianfeng@vivo.com>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755031753;
 bh=7CF1FVLpGJHb03LymcmzOUUnSoGfzaAyfdlsBPYu54E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ry0arDUxmBTdQhp2BXXKIDsVRH3AI1VMVM8FqryNb8cST8NutZZ1mVNlVxdq393qW
 FSn8LP0IylTi7ZO1qoE8FQJcrjla9p+BSKC3FdZLzIJXUWx2Q5oE6AsR2qbT+bGANN
 pS+u3ZkzRrnCsppjxDSWyzn9L9gLNkZbdkwDPQboBkX2cB2AAq0FhWtsSkg051tegL
 KwUJ4+9ZR+/tSx5+NDQadkWKVlWtdigFhCMqaok8KrjSnvX4QWrit2m2f5gdYmCCcy
 KHU9lI+81jM+TyizkqAPbj27dZHJLFvHvMAemnCAqHf8/CBnmOHfaQA9mo8PxHSR9U
 a3JwDx4HLXVjQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ry0arDUx
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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

On Tue, 12 Aug 2025 21:32:14 +0800 Qianfeng Rong wrote:
> Subject: [PATCH 1/5] ethtool: use vmalloc_array() to simplify code

ethtool:

would make sense for patches which touch net/ethtool.
Please use 

	eth: intel:

as the subject prefix.
