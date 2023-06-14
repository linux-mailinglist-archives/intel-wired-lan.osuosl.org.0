Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E52C730B94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 01:34:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E99E60B04;
	Wed, 14 Jun 2023 23:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E99E60B04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686785670;
	bh=PwpLR1pXjBp4H6YdUdJfaWzAQOwSWDBtTxC282i3q24=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wUya10l+HbVkklrtlQIR/f0re3vHz/FU1+YNrEmqDqjJE/27HdwQKC/iufHTfDbTs
	 xx4Nqf4DUjpP7YuYaa3d+m1idYiMmVfn5CuFGQyVpfotXFJbR71HnfWjmYP2+P7d3g
	 0kVN85ZN6KxZPm4HxDByWyjXV993JRufH1Gp5ARC8vp9UWo57ye7pwtKP2mfg3qc5Q
	 ZrobXtoHLv8oO7kEECJ30ijc5NAitieH7nBPaBBwgmFOGsZenOkOfYvIKvNUsMuW8c
	 VnK51qniyYw3Uy+S6ATdZWDrR0CdRCrGJwFIm3xb4WcQENdG3SG6Of+OdQ11tWwMBK
	 PtVFsH9B+VPAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IgFw0c-bdy3g; Wed, 14 Jun 2023 23:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 427E7611AD;
	Wed, 14 Jun 2023 23:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 427E7611AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D23A1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D92460EFD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D92460EFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q1oxaPar2MLa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 23:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48DC760B04
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48DC760B04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="356254643"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="356254643"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 16:34:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="742018190"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="742018190"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Jun 2023 16:34:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 16:34:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 16:34:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 16:34:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 16:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cAMUlHPLfCUuab0C8EVnx1yuPW6renSorVS+kxAj1NbSRhlt4J3gqgXgxGrwKA+QeNEd9rjlUuYRhKUyrp3vsVmWaOg5zoYesI7kOUSMgM/o+3o/gC3tj8D7zW6aq7GXi4dD73WI/EZbv3ruIYmsNNy/Pf9w9NgXLiehstlxBkL1ReuFHbF3pggrDjz+xYSCVkOK61GjSqeeABuET0O/l+HT5aAU8YhrCR1D0v//TuJciaR1r7e4thgSDDBds9WozMdG7G9JLTfv8dOAHTdGATDApaULlpAwn2CzxUOEsqqIVRupc4Ox1bh7ZgVZOWLzAoeOOHVOuSsjkhUKeYdxVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLGMUPJRcOgDnfZ102+6t5X2HDv+mjb1ZBPQkqEipTU=;
 b=dk/fXShOg3RrOkR2VK8z8ra+AERUhfV1VlFlnJ56vhI5wWHNWCoDLyrp6Gqq3bZBbAXJ9bLfDcrwWEPyF2uVCQZ8cgBtO1jj7e6NErqld+SmyDpgCvmkb7Zu0n4uvBvrKrv6fUVmN5fBe3jAlIQLgopPPt9jfPlUHMvG0D5M9d311aboEueRECD7s6fO1DVmJhIIR2DGXrcwYBq/QCqntNHUXSJc7Ld1YnnrYiNOspCOwZWIoTK440bYLfKKlvNi5g4AKTBWaNYo3HBXYfyCZHnoPnCL34+eH4efQbhd8lOFFfuGu7kx0sHhnahpxhElnmyfdJHyE6NthqtyTedEYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by IA0PR11MB8336.namprd11.prod.outlook.com (2603:10b6:208:490::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Wed, 14 Jun
 2023 23:34:17 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 23:34:17 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Brett Creeley <bcreeley@amd.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 06/10] ice: Flesh out implementation of
 support for SRIOV on bonded interface
Thread-Index: AQHZnwaqVXEictUbjEauD569+86XKa+K8SDA
Date: Wed, 14 Jun 2023 23:34:17 +0000
Message-ID: <MW5PR11MB581193B29314BF9170D48D49DD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-7-david.m.ertman@intel.com>
 <fb5e5541-3875-5310-8380-f5b1d3888e6e@amd.com>
