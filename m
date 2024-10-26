Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEB89B1939
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 17:37:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A80281256;
	Sat, 26 Oct 2024 15:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxnTv4oIKb-7; Sat, 26 Oct 2024 15:37:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B66580DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729957056;
	bh=cxznVroKkieFSN2ssv4rdUCduDvlXlrf1NbPw6r7Ohc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KjWN5haJK6wBslbYLDETN42g3rUJz5LNNawynYj+QXjkWQZ2sTJAGJdHx8shyiklD
	 yKMgcou0xhcbfAo391+U4p8iipqbzSzQ6N6Fd0wR6DS9DFrHFQ7NH7nt9/OjtR2WTe
	 90xzXnRH5Wnbs5315ctCeLepEW2RPKdlxZ299vhOd+yx1jhSEuvy+Wns99NjIScwGP
	 ktfaNtzkjBXAnmOk7/XbFRktY63fEJr1GNlRfLTy4Qg7/cCHYkwsznNZgspq4e2M9L
	 5Z1EGIEbU4HkAip9ydRcOMR4t7th+EhGwOoujARwY+y7QIYDmq5qFPDiYCxllGe/+4
	 /imXl0+nZqt+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B66580DCF;
	Sat, 26 Oct 2024 15:37:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B95535C1E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98FC840357
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BiGt-v5vOqwm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 15:37:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C165040356
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C165040356
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C165040356
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:37:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5A4F75C5639;
 Sat, 26 Oct 2024 15:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40E80C4CEC6;
 Sat, 26 Oct 2024 15:37:28 +0000 (UTC)
Date: Sat, 26 Oct 2024 16:37:26 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <20241026153726.GK1507976@kernel.org>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241026041249.1267664-2-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026041249.1267664-2-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729957052;
 bh=24uikJwv2E0K8ruOuVRCKxHRPuMbdhTKRWr2+7XjN5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=piwt6JmXGff/XbUWVO8/1CW8P3vFxzlME+kxDaiR7f9fWdhF4abVkctvz3fNx9NWk
 sDJ3XJAewjLvn8iHTa/ul7OS73zw8haAReIChBCXoDtRf9k5dl9jWJajG9oTl10Cai
 JYf/IvE6ECpIgrrIRaHYTGsJT/2/oYPdaHMAyMyqeqZzGJKra3y77UabtkXrWdWq3s
 juq2A2NiEt5DkM6VRTFEBbYRpBrtRCWI0h+6USWvRkgHSzwHS8OKjwUhXDDjFbxpgj
 X9wCc4J5IFto17kTFfaGTl1yGFYcqL3yl9mzfb6sZsZNwwWO/d1h0Iy0WXonBU/5oS
 GeEdmPLLwz2Dg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=piwt6JmX
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 1/4] igc: Fix passing 0 to
 ERR_PTR in igc_xdp_run_prog()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 jithu.joseph@intel.com, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 26, 2024 at 12:12:46PM +0800, Yue Haibing wrote:
> igc_xdp_run_prog() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> igc_clean_rx_irq(). Remove this error pointer handing instead use plain
> int return value to fix this smatch warnings:
> 
> drivers/net/ethernet/intel/igc/igc_main.c:2533
>  igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
> 
> Fixes: 26575105d6ed ("igc: Add initial XDP support")
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

