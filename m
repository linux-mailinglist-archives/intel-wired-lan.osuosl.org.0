Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9081EB40EF8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 23:05:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D96F41F19;
	Tue,  2 Sep 2025 21:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j-8W-CU7hhYu; Tue,  2 Sep 2025 21:05:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE4C41C44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756847102;
	bh=t6gogj4w+fcwjbSwyJUS+/tCtWH+SJm0jaH6FwbZ8xU=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5rmEmWSWNvx5wAWEt8NyXnryGRCDuZ/yQP0p+/uwo79deH5bSJ8rzbfQBk7blUe7m
	 3q8z+8ENGEDkchD74EvNErTT2q4882q7SPBcy+XPDfITkEPiZKW4VxK/6ytsq2NLe3
	 1CumWzTLOEo5vd/WBcEIPxotD/WJA0oApE5EKKEUF5I7nj/8kZB4DeL2Djh8VVRq/J
	 3cFWq00h1yv20Ldm/+M3KJ9FZ3/s0ZIhxVaKTpIoNrp1j3wmBTfHRg9PiUb5oa40DW
	 lrQ0jDKRcQ4YnGiELKbjjk+p8fIXeWMvITYb8/jkk6flGB78pJHSJ+O36mfDm5yn0o
	 Bs8GLsTqNScKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBE4C41C44;
	Tue,  2 Sep 2025 21:05:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B178D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60796610DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gt47pY0Fyer for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 21:05:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=33374e15e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BD3426105B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD3426105B
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD3426105B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 21:05:00 +0000 (UTC)
X-CSE-ConnectionGUID: gh3NnqEDTBuRUoWXR+8YyA==
X-CSE-MsgGUID: lMpGXdmkQ+GXS9JmCUVtPA==
X-IronPort-AV: E=Sophos;i="6.18,233,1751241600"; 
   d="scan'208";a="2133182"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 21:04:58 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.21.151:4775]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.28.48:2525]
 with esmtp (Farcaster)
 id 2cbdf29a-5857-4e82-8e43-7d620c440c32; Tue, 2 Sep 2025 21:04:57 +0000 (UTC)
X-Farcaster-Flow-ID: 2cbdf29a-5857-4e82-8e43-7d620c440c32
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.217) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 21:04:56 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 21:04:54 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Wed, 3 Sep 2025 06:04:42 +0900
Message-ID: <20250902210447.77961-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986AD639F3395B5BFCC2C38E506A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986AD639F3395B5BFCC2C38E506A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D040UWB001.ant.amazon.com (10.13.138.82) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756847100; x=1788383100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t6gogj4w+fcwjbSwyJUS+/tCtWH+SJm0jaH6FwbZ8xU=;
 b=GrTzWTrxOSiuFpqbS8bPlczJ/gfOBDBzRUW0xCiL70y7NM/ToSIYaGuE
 CTAuSM9brENq1dOU7CcL63MPWcG3yqYaGEGjcKWzXX5wHYBmzAIV88oeC
 IxJOBSUZnryH3GR8dKxNB7TwIRYrNHkVybqkYZ0gCLyRf4mEWLGivnb6a
 Y5lll/bk0rX8rD3dd6/1Mo9pYTJo5BcuhW3Qau3rnozQmly4yr9p7z/3o
 +YEEoBgNne4s11wvyAA42TPJdYWEjaR/GCvTZPX6xD5VsHeWvjIPBIIkX
 fiH8GHVrBOvXZJN6ObS7k3pvpoKIeCTOrW2zJX0YwIplz1YJyvNP7S/uu
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=GrTzWTrx
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
