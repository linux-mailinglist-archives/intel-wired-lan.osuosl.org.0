Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2450856B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 12:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8C0340B91;
	Wed, 20 Apr 2022 10:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WjQ7saRggb0f; Wed, 20 Apr 2022 10:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8E004031F;
	Wed, 20 Apr 2022 10:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 885BA1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81BF141499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XV38xcGAxtlJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 10:02:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AC4A410A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650448957; x=1681984957;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PmZU8EgChg+r26DHXXGahvAKmbMQDptn/18P2/edDKM=;
 b=oAJsWiyJJ98dOXWtIPvSjtX6k17lgwbwOHu/dOfk32PNT1d4clOHagnO
 Qopmqyb5s8kAKa3J0L02+7RTG/zhO2reS9vjcXBq2fdOpmsELsd6KBigJ
 kQgAL1h6IDu2h8B1/bsdb9OZdSyQI2FlMcBADs198vyrmPEtNIQnjoYmN
 MnRGWJU4f8d+eIK0ubg8lq6cXw5qFAGhXacg1JswqVVfgZFkUlLMa0dwy
 G4tK4XdyhaOmnFj/cGLVqLhK9UN5vfhF3okVGEc9t6i13aMQF+MjGSzod
 L311FOrBUQ5GO1ponfrSbi7EI8SlVto72e8LVcTCGHRq7WeUB5/7yIvn0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="324431541"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="324431541"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 03:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="576517091"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2022 03:02:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 03:02:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 03:02:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Apr 2022 03:02:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Apr 2022 03:02:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwMYMmbKX60YpcGD4h9qU5PfuGTeOnEVjCoaE4HgFnfm+/shW+QTYRctJEVuVmtpzf7WiFeGOIgrA5EtBAl8me+a5Q78V9yPwvBHSmwrrDws7DcI/pXNKov4qHnKn+zJeiDgdBt4D1qYS08tslfxFEuPEHloEChemgRhQ3OlMOUnluvsVX6Mlk9aQTUsZ263tnk6G81zjAdd9BZymOZSBLpcTh/t9lxNYnjs/DWEGavXGQ1dmi0xKUSDtUmfVJ5gAu252QZny0ovy4iR6kyd6xX41956Mw1yGAE2A7ODIbFoe95DyS/0VTi0Ax/C81N9J82ENGvKoGwcHMZjMtKVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmZU8EgChg+r26DHXXGahvAKmbMQDptn/18P2/edDKM=;
 b=E4y0ag/iNTZYxJOJzD9ZgirIhqNjvDo1VofC6bGEljbCZcXK8Rg/ynB+JwNTsLBAhyAfdC1Ki7wi/DphZnyLgrrDU1JOGed6hMZrkSh01xT8ANCCoCTel06Jbi2FlUGggk+b2NKF/9ShpjZP0jX2yfTQ/aSt+5ExcO8Honp5MIAN0gyeWdrinmGl3TQkTlH36Tgi2LjGNnwtckEXbglLSlBKmBAWND/D0gHfaX6VG16TO/DhULUohqcIJy4pR/3uSCnhSmeMbp51MkQXzyQXBHuPbnYJDGQ3aClm4aGKLQT1g1BtzRCmHVMvothDNiS4prl0hjuEYXwLmJ+AVuZpWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BL0PR11MB3282.namprd11.prod.outlook.com (2603:10b6:208:6a::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Wed, 20 Apr
 2022 10:02:33 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::7449:378e:5b95:6cb3]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::7449:378e:5b95:6cb3%3]) with mapi id 15.20.5164.025; Wed, 20 Apr 2022
 10:02:33 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: return proper error code
 in ice_add_adv_rule
