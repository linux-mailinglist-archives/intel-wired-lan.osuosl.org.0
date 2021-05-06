Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E540637557E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 16:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BEF340669;
	Thu,  6 May 2021 14:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sODFVUix1_rp; Thu,  6 May 2021 14:18:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56D5040277;
	Thu,  6 May 2021 14:18:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CE441BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 14:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A31440597
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 14:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fGdU-JqGvQXu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 14:18:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E3FA405CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 14:18:14 +0000 (UTC)
IronPort-SDR: EnwTE5E6Ly5uZ4/RMuHES95E8ooo5WUgWlXb35ni02q+R48ZgGrfTrGEu3kKGWIRMyMvKCTH5b
 K0Fpjcgmcl/Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="198564924"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="198564924"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 07:18:13 -0700
IronPort-SDR: es8SqhyLjj5X96Pp35ROU+XrDfMluuwNJauOrkDIRgNymwTmwYPHqhuXnTCpO3D5Zc4zZVWnGI
 4Kf6um4DQr7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="430579423"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 06 May 2021 07:18:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 07:18:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 07:18:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 6 May 2021 07:18:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 6 May 2021 07:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZhVgiQkfnq1TDxS4WQEkx9qALg5Mv4rqr1+1nflHbO2rFv0pGIm/F3pYvZ7saecwqpnqh57veNnmTvxND/0j/6DNv2SUZHnEb2BkncNPox/wxvc8mUAo8u4a2jA0EG39XU0+TpZou+5/Bgkrrn/UDOafRFgeyMLWUrqMW8OXGHwi0LuPW/7+sBlbhBsC3ixAj+uVjvjqN+0PUb2R1jAJDxFybrKD9bJpqY6vHFAYr0rc69q2oC5TveDWfAzOLai8FDvLdMfrdSEeml/IMTgryRfeGjs9IQkTwq+aqe6mFXvFds/BMfLCLq3Udws7Q7LgfHUecz+w7BstSFPlrxVHxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKbyiIQwlVu09FFZjPxYbkHTkMOhyaItRMhXil4qAp8=;
 b=HrjLHGNtGUps6zh3YPxAXYtk0wQpJTKUJ2isYlB8X0LtHYFbQw/lHl85rNrhJ7aFubWvdRk6AuX7nvif0zE4S9dUdkU5VH1Lg4i7jxoeux2GmlqPWNp8X2YRd7l+V1fxYNJseBMEDx+w1YpLV4097A9Hk2bYO/cmTGGSxKOdSkvWrK91GMtQFBdDMnhKN9W9e4YrWKMMmJZr7uRHn7hPiM21ith2kmcHzexSHlXfPqh0CoATiLonPiL4iLBsCMhXxftpYaFRJaPpD+2Fsu7LsDvoe70skmjHiwElQb1IiOCtdz9cdlY1u6Yhu0vEmW+nSyGzv6xliFmtL/ZVpmn1ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKbyiIQwlVu09FFZjPxYbkHTkMOhyaItRMhXil4qAp8=;
 b=zHWkWc/Soo2bhqHh+zp4pOoYrM8z5qIyUoTfqtU4XoQ7FVI5yMR7Q+bodAvSs62C2eDzsdr9TFG5VMH/o90iW+SbEumiwE8SncEB1LuN+MKo9Gthm/IfIgXGttYWuRhir9FfZsi/BNZf98IODwnPMD6PokEYUQUO2QIJ6i5DC1M=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.38; Thu, 6 May
 2021 14:18:07 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4108.027; Thu, 6 May 2021
 14:18:07 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix PHY type identifiers
 for 2.5G and 5G adapters
