Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5E0500656
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 08:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45A1C60EAF;
	Thu, 14 Apr 2022 06:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9d7-trrezNs; Thu, 14 Apr 2022 06:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E57E60B97;
	Thu, 14 Apr 2022 06:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 682E21BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A9B641883
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MeWpmcX66i4z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 06:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AD014187F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649918820; x=1681454820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o+a9hAojNOqrzCCoipCM4lhcq6nxDyckLfLEEtJ9bFA=;
 b=aW1mlE/RJ5PhgvZjkKR/B2piqzPjHc/8UyWuT4HQzKPCxWrECNPoy26/
 bBsUSdf+cGm2QQJ/lAzWnEg8i3PgfH2zO/FdKYYygOhCB+02cNDG88GuI
 vBMHwQdW661ENsK1lh8iTXYFgZdWpbqE6Xr84MWYHrpGJoD8O6By+HBRC
 LFPcdYMJY4wnFwF1ao73S3s9ff1rxpyKCkWojUmDu0158Z1tqKd3HYyhU
 cN6b+Xfe7757Nd5pSScbpOQRkw2bKPDUnWcynuYXy4+77rVE6k0yQ1Gqw
 HRVHaa5NvG7g//igt8IJtu1hAa2qAfWOXFFLsyQ9I8abaKjFEaWyhYkfZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="244747850"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="244747850"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="655894179"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2022 23:46:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:46:58 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:46:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 23:46:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 23:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TsS6UmHmwtTdkNUG7vMsursDqt9pQhTFZjjS303sdaaUx3zeT5fdBwsOGp7GWngy1ZSvooV3+9lVkuTEHlROoNzh2K+B9p5jATPoynia0BzS1bjYeYDfRMD+hHPI/rUhWalqhZOJmfZ5vgOpw5X4UiJonHy9YCNLT+HYYbIIllEwukYT5EBdRLlpiyGA5NGw4lDW5WzZVuCahUZ3qworUaD5/KO/NAlITgVxqblSTb+Y+uTk04HtvvqPDMFqXLR+9q9iSPywWHkYpjfFMc7iidfwjnwMLmVbRBKoqElDmqYFqgko/KgyQeBvuPOBo56n9nxQ0GbLsTaYSqfUYvpVDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pa7hRdAiKvenCOsKYcm0oLTityH4nrt/CSHy0usjxak=;
 b=KPpVDFu+KS8ccVAYCZzkRgqdYlzHqUxXxeD/9y230L16cLl3Xmb9cXr9QpbeedfvsJfBHZatieyEOKKNRglo8BKoZBZXACtm6fPpRHJv09rb9/W6M/1txdz1vTaskRJX0JNEClIrZdIV4wixVmaSDdnoCIkC9bFCigzIAKLy4qj6/cQ+rGKqXd2hiU2jj2GcCnKaGOuOrCgVjOXkQEz8CZzrdkr2xETDbQhNsohskOpALsRIhp75LDYQtnr/+JG/M4a9qUcG5+ywxsOJ88HXP8/o4Q6OyV4qNmMN+QtGuYaPeuHyPUNyjtVtS0vDAj3Q8aZ9u7HInqMxv/Nk8D4Efg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4816.namprd11.prod.outlook.com (2603:10b6:a03:2ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Thu, 14 Apr
 2022 06:46:51 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::c8d9:8c9:f41:8106]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::c8d9:8c9:f41:8106%6]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 06:46:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Jianglei Nie <niejianglei2021@163.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ice: Fix memory leak in
 ice_get_orom_civd_data()