In-Reply-To: <fb5e5541-3875-5310-8380-f5b1d3888e6e@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|IA0PR11MB8336:EE_
x-ms-office365-filtering-correlation-id: dfbb5913-940f-435e-21c9-08db6d2fded3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LDnigpMqyspsZh47qTfpv/JPwueIBjg9FLSLQwlCV24McuViIU0qeTjUw9jvAylJca++Y+XCfx95ZPHNbk5pQAbtOtrTm/iz5Ji+zeCNrcxtFJDNq9gfk2PQQzs9IJ3Uu/pbQGiKH7VjMnsQuwY2uuU6GC95xVI/sj/AW8ztBOTUL1l8VAdajNkLrGtmzN5ioddqeDq4dGXNWd9GJJ/UztzpraVGIeikZE8u2tTYihxionQu2HE81rsei7muNBFakxdb+oCS9Ub1OyFXSYyTNxzIwLd+yvWplDKlwci25Qvt6pfIh3d5p9J2WWOE3o8x/DhwYTc6gA/8vEtNrtg1SdLw9wKhMQUSosB2RXyzMltziRRMCeR6pWz95h5mhv1vWomkVQu+uV9rANRpunoWQ8490hdMTfG/J2JxJs9qnEtN15/GEkFTxrUYXiNyL22nUi23sXSOZakoHc7/2e2KiEXUZZWKbAzl39sPuQLbNzf5Hx8qqzW30Yzfev/cVO+xQb3ZQL4QHMYHP3Ttf/Pd/1GxxpTELMvErZa07BBBVe7x+GjfhxhAbTzUnKB/kcdeaVqIO99G+SHskdP6xcnsLCs2soY0TZ3ky/t9dp3BYUb55mX/4zBGkuW4aCHKEYrd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(66476007)(66556008)(66946007)(8676002)(5660300002)(8936002)(52536014)(71200400001)(4326008)(64756008)(76116006)(478600001)(66446008)(110136005)(54906003)(41300700001)(7696005)(316002)(38100700002)(53546011)(122000001)(82960400001)(38070700005)(6506007)(26005)(83380400001)(9686003)(86362001)(186003)(55016003)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnpKbnkvbkZiOWJyVVRKVVB0aGh5TlVVTHI2ZjQ1VTlwem9xdXJpaFN6OGJ0?=
 =?utf-8?B?V0d3a1Z0T1dXbzdQdUJQeHBVd3J2NjFtZ21WalhpbXl4dEJBeEpaMlROYno1?=
 =?utf-8?B?b3hqSFUvdHUyVGFNNWZhNnc4MWR1dWlXenBnTjhjdkRJanBUWnNOakxRd2U0?=
 =?utf-8?B?aW1pNUI5UW1oN3FGZ291NGU5d1R4eUwwNFJ4REx0b1o0ZWNwRG92cVhzcjZE?=
 =?utf-8?B?TVpienFUNERveVhSVllxQjM3SksybU4yQjA3WjdOeUpLak5GeDZNbUdkZjYw?=
 =?utf-8?B?Y25lamVXOEtuYlhkWnVjVktzVVFSSmUyWFlZQzV5R3FUWEMxdEVrV2xqY0hv?=
 =?utf-8?B?aGhqUEY2ZzdScWMrc0sycTFQaVFjZ2ptUzZUQXNiL0UwdWd4TTBSQjJHYkl6?=
 =?utf-8?B?K3dZbkxlelVhQkNkbXhmeWJnd3M2NDhKdnBFWEt3T0IzSU8yWG1xK083SEFZ?=
 =?utf-8?B?d0tpSnpHelhxSlBhUmxoM1M3RDN5cFpSbHR6Y0JuaDhWZXVnVXFGTzRaY1NL?=
 =?utf-8?B?aGFseUZWTEFWUVRWait0MkNVcmlvZ2QrOVdIWERrUWdFb2V6NlJkaDA3WXVF?=
 =?utf-8?B?Vmcxdy8vMXc1OGM3THJFQXYrL2E1a2NyQ1hXVmxaUmRjMVdwRGF6VHVjclRC?=
 =?utf-8?B?UVVKWTlENWVwZStaQkMrTlBIOGtuYzFSdm9ndTNDMkZ6NWFYMEJ0emhZeUFJ?=
 =?utf-8?B?WnN2MlV2RVFuWUJ6aXNScTFKOU90ZkhqZ1FuWU9ndEpEV2xsemgzc2liT0l3?=
 =?utf-8?B?d2taakxGQis4WFZZSDNhekhQQi9HVlMxeW8vL2kxK1ByaUNQTjF6N2huZmpX?=
 =?utf-8?B?czg0TUVOWHRTQnlYQkJVWWZWWGxyNUdDbEVlcm9XOU9pRjdGcXVmVFVNOTli?=
 =?utf-8?B?djJVdlgzd3hHcHNQbkhDbUo0TGdyK3hnVVluVjhtY0dMUGFhOGxBOVhMbXVr?=
 =?utf-8?B?ZW5iaGpheXU1ekZ3ekxONTQzYXJwWklyVEg3ZkVUR2ZPeHF5SUFRZ3JwTXk2?=
 =?utf-8?B?OXFJL2xWc1dUTkVrSEZGRFQ2QklVZGF3b3NvNFRHZzU5d0hPK1R4Z1VnNE5C?=
 =?utf-8?B?MmxLdzNzMVlDQ1kxcS9FcUNaTytLMEJJbEdJaDlXVXVoUzFwU2JYOUNnQldy?=
 =?utf-8?B?STI0Q3VneVh4SWVZSC9WaklvNFJwVjczTHc0TUNBU0lIZWJGVzI4UVZKb3VJ?=
 =?utf-8?B?R0c0SmpYRGJwRDJtTjhPS2lRYlV5RHVIdXZiTk5XODVVRkRoNGtpaGdKYmJl?=
 =?utf-8?B?c1ZTWENrVmlPa21Ca2NsL0pSb0FPNjRZSkU4Z1VIQXdSc2FjbjRTLzZrazVU?=
 =?utf-8?B?YjhFS0hoOWJJamR3a01YNndmSG9JMTZ3T29wdnNhMUF1VXJEaEkzWmlaOXR6?=
 =?utf-8?B?SXplUUNjdzlMc244Z1NBYWphcUw3czY2a1BoV2h6SFRXWm9paVU4aGF4QVpk?=
 =?utf-8?B?ZElhMmNtRjRRNXJsM0FRamJhK1pRSFhaNDE1REhKd2h1cmo0bXZyMkdSblBC?=
 =?utf-8?B?bkFtOW0wbk9ndmVjUUlqWFZxWHp2RThmRFNFNEd2Qzc0WTdFekc1MmhEM2sr?=
 =?utf-8?B?RTJXWXR2UFozZnoxRTZSVDhuMWNBaHB0MExwMWx1aVRMc1U3bXovbkJ5MTVk?=
 =?utf-8?B?UFA4VWVNUzRhWWc4K3A0Sm8yRkVoWS9Xd3lXZFA3dkNyOHh5ZGt1S1BlN1pR?=
 =?utf-8?B?WEJoc25RVUZOY0luRWxVWVZDR3FqUkduSXpkeDFDYnJ0Znc2bDMrY1lsS00r?=
 =?utf-8?B?TmhqYTRQSHRYbnhZb1JBT2RacjVnM0c2OEVHYjU0QTU3cEN2L1k4eTNTL0N5?=
 =?utf-8?B?Q0NFMUsyTHA5Q1FNVTlhWTVkdjdHN2ZWQWREZWJDdlArSXRvcTFSS1hkbWNq?=
 =?utf-8?B?U3d3TEVjNXgySVI2eVc2d0VoMlpVVlpsUVlVck1KZEUrS2hpYnIrdzNyYzl2?=
 =?utf-8?B?dmF0ZmVCcFVFYjZyb2RjSVFoblNTa2RKeHMvMHlqektzS1UzUkRJdzJWUzlC?=
 =?utf-8?B?Um1UQ2JxaDlDTUsrTWV2dHFkZzBYckVyVk5kYStTY3JjeVlpVkd0dFlZK0xF?=
 =?utf-8?B?dFJYYW9YK201Q0R0SVZVSXorZlFCRVJmYnJRK2tMdFk3YlNyVHdIdFRnTklh?=
 =?utf-8?Q?SAGc5yPo8Bv6754+7HNzChJNX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbb5913-940f-435e-21c9-08db6d2fded3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 23:34:17.2081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7haW3V1Ar6ZbjGYRDbhxEi7ygjrdwUPDXHB6TmSsp5q1qgfHH/0Z+FKrgKsY9B9/RWHqgKhP/IuHqUJ8rlX2lDjwoaJzZBuzA1/zeRGtovE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686785662; x=1718321662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OLGMUPJRcOgDnfZ102+6t5X2HDv+mjb1ZBPQkqEipTU=;
 b=HhhfGFuc+wTIVGlgNFS/bolF5MMgDqoBLOeLxlVMkB86QReFpsRILAQ0
 KZ2T8l/rqyQqHX726BjAs4ZZy9sW8TNxjwMAYDWA/1BQ00dvo6QDSpM0X
 YmPTMenViogyQ79+PK6RAeCqDMNCp6GT94Ht/m+wMimEU/1O21S8cU79O
 ugzaRbTwr1rcPiMNaJY2SVojp9QqVd/sAwIWZK/O5VD2x7BYfggWx4MCn
 05+5Vp6n+UysmmD04+cR6lFfaUTpHNfvBUE60h7ERXiiPxLD5nDfALaoE
 97a6pQux3uqlXUihzAq8fjb7yMCbOqaC7Uw0QhqojfaAI9ETxETtsekLp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HhhfGFuc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Brett Creeley <bcreeley@amd.com>
