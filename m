Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE99D9B9B02
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 00:00:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 949BC60787;
	Fri,  1 Nov 2024 23:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNtCr9WsYvtS; Fri,  1 Nov 2024 23:00:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA2CD6078F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730502016;
	bh=zIyIrkYoSOSSj3pUxADxf63vXFDZ0OUsodqR6AVvnjI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dCYtAEaZe9BG98+lIIQjbBm6lFKv6Yksp7yDRpsArCxAZ0QwEOK/VzRJCAiJm4MtL
	 0IktvW/LMqjX8XGDsbuyn5rbkTzgHIFucyXh+NscxMzqGHUsQV3AHaAQRxZJlXNsoC
	 LtOWNVrxwDQ9eE+P8Rg/KpFgfKTUpE2t1wcCvJyYI+mLd/2PxwHBP3I3Egb37NKR0W
	 AAEABaQPgvCDHSbWBQfBMb1idMz9uVDdk1GcofZB3otwmRugRq+OKNDXPJfyI3FuJ/
	 142Lhdhc/kyAp4I2ReEqzAfKS9uOl67NMKV0pfr/zkGXDIZzqu5h1oKInEzdTX/jLm
	 oxGHOYnXhU2zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA2CD6078F;
	Fri,  1 Nov 2024 23:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 17DE3979
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05ADA80C9F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:00:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UjAH0fA0WU_C for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 23:00:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1AE480C9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1AE480C9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1AE480C9E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:00:13 +0000 (UTC)
X-CSE-ConnectionGUID: ry8WmcvXQ4GEHnLUgsrG7Q==
X-CSE-MsgGUID: Pq10nLYlQDipsTFvf7zeDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11243"; a="30389597"
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="30389597"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:00:13 -0700
X-CSE-ConnectionGUID: Y7+13v+TT2O8ufR2UaPF2g==
X-CSE-MsgGUID: /f9f3sQkQbaAtKHy4s1M2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="88230561"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2024 16:00:13 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 1 Nov 2024 16:00:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 1 Nov 2024 16:00:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 1 Nov 2024 16:00:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QNurdqkQ66b4gSUCShk1AGhwDyOADJ2oYCeM2sVC38lHv6CzcOnpxfJKGOCCuQ7lrlnsCHL9COSVwY4zeRLVsCHYe/lWeaA1VLFEbpGbfFmsnGFE4P+c8CynuGXMKcCLMWZ2cBeE6yx4Nq0Phkklax66r6YA9u2aGjNAp1pLCRJBkjdTD3qg1PKhELp7huTcQtVm7ullPhJZzZyVKbmViz4vktTTeI+pgT1wTfehDtaMxQ20hqA0Loz5OVsi50BW7YgDlJshvbCQwBZkob3nePewERfFd6b/kpYQ5vHZODDS171H2ODNC/9EYpBJC6EQnHO7FHQGT9bj9vugZ3q8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zIyIrkYoSOSSj3pUxADxf63vXFDZ0OUsodqR6AVvnjI=;
 b=T72AsnlZT404a3mryxRY9dhnxkGdlvLaJSxQpdfm3Tqea52lsDf5J5ml5PkMRvmIHOY1vcSBhesz/UqErLeZTtwSBMJEZDBzOfyNiu5U9fPICGmFxmiEJfZQ7sZjSBdxn43gvqJRU3h09GyGxqM8uUVRnVD2ML3xPykhyrctHQCZLuBJyM7tn8bwpKX1a1UnB+G5ArQja9pDYGKnlcYaSarufr16kUonrjMihczKqPZneQOGFLwa43dWN9VpvnFy+KP3piAlKXJw2ijaQPA8UFzHt4aqSK5JwiDLGDbxLzetFj1E/H+TnzWuTLQlfcSDrapA3cg7NXRJ/RQNoPgEUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by CH3PR11MB8592.namprd11.prod.outlook.com (2603:10b6:610:1b1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Fri, 1 Nov
 2024 23:00:06 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.8114.020; Fri, 1 Nov 2024
 23:00:06 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Singh, Tarun K"
 <tarun.k.singh@intel.com>
Thread-Topic: [PATCH iwl-net v2 2/2] idpf: fix idpf_vc_core_init error path
Thread-Index: AQHbJw1GRis+gK+EPEyd9ono///A+LKjFUZg
Date: Fri, 1 Nov 2024 23:00:06 +0000
Message-ID: <MW4PR11MB5911A82DB0CBE070519439C9BA562@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
 <20241025183843.34678-3-pavan.kumar.linga@intel.com>
In-Reply-To: <20241025183843.34678-3-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|CH3PR11MB8592:EE_
x-ms-office365-filtering-correlation-id: d0df2b24-e12a-4dae-75c3-08dcfac8ed96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jInTRS+Z+FgvlCxA+jH1mH/jDDywr11kLP3mHDo5SLbm1V4ycDfLbnBNezwe?=
 =?us-ascii?Q?P+WwQhiAwZ7kV7LFCt7/h37el9uG07GFOpsTknNRKhJUL06dTERGDt+cSY4b?=
 =?us-ascii?Q?yxL5Z18KFFudDNzrgOlD3WuAbKajqXKYArm31/fM8zMrGKjUL1rvMZcJN+Qq?=
 =?us-ascii?Q?/ui1/+A4lvAtAaYNTrSdN2RhPAJgAq86ynxI8auKeU1B23fPv+27kcNmf1TF?=
 =?us-ascii?Q?bL/nENUVwZYn2APdeTgcR9ijbn/4cP1Y3UUkNNjPr+iJQwdqoFM6vLS1YYtM?=
 =?us-ascii?Q?46z4KblL0LwbYj5x7OdrlkjIEGQaMmKZUI1oSbsrlYZPjxCZvxOt9ucWcUC8?=
 =?us-ascii?Q?8y87FVLRdA04JQFAVkBukGZHDOjaS6KP62sBSgerMYDMDzhVVPVONBQRpgjJ?=
 =?us-ascii?Q?lBrpkDK2lLT/NQI1HT2LJXJubVonyNYUo8MIMLWYCi3scTylP5B4Pf45v0uF?=
 =?us-ascii?Q?njHOhh1PvFQJQP/wpjpJzm/gfhYIPR2G0V3d0hfy59N9LcBglKzduwMksyu8?=
 =?us-ascii?Q?xEb3UBcID3iOsf9MK8xpkKojjzQnjA9QXoTea6cRgwdBbjfTeoWwsBHVMcHG?=
 =?us-ascii?Q?r5l27O9i6MI6BeX/AqwphDYEQCJSwYegFkCHgXqGJr8tENJkZormBtHcKYTM?=
 =?us-ascii?Q?W6vzkX2+3Cx4njLzEO2uXzQmqPm/5WrrYfrTWsuN/UxpzX/y+xjkC1yZOSw9?=
 =?us-ascii?Q?zmBWmVhFw74+gBLlCnhfJTSibY61oUX6IFA/duftL7prZZTnPzFFQUGbB+pf?=
 =?us-ascii?Q?H0hPxjFaySVq9Q6tIKNm7u7hrXDgdnIpLsndcXnV4ZazCyRTVQKgsMxgZetz?=
 =?us-ascii?Q?FSv0J8hSLSQfXpmtUaYiXDJ6Y+eimJ/KKu1s5lvWuN8yCjEh7oXuoGA23h7o?=
 =?us-ascii?Q?Bs8VWqKyxgEjaogT2WiKIf5/jELKgee9OPukhaTEFMwCErnNFr1T8etvHSXP?=
 =?us-ascii?Q?SdryPARPzXPnPo7Amb78l6H+OtuO1b4qicYuXRYhNGJyTymscl4ODFkkMGHh?=
 =?us-ascii?Q?W9U7Qv+RnmCDMoTxFBj6dacD9yE5JudlZklZlsGhPGGyciSTNnNsouUgjAfS?=
 =?us-ascii?Q?ZwMK7jFuzGBaw2sX5FtMYP1siEQY7VAdyZ6G8ph5D6Gvgi80Nnu61Cse1ANj?=
 =?us-ascii?Q?+1ek7c2RYCnT4XNKiBYUCq0mklLMB0ZOfy4O0uZ61jx6wYFcG9zd2jdtppLm?=
 =?us-ascii?Q?xcVEDxjp62/VRk1xR2E0De95RtiFEkLQ8vjTb+Bt5fbDBrOpjf8+WdUIV94f?=
 =?us-ascii?Q?/WEKrwOOJ14vXGbkDyEhvZNBSk29TSNxvo864w8pwCab8M6duFSZgQPf3Sk4?=
 =?us-ascii?Q?2mhsHj/v2oKNjd0ULEO94aDjzcpkn4ncDhmdCgBpzMnSqyujEDbYPqzHK7mi?=
 =?us-ascii?Q?M7abHWc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FbAwHwbJBnEszEskySxT9ke+L4YgJJ/BYu/IokIP4a5vWMtZBoCxN5OmFKdM?=
 =?us-ascii?Q?GjMbvPgT3kcY1vK+45w6utKeXuu2wyRVvOUzccBn+AOUcVKV4bDOnGolfjjC?=
 =?us-ascii?Q?X3pUp5eqpt1t9I5qFYN1ucT4yQDgUtpitbGrfVubnogZRMmR6HVNF4CP2yLA?=
 =?us-ascii?Q?cO6nG0USDVUx0St1vj5FqfTOK2b5yGg2YTmFHTcgYNg9otJiJLPkap9cl3C6?=
 =?us-ascii?Q?P9n3F/Bzpoj2PF2DhIs9W6WOFJz4j034Kc8vj2c7ODkXmLD0UgbIun5vQ3r9?=
 =?us-ascii?Q?u7d6YpRJacL0nw4B7Jg9fwrTV7oQSOsV0Ub8ne9WsAo2H6yrixHjg9I0fJGn?=
 =?us-ascii?Q?+j0MXydr8kFkc82s3hMNwZdeWCyCinTibcgfh7PuxE3ljMaoQLdZThI9QcAJ?=
 =?us-ascii?Q?ajZ9xAiXzrtFfTSDx8ZEMgJ/PcwiN86tyWGSDKQ9FqPAM5IPrNj6DXF8CY+d?=
 =?us-ascii?Q?6HnEuHL8qaZ9/eVu4JPKVqy009r9cj/5nG3bwB+P2slMkzKOfF2SLyIdypPm?=
 =?us-ascii?Q?4gkyuoUhprhVEHLVr4GJcd1mrzNJTY6moliLAq81m2zk0pl/dop3OypDAYeD?=
 =?us-ascii?Q?ZfS1435Pew431w4S5/bO08AyOSFtXuYW3j7DKikB70iNfg7AvfJc+h5m5aXY?=
 =?us-ascii?Q?Ndl5DCAV1A2g5XYih14PaArGqsN88d2da0nYrAmFKq05mkGUaPgRIPdipZAa?=
 =?us-ascii?Q?soXn54uYgRxppnRDQlFC9dd69nBFSVgohsys0V82FrNUQR1Wl99RTHKZkAa5?=
 =?us-ascii?Q?MXPGHP0pBsXvvFbespwIX3YFcdrrkEpz7Sm36pJ5FVloL6lQyEhnHoY447/W?=
 =?us-ascii?Q?NW11wR8zfnQdqLeF4/8Z2VQwJBOJjo9mcgC+Lvp7rpKi+WB7QH5bJOKdL8bZ?=
 =?us-ascii?Q?+jeqVfXvWOwPIUn5UByBnOPeGN9NWUCr6cC4E/Osiatx4lWIf61NUCDLc2nF?=
 =?us-ascii?Q?jsBSrJoMsNI1/OaLFRaoik8eooG7oTIsdQ+61ccdlA+IMBhZ2kpkje0aM/iF?=
 =?us-ascii?Q?6JbUAL5yFvYvoEmwr8TPTbCbHqx0V3J22/PHyKjUH5PcKeOTwMuNW2Gs9kZP?=
 =?us-ascii?Q?X5xeWEej55+bXYXPKeoHFPQgU2DIyYxqf8eAc16O/nXhRcN50XTBzJStpVR9?=
 =?us-ascii?Q?NtlSaA6OlrUrf4aPIXZT0+3mDkaYknDXgNmFrYSufPDOQPCQE1WfwN157sjR?=
 =?us-ascii?Q?1+bFkU5Ks+IC3ixugvJESa49XTvEPbOTMJTFp6+KB1wEFYLx/NPVl/+//PMg?=
 =?us-ascii?Q?FzEGlqFyc0uL3RAommDY1WomFRQosQ4SAmtyNrCQLJ+5Wpywn7VZXacgb+97?=
 =?us-ascii?Q?DnOmmz8nBHH7XbNK7CSM1cwd4/FuE8NvYwM3mEpyZkSa7xsQjY+O0grkQArt?=
 =?us-ascii?Q?J232xx1WQleLtIgI8j25rBXV3geS6ecFdTm81EWCsPWUTzf2Zd1+9qzDNgKL?=
 =?us-ascii?Q?gpEdqJf1VRiHQ2dBF7jnomQCsDWvFt+UXYvnSi24ps3PpeFGtD6F/D1NoUaU?=
 =?us-ascii?Q?w3H5qVLLZg3kScBLTmjtgIjjqdMto/Rv3DtUvhnkdRfmIzDJmanYrfH2gWv7?=
 =?us-ascii?Q?8d4CSShTUNpYm8WOekrv5/QUtezLU5jA7rW8x5wJZaI8kp+WZvYr9Oj7Ef5A?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0df2b24-e12a-4dae-75c3-08dcfac8ed96
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2024 23:00:06.5873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3VB7PtvE47CEjz7FcoSSTEiFxPpxHeVDcWA6ebRCz5tfwqlg3vkDRbrQls09UXFurcloMSKvUXI8LObX8FJ3aWW03JPT6vtNwOHdwH5gm2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8592
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730502014; x=1762038014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gEwOJ7XcH8jx7liYBvUBWY+xRF0/NYobCLMJ/DDgyRI=;
 b=Nd7KlJuVinyTg9Tvvd20JMw52JhiSpltVGx17aruOCZmXY9sPF33ZXBZ
 t5YVkZNEOFAd94iQKsuVzX5j6Pt2TFtCcdgY6YcAecZayEdmUnGGJNsZm
 W/0EIiwluVw0bIxf2PL/mnBYVHVHPAal7cjCIKr02Pt5Qo4WYczeJQ+Q5
 2CLpB7YnXWXEbJ0ND+OXeK6lcx6+gvAGgvH8SVF7U1qVAc2fZwmCvA5gS
 /Vx22KZYwjshCZ/imSdoBxuxYt00G8MMv1JkgGpoMePHWhJ8cDXtbjZ+n
 Rf8nLFceLTE4eNqSNIWWK5JgC1XMEBfzxV95OzaA4ffLEReYddesI+opb
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nd7KlJuV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] idpf: fix
 idpf_vc_core_init error path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Sent: Friday, October 25, 2024 11:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; horms@kernel.org; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; stable@vger.kernel.org; Singh, Tarun K
> <tarun.k.singh@intel.com>
> Subject: [PATCH iwl-net v2 2/2] idpf: fix idpf_vc_core_init error path
>=20
> In an event where the platform running the device control plane
> is rebooted, reset is detected on the driver. It releases
> all the resources and waits for the reset to complete. Once the
> reset is done, it tries to build the resources back. At this
> time if the device control plane is not yet started, then
> the driver timeouts on the virtchnl message and retries to
> establish the mailbox again.
>=20
> In the retry flow, mailbox is deinitialized but the mailbox
> workqueue is still alive and polling for the mailbox message.
> This results in accessing the released control queue leading to
> null-ptr-deref. Fix it by unrolling the work queue cancellation
> and mailbox deinitialization in the reverse order which they got
> initialized.
>=20
> Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org # 6.9+
> Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> v2:
>  - remove changes which are not fixes for the actual issue from this patc=
h
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      | 1 +
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index c3848e10e7db..b4fbb99bfad2 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


