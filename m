Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 326306C1F07
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Mar 2023 19:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF1456101C;
	Mon, 20 Mar 2023 18:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF1456101C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679335646;
	bh=zdhfo5zaOSa+N6yeQ7tMcnM+fQCfnYhPLVfYmhyxTyQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7WgGIENcAeQeaI4AThdPSH6J343p4KKNwlZD7xLNzp0+So6yGJzsO8xutztzLoPKs
	 YqUD2I8c5DUVIDgviwb0V0s4wwsClOM5BFu6dyP+HvNnq5jOh0enVCXXu/MY/MYNDs
	 AP2IqLNma34XVGhbmhdMSgYxfpPYYtemTLgfMk4GXELTSTxlBEvepUuRWbBUPcd051
	 LNq18Kr1gCXZdhyH7sEK+hsoQ+eMkymbrV5fvjvaGEij7ddumNs1cjxxab3recRTKt
	 Ez3Bwzi+5NsUpchiTZEXJDTEwipQ0W0EH+rk3tnjm2w6Zyk5xpN4Oq77lOpTcLw2mz
	 siup5mBeN3Omg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcGFIiJnaGnA; Mon, 20 Mar 2023 18:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1A7760E6F;
	Mon, 20 Mar 2023 18:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1A7760E6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 117E91BF263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 18:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDF188141B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 18:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDF188141B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQHKIObwbwaV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Mar 2023 18:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76D1881413
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76D1881413
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 18:07:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5EFA9B8105F;
 Mon, 20 Mar 2023 18:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2642C4339B;
 Mon, 20 Mar 2023 18:07:13 +0000 (UTC)
Date: Mon, 20 Mar 2023 11:07:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20230320103103.22488dc7@kernel.org>
In-Reply-To: <20230317200904.3796436-1-anthony.l.nguyen@intel.com>
References: <20230317200904.3796436-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679335634;
 bh=36zZJaP15lU/DAfQXwCuDp6WzbDW9TdMEQ5YISr/ta0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TvJFUgOV4+CjcznHX3ztiMjH4e1finCQbN4ubA88P8XpXoh7G1XLJpawCFwIHDJKs
 06gvdS20jkoYFWDEC9N0qg0LbYj+9D6vmHcRxeBLXJ9uqptVnJ4xAL43CX3sVfhyPx
 neCJ3+G5mMfKBJs7Tn/3Hm7aFd75p7D/dT9B+2VFM0SpyoehCghdtpLG3d0CtmKTM0
 WJQqZiQzvHYkOgQzbvbY/KoNCokLIT4I7FSXxVzovEn3Pf6kiVaqBWVeo/4khFUuQm
 HkHEeAZEbjg/LlhuuhFOzNSazc61NOyZD/16dz0v0noC/8kQ/7oLgM09C14nl/FtPB
 bzczjO08Gi0kw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TvJFUgOV
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgb: Remove ixgb driver
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAxNyBNYXIgMjAyMyAxMzowOTowMyAtMDcwMCBUb255IE5ndXllbiB3cm90ZToKPiBU
aGVyZSBhcmUgbGlrZWx5IG5vIHVzZXJzIG9mIHRoaXMgZHJpdmVyIGFzIHRoZSBoYXJkd2FyZSBo
YXMgYmVlbgo+IGRpc2NvbnRpbnVlZCBzaW5jZSAyMDEwLiBSZW1vdmUgdGhlIGRyaXZlciBhbmQg
YWxsIHJlZmVyZW5jZXMgdG8gaXQKPiBpbiBkb2N1bWVudGF0aW9uLgoKVGhhbmsgeW91ISDwn6e5
77iP8J+nue+4jwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
