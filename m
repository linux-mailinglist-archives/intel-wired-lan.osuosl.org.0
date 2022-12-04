Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68C8641C98
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Dec 2022 12:21:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ACDB403C4;
	Sun,  4 Dec 2022 11:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ACDB403C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670152876;
	bh=A0Gqo4TzL1o25MpHQhj0IYuLd/rJVPmmz6YIe6ZMFC0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ni7f8PyI1zst1N298PUs3XM2qiJxLn9nFIW8k8+vs2yZltRfF2enZ/ESJuzgqlhWX
	 jfkepiW24ohmDi+FYllg/ZqutH+Ns3USRRtfxJ96jWl7k6wgTa2dj+JIOSeAAmFucZ
	 CRjdLvlMvXsJnFbdIwSPjG1AovcZeMYzlM3fLOBll0zxb5fFAAKih7B2U2jVEoekga
	 z+KYjIifZJKOok0mu0bLpjDzK65WGiaFC16yoWqrVh8X3OPpOBxpisYs9tLZW4Ie56
	 HS93DrRMHyP3Ih1iyEq5z9zWfNHmyBMuCElUTypZNDWGzsMpWx03KXmhjgEyoBCI8B
	 18Yc0vcW+F8jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8sWPImbinDo; Sun,  4 Dec 2022 11:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E88B6401C2;
	Sun,  4 Dec 2022 11:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E88B6401C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E258E1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B25EC60E44
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B25EC60E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofuXkgZPZ5-O for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Dec 2022 11:21:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AAB560E3B
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AAB560E3B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:21:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7E01EB8069A;
 Sun,  4 Dec 2022 11:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07299C433C1;
 Sun,  4 Dec 2022 11:20:58 +0000 (UTC)
Date: Sun, 4 Dec 2022 13:20:49 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
Message-ID: <Y4yCkQh6F/qtsAct@unreal>
References: <20221201102003.67861-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221201102003.67861-1-akihiko.odaki@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670152860;
 bh=qJqhP6XK8dsdvrn2PwKJvrIom0XMMHhvRQlCW31oCgs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MH2NmrX8pdmpi7sHzYOwh8Wp9CxfSLhxSOwN7MJH0GrTdLS6h6vZQs7AMvyt6DtYr
 QQmA1TLoCbXKnHsiAxIj0FznfmCysD8jSHOUfMcORcycanAk4xdQ55zKftddux764x
 fG196F6gte5huO5q4HvoyuL5zh5j3yJ2syhDVRz6DMIdANN5z5MAjOktu0q4yay5jp
 ENAbuxwdMPQxS0c3BdaL5VAVmrQhJEmdm2H9sSZokRIMF6OXeODX1bc4N8Ew9bzgtQ
 qL51RBBHN8KyAjaEtCpIN1tFQUJA+XtytQoDq1r+3PDhKXu26lERruFV5EcqfehQ+S
 fHOBvC9L753OA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MH2NmrX8
Subject: Re: [Intel-wired-lan] [PATCH net v4] igbvf: Regard vf reset nack as
 success
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 01, 2022 at 07:20:03PM +0900, Akihiko Odaki wrote:
> vf reset nack actually represents the reset operation itself is
> performed but no address is assigned. Therefore, e1000_reset_hw_vf
> should fill the "perm_addr" with the zero address and return success on
> such an occasion. This prevents its callers in netdev.c from saying PF
> still resetting, and instead allows them to correctly report that no
> address is assigned.
> 
> Fixes: 6ddbc4cf1f4d ("igb: Indicate failure on vf reset for empty mac address")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
> V3 -> V4: Removed blank lines between cases
> V2 -> V3: Added Fixes: tag
> 
>  drivers/net/ethernet/intel/igbvf/vf.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
