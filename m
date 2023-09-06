Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91987941A6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 18:44:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A49941566;
	Wed,  6 Sep 2023 16:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A49941566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694018682;
	bh=iIUcUlwwF3mj9fhh5iUklAXSAAJYocX5owaI6ABoC5U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gbCpi6eImlkXVwe55daMfMkp2IcZ2HJ8hPUAWN7UdLgWl3OjEaNws054SQcGDJ+hz
	 ewggsZ6oKHMbU2TxJsaEbXE5AWMk1Sc2b4Cem1K9lGe9MwaYvzFiQrdjHjNzvZd59r
	 9QSpAQfnJ0DLVFrPphNrXdgsqkkOh/ReVJpyJT0fNenC4hCc9CAmPKqer9cAu8l3wb
	 tV+Cgozp3R6awYfeemRnz/e3BxHD6ljXwgSVy1D8gn9dyc0VC1Fq8hF4roLu+WX4sn
	 2LBo5t65T9M1yzVKt3PCeOTq4tLWpD4uJ4omqHKVB9+vm+/8UVKCLQyQ719SFaiP5F
	 C0gTH2+4sj2OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xM__PmL-ppVK; Wed,  6 Sep 2023 16:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9846D414DA;
	Wed,  6 Sep 2023 16:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9846D414DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896471BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 16:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FEA84089B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 16:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FEA84089B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRlYGbJXBGf3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 16:44:35 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BEB94060F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 16:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BEB94060F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 053F1CE16E6;
 Wed,  6 Sep 2023 16:44:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03EE7C433C8;
 Wed,  6 Sep 2023 16:44:28 +0000 (UTC)
Date: Wed, 6 Sep 2023 18:44:27 +0200
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20230906164427.GC270386@kernel.org>
References: <20230906141411.121142-1-poros@redhat.com>
 <bbb51ddd-ceb1-63a8-a06a-f365da5ac4b7@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbb51ddd-ceb1-63a8-a06a-f365da5ac4b7@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694018671;
 bh=EI+fvmvCWqkc2KvJRNNxL/0XTQiGCQyC+Wq7BVvHLbw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GJphocDoYaCEC2q0FlyhwS2052waXIDzJHzIdPzpiWlS4y3p2SAOqx6BQ4eW0Gnb5
 xTrcawY491TpXvsTGriQLa+fxiX7nyheq/JKMcgosSjwVcEXVIzxOCiuU83ckmdA+M
 wZpcgQb+FJH78SF7AMyBQ3X15P6qV/3iCsMf8+dNc8JMjzeGzbXBEIhsLZzsjZMGJX
 xmeoWKGPUKSMa5FjSA2+A3nTJ8TMicZRBt+PdowRHmvOHxLg5s5c4RytvrZnJ0+qQe
 uw0o/K694wTBRD8YTenWL8xQ1PUfXTUYoWVdZvBZHZuEQHV6ZFWGNt9dWr3i7S1pRo
 ouGcdjKJGgkAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GJphocDo
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: add
 iavf_schedule_aq_request() helper
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
Cc: ivecera@redhat.com, edumazet@google.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 06, 2023 at 09:32:59AM -0600, Ahmed Zaki wrote:
> 
> On 2023-09-06 08:14, Petr Oros wrote:
> > Add helper for set iavf aq request AVF_FLAG_AQ_* and imediately

nit: immediately
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
