Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C9B468A0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 05:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF843416B3;
	Sat,  6 Sep 2025 03:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHybul7klSwb; Sat,  6 Sep 2025 03:22:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C1B1416B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757128962;
	bh=WFiwQBuEFLRzvFYakvxehxisdtpPVJ3Yu0vsvxE7VWY=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m7DbUB/sPm/UTvJQkz2OnhwSJn85Yap0/xE6kj/L0Tv/cx//y7xGw6fMlHMuRIMbU
	 M2wJGX5lqYXZNAPcDqLRuNrjd0Oxx1mBCVSWndzdMTtRJbbVEQLb0dSi23Rky2a6x4
	 rTF9e9H6zIsw1dXz1VARoeu78Jh27NewZMYfZoy6yw/XFbsPvLL2o26fgyADDYAufM
	 ePf619RLhXFxZI2T89pNkM2GVVHOdgrJPrLuu4Vk3M6Q4lKqaKpDZtFUUP4lmI2kea
	 MIccFCOWZPcKw/wd98VYFf4zPclAdSJLw72d9M9nATPHn3CKLK1AkwLO7i2FV3Oz5k
	 yDoRYbDXh0JMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C1B1416B0;
	Sat,  6 Sep 2025 03:22:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 18003E0E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F257F416A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EfO-3stp9KC5 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Sep 2025 03:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.34.181.151;
 helo=pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3374551b6=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4CD22416AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CD22416AB
Received: from pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.34.181.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4CD22416AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:22:39 +0000 (UTC)
X-CSE-ConnectionGUID: xce/0uWASHCfQ80TmCuaGA==
X-CSE-MsgGUID: hKoG/w8bTwWG8xw3m6FZFQ==
X-IronPort-AV: E=Sophos;i="6.18,243,1751241600"; 
   d="scan'208";a="2522341"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 03:22:37 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:32517]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.41.88:2525]
 with esmtp (Farcaster)
 id 98718cf9-7bbf-492b-9e28-101270607342; Sat, 6 Sep 2025 03:22:37 +0000 (UTC)
X-Farcaster-Flow-ID: 98718cf9-7bbf-492b-9e28-101270607342
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:22:37 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:22:35 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Sat, 6 Sep 2025 12:22:24 +0900
Message-ID: <20250906032227.70729-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986B31F209249FFC30F0A35E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986B31F209249FFC30F0A35E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D031UWA001.ant.amazon.com (10.13.139.88) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757128960; x=1788664960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WFiwQBuEFLRzvFYakvxehxisdtpPVJ3Yu0vsvxE7VWY=;
 b=jHM6x5enOOvolCiBhI06Ubaa/kfwPrSA1q4jkgoy6HhkCR7fHR7ij6qM
 cS+NWlIriP2c7fC61p1p1gPd8bJCYMKffvMHCu+lqvTz85s3R32d5TnHq
 mpYcfHe+qiO8XkiKefttOwGYUIp/x7DB8MC062K+yPG0RJadX7ZFKzMz9
 oHzzKLw2ZvsFLqsCGZ0F8Urj4vN8CzR55pMhrB58CzV5SnDrWa2PhZ4hr
 wB2U165PVv/GZpkhkmPnKTT4FBY+8Qtem3YCujW+HllMG3C2Km1PWTXva
 Vt/RTDMy+u0pLrR+6AhhwNIzWHlTMN7qwtomVglv+vAQ54n1Y7S1GpRmw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=jHM6x5en
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

On Wed, 3 Sep 2025 06:21:05 +0000, Loktionov, Aleksandr wrote:

> [...]
>> On Wed, 3 Sep 2025 06:04:43 +0900, Kohei Enju wrote:
>> 
>> >On Tue, 2 Sep 2025 13:25:56 +0000, Loktionov, Aleksandr wrote:
>> >
>> >> [...]
>> >>> -
>> >>> -	for (i = 0, j = 0; i < reta_entries; i++, j++) {
>> >>> -		if (j == rss_i)
>> >>> -			j = 0;
>> >>> +	/* Update redirection table in memory on first init, queue
>> >>> count change,
>> >>> +	 * or reta entries change, otherwise preserve user
>> >>> configurations. Then
>> >>> +	 * always write to hardware.
>> >>> +	 */
>> >>> +	if (adapter->last_rss_indices != rss_i ||
>> >>> +	    adapter->last_reta_entries != reta_entries) {
>> >>> +		for (i = 0; i < reta_entries; i++)
>> >>> +			adapter->rss_indir_tbl[i] = i % rss_i;
>> >>Are you sure rss_i never ever can be a 0?
>> >>This is the only thing I'm worrying about.
>> >
>> >Oops, you're exactly right. Good catch!
>> >
>> >I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is
>> 0,
>> >like:
>> >  adapter->rss_indir_tbl[i] = 0;
>> 
>> Ahh, that's not true, my brain was not working... Sorry for messing
>> up.
>> Anyway, in a situation where rss_i == 0, we should handle it somehow
>> to avoid zero-divisor.
>> 
>> >
>> >To handle this with keeping the behavior when rss_i == 0, I'm
>> >considering Option 1:
>> >  adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;
>> >
>> >Option 2:
>> >  if (rss_i)
>> >      for (i = 0; i < reta_entries; i++)
>> >          adapter->rss_indir_tbl[i] = i % rss_i;
>> >  else
>> >      memset(adapter->rss_indir_tbl, 0, reta_entries);
>> >
>> >Since this is not in the data path, the overhead of checking rss_i in
>> >each iteration might be acceptable. Therefore I'd like to adopt the
>> >option 1 for simplicity.
>> >
>> >Do you have any preference or other suggestions?
>
>I lean toward option 2, as the explicit if (rss_i) guard makes the logic clearer and easier to follow.
>
>Handling the simplified case first with:
>if (unlikely(!rss_i))
>    memset(adapter->rss_indir_tbl, 0, reta_entries);
>else
>    for (i = 0; i < reta_entries; i++)
>        adapter->rss_indir_tbl[i] = i % rss_i;
>
>Improves readability and separates the edge case from the main logic.
>
>While it's possible to use a ternary expression like adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;,
>I find the conditional block more maintainable, especially if this logic evolves later.

Okay, I got it.

>
>Regarding unlikely(), unless there's profiling data showing a performance benefit,
>I'd avoid it here - this isn't in the fast path, and clarity should take precedence.

Yes, I agree on that this isn't in the fast path therefore unlikely is
not always necessary.

Thank you again for reviewing and suggesting!

>With the best regards Alex
