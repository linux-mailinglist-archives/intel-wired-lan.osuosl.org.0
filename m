Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69533B40EF9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 23:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B5E541F09;
	Tue,  2 Sep 2025 21:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7bUQSxsZ9UQs; Tue,  2 Sep 2025 21:05:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 537FE41F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756847103;
	bh=t6gogj4w+fcwjbSwyJUS+/tCtWH+SJm0jaH6FwbZ8xU=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1YFjtRyu2HT08Vw2MZFOF7bgMMOz22qrmZaMNqNaYbGiP4GB4lhKrtQ2Etdn+wzVi
	 lip+DD+/Zgz2xArAKLGmlTMAo5TBTF7K0bisKhDSfxIPBNRdJa74f21fNmtfXmXqEG
	 aKr4+9zuVr8tnNmZx4BJL0M8A9oo4DjC3OFOLtwDmowGPB54TdYRhA9jM5vzn9JRVf
	 fq4DTH98Mr7dcGESACx7rylzUDc5tbPlVZbzLVz9hvIc4/YfwJaU0XnPvW41ONvtAP
	 Y5vwQ7WL9mmp5z2TDa8gNEcJRg8O2gji/GQ9IBI2+R1Wh89Wp1J5gTVT/tuMAC1t0I
	 FCq2PP88Eau+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 537FE41F10;
	Tue,  2 Sep 2025 21:05:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 00EB310E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB373821FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3qELHaPn6ztL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.35.192.45;
 helo=pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=33374e15e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 58E60821F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58E60821F2
Received: from pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.35.192.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58E60821F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
X-CSE-ConnectionGUID: SJMIe03nRMqEd+/BuHJhqw==
X-CSE-MsgGUID: jwh2zAgMRuuLbzyoUfcqqQ==
X-IronPort-AV: E=Sophos;i="6.18,233,1751241600"; 
   d="scan'208";a="2134466"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 21:04:58 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.21.151:48973]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.41.88:2525]
 with esmtp (Farcaster)
 id 0072c26e-a3f7-4feb-a4b7-8b96bf14c20c; Tue, 2 Sep 2025 21:04:58 +0000 (UTC)
X-Farcaster-Flow-ID: 0072c26e-a3f7-4feb-a4b7-8b96bf14c20c
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Tue, 2 Sep 2025 21:04:58 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 21:04:56 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Wed, 3 Sep 2025 06:04:43 +0900
Message-ID: <20250902210447.77961-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250902210447.77961-1-enjuk@amazon.com>
References: <IA3PR11MB8986AD639F3395B5BFCC2C38E506A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20250902210447.77961-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D040UWB001.ant.amazon.com (10.13.138.82) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756847101; x=1788383101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t6gogj4w+fcwjbSwyJUS+/tCtWH+SJm0jaH6FwbZ8xU=;
 b=lUHh3mgK4BP8YsnwnPz+aGYhvCybHZjeITS360+2si6shZTN3KVijviK
 OyxZgtfl1BY9F9HJNhwHzahB0p/8RMoWVDLWvya2CzMWYhLimGPDm+44A
 zk62J41DHUT9uC57Qfzs4/oyczR5bEaN04k36aRRtaIeWoCRyUL3z1U0E
 3f6im6l6c/GOFGd/9141d+RU9qMPUTxr+9cndM854OdpW89wienfHEXc7
 srfNgG8Pk7IxA0r8j8mqqzlufja3JmNk/gtPUh/Ig5eajAUrgb77m2/SD
 a8Bffl1T3X0aT7xXfGgPvGulmkGkzQfcB44rOSP5V024hwlZ3lRqBuwXt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=lUHh3mgK
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

On Tue, 2 Sep 2025 13:25:56 +0000, Loktionov, Aleksandr wrote:

> [...]
>> -
>> -	for (i = 0, j = 0; i < reta_entries; i++, j++) {
>> -		if (j == rss_i)
>> -			j = 0;
>> +	/* Update redirection table in memory on first init, queue
>> count change,
>> +	 * or reta entries change, otherwise preserve user
>> configurations. Then
>> +	 * always write to hardware.
>> +	 */
>> +	if (adapter->last_rss_indices != rss_i ||
>> +	    adapter->last_reta_entries != reta_entries) {
>> +		for (i = 0; i < reta_entries; i++)
>> +			adapter->rss_indir_tbl[i] = i % rss_i;
>Are you sure rss_i never ever can be a 0?
>This is the only thing I'm worrying about.

Oops, you're exactly right. Good catch!

I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is 0,
like:
  adapter->rss_indir_tbl[i] = 0;

To handle this with keeping the behavior when rss_i == 0, I'm
considering
Option 1:
  adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;

Option 2:
  if (rss_i)
      for (i = 0; i < reta_entries; i++)
          adapter->rss_indir_tbl[i] = i % rss_i;
  else
      memset(adapter->rss_indir_tbl, 0, reta_entries);

Since this is not in the data path, the overhead of checking rss_i in
each iteration might be acceptable. Therefore I'd like to adopt the
option 1 for simplicity.

Do you have any preference or other suggestions?
