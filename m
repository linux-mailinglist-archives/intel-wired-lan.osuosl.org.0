Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0FA443952
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:04:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 150B280B19;
	Tue,  2 Nov 2021 23:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ga88165bN6Dg; Tue,  2 Nov 2021 23:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3024880B10;
	Tue,  2 Nov 2021 23:04:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49AE01BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 431754012B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s8UrW0dajYWw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:04:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86C6F40122
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231236801"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231236801"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="577409268"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Nov 2021 16:04:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:04:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y2fgbYUXua6semFwHWleYSVTx2HZwTzg9aTdqAhEFQBCzQYLTdkQw5UypvW5KVPQZUR9DXgJffnv6nt4SuPNAPMdAEwPz4QIn2KAdKO2evkaulEyKgD5qMtyPWh5zSVhwdvPOy9gGIJChc+AihkvznPTpcTA12c9CfgN1kdr94HHBc2lhgVmmMgQbZx01widDPO7VLd2p6XgZA8M/7/k7hv39naH5Sl2QN1YhEFEAfCqv//JSZw/U3oz/tvA1Njp4td2kH1alh3Ci2QM16TGCMcg6vqLRuqGFXhpgpbqfUADl7tRf6NsnaTigbDYszYQ6mNFr1T+GbwWHjc0UnH9nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AiYXFYCxHxasf7zDaQ/fp2pCFesm4Tcdzr9+nqRXIys=;
 b=Wmwq7pVL7RjScNG7Oc1K/MmOWCBer6agt3mjWugr8v5sFeNP0dcjoBsBt2B1gjPo7mrhSRaImetvwbxgYQLsJwT1JJ4T1Z6UWup1x/MSR0hKmQM1/KcD9YcV3/f3Jxpq32mPsAI7WP4AI10ETwFRAAAo+FAxhAvcfz2AEHNv2DNVWm6ZOrrouDb9iYwhtKihl/pqX/xaIdTRebWPvb9rMeIXbTWXiKMj1mKqKnlkWAjki2DUQpZRn/t0A909wLbx4M6iSCM7Afe1YEGpZmOyjVvvOXijgIFqyjj+Uy8sYgZJxNNya9f7ahoDHggsH3SNH3aDW+N8FCi4hYH+wilUVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AiYXFYCxHxasf7zDaQ/fp2pCFesm4Tcdzr9+nqRXIys=;
 b=DV8qOuUNUJhjU8LOA7s9CdKuuN1WBOXRxJ8I/rviOM8lynXusTyOr7f7lC3kOrMDds2VUcKTUjgPn7iZ1NLZ/oBqX3CVVd8MDyQXOPmb4aofkcV4aN8FIZ8LB6dp73X5sn+ZSA8kVJB1b6nvaCjXhee0cLOrW13x6SOJ2OrZ9g8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2946.namprd11.prod.outlook.com (2603:10b6:208:78::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 23:04:38 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:04:38 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
Thread-Index: AQHXmBRVNuj4axn7q0qjMdZReg38UKvxS8kA
Date: Tue, 2 Nov 2021 23:04:37 +0000
Message-ID: <MN2PR11MB4224908C1BEF0EDE97995C94828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5eacf546-095a-4599-ebd2-08d99e55250d
x-ms-traffictypediagnostic: BL0PR11MB2946:
x-microsoft-antispam-prvs: <BL0PR11MB2946CFFE8E537A81D822C48C828B9@BL0PR11MB2946.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NC5R9B3ZDFKhRP1S30HnPkqzDW3nCUaSud9qzrnAXFCFzLCiQlTsz/s0CU33PJNZvVaPVeC22CR9JAecSbo9Yw/rGQO5xf+gH2rCn9Kqbs/81jVQXUrdCtNkBaA00HLyOw2O3H10y+Yw1qvtzO34KknVMQOQGDwFpJFB+a2/DvKWnqK2ZpSP0gT4KGrNyEizuy0j4f0Yf3fBT1TUmXNU2EuUKBgbsYrOJg5Sm1XKbk7IQ/vBquqh1zCqQEWBW902bg8dr/pUokfNvCvWnkJqyF93jZz2z8kMR49klo6KfiDfQhtAb8ylXYXV2ND5DIVxnyVdVy5cmvfFUZpvOEO9kRCVyz/j7hapeJUxEeiJJmykctVaU3jFQhzDvCKnLu9EOBjQQnDdQ2srzt5WRkGJ5BkwMzjoarBModpY7Ik7pGxq0ttxo/y+ei312ZfeCpN46V31OwsQXG8MEzouPuafeCjKbpmRZzeqUrOblbhy/IPnpaILV7ZNc+D2HyKbbjZzYppFZE4ePmS/zbuo5VTkSMpagB7Qj4ceUM9l+YLn6/fYcxIMQYPemubc/kmdhC27EkjUwX9pfSQQBt3/430GK6io8p8sBaiv34CCkFnfe+NL8KGdPo+vHrdC3sOtkG4eCvSnXRuuRoBzEoFKjZCpTofnZWqf+bkiKIhO+Mcez6Nray9dagUugg2uP9pWJ1IAK4w3U04HsMEq8vGoiqIhEg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(316002)(66446008)(7696005)(186003)(55016002)(66476007)(508600001)(64756008)(71200400001)(66556008)(122000001)(8936002)(76116006)(66946007)(83380400001)(6506007)(82960400001)(9686003)(52536014)(86362001)(2906002)(4326008)(8676002)(33656002)(5660300002)(110136005)(53546011)(38070700005)(107886003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wS/8t4ybZU5tDmH83uIpnC1H4QW5vnPhfDAZUwaoNVoFtmqOMBegVvXeCffL?=
 =?us-ascii?Q?m9lluKhze2EbrTSoXzk7uuVcfniAYvCII5buze02wkVbkJZ4CBmakNFsMP3J?=
 =?us-ascii?Q?sCQ1hgCb2Wwh1JbyBtDwVK/uayhAHu4UVZN0OS1uNxaNy6ffiChx/IECzVz2?=
 =?us-ascii?Q?UPqh98bJvMNoZ8MPME/hr+r3xiaHma1irJwn95O2XEHmCIegyznpRtSc/+nZ?=
 =?us-ascii?Q?2iCNHMcg0SLn1aWeFqHwThRV7hBtCdYpfNY9ZOllmev0FzLzQnS7Bd25QxDF?=
 =?us-ascii?Q?kyOmN5iWC4AT/aOixUg+TPcKwl+I2fh3Vt+QUgyQ0muXkAMzKMqnTqn7E0bw?=
 =?us-ascii?Q?tEr2XGPVDtnk88chv9qX4Q4w0iN/DjD0nZPXIYkrZ2hIAmxi3Dp3m14Skx26?=
 =?us-ascii?Q?3oQvZpGI6RwPdlPCRedhLoqt1aIhn4c/69SBOaLZfKTrBPHZDXSkrw/QuA3M?=
 =?us-ascii?Q?FSbtGyiy20x4Ss9SH69kHME84p++mPjG+aZjS8I25pDJMVTyZZwLs1f89pK2?=
 =?us-ascii?Q?EEbqwkuuO3w04NBwu1BvY87zZF0a96zuI3fUhvlnoLFV3ccgStLTscaYnm41?=
 =?us-ascii?Q?9K3KxJanIOl9cB5wWwwqJQpT72f8bGHfLEs+igdgNY2a+7Zw4Sn7WxsGVm5Z?=
 =?us-ascii?Q?vmyng/P8g+7Dzigs6GGyWJI2lCAs/TYJ5nX9GALLl+Bx2nkOk3i1vads1nir?=
 =?us-ascii?Q?LukG6ewLfD6YTOD8ABfpPkXUk2L3TqC8a9FJYVpEVCRM4FYJqIaqjwt3shNC?=
 =?us-ascii?Q?nv4drITV8MXBhABouPQpk7sYawLrws4JJlOoHClZTDjo3NQKk4cHXZmCOtIf?=
 =?us-ascii?Q?X0Kv7/8BlwXsQjYxnwma19pYULGEMG+gxioYzDGoxLg63SU8bmoTz8js+9mm?=
 =?us-ascii?Q?vYbXww7MHB/uYHvUPDP7fy55L7VWW/wM/WNOVa1BEZz+yvXh6ywLTuPwVVoa?=
 =?us-ascii?Q?nXkQ3rMceTcyGrPStd2G0KMmPM6nMjRRyxFiZuW1aQmJXbu0GS8fFTxpAnY7?=
 =?us-ascii?Q?4anzGVs8N+vMF8OnD9uyW7H29xh0Up/Qe5ulDsHH7KqZT8ROcs95l1JwtTo0?=
 =?us-ascii?Q?33D3n1bmN3o8JMwnsf3hlr0rZMzQ7b6D1juvWtC3EfHooVh11xdqR00fC6sE?=
 =?us-ascii?Q?DgIbHCWVYrUrNXC125p1nZBHw3VjBzcPJb6/OrF6Kf8bRxNcCN1/+CJgpkCo?=
 =?us-ascii?Q?CFxc2TWiOgtbG1+28MgsEKiI/H0nGwh7EZPnkBvJ5wPSGe2NVYRDPJYc8GPI?=
 =?us-ascii?Q?xIWDuUG0xzXIav/kbgpleaCAM7RM0w4UXr7Qejb/dbqkTHr3gc89T0lJ4Mm9?=
 =?us-ascii?Q?c+z1rcF5ShWjOuA7THV5lovSlF/E9AQ2Df/LePBAXxMgFxlwLJU9LpjZrhV7?=
 =?us-ascii?Q?ASv5njP6dUpUThhwseJfNEr6san856vLJVYEoF2Sj8YddGtMSF1EWg+wbqOx?=
 =?us-ascii?Q?X0+/UUr662IXxJVEBYLJmWMQmgxGW/QeMzcdNzNiYc9m6XF8RlrSf6y8mBcZ?=
 =?us-ascii?Q?C+7x3TBALvyqZu2fNZc513KfZnhQ0v3XckXy7W31T7FOL/G3XlAjfFROSO4Z?=
 =?us-ascii?Q?iiK3215eauOpI583/QCKmAdtl9K9ZBeO3jCDPOW/SW1AEh3sOMuFd2RNl4P/?=
 =?us-ascii?Q?7u8lojdmffaqrWjz1iP9Og5FU2qG/PNE2lVJBGc5MOIat2UeHxT/VsyEEErz?=
 =?us-ascii?Q?nP5apA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eacf546-095a-4599-ebd2-08d99e55250d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:04:37.9744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0qE/xyN6Mfq+1FWzSbwoFKoMWyKWBk9855C78rgxrVCB4Z469KUQW3/XuHbiyvC0VcIh6tDynxhQbDr637iVZG+C+IJu1a1hUJOmsh8zzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Monday, August 23, 2021 4:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
> queues is exceeded
> 
> Before this patch VF interface vanished when maximum queue number was
> exceeded. Driver tried to add next queues even if there was not enough
> space. PF sent incorrect number of queues to the VF when there were not
> enough of them.
> 
> Add an additional condition introduced to check available space in 'qp_pile'
> before proceeding.
> Also add the search for free space in PF queue pair piles.
> 
> Without this patch VF interfaces are not seen when available space for
> queues has been exceeded and following logs appears permanently in
> dmesg:
> "Unable to get VF config (-32)".
> "VF 62 failed opcode 3, retval: -5"
> "Unable to get VF config due to PF error condition, not retrying"
> 
> Fixes: 7daa6bf3294e ("i40e: driver core headers")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 49 +++++++++++----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>  3 files changed, 96 insertions(+), 14 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
