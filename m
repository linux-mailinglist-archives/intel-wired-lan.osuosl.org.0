Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CF1446127
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 10:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B19524063C;
	Fri,  5 Nov 2021 09:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7dipMr3TKGc0; Fri,  5 Nov 2021 09:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B461340638;
	Fri,  5 Nov 2021 09:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 659401BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5300A40638
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saN7Zs5_Zu5q for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 09:10:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97E9540637
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="295313350"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="295313350"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 02:10:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="579435544"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2021 02:10:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 02:10:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ihdlu+k3tmMGkxWePogSwafOu4U4Y/hyFBCmMEphDKGcg//cVX/yf/9AKkIJ2uwm71uanTsvl4oBnh8VUtwY35aVFfjPTFkVnd0WWi3NHzHNXQ7ao/x7/zHvBaUtk8KUeDvy+QRnLxoacblEPTluA3glvoUNSGZUGFhgtAFDdHyp/bmOJQW7lnpSKgEKtB6JjxgVuI8IEIPxvn0fKq6v1zGZodUZuBYwy3qXiJ2tVkJ47NngdTCPM7WRe8QcbI+zpOAdoB9Td62ZrhtYol+6V975lcnGJcDsXBcemNRzemNYfvVzoJCFL/v+0i2+StXPX2i0L/9cGk8neTIiL7eUrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JnILp+Rlh1B++Yy7D6uKVGwpit8oHvk4GRy7MLMNxhg=;
 b=guoUJj9YBtv2ltzNuBC0VuS4BIkeQTyb4ffUf/qUrJZg5g1FGdWl12Kz1AQ+iUeaZtzYP2dP8digYXgYZQLvn0p1kVN9h1vSjlSQTW5KixzvXAFfx/joD6RPl6wZFtRrfpPd6Y6/FvCdy6KoHLYfqSWe8RP04+9aKO3/GvkSFAgqwNKsCs5Q1x9xGVlX1r1kI6/nmiz0sLFuSekNKxg/dEc13undMiLKB992CbeCGaHBqF3CdbDK8gMM8HjlAvpcU3gdHr4vLJX1p7tDjQAGMqNq1Ldh+WRcfjGyM0kBO6+DAuYJ2ern8OBfhs4zkMjMJif609+9niFw2uqogRan1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnILp+Rlh1B++Yy7D6uKVGwpit8oHvk4GRy7MLMNxhg=;
 b=gFe3/kGbKmRcexPYla4y4s2h9SS8SlHboQpo86BYzD/EMPMIR6V5D+ZXQCg1g5NE5P7SWyI0aqh05HJoRX0U7MgWvpSneBDtLLESRfJa9uqLbLjhOYAgUZRpTVuirLFTfHNtSiy90aeY8cudrrMEg08TWgtMGY1v6jx5TjeQMFQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3574.namprd11.prod.outlook.com (2603:10b6:a03:b1::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Fri, 5 Nov
 2021 09:10:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.021; Fri, 5 Nov 2021
 09:10:01 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 1/4] ice: update to newer
 kernel API
Thread-Index: AQHXyf22NOxZ02X0N06W+GOfwHRHt6v0ta6A
Date: Fri, 5 Nov 2021 09:10:01 +0000
Message-ID: <BYAPR11MB336780E7D3A912DF308F48E5FC8E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
 <20211026000826.156803-2-jesse.brandeburg@intel.com>
