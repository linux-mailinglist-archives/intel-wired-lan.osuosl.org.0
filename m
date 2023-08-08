Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1BF7749EA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:06:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA2BB4174E;
	Tue,  8 Aug 2023 20:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA2BB4174E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691525187;
	bh=hNef1/mQxDE8QL/0Ja1tv5SZW3CuuIynXpWdRAQKiMw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VBaWqqzv1Ub2zvvvmFR2Blpk90GAESZOnN+ccDqDY6869sX5G6+1gX1WGZA1dRx99
	 IU/2C1z17XwYkf0rqgXeJDX87kwPQURT9H7uHE9QMDBxF8xLYbCustkc2/3wb3ge0r
	 8z5wg0EiECz+Ti0ZoywBq6Wgdx+A/B9MGnGKoxhSCCgT3bpb9oJMRv9xj+ezDv6Ege
	 /vCcT807x2zRuksoXwKM8zTYFNjtYHjZBnwYPOvj6NwW9AtEL2BtVLcMPeTV1jC6NU
	 6epErLM3pwIG448iQlH9Vi/6rx6kfqljphqgXK6HYHBcrlZUhVNp+LQMqYPGCi+2uC
	 w8wkuZJfxBgVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QvQv9N8hTMHM; Tue,  8 Aug 2023 20:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 619F741744;
	Tue,  8 Aug 2023 20:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 619F741744
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55E521BF966
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A90660B58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A90660B58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Ge9a6mmozVs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:06:20 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBBB860C25
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBBB860C25
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 24F0462C15;
 Tue,  8 Aug 2023 20:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12AD2C433C7;
 Tue,  8 Aug 2023 20:06:18 +0000 (UTC)
Date: Tue, 8 Aug 2023 13:06:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230808130617.5ad74486@kernel.org>
In-Reply-To: <20230808130327.5638d15b@kernel.org>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-3-vadim.fedorenko@linux.dev>
 <ZNCjwfn8MBnx4k6a@nanopsycho>
 <a7e2f7e1-e36a-2c79-46c3-874550d24575@linux.dev>
 <20230808130327.5638d15b@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691525178;
 bh=EXXgYeO8+2thyLJnvnLv8j6A+askNI7McKgPFzgsrAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XuZ9+hENrre4giva7n00N0bFg27pLNhnPyPqDyGlMhYcKysZHD7s+wB5GQ9gKWMhr
 xLEBZEtxy4Ijq280LlshZ0OQtc5bdOBJaYsmdcRVVjYgwBmCDKYBR3TcdMZV9c8G8L
 IvwUuNxIeLXI3+ekfhqB1C/LmZKr6JOPykHbiaQvHxJ8f/hfZgIXJ3/W73BAC6hI/X
 Xg+8ejZndgpq9pr3s9d/dV4IDGbuok/uNo2SrySkFxU60DkqseTlu+lEE0WQusCotG
 4NUeCjA6QmY4IlkytAP5Gja51o1bFOHrk2BMskSBjBMwWkcdvEcpmhPs0YTxVf8+gn
 pDR0jFGaIeuUQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XuZ9+hEN
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/9] dpll: spec: Add
 Netlink spec in YAML
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Simon Horman <simon.horman@corigine.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 8 Aug 2023 13:03:27 -0700 Jakub Kicinski wrote:
> >   const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE 
> > + 1] = {
> >          [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
> >          [DPLL_A_PIN_ID] = { .type = NLA_U32, },
> > 
> > 
> > The "/* private: */" comment was added to the generator after Simon's
> > comment. But I'll include this part into the next version.  
> 
> We only added private for enum masks, I'll send a patch for nlattrs.

On closer look these have no kdoc, so the priv markings are not
necessary, dropping them sounds right.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
