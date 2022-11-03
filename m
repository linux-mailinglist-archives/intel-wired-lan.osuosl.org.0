Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB41461737D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 01:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83C1081E8E;
	Thu,  3 Nov 2022 00:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83C1081E8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667436742;
	bh=5HxBKT5jwUjQHjK2Lq1+tH7LnpD/8Lyw2wzitIK+LnA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=av5nToQPlzzfFk8ggFBQE2+DkayRedjhr0bAcU6/eWKwN9uhAW7ytTqSV8TXGV4lz
	 3tuXQ7fOL0da5jgC4r75+SUW5rRWyWeo+5yDlhmWicaCsG7TYemWJ/nBrYxPi1PBYY
	 rQg8tCaPvMHT06DUJxaPNBW5tFGRjRSwuIMDFqnq1iRIXTGImf7338ceKMW2sDbK76
	 t+1f+/oYps+MeKOQnLxQQVwF+5UHITIXtotP//V/samxvc7XXjKWvY2Lm2q4oODehC
	 8mW3dam2Ph/X6jD9Aksb7PPEbS0OZ4OAQvkVa3mPtBJtybz/6lEtd9q2mvIhmsF/Sp
	 ttOUcxJvYJHiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4TTjz7RxUuS; Thu,  3 Nov 2022 00:52:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08AE281E72;
	Thu,  3 Nov 2022 00:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08AE281E72
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0F431BF95F
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 00:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA93A40112
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 00:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA93A40112
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJxm7nr8vYWO for <intel-wired-lan@osuosl.org>;
 Thu,  3 Nov 2022 00:52:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C2A9400D0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C2A9400D0
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 00:52:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="297007960"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="297007960"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 17:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="585596934"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="585596934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2022 17:52:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 17:52:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 17:52:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 17:52:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 17:52:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gzb6IigpSRigibQnSASEjUiWmzPM82mz/GDpWKY1RTf0fFHAG7CD8Nd8nac6F++YTY5L/5xmBl4cO2k/1sco67BhmYKpUF/GhO3m0DNK6ehjc8EWq2G9ImFkC8Z/H3lVfffob1Lh2hPzdbBdOlQlU8fzeg59f3qqAJ8/YKWEGxSLgSQWb4MR5YlKKSadM1EmB4NLOtX4TsozAkQzKNmLL9TSMm0wrMVXzCSo1Mv+nq/1v3M3IQci1f5Wbrd6Jb1EBFaV5manfun6MUwrY2wU/WmJaF9Shskf6zT+HRI4h1GG8t4Tg6FCip/kPQTRWTJdz1esHfFcZjm5xAVtqYX1OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gkcg99VCJkxQc7L+KFEUinaxPwW06a5pWsR416JNFVY=;
 b=IV83h1GfAF2StLbmufCFIu3NxdB1Q1YK/qf84FzXxzlRBKZ9m3ZtRFAHB3qQ+PwI0SenPEvXD5woNJuRzCZAIbm+WQVBpBHxvMCmpOUf0pG2/uFT9HX8DPcjt77BFs8fJCCDU3j85/zeWzFWqAJPholCln/8AWdhdnQq9A8Z/OxY5bcFNhMF8u9L4HaHCLe5Kd7ZGxov3MGlbPLV5Jh6FGrLjARhcNj7nPxppv3o4O8Yg/L+gnsVGzVhD0ckcKyzWGRBwjfySN5zL9pyoSRl/IsFDEMcqW+Q//35YFnxSxXBpmbiOMGs6o+6fWNhKiMRAWrol2xEUvDUy4dq/z9bOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 00:52:05 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5%3]) with mapi id 15.20.5769.019; Thu, 3 Nov 2022
 00:52:05 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
Thread-Index: AQHY5JPtYfjzjEhfVkeqgGcFls+WCa4sOr+AgAA2UXA=
Date: Thu, 3 Nov 2022 00:52:05 +0000
Message-ID: <SJ1PR11MB6180BD2C615373AF9ABB2330B8389@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
 <c665240a-3cfa-4eb8-4308-63fd98492faf@intel.com>
