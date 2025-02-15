Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F2A36FEF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 18:43:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E976C60B06;
	Sat, 15 Feb 2025 17:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BazP1JRGb3dz; Sat, 15 Feb 2025 17:43:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 199DC60A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739641425;
	bh=VBg2GgdLsT+zq97XUvRH/3ofGVE8HuQW8nzA7GYu53Q=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZNDB0zDj+BvREgvo6cZf61ccHEk/2U49xahrJN+XJHR5Zm/uBCitwjmlngoSVzzpU
	 ZQW0xttx0nkbQWZ9+bfTBYKIY7nJP2At8UEyzydlexuLfwqvL8xJHFlzLPClIxucKM
	 ObWui1wTSGyZC3rEra+7zIW5wyzUhS3gQwv3CienHapjlk1mH5XMFC50mmuGrPVV7n
	 qSomAh+LOxkCid9nXISy1oKEAaRqLhhWkuaKRf0/coFchaHmycX/Xhh1XHJhD9KLYT
	 bQjJ52PQaRpMgq6Wkwhkj6hB+A3j8CZIeKjxBHBjLy0WqMhqzyGJFn0czDADmBtHJ5
	 KyZUTHrIz2Mbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 199DC60A5A;
	Sat, 15 Feb 2025 17:43:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F41F3DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1E9284753
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6HXGDuLnl9e for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 17:43:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2DADF84726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DADF84726
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DADF84726
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:43:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C75E85C3A5F;
 Sat, 15 Feb 2025 17:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4305EC4CEDF;
 Sat, 15 Feb 2025 17:43:39 +0000 (UTC)
Date: Sat, 15 Feb 2025 09:43:38 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com
Message-ID: <20250215094338.7863bcef@kernel.org>
In-Reply-To: <20250215094154.1c83b224@kernel.org>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
 <20250215094154.1c83b224@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739641419;
 bh=VfOOS1YHUqpbHmHcFRCQENbIsSwwTN2cG6MMrPqNKik=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OvNDypyT1pRZL4Nco1Em7BH8pbwEG568ld6rGu597ykOm1MDL3JzqfGkLpwDJCGR5
 uMgHidFujqZVzehQ7bg7Yll799xcdz0KF11SlAqpgJujh6IzHgemu/l3tGTJYFR3zS
 v+pwnl+OmCjvU4i2YxdwPWnX8vjfpnmgeL3QAD71ZC31J7ecPxmE18SDcIkKesotET
 V2ZNbIKvRd1FIW06PbaU+T77ZeE6ObskOEyvdOPaOpbiqNH2YPfHdKtGWJfjDEkoFx
 b/ikRad39DGk90R58/T4nRB/rLtkAeHaWCmvBbH06h1ppyJNDDD4ipz1V9QrLXIrWH
 mI1OecwP9o/uw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OvNDypyT
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/6] net: napi: add CPU
 affinity to napi->config
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

On Sat, 15 Feb 2025 09:41:54 -0800 Jakub Kicinski wrote:
> On Tue, 11 Feb 2025 14:06:51 -0700 Ahmed Zaki wrote:
> > Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> > after reset. However, since there can be only one IRQ affinity notifier
> > for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> > management in the core (which also registers separate IRQ affinity
> > notifiers).     
> 
> Could you extract all the core changes as a first patch of the series
> (rmap and affinity together). And then have the driver conversion
> patches follow? Obviously don't do it if it'd introduce transient
> breakage. But I don't think it should, since core changes should
> be a noop before any driver opts in.
> 
> The way it's split now makes the logic quite hard to review.

Ah, and please add the patch with the ksft test I shared earlier to
your series:
https://github.com/kuba-moo/linux/commit/de7d2475750ac05b6e414d7e5201e354b05cf146
it just needs a commit message, I think. The prereq patches are 
in the tree now.
