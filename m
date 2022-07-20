Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8FC57B724
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 15:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B96161299;
	Wed, 20 Jul 2022 13:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B96161299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658322970;
	bh=idH6xu0aDCMR31WdA2DcHHwJ1genZZkKZnf9GaMIfuE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ahfp6Oi9hE7GpYV3wiCVWYlXp0ASjU9a+qrIxrdyvi/VL+zqMfhkVBTj2O9TGVqBJ
	 roswlLB5DY74xs3Bnb/tCy6GdPcNzZ22Cs78wTp7QbVuqzLkl8nf+6MIGnIMx4X/8J
	 P/ORHZqutixLWjqiE+5MvlzP2oZjhZs7Z4F7UQmpgpDLoId8h9ZZFkIxlEGywpraTA
	 brcsrLTwH0YANy+Uwp92U4Jp8zacwcbBjpH6ildJBzwIhOiI3D2Q2+mbyMVq84pGch
	 6Eq+Na7sAsmW1ByA35oZQyPsIQH4qDFKqcN/BoR60RScrsLD9ki5C+KwFtq7QpWLKd
	 MvpkzQlRtTQIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ST896Hnwmqdc; Wed, 20 Jul 2022 13:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFBB66128D;
	Wed, 20 Jul 2022 13:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFBB66128D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5710E1BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E81182F14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E81182F14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q83wTyS-FQ7K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 13:16:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4F2E82E95
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4F2E82E95
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:16:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287520549"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="287520549"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 06:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="740284327"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jul 2022 06:16:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 06:16:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 06:16:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 06:16:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 06:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNREYpDZW1GKhTDjgHNj7bgtgm49FU9GOPBMmM2UpJUxKGwHA3jq9TLJX96KMP1D7TFl6nMRcNFyAKb6QIPnjo4/K/pJOMN97f+kINxaDUaJ0TvLUsc+l1ZojY+M6d6wAm7p9nBZydk8qbWM5BE9ndq2wdih6RnTG6eTVCtps4GtuRpLSm11cqi56do+Q38G6LYkJ4B2pVrAKBz49iUhNCzmlymXI3K3P5YZdPhDvXSSoed0C0Fhkjo+YSiYcfvpIOwh89iQWde6/Tj/DqqlVaSSrX7w6I15y7cIE35n0hyWrfJBW2+qOf1jjoV5A/FDPVWNdXElY6uTqwXyqw/1sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxzYW5Np9DHWl8UkbO+T3MseoCh2yB3se5hyotSmUUM=;
 b=l9XOs759SZbjBjXAV56pxbNUH3CyjB9LeLqJK+pQwsHk4etqkQQJR5uv5yz3iW/gNX+Bz2HZ3iG9uUTOYJLcVVVL+9yt5xNomswtB1l5DgNFxkxHvtI5Q1MeHDyB/lttx+DkBOy5/wXVu7ATEpQ2x5FopWMgUeckXsub49f9+H/icLaOgJ6HkXeb9YNDeRxp1rEGAxebqTfum9qrdKkX579hO4zIGnPBchCKpwrqRwua2JDvEJq+rMXcHgkLpfxvP3o1cvAgVE5kEMLyaqd2S4ZsneE80Pp4dglJ8kpULH7L2fJyjh8No6G1e4SJ6esJqSJYIbF9dufiLj8VvwGVtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 PH7PR11MB6031.namprd11.prod.outlook.com (2603:10b6:510:1d2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 13:15:54 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::6409:f5a4:6b18:de42]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::6409:f5a4:6b18:de42%7]) with mapi id 15.20.5438.024; Wed, 20 Jul 2022
 13:15:54 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 1/2] ice: Fix VSIs unable to
 share unicast MAC
Thread-Index: AQHYmsXF5WcKJUcUoUmpfi1auoexDa2GQASAgAD/71A=
Date: Wed, 20 Jul 2022 13:15:54 +0000
Message-ID: <DM6PR11MB27312AB61F71BAD0C920AC87F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
 <05f1b24c-ccad-64db-adda-907a928b86dd@intel.com>
