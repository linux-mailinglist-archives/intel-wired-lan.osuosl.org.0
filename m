Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7043F73357B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 18:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B9E04034B;
	Fri, 16 Jun 2023 16:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B9E04034B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686931846;
	bh=WEf+h67QzyHSwZK580avoqB1BcQKc1yeOXqo1N8xv4E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nFxx+DjxOu9X2JFakSKL4jGl9XAHiN47PD9HRv9VTMGFw0OES31qsUI48YEHz6fw8
	 rO8NRTAn1jGAwq3zq7Ct10Ym7kmseicAyAKFGNehzfN59ul8ODLVKqpDwZYaNnP8j9
	 C84tJqjFR5lEcvughHEITY7ctzN3MPLfU8eIz5xkGsbSOL0yvtkZ7XfSUOsv2y9hHz
	 XWmIkS/HweqkWo6lQgoQtRPMtMKf/Zx7upfqDYuK267FKP5DjSpkTtFzZQDogagSOa
	 2Swmi7oDK11qWAK9Wwxt0JmLdiMQl0b/I4X74qbaL4lnHR+uhv1ZbEdGaIDlxRDFDi
	 KDKevOVg3UEsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkdTcq0MIQJo; Fri, 16 Jun 2023 16:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC41640347;
	Fri, 16 Jun 2023 16:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC41640347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3511E1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06641611AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06641611AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXvX5Yaqwc9y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 16:10:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05BBD60E79
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05BBD60E79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:37 +0000 (UTC)
Message-ID: <908bd8bd-8629-f6e4-40f9-77454d52100d@linutronix.de>
Date: Fri, 16 Jun 2023 18:10:32 +0200
MIME-Version: 1.0
Content-Language: en-US
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>,
 "Chilakala, Mallikarjuna" <mallikarjuna.chilakala@intel.com>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
 <SJ1PR11MB6180B5C87699252B91FB7EE1B858A@SJ1PR11MB6180.namprd11.prod.outlook.com>
From: Florian Kauer <florian.kauer@linutronix.de>
In-Reply-To: <SJ1PR11MB6180B5C87699252B91FB7EE1B858A@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686931835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p6oLGVNweNaAz9q3bwuoYd9B/Su73SFzlRNr+jNmEvE=;
 b=SY76/pwnrynNqSpqjc/Zb1ewlNXjQzd9ft/z0dKhl07xiDvwJ3CXoEN46jykySHfCCspy5
 bYfMkHTnaZFXL0QFi7CGZawfDZwJvcPQtwAcvpemxy4M5X2W/WWs7NFOR0vfBdFKsAWKwp
 aGqZ4up7QeVsFxX/Nd+hUuatiJMiwuYJvC47J2VUMbH65MtMStBW2GQww06uAkMCw/tzCp
 WXrjhKztze7bExFcS3ed5oxi16PdrpPnaOjVMiVETmvqk1lm0gSYiXzyb3ENNZqlRYx5p5
 /iYmtb2CfdOScXqB0ZuPLyhXxNn364ze1hWHkMsRAoGb6MHqsl1njgGsyvfrnw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686931835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p6oLGVNweNaAz9q3bwuoYd9B/Su73SFzlRNr+jNmEvE=;
 b=1SdLEoLL3wNqoCtB9hlwsLf0ucyx4G5+RrAPvrUc8FNLzhg292NbCQynDeaTGWPTdYaH7S
 WiUcFHkcxOyKeSCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=SY76/pwn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=1SdLEoLL
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] igc: Fix corner cases
 for TSN offload
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 16.06.23 17:53, Zulkifli, Muhammad Husaini wrote:
>> Florian Kauer (6):
>>   igc: Rename qbv_enable to taprio_offload_enable
>>   igc: Do not enable taprio offload for invalid arguments
>>   igc: Handle already enabled taprio offload for basetime 0
>>   igc: No strict mode in pure launchtime/CBS offload
>>   igc: Fix launchtime before start of cycle
>>   igc: Fix inserting of empty frame for launchtime
> 
> All six patches, as far as I can see here, have the Fixes tag. Should they go to Net instead of Net-Next?

You are correct, these are all fixes and could go to net.
However, in its current form they will not fully apply to net 
(e.g. due to the commit 2d800bc500fb ("net/sched: taprio: replace tc_taprio_qopt_offload :: enable with a "cmd" enum")
that has overlapping code changes) and are also not tested with net. 
If you prefer to have them in net already I could send a second series.
For me personally all options (net, net-next or iwl-next) would be fine.

Thanks,
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
