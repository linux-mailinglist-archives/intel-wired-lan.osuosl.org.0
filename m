Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA149A2EAB4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 12:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F0481970;
	Mon, 10 Feb 2025 11:09:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ueoFMKPZCssk; Mon, 10 Feb 2025 11:09:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 986C2818D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739185784;
	bh=S+tCQgvoZ/ZWoBQf7eRDNeQ2kwD8APeCJlQ3+c0cjEM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pC3BCqSTkZ/R0Q6A+581WtmZCAy2Z8MTDinYQckIMBMUXMdb26kjsyfxpWzvU2hEe
	 AYOYUaJv1nhvCJG9ZnfMypWBJdVcib1rK/UorV350DEkZHOuZInR+3EkQ18g1bvCER
	 yieWmRYy9VQH9IC0CkDb+nRPN3ls7iRQiCMb3Gkty08BWM8n5K4+Uw11pKN8EWOuyP
	 5wyVP6p+Z/l+OyujkbdjUehENKL7hS1JJyAd07l0yJKYgbc2uICjh77ZX3BD3CMZEG
	 IqjMbH+EKeIBhe9uiMIvoXQyAyi3rdCErE9Q60VJmckn2zyyozrcLDvKIZbnemWGRN
	 RyG2vTo38YFpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 986C2818D7;
	Mon, 10 Feb 2025 11:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EF7F2199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC807818D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:09:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AgjlJIGcr6Dw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 11:09:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A54BB818DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A54BB818DC
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A54BB818DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:09:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CED23A410B0;
 Mon, 10 Feb 2025 11:07:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FD74C4CED1;
 Mon, 10 Feb 2025 11:09:39 +0000 (UTC)
Date: Mon, 10 Feb 2025 13:09:35 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tatyana Nikolova <tatyana.e.nikolova@intel.com>, jgg@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20250210110935.GE17863@unreal>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
 <7e12c97d-8733-44df-b80e-2956c0e59dae@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e12c97d-8733-44df-b80e-2956c0e59dae@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739185780;
 bh=tdfBLbo2ufEVYX0IYmxEP5OjhHmRvkZtyjWgTNoblrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cNF7Nax03oWlEfNri2Tt3DxBonSlyZ20uduGAa1jJ12jz/OlKMn0kyHxnGEHWRjUT
 kBGsjGcTAlxwTATifYPl05XyuF+kSVWs5mCMPymDzttrcRjIX+OSywThF1cGOAgNsY
 SFe4S1PMrQZP36DoWsvRAbzmuvta5ZgOLpA8gR55221UJ2flx/WQRrXzHJTEdz/aqz
 98gX2QvrowQZVr8ZMnvIUN4PGmhO5NsRZ83i9lJRQegK1jbEEPRFvxUpBoE6ek5Hbv
 zMOCkw0YLJc6F6V2RuoaZvMe3QKOYvJEvZwCJkRskLSqujPVdU3quDycpIgtVRArxa
 OyP3UbFFMAnHA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cNF7Nax0
Subject: Re: [Intel-wired-lan] [iwl-next,
 rdma v3 00/24] Add RDMA support for Intel IPU E2000 (GEN3)
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

On Mon, Feb 10, 2025 at 11:41:31AM +0100, Przemek Kitszel wrote:
> On 2/7/25 20:49, Tatyana Nikolova wrote:
> > This patch series is based on 6.14-rc1 and includes both netdev and RDMA
> > patches for ease of review. It can also be viewed here [1]. A shared pull
> > request will be sent for patches 1-7 following review.
> > 
> 
> [...]
> TLDR of my mail: could be take 1st patch prior to the rest?
> 
> > V2 RFC series is at https://lwn.net/Articles/987141/.
> 
> code there was mostly the same, and noone commented, I bet due
> to the sheer size of the series

It was very optimistic to expect for a review during holiday season
and merge window, especially series of 25 patches which are marked
as RFC.

Thanks
