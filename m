Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEE43DB60E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jul 2021 11:34:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B928B40239;
	Fri, 30 Jul 2021 09:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3_3BTnZsTUx; Fri, 30 Jul 2021 09:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67C74404EE;
	Fri, 30 Jul 2021 09:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7621BF368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jul 2021 09:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E994683B6D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jul 2021 09:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZC5vnki1nHGm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jul 2021 09:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B56A83B65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jul 2021 09:34:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="298651431"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="298651431"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 02:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="567531308"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 30 Jul 2021 02:34:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 02:34:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 02:34:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 02:34:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmP4WIa5EGKnJ86uffgarmpH7MGklT/ztaCAyHLYOzXY9ThJ/a/55AUuGCWJmt19V2QQH0PXYptoGKrRvqJGlXuFa4nTJ+6iay6FLtz5ZgvICuUqF2hhieOwHH49VFPYU1t86xh2YvCh2Eo9wtbKwYt4zibg3K1SDnxz0yViTsc0dm0JL7WCaI1Rq4lBUBEFYEdYJEGqDrudw8jvOj82pKchELuXHmg8k7fAx34E2ujxNCW9Orc0y3WEimpBYh9XX70x55aIexiuuZkdli9pTVx23LusWGlcAKICLSUEW91fTxqrQNdC27N/b/EtbR7vt933Mn6Y2Q3qi3amQEJ8zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COYGxYDy2OFd4iWD/QWq63x5FWvZDsHI1UhRoTM2d/Q=;
 b=iiOeXYEvDhan3Cq2Q2uO049moJ1G/OPMQvLsGYu3tW+Tes73SYMLsSVe0uun9W9Emd9kRbmRaLbs64THBwfhoSEPbAHNBDxiS69zbbGY+iUhGHYH0Ks5cSvtdbaESivMPAXgpKTxoDzOV3oNQkE77m9sdlpymx/mGqCqNDZekud/ngSxuYwnMWajfmhEWKorW6joIgvm6SiJm0QS7/OZfSVU7YGHeQCjSMHQJIoO/kSkV+6Sq1JVxfcMROOngjUO0cUAitUwJ0CZHe/PeaOI8XcQe2BHLiVzpVPxrkh5jgMdlxcW56SHG/ONSprUVh6W0fZDc82y9hq3jMOZQSgr6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COYGxYDy2OFd4iWD/QWq63x5FWvZDsHI1UhRoTM2d/Q=;
 b=vPZiQE6O9I+K5X7AUYRLvXw3bqY7cy27ujU+84Y4m/lp4cz1mWNULixCcY7qFxxbd7f8TvXwAByoRfT1XG1ycW1Bc2NUDec0WTiApedUYPJSJ4VYZ0NSg+SPQaRY751aNkv9iQzTE2n8GpaEtxFzxrBVebXK+RWNfpQC5zqGY/A=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB3957.namprd11.prod.outlook.com (2603:10b6:a03:183::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Fri, 30 Jul
 2021 09:34:17 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4373.022; Fri, 30 Jul 2021
 09:34:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
Thread-Index: AQHXdQanGUCsvT26Q0GrcVscjFXR5qtbYUEAgAAAJ7A=
Date: Fri, 30 Jul 2021 09:34:17 +0000
Message-ID: <BYAPR11MB33677675B74CDAB387793740FCEC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210709210726.224848-1-jacob.e.keller@intel.com>
 <BN6PR11MB392347CF9B7ACBB94ABDA9168CEC9@BN6PR11MB3923.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR11MB392347CF9B7ACBB94ABDA9168CEC9@BN6PR11MB3923.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7103853-a65e-4210-f0b0-08d9533d339a
x-ms-traffictypediagnostic: BY5PR11MB3957:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3957A15C2935A2D5DDF7FF33FCEC9@BY5PR11MB3957.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /br1BPM1s2bc+m6vHvguZupYRzQ54iqfzZmjfxm7VBju31BUFE1AXwV1SsSFFCKksNVPCwNT2bI0zO8kworsviRBGYxwwF+Q51s0dtC911D4rSywdoTAY1i0pmsxToCy1MvRt3nbX2a6m7zZbVGTKSYXkMQZzrdB8D0VsGWo2QDW0Kqvj2dVOL1NiE/GionxuQhecAz4HqAh+R72ITuW+2WVkuG1sWUjEIiYnwRS5mA3GPF8UYCUS2zGrcDR1sYMz1bpjafdrazQBZISMECvdyhDWCVql7K90p+UP8ouDrhFXCdT2DQlRHGl1QzMqcxzWpt9l91EbI2qn7LZN3z9K1k+p3+dcWwfVHgJ/3lnDraA3Qj1Gy1UshBjUt0r8ZB30nabIivzJErIiuXUd9SX4sJZXUoxxicV5FpRu0GpKgns+RBuqvxnbcRH6bHOe8RiKe/Po0uJdlHAoi6DpFiujNOuWIpN/cmgy2vEoGNv6GgniMgJ/SQTtyCscNIhGijpQeCE2f7xEgiwyTb1prpIr6eDohjZ+pqHXRD6C+hnDMEHu6byk3CIjNJkTxQ5hD2PknACMueEJkFunbD7ZkhSfADMMRl69k1ql9X+UUjyUkN4m3gPrk5zuxHsHIJOwo19yqJPMPIlPNw/lXnnSyz7nJt8m7rDGgoyIx7G3aq5Fl8OyG8TPSQEkWNrnND2CP99N0Eu0VHEzB44xQK7WTGKMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(26005)(66556008)(66446008)(66946007)(8936002)(52536014)(9686003)(66476007)(478600001)(83380400001)(107886003)(5660300002)(316002)(76116006)(2906002)(55016002)(33656002)(38070700005)(8676002)(186003)(6636002)(110136005)(64756008)(4326008)(86362001)(53546011)(6506007)(7696005)(122000001)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M0LU5AVr+4aWc42wc4biQuOyXcShyWucQ7BXaVfI3vSUUgx/gUKwexkyOPjH?=
 =?us-ascii?Q?Skszn7TyaLWToi6u066cGIQt3ruh19u4MR2cFD9Gf8Q8i7Pi4yqgG4vQ7sfL?=
 =?us-ascii?Q?BQ3Ks712Xhja6DEczzVr0en5FpHS5VAbL+uVlbKJcZ2O5Yi/u1acGByYOt+h?=
 =?us-ascii?Q?l/jIRLsPMr3Fsi4typoDa+jINpqCHpvnOifDQXHqJnpyHUTBS6vAV68MfQcF?=
 =?us-ascii?Q?jRjIQsba5nE+f0bGvXJLW6qtAVuoV5FIS19BBF1kqgF0F7ak7p4kCHswXbfP?=
 =?us-ascii?Q?kCIB6x8SLwqvb/rkFk8DRMeoYs3hplzOodthZ/cf6YzFlcO8K31BD3g9iQVH?=
 =?us-ascii?Q?k6C083oNzoh9G7OULkMnSlETSr9bL0/k62BzZfRKM/P36Zb4PQsIlT0mzvQk?=
 =?us-ascii?Q?D5fG59jdqAbxtnhKIw+s3AkC4H0sBddQyEr9QDXIoWaSeZIOIExBdpsZ2WNl?=
 =?us-ascii?Q?Kb/N3UNiLZv6Tv6vXu/yM9G9VHHTfBhHGaaz/HsSxX2QbKGceokb07EhazNW?=
 =?us-ascii?Q?03c6nHo6R6h1MQNj6lVtXE8Svil2LO3e5e809ixgxWKu9gOYnLroSw9AjsCx?=
 =?us-ascii?Q?/sYQcaIOOXUCp/wIlW1CjpjITr8uLuu6diqk7ANd0byfeYVP/WIBfEqokc1k?=
 =?us-ascii?Q?zgpTQ9OdiUaE+z9qRcOAOV5dwOBHtYLdB/Pblp6kfT91yzfzincDSsocHxm1?=
 =?us-ascii?Q?SpUw80ioToDq3EgGtKIvlZp8IKp7npfrMczjh+w8yw7oY8zUiopoVmkOvXVu?=
 =?us-ascii?Q?ADHSTkMon210/QQHeRYOKfQAMFawaR5lno5HDhimwncWP2GwtRg1jYYUWsBa?=
 =?us-ascii?Q?RkmeWbMPaQnn3MvAgqH/WDtwGMnL+yMwVt9xRrNSf6MggK7nISqKVT9HDS14?=
 =?us-ascii?Q?bP2PWUW1VNFoa3SHFo2pTiXt/BNgz4UIXd4rNxmhsTEiuTOsPWn7y4A4Sj8m?=
 =?us-ascii?Q?ozValjphAAtmsBdLk/S3x2bu7jN2O8i9LzUwuzSj/KuZddpsq/m9mFbvfJ6g?=
 =?us-ascii?Q?GABstJofIymZlY5Y2svgWqzIiG3CuDJtU3K/Mo+kOgK2RYlPlu/WrH4Rf1YW?=
 =?us-ascii?Q?+Qp5AGg76c1snNMZPpHCSHQPW5Y03rHSgm3kxzNcPzGY8TunmsfAGi0oIFaS?=
 =?us-ascii?Q?wxN+TUUTl9YiKwKra6lF29LZVbD/n8WI7f6WFKMVgc/662G7cbhK/1pt5Po2?=
 =?us-ascii?Q?3o7JkbWOkgOacRLSw+rpurIvsq0gRJ9a3Adfo4k2Cgg8v7391D/+DoR3PDHF?=
 =?us-ascii?Q?1UUOmER7HHab/SLX9+kPfZ5l+FwqZto3U+Ya27SJs/e4IY4s5ybmVx7G7iMo?=
 =?us-ascii?Q?VJ2GtaYizQMe12CJsV1Z8cXd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7103853-a65e-4210-f0b0-08d9533d339a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 09:34:17.2059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zf2wopWkY9fArWBCMamJiKlG6q0rKnwzXO+puZ2Gw51MiL91GoARwgU3dqFeKe3CPoTL7zHlDFHLTKZPKNAIYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Saturday, July 10, 2021 2:37 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH] ice: fix build issue if
> CONFIG_1588_PTP_CLOCk=m
> 
> If the CONFIG_1588_PTP_CLOCK symbol is set to m, then the driver will not
> compile ice_ptp.o and ice_ptp_hw.o because it adds them to ice-m instead
> of ice-y, and nothing includes ice-m into the final kernel objects.
> 
> Fix this by using the ':m=y' so that we always compile the files and link them
> to ice.o when CONFIG_1588_PTP_CLOCK is a module or a builtin.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> This fixes the compilation errors that have appeared from lkp on Tony's dev-
> queue. The lkp complains about other patches, but the root cause is this
> issue. If we apply this, it should fix all of the lkp issues I've seen so far.
> 
>  drivers/net/ethernet/intel/ice/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
