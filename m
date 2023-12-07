Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15264808CD4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7D9E4379E;
	Thu,  7 Dec 2023 16:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7D9E4379E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701964834;
	bh=eJh2KLwd0lJWAPrbCerCKHcqld0auaMD1eV5g+ULBaU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oXI8ZgLNNeFUsUOgFhskv9+tciiPjYkupSOZBABcfJjusDmXW0zlULmrKpV8iN7Ie
	 Kw9Xtr8xLnevolJrlhQR22oLe2oRv/rX/pWaQtp2xKnkdyJwJNKBwt51baYySeJJQ6
	 2YLYWqHIIqmjWXQCf7amruVBX75ryR2xhcnL0/13xdmDXVTha3ukigHms5ncMfRLyD
	 i0nhxy7lGRZiYjEr3FfS6pz/3FWCy4MwpoL/Olo1/SuWEeEqP8QE6/TZ99opeiW+2s
	 RynpW+sd4YgufdwNJjHSGoQM2oMgzUAyK0EjfeTpGOg9PnKigS6oHbkGhcmBfN0rHC
	 9BRl21HdlNyhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVDLW9P8LanR; Thu,  7 Dec 2023 16:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E68D404F4;
	Thu,  7 Dec 2023 16:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E68D404F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 592F31BF99A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C2B060C06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C2B060C06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VdQx_2zxc8rO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 07:03:05 +0000 (UTC)
Received: from smtp-fw-9105.amazon.com (smtp-fw-9105.amazon.com
 [207.171.188.204])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29EA660BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29EA660BFE
X-IronPort-AV: E=Sophos;i="6.04,256,1695686400"; d="scan'208";a="689490897"
Thread-Topic: [PATCH net-next v8 1/8] net: ethtool: pass a pointer to
 parameters to get/set_rxfh ethtool ops
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com)
 ([10.25.36.210]) by smtp-border-fw-9105.sea19.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2023 07:02:58 +0000
Received: from smtpout.prod.us-east-1.prod.farcaster.email.amazon.dev
 (iad7-ws-svc-p70-lb3-vlan2.iad.amazon.com [10.32.235.34])
 by email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com (Postfix)
 with ESMTPS id 29D8B49403; Thu,  7 Dec 2023 07:02:51 +0000 (UTC)
Received: from EX19MTAEUC001.ant.amazon.com [10.0.43.254:20385]
 by smtpin.naws.eu-west-1.prod.farcaster.email.amazon.dev [10.0.44.90:2525]
 with esmtp (Farcaster)
 id 2082292f-9c21-48cb-bbf7-6b1cfbdc6572; Thu, 7 Dec 2023 07:02:51 +0000 (UTC)
X-Farcaster-Flow-ID: 2082292f-9c21-48cb-bbf7-6b1cfbdc6572
Received: from EX19D022EUA002.ant.amazon.com (10.252.50.201) by
 EX19MTAEUC001.ant.amazon.com (10.252.51.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 7 Dec 2023 07:02:49 +0000
Received: from EX19D022EUA002.ant.amazon.com (10.252.50.201) by
 EX19D022EUA002.ant.amazon.com (10.252.50.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 7 Dec 2023 07:02:48 +0000
Received: from EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d]) by
 EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d%3]) with
 mapi id 15.02.1118.040; Thu, 7 Dec 2023 07:02:48 +0000
From: "Kiyanovski, Arthur" <akiyano@amazon.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Index: AQHaKJ02y/VPHsTkPk+svVtpsphWUrCdYuGQ
Date: Thu, 7 Dec 2023 07:02:28 +0000
Deferred-Delivery: Thu, 7 Dec 2023 07:02:04 +0000
Message-ID: <82af13c02b5b4a3b9372ee5b38221b4b@amazon.com>
References: <20231206233642.447794-1-ahmed.zaki@intel.com>
 <20231206233642.447794-2-ahmed.zaki@intel.com>
In-Reply-To: <20231206233642.447794-2-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.85.143.172]
MIME-Version: 1.0
Precedence: Bulk
X-Mailman-Approved-At: Thu, 07 Dec 2023 16:00:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1701932585; x=1733468585;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=SXaE0jxYY1JnqLGQ+FtXfTHRRnIazmjY0HeKThSqzHQ=;
 b=QQuwvC9Urkjgro+rl8R0bKIUAGES2jD/ZxQ1lODNiVgziUwFbpDDfJCO
 ZKY4Cas/WaU2lOqEQf/vPT307qopdkxHHH3rR6LSb0A2tzoN5vsexwgap
 wRCk2ptwxLmprOO0o0CeDylvvrCkyutI2DGHTGdrSb50z3Ry1ASzb8Ys/
 M=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=QQuwvC9U
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/8] net: ethtool: pass a
 pointer to parameters to get/set_rxfh ethtool ops
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "gal@nvidia.com" <gal@nvidia.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "ecree.xilinx@gmail.com" <ecree.xilinx@gmail.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> The get/set_rxfh ethtool ops currently takes the rxfh (RSS) parameters
> as direct function arguments. This will force us to change the API (and
> all drivers' functions) every time some new parameters are added.
> 
> This is part 1/2 of the fix, as suggested in [1]:
> 
> - First simplify the code by always providing a pointer to all params
>    (indir, key and func); the fact that some of them may be NULL seems
>    like a weird historic thing or a premature optimization.
>    It will simplify the drivers if all pointers are always present.
> 
>  - Then make the functions take a dev pointer, and a pointer to a
>    single struct wrapping all arguments. The set_* should also take
>    an extack.
> 
> Link: https://lore.kernel.org/netdev/20231121152906.2dd5f487@kernel.org/
> [1]
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---

Thanks for submitting this.
For the ENA driver:
Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
