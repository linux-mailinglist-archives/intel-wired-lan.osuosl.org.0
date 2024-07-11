Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD6892E2B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 10:49:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 407F74168B;
	Thu, 11 Jul 2024 08:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UzJP3kEQStby; Thu, 11 Jul 2024 08:49:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19087410BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720687745;
	bh=pYchy3My81Vc+ZTBbj/Mwa89NW67tIeKxXHGx9yC0EQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7rQhx3r2dNJFh5kXhI225+C90EA29scY897q46P3gA3uwQfKrNLJGU2T9zlN0Pgdw
	 ZFSMihfbpn3Liyw4EdtGIC5k6DxvqXkek7/VoAFrdMcqipLDWuF7Mxi1wCx/DrPZvU
	 IAo4ILAQPAex4WGVhlXKFC63eu4sg/BKFWqWymXGGcCoU7e5x+DnJRmuy3VqDqgy1I
	 GQjVOTblnWHn+7iMHyuCQ2Y31CZTV6BE+NCsKYE6ycwKDANsM8HH+6AxKVVglfy7Rr
	 xUIwbMGf17Cw3S8HsyzuypyFkSqTq3yafJPvGQBwr6p7z+UKJsN/nDPJ5k/sLwjOdL
	 43WblI8lkPWFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19087410BD;
	Thu, 11 Jul 2024 08:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8581BF471
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 08:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5686380CD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 08:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egkYNRNmG1uH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 08:49:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 836A080C9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 836A080C9A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 836A080C9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 08:49:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 517FD61B32;
 Thu, 11 Jul 2024 08:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78717C116B1;
 Thu, 11 Jul 2024 08:48:58 +0000 (UTC)
Date: Thu, 11 Jul 2024 09:48:56 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Mishin <amishin@t-argos.ru>
Message-ID: <20240711084856.GB8788@kernel.org>
References: <20240710123949.9265-1-amishin@t-argos.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710123949.9265-1-amishin@t-argos.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720687741;
 bh=KvSh6XeA52JyOMfHv09Hn8dqnlUTpUE6bi2Cxcgc3ZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fR0alzbSMLlG8PEUDZzG2UHxWzI1XW8DEVXqg8wuYWbTmYJgOTfK3FLogTE/gLZuQ
 QP6mzkZ8VHIIRsXcca6bekX7QPUBWeWSWe84TBbS0SOwHAFSu/T7OdI2w8R57Y/Pg7
 1/OMdzHb18YgPUu7om/UqQX9AliwDgssniukFsjwTV0xVnjulCZcDJ8WnmKsuqYp2y
 tLi/VzXIfgJBDxmJuxk7lOWB2Oe68ETEeD5wI3uXv7ba/4xtvgh3VLyPpNKsj1gI/a
 YKNPGt1TwC0CDz2mUNKnmBfAvZAw+cZYHVdcwla7lc1+/nK6utb3Qu17L7Bw506F88
 qi1iMdZ9wFgDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fR0alzbS
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] ice: Adjust over
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 03:39:49PM +0300, Aleksandr Mishin wrote:
> In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
> devm_kcalloc() in order to allocate memory for array of pointers to
> 'ice_sched_node' structure. But incorrect types are used as sizeof()
> arguments in these calls (structures instead of pointers) which leads to
> over allocation of memory.
> 
> Adjust over allocation of memory by correcting types in devm_kcalloc()
> sizeof() arguments.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
> ---
> v4:
>   - Remove Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>   - Add Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>     (https://lore.kernel.org/all/6d8ac0cf-b954-4c12-8b5b-e172c850e529@intel.com/)
> v3: https://lore.kernel.org/all/20240708182736.8514-1-amishin@t-argos.ru/
>   - Update comment and use the correct entities as suggested by Przemek
> v2: https://lore.kernel.org/all/20240706140518.9214-1-amishin@t-argos.ru/
>   - Update comment, remove 'Fixes' tag and change the tree from 'net' to
>     'net-next' as suggested by Simon
>     (https://lore.kernel.org/all/20240706095258.GB1481495@kernel.org/)
> v1: https://lore.kernel.org/all/20240705163620.12429-1-amishin@t-argos.ru/

Thanks for your persistence, this version looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
