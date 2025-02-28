Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B50A5A4A04E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45340709CF;
	Fri, 28 Feb 2025 17:26:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H0_bJqqAvdiK; Fri, 28 Feb 2025 17:25:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B97270B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740763559;
	bh=6XY2UAQNHsivw2xARBLiNxIUdwI43IIkjzNJ+l7WpKQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Phu69xM16t5TPZfe4KAerjjZ/9/uM+LsAc2zu3IVgyNjoBkR/iTbNUJHf1lIV3KRd
	 TADoJC1gR8a1CKg8+nmysAOEzl0WdbVT/aBCpr7sggjFzkZQF5Q3uBhhMKMyN5FjGE
	 2qBs51Q3y8JeQBCXx9l4WrVfMMibKVr2kiOyrVcru8762KnAZeomX/+Y2j1BwksMGp
	 X8AM3OCjNdgCcrL/VkDm7uKCIJnwF2RK+AMvbEP/RCHa9RzTyC7NKiftGWhE3hZ397
	 pNlseY2646BhizXbCNHB5Pe5gQXdFGGkpIE5W9AMjSY4uw/U3OJ79ZJATVcdqxezWX
	 8f6oiBaEKG7zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B97270B1E;
	Fri, 28 Feb 2025 17:25:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 488841CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18AA0403FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4VEhOaLxGSAh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:19:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 38F984165C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38F984165C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38F984165C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:19:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 719675C67D0;
 Fri, 28 Feb 2025 17:16:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9174C4CEE8;
 Fri, 28 Feb 2025 17:19:03 +0000 (UTC)
Date: Fri, 28 Feb 2025 17:19:01 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20250228171901.GP1615191@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-7-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225090847.513849-7-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740763145;
 bh=3MrgstQePIvcsa2zhz0+y++t+2iL5vyrmilS1Ep7/NM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rh0LMl0Xufcdsu8doj7CnKPlujmmfVXEBRMQ0niz2dnuyYshYkHePS+oGSc3OjXi2
 b3X9F2oE+5WRd4lrZYprXx1xwXTvHI99bVaxMx029B0XEZWPoNCj7TfrL4gSx1Q8/x
 7vYWABvIij1MoUOR7ZuDHpssnvtnHrTqv0EyuUuPUgtultqEZP8QyhhmRXNXbmXWn3
 y1ButkIrzuRg7de96+lXuYg/CRwjAwxy/MSv+7Gwv53HPkUYZCcoUgRUPW28Ua752b
 cAOmztv/Fim7hLcHmjSfsw22wV1C+2PF6OFtO0L/GSGyCCwRsU+fBDGDq+/UPSesCc
 GRmfM639NKKwA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Rh0LMl0X
Subject: Re: [Intel-wired-lan] [iwl-net v2 4/5] ice: fix input validation
 for virtchnl BW
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

On Tue, Feb 25, 2025 at 10:08:48AM +0100, Martyna Szapar-Mudlaw wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Add missing validation of tc and queue id values sent by a VF in
> ice_vc_cfg_q_bw().
> Additionally fixed logged value in the warning message,
> where max_tx_rate was incorrectly referenced instead of min_tx_rate.
> Also correct error handling in this function by properly exiting
> when invalid configuration is detected.
> 
> Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size configuration")
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

