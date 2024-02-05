Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C15849896
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 12:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4918740BFD;
	Mon,  5 Feb 2024 11:13:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4918740BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707131639;
	bh=4AZxYmqwaymIsc6yDoQXabBaBGDCzn/70UsTw1vrbFc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9KZWSiOjXQF+bcw8Qhd8lhDTfR/d/ztbltH6QkcaxVo66YD0IpGg5vabjNR0K4s8S
	 7QiVmbo+eaWJ2tfJV5j8hs/eScdHGYrY9vpURy4OFjbo0nFlBb82V4sQ8JgdjfIDef
	 MLhd4Yy9NPZ7kmx/2/WLROgqZeVgj4ujVTV68DPjG9/LZHE7Vyr7N0C+s59OYGxqWc
	 tor0iTkIaTtDqfal7me8iRCbMqprKQREQ7Qqj2bUdc9pt3A+A+djHCERBkUhwQqp2D
	 iuJiT0WYfyEuNkzsCIic3wtG/jYSL9v3l5r+8259rjwwMXTDIpyb/2EKchKAm3y9nS
	 x7XFmvITJtQJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1l0XcHSPSeU; Mon,  5 Feb 2024 11:13:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E835540168;
	Mon,  5 Feb 2024 11:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E835540168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F17B1BF281
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8504981E98
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8504981E98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRT1KYYZII4h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 11:13:51 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BED9181E86
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BED9181E86
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 05B3860FF0;
 Mon,  5 Feb 2024 11:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF37C433F1;
 Mon,  5 Feb 2024 11:13:49 +0000 (UTC)
Date: Mon, 5 Feb 2024 11:13:47 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20240205111347.GI960600@kernel.org>
References: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
 <20240201154219.607338-3-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201154219.607338-3-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707131630;
 bh=4C6OaP/da9oAYOAJ5UNQpdN/3f2Bh3PxhZQD9fptMIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fDxROHG3q1HVAt47x/8I9P0mDDaOXFruXTQ1JghIJOh5m0mHSA6WJ6bPjEDcqCbmd
 BVhkDU1XdodR2VfwgCwIn/6KtiQV7EZgAjpHHtPKO6ej7m39oisjSInYURFExU+FeG
 zaUxzokuJUiZV2ywGhIo30B7o3uOrqcjfNXSvZvzXKhlqDZa0U4aHvMw/lX2Ck/Jxb
 CQuI5tLWPq3uyQyuMcqiFp6oefg304IqcYJKR3T7+8X5vdbL36fqz1YdOODAHAQ42N
 VZi+tp8YU3VrZR0ESBRqd6rFZYCXxa3RxHbrztIeCYcZ/VTMme8QpTglwRDL2p1NDz
 vXq18fVnkc0JQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fDxROHG3
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] i40e: take into account
 XDP Tx queues when stopping rings
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, Seth Forshee <sforshee@kernel.org>,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 04:42:19PM +0100, Maciej Fijalkowski wrote:
> Seth reported that on his side XDP traffic can not survive a round of
> down/up against i40e interface. Dmesg output was telling us that we were
> not able to disable the very first XDP ring. That was due to the fact
> that in i40e_vsi_stop_rings() in a pre-work that is done before calling
> i40e_vsi_wait_queues_disabled(), XDP Tx queues were not taken into the
> account.
> 
> To fix this, let us distinguish between Rx and Tx queue boundaries and
> take into the account XDP queues for Tx side.
> 
> Reported-by: Seth Forshee <sforshee@kernel.org>
> Closes: https://lore.kernel.org/netdev/ZbkE7Ep1N1Ou17sA@do-x1extreme/
> Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

