Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9D8929D0D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 09:30:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 073A640482;
	Mon,  8 Jul 2024 07:30:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TiyiqfEs7Qfi; Mon,  8 Jul 2024 07:30:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B49AD404EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720423800;
	bh=kiut70aOGdyd/ifTH+RPk2Fo2WrYA8HQrg7pPfg9eII=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=COkGkvoZXgFvwMQGtO+N4SHKYNvWX0s8wAL1DohB+55L3sjgaoMhIkQyYD4fOyGFE
	 CI+Ci9j9Z9+wpzCU+uaebbNh7l3kxSi/II/H/+1zyKFqkadVz9bCahmM1+A5jDYdKF
	 BKkML7YYzyKYm+KstOJPPEnOOQH/QaXNzqUoqb+JSVnHg8al17FlsHJTCznaas6pOx
	 sk2fGPG/yhQl3NDGK2fkObIweqBFmuDDQ3GR0vr8Euf90U+ImoJvjS0yPBr9tktq0m
	 Np0c9gb75iFWQA3FQCxj3CVZ7HSHtFOKMbdkmZlm61HTOU6MD6105D8TV8kvFizsJ1
	 bPLijubHafn0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B49AD404EF;
	Mon,  8 Jul 2024 07:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A31D81BF425
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 07:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F9246069A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 07:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PPY-96HTzjid for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 07:29:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8FD40605FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FD40605FC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FD40605FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 07:29:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4A2B3602E0;
 Mon,  8 Jul 2024 07:29:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95F36C116B1;
 Mon,  8 Jul 2024 07:29:53 +0000 (UTC)
Date: Mon, 8 Jul 2024 08:29:51 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Mishin <amishin@t-argos.ru>
Message-ID: <20240708072951.GG1481495@kernel.org>
References: <20240706140518.9214-1-amishin@t-argos.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240706140518.9214-1-amishin@t-argos.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720423796;
 bh=A0I4MzbtTvvJyJRp/JKnljUts9C+tJ9eYvgSqnXk+fY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LegcvPgfnxhyjE3ZR5ztSBdKfj41ZUFxx9ukexiWhuRoebuEsGdT/SMlWmHX34FaD
 VSBCQ49fxtDb1tBMYZisJHpk+s7kGfKbTRxusze8fg6S+QoTlm4fMsTMrpCDw3U2j+
 x7PG4XEort6jBSpDWMDBfLnnSk1FYSYagJzmiX301zhXA2kj1G1WfKVInU7Zvz8l/g
 xODBMX5473EfNgGuerxBisMJKRPE9iTmQQ4DwI7Ihd1c4GQE4PxvR5zPXXwCc6d1dK
 bJOBkzb5YBekS8wGoOe65SqvskxqjsPkoq7v7it5cFLuRc929B9szuVhDxCC5TWY7P
 6IZYMGOvu7aZg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LegcvPgf
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Adjust over
 allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jul 06, 2024 at 05:05:18PM +0300, Aleksandr Mishin wrote:
> In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
> devm_kcalloc() in order to allocate memory for array of pointers to
> 'ice_sched_node' structure. But in this calls there are 'sizeof(*root)'
> instead of 'sizeof(root)' and 'sizeof(*node)' instead of 'sizeof(node)'.
> So memory is allocated for structures instead pointers. This lead to
> significant over allocation of memory.
> 
> Adjust over allocation of memory by correcting devm_kcalloc() parameters.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Suggested-by: Simon Horman <horms@kernel.org>

FTR, I did provide some review of v1.
But I don't think that counts as suggesting this patch.

> Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
> ---
> v2:
>   - Update comment, remove 'Fixes' tag and change the tree from 'net' to
>     'net-next' as suggested by Simon
> 	(https://lore.kernel.org/all/20240706095258.GB1481495@kernel.org/)
> v1: https://lore.kernel.org/all/20240705163620.12429-1-amishin@t-argos.ru/

Also, v2 was sent less than 24h after v1,
please don't do that when posting patches to netdev.

Please do read
https://docs.kernel.org/process/maintainer-netdev.html

...