In-Reply-To: <c665240a-3cfa-4eb8-4308-63fd98492faf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MW3PR11MB4586:EE_
x-ms-office365-filtering-correlation-id: c71fa3d7-7116-4eac-a808-08dabd35a088
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ce2yVBGOD3k8Xg+CjBwksfxO/P510r7vljyE//OCr+CjsortIYTZEs+cg4somaaWzUrcztwXkszVXSflr4peUYk3K6QiGpy1YuNJ4Pejmqz3EsHGIJOJcSkyuuxbxP3gXioQAQ+6bvsvn3NbP8X5R4cDHuS3DcNsKK5qsm5DOvPjjqwmDttLbuY6XmlNCP4wipT0cAF164cVcFmnoCauAdJUNmCGlbYkrTa8aVNoaQb3qsTLJaC3vWIjlld0gDtTHEyI0r1LjZT5PfNwhUJNBV1YxseBXLKTpIvtY5J4laJYSL//0C0ltbR8PTI7u+GwGsnQ5cEhdAlxs7h+1lnbXF3/eP67WqU8UwFzOiFEcV4LpILeoGaQ+31w4z7HWeNK1+5EJeRBDjzigGcjGKNsIfj1Pa5m5y32nVTsHkOJd0CEGn2L/nymD/byWaHH8Nm3HBbP4vI/dcELuPk/QUGjCvLB7CW4cGka6wUS1WLAIp4RbBfRIPoT/J/hnw62AQ8TYqg9HqZSMQeK11VscbMhKiQ6mu7kj0dunAkv+Q7udUlXOUX/PxrIV/pj+bU8rgYY1qlLv4KhavO9lrv8jgHzHg9BwV9LgzPnzVf81ev9i8nPXiDoH0GT9PUMuVHcKBgNMLvxgzFi9VbuCtq9MD/NHWFzSC+HOKIZIGS9OkOov5B4h56/7gk6zvptfifNuq8y9RrnYuoug75+9Ae/ixTKocTHAb4VhW8XuSA2Std/CtXtliC5Dp2dDVD1DXEXT47i00YFf7PrA9yv0kSdSnBarA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199015)(2906002)(6506007)(86362001)(66556008)(64756008)(76116006)(66476007)(66946007)(9686003)(7696005)(26005)(8676002)(52536014)(41300700001)(38070700005)(8936002)(316002)(110136005)(66446008)(30864003)(33656002)(5660300002)(4326008)(122000001)(478600001)(38100700002)(107886003)(53546011)(83380400001)(55016003)(71200400001)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2JiRzZLTmI1eTVwRDRVWG1STVdQMisrV1NtSm5CSzFkRnpYVVdLeXRjdUox?=
 =?utf-8?B?ckJzeUNpblM4NzlKL3c0MytkUkVTWm03dlFJMGNLbWZMcGplb0o2V3R0RW9z?=
 =?utf-8?B?ejRlcjR6dWwvQ0ZoSnd4b0hHQ21CRnZpWjVBNXpSN1lhMHcwR2licVpUU0Yx?=
 =?utf-8?B?YUVoa004K1IwV05rODE4RzVocFliQS9hdXFPbDR6eTA4K3RyUmpEQk9nMGFP?=
 =?utf-8?B?V1RvdnFUSWJvR3F6OGVTN2U5ZmFNMndDTWgzTHR6U1ZUd0dDZjd3Ykc3dEZx?=
 =?utf-8?B?UXpHd2ZoejVvdWxYZEpWUDRrY25SK3lLcFREczdZYzhUdWNkbUZ1ZzViTDVy?=
 =?utf-8?B?dFRqbVFFQjdMZW0yUXFtZ09BWFAybWl2aFh1Ly9IWWJtL1M0RHRVMzdYWHBx?=
 =?utf-8?B?b3psR3ZsT1lIaE5TbXVVREh0dmF3S0VMZjFPcWRwTGJIU3QrU3o2RytyQjBG?=
 =?utf-8?B?RkJhbm01Z2F0UjQ5WEdPeldjL1o0TTdxS3ljWFdtL2Q3TTNvQUtuOE1KSUI0?=
 =?utf-8?B?SnNHdi93ZHFDd05FUHNYVHpPUmhtMUtTWWlxaGRuSzE1VE15allXMFlNQjJP?=
 =?utf-8?B?UTg3UzJ1K2lFcHRDSXZ3VjdEQmNmYytpMHcwamwwcXJlVXpMRUN6WHVKbzhO?=
 =?utf-8?B?Qk56NXdCY2M1TDVPQm5BMXhMb1hacS9pNVpUOUlCUVpIdVE1MldwM2c1cU9n?=
 =?utf-8?B?eUovMjVQdUc4NXZ0SGhaNE94L0NYOTNuZHVZMy8veDFUbzVmMWFkZlQ4WVla?=
 =?utf-8?B?dGdXL0xBNjlrYTVyNzZGR2M1RCswUFJzMGROOUJmb3RjaW44dkdKTFZUVUd0?=
 =?utf-8?B?YTlINEdabHp0dXdZYk54emxFTVZqSVVkUnFIakNDZzljbTBpU3BDQ3o1bHFS?=
 =?utf-8?B?V1RPa25ob05jV1U4UTV5UzJSVGZLb0cxbDFUYXZBSEwyOHp6TCtabFJEY1Ny?=
 =?utf-8?B?NXI4OHE1RUVYeXZaLy9pWTlzQUFNSHNjcE53aDJUaEJFQitRT0hyYmFlMkIy?=
 =?utf-8?B?VHVERUVraldMQVlZSVJOcWs1c2JuOG5qZUhUQjU4NjVUWk9reHZsM0lIY3Rk?=
 =?utf-8?B?YnNpSWdGMHRNdU1LNzk3Y3Zsdi9PczNZN2RUODY3ZzBmejJnZVZEeGFVb2d3?=
 =?utf-8?B?YlM1V0RRbDNUSGVHMmkvZHgzZWV0MHVYQWcvemZUVldpVWRMYVJQVVovcmVq?=
 =?utf-8?B?cG83RVFyQjlpSVlPb3cvWlQvRndVcXRrVVYrZk9aTlhJdjFOc0JMODNGV2t2?=
 =?utf-8?B?dlUyRXpaejdCMnV1V1h0OHUrS3gzQ2haOW9pMVlFSmdTbEU3WmZ1RWx4V3Mr?=
 =?utf-8?B?Sk1PR29vV2Nod1VGdXdCa0JhS1lyOHZlREhOZ096WlNxTDE4c1lKUGtPNXRS?=
 =?utf-8?B?QWNZMXZ4c3JxcW93bmUwU3NZNmxnUjhpK09CZ1ptcFBZWno1cnVNNm1WZERF?=
 =?utf-8?B?YmRSTS9OMG9FZVFsbGk0bjZlRU9Jc1NQQU9reHd0NDZxeU1FcktkalpCVkw5?=
 =?utf-8?B?cHhJMVVseVFSWDFMVmMra3Y5SW12aldaaDRscldJemJ4aFhWU2JPRmFQRDBz?=
 =?utf-8?B?M3p5UkpPRHZ2dzVvZjl3cEJtdHBXelJUZlJaamdaRisraGFoRS91VW5zQWhQ?=
 =?utf-8?B?OVZEbWFnZzZqb1IvQ0txb1VCNDR1WkJVRHlmT2E4VE9jb0FVU3FYbGQzTUJl?=
 =?utf-8?B?aDIyV1BDVm01aTRqNzlydmNZaTFOT0VjSXowSHI2ZDhzQ1RreHBzejJoYWsx?=
 =?utf-8?B?YndTL1ptb1I2Sk1KMGRGdGpzMisrMFJUVlFoN0d3aTBDbkR1d01mU3RsZkh2?=
 =?utf-8?B?Y0tSdFM0amdmWXNMekN6R1p3WXNaT0Z2Z1hLZmloeXJmQVlDYVU1Qk5ZUldl?=
 =?utf-8?B?MVhoRFJiNHBtMUtNNkJwOEt2ZVlDdm9CWGZNMlIzc2pIMXBIOFJwZHJ2bTNR?=
 =?utf-8?B?aTlRbGpScGx4RFJCcCtYVVVsQzZZRmF0RzB6T3dmN3lneHQrc25zcWNNUDhj?=
 =?utf-8?B?UnY1WnJleUd3YW1DZUJYUGRwemtWcDdWUGtXMkNTTHQ3TjFlTFZ6Y2ZFQVV5?=
 =?utf-8?B?cVBBV1EwbDkzdW5jSXgxMG9uQXpKcEhoQlNEYWtwY2xnbGNiMTcrK21yVVc5?=
 =?utf-8?B?eE5hTzlMUlhvY2RJS1EwN01xT0NBTXVUNCt5bjBqa2RjSDFkTXZ1czVYdUk5?=
 =?utf-8?Q?qpLJc5ocaxilcoD14yQ/hKo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c71fa3d7-7116-4eac-a808-08dabd35a088
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 00:52:05.0417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qQ1E9zUOOzlbvAKwseeqsVKaVSr9dS+Webwq8binK3PMXDLB1FwNOVP9rdGbH6rOCaiyptG6y8R0QBjYJHJKtXP2wlghEbJVCBgppblW4nN57zezSpZ/jUaVLIPo1Cuh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667436734; x=1698972734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gkcg99VCJkxQc7L+KFEUinaxPwW06a5pWsR416JNFVY=;
 b=dvupSIZmYf+nCpFfmO7esiLpXJGcnKMlflfjxUvyRiG7yO996UntVbvt
 Im7cGrEcT/7TJb4pNM1lsjnewaKbt5aBHayGRkQApLd+6LeEKROOndk6a
 huXxc9IqdAWRQJI8NrEv3rjDuMsh1vlJRg59oPevYuWdLUMg6+5yF4pLT
 KY5yX4yaNglZhc1armjz/HWyXZxvrlzyKlvj3l9FzoJT5RdnF2RHYAAoq
 HXe0WP/iKcy6iccnCH2Qbc7YxKiADtyoMqTGhbLeE0iB9STYOKM7I3gDz
 mZLSnLuuCBtcg7Pwae17wXgZARjivDWso8Ded+I++4DrfU1DIIZefGoQE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dvupSIZm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
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
Cc: "Chilakala, Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

