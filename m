Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E602F797518
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 17:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C9E083F59;
	Thu,  7 Sep 2023 15:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9E083F59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694101613;
	bh=F5hdBoiQuhkW8GTtHEONW9Leqqh/9SJpzoMzJukB4pA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WPM0Rhho/spDd4u46HAyKur8XuoRbbW80P1DXelLZEBRQsmfgKf82+G59CYFNFWZh
	 5fxfltkPOnrwtOucQb8gyULkYliZG6nTNv33U6r1bY4Etjxcoi9mWeh/TfnIv9sy97
	 fJnf1AD8sQEM0+wQiu8FdJCw/Z7gWezZIr8yM8t/gUTaR93SAU4Hexv6byVbNnHN2e
	 X+9ldqTKeRbXX0EEP4qdVXyR6ln2KbJqXxkd5o0qe8SNwb/qLNlK8HzgkgmAVghj68
	 ZaqPFT0shJfEgt/H41ma18z8LnJ7esun59q3mIN2upgGeg32m6tEAiVM4EaoptVtxd
	 Cl9t1j3s5mVyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2s5XCku23ms; Thu,  7 Sep 2023 15:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F23482893;
	Thu,  7 Sep 2023 15:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F23482893
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 082921BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D48B06125E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D48B06125E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VC3rXfx9_8z0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 15:32:14 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EB0660AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EB0660AA0
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id D4C15CE1A32;
 Thu,  7 Sep 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B26EFC433C9;
 Thu,  7 Sep 2023 15:32:01 +0000 (UTC)
Date: Thu, 7 Sep 2023 17:31:56 +0200
From: Simon Horman <horms@kernel.org>
To: Petr Oros <poros@redhat.com>
Message-ID: <20230907153156.GJ434333@kernel.org>
References: <20230907150251.224931-1-poros@redhat.com>
 <20230907150251.224931-2-poros@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230907150251.224931-2-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694100728;
 bh=4/JKnKNExLGNGv2sCb9eyK1f+7iv+45LcWMfCPifJOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FzYu7q8H4km5gUF2N5v5Qpvt7O6xn42LrO9Ej8XfTRaq8JkQJKQ75LZkXZVh58LG7
 RzIz3zz3ZbNBhqr9HTBXuW9FbN5XmRSl8hVVbNuCf+f8mJQEXPU0eFp4iMl4ew3uhU
 9yeUW3oXtWsHEbt296hRUkZz6LRPPqfKoH0qzUXuq9eLbWsgFop44ZtBtTRNaCfKdy
 eQbqd3AOP+9s4tvT/w9Thd1wg8lg6mieUoeBh837n2k8GPM3efEr4tcHd90JL6nD5a
 M1HmY+xEUMOPRBVkJ9dG5/DbzQugBVdocLuA58kTpUOab7JR7G2NclEhm0hB+xbEXG
 rOR99XJ7ZB1vg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FzYu7q8H
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: schedule a request
 immediately after add/delete vlan
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 07, 2023 at 05:02:51PM +0200, Petr Oros wrote:
> When the iavf driver wants to reconfigure the VLAN filters
> (iavf_add_vlan, iavf_del_vlan), it sets a flag in
> aq_required:
>   adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> or:
>   adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> 
> This is later processed by the watchdog_task, but it runs periodically
> every 2 seconds, so it can be a long time before it processes the request.
> 
> In the worst case, the interface is unable to receive traffic for more
> than 2 seconds for no objective reason.
> 
> Signed-off-by: Petr Oros <poros@redhat.com>
> Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