Thread-Index: AQHXMHNmkhXhz6WMYUOg6/hcR3cDJKrWb7Yw
Date: Thu, 6 May 2021 14:17:54 +0000
Deferred-Delivery: Thu, 6 May 2021 14:00:00 +0000
Message-ID: <MW3PR11MB47480D31C46954B159445C67EB589@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210413144307.3616-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210413144307.3616-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ed5585e-9d4a-407a-5d18-08d91099c56f
x-ms-traffictypediagnostic: CO1PR11MB5123:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5123C7C5A110E3B668479E2EEB589@CO1PR11MB5123.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:95;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1bRZuam6PsERQ+FEt4RJZrzMJsHDCufaVHBWPY+5b0y8TVPhZX9PRROzR4ZOUMocmpqIx/kgTowghyA9rtch2vnfotgSuPHg8axZIXFQtVgEvwBtvm3QO2aioeze5JDQW0BeHokdC1GjZKyrvUSgv3bcfi+s4cnHBpTY3i0NzqYjKRWiKjnmZzYnF9eJh1dnRDbwqUyU9fBnJjti1yLlz6NT3U/Th4TmZI4am6LsF0GAE0pDbHv4HIKsvyxk4d7+5hY/DkVCClmIJ4wtAmajXruyTT7KQtF6Zv9jzN+a2IhTVfZgIdmxcFwSLFkNG5Ms8xMvcVU+IkJHk5XnQVbBEYTe3ClFSnNQ8TepCg6fkMLq8nvly0SM5cnxs/c41pWDfvIVSpP8ik1FxmrqL2FPrUqr5EMs/4pFXMIs0IQDqYQHQ8lQ7bC/cYuLpnawjzFhyOdsy8jIu48+q3WTexAztw+wNB/pJNJvdinn0WJpnha/BAp63c7iK1yU1mAFv9znwRWgzQLm2WkiiqeQEufrdxdoxobMgtKuY6EbN/TTj0zWiwLpoC95flF14q90APC0qB2Nw4gbqI8jLzKMpms8d4Z8+rsDM7dxqvSRxo8EwLs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(346002)(396003)(376002)(136003)(5660300002)(316002)(64756008)(52536014)(6666004)(83380400001)(110136005)(7696005)(71200400001)(54906003)(107886003)(8676002)(6506007)(8936002)(66556008)(4326008)(86362001)(26005)(66446008)(2906002)(33656002)(38100700002)(9686003)(478600001)(76116006)(122000001)(186003)(66476007)(66946007)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?QDmOoWUjyJKBPIy2QQqqHdHANEAJPl1fRYNsu3VxF1ST+7m0AYi6PZmyIQKm?=
 =?us-ascii?Q?s+cLMwe+D349+kcHgMuqBNnuRHopBA0kAUE9okhCA8F7MN169lhPlh2aa9DG?=
 =?us-ascii?Q?FffRQPW2gP3RdSMfDuUsz4dkLTPZYlm8zjb6Hgoz1BI2bPTwlahv/smjGr1I?=
 =?us-ascii?Q?Fmz6m9NU3ftG7lG527ehbOXekGjYNjJWC5EinFQ1Hkdso3jcwduqT5ZtCQKW?=
 =?us-ascii?Q?ofmYj+tcpwsTJGuBfgWjNlj12gR4rODHdWylmr5TvRP10DoaAlVUkby+XaXl?=
 =?us-ascii?Q?RSldo5RRoYR6PCs1EUUgsewVP10DY343ZzytJzFdHhL7Jq68T8mNptltFjew?=
 =?us-ascii?Q?v39dHjuffmw9nYbr0Y4l2u/J3pcOVaw6ALsDe9ZpnkI+CdcwdCyPEvlBt17B?=
 =?us-ascii?Q?TqkFfiSXOrxUkAU/OawrXwIS6td2jVSXthSgFfH/11VAs4cAU05kO47GDXxN?=
 =?us-ascii?Q?dCcEU2ekLqJyfaeWAfHuoTh8OXZ1GmZ4e8Fu7Z4sOfSHRqE9pCECDxMqN8bF?=
 =?us-ascii?Q?7CWRDC5E0ztzDUG/mErdJlCXVh/lvhvA1VDvg0fqiZ7cLmRAFCVmLBp5uSpr?=
 =?us-ascii?Q?M+Ynr4RMLg3AobMjSFLkH6Rz1bNK81znfJcTc0pYsw1S4npTe/m7BpkaNyxO?=
 =?us-ascii?Q?ukfxt+LphMhAXgVDAAXdscbLhQlPx/hMIU7ITJWHT+4msBfaJJqzGOZnvbTc?=
 =?us-ascii?Q?47UCFGEkmxNXFZDRrkK0xMALA0H9qw0duptnRO3ySuuJrNBkonp89Z4ECCCu?=
 =?us-ascii?Q?zg2mAT8Av1m3WlrozgpIDhX3GR+ifehixqeYF/dQzTGr9F0jYgSrUlfSEm1Z?=
 =?us-ascii?Q?apfGEtj2eQDAJyBuD3Rgj7jFlWKurMWt9aGzZVJMvtaME2zbbSRHOEDFCiKn?=
 =?us-ascii?Q?3sgfbUW4oDHc23uIYlEO7DqcR/V2jgrKeGuV8poVSOxF4BecrYp/fcGExlvK?=
 =?us-ascii?Q?01C9pwIl0Hq+x4Y1TdAnY3/7OBRnfy0SIetrT0/cUstXkaM7gBUTDddL1cPz?=
 =?us-ascii?Q?mrvPFkKYTwB7rb3ndPFxkyElRFQw+lVggLNb05OSyCpFIFOwjsUWgl+OghT7?=
 =?us-ascii?Q?LMGzVr/a8nXAYAWpP6+NlR/Q4lXqJpvTjkRadFDoeooxBQWM9PmdBHioURY+?=
 =?us-ascii?Q?lDjnaArL7THWW8Hmpcow9qD7cPzFwjnN3CNgiWHjfulZ+xpKpUrj1UayqE0d?=
 =?us-ascii?Q?NQY4U2mFyf85PFq6gVlNw5PmJmDgvdMS9UUkmb2EqiqGx10M5r9dMY/aYd1O?=
 =?us-ascii?Q?n26D802RCR60VCvox2YqG0jEpV2hRZjFq89Pf8j95lZRt1lq10yum33ult2S?=
 =?us-ascii?Q?p6AAN88Ec9gyAQIPD106gzP8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed5585e-9d4a-407a-5d18-08d91099c56f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2021 14:18:07.7419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IFygMokeFaKvPwY0vc7ojU8FkXrrMpXYzncv8Z9A/omlGG27YzOEnAuutvFC/L9aNIRFzMVSM3MFpdwWfB9tIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix PHY type identifiers
 for 2.5G and 5G adapters
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Lukwinski,
 Dawid" <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Mateusz Palczewski
>Sent: Tuesday, April 13, 2021 7:43 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Lukwinski, Dawid
><dawid.lukwinski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix PHY type identifiers for 2.5G
>and 5G adapters
>
>Unlike other supported adapters, 2.5G and 5G use different PHY type identifiers
>for reading/writing PHY settings and for reading link status. This commit
>introduces separate PHY identifiers for these two operation types.
>
>Fixes: 2e45d3f4677a ("i40e: Add support for X710 B/P & SFP+ cards")
>Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>---
> v3: Added missing changes and fixed fixes tag
> v2: Added missing changes in i40e_ethtool.c file
>--
> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 6 ++++--
> drivers/net/ethernet/intel/i40e/i40e_common.c     | 4 ++--
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c    | 4 ++--
> drivers/net/ethernet/intel/i40e/i40e_type.h       | 7 ++-----
> 4 files changed, 10 insertions(+), 11 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
