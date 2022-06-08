Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5594F5428D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 10:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E0160B64;
	Wed,  8 Jun 2022 08:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1sR1rz42ZvL; Wed,  8 Jun 2022 08:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AAC560B3B;
	Wed,  8 Jun 2022 08:05:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59A4E1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 08:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47AE640B54
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 08:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a_kn1S0SSn_E for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 08:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 119C440B0F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 08:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654675524; x=1686211524;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ppduXY8kfi9zkFI3WfCzlzfef3YdQpsPRR8zzeAd95U=;
 b=cTo+XJ5dyFI5xFriSttaRrcrMO01Whr3p9SyofhKYA1ZAhzg9M/tnj/H
 ia5h/INEB4TV+KoRSe2B0XoKDUX2xg8TzVlbgcba+yFLYEXJDXmv1BlTt
 1YxdkAYwTIZNSNNPibKFZQ23fsJX2WFpDTwB3igdqxMGw9ELDozHpbAya
 igom/MILGaf2niL8vU7UHoDeki9hGSTNfpycKEjqDbKc4Qov4TW5FLP3B
 1JzcetpSTQvdjN9ZllN7qIBu3JHjQof8jebSMChbrvT8ZynQCWbpPyQhj
 QRE/E8UeL/BGz8xzVSSXxqFhitAGuQlHFm5vqR1oUw50F90kAABXQvtdG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="277988385"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="277988385"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:05:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="555300234"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 08 Jun 2022 01:05:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 01:05:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 01:05:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 01:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fm5Cx2IgGtl3occh+BWAt9NSFAEWZw6XCDEheRKs4auU0tzWLkaeQaj5YopzSZDdMDoTJsUv7YCFfZKl2EmLHhkh6Lm/keV7Z36sllxv4IMZwbuYwveBC0BplDhjOFcWhuk705PeEUXdDsNX8GJ5n4mj/0pGnQPV0U+YnMAZpATgK/344Wvx5C5eo+bM34hB/YMB0+X202jE8OJJBDUeLLcCOLFQJ923N2sq1zDt4o2FeYEbuxWF35M6KCGnH9tD92O81REkepE6mMmN2rgpnphbhscbqQ8EMKFipGMQBi/Eha5cnb87gDSQWfzVX1i5Dy+apr1HmZ0gw3l+Sv96FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppduXY8kfi9zkFI3WfCzlzfef3YdQpsPRR8zzeAd95U=;
 b=Ro4ICpFznpIvKTdxR5q6+BSh8A1I9RlenqwQyHH5jcDDWfv4t+ik1UnM94JeWTArrLhbeleZ0LcpLcd/DyUV8W6Dxote2v5BP2Bp2Y4G71dFU3C3vl/DZB7OC7Xi6o7z8QZ3oM6+HTw6xL7mwPnx5i5aA6mtwjC8yPImEUUKUfF3xYy3QXr9+aJzBJ/nsBiiLDybWCNu+dn1KH0LVi7IXBZmNxAvlIszy2mleLffin9M056I+vSvD6fWxS9ddVAuskM7u8uk1/wlMkndgFYEc84/b1jjSO2SjLAoYXeG1+AbRYjHE5Bf5tZEECj6IMLsxCi0jxXWsSM8vs3xu292vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Wed, 8 Jun
 2022 08:05:19 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 08:05:19 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix PTP TX timestamp
 offset calculation
