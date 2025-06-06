Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5806EAD0288
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jun 2025 14:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5552D84051;
	Fri,  6 Jun 2025 12:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mfg7Wxbxv7WM; Fri,  6 Jun 2025 12:50:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF0B8840CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749214222;
	bh=4ZAW7+S8bpHddqQXtJoud0zZfOghB5b09MhqUe2ve9E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9BvBH+q9hig7W+8gu68MN+kqUFiufHrAqrheoOR2URHP8EHSwWCHfW5cLynobhgtd
	 1VY1jmdu1IfyvOgaC11eyVehAgD0E8DFciYFGVkb3dy/L06AelXtaxI0NFrBmYkDtc
	 Wq+zpjmYOI+2x9Aj6l8POaFxcktVal6zejSrX60iu1VY2kbW/Q8yaF75wtDf24ysT5
	 LuJliwFCZWhpz2DoQhrmXNFrwhvU5NrhVVa4BanK1IJdG/bIwEEGx0Vw7g49fLNHkq
	 aDv1H/XdIANlP4rWg+KGy44mlOIK6xTcFZ4G2Z7jUh3TjqkX6YaT7IMMdiQUytnqEM
	 /fqn5uKdwdjgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF0B8840CA;
	Fri,  6 Jun 2025 12:50:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05513C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF13D403E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QKbAqF-zoLO5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jun 2025 12:50:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3AADF403DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AADF403DF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AADF403DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4DC215C4BF4;
 Fri,  6 Jun 2025 12:48:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFE22C4CEEB;
 Fri,  6 Jun 2025 12:50:16 +0000 (UTC)
Date: Fri, 6 Jun 2025 13:50:14 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>
Message-ID: <20250606125014.GB120308@horms.kernel.org>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
 <20250520110823.1937981-7-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520110823.1937981-7-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749214218;
 bh=6mtQXa9APW+oxzhnk0qABoX8QSUiF2tS39RTUQtorzE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tIqpasancCrtpz59LbEcXnql1PmHt/NeSqa1iODu+nBkeQIZrOl+nTbMGd0wJ+Ayp
 +kb33sR1e8LkNvtzc0hcDDdaB8J0rMnRyLTozj8YWTW523JyS7S52r1XsxnqyVbKIz
 vHXoqwb1czNnXxlfzOwMDoyw7+bXQj/dPEe4R6cukU4X3l/eO8TlDxsHZVQITjsadw
 Jn49sCLE3g4tzXf1OeBTt3tus+If754bGsFNnMJgsi32onMwyQQ+G2xVmvjXTt/EsD
 4lpwMqkK1URntMyVRh9P2fEo70xqbsLuHtTgpgPDbpo3ZKsNdHpFKNwP+k+XEOQHlQ
 YlKmJP6Uemtng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tIqpasan
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: skip completion for
 sideband queue writes
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

On Tue, May 20, 2025 at 01:06:26PM +0200, Karol Kolacinski wrote:
> Sideband queue (SBQ) is a HW queue with very short completion time. All
> SBQ writes were posted by default, which means that the driver did not
> have to wait for completion from the neighbor device, because there was
> none. This introduced unnecessary delays, where only those delays were
> "ensuring" that the command is "completed" and this was a potential race
> condition.
> 
> Add the possibility to perform non-posted writes where it's necessary to
> wait for completion, instead of relying on fake completion from the FW,
> where only the delays are guarding the writes.
> 
> Flush the SBQ by reading address 0 from the PHY 0 before issuing SYNC
> command to ensure that writes to all PHYs were completed and skip SBQ
> message completion if it's posted.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

