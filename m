Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 617E58B3F42
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 20:29:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 062AF61486;
	Fri, 26 Apr 2024 18:29:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id diHu0uFQk_AU; Fri, 26 Apr 2024 18:29:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61B9D6142B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714156194;
	bh=4TPrsqGa9ByEnHg6yK28CDfJ0xvKv2LKelgS5Q++4ng=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YmZvcSrqI+a40ycaXaTwzDIHxlSGrWlaPuSv1uFOhG2pbF0SytNubG31BRJ5H8OsS
	 rO0B67Qk2WwULNl1nXDgNuxq41xpc+of9h+KqFmNLD+1ovbbM82QVAXMhMhufz2SzO
	 /zydpImoxPAa9fIZkamvnlP0KgffAqscqNeXMp+U48zkYwjYfzqWDNi1w4fQDqb1W3
	 +r75LZ+FdRAVi5hhdWKLQaAvGuKB9yG+zUayief3XowvBCdYyf2GS+KGQ/xUfhLb+3
	 AQyOyv/rMmeh1x5YVQh1+g7TgzOs5kC/c4YGx7IWF0De8//j7BiCznfTDTciFFtKjt
	 j7Af/cPHyAYRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61B9D6142B;
	Fri, 26 Apr 2024 18:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A1961BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 18:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11840410A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 18:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F1PiQk69lael for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 18:29:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BB4140949
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BB4140949
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BB4140949
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 18:29:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E777460F4F;
 Fri, 26 Apr 2024 18:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64D6EC113CD;
 Fri, 26 Apr 2024 18:29:48 +0000 (UTC)
Date: Fri, 26 Apr 2024 19:29:45 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240426182945.GC516117@kernel.org>
References: <20240423143632.45086-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423143632.45086-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714156189;
 bh=mCu4M4go0z7z0UPv0dVxjtKKrRzycrwc/HpPtbX3gYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iohnqGd6ItTP+KRtdLxIftUIYMsrzLqw0wA6MLq9t7xKvSD3JK/R5cjwUwrhj3CJo
 ZUPftZrE/bwBNA8AGFWKDCUWGWuxeCSXy9x1zDj/J99c/jDdWuH7c15ENyo19bshf+
 Zuqd4aYA/PgpwUECdsoG1HONwRjjY2ToO0ff1bNnRoNNe7XUeJBhEB8B0chJJpsZop
 Fk8l407h5O6zPRXJDnvxp2JtJjab0nDAJIk91QjtYvbEtbmHLsdDEBX/PDcMjJO+8/
 J7X05iZzdAaEtHajitwjAW9HzC3cJAnd5yzqu4z4A1YC9tdBG7s4qFtYre+1sHVj7L
 3a7wBVK4m+wbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iohnqGd6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove correct filters
 during eswitch release
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 23, 2024 at 04:36:32PM +0200, Marcin Szycik wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> ice_clear_dflt_vsi() is only removing default rule. Both default RX and
> TX rule should be removed during release.
> 
> If it isn't switching to switchdev, second time results in error, because
> TX filter is already there.
> 
> Fix it by removing the correct set of rules.
> 
> Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> It is targetting iwl-next with fix, because the broken patch isn't yet
> in net repo.

Reviewed-by: Simon Horman <horms@kernel.org>

