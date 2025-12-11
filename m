Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E7CB64D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 16:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39B7E84F73;
	Thu, 11 Dec 2025 15:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RULc3MCsgZ1C; Thu, 11 Dec 2025 15:21:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8626384F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765466484;
	bh=hA5ghf2zjiyqiApmgYxJPXwqkr78qqO+4ybETELdnUE=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GfBspQ46Knu4RteIoqoBvcXuSBFGP0eOSq0kyMo2KS9SQgazVkzWD8boX0XJ+kk43
	 BncwGMh5Dis5dnDyoIz4NHeQbb2adb/WPTiseDEkzjhsjepDdiM8/KYBLIS3rtIco+
	 ejz+kQqVOlwGSHgSwj/eSt1KEC0zxK5QLzfj1M7SqbxLYzrasH1pISshmKcVX+KkJi
	 NqErz6qD9NSdruy1jTBcH3mWygI90XQe9Uvj0dfw9924LWIYqhfUsDR3bDXCc9FR1K
	 9/WaBVYZiuIHJr2FVCljAkQ6a493YeQdpB/hbE0YPHVkKyDZc4RyD3QDu+1c940AB7
	 UGeupKwGOelOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8626384F6F;
	Thu, 11 Dec 2025 15:21:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 781882C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69FE64034D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0z_3f483RO_8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 15:21:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.13.214.179;
 helo=pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 612F04033A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 612F04033A
Received: from pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.13.214.179])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 612F04033A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:21:21 +0000 (UTC)
X-CSE-ConnectionGUID: mt8a03klQcKYYlHAJX1y8w==
X-CSE-MsgGUID: mbAKw7JSQtyWTXGchV76Sg==
X-IronPort-AV: E=Sophos;i="6.21,141,1763424000"; 
   d="scan'208";a="8896287"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-005.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 15:21:16 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:3976]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.13.57:2525]
 with esmtp (Farcaster)
 id d2410b6d-c80b-4f7a-9f36-ab9e35d30e25; Thu, 11 Dec 2025 15:21:16 +0000 (UTC)
X-Farcaster-Flow-ID: d2410b6d-c80b-4f7a-9f36-ab9e35d30e25
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 15:21:16 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 15:21:13 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <horms@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <jacob.e.keller@intel.com>, <jedrzej.jagielski@intel.com>, <kohei@enjuk.org>, 
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <stefan.wegrzyn@intel.com>
Date: Fri, 12 Dec 2025 00:20:58 +0900
Message-ID: <20251211152105.96440-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB89864C5819FCA7B7E8A06DEFE5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB89864C5819FCA7B7E8A06DEFE5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D043UWA002.ant.amazon.com (10.13.139.53) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765466481; x=1797002481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hA5ghf2zjiyqiApmgYxJPXwqkr78qqO+4ybETELdnUE=;
 b=aPr7wzkjAFsXDL5r3BtmFYKTWfvjn3ug6qDc99gFDIqZ+Jz+IR/gW2Up
 d0Di5t6XfkAjaWepPAXl9pH8RG5u1pc1qzk4dJK/7HeRhhS0O5Kc6UKQu
 U8z85ELxfnpkLpv0DYt4clkV7zGVc3aai4TYDcZdsdte6PfGPES5Pd0rS
 xgulVLw4RU2i5xM8v2AtgjVjOkdz82w5EPu45ESZ4h5rJPCLohqFpTppp
 60/rusDRiHP6lXqLJSo1VwXKdP28Fy+0jt2U+lsahL50UdUImCnwnrMQx
 WgkhaYsQbtONkn3mwR9bHlUD5dVU4nGSfsGwbOf7ZfSxvbLeKZfXDQdLN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=aPr7wzkj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't
 initialize aci lock in ixgbe_recovery_probe()
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

On Thu, 11 Dec 2025 10:12:19 +0000, Loktionov, Aleksandr wrote:

>> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't
>> initialize aci lock in ixgbe_recovery_probe()
>> 
>> hw->aci.lock is already initialized in ixgbe_sw_init(), so
>> ixgbe_recovery_probe() doesn't need to initialize the lock. This
>You claim that ixgbe_sw_init() initializes hw->aci.lock but don't provide evidence(s).
>Can you?

Hi Alex, thank you for reviewing!

Yeah, I claim that because currently ixgbe_recovery_probe() is only
called from ixgbe_probe(), and this is called after ixgbe_sw_init().
Also I don't expect ixgbe_recovery_probe() would be called from other
contexts in the future.

We confirmed the that double initialization would occur in the
context[1], but are there any recommended solutions we can adopt?

I understand that double initialization doesn't always introduce
realistic issue because it would be problematic only when reinialization
is done while the lock is held, but it's a fact that actually
unnecessary initialization is done in ixgbe_recovery_probe().

I believe this change would be right, but maybe we should ask Jedrzej
for the intention of mutex_init() in ixgbe_recovery_probe(), and
possibility that ixgbe_recovery_probe() would be called from any other
contexts.

[1] https://lore.kernel.org/all/b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com/
