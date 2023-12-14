Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C7A812C4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 10:56:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 971D561B21;
	Thu, 14 Dec 2023 09:56:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 971D561B21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702547816;
	bh=42+q5lTL0C8d5tU+1ykDDLRys5pmSUEj3cvsWPIKL0s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WMjGYWTCzXzv2KHAT/bJR3ZIBwE+oW1NiKuoImmJAQ0fBvbxM3z24d4sDoWdufxTl
	 xfGwNZvMwUY9wb251+bxlGe2BiWLncDnxXTiQBvQr3yXwfvqFQyA6ifVu3mheQxEkv
	 gCam0FQ6z75y0D98ax92IEBfbpspxVQ9HrIB/3w1RCf+MVl0v5UPTmix89ssYK/VTw
	 I9576kCX6jcMo2wc2vRDPndfiumYhsSGGT7cI/+k3VXQNqViyup0lg2HUdTFw4ZLiN
	 h6oKh7ygldYqEoX81dcX4YiatZmyP9nH6XF/z2kQ9jcGHa5KTDoxz8wIaAPNCAviWg
	 igls8raOVBwXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tg8zkhSyb3A2; Thu, 14 Dec 2023 09:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8666061B19;
	Thu, 14 Dec 2023 09:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8666061B19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7F131BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F277420AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F277420AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pzil6Imgnsh6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 09:56:50 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D68EF420A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D68EF420A8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 38E6BB8218C;
 Thu, 14 Dec 2023 09:56:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44180C433C7;
 Thu, 14 Dec 2023 09:56:45 +0000 (UTC)
Date: Thu, 14 Dec 2023 09:56:42 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20231214095642.GK5817@kernel.org>
References: <20231212104642.316887-1-jedrzej.jagielski@intel.com>
 <20231212104642.316887-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212104642.316887-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702547806;
 bh=W3wMJj/fE7ypeh3zjGSazjPb1WJfR/FlhxIOKm/d7cw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCP9cDXorxisgUlARQcNK735G1z84WztdwB2hGQeUosm9qig4fRoIkCTRSe7XdJPE
 JOX85LENwe/8vOiI/YxaaMwM7c1b958CGph+hMb1JIg2X50rfky5wfKZJhQNtUMGOX
 ljYAGm3+Ymajp1k71gcSNJCyKLBp+6k4R18JiGOoc2UuXWkx6TCaiEVIjoW2wTPDro
 zrSLNVip6U+qdJxETGP1yMdm0nxlUYVKuJqIGL9P5fjO3Xb53wv0xTrB5QRPotZYhC
 RL4Lxtkaz576t+XaRhKshgVGitzfRCwzYnXtjI8j/huTCvNo1ZwmdiAjJKLDs6+2+o
 nfxb4Z/WGQIEg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nCP9cDXo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: Refactor
 returning internal error codes
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 12, 2023 at 11:46:42AM +0100, Jedrzej Jagielski wrote:
> Change returning codes to the kernel ones instead of
> the internal ones for the entire ixgbe driver.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v3: do not use ENOSYS; rebase
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  36 ++---
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  61 ++++----
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++----------
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  26 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  84 +++++-----
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  39 -----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 +++---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 109 ++++++-------
>  12 files changed, 266 insertions(+), 317 deletions(-)

Thanks Jedrzej,

this is a nice cleanup.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
