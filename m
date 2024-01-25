Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8768383C175
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 12:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5D4E408DA;
	Thu, 25 Jan 2024 11:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D4E408DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706183948;
	bh=887w+WfJfFzpSlrkGokTPV05+baQoZjaKxYcT03elr8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rfHLfRq+e7PTkkE+sWiWem2oVZHz5x/8ZCOatT4Jq0C94oqelOJIVxpLJLerVB/nX
	 ts3cVxdzYsoUVLLDHos5nRz7pjm2iA8ESlvDVrER5zXPCPaP6c5qvRC2nKkMDoS0Nv
	 d6Ku7EY5vZa7KooWutZTgg+C1UAwonQRJgRAwgXJdSnoggebslhgTuMYQosRqNzQSn
	 KvECkM0WxC1wltdX2Fq8gAS5+o9rdUarAQ7CEPIstjM+ihkiRn68DfBZ1VKe0/tQfo
	 7L1E6f9uTeTM9E5S+BGzl/35IqiMfI68EAUMTQFgVU7Cr6W56oh5XVzEqMCdfyPTNO
	 aK3z7LsjMaGeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id koRbysbDYatz; Thu, 25 Jan 2024 11:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B137C40604;
	Thu, 25 Jan 2024 11:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B137C40604
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75D6F1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D12480B78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D12480B78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CM3DcdqFbkAy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 11:59:01 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C63BE80B6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C63BE80B6B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 12EB86216A;
 Thu, 25 Jan 2024 11:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 806E8C433C7;
 Thu, 25 Jan 2024 11:58:58 +0000 (UTC)
Date: Thu, 25 Jan 2024 11:58:56 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240125115856.GJ217708@kernel.org>
References: <20240124085532.58841-1-kurt@linutronix.de>
 <20240124085532.58841-2-kurt@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240124085532.58841-2-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706183940;
 bh=Kz4bxwlKhxXeto10pI+42QcBi68jNaKp652CDggy7Ko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S5zD5MhBkomlMDB4dGU4smJeVgfWJRSu/gi9MQj97Z5RmWDAwc1hcnWK8ESEZWhKB
 gq1iFCzeniTisw06S62fdIaUxVpeFVBC1yn9FsxnZwZ9yU4I5SuaLLze8TKYUqiuTO
 6lxyu4Xiejfl3r4POI35NRq4qyKhHOsN3tmdRakwYE6dItoG4EH64R+xAR1QRWJUgC
 1NQBL9l/tGo7Uz2SeXWpDAgK+T0Zji7S5kTDjIvSlFbty1lf9XHks9m50fz7S0OM/9
 mY4/orjpaBAsJEuJxRC2vIYSczqsoedRRgIpgMdifVgt/TtkXVB7Gj1xgLDi8l2LCj
 lsci9IwMarZ+Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S5zD5MhB
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: Use reverse xmas
 tree
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 24, 2024 at 09:55:30AM +0100, Kurt Kanzenbach wrote:
> Use reverse xmas tree coding style convention in igc_add_flex_filter().
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

