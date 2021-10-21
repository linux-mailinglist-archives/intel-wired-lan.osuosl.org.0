Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FE9435B85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 09:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45AB040674;
	Thu, 21 Oct 2021 07:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eR4rpFo7MFdi; Thu, 21 Oct 2021 07:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45E284066D;
	Thu, 21 Oct 2021 07:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F2A11BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D80060D61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxevxpMsFSQI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 07:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BA6F606F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:17:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209064365"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="209064365"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 00:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="594987581"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2021 00:17:05 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 00:17:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 00:17:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 00:17:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDUjRvWe0gx2T872h9thVOkmdtRmtNkbd9FP/7wXt/2a237z3PJ2rcNV2JFvDR2PCYx1HNa8Otbu1cB5rWS1skrI6gio/l/qVXctss96XFQuIVriAEBP6eoBVDzBihEQvN6xjeVLmSYvT6eIIR2ZsUcaXe2hdsnt7W7ffMTXjfC6Tgn+mNMFHuJW+9m32cGwVWuknH4YHX9p+7AHUmIpkN2CXdaMHCaX3ivbgCfDEww5fGiO7AJ3jBX8112wKygjnvOXgCFZiOYcDXvcEpjCmazI1JQ8NmQ3NXiAAHq+nAmA5P8Bh7AiAd4iQ9131ZNYSvgaFm7Ql2I6mPL/Yg+NXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8wF/UEv33RiSHDKPLeCm+GI7IKV2juUPVRBprC+me4=;
 b=dodOYIkYnqTxAHMFi/W+aOK3FTtZxTrr1pCM/+jC6LB7A9x/XyUctZtbM8KLhWFVXhcXaVclswBHrM4B0XLi6Uhdt7a66oc9nfaDoNyXtfYI55JqbBScCYsEbve0QW7qpq/qjngiNGs/auB8y8+TQqsw3vkt2yjX93mSFjcl7uaX8q+Vsrmo8/huN10qH5u+31XrQDQ+WMpdYF9StAK+LJOTJto8NkA5ZGoy9iRegrzqz0hpP4lOGuY2FNWOXaXTMIx/wbz0JBJeZwiydVNBR5WOFWabrG2Yaqmgc/IemThV5w3x/FhkbciYd6+D1pWJ320GineXoIRJ3iFLVDmVbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8wF/UEv33RiSHDKPLeCm+GI7IKV2juUPVRBprC+me4=;
 b=iqGiifKlliWWaJdiyOEm2Mys8x+v7ADFZMdPmTYH/2/xKANWFwHKp7W+4tChGeTQAR54HOKuFEBfM4YuW740IjGviZZdrAwDt6MPPvghNGfenU1LyzRve08kxQZeaqjgRECYxcft1wWQqrlJxOPUixjerf85yQdJZGrnTqjp6Q4=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3093.namprd11.prod.outlook.com (2603:10b6:a03:88::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 07:17:03 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4608.020; Thu, 21 Oct 2021
 07:17:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 2/4] ice: move and rename
 ice_check_for_pending_update
Thread-Index: AQHXvwIJYM6KKL/jYU2Y5EN7rRP7o6vdGSKg
Date: Thu, 21 Oct 2021 07:17:03 +0000
Message-ID: <BYAPR11MB33679694001557CF691180E7FCBF9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211012004113.1583133-1-jacob.e.keller@intel.com>
 <20211012004113.1583133-3-jacob.e.keller@intel.com>
