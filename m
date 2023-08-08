Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9BE774BA8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C548841767;
	Tue,  8 Aug 2023 20:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C548841767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691527934;
	bh=MPvkspyBL2f09geIig9QdDRgXsMhKghsPUliINQwrMQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gDx6mVzqhEqjlPCGu96Y6TR0ZsFpvHceQQvEIic6tP2N5DgOIl7WgQZHzRlMP1bPz
	 AqkweMyT9+URsm1ar9E4NAqm4nbq0Rk5nS0njxRfn6IP9/8MsDZ8+6SawRrnhumrsC
	 2ZKB88VWa3QQsBw9HPZhnOZEG59Bpw7wawBfQgVZlKLBy6NqsMl4a/kgqEYJW5cbB+
	 eDx7pvf8d2EnPsWLoOoIoVqwHc2uDYGygSvoA0Qp8H3vuy4izhDwWREeyI4fPoSW5X
	 pQxUKBTc9bSjGTxDaDARWIN0NBZXrjwOHvVVcELlA9AgZLzwWx8+zSPdoScyo0Vgm3
	 GfnGOwHSGf7AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWHj7ndrDhbs; Tue,  8 Aug 2023 20:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 711EE4174F;
	Tue,  8 Aug 2023 20:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 711EE4174F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8C41BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB9D841763
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB9D841763
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_CZKzs-Tg_F for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:52:05 +0000 (UTC)
Received: from out-93.mta0.migadu.com (out-93.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::5d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8AFE94174F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AFE94174F
Message-ID: <bcd25b8c-536a-482a-bd79-095bc983baea@linux.dev>
Date: Tue, 8 Aug 2023 21:51:55 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-3-vadim.fedorenko@linux.dev>
 <ZNCjwfn8MBnx4k6a@nanopsycho>
 <a7e2f7e1-e36a-2c79-46c3-874550d24575@linux.dev>
 <20230808130327.5638d15b@kernel.org> <20230808130617.5ad74486@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230808130617.5ad74486@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691527919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0xvoeirahWFZ+3tNj8n9ficPcKAPak4lBFOk6V+FiJU=;
 b=NPb2ggKevHGdvXHMqS//lDI8x3nQGwGQPb6cUdkEMzTsiejj/VSYBxdNqn5UmY8lHHB/S1
 +/Ng0nHQnpOnpnsQq0MxS1qC/Oy0q0Zjqge3DvakcnmYHiAHovNty6TNGkAu3NIF7g6E28
 zQqWf+vcCwqAB400CTa7tQYQGMaWl0E=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=NPb2ggKe
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 08/08/2023 21:06, Jakub Kicinski wrote:
> On Tue, 8 Aug 2023 13:03:27 -0700 Jakub Kicinski wrote:
>>>    const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE
>>> + 1] = {
>>>           [DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U8, 1, 3),
>>>           [DPLL_A_PIN_ID] = { .type = NLA_U32, },
>>>
>>>
>>> The "/* private: */" comment was added to the generator after Simon's
>>> comment. But I'll include this part into the next version.
>>
>> We only added private for enum masks, I'll send a patch for nlattrs.
> 
> On closer look these have no kdoc, so the priv markings are not
> necessary, dropping them sounds right.

Ok, I'll add the version which is generated by the script with the
lastest patch, I mean with new line and priv markings.

Thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