Thanks for your review.

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 3 November, 2022 5:28 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Chilakala, Mallikarjuna <mallikarjuna.chilakala@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
> using frst flag bit
> 
> 
> 
> On 10/20/2022 7:53 AM, Muhammad Husaini Zulkifli wrote:
> > From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >
> > The I225 hardware has a limitation that packets can only be scheduled
> > in the [0, cycle-time] interval. So, scheduling a packet to the start
> > of the next cycle doesn't usually work.
> >
> > To overcome this, we use the Transmit Descriptor frst flag to
> > indicates that a packet should be the first packet (from a queue) in a
> > cycle according to the section 7.5.2.9.3.4 The First Packet on Each
> > QBV Cycle in Intel Discrete I225/6 User Manual.
> >
> > But this only works if there was any packet from that queue during the
> > current cycle, to avoid this issue, we issue an empty packet if that's
> > not the case. Also require one more descriptor to be available, to
> > take into account the empty packet that might be issued.
> >
> > Test Setup:
> >
> > Talker: Use l2_tai to generate the launchtime into packet load.
> >
> > Listener: Use timedump.c to compute the delta between packet arrival
> > and LaunchTime packet payload.
> >
> > Test Result:
> >
> > Before:
> >
> > 1666000610127300000,1666000610127300096,96,621273
> > 1666000610127400000,1666000610127400192,192,621274
> > 1666000610127500000,1666000610127500032,32,621275
> > 1666000610127600000,1666000610127600128,128,621276
> > 1666000610127700000,1666000610127700224,224,621277
> > 1666000610127800000,1666000610127800064,64,621278
> > 1666000610127900000,1666000610127900160,160,621279
> > 1666000610128000000,1666000610128000000,0,621280
> > 1666000610128100000,1666000610128100096,96,621281
> > 1666000610128200000,1666000610128200192,192,621282
> > 1666000610128300000,1666000610128300032,32,621283
> > 1666000610128400000,1666000610128301056,-98944,621284
> > 1666000610128500000,1666000610128302080,-197920,621285
> > 1666000610128600000,1666000610128302848,-297152,621286
> > 1666000610128700000,1666000610128303872,-396128,621287
> > 1666000610128800000,1666000610128304896,-495104,621288
> > 1666000610128900000,1666000610128305664,-594336,621289
> > 1666000610129000000,1666000610128306688,-693312,621290
> > 1666000610129100000,1666000610128307712,-792288,621291
> > 1666000610129200000,1666000610128308480,-891520,621292
> > 1666000610129300000,1666000610128309504,-990496,621293
> > 1666000610129400000,1666000610128310528,-1089472,621294
> > 1666000610129500000,1666000610128311296,-1188704,621295
> > 1666000610129600000,1666000610128312320,-1287680,621296
> > 1666000610129700000,1666000610128313344,-1386656,621297
> > 1666000610129800000,1666000610128314112,-1485888,621298
> > 1666000610129900000,1666000610128315136,-1584864,621299
> > 1666000610130000000,1666000610128316160,-1683840,621300
> > 1666000610130100000,1666000610128316928,-1783072,621301
> > 1666000610130200000,1666000610128317952,-1882048,621302
> > 1666000610130300000,1666000610128318976,-1981024,621303
> > 1666000610130400000,1666000610128319744,-2080256,621304
> > 1666000610130500000,1666000610128320768,-2179232,621305
> > 1666000610130600000,1666000610128321792,-2278208,621306
> > 1666000610130700000,1666000610128322816,-2377184,621307
> > 1666000610130800000,1666000610128323584,-2476416,621308
> > 1666000610130900000,1666000610128324608,-2575392,621309
> > 1666000610131000000,1666000610128325632,-2674368,621310
> > 1666000610131100000,1666000610128326400,-2773600,621311
> > 1666000610131200000,1666000610128327424,-2872576,621312
> > 1666000610131300000,1666000610128328448,-2971552,621313
> > 1666000610131400000,1666000610128329216,-3070784,621314
> > 1666000610131500000,1666000610131500032,32,621315
> > 1666000610131600000,1666000610131600128,128,621316
> > 1666000610131700000,1666000610131700224,224,621317
> >
> > After:
> >
> > 1666073510646200000,1666073510646200064,64,2676462
> > 1666073510646300000,1666073510646300160,160,2676463
> > 1666073510646400000,1666073510646400256,256,2676464
> > 1666073510646500000,1666073510646500096,96,2676465
> > 1666073510646600000,1666073510646600192,192,2676466
> > 1666073510646700000,1666073510646700032,32,2676467
> > 1666073510646800000,1666073510646800128,128,2676468
> > 1666073510646900000,1666073510646900224,224,2676469
> > 1666073510647000000,1666073510647000064,64,2676470
> > 1666073510647100000,1666073510647100160,160,2676471
> > 1666073510647200000,1666073510647200256,256,2676472
> > 1666073510647300000,1666073510647300096,96,2676473
> > 1666073510647400000,1666073510647400192,192,2676474
> > 1666073510647500000,1666073510647500032,32,2676475
> > 1666073510647600000,1666073510647600128,128,2676476
> > 1666073510647700000,1666073510647700224,224,2676477
> > 1666073510647800000,1666073510647800064,64,2676478
> > 1666073510647900000,1666073510647900160,160,2676479
> > 1666073510648000000,1666073510648000000,0,2676480
> > 1666073510648100000,1666073510648100096,96,2676481
> > 1666073510648200000,1666073510648200192,192,2676482
> > 1666073510648300000,1666073510648300032,32,2676483
> > 1666073510648400000,1666073510648400128,128,2676484
> > 1666073510648500000,1666073510648500224,224,2676485
> > 1666073510648600000,1666073510648600064,64,2676486
> > 1666073510648700000,1666073510648700160,160,2676487
> > 1666073510648800000,1666073510648800000,0,2676488
> > 1666073510648900000,1666073510648900096,96,2676489
> > 1666073510649000000,1666073510649000192,192,2676490
> > 1666073510649100000,1666073510649100032,32,2676491
> > 1666073510649200000,1666073510649200128,128,2676492
> > 1666073510649300000,1666073510649300224,224,2676493
> > 1666073510649400000,1666073510649400064,64,2676494
> > 1666073510649500000,1666073510649500160,160,2676495
> > 1666073510649600000,1666073510649600000,0,2676496
> > 1666073510649700000,1666073510649700096,96,2676497
> > 1666073510649800000,1666073510649800192,192,2676498
> > 1666073510649900000,1666073510649900032,32,2676499
> > 1666073510650000000,1666073510650000128,128,2676500
> >
> > Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > Co-developed-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > Signed-off-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > Co-developed-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> 
> Your sign off is on here twice

