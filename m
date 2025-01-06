Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3A9A02831
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 15:39:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F8E4069B;
	Mon,  6 Jan 2025 14:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGuEgHtbbQz1; Mon,  6 Jan 2025 14:39:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D01BF40638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736174351;
	bh=+irClgxKYyzGHu44XT5zhPUUsQotWtyPW6g46kIyBAQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q0R8FN3jUEaBFsFqyPk7u6NqdoPL8XnRNEywmqOHywf8SppXIcLAvl7X9SDycI+zz
	 1FGLc3vDBEnSeKI2ZiKTkwUp5EaOXC3PcBgtdKRHgUGpsHD7xEpePhHjsedcPVr8C+
	 T0bq1nIfXQvhsbo+fIwZBTMMcIqy56UzwBzFDhPKTmtgvdKHoCAC6T3FWu82vV16cq
	 M1HaaiZVZzvlk/KWklv9+MyTTPFhn+FWg/wdC17t/19Mlo8WSdy1OTnPXn09mGn5cL
	 viXjOwHdXouunI1k3jjUhzVjqN/b9cOvMAW11USINFMz9NorKBT+00Wb+NKOtMF4ch
	 89jgJrvnl9wuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D01BF40638;
	Mon,  6 Jan 2025 14:39:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D15CBF1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 14:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC84C40638
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 14:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d4UNvWPIr9Ny for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 14:39:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6BA24063C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6BA24063C
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6BA24063C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 14:39:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 81493A4190D;
 Mon,  6 Jan 2025 14:37:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2190BC4CED2;
 Mon,  6 Jan 2025 14:39:05 +0000 (UTC)
Date: Mon, 6 Jan 2025 14:39:04 +0000
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250106143904.GA33144@kernel.org>
References: <20250102190751.7691-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102190751.7691-2-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736174347;
 bh=ViUj5vxDy9vA17JFA/G+NzO8PAPLFddSdnNSeiQrLMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJtJYgDa+87K+ib6EXxI4AdurM7hT9IYUhpqrNnrovUjqtm9a14QenP76rCGAdBi/
 E860HObcGBXunCpA8Q4eE3QgKaM7UWcYb4hW6qXPYo6e6qFaF2TSL5ed4T0scU8zvU
 lTd/VyiVmxXeOU8MAkNP9KOPZeIaQ5yfo3altCOEmmrEiD3cTgwxIvw26p1b68+nTB
 IYnI32aMb4Agp0sxPkup9uaIf0ipPM3NBIkRrEr7Gv6TbBuWOpx2Ptf4qQ2xM+AHTK
 c1P/W/GZOEexA7uQ9dsXM7Dp0QqlWOjGbyc+DUGh2YRP8g0UOGjaKtycJhLUD4eqZJ
 1EV9bFzstcJGQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EJtJYgDa
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev slow-path
 in LAG
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

On Thu, Jan 02, 2025 at 08:07:52PM +0100, Marcin Szycik wrote:
> Ever since removing switchdev control VSI and using PF for port
> representor Tx/Rx, switchdev slow-path has been working improperly after
> failover in SR-IOV LAG. LAG assumes that the first uplink to be added to
> the aggregate will own VFs and have switchdev configured. After
> failing-over to the other uplink, representors are still configured to
> Tx through the uplink they are set up on, which fails because that
> uplink is now down.
> 
> On failover, update all PRs on primary uplink to use the currently
> active uplink for Tx. Call netif_keep_dst(), as the secondary uplink
> might not be in switchdev mode. Also make sure to call
> ice_eswitch_set_target_vsi() if uplink is in LAG.
> 
> On the Rx path, representors are already working properly, because
> default Tx from VFs is set to PF owning the eswitch. After failover the
> same PF is receiving traffic from VFs, even though link is down.
> 
> Fixes: defd52455aee ("ice: do Tx through PF netdev in slow-path")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

