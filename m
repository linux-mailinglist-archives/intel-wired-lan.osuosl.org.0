Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E4939108
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 16:53:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EDE7810F7;
	Mon, 22 Jul 2024 14:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LhTA5AXmcamq; Mon, 22 Jul 2024 14:53:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43545810F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660029;
	bh=9eeoFkP8RVNfmx1d7pYcUQd9wx7CZEw0Ipg0pQeXN9M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7+ydqLdjMrL/uk+IShXhcfDOoqmeaO2AxiDTAf4f/CKmZmJUACX/RdxzOvFj0Hzef
	 LPUioyWNC2/FPXsPqRExS6b1VaZAtDegh6lu+WPP7JpqqRM8Cll1b1gR+iKpd5dA8N
	 0LYuerAdpvQIjdJ6nOx2Rs/3ilCmpUr437EvVYza47uY1hdPXOZqMK4Qt9eLIFzI3G
	 28zJjAfdaERfBiuv00XkijcDnH6oHwa58u368nUNOyiBfgzrlTd0afVg6Gt4ee47fP
	 Vtjo5pWOYD+vRB/MZJs8AcrWi17xviQ8kbcABg7uV0m2sbQQPB0srSOLC0hgcF9ZWD
	 qamYX5t7epG9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43545810F0;
	Mon, 22 Jul 2024 14:53:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CF511BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5620940448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NNhC0hlZHeTS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 14:53:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7AB0E402E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AB0E402E7
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7AB0E402E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:53:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D10BCCE09AA;
 Mon, 22 Jul 2024 14:53:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D55E9C4AF0B;
 Mon, 22 Jul 2024 14:53:41 +0000 (UTC)
Date: Mon, 22 Jul 2024 15:53:39 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722145339.GG715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-4-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-4-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660023;
 bh=DBrfqFXsCePi5RkuOb5Ae8jJax5RVndoMZBKRM8bsAY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pnNS2fvyZzKMBRw5Itw8QkII/Y4+fzFRB2Do5jGgdx7PFCUOoYJtlkr8GlMHGmTsn
 uRtnccKm/ZlKwoYQNTsfvjey4AvPxCZ4QeL3qIBkVrKw84oN3j+3+hPC4VQTw2BG/y
 IR2o+iW/GQpK4C2n05gH+QY/mhKw0oMtDTQSFlgDmqgLjpg/SS1t0vk57ofiaq9rbf
 Zt1697dcgIx5Ak41pYgLUk4YSN9DtRlnx3yt6Ef0/L2epqr6/j+WptJgNGy78cTUlL
 7xFEZDTK367yK7p9DeaC4mzMkUBVHYl7GdIwR7iPmkXkWlHowLRKTPQZDQWmoQccVD
 RA5pSRk9FqDeg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=pnNS2fvy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/13] ice: add debugging
 functions for the parser sections
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:05PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add debug for all parser sections.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Hi Jungfeng, Ahmed, all.

I am wondering if a mechanism other than writing to the system log
was considered for this debugging information, e.g. debugfs.