Thread-Index: AQHYZF20gG+yE1u0IkanI/VFZyarHq1FU/5g
Date: Wed, 8 Jun 2022 08:05:19 +0000
Message-ID: <BYAPR11MB3367FDC01428F018BEF465CFFCA49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220510110343.5665-1-michal.michalik@intel.com>
In-Reply-To: <20220510110343.5665-1-michal.michalik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 219d5ad3-60fd-44bd-5e05-08da4925a112
x-ms-traffictypediagnostic: DS7PR11MB6197:EE_
x-microsoft-antispam-prvs: <DS7PR11MB619792E2B0EE96EA18BD0CC5FCA49@DS7PR11MB6197.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Uraqrf1nTochZ7Vfa7pmJnsCB788GwqolxBKcY6Ba9TswtyX+VwqRbagdwDvY3+PW4gs3C2nXNfl1BJxWdWBsQ79PxHl5/HmqMg45SL+g6rwZoIcubPtQHnYQAfUIXn4hPjLThubE7ZtYY/3O022OeUOCnXSk6qBCNJIzt2xrUtt3bTff2Zv5bauYYS5fp+4CbWxON59CXs0eCF3VYZqCGt2uea9bTM/EiXwxbtqPnZRuE8khIFQqXCmLVRa4GRl9KB0qquGxX/MA0IZ0xYFHw/2RwQqmLsqF8Ye6pWDIF422hfdWyzR3HsbjEB6tn+70kKiEIwp3WdJMaHI6wofhcMWHHPHwhU1zre6J+ovy7H8XMNyCL8C5vYaKerueXy7+dEadoOPd+3ztIF/PsSb3/4WYlf3GvnLcscR6ruY0NJXai6jKbmFNeXZqCcb7GcaoIAw5QGHHJ19gqXMOFSJ84BJHX1LdqOtGq/KeNrdvj1b+jkVc+8W3TrKuvmidhsiS/O+mSrOyv118p6uAR/LWX8AaRt8gkhftHEjLmSW3i2cLGROlhe3oSkBt71kdnhZGU8CMVIuF5JXmHoI3jZvWDH01cWfmPNRcCHm0ARja9HWeuVw2N5RCrtNJn+QUTmZHWtMURec0UAdCEWGtd/lnWw5cQFk5UNMbIrh1E4JILdtgAZZmQKNvhca+i4110paKoeCTiDsrONkVpDrqRTzVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(66446008)(8676002)(8936002)(76116006)(82960400001)(508600001)(86362001)(52536014)(122000001)(38100700002)(5660300002)(55016003)(71200400001)(66556008)(66946007)(64756008)(38070700005)(83380400001)(2906002)(186003)(53546011)(7696005)(6506007)(33656002)(9686003)(26005)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkF1ZXFEcFNKdTdRV1JnR0lQM2NPNDVTM2Iwanc0d0JWYVlmT0JncmZUUXFY?=
 =?utf-8?B?QTh4R1RzbHhHb1dLc2hZczNBaTNsQ1pTQjUvWmF0N0xUSFk1ZjVIN1JnTUdr?=
 =?utf-8?B?NTIvVVVZejBUYVV0Tk05K2NVRmk0cHRQMVdqYUJrak8ramY0MjczTHBKK2Jl?=
 =?utf-8?B?TFhVZmY4UGpBai9pSWdzMkd5NlNhRlpNZDBTa2pQc1ovaTFsWGlOM1lLQzdM?=
 =?utf-8?B?dEVncWtPMWxBbTM3WGVLMzJjMmRjbkN0b0ZkMEYxOExqMkRqWXRhTFJiSWF6?=
 =?utf-8?B?YWpVNUZhZmpHZ3hHTDFNK1ptSjdncnl3cS9NekVPcFR5SGU2WHZyTHFFRUNH?=
 =?utf-8?B?elVzdlB2cUFaNHlKR0hEUTdIRTFtV0Q1UmNMRS9SSGtjUDNCNVBZbk96dTZU?=
 =?utf-8?B?QWpZMTBOTzNWTHZzS0loanloUFcrcjFJUFhwMUxJRU8rTjlwUXlUeU4rNWFX?=
 =?utf-8?B?TlhhcEM0QW1TTU5vdTZ1R01nRXhNcVZjRXVwcE9pME9WcjRsR3NVaGF2d2xw?=
 =?utf-8?B?aVFIcS8rWUlYblZTdHRXM2pTb2VnQXJzOURHWjFKRkNxS2Q0d3lHUUgzelhu?=
 =?utf-8?B?ckI2MmtZWE5rZDhvZnNBVDRSL3lBbkhMdHJPQUt2VmQvb2NXeEdiMlJ5U2sv?=
 =?utf-8?B?R3BjMG4zbWJwL2hTeUQzUnNCYVdQMEg1Y2J1WStTbzhyVDRwdW5RVVdzcWVq?=
 =?utf-8?B?Yzl4TEx4UVhTRy95aFpPZkV5K0ZPZUpERk1Sdks0dGE0eXllNjJmK29CVkxJ?=
 =?utf-8?B?aFRrczJXSmk1U3J0Ty85U3FYUlpPbzU4L2FGSFMwNGYvQTZHRHFXRkNHenRz?=
 =?utf-8?B?YTkvOEIvRFl3TFFCQUNhYmg0akdIS0JxTkRqaCtOakNqU1hTbVVMT1JzQmhP?=
 =?utf-8?B?eFozZ3Q2UEc1emFFaDZkMVhnZEtSemZuTlpmbHliSFM5cTM4VjBLTU9OUFVa?=
 =?utf-8?B?cmZKcXBuN0NuVzk5ekc0djNMdklIMmplVHR2ZUgzK0x6WnYxR3FySkxsV2Jk?=
 =?utf-8?B?NUx5NU03T3FPdk9acUp2QnU5UnNwbkZycFl3VTdjcXRmQkNmaEY4U2RkKzlF?=
 =?utf-8?B?cUFtRFJ4MENYcHpTdVYwMmlLSkVFcUpjSEtqeDRhWDBqNGx5WlRPd2UzM2Mx?=
 =?utf-8?B?TkxobTFBR3Q5ajBKQm9EQkd3bko2aWptRE8wZzhMR3NnY1lYb1BHeWE3NEVu?=
 =?utf-8?B?ZktkRzZDN2JTd1lhQXVtK3VueG1UQ0pkVWZPdG9KMUNDeDJ3OUtoSVE0U0RL?=
 =?utf-8?B?TXpPYTQyWjVualcrVno0ai9HV1JmMFA1b2p6MWtmZW82T0Nwb1pLaUtGNG1y?=
 =?utf-8?B?K2oxTlFaV1Z6UW10OXFMZEpxZDB0OGR3RkVjQzFrT0Z0eHBncVZRMUluaGpO?=
 =?utf-8?B?eWxkdlExRzNUdGFhLzl5S2E2U29aQktXemxTY2lJNFRrNU9BL3QxbXdWNGR2?=
 =?utf-8?B?Z0lRSk1abXRkdUUrQVQ0OHVsWlIyN1hITzlleEs1azFTRXlFNTlHaTBqQXRo?=
 =?utf-8?B?K2tzSFh2NlQ2UlRuR3pob2o5MTc1RCtjS1hmcTBoNnZYTTB6UFoyRzlRMG5t?=
 =?utf-8?B?M0k4dTBDRWVQVTRwa2k1WmVmVUFyQVZIcWg0RnlPV21WeWVSOHNZcFNvQVFl?=
 =?utf-8?B?MmFWWHhhYlkyanpKZDV3OWNTb2NyZ2RmRTYvcVBiT0QrZ0cwSS94bUVxQTVi?=
 =?utf-8?B?Ujl6cDlKYS92YXk3aUNxNVRSWGR0c3dqTDhwS3Y1VFROWTl0dll0RkI1N0Vh?=
 =?utf-8?B?L0FIVnNYK2Q2aTJWOTl5UkZhYitGYXlRN1hNcU9XVjhwa2tnTDBleVNXY1JJ?=
 =?utf-8?B?SlRISG5ITWFVTGczQ0dKM0I4WUNJOHBqUXhFUE40Rjkra0p2Sm1XbkdSdUtl?=
 =?utf-8?B?ck03dy9GVkFueUhKdTZZWkhuSDhOQmMrYmtlb25Ia25tcUhteFdJeU51Y1o0?=
 =?utf-8?B?aU1xZVFpOUFVcEpVeFg3bWRaR2dQc2dqK1pwQytVazJvcDJOYU9mOEpTOW1N?=
 =?utf-8?B?bTFCb1djOVJucTR5RjRUWDg0TmtZVEJKN0lxQkFKdVJTbXNzRmhuVHl1dTc1?=
 =?utf-8?B?cGp6NkhGaU5nODRGZnIzbHFOczc2WWxtUzFkdFQ0NWFFVmFRcVpkaEJzeDVt?=
 =?utf-8?B?VjY2S3dsUEkrd1VJQWcrdXZaSGpnZGlZUHRSTjluMzgvWmtrT0RTL0tVQTVP?=
 =?utf-8?B?MVNjeWpUODBFUUxhbUtoUHZMNjJETG9SNlVlbWZMUGZHelJPTFZ6Y0ZyRFl2?=
 =?utf-8?B?cWNjV0pzT2Vyd2MwakVKNERnQTRiUUJRelQvSHE1eVlBVCtTVU9Gb2toVkNk?=
 =?utf-8?B?RllJWjVEZWVCWjkzU3dYbWlpdldsUHJxeXAxUThZcjVncWd2Wmpxdz09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 219d5ad3-60fd-44bd-5e05-08da4925a112
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 08:05:19.0674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +mpFXYtWOdHryZYKzr797xm8Kl5gVO6+82G2AkdZ6UiWD+AGtA3csuZ20210dOlx2SKjRvowahHKUoecXeE4Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix PTP TX timestamp
 offset calculation
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
> Michal Michalik
> Sent: Tuesday, May 10, 2022 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix PTP TX timestamp offset
> calculation
> 
> The offset was being incorrectly calculated for E822 - that led to collisions in
> choosing TX timestamp register location when more than one port was trying
> to use timestamping mechanism.
> 
> In E822 one quad is being logically split between ports, so quad 0 is having
> trackers for ports 0-3, quad 1 ports 4-7 etc. Each port should have separate
> memory location for tracking timestamps. Due to error for example ports 1
> and 2 had been assigned to quad 0 with same offset (0), while port 1 should
> have offset 0 and 1 offset 16.
> 
> Fix it by correctly calculating quad offset.
> 
> Fixes: 3a7496234d17 ("ice: implement basic E822 PTP support")
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_ptp.h | 30
> ++++++++++++++++++++++++++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
