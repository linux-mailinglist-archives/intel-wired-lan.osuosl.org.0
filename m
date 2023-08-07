Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1BA77312D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 23:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 963694030B;
	Mon,  7 Aug 2023 21:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 963694030B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691443542;
	bh=XPdKm47pnFLJiBsH2mM4J2hQNf5Z6i0t72RL7gKCemM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aaya6U0BcxjN7ZFY6Ah/4wP6vBHLpErMnVfbdzOEuU9XotSgdMBrtBtymXRq7XPzC
	 ukkhnX9RnMBpc+ubcXYvx38EW1ZEVkpZkMe1yJH+wAugiPBcg1gQTpXldT6Mw8KUbq
	 vQdMVLpyclzIXzKJscHe3PvRt2Bqsm5XnwNaF5ozrkKu9bI4Edeqxvs1A+jic+NwdV
	 IRSo7g54fc4xCO7aP4G7F73ivEMFuG/azXLtu7F18TGqSgbWwKAFpOwJdWghSikUyh
	 D0OAuV3+JD25GWIbtjteSMSb3IvIFxjTpoCqsAE/ZHAgEMq4/Jh7ucb06KgwLTGOUl
	 vOIpr2KXU16SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9mw06ILt5ca; Mon,  7 Aug 2023 21:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E19C402BD;
	Mon,  7 Aug 2023 21:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E19C402BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B88481BF23C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 21:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F3D540168
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 21:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F3D540168
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LuBscaI3Z0xw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 21:25:34 +0000 (UTC)
Received: from out-101.mta0.migadu.com (out-101.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3738C40150
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 21:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3738C40150
Message-ID: <a7e2f7e1-e36a-2c79-46c3-874550d24575@linux.dev>
Date: Mon, 7 Aug 2023 22:25:25 +0100
MIME-Version: 1.0
To: Jiri Pirko <jiri@resnulli.us>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-3-vadim.fedorenko@linux.dev>
 <ZNCjwfn8MBnx4k6a@nanopsycho>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <ZNCjwfn8MBnx4k6a@nanopsycho>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691443530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4ru8zGvKg03gqB6GmVvzBu1vOdq2JxR2kLEcmblTX14=;
 b=cuh5B+hMwOeMx7QNFVS1Me32+fiKBNFaaYoRhBeAHBOYKtgOJC0wx/L9rZ7pnd6JWuZsj1
 l8isGq0u03fpSg0CFrSArp3QKInSqeDCSI921ACrN8z0D+4BEti6jYm36NMr6RMffkeg3c
 SZGEAgFggLraPSp2D0F2sqTGJlg0f3g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=cuh5B+hM
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/08/2023 08:56, Jiri Pirko wrote:
> Fri, Aug 04, 2023 at 09:04:47PM CEST, vadim.fedorenko@linux.dev wrote:
>> Add a protocol spec for DPLL.
>> Add code generated from the spec.
>>
>> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
> 
> Hmm, running tools/net/ynl/ynl-regen.sh generates following diff:
> diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
> index ff3f55f0ca94..638e21a9a06d 100644
> --- a/drivers/dpll/dpll_nl.c
> +++ b/drivers/dpll/dpll_nl.c
> @@ -17,7 +17,6 @@ const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1] =
>   	[DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
>   	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
>   };
> -
>   const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1] = {
>   	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
>   	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
> diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> index f659fabb1041..18d4fda484e8 100644
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -163,7 +163,6 @@ enum dpll_a {
>   	DPLL_A_PIN_PARENT_DEVICE,
>   	DPLL_A_PIN_PARENT_PIN,
>   
> -	/* private: */
>   	__DPLL_A_MAX,
>   	DPLL_A_MAX = (__DPLL_A_MAX - 1)
>   };
> @@ -182,7 +181,6 @@ enum dpll_cmd {
>   	DPLL_CMD_PIN_DELETE_NTF,
>   	DPLL_CMD_PIN_CHANGE_NTF,
>   
> -	/* private: */
>   	__DPLL_CMD_MAX,
>   	DPLL_CMD_MAX = (__DPLL_CMD_MAX - 1)
>   };
> 
> Do you base this patchset on top of recent net-next? If not, please do
> rebase.
> 

Well, in my case after rebasing on latest net-next I got just part of 
your diff:

diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index ff3f55f0ca94..638e21a9a06d 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -17,7 +17,6 @@ const struct nla_policy 
dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1] =
         [DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
         [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
  };
-
  const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE 
+ 1] = {
         [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
         [DPLL_A_PIN_ID] = { .type = NLA_U32, },


The "/* private: */" comment was added to the generator after Simon's
comment. But I'll include this part into the next version.

> 
> Other than this, looks fine to me.
> 
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
