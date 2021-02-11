Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8D3182A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 01:31:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2096A6F687
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 00:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOjepmnW10mX for <lists+intel-wired-lan@lfdr.de>;
	Thu, 11 Feb 2021 00:31:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3857C6F6CB; Thu, 11 Feb 2021 00:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EECA6F5E3;
	Thu, 11 Feb 2021 00:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 273531BF3A1
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1E06487098
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghA+WCNvVRVu for <intel-wired-lan@osuosl.org>;
 Thu, 11 Feb 2021 00:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01F8886DC8
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:30:44 +0000 (UTC)
IronPort-SDR: nPpko9I0eE4mQXLGpamc/wkPaMoJIIGL1619ka/87ann2mLiNjpvNL//dljHBtV6AA/U/KiAu1
 YKZZ6yM1u1jg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169849438"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169849438"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:30:44 -0800
IronPort-SDR: /7YZ23e02YHl4V2brArLGz7Lo5GfGp6MSZt2yowBmYtLZITYHWHFfzfpT0LDCdPj3hGRNcQCQc
 95mme742A4bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="375666925"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2021 16:30:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 16:30:43 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 16:30:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 16:30:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 10 Feb 2021 16:30:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLCFUBbjGCmdTMQWd4YYQ1A1Rr2pPCLyZ8j8H4yiU7oksfGIhECuUZFUuTstF48fHT7xGKWraDHBlg+ARi+4Tr/bQVe1+VVeln2B+c5dHrV51kH4OMBi3erYR4kXcqaG8/NDsax+CG3RQZJAdvY3Ibp4/CHabY7c68ozhIM1UWRUwA8FN+nE4yaO+gfMAETh4uf3E8w1DfzwPgERwvqFSKd/L0+tSV/QKLXtqqLCCk2jMvmeLTrBbZ8Rh7MWJnnUz/jB0TY8dhCidNML95Vgf+HJPwjI7w5lMD5Cx/F9GHP1vcUKTo/UKHIITOpr+dtxrJ7WCo0niuPKSH/iCdSxJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ueaA1by0svNu4M8adFxCahBddNNVTdElrAdbMZ10id0=;
 b=eW2EsQHlwkUuHPZpznckqDfFv+N1gl+o5JLpaOVO7P06SLwhRN5Z1yAgoNM1CpSx0FfMv1WTqBbsHjOC+QLngYZcdCw7hce37M+yklYCNhXUHWi/JtfhiKOzRPvFPKwQzvOkqOXVo+ruxW8DMdv1k2ivw5/yUmiFyhjET4dzvRlq+RAvv0Q1NrvkGEGsy/wVu220T+hULkAjqK529b79Y9JFFOBBV5U5SDyd1ySqo+pNKVg8Iksz2QYlx/gFkrIem/01V02DmO2p7hwTE7Ucy4cTvf0VJWkSb2WAl8kKQrnlnecDmEG3GJfWOkGtJP9QuAMIXYBpiCxs29On8Pbm2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ueaA1by0svNu4M8adFxCahBddNNVTdElrAdbMZ10id0=;
 b=N44I8AKf8daRpJdzj2nkk3RCbE2hiv7f8EXSC9RqbzRgBf7mKy0pbu7PdMXC/kwPNYQjPOKQOJwSVwwsHo+Ltx5n1A8dXBSxyEDSQ8BXDY3WszIei/6EFa1DgqqBupsOfBN4ZoLYE38K5gfzAhs80aGx2AbczSi90Be6/B9YI8Q=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3517.namprd11.prod.outlook.com (2603:10b6:805:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Thu, 11 Feb
 2021 00:30:39 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3846.027; Thu, 11 Feb 2021
 00:30:39 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Patel, Vedang" <vedang.patel@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 1/9] igc: Fix
 igc_ptp_rx_pktstamp()
Thread-Index: AQHW//oxCpIfCHrTOkOSmK0bpECxs6pSGkeA
Date: Thu, 11 Feb 2021 00:30:39 +0000
Message-ID: <578c9ceb86e0d6007cab529c4215372f61d023d3.camel@intel.com>
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-2-vedang.patel@intel.com>
In-Reply-To: <20210210215848.24514-2-vedang.patel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 634fd77b-13d5-47c9-6f59-08d8ce2441e5
x-ms-traffictypediagnostic: SN6PR11MB3517:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB35175E1A0FBB8ADBE7CB8F54C68C9@SN6PR11MB3517.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n0qmNuZSimp6YqTXlPdVy5EMILy+g5U7ozvHiAWha0aJRTUX8chqefRMEK8vxcZUOga0l72gF6lb/KgwcoDQ3KrEMasAOkpgBoWr0UQm0260IgvozevxIvGYmm4mWiUH5Hmi0m927L+OCmExH653bZgLARLl6GibdNjgdGmItQOC3cMtsb1mUKk4NQ7KaCkkkJObFceO0acSh4sTv5mFq2j2mHyjeoXRl0iWserPOX2itNPvW1azkaZo6bQyOvSPtY4G4NdDv3NZJucJrdjyfY+gTbnByUJ6bEw1B2fjkwCl2963mNl1j3b4XfbHM7OTK7BIyyx7dldAOq5QpCdSg2P3CRoBER+W/7gMrCx+U0FbB/NESnkNazgltZn/U1gub6uIM2hnBEIMsnJOVYXT9Y6/7/rCKAMNWgrmb1azkI9S7w0Tu3MiMw/Gc5DEvL26C4cpEx9w851LnWEhLdILKyKpHyunepLd/OynodHZz40hYmaVyrg5ZGAQCvvABHKknnWGKBQpk9OaYah3c5i51xwAuJX26YbAujcWPWqx753xPJgrR2ZACdo9I0VFFvfz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(346002)(136003)(366004)(86362001)(36756003)(76116006)(478600001)(66476007)(66556008)(66446008)(66946007)(64756008)(83380400001)(91956017)(110136005)(2616005)(6506007)(8936002)(186003)(8676002)(26005)(71200400001)(107886003)(6512007)(316002)(2906002)(5660300002)(4326008)(54906003)(6486002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WmtPSGtLWVZMNHh4MTkzWTltYXU4c0NXcWU3SEpadnBDT3RyNjF4VEE2Lzg0?=
 =?utf-8?B?U3hlSk1zek5WTkEzMWtCWTFsOTlnNy9vY2xsS2p2NHRCT3dXcHVBb2o4ZFpz?=
 =?utf-8?B?cmZzdHFKbVRUZGZ5dnZRcVhTNlRzRkFKTG85c2l4ZXRJaWc2cWNmQUUzL0ZP?=
 =?utf-8?B?T3JnNGpJUFJvZHdVR0lLTldnZXpuT3N6RjM1eitJMGRXVXZLKzNFWXlPL3I5?=
 =?utf-8?B?a0oxRnd1OHh5MC9WMU10NzBVbU4xVTkydW5QS0hHc0hNVzhpVlRyd2xFYTFO?=
 =?utf-8?B?VkV2Sld2NGQybWY5eHNaai9rNFJYd0lpSGgvdWVmMEVGSTFNSkJsdWd4V2x1?=
 =?utf-8?B?TnRnbWZka20vRzllNnJqQk1wbzNkcFpuL25pLzFFcU9Ma3czZU1acVVrMldp?=
 =?utf-8?B?dWNaSWhvMmlQSXVTRG56UTV6dUtPT3VyWTZrYm5KVHhQSW5pV0RzQjYrdEFF?=
 =?utf-8?B?VndpQStOOFR5cFZQNmZJcG5aNDBRdnB3QVRjUk53LzFyTk9CN3cxeEV1UTky?=
 =?utf-8?B?ZlpsbjNYcWRIUHdOSmVWUFhWK0I4TVhBbER1Q3lBWWVaeDY0M24xcXROdWlt?=
 =?utf-8?B?aFZnU3FMczdhM203RkdVdno5dEs1clV4OHVsaVFWMXRPUGtKTy9jOUtrcGlD?=
 =?utf-8?B?ZzEvaUVKd21tbDdqUlhTbFV5aE5vRFgva1d1VnJmS0pnVGpIenFsUUJ1T0wv?=
 =?utf-8?B?Z0d2blFXVjZrODVJSGhmWXo1WDFsaUNUbW0vbmFhRFZqRndPYXdUNUlIdzg2?=
 =?utf-8?B?VCs5WTd4VnJ6TEFtYzZqZk85RFFsMndvTEl4ZlFiMzA4cmNyb3czeW9ZQitR?=
 =?utf-8?B?WVF6MDBKUUVQM3Z5UGZ1ajRMb0VYVWNNY3NNTExqNnk1OEVPcDNmK29xaDVE?=
 =?utf-8?B?clpZbThMZ0RENUxLTXZXTmNQUzFmeE1wQlNHSVp5NmU5c3Z4SnN1TWFIRnZ4?=
 =?utf-8?B?QlpDeEI5dHVOZ2MwZkVSeGFiaHhkR21ZaVpaajJQUVArNitCOStjSUlXQUdR?=
 =?utf-8?B?UllZQ3Z5ZCtURzJ6Mm1pTlNOOTFoUTdQWjRRYzVmcXQ2TVlRNFE5MDlXSUtH?=
 =?utf-8?B?emo0UmVJWnVZSFhnNHlYcmxHYUx4Mlg1V1RhZjFMWDhWa3lLU1kxUEFtOFRF?=
 =?utf-8?B?dlZQQlEveDExd3RwRk9kdHhxbEVQMHJFN0lDck9ZcDFwTWh3ZElPQXVqczZu?=
 =?utf-8?B?cmhyb1BVbHhNVE05ZVBRcy90am1NU3RiZ01YUmRURTJWMFoxZzg2dks1MTRF?=
 =?utf-8?B?bXVWVG1GRVcwTEhTZEUwekl1QjJsL0gydE9CNnNhdENkMVNhWkVLanB0azJE?=
 =?utf-8?B?QWpqdWlJQlNLNElUT1lCL3pSZnAzbFRwSnZyT1VyRUJUUythaTZKUnM3NVNt?=
 =?utf-8?B?VTZOd2RMdEEvZURIendhRGJLdXNzaHBXY1djUXdKNTlMNkNEdTRRWkU1aUhD?=
 =?utf-8?B?eFlDQTNlWmoxZjlCSStVbW5BVzBadWRJT0hmTXBaNkFIbGZLVlcwMCtzZUhB?=
 =?utf-8?B?NCtBTDhsZlRIclI0aW1nK29WVmNZRnl4R01jZ0FaWkdOT211WjJnbVE3aVV0?=
 =?utf-8?B?NlFOcC9KT1phMmxWcTRsL29CRCtMV0E5WDhKaWRkR08yMytvUzZWOHdJTlNo?=
 =?utf-8?B?S3JPU21ZSmUwOFF4SnV1YVA3QWIvWVFZYlh1T21QbmtXL0hDTVhvN1kxNUNL?=
 =?utf-8?B?RE4wclBKMGh0cVNkZk1uT0tCaW4yQ3gzZUpUY1QrS0lrcC9kclNxWlorQ2s4?=
 =?utf-8?B?ay9TaTZiT2lkOHBNRWNXSjBRVnZoQTc3SldOTGs2MXYxY2Y1b3AxVk5hVENn?=
 =?utf-8?B?WE9WcGJ1VURjc3hLVGExQT09?=
Content-ID: <78993E4FCA23D540B7C7DB55328F05AF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634fd77b-13d5-47c9-6f59-08d8ce2441e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2021 00:30:39.1345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vvwHVZqxntRUfjzpz6awAVpIwWB9nDmIDHZtAkowD7AMP+rfHGJh082p4XAvJhnqaIvOYQJdfAvgzPFQILqlQXMoMr0bBbzqc83Ndp7kXn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/9] igc: Fix
 igc_ptp_rx_pktstamp()
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
Cc: "Joseph, Jithu" <jithu.joseph@intel.com>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-02-10 at 13:58 -0800, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> The comment describing the timestamps layout in the packet buffer is
> wrong and the code is actually retrieving the timestamp in Timer 1
> reference instead of Timer 0. This hasn't been a big issue so far
> because hardware is configured to report both timestamps using Timer
> 0
> (see IGC_SRRCTL register configuration in
> igc_ptp_enable_rx_timestamp()
> helper). This patch fixes the comment and the code so we retrieve the
> timestamp in Timer 0 reference as expected.
> 
> This patch also takes the opportunity to get rid of the hw.mac.type
> check
> since it is not required.
> 
> Fixes: 81b055205e8ba ("igc: Add support for RX timestamping")

This seems better suited for net. I can split it and send it that
route, but is there a reason that it needs to stay in this series?

> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h     |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 72 +++++++++++++---------
> --
>  2 files changed, 41 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 5d2809dfd06a..fbd8c414c3c8 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -547,7 +547,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
>  void igc_ptp_reset(struct igc_adapter *adapter);
>  void igc_ptp_suspend(struct igc_adapter *adapter);
>  void igc_ptp_stop(struct igc_adapter *adapter);
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
> +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>  			 struct sk_buff *skb);
>  int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq
> *ifr);
>  int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq
> *ifr);
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index ac0b9c85da7c..b6a640bfc991 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -152,46 +152,54 @@ static void igc_ptp_systim_to_hwtstamp(struct
> igc_adapter *adapter,
>  }
>  
>  /**
> - * igc_ptp_rx_pktstamp - retrieve Rx per packet timestamp
> + * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
>   * @q_vector: Pointer to interrupt specific structure
>   * @va: Pointer to address containing Rx buffer
>   * @skb: Buffer containing timestamp and packet
>   *
> - * This function is meant to retrieve the first timestamp from the
> - * first buffer of an incoming frame. The value is stored in little
> - * endian format starting on byte 0. There's a second timestamp
> - * starting on byte 8.
> - **/
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
> + * This function retrieves the timestamp saved in the beginning of
> packet
> + * buffer. While two timestamps are available, one in timer0
> reference and the
> + * other in timer1 reference, this function considers only the
> timestamp in
> + * timer0 reference.
> + */
> +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>  			 struct sk_buff *skb)
>  {
>  	struct igc_adapter *adapter = q_vector->adapter;
> -	__le64 *regval = (__le64 *)va;
> -	int adjust = 0;
> -
> -	/* The timestamp is recorded in little endian format.
> -	 * DWORD: | 0          | 1           | 2          | 3
> -	 * Field: | Timer0 Low | Timer0 High | Timer1 Low | Timer1 High
> +	u64 regval;
> +	int adjust;
> +
> +	/* Timestamps are saved in little endian at the beginning of
> the packet
> +	 * buffer following the layout:
> +	 *
> +	 * DWORD: | 0              | 1              | 2              |
> 3              |
> +	 * Field: | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML |
> Timer0 SYSTIMH |
> +	 *
> +	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the
> seconds
> +	 * part of the timestamp.
>  	 */
> -	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
> -				   le64_to_cpu(regval[0]));
> -
> -	/* adjust timestamp for the RX latency based on link speed */
> -	if (adapter->hw.mac.type == igc_i225) {
> -		switch (adapter->link_speed) {
> -		case SPEED_10:
> -			adjust = IGC_I225_RX_LATENCY_10;
> -			break;
> -		case SPEED_100:
> -			adjust = IGC_I225_RX_LATENCY_100;
> -			break;
> -		case SPEED_1000:
> -			adjust = IGC_I225_RX_LATENCY_1000;
> -			break;
> -		case SPEED_2500:
> -			adjust = IGC_I225_RX_LATENCY_2500;
> -			break;
> -		}
> +	regval = le32_to_cpu(va[2]);
> +	regval |= (u64)le32_to_cpu(va[3]) << 32;

drivers/net/ethernet/intel/igc/igc_ptp.c:181:18: warning: cast to
restricted __le32
drivers/net/ethernet/intel/igc/igc_ptp.c:182:24: warning: cast to
restricted __le32
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