> Sent: Wednesday, June 14, 2023 2:25 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: daniel.machon@microchip.com; simon.horman@corigine.com;
> netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v4 06/10] ice: Flesh out implementation of
> support for SRIOV on bonded interface
> 
> On 6/9/2023 2:16 PM, Dave Ertman wrote:
> > Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
> >
> >
> > Add in the functions that will allow a VF created on the primary interface
> > of a bond to "fail-over" to another PF interface in the bond and continue
> > to Tx and Rx.
> >
> > Add in an ordered take-down path for the bonded interface.
> >
> > Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_lag.c | 821
> ++++++++++++++++++++++-
> >   1 file changed, 811 insertions(+), 10 deletions(-)
> >
> 
> [...]
> 
> > +/**
> > + * ice_lag_qbuf_recfg - generate a buffer of queues for a reconfigure
> command
> > + * @hw: HW struct that contains the queue contexts
> > + * @qbuf: pointer to buffer to populate
> > + * @vsi_num: index of the VSI in PF space
> > + * @numq: number of queues to search for
> > + * @tc: traffic class that contains the queues
> > + *
> > + * function returns the number of valid queues in buffer
> > + */
> > +static u16
> > +ice_lag_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf
> *qbuf,
> > +                  u16 vsi_num, u16 numq, u8 tc)
> > +{
> > +       struct ice_q_ctx *q_ctx;
> > +       u16 qid, count = 0;
> > +       struct ice_pf *pf;
> > +       int i;
> > +
> > +       pf = hw->back;
> > +       for (i = 0; i < numq; i++) {
> > +               q_ctx = ice_get_lan_q_ctx(hw, vsi_num, tc, i);
> > +               if (!q_ctx || q_ctx->q_handle == ICE_INVAL_Q_HANDLE) {
> 
> Should q_ctx->q_teid be checked against ICE_INVAL_TEID as well? If so,
> the dev_dbg() should also be updated.

Reasonable - added check for ICE_INVAL_TEID and DBG statement.

> 
> > +                       dev_dbg(ice_hw_to_dev(hw), "%s queue %d %s\n",
> __func__,
> > +                               i, q_ctx ? "INVAL Q HANDLE" : "NO Q CONTEXT");
> > +                       continue;
> > +               }
> > +
> > +               qid = pf->vsi[vsi_num]->txq_map[q_ctx->q_handle];
> > +               qbuf->queue_info[count].q_handle = cpu_to_le16(qid);
> > +               qbuf->queue_info[count].tc = tc;
> > +               qbuf->queue_info[count].q_teid = cpu_to_le32(q_ctx->q_teid);
> > +               count++;
> > +       }
> > +
> > +       return count;
> > +}
> > +
> > +/**
> > + * ice_lag_get_sched_parent - locate or create a sched node parent
> > + * @hw: HW struct for getting parent in
> > + * @tc: traffic class on parent/node
> > + */
> > +static struct ice_sched_node *
> > +ice_lag_get_sched_parent(struct ice_hw *hw, u8 tc)
> > +{
> > +       struct ice_sched_node *tc_node, *aggnode, *parent = NULL;
> > +       u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
> > +       struct ice_port_info *pi = hw->port_info;
> > +       struct device *dev;
> > +       u8 aggl, vsil;
> > +       int n;
> > +
> > +       dev = ice_hw_to_dev(hw);
> > +
> > +       tc_node = ice_sched_get_tc_node(pi, tc);
> > +       if (!tc_node) {
> > +               dev_warn(dev, "Failure to find TC node in for LAG move\n");
> 
> Nit, but seems like there's a stray "in" in the log message?

Removed "in"  in warning

> 
> > +               return parent;
> > +       }
> > +
> > +       aggnode = ice_sched_get_agg_node(pi, tc_node, ICE_DFLT_AGG_ID);
> > +       if (!aggnode) {
> > +               dev_warn(dev, "Failure to find aggregate node for LAG move\n");
> > +               return parent;
> > +       }
> > +
> > +       aggl = ice_sched_get_agg_layer(hw);
> > +       vsil = ice_sched_get_vsi_layer(hw);
> > +
> > +       for (n = aggl + 1; n < vsil; n++)
> > +               num_nodes[n] = 1;
> > +
> > +       for (n = 0; n < aggnode->num_children; n++) {
> > +               parent = ice_sched_get_free_vsi_parent(hw, aggnode-
> >children[n],
> > +                                                      num_nodes);
> > +               if (parent)
> > +                       return parent;
> > +       }
> > +
> > +       /* if free parent not found - add one */
> > +       parent = aggnode;
> > +       for (n = aggl + 1; n < vsil; n++) {
> > +               u16 num_nodes_added;
> > +               u32 first_teid;
> > +               int err;
> > +
> > +               err = ice_sched_add_nodes_to_layer(pi, tc_node, parent, n,
> > +                                                  num_nodes[n], &first_teid,
> > +                                                  &num_nodes_added);
> > +               if (err || num_nodes[n] != num_nodes_added)
> > +                       return NULL;
> > +
> > +               if (num_nodes_added)
> > +                       parent = ice_sched_find_node_by_teid(tc_node,
> > +                                                            first_teid);
> > +               else
> > +                       parent = parent->children[0];
> > +               if (!parent) {
> > +                       dev_warn(dev, "Failure to add new parent for LAG move\n");
> > +                       return parent;
> > +               }
> > +       }
> > +
> > +       return parent;
> > +}
> > +
> 
> [...]
> 
> >   /**
> > @@ -625,6 +1321,73 @@ static void ice_lag_monitor_active(struct ice_lag
> *lag, void *ptr)
> >   static bool
> >   ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
> >   {
> > +       struct net_device *event_netdev, *event_upper;
> > +       struct netdev_notifier_bonding_info *info;
> > +       struct netdev_bonding_info *bonding_info;
> > +       struct list_head *tmp;
> > +       int count = 0;
> > +
> > +       if (!lag->primary)
> > +               return true;
> > +
> > +       event_netdev = netdev_notifier_info_to_dev(ptr);
> > +       rcu_read_lock();
> > +       event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
> > +       rcu_read_unlock();
> > +       if (event_upper != lag->upper_netdev)
> > +               return true;
> > +
> > +       info = (struct netdev_notifier_bonding_info *)ptr;
> > +       bonding_info = &info->bonding_info;
> > +       lag->bond_mode = bonding_info->master.bond_mode;
> > +       if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
> > +               netdev_info(lag->netdev, "Bond Mode not ACTIVE-BACKUP\n");
> > +               return false;
> > +       }
> > +
> > +       list_for_each(tmp, lag->netdev_head) {
> > +#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
> > +               struct ice_dcbx_cfg *dcb_cfg, *peer_dcb_cfg;
> > +#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */
> 
> These #ifdefs don't belong here.

