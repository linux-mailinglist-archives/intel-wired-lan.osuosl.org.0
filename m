Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36B87627DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 02:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4798840BB5;
	Wed, 26 Jul 2023 00:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4798840BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690332443;
	bh=0vjgFMmNY84ZBtaWGbo+Hs2De3Cb/LSxFMP5NSoezI4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LKLVoY9ID1Hn4EiNlkeFrEb9hYg5Ew4uvbqd4lXn2Ab2R09YRhUKhAxbPVSBCuY4a
	 CfVrYuSphiolnFSij3nTBFE0bg8f4K6FqZN1Eid7wiu2ICfIP17evY8AbkuKWuAVel
	 HQ+AzOrfPKQfUMe/o1prI3lSAVgqaepiwGXv0ZUV1ZVUuHMobD4IY9y0eOmzMs/RmJ
	 IX0dSfrQYR+arR7BSeq4MAgEjhIvrbGOsdd0zPGJZC7q9Ii4KFrBWztwm1BTUKIRsx
	 q2vhcpy+Mi2Q6vau9m049LybhK93y5YCpmEOBPSJtDoWKSeQLRGTlxyqisMUwdKkJc
	 IgQd8zjCpQ9jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4CKB2oJWyU8; Wed, 26 Jul 2023 00:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17B30402EB;
	Wed, 26 Jul 2023 00:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17B30402EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9BF81BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 00:47:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BCEF40BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 00:47:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BCEF40BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uoBRXp1m9I8g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 00:47:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFA0240191
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 00:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA0240191
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 76FE26166F;
 Wed, 26 Jul 2023 00:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F5F9C433C8;
 Wed, 26 Jul 2023 00:47:13 +0000 (UTC)
Date: Tue, 25 Jul 2023 17:47:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <20230725174712.66a809c4@kernel.org>
In-Reply-To: <ZMBf3Cu+MgXjOpvF@debian.me>
References: <e79edb0f-de89-5041-186f-987d30e0187c@gmail.com>
 <ZMBf3Cu+MgXjOpvF@debian.me>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690332433;
 bh=Wl5oBCsN+Rpuig2vlDDIl7wkx5DAqU7N9LpCXvvXqaU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tg2/mzATAsk2JQ0uYNT3N+GHenozvBgwCi5f4JqKBrUuAG9hn9CkOh1PBed16pjnw
 /+7KKpB/o60eGaGYvknDV1QoKFEpah9DpJ1b9dIUklCyhc0mP+mJ3ZxibWx8ciQstT
 rVQfH4ZZEWFWoPDVdydQQB9JFM/5JKe4g5kVpJGeyL11/FMYc/S69r9DsK+G2JyNjk
 o38r2xCRsC4a1uex6J70uX+oRoJnGsGYOvIYly5yvpmE/he4ykCc4IxsOI9jliSauJ
 3J0YBUclGBfQLxzzUgGSdzYhmdHFF7b/GcsQGDOCUfbo6qapiupE3r/DdNEYaUKFev
 T8loQZuGRMA9Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tg2/mzAT
Subject: Re: [Intel-wired-lan] Unexplainable packet drop starting at v6.4
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
Cc: Krystian Pradzynski <krystian.pradzynski@linux.intel.com>,
 hq.dev+kernel@msdfc.xyz, Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Eric Dumazet <edumazet@google.com>, "Linux
 regression tracking \(Thorsten Leemhuis\)" <regressions@leemhuis.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacek Lawrynowicz <jacek.lawrynowicz@linux.intel.com>,
 Linux Intel Ethernet Drivers <intel-wired-lan@lists.osuosl.org>,
 Andrzej Kacprowski <andrzej.kacprowski@linux.intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 26 Jul 2023 06:50:52 +0700 Bagas Sanjaya wrote:
> This time, the bisection points out to v6.4 networking pull, so:
> 
> #regzbot introduced: 6e98b09da931a0

Ask the reporter to test 9b78d919632b, i.e. the tip of net-next before
the merge. It seems quite unlikely that the merge itself is the problem.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
