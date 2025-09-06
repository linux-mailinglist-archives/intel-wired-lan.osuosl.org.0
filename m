Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A8B468A8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 05:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F334614BF;
	Sat,  6 Sep 2025 03:35:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WqHNv_ME90EQ; Sat,  6 Sep 2025 03:35:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4435B61522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757129750;
	bh=dL5fqxNoJeDm6sYiSxsJrtyx6Y5dwe7xC8CRV6aqGbA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FJ0aKPQSHpKQHKfoIuAY99i92iCxgD0cMg3ckggfWK5CIxjv0yrypa0F/lrGxkKRn
	 1RMZhVwT21St/wioJ4s18sd7D++asSgZLJC22koAUJyt5nkGaPwHVtdCcodmxIteon
	 l9xfTZ3G7kvHhx+sntIyKDnHJCRVnDQCEKo1ZBMKE3/JB27MBWF5dPMztRCL/6M08l
	 29SHssOexmEwG82CzHbDivVGGqjLxXm8s/5/SD4fY4JQjS2tzfhqYDr9tbt2MaVo1y
	 bWmTDfXtOIIGGzf7IVNMFD4BOJ3ewhhdUWyJU6nhcS0E73i7l9QuUJXr8ERVJ+RBC9
	 oI/2P+34JVvSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4435B61522;
	Sat,  6 Sep 2025 03:35:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3DA0E0E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B140B83004
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:35:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z-KJh60IRdd0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Sep 2025 03:35:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3374551b6=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 44EBF8300C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44EBF8300C
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44EBF8300C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:35:46 +0000 (UTC)
X-CSE-ConnectionGUID: 327dLbaDSy+QYAjHWQX7SQ==
X-CSE-MsgGUID: G3kIWt87QhCXnBQDtPL12A==
X-IronPort-AV: E=Sophos;i="6.18,221,1751241600"; 
   d="scan'208";a="2519580"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 03:35:43 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.7.35:55857]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.28.142:2525]
 with esmtp (Farcaster)
 id 8b2ed895-adce-4e34-96b0-0e2f09645238; Sat, 6 Sep 2025 03:35:43 +0000 (UTC)
X-Farcaster-Flow-ID: 8b2ed895-adce-4e34-96b0-0e2f09645238
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:35:43 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:35:41 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <przemyslaw.kitszel@intel.com>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <kohei.enju@gmail.com>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>
Date: Sat, 6 Sep 2025 12:35:28 +0900
Message-ID: <20250906033534.76837-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <75f4d389-eaff-4d61-880a-ccb05cd55123@intel.com>
References: <75f4d389-eaff-4d61-880a-ccb05cd55123@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D035UWB001.ant.amazon.com (10.13.138.33) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757129746; x=1788665746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dL5fqxNoJeDm6sYiSxsJrtyx6Y5dwe7xC8CRV6aqGbA=;
 b=i///Z8v8Vic+gNAxbduy/mlG5RE1i5tE9zHMtt9yHpBVR6Ap12eIzONi
 kenIBTxlmYPvSBLYB9KzpsNfFoQkwjNaxZY1HValJsYKiSMkOKp+BzMH5
 bYLCa5pnX3krICvB9uOZpneRfBM1fIFAIm7GIZDHz7KfLCCrxg8M1W++7
 5Az1Ff+jVWki5AE/snGGA5APAeUCfaDlM8etYGK+e0oWRdCZE075qx6IQ
 quOLz/3rH3HIiMoJAgYOH7erxxhyWNpxKuPg8cK068tSWUE49T1GLsFNJ
 GxMSkKrNtDKj9jeVwRrdejjqCcv83kOQzryYOBDwV97WS5ZJtMBs6Q0+X
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=i///Z8v8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 5 Sep 2025 10:53:37 +0200, Przemek Kitszel wrote:

> 
>>>>>> +	if (adapter->last_rss_indices != rss_i ||
>>>>>> +	    adapter->last_reta_entries != reta_entries) {
>>>>>> +		for (i = 0; i < reta_entries; i++)
>>>>>> +			adapter->rss_indir_tbl[i] = i % rss_i;
>>>>> Are you sure rss_i never ever can be a 0?
>>>>> This is the only thing I'm worrying about.
>>>>
>>>> Oops, you're exactly right. Good catch!
>>>>
>>>> I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is
>>> 0,
>>>> like:
>>>>   adapter->rss_indir_tbl[i] = 0;
>>>
>>> Ahh, that's not true, my brain was not working... Sorry for messing
>>> up.
>>> Anyway, in a situation where rss_i == 0, we should handle it somehow
>>> to avoid zero-divisor.
>>>
>>>>
>>>> To handle this with keeping the behavior when rss_i == 0, I'm
>>>> considering Option 1:
>>>>   adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;
>>>>
>>>> Option 2:
>>>>   if (rss_i)
>>>>       for (i = 0; i < reta_entries; i++)
>>>>           adapter->rss_indir_tbl[i] = i % rss_i;
>>>>   else
>>>>       memset(adapter->rss_indir_tbl, 0, reta_entries);
>>>>
>>>> Since this is not in the data path, the overhead of checking rss_i in
>>>> each iteration might be acceptable. Therefore I'd like to adopt the
>>>> option 1 for simplicity.
>>>>
>>>> Do you have any preference or other suggestions?
>> 
>> I lean toward option 2, as the explicit if (rss_i) guard makes the logic clearer and easier to follow.
>> 
>> Handling the simplified case first with:
>> if (unlikely(!rss_i))
>>      memset(adapter->rss_indir_tbl, 0, reta_entries);
>> else
>>      for (i = 0; i < reta_entries; i++)
>>          adapter->rss_indir_tbl[i] = i % rss_i;
>> 
>> Improves readability and separates the edge case from the main logic.
>> 
>> While it's possible to use a ternary expression like adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;,
>> I find the conditional block more maintainable, especially if this logic evolves later.
>> 
>> Regarding unlikely(), unless there's profiling data showing a performance benefit,
>> I'd avoid it here - this isn't in the fast path, and clarity should take precedence.
>> With the best regards Alex
>
>I would make it even simpler (than if/else paths):
>
>if (!rss_i)
>	rss_i = 1;
>
>(which looks better than "should be obvious" oneliner, rss_i += !rss_i;)
>

Sounds good.

Considering comparing adapter->last_rss_indices and rss_i before
configuring rss_indir_tbl and saving rss_i to adapter->last_rss_indices
afterwards, I think I have to do that before the comparison. 
Is my understanding correct?

+	if (!rss_i)
+	    rss_i = 1;
+   
+	if (adapter->last_rss_indices != rss_i ||
+	    adapter->last_reta_entries != reta_entries) {
+		for (i = 0; i < reta_entries; i++)
+			adapter->rss_indir_tbl[i] = i % rss_i;