Thread-Index: AQHYSCtDZE71z52lN0ujZGrAMu8D/qzvBkgQ
Date: Thu, 14 Apr 2022 06:46:50 +0000
Message-ID: <BYAPR11MB336754B300ED5C8103BA84FEFCEF9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220402021715.4740-1-niejianglei2021@163.com>
In-Reply-To: <20220402021715.4740-1-niejianglei2021@163.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3388ffa-914d-49f4-078f-08da1de28e23
x-ms-traffictypediagnostic: SJ0PR11MB4816:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4816EB980A6C2FAB7F0D0945FCEF9@SJ0PR11MB4816.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kUnjB6jtblvyZ3Pxm6LOUtZ+2+wDZj0XT3FELO+2NAQKD44BmaspYbizgu06NCLpbdBCNls9XjvGoskyxTa+n+XRJcYJgfp246Z3Hv1F4kc9bE0lodis0tGo+iRCcvfknnIflT5AbX7cGA03n22/ORwqmEjk+Y5/6v5HEqS8U8Ugy5mwzyVD7zQ5nFtsZgSbq+eWQOT048mnlunbFSbSmyTKrtGiDC+OueLGQYXyIhA6CaaLHCnxudGqavBpZCVav/LUFvtCCgu9WeEtNnE4xosbwbEZL3hTv+HeTJeoo7ImpZdjKromA/lP3oOtaQ6u8ml1311t5WtJGv0SOvGgrCGrzJhlPUF56lSgWTg3KSpMDXD8Xtvl0O2UmSJ7oCwvWRXwrxJBNhiPzQJrsZMWocy89m0FOIKVeds776pFVEOXU16DrZm86yM1eqmZDgDLOcM6aaqQ7UbrRm/u9eyzcOyRp3JbKsSxrtdnqKCncYEDiH7t09tnJWzFTrKGUZATbsrm+IoV02OdeUgLSHan9zlVwD+kn+RTk8jkL+CzSKx/a+OceIKSFeWcdK9uOIiS3X/hi6pqHGenkWMPRhksw2k5TmTCjM6OnWPDM5CwkLqAIxHXlbw3GRYiiFIv9HVe4BXjLuT3hsskKNgtbvOYJX0apV7v/UOYQoYI0xUOF9bgYVmrFrytb/SMsIgZYWz7LMV08EEKQvdkIrE4kxOCoA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(66446008)(66946007)(110136005)(54906003)(82960400001)(8676002)(8936002)(2906002)(4744005)(122000001)(38070700005)(38100700002)(316002)(4326008)(9686003)(66556008)(508600001)(66476007)(64756008)(7696005)(52536014)(6506007)(83380400001)(55236004)(55016003)(53546011)(5660300002)(86362001)(26005)(186003)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HuV7/Bb1LYccfNVpx9ICDKJO8VFNzI1/yfwWTaWZcOj1AkYDnalBDoXBu6al?=
 =?us-ascii?Q?2auxTdHjZUzi+GRqfaaxmCbqkIvP/BN7iUhE7wXRkLlP9QGQAauvktcK0Jaa?=
 =?us-ascii?Q?O7jOAbZRO3cPDHL4pFYjsG47vFGrvRj4YLJ0fGx9aPkU7AiCm/8q0N9gt+tm?=
 =?us-ascii?Q?Ye9+s4y9fQ6v6cW2RCbprxRd69wA57GHf//mt3pCMKFpY69jyoCcph/1wgEw?=
 =?us-ascii?Q?lDRNPHEuAxiYpsf/f1m/sE8vmCw5qoQInIo/iw7Cbdnoq1900cODWADL++lG?=
 =?us-ascii?Q?3p9t06qY+JNgAD8IO7FjWreMHF0JHmsvjKNbqLPPh/NmC4LWaM6vTIrcvfTF?=
 =?us-ascii?Q?cYK802PLHc4Ye5RxE0ShJembwlpfq9KZwt92aCHALLG06tYNTvu0hIHsBnvw?=
 =?us-ascii?Q?EH+ybk2/tQ1bWMQWvV9w9rtrZxps6fOSv4TWUR/jCLdR7EubRE8dLX1XZIPC?=
 =?us-ascii?Q?IWMqmpFgmCI0QtE90u5J+oYgT7MStX23KT8oviAEsIwXVzUcOiYzLOoeHZ8n?=
 =?us-ascii?Q?hO4r46af1Knv9TLz92DhhDv8STfuG+3si9THXOyxAnEveXL4AU5otw9hbU/N?=
 =?us-ascii?Q?Pt6FKr1dymaX+duyPd4lFBlbe5Rh35qLgKC4LxfktMWYWuDsyWjQ6XaYaqec?=
 =?us-ascii?Q?e5P26iie4YJrJZGWDSte/9ilojSO2Kr+XzB4u6ZvKnvHob45s2/CLdo/8oe2?=
 =?us-ascii?Q?a2D+L4QTPZDTB02GkdG9x0V6Q0bHZNQ8RQ9fNwjiT6Gd+mcgJQDvUkNJCtmW?=
 =?us-ascii?Q?rBXZfmgCKCeizA4mnEimeZlu5UKv9zfsobMl8wAK9iA3KgoKrEHQPhnO5QjB?=
 =?us-ascii?Q?oVgANzNYy9tHMLhCx6AqG+ph4RNN8fpUrA9eGTqI8HpO8/jROyVVbS2RGTIM?=
 =?us-ascii?Q?h2tX9VN1rQpx+NsAfQd8uiwbk8SnAVU1DeQAtQ0pEOG5HHnuqPwiyrBMhS6J?=
 =?us-ascii?Q?ytowMVaIwTteVfSsBVVIFSQC/ciM1Zwt9fcLgQ2B3cNvRp0Qhd4Sx4shj/Dv?=
 =?us-ascii?Q?lkDdoSeUd4OKPktD5RMjCV2c8n7UosklOSnK6FeS+Gp3v7WUmR+Hk7fu8s7p?=
 =?us-ascii?Q?ijT9XJTSryVbgzit4chnFa4NSvC/u5XQRODDwOruaaIGrqUJPuQGWvq3clB4?=
 =?us-ascii?Q?lev+JPRbXiznbWmmDf/gHghZTlSG5lNc8OHZCFsKrZkOyMZ+C8VGzQj6AEzh?=
 =?us-ascii?Q?TadzYSe3TGJHF3ZWTlaEeDDWNH6cUt1nSg7v1GDC7IQZcCtsD/0WnO5HgSv6?=
 =?us-ascii?Q?7FRHoDSXcuw7RkvBaVNph2ZAA9ER2CA8s9Z2BM0/91Ej0tKkGbGc8IFBRNyt?=
 =?us-ascii?Q?at6PjVjkRBW+AIxMnAj7zno4a+KQ6VuvuxXoULUB9Suvy9rX0r20ZNZNfk0Y?=
 =?us-ascii?Q?FFGENmj/TwnwJgS8lGSdk3O6nPvPb6DgWEtvQL6D+1SYPjZGlaVn9yLkOeEs?=
 =?us-ascii?Q?k34ea2lprhnF69eInHc84KBNjn8K7p1ESsqgaHlJM0H6CS0d03JufbjM7OP7?=
 =?us-ascii?Q?SYHy68Axmy9UhY94GbvgkPaKSOVSVv2fC0cuA0VCdL88qCCAknUZCaM+7q9w?=
 =?us-ascii?Q?q6wrno/BMy/Z6l2oDdxsIdh5g0YKObC2HzZPMhPB++lQBwQcZ9CDCUnkoCgo?=
 =?us-ascii?Q?Za9Oqzh8ME1bcrQRmNYjljWP3eQEJLA7j6HjuyOpKzahnbY30KSWrGCENwKA?=
 =?us-ascii?Q?rZAiLCkrU+z6qiAEw4akYdlqFi+2PKxpqOSdHDJmTm4OrKYyZvMD5x0VECji?=
 =?us-ascii?Q?fFbuxdBMAw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3388ffa-914d-49f4-078f-08da1de28e23
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 06:46:50.9727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C9DfRK70DZNEriWSeCaDZspW+LKu/VCnibRa0rR31Aa1A6gn7dMoC1/L5XEjO3jtLi9y2LT8HsRYwtW4NsAWvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4816
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix memory leak in
 ice_get_orom_civd_data()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jianglei Nie
> Sent: Saturday, April 2, 2022 7:47 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; Jianglei Nie <niejianglei2021@163.com>
> Subject: [Intel-wired-lan] [PATCH v2] ice: Fix memory leak in
> ice_get_orom_civd_data()
> 
> A memory chunk was allocated for orom_data in ice_get_orom_civd_data()
> by vzmalloc(). But when ice_read_flash_module() fails, the allocated
> memory is not freed, which will lead to a memory leak.
> 
> We can fix it by freeing the orom_data when ce_read_flash_module() fails.
> 
> Signed-off-by: Jianglei Nie <niejianglei2021@163.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
