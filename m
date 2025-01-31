Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C64DA23F4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 15:56:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0029D40702;
	Fri, 31 Jan 2025 14:56:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xr15fAyh510c; Fri, 31 Jan 2025 14:56:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3762940896
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738335399;
	bh=7NsVuDlT0uQJgBtEOy4n1OF/w1q+d+szEF5tXjQdwlI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7BMEOtVNmUOl96/3g732nEj/7n1SUmvyjsKabNUL6PS0gkQOoM0SbeZF8ZkH3b/zi
	 ywhupA6Vm299o5c+v/Cv1X4PKOck9e52ZL01kZYarEOjwi4IZMCXs4EufU0KRcRkGB
	 pp5/HFcq37qKByx8FvYK6cklxky+mwNSkszIgmYOM7Kz3X1pGZ/cUw1CT1UTfYPGe/
	 Rj6hT/ktZ/fsuDYjjPgNkkrmKthPCn2bmDDHGWCNQSUl2SEFJnmEZGjP0sQJoy1kNH
	 uGnloPYmoInDQtT+gXS9KG8jMsy+0stGY2hP+n1hQBsAzo58sxm6EXBf8FdzT+vNfQ
	 LwuNIgsz8qiVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3762940896;
	Fri, 31 Jan 2025 14:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75FDF16E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 14:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A4D66076D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 14:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9zPp_B6cW45A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 14:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7CA260612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7CA260612
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7CA260612
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 14:56:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8629BA41F59;
 Fri, 31 Jan 2025 14:54:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35B9AC4CED1;
 Fri, 31 Jan 2025 14:56:33 +0000 (UTC)
Date: Fri, 31 Jan 2025 14:56:31 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 dan.carpenter@linaro.org, yuehaibing@huawei.com,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20250131145631.GA34138@kernel.org>
References: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738335394;
 bh=+qOB8ecQF1mqWeRzosyh6gMdfavZ114YSX2AA7ma9oo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qsZdb1vXMHgeAufN2P8/tdBhL9dyeZpOw2fgRlvjh6Yqg+g/18ylES5nRnSVnqX52
 rkEVp8KNZPY837eBndU+mNi74isovDqfnBnCDtXAxTjCBSk/UMO8BmbSnBtxsidXM0
 mEVYQJYRlYluY3LppXM3bu36P+JL9UQv1oTUrPCZhplThXdFNzy28FAI9iF3BPOZHk
 Y+AdScOermMV7x6jjGPKTpwbV8OluRbVghpGdG5KxVYxtOD/+uHRbrYQUtcW/PL0Mj
 zbzOw08qLdEYnEuTJ6tykJmZEs0rKi5lNM0ZWr8NIlZZIJX+dd4G/Am68Ex5fVTAWs
 FpyvSvEYvA1mg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qsZdb1vX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb
 NULL pointer dereference
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

On Fri, Jan 31, 2025 at 01:14:50PM +0100, Piotr Kwapulinski wrote:
> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status
> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
> 
> The commit also relaxed the skb NULL pointer check - caught by Smatch.
> Restore this check.
> 
> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>   Provide extra details in commit message for motivation of this patch
> v2 -> v3
>   Simplify the check condition
> v3 -> v4
>   Rebase to net-queue

Reviewed-by: Simon Horman <horms@kernel.org>

