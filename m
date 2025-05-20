Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1600AABD1B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91EA740636;
	Tue, 20 May 2025 08:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-aVHwLb6sXk; Tue, 20 May 2025 08:18:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1564E40652
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747729108;
	bh=kugj4g/tazTIhEaZ+HJruKO9oJNs/zwrpeSJfI2tFio=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=II4ermvqpEWrIiUzvayrKmfiulEq/RRuIFZWLiroRWZ4hGDWxMKVcrNXWwZbWswl7
	 8Wn/q8UIPXSSArqtmz+8vuYeWZU1uyoJIgH4x27xGgbYJi83FBjsG3RR8xHXz5s7yd
	 /rqBrIY2DVSUYyyoyp1CdJiuVYDxs/+lVjhVslVs0T6OV2Gugrug7zXp/zL77qPxjo
	 y7/ihX/avHRorT4itF99qZwfPzHT2zaJmpZFr39doIBF915vTHvlFZ3ELzxfcEHXXI
	 kgQFGIxAVPu8P6WbCsY236DgerW5zrIUC930zfOG0Df0gCa5gWUdgO4qUPgt4bHXQx
	 4JebeGrc2s8JQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1564E40652;
	Tue, 20 May 2025 08:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D024193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E98D606C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OeTrtjdYp68e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A95E760666
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A95E760666
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A95E760666
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 40756A4E2AF;
 Tue, 20 May 2025 08:18:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BF1AC4CEE9;
 Tue, 20 May 2025 08:18:21 +0000 (UTC)
Date: Tue, 20 May 2025 09:18:19 +0100
From: Simon Horman <horms@kernel.org>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250520081819.GS365796@horms.kernel.org>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-8-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250519071911.2748406-8-faizal.abdul.rahim@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747729103;
 bh=P+mil3BSAgflT+81N7kdHl0B7fEVM15Pgtvbj74DtNk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ArM55lAJgCZI3dn02U3g3Vyxhw/8xWgSOgDXoPPSrcOPvMPb5yBCw4RfSFgyYXukR
 gqFHLkqEk8ptvk3LRZIw5Zn8nE6wGko7DPmtrPnrp1vskayF1yRO21wRed+ERyiHrE
 RSZQrJXRhSd3arfdvn13Lg57Of1tyZSsqpgCp1/cLI6cT9lRrGBD/Xr2ctmCGGuuE6
 Iwe0CvlcOvZ1jbhv2lqs5ChegCNr5rmUmUAR/2VuqGzAd9lIpYYzAuMV3zAsESzC5C
 RT+tEXaoPN3LTvgYtT6VXBaYmiKPCAiJ0PwG3LxU/jSp79SN3cHjsfUN+62dRwuPeM
 a0CnZtE96yw0g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ArM55lAJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 7/7] igc: add preemptible
 queue support in mqprio
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

On Mon, May 19, 2025 at 03:19:11AM -0400, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> igc already supports enabling MAC Merge for FPE. This patch adds
> support for preemptible queues in mqprio.
> 
> Tested preemption with mqprio by:
> 1. Enable FPE:
>    ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
> 2. Enable preemptible queue in mqprio:
>    mqprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>    queues 1@0 1@1 1@2 1@3 \
>    fp P P P E
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

