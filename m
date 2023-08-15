Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 042B977CEF0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 17:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9342D81F7B;
	Tue, 15 Aug 2023 15:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9342D81F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692112709;
	bh=ccvEwRBilKjRRM3+MLrQcH7Sc8wNC374muCsF6SyThU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vdb6Eo2nCLQynsRiMGo1AAb1vtx4i8Kl8V6KeDQdL1UILePZzlv0G3YHDrl/vbSl1
	 IKW9v9wIqEPnLm2HWyLUmjdIFid1vvor5Zb55oLMFwg8o+Bs9v/CI0ssx02ml0s5KP
	 D1/kgEUv2lz3vykeiuSYDl6I0CxlCKEAFevGhNquUsKlxS4iBfmb4xkidhQXZmcmwH
	 yrh5B/tnOIjsiZ2ORuGBX1tbXAMFZCRG38nY6eAj43fQwN0KSHybwZbW9zlBTN73NQ
	 lgvFmq3Jl0fAfentzRxfAuVBBILNQuuEyzUQYq+Lerqz2GBSdVYv9LUpE/LIT3AdZP
	 kh94ejlYdiAeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgyMWP_Q3LZy; Tue, 15 Aug 2023 15:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B92F81F4E;
	Tue, 15 Aug 2023 15:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B92F81F4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7EC1BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 15:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C21EF402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 15:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C21EF402C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2y0nKUt0Hgy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 15:18:22 +0000 (UTC)
Received: from out-25.mta1.migadu.com (out-25.mta1.migadu.com [95.215.58.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E123402B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 15:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E123402B9
Message-ID: <d5c30de7-df89-18dd-3ad8-a5d99c1e7108@linux.dev>
Date: Tue, 15 Aug 2023 16:18:16 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-5-vadim.fedorenko@linux.dev>
 <20230814202441.349586b4@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230814202441.349586b4@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692112700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5jkRrsW9ZohDgZxdapSfROnd5WC/t+pIz3Z7RYOCEpk=;
 b=c5FEo+pNIRIQR7Ia0XE3msfztl33UetjSbeMLnJyhUSRhDUCP2kxoRpHGyDdwiMOcjW43J
 qoHzwqxkoMhZFA8/CC1eUtKOuhQ/885vlEtdkrFqcVDLMYBer7/m3NNBBM1aFld7cbsGE7
 w8ziAMKjx3NN87XuwGAI6Vrfj8zshdw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=c5FEo+pN
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/9] dpll: netlink: Add
 DPLL framework base functions
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
 linux-arm-kernel@lists.infradead.org, Jiri Pirko <jiri@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15/08/2023 04:24, Jakub Kicinski wrote:
> On Fri, 11 Aug 2023 21:03:35 +0100 Vadim Fedorenko wrote:
>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>> +		struct dpll_device *dpll = ref->dpll;
>> +
>> +		if (!ops->frequency_set)
>> +			return -EOPNOTSUPP;
>> +		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>> +					 dpll, dpll_priv(dpll), freq, extack);
>> +		if (ret)
>> +			return ret;
>> +		__dpll_pin_change_ntf(pin);
>> +	}
> 
> only one freq is reported in get, AFAICT, so why send a notification
> after each ref is updated?

The pin can be technically connected to several DPLLs and app may watch
for the specific DPLL messages only. We would like to inform all users 
on any DPLL which has this pin connected to.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
