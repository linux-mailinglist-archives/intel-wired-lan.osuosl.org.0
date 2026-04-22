Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGTkJTi86Gn7PgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:16:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B43445C9F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB45760DA8;
	Wed, 22 Apr 2026 12:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vo5JRhUDDo1B; Wed, 22 Apr 2026 12:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2855C617AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776860213;
	bh=yEDsb0cD6aG8ry8knTrPxksZm866sQxDfbB3ZYTn/OM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wu6XNcPmRyOTlXuVxgumoTgGtDQNt3YMjeefRTo86VZ6e0TlVsQe3z4g0S3SDsccZ
	 bfzWlZV6TxaoA3FQjnRS6xfbRHu7hsj133GE+uvIKhdrnKX+89IykAlifIHHWTUGNl
	 CWlR/S7DDlYa3iFDjaxf2oedvD0HZJKgXwiq6KuXqFIBg8tlDIGX6Ncf9pkblno33X
	 zdu7Jb49NdwjwI+YCB+VEf67F93iJ0exGXwe/r8MSK0cxi1RepJsGxK3MJD7WqHXdq
	 tP9JKKkNxbTwEb3wY2j51AKj3cGG8Tp/JOnMD3aF3kGMA3xBE+V4khS1CF1QDtRD6J
	 hNwt1O9B6rVyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2855C617AE;
	Wed, 22 Apr 2026 12:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 09006183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE3CC617A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id huR8-2jRoe7J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:16:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arpanax.arland@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24F4160DA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24F4160DA8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24F4160DA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:16:50 +0000 (UTC)
X-CSE-ConnectionGUID: iZeYFlwkTYm6F67cL2IFMw==
X-CSE-MsgGUID: sj5hmRBVS86rZ+yVaQez0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="65345571"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="65345571"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:16:47 -0700
X-CSE-ConnectionGUID: d/RSGqN6SoeXo28vmhjkvw==
X-CSE-MsgGUID: bqzU8vP4Qam37IwH/16xGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="236711407"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:16:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:16:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 05:16:46 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gup4VZ0fuborawi19JWAwzZKijEmOelFbQhxukhk7/aZhuLNP8eeI9ar7C+mBxTGQCRNAQlZJ4VL3EAz7RUQl8fXciXjSSnk8Nkr/D6zcYVnhq8QDlTlaLXR+JuTI4LdXBvVC43GNvxRV88AKz9XubG83TfWm91NtZGTIzIa/2Kcv+WL09EKL6YTrCJkXgnZyMxuj30+f9C7kXWE5UZPkHIQRZCaemitfI3XVOw3WN2ZicmREhWR5C5llqzAlGbkbtDSCKWjIOLlcmWlRi1YYfG/en3dGaaXDeZ6bPzQxBu8awc2cdEYymJaLufA4pkQ12aRu3CBF7HRMTjOVWAIpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yEDsb0cD6aG8ry8knTrPxksZm866sQxDfbB3ZYTn/OM=;
 b=h1kT+0uZroID17XtDNoNJ18m1jUWobsW6Ht3/DGqhsmwHS5apwSq6xBow3AhD9+y1T68tjoBTQDAKTolac+feQFlH9aALs0uETFNJEfSrJNrCqsgUP0MwiBKJ9f5xIGkBnX+iCl/P/EBatMtEobnVe5m5plG8IyT5YYkhCa4bES7d9+VfwWqN7uGteFx+OwMKPOdAAy2EbRIuPi+pHrWf/UqDd0F7m0hJZalCQ3VFMR80TkvG6ljq7r3iy4q8ZzGa8TcMzUY2ZbaJQ/q8Q1SMpxZUXoyMMiOeoOtSC71X7DiCtdZ+WzPJhL4FehCesY1O7slqzuj7VskL6HQGxpCYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 by PH8PR11MB9533.namprd11.prod.outlook.com (2603:10b6:510:39f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.12; Wed, 22 Apr
 2026 12:16:39 +0000
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9]) by SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9%5]) with mapi id 15.20.9846.011; Wed, 22 Apr 2026
 12:16:39 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: init desired_dcbx_cfg in
 default DCB config
