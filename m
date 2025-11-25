Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF56C83441
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 04:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21653835CF;
	Tue, 25 Nov 2025 03:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jlJYb1eGEtQ1; Tue, 25 Nov 2025 03:48:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EDC9835D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764042509;
	bh=Jbiyztb118IbUWD05eMxlyvlRm/NNaSAoIIfGnQLCAc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nksjwQx0mh6poawWdv5k1YCB/4PbHFrbTi0394f+3qs8nXuLMDHbrzQb7h6k9SXxr
	 fl7SO+s3DnTlK2/WvBs3jSN5oYaOrThdA5dVCpYF5JYtrrs8XfnQxXmuxUyhe7U1oZ
	 5XiwmNvObCM6TU0QH4fwKBFdbS9eW5p4V8RyLz1wM8+Kl0x584118G/lR/TQA8ncDE
	 pyK1ugmUp5gHxI8UVFSiSZgmo1LnIBxuyTtS17Q+b41nyFZV2+swcIKLWRTAHLUU6o
	 1EXULRpS/EbGPXdnemomkmVw9uaJ3j1bDlTdlOBldgXS9JBmsBq0Jjt1eyzdMMfKIH
	 p/WWmOE4iHeDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EDC9835D9;
	Tue, 25 Nov 2025 03:48:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DFA41E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C91E94072C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQwXKfyMYdOW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 03:48:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2683C40725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2683C40725
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2683C40725
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:48:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 678C6600CB;
 Tue, 25 Nov 2025 03:48:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A58C4CEF1;
 Tue, 25 Nov 2025 03:48:24 +0000 (UTC)
Date: Mon, 24 Nov 2025 19:48:23 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Breno Leitao <leitao@debian.org>
Cc: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com
Message-ID: <20251124194823.79d393ab@kernel.org>
In-Reply-To: <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764042505;
 bh=Lzma0UMaI7nmo9PE8B+nQQvyo+UTYzUfPbCUcc53mG8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jrp7hWA+xYQJAnp3/csPpKJPwLpnK4gpEb20S2zAUQalxd87nTVIXFeJqhwWuGRn3
 z2j0XmnFb+FOstOnDvINuM6G4xNG5m6i48MBWDLG0KEqJ0WEIfaqeAlU6q17LGW/33
 25RNWI/DhWrfzBxSUwyXNi4dJsfnWbVFFWWJt7CuWuGJrHWgeGuMXMol3hNaT//nI5
 v4pGWwyGxhR2uv7Po9G7ZAwwhxammG9XJp17WePCwq+rDe8fIeaJrQ6xyzxNsdYHFK
 c0rdL/6CGZlmiQzmwTNeClxolTZ8DTk5oPqEH3ACj5T5OtGX6ak3bpQUs8Im32Bfd+
 9NGPv2NSJ75og==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jrp7hWA+
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/8] i40e: extract GRXRINGS
 from .get_rxnfc
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

On Mon, 24 Nov 2025 10:19:05 -0800 Breno Leitao wrote:
> + * Returns the number of RX rings.

I suspect you used this format because the rest of the driver does,
but let's avoid adding new kdoc warnings. I think Andy is trying
to clean up the "Returns" vs "Return:" in Intel drivers..

 drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3530 No description found for return value of 'i40e_get_rx_ring_count'

(similar warnings to first 4 patches of the series)
-- 
pw-bot: cr
