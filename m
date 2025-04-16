Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2FEA8AD20
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 02:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58AF68346C;
	Wed, 16 Apr 2025 00:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TVmOhUGlClst; Wed, 16 Apr 2025 00:59:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB6808340C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744765193;
	bh=g/67YHTEWGBhb8hK2XA67rXZbWA1CeLBweZw5/jNpLA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P6Wf4OcxyrhRFGj8qwrZXS+Jt4eXoZLBKkA9VVgv+iqFnXdIdWm/ZfIZEO/kgQfxH
	 +xkfV9QBUXaDATmyNuLZWKtHMvxhhkfdQ0j4NV35T4BK3v3Y6Yn7AkBKZLaWhSrFlE
	 q70ienl9TvJXn7Ikbe0ehNoG80X9/cgFScscGLOM/dh6tNK9BRHmMDleuOFN168ryd
	 fu21y4gSGQHWKAVHiiTD3nT+kpq6RzRrXZIUp/Gt6AtqV3vXKBeovsH+aptC0T4eaR
	 Hw4J+//9wCa/15MCEwldlPJbwP4pLhxiwO68IjTOCz9lSL51YjxYLkFLZHP320HGGE
	 HlHl7gbPY7JrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB6808340C;
	Wed, 16 Apr 2025 00:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45F3FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 00:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36FDB610F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 00:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cs3Kpw5TiNew for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 00:59:51 +0000 (UTC)
X-Greylist: delayed 350 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 16 Apr 2025 00:59:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB3BF61028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB3BF61028
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB3BF61028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 00:59:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0F78945157;
 Wed, 16 Apr 2025 00:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B1BAC4CEE7;
 Wed, 16 Apr 2025 00:54:00 +0000 (UTC)
Date: Tue, 15 Apr 2025 17:53:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>,
 "Zdenek Pesek" <zdenek.pesek@gooddata.com>, "Eric Dumazet"
 <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Ahmed Zaki"
 <ahmed.zaki@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250415175359.3c6117c9@kernel.org>
In-Reply-To: <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744764841;
 bh=zTO0PGprkgHrXrHtmLAb9UQPjHOxwm5tC+XNO/WFDMM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gpYpTJ/XcB6rNrlzdN38czMx28ncPMQWzIk4XV0cH7UgdExtg3aRPzYT/S8Y2y0OH
 xQm3dnFps5nHcA6JK15Vp1xw2yTsebsBUkxslUPoG3DsYdqMsf8gz3WKMZCEMMtTBj
 NTtrdi9tYicLe4ALM03thVyzN2SW4iEVCq4nFasbLcEx3zgqhwYAQOB4FDItwuYLaR
 CE//60QH70NzCGgXI7NHPZKumXZ8W23OyEQpd4IxnVzG3oyTXu/+btdI8ya4Qltu0+
 0dMTvc8vMkKV/+76f9GybP0MX6TI2LAbbry5SQQ3mY0x1cYNOLHRiwyhr7fdXbl5XY
 Om/IrgVbCbtUg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gpYpTJ/X
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Tue, 15 Apr 2025 16:38:40 +0200 Przemek Kitszel wrote:
> > We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
> > "ice: Add support for persistent NAPI config".  
> 
> thank you for the report and bisection,
> this commit is ice's opt-in into using persistent napi_config
> 
> I have checked the code, and there is nothing obvious to inflate memory
> consumption in the driver/core in the touched parts. I have not yet
> looked into how much memory is eaten by the hash array of now-kept
> configs.

+1 also unclear to me how that commit makes any difference.

Jaroslav, when you say "traced" what do you mean?
CONFIG_MEM_ALLOC_PROFILING ?

The napi_config struct is just 24B. The queue struct (we allocate
napi_config for each queue) is 320B...
