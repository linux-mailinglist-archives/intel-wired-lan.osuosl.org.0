Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AF196C1DE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4F0F4050A;
	Wed,  4 Sep 2024 15:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3eBRDwPQnzan; Wed,  4 Sep 2024 15:12:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39D0E402F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725462763;
	bh=668GR7K85eKGutSjk9hdhyby0WaauuFbm4jSRy4Js+Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VAeUSySIj00oxRozZD6S0R9+BLcMdqJQZra5zvSymnSz5OQEiThmoveKChF3D+fVz
	 0wobbVwZwLSRTuKJ2hV/o2WRj/P/F6eqa7nWGyetHV0Eg922iHb1iEXQb9Nk3edLH1
	 PjvntH40D19WSfQTBYDGPIZ754E31r2F+gvmHypCXMA2NT9uzp163GYYnWg7DyPRRc
	 Ei6ABpNGtVWTLmfIpQBUrQ77s4sENbJhjADklzVI7wJ2ICBAFl+JdXomQuQNfIucn5
	 17jGj6gvFFkaDILl2Ken9aOW1ftkXU2Y4J9rnhlwE1T18DE0hngL7+p10ldCRuboOs
	 7vFZ7c/evYxnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39D0E402F3;
	Wed,  4 Sep 2024 15:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A08DF1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 06:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99EB960847
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 06:41:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Kzhhu0v8-8t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 06:41:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=99.78.197.218;
 helo=smtp-fw-80007.amazon.com; envelope-from=prvs=970f31387=enjuk@amazon.co.jp;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B15CE6082C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B15CE6082C
Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com
 [99.78.197.218])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B15CE6082C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 06:41:19 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.10,201,1719878400"; d="scan'208";a="327404631"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
 by smtp-border-fw-80007.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 06:41:17 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.7.35:45773]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.5.128:2525]
 with esmtp (Farcaster)
 id fa2646ae-c483-4dd3-a0cc-92f2c91c3a0d; Wed, 4 Sep 2024 06:41:16 +0000 (UTC)
X-Farcaster-Flow-ID: fa2646ae-c483-4dd3-a0cc-92f2c91c3a0d
Received: from EX19D003ANC003.ant.amazon.com (10.37.240.197) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Wed, 4 Sep 2024 06:41:14 +0000
Received: from b0be8375a521.amazon.com (10.143.69.20) by
 EX19D003ANC003.ant.amazon.com (10.37.240.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Wed, 4 Sep 2024 06:41:11 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <takamitz@amazon.co.jp>
Date: Wed, 4 Sep 2024 15:41:01 +0900
Message-ID: <20240904064101.8548-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <20240904055646.58588-1-takamitz@amazon.co.jp>
References: <20240904055646.58588-1-takamitz@amazon.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.143.69.20]
X-ClientProxiedBy: EX19D046UWA003.ant.amazon.com (10.13.139.18) To
 EX19D003ANC003.ant.amazon.com (10.37.240.197)
X-Mailman-Approved-At: Wed, 04 Sep 2024 15:12:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1725432080; x=1756968080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=668GR7K85eKGutSjk9hdhyby0WaauuFbm4jSRy4Js+Q=;
 b=JQXtHTl3TmBfc2iWky28EzJSsxZqIHbL57Flr1dkrltIk3eZy2UFOwp2
 MZxUO7FnZNTQ9dBCBQqkuNF9J+YVTSPMzNPbZC1TEn1Mj5EuIg1czIAg/
 bkY8UYnYZzpqD9RW/xpDjRWdP6ZOI3eL2z9MFQut9ZTmt49fITz7SaBff
 8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=JQXtHTl3
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Kohei Enju <enjuk@amazon.com>, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> My colleague, Kohei, tested the patch with a real hardware and will provide his
> Tested-by shortly.

I have tested the patch using my physical hardware, an Intel Ethernet controller I219-V. The device was properly attached by the e1000e driver and functioned correctly. The test was performed on a custom kernel based on kernel-core-6.10.6-200.fc40.x86_64.

The PCI device is identified as an Intel Corporation Ethernet Connection (17) I219-V (rev 11), with vendor ID 0x8086 and device ID 0x1a1d. This device ID matches the E1000_DEV_ID_PCH_ADP_I219_V17 definition in the e1000e driver code.
```
$ lspci | grep -i ethernet
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (17) I219-V (rev 11)

$ cat /sys/bus/pci/devices/0000:00:1f.6/{vendor,device}
0x8086
0x1a1d

$ grep -ri 0x1a1d ~/ghq/github.com/torvalds/linux/drivers/net/ethernet/intel/e1000e
/home/kohei/ghq/github.com/torvalds/linux/drivers/net/ethernet/intel/e1000e/hw.h:#define E1000_DEV_ID_PCH_ADP_I219_V17          0x1A1D
```

So this testing confirms that the patch does not introduce any regressions for this specific hardware configuration.

Tested-by: Kohei Enju <enjuk@amazon.com>
Thanks!
