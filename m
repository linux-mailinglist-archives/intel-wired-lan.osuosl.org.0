Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C8EB40F32
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 23:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1261B41180;
	Tue,  2 Sep 2025 21:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yCm1yw7voZ4c; Tue,  2 Sep 2025 21:16:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D6B741185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756847815;
	bh=EfyEBkR+gvRPfwnPvyneq20sNdtyH4J+bGD9qod/GG4=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6LML8tdBfw+4xUEGDT+Q7moq0AfJhW/Gac6mQmNcAXNrPRNb3+ECoQHCFVtU642u6
	 siHYNF4+WEdiHjQVacaIkOzOIOXw+IPHq5W7lpDwrGijfb+DTX6yGYxAa05phs5Mhl
	 Ur3OGNaq6syTuIYf1/iBZXsJSF1I4ILK9K3UT214woyxlCUBp8Y+tEbwl5A/weTT2S
	 5qDJYeI5PeABqx8YsPogQOdFvbDwuJbil9ZIeMQ9vt6pg1Q2mvuAilRnd0BoyhJ2uE
	 hCmoGvFILKtwbb7QBxQ54s7iHtbzvh0W5WD8v5nqsSaGbuxjJnzEsT43zGDCkHdIsh
	 PFHZ9Ql4YvOjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D6B741185;
	Tue,  2 Sep 2025 21:16:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C9253D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BACE461169
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-l60wIY_0fN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 21:16:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.13.214.179;
 helo=pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=33374e15e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30F556115C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30F556115C
Received: from pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.13.214.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30F556115C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:16:52 +0000 (UTC)
X-CSE-ConnectionGUID: jFFlNh1pS++I9zet7HJ2FQ==
X-CSE-MsgGUID: gdsx5nXcSFGBV9jzl+xSYg==
X-IronPort-AV: E=Sophos;i="6.18,233,1751241600"; 
   d="scan'208";a="2250860"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 21:16:50 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.38.20:37188]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.41.88:2525]
 with esmtp (Farcaster)
 id 2d6dc524-f91c-4acd-be1b-9e11261f00e8; Tue, 2 Sep 2025 21:16:50 +0000 (UTC)
X-Farcaster-Flow-ID: 2d6dc524-f91c-4acd-be1b-9e11261f00e8
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.217) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 21:16:50 +0000
Received: from b0be8375a521.amazon.com (10.37.245.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 21:16:48 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <enjuk@amazon.com>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Wed, 3 Sep 2025 06:16:39 +0900
Message-ID: <20250902211640.85359-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250902210447.77961-2-enjuk@amazon.com>
References: <20250902210447.77961-2-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.8]
X-ClientProxiedBy: EX19D045UWA001.ant.amazon.com (10.13.139.83) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756847813; x=1788383813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EfyEBkR+gvRPfwnPvyneq20sNdtyH4J+bGD9qod/GG4=;
 b=bkj6VrGgKRZ2CU1mZ71TdEw4cUSz7iS0ivCoM3maXWJmsgICdYVQMbyf
 NPV40JrT/RCJyyYKShuV811ltrPOEF/Q+w3bEoFNfxMoMJ+CgrrnxnHzy
 xwKaFGinKkhyJGShimyWblNqNfwPQdC1Yx014oJ9GzABhBLGiktDSKB44
 71MC1ftSCOhJU+T0yIzUyyQXf9apOGhLpxKlbQLmYWDb0AoWfTGiYRUpL
 No/A70oiLRzp8bYV5cDiGtB29UUTW9JsEurbU3syUJ2nwpjUUTAI41D+h
 Z+rRpE4bMInlXKbATuc8QwvqWh5SAAyqqJiPsPqptS/KAgTXvVIbr8yBr
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=bkj6VrGg
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

On Wed, 3 Sep 2025 06:04:43 +0900, Kohei Enju wrote:

>On Tue, 2 Sep 2025 13:25:56 +0000, Loktionov, Aleksandr wrote:
>
>> [...]
>>> -
>>> -	for (i = 0, j = 0; i < reta_entries; i++, j++) {
>>> -		if (j == rss_i)
>>> -			j = 0;
>>> +	/* Update redirection table in memory on first init, queue
>>> count change,
>>> +	 * or reta entries change, otherwise preserve user
>>> configurations. Then
>>> +	 * always write to hardware.
>>> +	 */
>>> +	if (adapter->last_rss_indices != rss_i ||
>>> +	    adapter->last_reta_entries != reta_entries) {
>>> +		for (i = 0; i < reta_entries; i++)
>>> +			adapter->rss_indir_tbl[i] = i % rss_i;
>>Are you sure rss_i never ever can be a 0?
>>This is the only thing I'm worrying about.
>
>Oops, you're exactly right. Good catch!
>
>I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is 0,
>like:
>  adapter->rss_indir_tbl[i] = 0;

Ahh, that's not true, my brain was not working... Sorry for messing up.
Anyway, in a situation where rss_i == 0, we should handle it somehow to
avoid zero-divisor.

>
>To handle this with keeping the behavior when rss_i == 0, I'm
>considering
>Option 1:
>  adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;
>
>Option 2:
>  if (rss_i)
>      for (i = 0; i < reta_entries; i++)
>          adapter->rss_indir_tbl[i] = i % rss_i;
>  else
>      memset(adapter->rss_indir_tbl, 0, reta_entries);
>
>Since this is not in the data path, the overhead of checking rss_i in
>each iteration might be acceptable. Therefore I'd like to adopt the
>option 1 for simplicity.
>
>Do you have any preference or other suggestions?