Yes you are right. I already fixed this in v2. 

> 
> > ---
> >   drivers/net/ethernet/intel/igc/igc.h         |   2 +
> >   drivers/net/ethernet/intel/igc/igc_defines.h |   2 +
> >   drivers/net/ethernet/intel/igc/igc_main.c    | 185 ++++++++++++++++---
> >   3 files changed, 159 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 1e7e7071f64d..66a57636d329 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -94,6 +94,8 @@ struct igc_ring {
> >   	u8 queue_index;                 /* logical index of the ring*/
> >   	u8 reg_idx;                     /* physical index of the ring */
> >   	bool launchtime_enable;         /* true if LaunchTime is enabled */
> > +	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime
> transmission */
> > +	ktime_t last_ff_cycle;          /* Last cycle with an active first flag */
> >
> >   	u32 start_time;
> >   	u32 end_time;
> > diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> > b/drivers/net/ethernet/intel/igc/igc_defines.h
> > index f7311aeb293b..a7b22639cfcd 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> > @@ -321,6 +321,8 @@
> >   #define IGC_ADVTXD_L4LEN_SHIFT	8  /* Adv ctxt L4LEN shift */
> >   #define IGC_ADVTXD_MSS_SHIFT	16 /* Adv ctxt MSS shift */
> >
> > +#define IGC_ADVTXD_TSN_CNTX_FIRST	0x00000080
> > +
> >   /* Transmit Control */
> >   #define IGC_TCTL_EN		0x00000002 /* enable Tx */
> >   #define IGC_TCTL_PSP		0x00000008 /* pad short packets */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 671255edf3c2..28cc395c6fff 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1000,31 +1000,122 @@ static int igc_write_mc_addr_list(struct
> net_device *netdev)
> >   	return netdev_mc_count(netdev);
> >   }
> >
> > -static __le32 igc_tx_launchtime(struct igc_adapter *adapter, ktime_t
> > txtime)
> > +static __le32 igc_tx_launchtime(struct igc_ring *ring, ktime_t txtime,
> > +				bool *first_flag, bool *insert_empty)
> >   {
> > +	struct igc_adapter *adapter = netdev_priv(ring->netdev);
> >   	ktime_t cycle_time = adapter->cycle_time;
> >   	ktime_t base_time = adapter->base_time;
> > -	u32 launchtime;
> > +	ktime_t now = ktime_get_clocktai();
> > +	ktime_t baset_est, end_of_cycle;
> > +	s64 n;
> >
> > -	/* FIXME: when using ETF together with taprio, we may have a
> > -	 * case where 'delta' is larger than the cycle_time, this may
> > -	 * cause problems if we don't read the current value of
> > -	 * IGC_BASET, as the value writen into the launchtime
> > -	 * descriptor field may be misinterpreted.
> > +	n = div64_s64(ktime_sub_ns(now, base_time), cycle_time);
> > +
> > +	baset_est = ktime_add_ns(base_time, cycle_time * (n));
> > +	end_of_cycle = ktime_add_ns(baset_est, cycle_time);
> > +
> > +	if (ktime_compare(txtime, end_of_cycle) >= 0) {
> > +		if (baset_est != ring->last_ff_cycle) {
> > +			*first_flag = true;
> > +			ring->last_ff_cycle = baset_est;
> > +
> > +			if (ktime_compare(txtime, ring->last_tx_cycle) > 0)
> > +				*insert_empty = true;
> > +		}
> > +	}
> > +
> > +	/* Introducing a window at end of cycle on which packets
> > +	 * potentially not honor launchtime. Window of 5us chosen
> > +	 * considering software update the tail pointer and packets
> > +	 * are dma'ed to packet buffer.
> >   	 */
> > -	div_s64_rem(ktime_sub_ns(txtime, base_time), cycle_time,
> &launchtime);
> > +	if ((ktime_sub_ns(end_of_cycle, now) < 5 * NSEC_PER_USEC)) {
> > +		netdev_warn(ring->netdev, "Packet with txtime=%llu may not
> be honoured\n",
> > +			    txtime);
> > +	}
> 
> nit: These braces aren't needed

Sure. Will remove in v3.

> 
> > +
> > +	ring->last_tx_cycle = end_of_cycle;
> > +
> > +	txtime = ktime_sub_ns(txtime, baset_est);
> > +	txtime = (txtime > 0 ? txtime % cycle_time : 0);
> 
> The parentheses as well I believe

In v2, this code has been changed due to kernel robot report.

> 
> > +
> > +	return cpu_to_le32(txtime);
> > +}
> > +
> > +static int igc_init_empty_frame(struct igc_ring *ring,
> > +				struct igc_tx_buffer *buffer,
> > +				struct sk_buff *skb)
> > +{
> > +	dma_addr_t dma;
> > +	unsigned int size;
> 
> Please reorder to be RCT

Will do. Thanks

> 
> > +
> > +	size = skb_headlen(skb);
> > +
> > +	dma = dma_map_single(ring->dev, skb->data, size,
> DMA_TO_DEVICE);
> > +	if (dma_mapping_error(ring->dev, dma)) {
> > +		netdev_err_once(ring->netdev, "Failed to map DMA for
> TX\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	buffer->skb = skb;
> > +	buffer->protocol = 0;
> > +	buffer->bytecount = skb->len;
> > +	buffer->gso_segs = 1;
> > +	buffer->time_stamp = jiffies;
> > +	dma_unmap_len_set(buffer, len, skb->len);
> > +	dma_unmap_addr_set(buffer, dma, dma);
> > +
> > +	return 0;
> > +}
> > +
> > +static int igc_init_tx_empty_descriptor(struct igc_ring *ring,
> > +					struct sk_buff *skb,
> > +					struct igc_tx_buffer *first)
> > +{
> > +	union igc_adv_tx_desc *desc;
> > +	u32 cmd_type, olinfo_status;
> > +	int err;
> > +
> > +	if (!igc_desc_unused(ring))
> > +		return -EBUSY;
> >
> > -	return cpu_to_le32(launchtime);
> > +	err = igc_init_empty_frame(ring, first, skb);
> > +	if (err)
> > +		return err;
> > +
> > +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> > +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> > +		   first->bytecount;
> > +	olinfo_status = first->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> > +
> > +	desc = IGC_TX_DESC(ring, ring->next_to_use);
> > +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> > +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> > +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(first,
> dma));
> > +
> > +	netdev_tx_sent_queue(txring_txq(ring), skb->len);
> > +
> > +	first->next_to_watch = desc;
> > +
> > +	ring->next_to_use++;
> > +	if (ring->next_to_use == ring->count)
> > +		ring->next_to_use = 0;
> > +
> > +	return 0;
> >   }
> >
> > +#define IGC_EMPTY_FRAME_SIZE 60
> > +
> >   static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
> > -			    struct igc_tx_buffer *first,
> > +			    __le32 launch_time, bool first_flag,
> >   			    u32 vlan_macip_lens, u32 type_tucmd,
> >   			    u32 mss_l4len_idx)
> >   {
> >   	struct igc_adv_tx_context_desc *context_desc;
> > -	u16 i = tx_ring->next_to_use;
> > +	u16 i;
> >
> > +	i = tx_ring->next_to_use;
> 
> What's the reason for this change?

Will revert back to previous in v3.

> 
> >   	context_desc = IGC_TX_CTXTDESC(tx_ring, i);
> >
> >   	i++;
> 
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
