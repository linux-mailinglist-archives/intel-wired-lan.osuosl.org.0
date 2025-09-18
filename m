Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CC9B82714
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 02:48:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B4684943;
	Thu, 18 Sep 2025 00:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4N5_Ib2NhL6M; Thu, 18 Sep 2025 00:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DD58493E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758156523;
	bh=yZc7nlmV78bWGV/bNuFAsZjj2yp8Vl2qBENRrKl1BtE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f0NIprBylBc3YZbdwUzcmP4RbCPLwSFuoKzIhxdv6OlTGSnZ259NgT2tQ87/Fs7iU
	 jybZmGh1J07a40XlUGooua1Np/82q1Xs+vmwo85fe3zxPBQsvsaIwDTxnKl6hpXK5D
	 FiEB5/zwNMbQceMTCQUFtQvu84OeDIGlxnuog+aPjQ0yUCtquSaANSndV0ZEKUlihV
	 YWda55KAtap+PRCesHK/IbQmL8CKDdAS77bG22dvsudosHvEJtWJxowzu19mSLUhKT
	 pDu6v/RMyENn8H79synBSaI8FgVF5E0kqcV4uN01tO3g8lgRpHz9jFAoBwjgWHS/0d
	 Yc9eyS20U2Xkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5DD58493E;
	Thu, 18 Sep 2025 00:48:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A6A9199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 250A484935
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:48:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGnUN3kb1jKS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 00:48:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C7AC84933
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C7AC84933
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C7AC84933
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 00:48:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 637FA6013E;
 Thu, 18 Sep 2025 00:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77D43C4CEE7;
 Thu, 18 Sep 2025 00:48:38 +0000 (UTC)
Date: Wed, 17 Sep 2025 17:48:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <20250917174837.5ea2d864@kernel.org>
In-Reply-To: <20250916191257.13343-5-vadim.fedorenko@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-5-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758156519;
 bh=GD5aoVFqOzRHltwdnVafVh1v4ZGt9FvpsfbbTashgf0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PKgGoUg4OjxXuuYlbg7tV9gKw+NBi4cdOEfgRS9h996WZujh/4yKWrRGAHV4M2706
 ffYksum9eNd0Lizcimn/ryLHmTQo1hg5Qx5vUSZn+Vfos26irVispaqdPk/noRpKZS
 fkdC2kKp0xnGwm1OjxS+D/r/ExH+YsBMjfkSo4nmDpf56G0iyqS7446kke8SfKgvn1
 eVF7aB92Uh1hJxdjb1JQsHsH9cKBg/3w8GPTVtNaQ1Oj2I4dI3X5x490P+2jYJzDmQ
 nQp0FN6NyOAgC4YG08MK6mE1IH/cJOeKPvKAOwTlrH7yagyXIAwCIfmmPHEUAQxyzx
 mgWVSLw7X6E6g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PKgGoUg4
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/4] net/mlx5e: Report
 RS-FEC histogram statistics via ethtool
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

On Tue, 16 Sep 2025 19:12:57 +0000 Vadim Fedorenko wrote:
> +	for (int i = 0; i < num_of_bins; i++) {

brackets unnecessary

in the other patch you picked u8 for i, good to be consistent
(int is better)

> +		hist->values[i].bin_value = MLX5_GET64(rs_histogram_cntrs,
> +						       rs_histogram_cntrs,
> +						       hist[i]);

could also be written as:

		hist->values[i].bin_value =
			MLX5_GET64(rs_histogram_cntrs, rs_histogram_cntrs, hist[i]);