Thread-Index: AQHcuCc++7PL+NHtFEWA7MpCzcC7BrXrFzRQ
Date: Wed, 22 Apr 2026 12:16:39 +0000
Message-ID: <SJ0PR11MB71558BB58B741C89A99360EB802D2@SJ0PR11MB7155.namprd11.prod.outlook.com>
References: <20260320050541.422592-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050541.422592-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB7155:EE_|PH8PR11MB9533:EE_
x-ms-office365-filtering-correlation-id: 0b87ae74-f97a-458c-edad-08dea069018e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: U+OW+1TohrBNOfGLbydB9g3iKXlb/VkX2uunxtNKoQb7kPTQ3l4PaDJttz8fBU7IpCc0fRMeyO/oT1PNg6arfZjiH978+WYClLa4RB5EZwCmejaDTW6CtvXCM5kMa3x2Yy9YSFTP4wSV3+kLEZmyUHtT3NqFRwhZwFJewflVRdGlYETjh/SPWTXaWLj+7XIZreZQhJcaYIuPUyJ7veTkSb/C2E6a3CjVcF5wpsTn2KXUiCgdkVr9ZlR7T24FbRYsonWXgoHLM6dO7AmSd8gCJ8vUGR+h42EvZy7oEpGSM/axw7qGjfTNFHmHexHwisa5ffmN+ahJZRDS0XKu+1NZpNZ5tcKzePtOlV2YMAN25nbCBdCRCEsrMdQw5Zd++oUtzutP/ck+DYYnHeQF0EXHOflIEEpOQxhzThPSKNiNvZXMQXuesuz9KjXT4pItt0Yz9LMwepU03lJiogX0LttLNuephDjMrzt1aeded6RJM1xkYZ4UKe+36L3qsG82I8SDYEP+5VtyFWgKBr2w65MtTBQRCE8EpY/MuJZ0XP9jwSzQSv3hh2qGOD1VacoquxaumpJSue14FJH0Mvf6HVMGYyNlbjK679KU6ox9BntMvNM/J2IfNo/DZNiQE3u2G3CwL95YSpGWnRj/lpa73XgtLOCOtmg6r3VEqUqctzTrakJ/1OnX09/QAO83i3yevVdXC/3hPHZz1HZ1zEoFOxPPliKL4zr+ILyvfCHulMATnMbLOheyaG+PQNk7B2qUf60CggeM8pMdqCADC8LCUjgvGB7Klt7ioELtrRmeohLN/LY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB7155.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5WI80SW9Ua2FFUPpNixk2NGEXp0XIMzXZz00dRzCpAY1VuwjtcdvudPywmTy?=
 =?us-ascii?Q?AW5cz0PFTfHr56/4wK7FcKIvgv37ixukAnN+x/ybdGv9k8k6RDZn/U7hA42V?=
 =?us-ascii?Q?eE/orOK7kaK9iS53y544hB7BM4kUV/QD4iGr8mYwd8Lv97zmIevFATOKcjBR?=
 =?us-ascii?Q?pvFoU1GmZ3BQ9zpTm5kHKtiheaqr6YppawIpQoEdc+2MPevgFjRVwFf+5srN?=
 =?us-ascii?Q?4TYWUo65Rg15DETKwv0sfmyBAYvLlMSfDKIaRhbM4Wehlx04SyBBZHiam1u4?=
 =?us-ascii?Q?lIMoiOAz79ht5Iw3pjAZbunWxA1yKB7G0kqbf2+TO+Mf+eKdgDA472l1wTv3?=
 =?us-ascii?Q?v9W6V+lxupaPORCAnUzIhShyWY5nVhOpL1FYYCJRLR/FPbK0b2zZ/Y56jRUi?=
 =?us-ascii?Q?hRKkJcpx5+/twnPFeYmKVRnJZ3HPM+H9eptfyPwpKCoUI2BKWIpHdGr7Yohk?=
 =?us-ascii?Q?Oq1Hsm2E8tqJpDisGmcNtj7ks3WNwQmhF3ANM8XOxCG37HyR/kmjNmqDVxEV?=
 =?us-ascii?Q?YysvPWs8/vp8iyoJeTDREw+pUB7FQVcUB4dzz4Tx+8S2Qbgajl9CVHf7f4vk?=
 =?us-ascii?Q?11h4PTdbEojphqDyPqoanKVWzrKloOep/dALcgKAZuX5TLXsXn5EyRsk/XeK?=
 =?us-ascii?Q?+KgS48l82jzosLNjhNtwisQsnX1npjBc5/nXvtjfoHxQVnky18Ql+DNXHww2?=
 =?us-ascii?Q?QrWeJagGXFxUiSO1VUrCWjhl3UcUSzlYh7T7M2yN74pL8eYCSqVMNmNQZmZF?=
 =?us-ascii?Q?ExU/PJu6E8nJeT5zmt+53fL3mEOyhQ3kUmD7GJDkoUrgQsuVs0mU4mITuOCw?=
 =?us-ascii?Q?saUHc7Lxh1pvCznNAotLia11fZZxJEpW3bTl74CXkE18kO/d+k7Y/JR3lmFC?=
 =?us-ascii?Q?VdTOnWMnqOLmZnLMxLc0h24gSS6YeH4QyHiUJVGYhUR76JBGWB83bEGQnLY1?=
 =?us-ascii?Q?t2DujSCFqZxRWrE+Fe3vy1dXfTGu5L5QJQ8Hdkfny81ynCd7buspghgEBG/+?=
 =?us-ascii?Q?VrKqq7/k5JCJuOkrqOrQJXDKskQs98MJ0WDpfXeBFud/3RVAkEzGK8GduF0A?=
 =?us-ascii?Q?PY9AvuvlBKjwOB2Uc6ajEIqSktmJDh0KYkPvO1kizmSjYuTu2wQaDBK7q15p?=
 =?us-ascii?Q?zHBRef/0K6fKafT6dsUCoHB5ZjvMMxackdsdp8URYprzRZXDDH7yOkUjVHoy?=
 =?us-ascii?Q?x6iIH/LFVRP6cDisLMzbD12g5ZRnbCl1GD3jpLVA9XGIvh1Tf6RfKDhvkuMZ?=
 =?us-ascii?Q?466+/Ji+PSNPTG/E9pL5A+y8Tom649+JFwumY4T2Y9C+2RbSdR/hogacwPfc?=
 =?us-ascii?Q?BmsrABqb9dLJqwe7Nq74NgOFBP6jWKnzakZKtaZg8SajYaeIRIqINqCWT1e3?=
 =?us-ascii?Q?R/CaRIzDnrhrGXtOoa3baeyvpCbQne4wLKpq8fLCvf7XQhM9Yjxm37ot8k+/?=
 =?us-ascii?Q?pBUtUDsEO9z+rFLepMDic5PfLlO241WfGbKx/IlCO8rpCLbeW3GDTF1vQIr7?=
 =?us-ascii?Q?xu+VzfjSeNEvGFalRKvAFD4UZ8NOE1Hdc27huDxg3oHmiz9tuozqlglvrJqv?=
 =?us-ascii?Q?m2aSN2xmwSIEDBde5ij7j8vFqh+vkVCKwQRoW3wo+emifV3hYWn1UwUJvVUG?=
 =?us-ascii?Q?SmQkrGIPYoZA2hJmilyQzgx3fXhFor8VX+Cdxi/ZOuhVtH+saK13UK1qnev0?=
 =?us-ascii?Q?KIF00Lii2ZGD/zyTudhUa7Xqrrun3QFndeux3aBhq7mtFVWTNITf6NxLiPXe?=
 =?us-ascii?Q?hu2X3EagTQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: STWKycmAvMEL+Cf5uwJwpUmFSeOkt3cILqPP3aWqXtBCdPU5QGJGGKcSVO0kvlVElSKGN6LAkLhneq7pD1Fm7eed08bhOYWnKqEjdbvYkIeV9NIJ9+7/P7jRS3Wr2BtLeypIIS2nURBMq88QUzJpW8BVkkFpwJUBasGDnmKnxSTzDYoS3ZbYooaep4I+T0+YXG8rVhq+liGqDTqP7Y4TwKzVUFxhCeTuQjQVrgGW8BjWlUXKo7L2rtXFXmw08qPLkQ+aGgF6KvN3rrWD6YJ8AfQd7xrIEM2QY0Ksf1bG0DeKU5Rhj6jvuSDAaBYmzJab+0eXnnUclyQv2OnIHxV+EQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB7155.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b87ae74-f97a-458c-edad-08dea069018e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2026 12:16:39.1102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7kzdABg539OgUdykDn+YJVQCFl8wRnP3NpUHPtG8oJUxANwJWNTiHXVrNI5wk3FDgwDQH+wc+0rRjQh425nvbxTwoyl2N1ilcplfucdqRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776860211; x=1808396211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uV9l4PNbsGBIcT+fLogwQYfgxo3901EdTejRN2eSVLU=;
 b=AmMat27Ppl2x0l5oBoDiHtY8slCsP308OIn9cJQx+Z1lGx4KGzwZwY7I
 1fjxuV3nnYYJ+z1bHGDXC4yWa7WNoHqtkhSisUdd8U2yklcCX0v89LwbD
 c4BatBmE/BOCj5Bfp5y4JxNwYrtsk8r2tKS38jaOPrh0vWuD6RaYt4edS
 IfYTYBVmKnmvZ2ovYt8Ored/oo8/AKb0dMjq3m+i/ofMwa4l+X7mDqpt9
 fy2JL8Id1W6XxIeEuuULsH2Uer3QCw0JxTAKvNTMBMWlZHyI+qvuaEWYQ
 PCq9piZvfaFGJxJeVdsslyUF1O1XtABLTLJzPqd9KvL/3fdzLTgH/8WVy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AmMat27P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: init desired_dcbx_cfg
 in default DCB config
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,SJ0PR11MB7155.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 69B43445C9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, March 20, 2026 10:36 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: init desired_dcbx_cfg in=
 default DCB config
>
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
> When DCBX is disabled in firmware the driver falls back to software LLDP =
mode and applies a default DCB configuration via ice_dcb_sw_dflt_cfg().
> This function properly initializes local_dcbx_cfg with valid parameters i=
ncluding etscfg.maxtcs from hardware capabilities. However, desired_dcbx_cf=
g was never initialized in this path.
>
> All DCB netlink functions (ice_dcbnl_setpfc, ice_dcbnl_setets, etc.) use =
desired_dcbx_cfg as the base configuration for user-requested changes.
> When desired_dcbx_cfg remains uninitialized with etscfg.maxtcs=3D0, the f=
irmware rejects the configuration for 4+ port NICs, causing DCB configurati=
on commands to fail.
>
> It is not a problem for 1 or 2 port NICs where we support 8 TCs - in that=
 case FW accepts maxtc=3D0, treating it as 8.
>
> Fix it by copying local_dcbx_cfg (which was freshly initialized) into des=
ired_dcbx_cfg after the default config is applied.
>
> Fixes: b94b013eb626 ("ice: Implement DCBNL support")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at=
 Intel)

