Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A48B3FD7DF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 12:43:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C1AD40120;
	Wed,  1 Sep 2021 10:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bAK_RuXOJXt; Wed,  1 Sep 2021 10:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCA1040141;
	Wed,  1 Sep 2021 10:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C66E51BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B517382425
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJRJLx1wikP9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 10:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CFFC82416
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="205839787"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="205839787"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 03:43:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="690570254"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 01 Sep 2021 03:43:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 1 Sep 2021 03:43:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 1 Sep 2021 03:43:32 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 1 Sep 2021 03:43:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/DGfkhZcZIoVWlqmwaKmCfvO72Tj3a1IlKaKnjTr9XkDTcZx0cnxMQBrYsJ10iS4RfTTuOMyb2NC6wpZMIIAslWJUMwWcjYWqWRBe009mf8M5XflFdlfAlPdZzl/ZXeD9DP2C9xMloF42VfR+4HmRc8onew5Ahjis2bxaf1Ew5h/2CIHtQyM5Fw9La5gpsiopVWP8n65KExjP0+pvNsem1aFTn2tt9B27VeQDRF822+3e8Qv+YRGy9nfSPyxePZ6b0e/MT29OSqZtLnG8SH5P7kc+NwvvgreAQwnYmCPhl1JOi4FctIZmEl87LGm3b2BRLd+wnA7AzYjcvtWdaOxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=PFV96/EQUuXKG99KKNsXYIcnobfkFdwqfVVLpGjGJUU=;
 b=hIZf0zhvARdb/KOXPpxrpE5ykNvYniZiabNIZJaOqx/u+OYJse5Z6eSoOXm9UeLmnqqtLEv4JkeGAPzYKCYCyP3vTdAGjKc6KVnYc0eRJh9ygSKRxkBqlQEm8Ls+KtNWkA7DnxfeAOEcNa8U9ySUckRGjYM4Q9PCU01XdG7gYkZ+d/M4ck3/ZtlifqeAkd1E9KrBe+v+0JCgeED5rNJqDBzjzFAULMwiotWZKm2MZ4NUzoSkeiR/uvxWc5bCQ9J0b9o7HPr9RKs5sdj5Sf8EWmWkY+w1VvRRQV0ru4+uMjzR/CvCjdEF88vg82/gbV4EqX73ceNXB/Rvut2CYI6VPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFV96/EQUuXKG99KKNsXYIcnobfkFdwqfVVLpGjGJUU=;
 b=iOZKphC57GMNHwDzTgJY1A6/2F9Kv7feJU1Rg9P+6CYMwUMo6o50lzGQR/OC19LDdUu9aGrBVN0/Z5yQVdhekzlkZQKrxlRdbHUjnHxZk6TlJKp6ZTrSVHet8jWr/+QUYedoJQqXdT55dyMzwxkppTvU2uveD4j05sqQN2m74kU=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Wed, 1 Sep
 2021 10:43:25 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%8]) with mapi id 15.20.4478.019; Wed, 1 Sep 2021
 10:43:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 04/12] ice: allow process VF
 opcodes in different ways
Thread-Index: AQHXlVcxZ6QM1wDa+EW1jD4+piq5O6uPEXZw
Date: Wed, 1 Sep 2021 10:43:25 +0000
Message-ID: <MW3PR11MB4554CF0AC1CB51ADD0E282079CCD9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
 <20210820000859.680522-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210820000859.680522-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e41ae2c-83cc-413a-8026-08d96d3553b2
