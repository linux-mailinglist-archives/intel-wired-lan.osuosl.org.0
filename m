Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45B178E0CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Aug 2023 22:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4736C417F9;
	Wed, 30 Aug 2023 20:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4736C417F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693427912;
	bh=+WmsqNIYkBNHAa6omdOzPmu40NwVuCbnwNeJKrHLYBM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rOvKr47gr+tbpMWn7DxEAl8Pq5F8rY7NRbqitJX6bhlD6dNx2ikgVNMDym93L37Ir
	 VCRSfqSlLyt38Vc4liTsCfg9lw8Nfd8gnGPKyf/Ac+NrHoqiA4ksQ2ZquMJ1Hee14d
	 8wJIxD/d8Q6hWPZDCD0utYa6gZ8xplo/Ney1ljerUz0asgEQsEyhA9OtR5lstLfZ4n
	 txVHmEW5GCegcDY71LPPpu+1dC124wDqmyPLvL1ldn+npUS9WvVZeoQXLIO9Ln5NG5
	 wvP5FM1IUy8jerOhh3LSgazbQSw2iUIo+2kMw0U4/7otqzVzDdzuKih8W4RgpVLaZk
	 Clb1Yuofy1PRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdEJvMMyZ59E; Wed, 30 Aug 2023 20:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D665417B8;
	Wed, 30 Aug 2023 20:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D665417B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2331BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 20:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7286582D57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 20:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7286582D57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S2-4_53Qs9xP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Aug 2023 20:38:25 +0000 (UTC)
X-Greylist: delayed 331 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 30 Aug 2023 20:38:24 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2D89826C1
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2D89826C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 20:38:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A0722B82016
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 20:32:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E0EAC433C8;
 Wed, 30 Aug 2023 20:32:47 +0000 (UTC)
Date: Wed, 30 Aug 2023 13:32:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org
Message-ID: <20230830133246.1a059f0a@kernel.org>
In-Reply-To: <20230829150539.6f998d1f@kernel.org>
References: <20230829150539.6f998d1f@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693427567;
 bh=SzzWusXtXJX5L6WVyCZuB0hjgeuxLc63hlHpUKYBYrA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iMBnXw4nwL1/LTlpQevoLpNRzuINhyInuowN0KBMiRolKd93ZVFqv6NulHZz7xJ5y
 w1I4ORAQ+fGZkisGNKRcqJ36ojp09wb3cF8diM6EnFoi3NFdikEjk6Yo7ETc8YXLDG
 nImuwK5/6Lu2DGB27luHIPeEOZknem5v91zYk/hhN5E94QQXvlDqa1G9O+QNEHR0Sy
 qxr/51EDOc5Lva6lfJiCst5GnfkZFXXhHYXNZhLDUqGEYXYkfCbrmi22G7C9F8V6yl
 FihBNAxP3aAwuV00j6UTUWPF00m+kszZG0qZTex2tDGK+Sh7rp/xDEK+1Q132b2FsN
 CREZrsQjysJPQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iMBnXw4n
Subject: Re: [Intel-wired-lan] [ANN] netdev development stats for 6.6
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
Cc: intel-wired-lan@lists.osuosl.org, netdev-driver-reviewers@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A minor follow up / question.

Would it be helpful to generate these kind of stats scoped to
particular companies?

Very few people end up in the top 12. It may not be entirely trivial 
to run these scripts locally because people use their non-company
addresses at times. And because of GDPR and data privacy concerns 
I don't want to upload raw results to GitHub or some such :(

The best idea I could come up with was to post the stats
to a per-company ML. Intel has the "wired" list which is 
a perfect fit. That way the result is accessible to developers,
and they can refer to it in the "performance review" or
whenever they want to get credit for upstream reviews? :)

Does that sound sensible?

Please don't hesitate to LMK either on or off list. 
Particularly if you think this is a bad idea.

And LMK if any other company wants similar stats.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
