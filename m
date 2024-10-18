Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 561E79A3276
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 04:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA74D80D52;
	Fri, 18 Oct 2024 02:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rOfRbsUKl0Ki; Fri, 18 Oct 2024 02:14:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2957380D3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729217688;
	bh=3jZD1bUJ374pUBQ+Na9BIyYXekJYV+CGN3ydWgrL6Qk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PFmfQOz0KUE1saxv++sjvsXilTtBp3h7iZMJzOT9NJ3s6IhtfYRfwoAgCT9Qk6YMA
	 EkgXjqY/2RTjJy7Vr0jHb0KzmC2MYMjpnUl6IaowgERPvBpd1ka64WeUKXCD4X4RZF
	 u2q2xTor8j+0CHq7Mpthsx5jbwLpMWnyGvj8DmK2QLdd4I+EMkIYoqVZeLVyLl9tCw
	 E+2BxtCRmkOqj8DnTmUrzyvU/rxcDbVbEh+56JItUr09cw/rntvREZ4GTtwYHyQvLf
	 jDPqDRFiamlaTBBTCdJaCP81JN1MxHLbYahn5swyqPn/zJsoWzs9kFlzGLgJbBXlNO
	 x55vulw7dMiAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2957380D3A;
	Fri, 18 Oct 2024 02:14:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF7C927DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5A2440252
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtYJiIjTMPCv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 02:14:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4668D40004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4668D40004
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4668D40004
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:14:43 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4XV7XT0QJGzyQcj;
 Fri, 18 Oct 2024 10:13:13 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id BC32E1402CF;
 Fri, 18 Oct 2024 10:14:38 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 18 Oct 2024 10:14:37 +0800
Message-ID: <8831250e-dc90-a1f5-7490-d6e59d5aa778@huawei.com>
Date: Fri, 18 Oct 2024 10:14:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <maciej.fijalkowski@intel.com>, <vedang.patel@intel.com>,
 <jithu.joseph@intel.com>, <andre.guedes@intel.com>, <horms@kernel.org>,
 <jacob.e.keller@intel.com>, <sven.auhagen@voleatech.de>,
 <alexander.h.duyck@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
References: <20241018022926.1911257-1-yuehaibing@huawei.com>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <20241018022926.1911257-1-yuehaibing@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH -next 0/4] Fix passing 0 to ERR_PTR in
 intel ether drivers
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

Pls ignore this corrupt patch, sorry for noise.

On 2024/10/18 10:29, Yue Haibing wrote:
> Fixing sparse error in xdp run code by introducing new variable xdp_res
> instead of overloading this into the skb pointer as i40e drivers done
> in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
> commit ae4393dfd472 ("i40e: fix broken XDP support").
> 
> Yue Haibing (4):
>   igc: Fix passing 0 to ERR_PTR in igc_xdp_run_prog()
>   igb: Fix passing 0 to ERR_PTR in igb_run_xdp()
>   ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()
>   ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()
> 
>  drivers/net/ethernet/intel/igb/igb_main.c     | 22 +++++++-----------
>  drivers/net/ethernet/intel/igc/igc_main.c     | 20 ++++++----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
>  4 files changed, 34 insertions(+), 54 deletions(-)
> 