Removed them - thanks for catching this!

> 
> > +               struct ice_lag_netdev_list *entry;
> > +               struct ice_netdev_priv *peer_np;
> > +               struct net_device *peer_netdev;
> > +               struct ice_vsi *vsi, *peer_vsi;
> > +
> > +               entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> > +               peer_netdev = entry->netdev;
> > +               if (!netif_is_ice(peer_netdev)) {
> > +                       netdev_info(lag->netdev, "Found non-ice netdev in LAG\n");
> > +                       return false;
> > +               }
> > +
> > +               count++;
> > +               if (count > 2) {
> > +                       netdev_info(lag->netdev, "Found more than two netdevs in
> LAG\n");
> > +                       return false;
> > +               }
> > +
> > +               peer_np = netdev_priv(peer_netdev);
> > +               vsi = ice_get_main_vsi(lag->pf);
> > +               peer_vsi = peer_np->vsi;
> > +               if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
> > +                   lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
> > +                       netdev_info(lag->netdev, "Found netdev on different device
> in LAG\n");
> > +                       return false;
> > +               }
> > +
> > +#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
> > +               dcb_cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
> > +               peer_dcb_cfg = &peer_vsi->port_info->qos_cfg.local_dcbx_cfg;
> > +               if (memcmp(dcb_cfg, peer_dcb_cfg,
> > +                          sizeof(struct ice_dcbx_cfg))) {
> > +                       netdev_info(lag->netdev, "Found netdev with different DCB
> config in LAG\n");
> > +                       return false;
> > +               }
> > +
> > +#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */
> 
> Ditto on the #ifdefs

Also removed

> 
> > +       }
> > +
> >          return true;
> >   }
> >
> 
> [...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