In-Reply-To: <20211012004113.1583133-3-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f82d0527-466e-44fa-7698-08d99462c833
x-ms-traffictypediagnostic: BYAPR11MB3093:
x-microsoft-antispam-prvs: <BYAPR11MB3093B17394DE979C5CDF44FFFCBF9@BYAPR11MB3093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8p6Zy7UuPJSnhsh4sUES6kpgEy2xZQuHf75PSUElEMlr8X+qlpfBZdmrJnQUre2c4xJA+OgyG6i8QgO2oAL3CUt9hztTREHTbW77UMCP7cpyC6CDtMkrLE5eezGby7hZAryiWqyA2gDKkxR5tf+j5MWyZkD+wW7mqnbhTfugLvkIebwcNwtpNUmZv4XipCfKE9H9mLnFqmSQOjdqnnhLa9sv1XfHoGAcyVQ3SmWKvmH8jL37UN8gPNyXdwXu9zzGj5uorogNVocoydq3BWaagxMWoQSPrmXKEPxSzjhBXMHAvPbYYPwx7nnfefFF4UqbdnO3Q3bNUjZawJluDoNsFOdCIXahE/jTwAkXnXxjViDr6PK40KRXncYMAcS0AfZ287F++KEwzoUSPiR5WTvkgHEfuRKdTBRQK3Lcqsv/So6YW8+GgfZ/7vw/8aoL1cYD5WDui3LgohFWNbGEONsFev8jgNatcipoZeTlqcg2hkNuKMwkzSkUcdP/9cwPZg0u5r6GWK8nYDe5sOYO3bpxTHWMomeifmtB4N1XyMaJzAQQWSx8xdPlhUh6ogcwB7NOc83OP3t5K4cfo1FQVTpEW72rkJ0iSPVsnf9YLT47N8B332u9xh1YEe2FHz74XafiiT9sjSb1miLM8y6529SAqumVHS2kR8QDh0rxKwzSwvEl55ImcQVu+1NhOUIk0wboMngNIxFA9SaPbcm9x8WdkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(38100700002)(26005)(66556008)(122000001)(5660300002)(38070700005)(6506007)(2906002)(8936002)(9686003)(55016002)(86362001)(7696005)(53546011)(8676002)(76116006)(66946007)(52536014)(110136005)(83380400001)(33656002)(316002)(508600001)(82960400001)(71200400001)(64756008)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cxHaiwAes+jOPeblE38biQyCXOmNb2gocN0WvMY+arQIazxlKCi4lHDj1Dv3?=
 =?us-ascii?Q?NeMKx8EUbFh71rCbCMHc6Etz+B45iNvzK7S1PJFKHOyOQ0rLncXBpuSJuBth?=
 =?us-ascii?Q?WN1CcN0wpnLyV2bBtbofSgVvJHmZl/NyjiM6FlDEW0SAFgUPPoKVgs1uA0xi?=
 =?us-ascii?Q?pcvn9kMuGPSSNUHMWFHejgYRK27A/rpt12EXDppj2q9v/2YQiTBQOTeR4AwH?=
 =?us-ascii?Q?KpFySiavaxs21tqOLOsSrnX4iaefftvYDqHa3S7SF26FKGen9+VqfyvWFEhA?=
 =?us-ascii?Q?swcQEFLIUQ8BzrF5AYgiZg5l84iMaMXyCOF8eShfhgavduUEMyvmr4643/HN?=
 =?us-ascii?Q?5s99xGJtO8Ea9nUX9UEAH3FhFe8If10Wlk8DYn+Ndo7PIcfd6fdtmLqbeCH4?=
 =?us-ascii?Q?a6HW7PiNX22OYRdmV005w0NLsh/XzNOdySRHp5JHzMrfiJU5TQxyaiQ5B8QR?=
 =?us-ascii?Q?LH/zGecvBg9KC2vj6PU03hkcowGKOLZ4xDNCyhSz7MXCJEIHJl4iRFYV0VvS?=
 =?us-ascii?Q?Sg4/rB7yYAWsCJgFF0PeVlT7n/1byEaZ0FjzsTXJC74RFDCLHOz2+pgVXyg7?=
 =?us-ascii?Q?aDSBZC1AAn5EKwPosCudvyKsnMN3aV3ZN1j61dMfmuiOp0QXsg0JbFGPVGL8?=
 =?us-ascii?Q?EGzxKL6eiUo88+Jfll9GQXs9wfSu8qGuRzInr7qrChvYFnJRVhFKYi6pLSg5?=
 =?us-ascii?Q?OkNer7/5Hie6a4chgkPtrXmb4quaWS7ioy+ETkixmSO4cxqDtMbIRrt0Pi/Z?=
 =?us-ascii?Q?KiM11l1Q0y5WdEwKKY6CbInj6sBMsBLNsVC2lmtfHSpg7zQaTNfwXt/cASWV?=
 =?us-ascii?Q?CoYoJSQ/q5KM+6df57M6+7un4hC5Zyp8EZTsMMwj0RCv4FqPVZw3K73EuK42?=
 =?us-ascii?Q?HR27i32ELZ/KTsGzdFHBRCv7oJSCX3Rn7bbBIkwXDVNxgDTTq8wf8CGIF2es?=
 =?us-ascii?Q?KJfadYP9OvLfowAGRK5Tfty2jLshWb/kiBLuMI3oRn1cBHTLsDbaN4A63DvT?=
 =?us-ascii?Q?kiSHG0zHgw5fdt0sprjwYBiUYVH9qe/vVISuI3f0dtDTBwDkexIaiyOR8Q50?=
 =?us-ascii?Q?mW3soWtUT2k/TA/mO5nae6/ZY7rreqGWjNh1Dlre6nj85s8wp7WM9HYYafv3?=
 =?us-ascii?Q?Q8rYQ5kfYYLkMphoVVZ8efPd/80VlycnUAQC+RwkTBBtrWr3AzHDe/RuqojT?=
 =?us-ascii?Q?LU2ZWXjCY1kozEkOUNFgooiC7iZD+nCL7SzQ8YSQJGQchW1AahA2PhA+YSfn?=
 =?us-ascii?Q?Zom5jwzkrrQCjzQLN9x9vHUh5V9PuPCh+Cn6xPAIhENF9cjLBnw6Ytegaf9t?=
 =?us-ascii?Q?qYBiUMiQTDRybIiuLEFhCjMXjPyij+FK6YLuXF5FzqVRX47HzHXamf0XWXsk?=
 =?us-ascii?Q?o/WKojI+LX3ijgWzDTFATvcMWgr5xVoJ/XdPUK8k2htt+hZt/5oAbzW5yW+P?=
 =?us-ascii?Q?ck1FlPHaA0M=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f82d0527-466e-44fa-7698-08d99462c833
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 07:17:03.4768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 2/4] ice: move and rename
 ice_check_for_pending_update
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
> Sent: Tuesday, October 12, 2021 6:11 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 2/4] ice: move and rename
> ice_check_for_pending_update
> 
> The ice_devlink_flash_update function performs a few checks and then calls
> ice_flash_pldm_image. One of these checks is to call
> ice_check_for_pending_update. This function checks if the device has a
> pending update, and cancels it if so. This is necessary to allow a new flash
> update to proceed.
> 
> We want to refactor the ice code to eliminate ice_devlink_flash_update,
> moving its checks into ice_flash_pldm_image.
> 
> To do this, ice_check_for_pending_update will become static, and only called
> by ice_flash_pldm_image. To make this change easier to review, first just move
> the function up within the ice_fw_update.c file.
> 
> While at it, note that the function has a misleading name. Its primary action is
> to cancel a pending update. Using the verb "check" does not imply this. Rename
> it to ice_cancel_pending_update.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |   2 +-
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 148 +++++++++---------
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   4 +-
>  3 files changed, 77 insertions(+), 77 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
