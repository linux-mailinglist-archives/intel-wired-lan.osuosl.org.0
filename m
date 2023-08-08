Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE97749C9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9E1840893;
	Tue,  8 Aug 2023 20:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9E1840893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691525018;
	bh=YNYLuAlOAEUiY3VpHAWKe1YxfLFu9tWfekCKZXkGUeU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c8BWo6y4g8P8B3sQg5aGJiwGXXnJXzJb/u7vJJEBe1kJczFGM6x4k7nzvzKciyqyV
	 /Edx0iCdkvBVuieKTLJ9wcQU3Ld5byOyks+9PQUt1iVpdFr6BE19rc9Q/jiB0HahwV
	 Lg5j+jjb3rqHB2AE1o/YocgGRg21jRVvthvOTMFCBzijiew0h0WTwQxQTRU9DxttPA
	 0WlCUUstj4NnAmqH294YhCvPcYmUtVP8G3Kdia52V7XMjxoxwFi1f55L7OGXCTyqPY
	 vMoJS/3fb8c/ZodrcnOKUcmWw9tN/kA8SszbopMJn+i7YtBH/qBRjf4FnONhwZJBcH
	 6j6lTFoBKb2YQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BbPYMlwVyN2W; Tue,  8 Aug 2023 20:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A541408F7;
	Tue,  8 Aug 2023 20:03:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A541408F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 977FA1BF341
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6EE3E80E66
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:03:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EE3E80E66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6rx45MtQOiaz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:03:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCD2B80B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:03:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCD2B80B6D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 974A062BE6;
 Tue,  8 Aug 2023 20:03:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918EEC433C7;
 Tue,  8 Aug 2023 20:03:28 +0000 (UTC)
Date: Tue, 8 Aug 2023 13:03:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230808130327.5638d15b@kernel.org>
In-Reply-To: <a7e2f7e1-e36a-2c79-46c3-874550d24575@linux.dev>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-3-vadim.fedorenko@linux.dev>
 <ZNCjwfn8MBnx4k6a@nanopsycho>
 <a7e2f7e1-e36a-2c79-46c3-874550d24575@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691525009;
 bh=XieZPduHjyDSjvr/8gZ88ZdbCP4k+VL3yfyNd86jhhw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dNjflAS3B1mZjhgu4XYMPMrOknEEnqRQ4UnDUtmF/wdZkTf9wwfnvuB025/6ZCMel
 3MO9DSNyp3jMcES/AJwS2n6lxQiS66Rstw0RZalS34IIkFvpOcd+R0AL29usX7IkyI
 H+tKnwu0tcbrs0c/2n3u0aGS9F15ZEiH0arFKVnqTBE7nSlx8t1aIJdCgW+JpoF6WG
 dgNA3g1eIEaVHlaxYaItysPNSn31LkY9UeqnNtrtLkKDUheCfrraKEN0gpW2DDXcwR
 kwuqmYFMLnjW4HuSL63sL9Pz4EvfOZGLaNkTjlookm6FW6SDTGD9X/QEP4SB1iKdR7
 6z8zDBRKM7wSw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dNjflAS3
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

On Mon, 7 Aug 2023 22:25:25 +0100 Vadim Fedorenko wrote:
> Well, in my case after rebasing on latest net-next I got just part of 
> your diff:
> 
> diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
> index ff3f55f0ca94..638e21a9a06d 100644
> --- a/drivers/dpll/dpll_nl.c
> +++ b/drivers/dpll/dpll_nl.c
> @@ -17,7 +17,6 @@ const struct nla_policy 
> dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1] =
>          [DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
>          [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
>   };
> -

Uh, missing cw.nl() somewhere. Will add.

>   const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE 
> + 1] = {
>          [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
>          [DPLL_A_PIN_ID] = { .type = NLA_U32, },
> 
> 
> The "/* private: */" comment was added to the generator after Simon's
> comment. But I'll include this part into the next version.

We only added private for enum masks, I'll send a patch for nlattrs.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
