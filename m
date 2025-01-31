Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61029A23F7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 16:15:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AC174259D;
	Fri, 31 Jan 2025 15:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8QdJYZ4LkxSw; Fri, 31 Jan 2025 15:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 082F442592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738336533;
	bh=bBgxakqGTODAZQrWbpRz8eWj42IF2NxsAmvMx6vxCso=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8UiOlk+tvLmQdXHE4ylNPt++kl+QIQTku1isq7oUcPAxryiqKOydtxjxGveQw+Rr4
	 gbjYmyeJs0nBj9NXF8zaGORWIfbqbloVyCLMAte/ILsFMs+PIy0UB3Ja5m5dP5hGqF
	 vYn3aD4R4J1n83f1mR/FLCsB3TV6J7qBq0R0C+7ysHwC9Fn4wGU/OVuDr+wYd1npOd
	 y3eDt2CaeE6hFpq9UX7zUstgGkNb1gfZzsel/86MbXKXjFj8IB2a2VbzmCL5n0XolJ
	 CeutN/s14ykUE5Nh7P4mSYK1HdkArLbbfYKtvs7MTvJ70qfl//+fDIzWNiH3WixmsL
	 OGn2KieYwRULg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 082F442592;
	Fri, 31 Jan 2025 15:15:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 310BC16E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 15:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1566F60EBE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 15:15:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GpewW_TloDBV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 15:15:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 66E4F60F2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66E4F60F2B
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66E4F60F2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 15:15:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 45BEEA41653;
 Fri, 31 Jan 2025 15:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A954C4CED1;
 Fri, 31 Jan 2025 15:15:24 +0000 (UTC)
Date: Fri, 31 Jan 2025 15:15:22 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 dan.carpenter@linaro.org, yuehaibing@huawei.com,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20250131151522.GB34138@kernel.org>
References: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738336526;
 bh=3VVkjJDKB0JX6i7wVotCXHhAkh/YA5ViSbV7lBGvic4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jYPv8BBIphfS7XFB5tNzRhc2Hnng2AoZGZVTUnxOkeQEhWguUllW6p0GD7BSgDWm0
 ytaP3rKiccOnCSMWpsfZCI92o458gnM2CMUxqP7mnkxbvJzMef2mX0QQkxtUc6/G2/
 6nvPmjD/796KIUkzO93YE8G3INRv4zAGixzfH6F3bYExE3MC0/guLLCRLGrQVMAmxF
 6CkcU8/RzZITMC7atE5MF8Po4z3DKypWk9TqA9k6FbP7H6fyT744imfHI7gPbzw5fB
 aUs2RTwzcORaocFMJYGhfnZx5qKXFOZG0AcwsBsYjyGkmGAX2/R7jDEyIkN/JHlslh
 7jiyVewEmwbnw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jYPv8BBI
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

Reviewed-by: Simon Horman <horms@kernel.org>