In-Reply-To: <20211026000826.156803-2-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34a99c24-749c-4667-cd0d-08d9a03c0c9d
x-ms-traffictypediagnostic: BYAPR11MB3574:
x-microsoft-antispam-prvs: <BYAPR11MB3574F3988955791C968D8FC1FC8E9@BYAPR11MB3574.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:478;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DywUmgOStVkbY6qdqcZFkHdRfuj/BJ7+Jekj7RYQumNQ38kFYfOLiQYgKQRTjcSyOVPH2wvcCnpTT3Tschf7mKQUqXMbfPWjhLMc/MnYm2raWWE/3AEEwOB60j/CrSzuADYPnR6sXMoB151gmwMiGWka0IDi8m25iz7kg9Yqks3B+9PDV2e9gIiGbMfDeUIYvgcLHpJG/hdIJ2TFx9C/ffHXl4uQPB9edg4DPizQxnj3iI8cnFrxxcWWRuy1w6XJ0DXD9KcL97A6TNKoPnMZy+2vwABDuoFXmokUzMKmV0B2tVmAGrwW3uXi7gzUSOiTQ1+fV0Uc9AFQhPWMviW4j6iAOfTcDaW4c9zk2+wUYB9HyCvl2ZNvUwi6DWRkrREOByzsBq8Buu8trZHEvK+pxPyTWAOmAl2dHdBDQnbOv16Nfe2BLxszM3V7V6OdgCBEeszSi4b56+Uw8NYVcGlLxjkMbZZbf05GFd/FqY9+IadtN/Ljxu2qGgAGL/ct16aR9yuMYK1cK+6P2S3gqyIWZM01Kxmys5KQdmceHPXf8uPAbZ/tDMcz/65iEaxT5ln8l0d5NWZ6rUF2lPlYO7BVdW3fxD+yxbkWDP3Ati6J4QyA8xpmmLDW+EnfeX/Q3sZfPnn7uDlkJNwxVGJh4Yp/MGyQXfNF9BgDD83W11vBbU6owl1HvqYUg/+qLD34JlFp4DQP8jPXBCBJQ7d9BjrNIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(186003)(38070700005)(7696005)(9686003)(53546011)(83380400001)(2906002)(5660300002)(38100700002)(6506007)(86362001)(55016002)(82960400001)(33656002)(122000001)(15650500001)(110136005)(316002)(8676002)(4744005)(76116006)(66556008)(66446008)(508600001)(66946007)(64756008)(66476007)(71200400001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iWhXN+V20zVNShFJmrALybYzSq5M5/WSamPewEQ3uVohrzCPeQbRSJ89D5oj?=
 =?us-ascii?Q?2sEA02K1tmsLfMw5nb7b0SdiBhapF6ZfiHu3z2CCxYNS25du/6QEex3BpX29?=
 =?us-ascii?Q?tqEKpD4LJoBwJgquawVvsXflp++9t2Ng8U+LlJUMTL/jn56Ad3ME8+J7aN93?=
 =?us-ascii?Q?sSpP3XDhRXD+/cWLdRG/aqj0F4wb0ocaQmMQiRjdQ2hYXeeqgvxbl5LZWtiY?=
 =?us-ascii?Q?LywvKGJor2jiZ88uf4+s+Yq3UQLgcS7iY+e/fV1hHSYvKfAI+MnZk4yuF3W+?=
 =?us-ascii?Q?C/AsUyU6J6vB6iD6C1jAc7OQHR1RVvPtaTVnewnMA/4R4iQRnBNQXU/AW1W/?=
 =?us-ascii?Q?WtCS1zt2D+tRRWUsaZszX7v6LkcbhWRZg5uLyI/CYf/gD9HoditlDylgqCmi?=
 =?us-ascii?Q?Ds40sSkMX5ATJk7FJOhbefex0ugVNJoEoa4N0bwg+/iq9JPFXgY4Qy5JJXSe?=
 =?us-ascii?Q?XSt71y1m5oJOBfFMOTkzDQiE+0jeBm7+WVhvevIXgA9UtL0cr77njGXJyLnp?=
 =?us-ascii?Q?F93ft/IKKY//QEkzkr9PFHpLyy95xB9CHorPukTTCNlEFsxmUprUFgYx93h7?=
 =?us-ascii?Q?RTuOgcttt0uKuhfzgqCECwBzV46sBlni35tBjP2emGyoU+45LKi3oU5Tn2PZ?=
 =?us-ascii?Q?IcfwjQDKqyo/5YFtp+eIOU3QsQldv2iduZEskcTBn0ceM5m196sI8rC/4qEs?=
 =?us-ascii?Q?cd8vFKrTzP5L86McY9U4LS6BF8msfJaCuj2oPPE97bI1togejIXRcKWy/5dE?=
 =?us-ascii?Q?BP86BjqYq86VFdUcUHb4c9wc9gSSAW5OFjnd5rcAp95Yd7l2fVCIi6X+riNH?=
 =?us-ascii?Q?uOs5lREmWgzdeBXkp+qQMtpMdaDnt9bN6MtM6f0wPHyyLvBbsD0Xw1xPMlEz?=
 =?us-ascii?Q?V1c09YO/VP7NBXMf18wfEyXiQpBwgdN836TdCmAmcJvYVlQ5TxZKDyWGp8bX?=
 =?us-ascii?Q?s/JH1/X0ckG2PBodEAYuo/+7qO1uqpURgeqxBlYNVcsDGkITKpbuVmnJXIqj?=
 =?us-ascii?Q?STkAJhW3OAlBn94XFB0S7pgTcY3Q/e2Eh81xC1ZSFRc4mFbPl8CSL8myEEXu?=
 =?us-ascii?Q?dQSKXQOWrTznYmge22rgZ7GIgxV8W7FXKfbn+GIvxdhDUWsldYG2zChmamo3?=
 =?us-ascii?Q?yif8EA0FnABWJO4vjEooOANTX67JFM4LbXFe4UvGAxJObUz/2PwUZxhwkF0C?=
 =?us-ascii?Q?4ax1IuwyEL3YMWyuj7d/VQ8LDJsObYlJ+j+tHBPh1k3ZhG+/WFspXZQ47K0x?=
 =?us-ascii?Q?5+xfx+sKA/m54ekbF9P6NcOb5QXbYrmzTo1jRw6I8o0zD2kEXK/GrXjXZZLq?=
 =?us-ascii?Q?N8EgrMYep/uLgfLhCOO+7rCPyKGE/e2bOVvzRP6Giv3YpKFZy4Zt/mYXN4My?=
 =?us-ascii?Q?tMZToAEgTqbRdkOcENDKMu7bO7I2S5oJdrFNyrtdnyX2QyEOQ0VDvNKAZqtm?=
 =?us-ascii?Q?bo3CrlK+cfd2u9TqyndKK//SsZL2YmLynHZV/6hqtv4l1znOZ+qh2xhN5uE5?=
 =?us-ascii?Q?pURm4JoJjGCBtCYm2IL/Fu4gTBPTrsdUiVKnua3Mc79x+zfr23ZEiV0iL4Zt?=
 =?us-ascii?Q?Y1/z94o7Kq/U000uk7+/A1somLfoZIvLBTjEYRepcwTkmslb8FjLIyBu6M3F?=
 =?us-ascii?Q?WVwRcx6wUybcQqnA6c95UNA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a99c24-749c-4667-cd0d-08d9a03c0c9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 09:10:01.8316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qMU0k8LZVGMH+1GW3Iicl7FVkx4a4QtIIJK4ds5F6wPHO3zN+uvuJ3Kl5XxOpm0IZejkyJ8VNfEbUwa1+6Rx6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/4] ice: update to newer
 kernel API
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Tuesday, October 26, 2021 5:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1 1/4] ice: update to newer kernel
> API
> 
> Use the netif_tx_* API from netdevice.h which has simpler parameters.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> Testing Hints: test transmit performance and queue start/stop tests which
> increment tx_restart counter.
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
