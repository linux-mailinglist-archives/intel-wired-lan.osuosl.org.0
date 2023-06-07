Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7F8726633
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 18:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A907405FA;
	Wed,  7 Jun 2023 16:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A907405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686156158;
	bh=+Uvyq+7REUSJSOAxE9iIHvU5W7y/tU0uXqZdDQ2bULk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dsIC0ejmzfgo5k1trsMh4Cw7Id0hf+oGRLPDYDgTuChPtzuGjcv+sZnVqgfp7QDnL
	 XpESqbpPR/ZWIs2Qds1tbKis6VuZx0FtGFdE21g7VmIete+GSDhMVRCRfsTko++6Tu
	 TF1dLtgQ5SbbpmnFeclqR0s/PQjpWKELt8+ge21jTbl7PDWfZe3YBu6Yvhodmq6Ziy
	 qZhMMlHiwFQ1Qvd+MixRpMVVUm1wyry7jCeV2S+MXlmrN+0XD1eNQEt5qwyJpSYhX0
	 /Jld4UkA+ISjwVeKYcIhccyd9aMMofsireoBhQsMJd2XdLMnkl/WM02UwrZ+4mfrde
	 VFKG2om5Z+NBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_Xfh20qy9Hm; Wed,  7 Jun 2023 16:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C737405B3;
	Wed,  7 Jun 2023 16:42:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C737405B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 370071BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 16:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C00983163
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 16:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C00983163
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6vjnsraKoemk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 16:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C8F083155
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C8F083155
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 16:42:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4762A615E8;
 Wed,  7 Jun 2023 16:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DA60C433EF;
 Wed,  7 Jun 2023 16:42:29 +0000 (UTC)
Date: Wed, 7 Jun 2023 09:42:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <20230607094228.10f5b84a@kernel.org>
In-Reply-To: <ZIAzEh1Y++os19fl@corigine.com>
References: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
 <ZH9S6wPIg9os8HYa@corigine.com>
 <1e11a484-af99-4595-dc1f-80beb23aae9f@intel.com>
 <ZH9hS9BBDhy9lIG1@corigine.com>
 <9b5c6653-3319-3516-0b50-67668dcc88f3@intel.com>
 <ZIAzEh1Y++os19fl@corigine.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686156149;
 bh=zssne6QqdNoHguRgMNiZP5ueUBStAFNcKnJEkn1gm2Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EESF+uePGlgZb8fBowcYBUtnY7g6zGoPZrTxhyKWuenwbV4HaeCioP/6ntPc24Ye2
 c9mcs521mSEoXC4JcvdXwmFpdb9rSkaTCLCFi8p5uZAg60lP60ksGGQDDUBbDBI6EW
 rU/OJp/12lYRD7K4Igo+QhVybNXrX8XdUgAY7mm8kSAjp8wii3Tv/rAxDAQg0QrwUw
 71uFamwH+xmY/3jjoZh/HDmPWWzqD6vzvB8nNxE0oTFrHJgFVgXGJ4v1IsjTQw/J+9
 3qLkCSvSRAVSPzpHzUp57VMJKxSmBQxyr8XrI7vxPCJSfIiGMe6S4PO2kQTT60+y0i
 LB3UZRFks044A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EESF+ueP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 7 Jun 2023 09:34:42 +0200 Simon Horman wrote:
> > it's the same on gcc-13 on default (make M=...) settings, I think, I will
> > post next version that is passing that build, even if to make integration
> > with new gcc easier  
> 
> Thanks. TBH it does seem a bit silly to me.
> But GCC builds failing does seem to be a problem that warrants being addressed.

Isn't GCC right? There's no guarantee that the value of @type in real,
numerical sense falls within the set of values sanctioned by the enum.
It is C after all, so enums are just decorated ints, aren't they?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
