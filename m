Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD1BAB9BF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 14:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E3A56124E;
	Fri, 16 May 2025 12:26:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KwGwCzHmkT5E; Fri, 16 May 2025 12:26:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D17360A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747398362;
	bh=ZtY5q/gBCzAFiX9EOCCMgtLHHVt5cgtA2t0hUqx5ZnU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WVGVbLOTexewoTzU8Zx+LTBiKbsjYeI/c//C5rvRs/uBJJnK+/UVba+krn2PLp75H
	 t6ZDVIJisQwfU5Ulw2grJbSZYfM9P+oKA1ji4noHLRYKv7Bg+sBGgLINIS8jILL6/6
	 cGhOTo+xxDp/S9kyZrmqMInVD6F/xZiRoRwoCsVczOvOP/Yk/cGIoxzV/7ERBJN2gc
	 rDO0Dizk9DrICQZ3XQP0fK84a0om6DjlOR6HLABXENHuX2E3tMxAoU6kaiDU297tfy
	 dKpnLfiwmQ4RaN18aAcr15yEXp84qqTbX9UOfQHJMXVFRtSqCw42zrBHFYMI3Trf0x
	 zzYuaFdNG3RJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D17360A69;
	Fri, 16 May 2025 12:26:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FC13185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9086B40D50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U2yF7hZI5yFC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 12:26:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F8A640744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F8A640744
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F8A640744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8B6864362D;
 Fri, 16 May 2025 12:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AADF2C4CEE4;
 Fri, 16 May 2025 12:25:58 +0000 (UTC)
Date: Fri, 16 May 2025 13:25:56 +0100
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250516122556.GZ3339421@horms.kernel.org>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513101132.328235-2-vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747398360;
 bh=GVIAK1h6hKOXMHM9V/6Z35jdHgeimGcRUB6GqQMU5wc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KHysM9fOSJqqIEHgrA9LA3rqysX3574Zjk9WA8YKDYBeTAL4bh3k0plnObB4au+4h
 mr+6p9F6HmTqEq8AlQWcxAv5VntO/DbC29LAnb9Qjh6914zxoNUs89Dy7NxzKFSfmz
 3Tyo8UrMs1g93Hp5laNJzhrUK8h9epW+ATxzz31GB7bSSwkhO1fDu6NIE+M3q7BWr9
 cI4Ewid30S3GoAfqiUHXSbnyyVmp8xskmpu8uxnwjUlFUmd+kH1HhX+QgJvwqNwEfv
 XgXq1VHXFP4lLo3AKo6FgXcjqG5kkWdia7+vRE+r5xJ6IXZK7X1ZghAJCxqGo/lqYs
 bdERBeryv9rTQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KHysM9fO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/5] ice: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Tue, May 13, 2025 at 01:11:28PM +0300, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel ice driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