Thread-Index: AQHYRa/jzyQRp3Iefk6+vHIuh1jbPqz4r/dw
Date: Wed, 20 Apr 2022 10:02:32 +0000
Message-ID: <MW3PR11MB4554E300C016C84A13DF4A969CF59@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220401095958.438230-1-wojciech.drewek@intel.com>
In-Reply-To: <20220401095958.438230-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f47da18-0996-4055-6f5f-08da22b4e35c
x-ms-traffictypediagnostic: BL0PR11MB3282:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3282B0933D40C179AA513D5B9CF59@BL0PR11MB3282.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jJkLS8tQ9YjDPQ20wWdbTAEEh7NLIZ1bGqJjazQYUTHgavkto2Vg7ste+7cthFcwW3Y1/wEaIRg4lU4sxWjnKCJloJ3Y4Db6rc3/22ZfmZY/PCy8EILDvbuXNIwIUtQuv6TWf0RtPqF4N5KEHi3tGDM2B4eLQvJJ6wPBRoJG0rEGx9E0wJS0v6lrsFY9hmo71vk71K1iGCqDc7oJIweDsq9XYRpK7suv+qX2XNrGpMzdLojm2kNoZxn0Tu/JJx5fNTkCUearDnv1BQHdyWjlIhHPLFX8xu/CSMLGkbzchQDwJ7fic3K7fDZKczOKUXXilnLz2H+O9GeCxJPJn+kcpO66NRl3KYyz4MMo7oxVvbC9XGa6Y3V7nu/6N6aNIMrbXSMhIPi0FmpRO5y5R/OV35WnLIiPKrNQtSDE2a2LML7ZLxpVwW85x8YMpwDqJBxtOHrcVfGeKNvuHPE4xgewKzDaFEc7gnVbBDIFuCMIvVE8m1okHyRHZFOu38r9ztqKHdlzVpxex3h+IGdsUPpe7yN+hwldjuimxGX87txOvelCMXJB8F8hNHomZ8sfYxAFfDpLy+ftqeBWvSuoEfEcR5VSddsdSp5zjBJKClX5ZWwOLWS7q4TCU4fnfZWtHDoh4ehtrdlIobO4PzE/MnNvIhhKC2IpkHdQ2RQdHW6QufEhjlTTWR3UgMx1fnEotN/vfD7ojH+LXf+mlyY3XyKJOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(66476007)(64756008)(38100700002)(66946007)(66556008)(66446008)(5660300002)(71200400001)(8676002)(7696005)(2906002)(6506007)(38070700005)(122000001)(86362001)(52536014)(8936002)(82960400001)(4744005)(83380400001)(9686003)(55016003)(76116006)(110136005)(316002)(186003)(26005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TU/BW7hXzrb9s8k760VqPrxgw0SRpHCQ1Fa06h3fcH1W/hBnX2PMOjItUy1A?=
 =?us-ascii?Q?FacpbDUNHyPQWWHFWOPB+S6yWSO+Ikpl0EKov5dPuGno+5xn7sKixw3IBvNw?=
 =?us-ascii?Q?Ywz7O8wQ+KHuYb0IObqa8Kf11vko9u81vOB/NB6uV/fEiv3t3FNlxSVEb7Gx?=
 =?us-ascii?Q?4pRh9BsYW+6eHstgy36zKryV2iEVjvhrTXZP4qKBA51vBd5yqthIpSqUrj5s?=
 =?us-ascii?Q?8huYoH23kN86ykQDkDoxc8x6frLnJARSfpVn7Zr2ucq2Iqunb3KdOnKj9frd?=
 =?us-ascii?Q?5XJOHAtjdhPmAxbXFAG3+M0XFGP+C3tQANGwdjgUcOrs6iYvtO+4vu9Rws8B?=
 =?us-ascii?Q?t58lFmqeDkL0zuca4FRl1HCF7Okfd4xPImfLu7OUfF0iT1ziCCBeOhWhfxQg?=
 =?us-ascii?Q?pOfhh1M5z3EHlxXCwul1hO1XCBCxZQRaE9a2zZvNPQdi5lzAzukk1FJZPPFE?=
 =?us-ascii?Q?f0Z7BcI2IfiDK74HkAe45QOAkDeSrCyV+D/+DUgCItRw+IoMii+6cweB4FUD?=
 =?us-ascii?Q?BzzpjDvBVrIMjwFkO2a02TeimP6pSUR47wbeTuk2G75fOJ9PrjEPOlQF1ctp?=
 =?us-ascii?Q?/2GEKobY1PXNcIQ2SWENO3+5I0FdWvNVnbCM6rxrKH33SUZb6hlUAOHhLFkg?=
 =?us-ascii?Q?42w92oZktTCMjYA189DFgA6n8aqNxCYv3Q15m3YiZxL92cyUaCKmW26Zgoma?=
 =?us-ascii?Q?A1yUET9tZ5lML5lnQf26W9Uqr084H0dfp8QTC9+iZ9w2cXQduvB+Ya6R2EN6?=
 =?us-ascii?Q?+W2maVHxHNhxxAxrVlxi7EB1bslGVvEmYItj3gS7AkmsMgxACvfwsO1rpzZr?=
 =?us-ascii?Q?UUnJ3Q4UwlND1MVzsm/fkwmBdDrYotJT7o2khaetvI4pu4hnL4u8MD5l/HgX?=
 =?us-ascii?Q?B5EMMdxmaQZMh1BNfqhKcoYW2/hYxsm1LWybv5NT6mOBG0O3TC++9v6Vnx7M?=
 =?us-ascii?Q?qGQn5TxhLDscmFkb9qoLDmups0YEGVTsthCHJ/XahCQT3aucNnvF1l+/KXh0?=
 =?us-ascii?Q?xKiO+JHLVWpbnV/JfIhvxOQoFkeH2jdVXyeI/lzj54aojjnWvSHG5V9+acKB?=
 =?us-ascii?Q?LypVFC4Z5jP3eHs+j49jhq5UZSp4pB8l1go4xziqWUapUNrybnK6RYGbo5oQ?=
 =?us-ascii?Q?SoFrW30pDCGQwh3uhk86E6gajUGwT9fgNUPVXYVInjPxoq2GLlnqZ3i+bTCI?=
 =?us-ascii?Q?6TxK3KK/bz37DfaPOIGENa854bnmNlwu0le5NRWioUYLj0FVMZMWO3YLR29X?=
 =?us-ascii?Q?DNiC4GkTQHYt7M2SM/rS2uTfZrlv9IKSShMgjDlEPKEiVth5eVr8u7Sv4FW2?=
 =?us-ascii?Q?4BffmcBc/+kpGSYDTjqvxqr9QVBd2hAsZOQyKHN9LFsAyhRwJH6FUENwEU2q?=
 =?us-ascii?Q?iIY7sCveNZAvYQRW8oAVdQ+UfzmhkjZUzS/awluJarkaNCVtR7ULW7wV0TCH?=
 =?us-ascii?Q?1UdfC51a9EWdsBHWiV7AgPjUcz4GTBaSy3QA1nEOK5FszelK45H00xXQkiNJ?=
 =?us-ascii?Q?sbswbYxIBt89KpybPeln/HUAnRdXdxrcdm7Izw7nb2ecpMXULReu3ghSffyp?=
 =?us-ascii?Q?1avfGMuqzC9QVrdKFyttRfejBN0AneStmT+Yrv0Q2O3iwevkiPpasgU8DydH?=
 =?us-ascii?Q?zApU0LAQ51G/t5ibcbLynD7tpXSb+0b7rReOvCswdwEtGWQuaZAJDQWPQj/N?=
 =?us-ascii?Q?NJOUIckQShPMAx9HrB36UswjTRxooeGCOR/HBCO33AjOb4Hjc0VxvUipou2N?=
 =?us-ascii?Q?QUNv6Gjatak1LhmY+5hfr+zpg6tNglc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f47da18-0996-4055-6f5f-08da22b4e35c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2022 10:02:32.9352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +QaWShPvhHB7qSuRirC4JkTpjTpSlRPmpIs3jf91KX7espumXk9sEhJJWtvEMpWVqU9ivEdxDsEeT8jg7sbHXUuR2GRBmsQupvz3EMAwGDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3282
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: return proper error
 code in ice_add_adv_rule
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, April 1, 2022 3:30 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: return proper error code in
>ice_add_adv_rule
>
>When number of words exceeds ICE_MAX_CHAIN_WORDS, -ENOSPC should
>be returned not -EINVAL. Do not overwrite this error code in
>ice_add_tc_flower_adv_fltr.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 5 ++++-
>drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 -
> 2 files changed, 4 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
