Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C056B1445
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 22:41:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9170181FD6;
	Wed,  8 Mar 2023 21:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9170181FD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678311667;
	bh=048VRjPaRtCCcuxOqRKUjx9cYCC1EIlOPoLlhWNNIVs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6dcw5830AkrnsW6ayWmYucJkI4zAy5o6PTrU5p1ihatK3cfSl6dh3QalMw3U5JFa2
	 tnIo1gwR+PS8wPF2e19sShv5bwMmAUmxJFhSJJIjOSexiZT1KdapSRp5QaFa2m1LCJ
	 5j0JtItMQDHDJS2Wklz79i7Joy0gXPi4F2qH4wFQ0pqj9T6XPNph6iIdC5zrdzTr64
	 sXV6X987+netdu1pZblZDRyKsD7U+wdbN6XP3XFzncDfnZZ3QnW6QmvhwA67xFJwcq
	 nRkBzAFUG4c5Wh4bjehpdGmGswa1rPIVOwNBuNfsn5SNp0HqihxKtvKhyKSVTwrJXZ
	 jBm5Inqy4do8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEUT6ouGFEUF; Wed,  8 Mar 2023 21:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E351C81FD9;
	Wed,  8 Mar 2023 21:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E351C81FD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 124FC1BF287
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 21:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDC2F401AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 21:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDC2F401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBqnMclp8LBI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 21:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B17C40179
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B17C40179
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 21:40:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="422552634"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422552634"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="746064032"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="746064032"
Received: from jzhang79-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.42.45])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:40:58 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, AKASHI Takahiro
 <takahiro.akashi@linaro.org>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
In-Reply-To: <871qm0j0ty.fsf@kurt>
References: <20230307064531.68840-1-takahiro.akashi@linaro.org>
 <871qm0j0ty.fsf@kurt>
Date: Wed, 08 Mar 2023 13:40:57 -0800
Message-ID: <87ilfaq5ue.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678311659; x=1709847659;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QuFnV6oYqbQqHCRk5iQ+O4j3H9f5/edK4oD7zGFYk10=;
 b=H1RTbPA7ppF1vAfXexpB2GDMS/5AEFj1NY3YpVNrqakABfrYSsXuOhl9
 cq71LL0gJCHxLsXc6m8S6lL04qsKQAhNcOFvivB03esgw/EAk6j8ykA8A
 aGVZxZTPwM7hEDneXmlpUebqcfBek+CrLtpWPIQRUxq+thujPrUk/Kh87
 Zie5VfGnmTN3HsLoZEn8KPTJ+ScFnvt8N9ltFPK5KK6fbfBc/AVcZDoE2
 fwzIjnCZpXkL7RqR/E4r7Ehm0z231WW3P0dMSelHK3tOJC8j3UXCwZ3O4
 DviCqplC1eQFIAOCAwNiF9ztbII2geZG/2uMcXJ9cvVWI2hBB/VP8pBTX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1RTbPA7
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix the validation logic for
 taprio's gate list
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kurt Kanzenbach <kurt@linutronix.de> writes:

> On Tue Mar 07 2023, AKASHI Takahiro wrote:
>> The check introduced in the commit a5fd39464a40 ("igc: Lift TAPRIO schedule
>> restriction") can detect a false positive error in some corner case.
>> For instance,
>>     tc qdisc replace ... taprio num_tc 4
>> 	...
>> 	sched-entry S 0x01 100000	# slot#1
>> 	sched-entry S 0x03 100000	# slot#2
>> 	sched-entry S 0x04 100000	# slot#3
>> 	sched-entry S 0x08 200000	# slot#4
>> 	flags 0x02			# hardware offload
>>
>> Here the queue#0 (the first queue) is on at the slot#1 and #2,
>> and off at the slot#3 and #4. Under the current logic, when the slot#4
>> is examined, validate_schedule() returns *false* since the enablement
>> count for the queue#0 is two and it is already off at the previous slot
>> (i.e. #3). But this definition is truely correct.
>>
>> Let's fix the logic to enforce a strict validation for consecutively-opened
>> slots.
>>
>> Fixes: a5fd39464a40 ("igc: Lift TAPRIO schedule restriction")
>> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
>
> Grml. Thanks!
>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
