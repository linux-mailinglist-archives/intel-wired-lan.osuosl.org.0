Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3333E7E0FA1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 14:46:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C394282288;
	Sat,  4 Nov 2023 13:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C394282288
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699105613;
	bh=cEPGa5QqT+X9tNTL54pE7siK1BY7AbLAEYggME1uhJE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iADJbWSjkTTp86B0HGwOP1wwQ5XLoichoDw5b7fJEfHv/BXO2ulo/C0xV8dH9h2Ex
	 fuRz72KraFdAgrBBa5t6fXQr57yScWBBc3niPiQrXxrXFwNTkcgo70Q851HFUT7UgU
	 u6L9wQWcRr+mb//rtfZFscHRhsBnuqd4bSK+V9zdSnyQspX/31mE+61yb1PZwH8Hfm
	 Ji5ws/Eox07hpJKv3EVi0RIB0+kFkq0KY36spY6Fj6HE6/3JbmRQSixdiCAKf5PSR2
	 /rd6dQD8twqmd7P1RG4xL2tenTZPmwq9xaSGRqBLb5eYWxfSOeXDnyUXZrcJs76Axl
	 fjJDcFZzo5iZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AnF87gSQF5Xq; Sat,  4 Nov 2023 13:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE1AF821E0;
	Sat,  4 Nov 2023 13:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE1AF821E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 002521BF30C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB72B60F34
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB72B60F34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmEL2vymIr56 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 13:46:47 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD6EA60BDD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:46:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD6EA60BDD
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C4881B80ABE;
 Sat,  4 Nov 2023 13:46:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B7F0C433C8;
 Sat,  4 Nov 2023 13:46:37 +0000 (UTC)
Date: Sat, 4 Nov 2023 09:46:29 -0400
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20231104134629.GE891380@kernel.org>
References: <20231025144724.234304-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231025144724.234304-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699105602;
 bh=QMqFcBbEpNpMb7yuFpbeOw27rQyg0/rxF6KLW+yR+Mw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KEcfw75c1l0aeXIx6FK5Zge+EUzuAdjovHzAl6bn7sARQ/RKL5SYw4qNnfiu5CkSW
 OgFI1FYCsz9/oxdlCQTqKkmOTTaRxcSuDw2vOGpkN3M66b7gLUukgfBiFahJuZb0//
 eyaRWZ1LwKBnjg0HIewqgSdyv0h0iJPq9jLPMvRzt9Sn1S8JCZBq9Z+3nECHxqkBHf
 GgFvSBTaxlumrxkILv5dtH5uEz8NLFKqDJJ2uaNX4DIeDDE147h0SNu1dwehUWQQ2E
 /Ib6toqQFYzLcEZC2beVuG67rnKX9P+9CbIzqfKUA63nrM22rDGDJQC8SG3zl25QeO
 QGMmB7Lda7qng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KEcfw75c
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF-VF direction
 matching in drop rule in switchdev
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 25, 2023 at 04:47:24PM +0200, Marcin Szycik wrote:
> When adding a drop rule on a VF, rule direction is not being set, which
> results in it always being set to ingress (ICE_ESWITCH_FLTR_INGRESS
> equals 0). Because of this, drop rules added on port representors don't
> match any packets.
> 
> To fix it, set rule direction in drop action to egress when netdev is a
> port representor, otherwise set it to ingress.
> 
> Fixes: 0960a27bd479 ("ice: Add direction metadata")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