x-ms-traffictypediagnostic: MW3PR11MB4650:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB46508DD34B60FB98619ED0789CCD9@MW3PR11MB4650.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pCUsy1HaaB9L0VPQ/JvTWz5I2PYKCNFJJRmZoMDxh9J0e3491TgQEeTdqnkxOIxz4+/+aVuJwTQsOfv1HDrCttpJqtyfuVPePlqgO0bEImDqm2yjhbeMQRY68KVd4dEcdfAuDCX4NUsW6TZ3MJ8qCdaLJr64ohLKIhKJMP5065XfLBCWu6ZotpPDQdQvzVcKqTWAAfv4zY6n7ZjGxzB60V8XnFwfUgBJq8E4voncJrFoU1mSrVNZZclNa/OKogdxfwIEUcV1fBFPXHwiJgx8A0jUepClbf3M9qO9bE9O3fQ/xYZbxkupg36EYr3HkDgkYAmlesy6+LuQpBEd1T9JXUNitMx5Ji6iULWwPyKBP5tcq/seyOGdaH+gZ82sthoYiW6UI/9mOuWR+6mCVhZWqJRKnhGiRTFKsV+Uc7cD2j/A5GQ6d387WifWkfld4BRcReSqnUtINMkOtHuHQpETRvxr+QDPnEzUyi052ZoecDnv6KzxIMqXh60RwAqfBwmzQbhfBU4hUORvjB6XfoX8OVkWyAfWfo7zU8aGCYzwQBmakp3xsYFAqudirhajHzO46WxZb5084C79bnlH2G0JuCRi3W9YE3ndBduAOrmrxRR5lfbSeKTXEgYLH4k5IxOlB/v55p0mMCEuZr/8gsAj12EL8JwOpuKH4yPuwKhCVk08Xfq0aICYzxcVIt1wpKbwPfkleMeQGQc/ny94bZVCPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(396003)(39860400002)(83380400001)(26005)(64756008)(66476007)(110136005)(66556008)(316002)(66946007)(71200400001)(55016002)(33656002)(5660300002)(9686003)(66446008)(186003)(76116006)(8676002)(38100700002)(8936002)(6506007)(7696005)(38070700005)(122000001)(478600001)(86362001)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mA79AFjP55O3a0hVTrYLh8p7TcMAoU9NjpPEt405rWOV+dm3dnBYfZ/6Gdia?=
 =?us-ascii?Q?7c8E29d4jAbFoiJrDYpZycFOvxoqB7U9S3vsoTYE6FY0aKpG+N59S1GdAFpR?=
 =?us-ascii?Q?gY6bJoQQDEYII7te4Z3EwxRbRnc2Kt72H792fkiS02fb44YeNF6Lk/DrLyW6?=
 =?us-ascii?Q?1N+b5e9oOqPCF5Tn2dAicW/8tZvsyu0bAJWV2E1AIHLwISptqoITNGRyq9S5?=
 =?us-ascii?Q?Wh7Nz2mFEfPUFndH4E8ydLQp6IeZq7KPHmw8yvB+7+BR568Vm3iEJJS9Gjz9?=
 =?us-ascii?Q?/kyGOxMccd8iHP43yyVwCEd5D4zuvsBtRq2u9QrsQLMk9nVUhsWMK3s3Af9M?=
 =?us-ascii?Q?axvLvpO49SAVOwQn9cLk1tHuZWwSgfHkeRez5AJXeAlnPSK915nqErC1tcxQ?=
 =?us-ascii?Q?f8zPt14CudhbSI48/U0sbXTryXT9NwBfNEvBlappXO6YB0QWyZY8Gr7LpSJl?=
 =?us-ascii?Q?bQQEiJkLxNTCYTSGifmMRJn/WEzPPssjsJ7JfLWJS9QeohgiInN5XN4GkbMd?=
 =?us-ascii?Q?t7rf3FbZI+3n6ut49DzWUbC5nEFMLkVSMqirFcqINkDR3Yviscbe8JfraCH2?=
 =?us-ascii?Q?TegIsFR5AEU1n3hwGMxHW2mYqRMySLncM8N+dBdIWf73Tji9x9usyoXMf6FO?=
 =?us-ascii?Q?or/QMES143LqicY2Rq9a3GBwj6Cwo9TRP6ducv7K7G1nmAK/PsBWQJOeXFr4?=
 =?us-ascii?Q?q0fq+ErbrFA3bUC6IQUAa0oMZqdQx96oNXRmj3GoQ8KgWf02g0YzTnIARyHD?=
 =?us-ascii?Q?eYPfzsUGc1QQ9K/K4UUuR+0KDPZ1Mnx1I/3X5LCEJNSSiyaD2SYSazShYMmD?=
 =?us-ascii?Q?yOw01Gjah2Ci9KCGJjYB5AGwZHdPT0VjdEaflYYI4irCq4hgP/JN/JOPJeb8?=
 =?us-ascii?Q?8tsjJpXl+c5h/ZX1lT+zvTOl5RKu76ns4tlkpNhY6bWwaRaZIA/T0s7Ohb2v?=
 =?us-ascii?Q?TpM+4EwCnUoRNGUe08/asFmdNu0jMqPrwVT0KoIbmfxTs7Caog50bE1RHkRf?=
 =?us-ascii?Q?OMvOZ+o+mEc8aKDtR/+DT1FwNi53ekcZETS1d6+xb3/vwMIvtCtKXP3YX2RV?=
 =?us-ascii?Q?cukbIfm7RYmi5Xg3fp81Nc74Nt7YIgqC0OWN6J3IL5KP22lz+Xy7usvSW9u2?=
 =?us-ascii?Q?hs75Yga76NPJ3JZQvADXw1h61qXe8OqZTxmIJpZdHW5EovUU8+W9hd48ij8M?=
 =?us-ascii?Q?z2EDBvKJ7griohQou48JBEzuiD3tg0q+We+EyivtCG0GcMhjvZ/4nHc4XMov?=
 =?us-ascii?Q?Npu57uT0RxYt6fuNhk8moC8z2p2qY4pV45ddyUHjf+DDd3QcOgV7drZBowsW?=
 =?us-ascii?Q?L2NDrqGVWiLbw2xGkSTYSM2R?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e41ae2c-83cc-413a-8026-08d96d3553b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2021 10:43:25.2774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y/uMe9POgKBRVSbqqaBq1NYCnzyU5ELNGM0KLg5qzEfSk79O9KIdcWucfXpCSyNL5HbK0ZhHywwd8WOFGjcBqLhSHLHPHggdpWpDpoYuH74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 04/12] ice: allow process VF
 opcodes in different ways
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
>Tony Nguyen
>Sent: Friday, August 20, 2021 5:39 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v4 04/12] ice: allow process VF opcodes
>in different ways
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>In switchdev driver shouldn't add MAC, VLAN and promisc filters on iavf
>demand but should return success to not break normal iavf flow.
>
>Achieve that by creating table of functions pointer with default functions used
>to parse iavf command. While parse iavf command, call correct function from
>table instead of calling function direct.
>
>When port representors are being created change functions in table to new
>one that behaves correctly for switchdev puprose (ignoring new filters).
>
>Change back to default ops when representors are being removed.
>
>Co-developed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c     |  23 +-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 207 +++++++++++++++---
>.../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  32 +++
> 3 files changed, 225 insertions(+), 37 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
