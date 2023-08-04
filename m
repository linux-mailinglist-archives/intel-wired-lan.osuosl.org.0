Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B5C770990
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 22:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E602F41FCF;
	Fri,  4 Aug 2023 20:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E602F41FCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691180271;
	bh=WwSrUrAup/0nAxPX/ZoyN5usbMuQVhP27qoGYbIBG3k=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sAcuDgFzI7uyggNhN4GdSlDbB56ZfNUkg5HgpTX/XtAiih7EU03ZK6o/GAdI3Eiln
	 YE4DfZ4TzGeCpghsbEkqRcmCQXchl+dr1Rmb1VPoWsB90iYWgxx2bLxBW4dyQ8PkXQ
	 NAoFlNohTTtpomcOV0wl+eklYIF85hBE/auyNc7Fmdy5RgPrRaNALbWhh11t+DLWJO
	 OXIrdZ+h2YFdXI0uXgNZlvsRypxb0jon25EJQKcEzyGE+cbTDYGyISXjBYEfol4FhI
	 LngkhBf687tQIKNRwZBx7msGFwgdTOIh8soqQnqkGc+wuO7gEBSQ3ysJ23hDOw6NrO
	 Fo58KsulqQGhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgNcEeKjts3H; Fri,  4 Aug 2023 20:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D02241EC6;
	Fri,  4 Aug 2023 20:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D02241EC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF7D1BF328
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 20:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9CD041F0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 20:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9CD041F0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1goDZHi2DXgV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 20:17:18 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBDE841F98
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 20:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBDE841F98
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 88AA961EC0;
 Fri,  4 Aug 2023 20:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBE3EC433C8;
 Fri,  4 Aug 2023 20:17:14 +0000 (UTC)
Date: Fri, 4 Aug 2023 13:17:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ruan Jinjie <ruanjinjie@huawei.com>
Message-ID: <20230804131713.09383df4@kernel.org>
In-Reply-To: <20230804035346.2879318-1-ruanjinjie@huawei.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691180236;
 bh=OcTcljePJX9c6fP6sanmFy/UWxdTl4nx+tja6jELDHE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PTc67s1ra5Zycend0jOp1YfLC+z9Ig1JiLAq8NGhvkWzfreLfDzo2u05Mpxfx3PO6
 4rGWjrGn86Jaa6SF/mi4YhhE+6f+Rkvz95RZ7Ta2aMyhCRvZTPGTDm4SLe98KEtM5l
 wfKWpq/YCUH/ywXCMtakNxA+NeXKQTOGOrAqZHXPwaeyMLcVlFD9Ose4p0YtYg/frq
 3d5pO3OCQMg7mZcL2NxjKhkKH+mEK0za/AMouMhnDznx6eithGPklJonb6Tqg1gUnl
 bBqw7U0orI6i5Qu0nJEqpMTzRhd/LPpPmXOd1yo1Oc4s/aldFE/zF5wWcqXNCFfVPd
 0kA7aaMp08kjA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PTc67s1r
Subject: Re: [Intel-wired-lan] [PATCH -next 0/6] net: Remove unnecessary
 ternary operators
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, set_pte_at@outlook.com,
 brcm80211-dev-list.pdl@broadcom.com, linux-rdma@vger.kernel.org,
 lee@kernel.org, jesse.brandeburg@intel.com, SHA-cyfmac-dev-list@infineon.com,
 intel-wired-lan@lists.osuosl.org, u.kleine-koenig@pengutronix.de,
 pabeni@redhat.com, kvalo@kernel.org, sgoutham@marvell.com,
 richardcochran@gmail.com, hante.meuleman@broadcom.com, mkl@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, franky.lin@broadcom.com,
 aspriel@gmail.com, s.shtylyov@omp.ru, netdev@vger.kernel.org,
 yoshihiro.shimoda.uh@renesas.com, linux-wireless@vger.kernel.org,
 tariqt@nvidia.com, linux-renesas-soc@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 4 Aug 2023 11:53:40 +0800 Ruan Jinjie wrote:
> There are a little ternary operators, the true or false judgement
> of which is unnecessary in C language semantics.

Who cares. Please stop sending these trivial cleanups to networking
core and drivers.
-- 
pw-bot: reject
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
