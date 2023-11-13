Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 926DD7E98FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Nov 2023 10:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1E85415BA;
	Mon, 13 Nov 2023 09:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1E85415BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699867888;
	bh=i5zEpmPtBw5XtQitKT5G21qYQ0TqqhYyYiMomVCSelg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ep6CTJ65QJPUoRwNueoQo8vezhuMGsZSnhnI5OFIINjDiSCXeDXLXmjmVKxt20Lw0
	 a3arSCUzYEmHUUfC5qGlWgAia0L9LgyzlTyfOXtZDQOt0jI63hjkl94yq1nsXhDbhU
	 NQP/RZqVPKrZ9Nqc1ChYh0vnaUUbmBqXBo/e3a9Zf/1TcPG4Zcd2I8guAapD7e2t+4
	 lglh+7nV2/J0p1caVQ4e/kZU6144g+CHnJog67ZSC08k8SzQXu+y59f3RF9S4g9g6T
	 Uc4H7D2amAA0WzEVNf94V7qkAa9Ci0bmdKOgDrSJYVaUHxscAxUHXCYZkJ/1vmWxN7
	 xX/KAVSg0TpSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GuxM6lyDntMs; Mon, 13 Nov 2023 09:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67D9F415B9;
	Mon, 13 Nov 2023 09:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67D9F415B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 362361BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 09:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B7A04159D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 09:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B7A04159D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2EbaLUVGjXxV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Nov 2023 09:31:20 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ABCD4155B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 09:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ABCD4155B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 8A4ADB80AF1;
 Mon, 13 Nov 2023 09:31:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53D23C433C8;
 Mon, 13 Nov 2023 09:31:14 +0000 (UTC)
Date: Mon, 13 Nov 2023 09:31:12 +0000
From: Simon Horman <horms@kernel.org>
To: Kunwu Chan <chentao@kylinos.cn>
Message-ID: <20231113093112.GL705326@kernel.org>
References: <20231112110146.3879030-1-chentao@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231112110146.3879030-1-chentao@kylinos.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699867876;
 bh=6g9ZPv/bZJQ0HXiclJLh3+yq8Pv2lg/WXevTxvtUCrA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G914O3R/a97wzo6qnjURBitOPu69tSdJZ0rTya2wCnA1rJDY22wSJ50s0Q37Ri3xX
 Z4ypgsQWuB/eQmOQ6wR/rkkjMdzZ9KsmNXzE1Tyhgr5480pa7/ID6sfRwQe1Ks4fKS
 hsRQQsT+ynBXyUXNQzi4B8R8Nd4a4PKZ+/Yh/AG4XdbQPsDwQ7ZtSr9f6Rg0CUOd8C
 Dxp/kbDisHW74tJ2cZZEQnvIT4ZoQns1HQWRpGyVdHWt/SJFLUU7Kr9E2g2skoKOTd
 9/LQ2mUljgfvGusmauMFMAugjEDMUS2R7R2zogtUzWECqyzkWtEl08o7YymnbtioSA
 WEO2POoC0ZyYw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=G914O3R/
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 12, 2023 at 07:01:46PM +0800, Kunwu Chan wrote:
> The size of "i40e_dbg_command_buf" is 256, the size of "name" is
> at most 256, plus a null character and the format size,
> the total size should be 516.

Hi Kunwu Chan,

Thanks for your patch.

I'm slightly confused as to why name is at most 256 bytes.
I see that name is IFNAMSIZ = 16 bytes.

In any case, perhaps we could make buf_size dependent on it's
constituent variables, to make things a bit clearer and
a bit more robust.

Something like this (completely untested!):

	int buf_size = IFNAMSIZ + sizeof(i40e_dbg_command_buf) + 4;

Also, I'm not clear if this addresses a problem that can manifest in
practice. Which affects if it it should be treated as a fix for iwl-net
with a fixes tag, or as a feature for iwl-next without a fixes tag.

In either case, if you repost, please designate the target tree in the
Subject line. Something like this:

	Subject: [PATCH iwl-next] ...

Lastly, when reposting patches, please allow 24h to elapse since
the previous posting.

Link: https://docs.kernel.org/process/maintainer-netdev.html

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
