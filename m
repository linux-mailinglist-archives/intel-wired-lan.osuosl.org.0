Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2119A9B1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 09:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A203680E66;
	Tue, 22 Oct 2024 07:32:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FLcx0Wr6dAc; Tue, 22 Oct 2024 07:32:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 054F380E67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729582356;
	bh=NFEXL1ZsW5RQuoX96l9v8lypP3Nu88rroSpUh+IOEGk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ndXiZG/ixWLwQZnA3CFAjy9Xai/imlwrnLio9OSIGywqwiUgLFYwxqqrNrSGaN/Qe
	 vkpqy+UwD80zkStJAobAu2SD6mZBqSZMrH3xNHYjNWNjTHoYO/81rDQAzKfE5Zwu8d
	 YrIr8oQI5KEgP2jd4HoK2CbNmePtrOaVr8WFX/lpCzay52ef313Z2bFqJ+Y8HOQvuH
	 bn2UitnU0PBXGnBzEvsb2hbhyQGYJhTyyI4IfpPIIe7YJdoFDTqxtLO1s/bhvYpuHG
	 dMIMcd9Kj5flHgo62fnv4bXUT3Nja3mWmsrgW4ArSLN7jh8gUAjO5y9SJLIrHaXvEg
	 QRSzCPKHiaeoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 054F380E67;
	Tue, 22 Oct 2024 07:32:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71122963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5175680E66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:32:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hjx0lpVxAglE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 07:32:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B83DC80DD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B83DC80DD7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B83DC80DD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:32:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 146F85C5B4A;
 Tue, 22 Oct 2024 07:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B53C4CEE4;
 Tue, 22 Oct 2024 07:32:27 +0000 (UTC)
Date: Tue, 22 Oct 2024 08:32:25 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <20241022073225.GO402847@kernel.org>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022065623.1282224-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729582352;
 bh=KPwac6l+2tUtMD2vs4OOQYjiSpu5Fyksb4QT8Letd7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rVfp3th2asmEs1VDi+Jim8+lR++xFADU+Psocn9CuEgAduqY6GvxVNMmxO36SIfhZ
 UNs25XfBW7YVmeZV8sKvwMJ7XT6PeEkUF97iIdc3pvd//oqQ8O8k6qISB1y7gFHQFI
 nkubjcuMtn8Ip/NQG/8pGwZsPCZ+b8Vlbv6mB/cOzhN0uN7G+auRQ2eDOOzbp4xzMI
 kldfoB6SbR+QaKtCHEotTUzD0Ky6XyuTA/0KFpf2/txPy+3IOvfFh6Njxa5A6xb/0t
 t0qBLZ4ZMPE9k7c2ZjN5hIuLF5Blk3V5omeLCxzbjwFDIHcabo11m3/PWSXnVy3X1h
 0edHIR25rvMIQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rVfp3th2
Subject: Re: [Intel-wired-lan] [PATCH v3 net 0/4] Fix passing 0 to ERR_PTR
 in intel ether drivers
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

On Tue, Oct 22, 2024 at 02:56:19PM +0800, Yue Haibing wrote:
> Fixing sparse error in xdp run code by introducing new variable xdp_res
> instead of overloading this into the skb pointer as i40e drivers done
> in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
> commit ae4393dfd472 ("i40e: fix broken XDP support").
> 
> v3: Fix uninitialized 'xdp_res' in patch 3 and 4 which Reported-by
>     kernel test robot
> v2: Fix this as i40e drivers done instead of return NULL in xdp run code

Hi Yue Haibing, all,

I like these changes a lot. But I do wonder if it would
be more appropriate to target them at net-next (or iwl-next)
rather than net, without Fixes tags. This is because they
don't seem to be fixing (user-visible) bugs. Am I missing something?

...
