Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B401D0285B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 13:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D376A605F4;
	Thu,  8 Jan 2026 12:04:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOvSHvaI7kcO; Thu,  8 Jan 2026 12:04:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F50F6064A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767873865;
	bh=JYW49MvEg/hKYNjcSEtm/n9oUxDHwTAeo5+QHLIEc/8=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VyiS6bWEUa5TkfyaMG2MEa+spHKR+GUbE1UVie8L3Om4F89TRNTOJ+7gvcMO2RcnQ
	 q/5r9NTDQcpjxFiW/OcvOPsk+Agkwq+Kn5s3wsO6BzsCqAdu8Ru3T/az1bvoQU8RNh
	 txrpG0dh/aqc0EiH3XMmwLEGuRBE5nMBz5YlcftIMZAhoRcXy8VXcy79zwj2ZvBVQ1
	 KrlzqKevzS9UXJ+xElmrdjJkUT0hqOkFrzWpw76GahwCKGJPn8TtPSE26W0pmWu2l2
	 Zr5895rL8YSY8SAOlNn6zzjGdixEPq+XIaDzLa4yCtgFVnu9e2wzoYGzQn0JS3T/3e
	 8UP57TXlm9HbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F50F6064A;
	Thu,  8 Jan 2026 12:04:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EAFE0436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1DE240131
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xhmF7BnBWo6L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 12:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.197.10.50;
 helo=iad-out-012.esa.us-east-1.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=461be1f6b=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 020F9400A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 020F9400A4
Received: from iad-out-012.esa.us-east-1.outbound.mail-perimeter.amazon.com
 (iad-out-012.esa.us-east-1.outbound.mail-perimeter.amazon.com [34.197.10.50])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 020F9400A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:04:22 +0000 (UTC)
X-CSE-ConnectionGUID: nI6yRKgjS/SlP4nD3NJ6XQ==
X-CSE-MsgGUID: wy8+cW/gS1eKV6Nn3jDSvg==
X-IronPort-AV: E=Sophos;i="6.21,210,1763424000"; 
   d="scan'208";a="9372761"
Received: from ip-10-4-7-229.ec2.internal (HELO
 smtpout.naws.us-east-1.prod.farcaster.email.amazon.dev) ([10.4.7.229])
 by internal-iad-out-012.esa.us-east-1.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2026 12:04:18 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.104:16936]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.44.170:2525]
 with esmtp (Farcaster)
 id e9329683-61cc-461e-9b20-53594e5e9dee; Thu, 8 Jan 2026 12:04:18 +0000 (UTC)
X-Farcaster-Flow-ID: e9329683-61cc-461e-9b20-53594e5e9dee
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 12:04:18 +0000
Received: from b0be8375a521 (10.37.244.11) by EX19D001UWA001.ant.amazon.com
 (10.13.138.214) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35; Thu, 8 Jan 2026
 12:04:16 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <takkozu@amazon.com>
Date: Thu, 8 Jan 2026 21:03:58 +0900
Message-ID: <20260108120400.75859-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <IA3PR11MB8986D6E9C30B7FFBCEF64394E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986D6E9C30B7FFBCEF64394E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D041UWA001.ant.amazon.com (10.13.139.124) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1767873863; x=1799409863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JYW49MvEg/hKYNjcSEtm/n9oUxDHwTAeo5+QHLIEc/8=;
 b=CsU3Bc/mVC+IrT+PANaxQckROSkSOWShpM05z52Tw6LLHeZAVjH2A8m2
 Y4u1Qer+ypdaS9g1Ho3E7OGaEiKeS+hOnmkIsE67nGIFECGCm4Iaftgk/
 5O1tWR9PEKKy+Rl25RimnuG+uw+RRfi+MEzbp4CgWpbTmlFLV2bHbIzkn
 g+lyLOjOv0ileL+qvFYMyUwKpvL4G+hvRzK/Zxv5A72er7HIBYBG+wM40
 RHGIe0lIwJaUP9B/SJqvkHC3erLPnkj9AbHrIrm7/ZkjbKfju6/uhjd5A
 DYWtQPLAaNmwgWYQoJJd74A6EepvfvXfDIWOtmufBjS5WdbB0xGgTT2c3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=CsU3Bc/m
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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

On Thu, 8 Jan 2026 07:29:19 +0000, Loktionov, Aleksandr wrote:

>> 
>> -	igb_write_rss_indir_tbl(adapter);
>> +	if (rxfh->key) {
>> +		adapter->has_user_rss_key = true;
>> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter-
>> >rss_key));
>> +		igb_write_rss_key(adapter);
>It leads to race between ethtool RSS update and concurrent resets.
>Because igb_setup_mrqc() (called during resets) also calls igb_write_rss_key(adapter).
>Non-fatal but breaks RSS configuration guarantees.

At my first glance, rtnl lock serializes those operation, so it
doesn't seem to be racy as long as they are under the rtnl lock.

As far as I skimmed the codes, functions such as igb_open()/
igb_up()/igb_reset_task(), which finally call igb_write_rss_key() are
serialized by rtnl lock or serializes igb_write_rss_key() call by
locking rtnl.

Please let me know if I'm missing something and it's truly racy.

>
>I think ethtool can/should wait of reset/watchdog task to finish. 
>I'm against adding locks, and just my personal opinion, it's better to implement igb_rss_key_update_task() in addition to reset and watchdog tasks to be used both in reset and ethtool path.
>
>What do you think?