In-Reply-To: <05f1b24c-ccad-64db-adda-907a928b86dd@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6e2c632-736c-484e-f9eb-08da6a51f9cf
x-ms-traffictypediagnostic: PH7PR11MB6031:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r96pdZl56yAPcyd8WIFDTSMeHM5yma9GqzLWyg3dzehOLf4FkHP1M32nrxS+kK+H1CaBUPiKc3Yw9hklz8MJ1ZzjHxmXpoa96guyP1RBfb9C2mm+7k+vqO4dCMyUhF9FOx/4Oi3+LbOOaexyAdg84WPzwsfn+7Bo8OrK25mZiriFWli81GQPuK3wwC4kvi7+MQHxVgfri2feItSjiMs3bOn39hgcryxBfd2O5YI5gO9hy8uvY3MgDpcKKOkDCikOfw+0+cZcN4OTaObtT1JCS0O5kS6CTkwqcPLnvu+apqtg7Vr/FU73KnJ0ALCXvhxHVUIi+t8DgnpGza+WShKe62LetPryQWNhpJXXiZPBJXvyS9JCtFFpGZmUn/J6TKOHDZHrB3MLGqU+0BBrgA+fczIPhYImRiGYibExJstuI42WZxU7x4zkhbsRCEIbYoHCubE0Nhya+3jP57FgoE/RhnU7vMjGYrZ9Mk6TbI3XSGgo62Yn2tLYH93NLRTkys3u3hjv6d2r8m9Jrt0nO9ONdyInnfxqp+CWjcRM6Qd3ayZFJxu7qwnVeoBBcHujkhq9Pt6F+jnSKqCBZXjGd6k6STuoGPz46cEm/OhviYHl6UM5CMJkC4+7NKZ8yAPp5TO7Pc1hi0BSTi+Ct+YA9Pp0uyF7BgX3X28gyZ+ji1ER1kdldVZkhX5/HM20pArVO6tX/51bgnkl1cLhW5w4EgpcUS2w+x1DfaMacb7mlCSpFAzI1CmOKauSdv9oGhwJR3C/2val23av5VKMLuAkt1Ypmnysmn/F8Rv2xIWcDq2WTEXVTiwTDKp35S9yoGnc3qIX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(366004)(376002)(136003)(38070700005)(5660300002)(122000001)(38100700002)(82960400001)(71200400001)(2906002)(33656002)(316002)(8676002)(86362001)(76116006)(52536014)(8936002)(110136005)(4326008)(66476007)(66556008)(64756008)(66946007)(186003)(66446008)(107886003)(7696005)(41300700001)(26005)(478600001)(9686003)(55016003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0c0ZUZXbzVDMkM1L3hQYzJZcDVyK0lubm43Y0RwTFNXSkZFREoxZE5qcHNG?=
 =?utf-8?B?dTRTOXF3c1hWck1kTlU0VFdOcEsySkxManRyQm5GVVoybjNsbUdzVHhVQzR5?=
 =?utf-8?B?RkF0T0t5WnpNT1crM1dyZnhPRXcxQWJpNjdNaG0zQW1uZTdJQ2FQNjFMSU0y?=
 =?utf-8?B?dlJEd1lzOWJ6ZU9BZkhYYXJyU3NCczFHV1RlWVFRYVR4SE1QOE9pMG5ReWRQ?=
 =?utf-8?B?V3dWSFdLRUd5elhhZ0ZyVFgxUlNkZ3lFY2swdWZjMXJWZTVCNHpvQVRJakRu?=
 =?utf-8?B?UzhMd1daeFNNT25iUWszMlJTWUp6S3E1Smd0TUJYdmNPcW5jNEFYaXM4TXdo?=
 =?utf-8?B?czc3aWVYYUM4bW83dkVVeVVxODl4ZE5wQ1VEdTZCTzJldEk2SDRSSU9Ibyt3?=
 =?utf-8?B?MHdVNTU0Ly9pYndsR3cxaUl2dStncTlKWitIK3dQT0ZZUXNjeExORmQ3em9w?=
 =?utf-8?B?QXh2dTBSeUwxOXErNFJsZitSNzVGM3hJZTdCSEhESHNQTVJXNW1WQUduTHNW?=
 =?utf-8?B?UVREVEN5WHdyQ2RoNFBLQWF3N0dzVnRsZW9KY3VOR09qZ2tNZERjMzlaMnc1?=
 =?utf-8?B?YUl0ODNwU2U3WDY0dlh1NmlsQlcrSXZNTVJJWDVaTVM0QUliRzJqUDdteXR5?=
 =?utf-8?B?Sk4zdE5HOG5odGJwK2tyS3UxQlhCcHpUbFJsWXVhU2dteXZXZDAybHR2RXZR?=
 =?utf-8?B?OSt0OVR2ZmNveW90STdJSVNnajBRNFhRUjVFT3VTSlFwRnprZ2NWK3NkTWM0?=
 =?utf-8?B?bFQra3RYaHltdzFKS001RzZBTk9JTy9nK2xqa210V3doZEZGOFlGVFdJT25p?=
 =?utf-8?B?elhBQkpPWElOL2RETWxoMjhrUk9McU10K1BVOGJ1dFNvbFhXSlJ0cVdUSjgr?=
 =?utf-8?B?VEQ0SHc3ek5BWXlsRGtyQVhiZHB6Y2tHWkNINGpSRzFmWTgzbGFUUWY5cmxS?=
 =?utf-8?B?OFFUbXcwZDZkU2pRNXpReFM5WFl2Yit4NXhJb0s0ZGx4Nkl1L1hIUVFsREgw?=
 =?utf-8?B?MFVUN3NMTkhmb0FIMUJ2L0RsTENGazluS3VLeGpkUGdRT2l6U1B5WWZCZFNF?=
 =?utf-8?B?dU8xdndsejhuL1Qxd0lrU2EzOEx5b2JvbHZ6Q2liaXN5cTgwOFhQZDhRTFJZ?=
 =?utf-8?B?Z1FBUFpyYkdFR2hMY2pkM0VqMTN6MEZRVkw2ckx4cjFYQ1I1SWxCc3Vhb0h6?=
 =?utf-8?B?eXM4TSt0TnpEWDhzbkI1djFNM1JSRnV0cWtIVzBxNjJlZG1nU1FpQzUvSXk5?=
 =?utf-8?B?SXRzYUYzQktnamFxTUlvSnhGWkpYZDZpaHN1cFdoY3ZWK1R5bkNrRVQvUVcv?=
 =?utf-8?B?N0FhcS8rYmsrQTMxNEFCaWZLSWlMK21Yckp5TXRzZW12MzI5bFBRM2ZBei94?=
 =?utf-8?B?SXI4RFRjbVBKUW12MncvUGNtbEhadHJsdWxSNjllT2hIRzc0UUJMZTVabHJB?=
 =?utf-8?B?QW9lQ3EyanQ5QUUwYXpsZEVBcVBwaWZ6MnhaSnhDZFdLWFNxa1RzR2tBSFJK?=
 =?utf-8?B?UmQwVElzRi9XTVFJaEw5TXRhVUNOcGtEQUoreTM0UWQ3bzBPMUJWMGI1VFJM?=
 =?utf-8?B?QVhZbnRNWitKK2JpOHFQUGJnL2VoOE1mNFlvdjZhMFNadWprcGdrNGE3TzNT?=
 =?utf-8?B?elRhV3FCSk9HRXNKazg0YjVjNkovSG9OL0JCRGFQazF6M3BITEQ4TTY4QUt2?=
 =?utf-8?B?M0RGR0pweHo4RTFpZnU5c2JFWUpKbS9QN3gzalliMWdFaWFpNWFSbXVHU3Bx?=
 =?utf-8?B?NVRlRGpUeGlCN2hhMmtoWDJvYlFXbmZXdjAvWURVMFpCUTFGMEJEekh3Z2NN?=
 =?utf-8?B?bWVyUWs0MWFYeWdSd2VSdmtqYjRNL0s2WmJWWHE3S2hKYml0Q0tZbzk2WUI1?=
 =?utf-8?B?WG8zYVRpeGdoRnhtdjJ2a1dYVlNsSkcxTlNkRk04cmVkUUhJb0todERZSkxE?=
 =?utf-8?B?aTc0QnlxKytTN3BxUDNRZEVyWTM2aTRNVEZRZm96emJkSnRxSTYwdXJhR3gx?=
 =?utf-8?B?cXNydldzb2hJZUxrb1ZLN2d5ZVpWTXl5RjdUQ1NFSWZqdXVIbUxWb0l5NlFq?=
 =?utf-8?B?ZG5WTUhWYlZUU09Rcm5EUnRWRFU1U3dOVjYvZEVwN1k1QmF2Nk1KdjNZQ216?=
 =?utf-8?B?eEhsbUtoaGlQVGhTMzNlU2dIQzdsSVhOVVVkWEY3N0pzQlE1U1ppY0g5UzMr?=
 =?utf-8?B?Vnc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e2c632-736c-484e-f9eb-08da6a51f9cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 13:15:54.1929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RZqR9m6lPu3IUPP75/EqagZYgaN32xLUq/tieFqGnzFv5YUEq0273Ildq4FHvb12dLyi0FMUqkrHbLPQQBJVpqqIzhcpXt6rHYKTUowVEPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658322962; x=1689858962;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PxzYW5Np9DHWl8UkbO+T3MseoCh2yB3se5hyotSmUUM=;
 b=ajvd+MezZlcGDbmvRewdmcBUxOpBZ62PPC4OKHOVqyPepvb0qXIfNxYf
 lN4PfOCYdmp86GWs3C8BDsR3jLbnS0IAnrxcc2TcRsk1mu9Xu54IvVkpV
 AjNPeT9zdTwuCZv8vd+0R1jN2uGtQN/uoBO7CfqDjGJlIn/pxwUElwO6I
 V77/unu9D7QjQ4yO3VIJXZbQIfSyl20A0M06EKmtQcIPQ9Ii46xhtO9Ed
 QA6UrMJdm41GRIvbG3WkwoPDnB+1VvZYZOUoQRzlKr186AQSrP7yoPzDb
 frMYZUDbTNgFKFkqqj5m4C17Sqg7VyBXnO5+C+XFhczuXpbhdBPPDpQRw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ajvd+Mez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/2] ice: Fix VSIs unable to
 share unicast MAC
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On 7/18/2022 9:42 AM, Jedrzej Jagielski wrote:
>> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>> 
>> The driver currently does not allow two VSIs in the same PF domain
>> to have the same unicast MAC address. This is incorrect in the sense
>> that a policy decision is being made in the driver when it must be
>> left to the user. This approach was causing issues when rebooting
>> the system with VFs spawned not being able to change their MAC addresses.
>> Such errors were present in dmesg:
>> 
>> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
>> exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
>> 
>> Fix that by removing this restriction. Doing this also allows
>> us to remove some additional code that's checking if a unicast MAC
>> filter already exists.
>> 
>> Rename ucast_shared to umac_shared, as "umac" is a more widely
>> used shorthand for "unicast MAC".
>
>Since this will be removed, lets not thrash the driver with this rename.
>
>> Also add a helper function to set this flag. This helper is
>> expected to be called by core drivers.
>
>and the helper.

OK, so can I resend the patch with no names changed and when the patch would
be applied into the tree I would send the second one removing umac_shared? 
Is that a good approach?

>
>> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
>> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
