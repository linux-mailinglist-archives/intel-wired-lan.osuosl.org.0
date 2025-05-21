Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6695CABEC33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 08:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1CDF613A6;
	Wed, 21 May 2025 06:45:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rm1QSTVv7AD2; Wed, 21 May 2025 06:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5C85613A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747809952;
	bh=jatgF0Awh3fDMjbSjm1NaeCpTBCw7W3/1dJw3+Mv3xQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=582gv+Yyq5cVGTovM81xuVtVHViw2GJlBU50KyIrB/XCcIc/wqi4aku1TUUEXVckU
	 GYnreMm/BOqCh233rwnary6srK/tz4LNgaC1526xQfMzGoivZpwPDD1n4I1dr/q/5m
	 YE3UMPA0SrktQwnBRf8wonvck7b6iZY/++CV/j9wgqmNbSMOlP6EKcrNeUND4qt7Tl
	 87Hro66vBkZ06tN1qZPDTHaC6z9ZRNBCWdSVvCUvqJjlMuI+G8sMTz11jNyDWNcGW9
	 636+M22Ze66JWG7iNoFshdzzuBP3/kb5pOUpp/dm20NRTR/TeRhisE79nJW8Gg0Hf/
	 TDlJ5xxmYKhXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5C85613A7;
	Wed, 21 May 2025 06:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1517611B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8BC7613A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CXX-b-MD7VmA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 06:45:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 27A1760FC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27A1760FC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27A1760FC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:45:49 +0000 (UTC)
X-CSE-ConnectionGUID: lQHH9hK8StmdIRcabzUBNg==
X-CSE-MsgGUID: XAqi/BzPQtejoNM5whV3jQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="60428542"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="60428542"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:45:44 -0700
X-CSE-ConnectionGUID: WY1X+uVUThqyOcZUvpmRUA==
X-CSE-MsgGUID: oLNHYzIiSlKBtzKLUCkhCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="144809760"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:45:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 23:45:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 23:45:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 23:45:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qVM17APn5ABgt50tNCM47bvhI9mKQX1aQzpTuMTos5UIwu41CRnTNy/Z2Wld9CxLeVzZV8xgvS4mnYmGztvMCzlHPeXdXwPZEmKlLHvFmhzbaaDd5A+UbORqhK8iILQOFkC038mhdTZR9uQ4t43zrggKD9uOkHlbMF6YkgS4nJW4BdG6edE2yZ9G4qBcKesk/MKuVsP+IDL8a2cDEtRNpnKfT9nkdWeCBTGfJldqe9UlYdv4FldHaWJX9wSDBWPiAdnBZPuIDOT3kdZRkSRmkzjtiH2f+uofaOIS7k8nAx+BBL9OjFNC7tXtizwtc6uoNmBvIIjqiXeex4OAO1CGSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jatgF0Awh3fDMjbSjm1NaeCpTBCw7W3/1dJw3+Mv3xQ=;
 b=CNYoqfP3Z7xIC9enT83EpDROF+2tpkGLnWKg0YP5tbbBytsTLzyPpH5tzwsomodKMLlE3NVKnKdAiUjw6dIKu/LoVQLr3dbbcHjtfQ9Xc67cC7wCl8j5iniR3YyJfG8UMbi58Cq+91K4JUahbTj6+qeWmDmjl0aAJod0bBY9kNXOvoKSKYZHG/NGlJJMRlgpcxnroajBARjtIHtbbXP+0kRLc19DSj6Pcr1Ox3SsEgO4coBmsKlgLbSum9kmYoNS3WYaUbUCScUA41MZC3MXY0ai7RnUH4Gnpu/VnA5JGgDgzLWv+6iL5nV4/suovYyiP5ky7GaZMDdU5tsQ0f56yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4529.namprd11.prod.outlook.com (2603:10b6:5:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 06:44:53 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 06:44:53 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 1/8] ice, libie: move generic
 adminq descriptors to lib
Thread-Index: AQHbtfivGeOEUZKuFkOXgLH0jI4nXbPcxXSA
Date: Wed, 21 May 2025 06:44:53 +0000
Message-ID: <IA1PR11MB62419AD24802CA4CF0A2FA548B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4529:EE_
x-ms-office365-filtering-correlation-id: 73a86186-b434-4d0c-ef16-08dd9832fe20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rJTA6tQ3Fuw6hcuwStGV+pYFPTiY/8ZE02CZF087nQKw5I8sW7Vyma6oWPTS?=
 =?us-ascii?Q?7C8hhtT3lt9Gs9GFoyjAFWSynooic163s3Bxm/fGBkCht5AWo/zdvarkUjyd?=
 =?us-ascii?Q?51wU2KibvbdN4SlqrzbJsQP6dBV1NuFX1uHzE8NMbyjxoA4bRpMrwW3+jdJw?=
 =?us-ascii?Q?TJyR0KPmdPrWhLE1IlP6YKep7vrss/tkvNEOapS4Le8isDhp2wg1wbPeZXi7?=
 =?us-ascii?Q?Qva0nn0eNXX+r4OGzPxfdHuDGznkj6aYO09b5AxZbmItOYiE1QWENFQZJkXS?=
 =?us-ascii?Q?VAmKKPHx37J9P3anSLz6TlTFjp1HiEJo/1BIjtL2ngJBSlpkpdf32neSE26g?=
 =?us-ascii?Q?q+6iFRdiuboICtz8VhcEe1fM+JrTxymniTdmArMiYxoAJZVw2YGTPCEsaMvl?=
 =?us-ascii?Q?Q1G20iXP4+oDHtpR63+ue3xGoQOqIdw+SXqkTuR2TP5PX8impSGxRlISbeD5?=
 =?us-ascii?Q?kr1bcFrNmlAEGD1GB1o5wNjbLyKy/3fIAnpn5EAtPluG9G3rh1ooKk+GcwaA?=
 =?us-ascii?Q?WEmRgARfBufp6XCfnxYCJhg5hXAwtBL4q+GpuD20JgMLWCc6dyBWwiyE3aXb?=
 =?us-ascii?Q?sBYD2VSXIyNtsIakkRzipZQ5SeEaEu5U/z7aOmweY4kI+zYnVhbVlCO+GZ+R?=
 =?us-ascii?Q?rpq7L0xYfVX+62SOh0k04o8RqxOpSimmJqXdmYSR3y1edaaUQ8E3dfmro2mb?=
 =?us-ascii?Q?KgtoV62vGzZazYWrPC2BYylJdFkh1TbsxyEuEN814jWGzUCS56ane7/17J13?=
 =?us-ascii?Q?cFfokDsz9j9KevZPJ3OmHQdyCridP9DRz59KPinydnx1DYCxBfN7EbaG5F8g?=
 =?us-ascii?Q?/OvUETKWLThFfBFGsB+ZQE/sHmzN4DilVNg7WlxzWXl1/9P2rRIjm16RbuWr?=
 =?us-ascii?Q?VPqoACBrzJl4U/wjslstVoHZXOU9HSNM4rcHPY7jHzj8Ttd7AeV+vrlxu+6Q?=
 =?us-ascii?Q?hwU+Aniuj6EMzVhB4PzbV8S5tjwU6+XmMXcuQ/lRoTbes5+rK6c2EE2w1kqU?=
 =?us-ascii?Q?a1O8GiDaYWVz7yAGA5wcVBTqQLhrMb5tRWMC9aYqkpOEDvCsF2bAEni1iapL?=
 =?us-ascii?Q?CC6oAs4/8djftna6HUuWCi8KGfWPlTX5LzCkPZTVs2SzoGbhcl1sBHs0Kbtr?=
 =?us-ascii?Q?8izAe6nrztnNVAzEwYHRSERANxpOEdzVz8MD5Y5hzWlTZk7dHBMWQ1CDto4G?=
 =?us-ascii?Q?7r0st0mDX73f5uXWAC5McRcrruic07LSAgTvsUqar2PqSngIj/mFn2K24rjD?=
 =?us-ascii?Q?0DG9FqsY8XkMdZVagGRPu6lmWM/wB1AuncP0fsEQm7nloRCdtO40ZYA8c90e?=
 =?us-ascii?Q?qSKx/+XxZjqe0Tf5ks1t32U9i5RuDJ4v7d4Xe7QqX3jhBgKk9YSKc+rOwFgt?=
 =?us-ascii?Q?b7nGtEo6iVLQcBTMYf1MDHdGQr+RsmQbVEEnLco9unMwGnFYBw2BlwnXJtYY?=
 =?us-ascii?Q?ETnU4Hw0Eg7VAeQE5m8D3251hgykzJWrlwgND/iTN6WYtkKTV198fXdhTV1F?=
 =?us-ascii?Q?R/UBoC+4XWtFGAw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0ZtH5l4sdHwnMNN+NRC5uur+VjIRVI/OvQf5etNwklvaVtdb62LBE6Qgwoem?=
 =?us-ascii?Q?2aINyRFWr+p3HmKa0gGUERrJqDetjEP+1XLIcJCGWjLAXoZ9UtZyACXGjysQ?=
 =?us-ascii?Q?u65AvvqCCzJuTLmtTmJpftH9eOXLrd4+G6pSjeUPyKEzsXY8NBvnjgt5EPu0?=
 =?us-ascii?Q?u8GrIjiEvX1YzuFsobm7FpF2sQ3TEHJjAam7lt9gW6Ry73OU8H5AIb5cOywH?=
 =?us-ascii?Q?6UFe05+cawFpaBBEZC7mXaOiT545rEarFXRh8L/O3XY4SEkFQm2OD2sWxZzR?=
 =?us-ascii?Q?9HNkgY8srdvkBtSvja26VHtFxjl8k3QJo5B5P2LsVyRLbDNAUOVzwfF026SV?=
 =?us-ascii?Q?RG56QFxX9AlgUqHf1wscb75e70TtlEzy9G8865q2++3QN3Aa6bgCY4CMyocJ?=
 =?us-ascii?Q?/dLbEAm0yyk2vEMtwZ3107Nn420A3wCSqw+WuDgLMOx9B3RbhmuJNoe5/SSc?=
 =?us-ascii?Q?bhfyauX8JX6CHePMm9EqLXOXq6y1KcHOm4LG/hQGtIskvvTrtHNbPwbNein2?=
 =?us-ascii?Q?I+pwagVVL0veL1ED3lVYa3jd5t2unMP7PpvhJM/BWgqiKyRc3muHj3c26S8C?=
 =?us-ascii?Q?2ekNfVK/v2OkG/aC631UepoasU8KxpcBQnWgy7FbasEs3+4vkyVlfbSUYf+T?=
 =?us-ascii?Q?26CVb07aCGaGC63KchTuS6bkXQO0InJBzVZTdVdl9rMexKl4IXLO1GD1tntq?=
 =?us-ascii?Q?L14Fm2ndp7YDBtzyKokx2m38pca+rgoiCg8Pu4WO8KMW4WUzn48hMWttxGyw?=
 =?us-ascii?Q?r0VJToSFANcayZiSDtAIcx/vT4RWYLt2KFs5aDXBLOUE6Aqjz78bvUo2Aqs1?=
 =?us-ascii?Q?u8UM1VSyPer6t+y4w6bFeqMqN3y6bEHu0lqwVpY5pzM2zrv+xUDpO+QBbqnH?=
 =?us-ascii?Q?z1n7OlQbyDNgy7Cl/bc/zBxCWcqkdGyEaRy2wZIKSm+vz8W5N+qXB3T+/BO6?=
 =?us-ascii?Q?g7AqL4m9fjaQxOgj+HvAq2s5b9E5tY9dNZn6RKWPf/aBc/FYjiNeAXiPFANw?=
 =?us-ascii?Q?syp2CCYriu6CDfv3fh8NgmStgw4zeLXBKQg6e9EnZd2B19Q0ylB/GdKyEQ5o?=
 =?us-ascii?Q?QIqSjoei/eUJp4eDiWSKhTVjEZPQLusowqJ/QuVQHt0RdpnS9bVjo0j28Ytt?=
 =?us-ascii?Q?setRaOkTjp1h1ZPB+NaUSQxwzWUTKlAcQD/QpkOvg5IMT+8Jso9mT9Gt5AC7?=
 =?us-ascii?Q?UpZKFpXEO4QLoNr/LvsyOpxIAjgBuMLji+udStQ1Wfd3S+Kr7iafQHeMgYrA?=
 =?us-ascii?Q?9qUwDsi0zRC21J0VDa8t4P3YqOks4/QYFFAu/SLu1N99phsqEhbxO8m0hcy7?=
 =?us-ascii?Q?m2ql6qmyIBYnk4VQX3XuQAQJm1D3otuXfXmuFkbkCc0YqODDDiBHti9DsS1D?=
 =?us-ascii?Q?A2fbOlW9QaZjlZjMB/XuPTyjzVKuGZS9xHSb/Yo6i7FmKB3GlOJbntrUJ13N?=
 =?us-ascii?Q?gq39NzaFESjG+zxLw1fXxVRvb4W5bn8ChWI7odrVf4yFAM/dr45MkMdkYslG?=
 =?us-ascii?Q?AP5JE38/FMtuR7w15+7MAlJppPfalHpPNdaHjOQ2K5VetgE62zVRJ4METwc7?=
 =?us-ascii?Q?rRpUe/kPtApUfQMGQz7d+cIfMKGnk9WBNT/nlo90?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a86186-b434-4d0c-ef16-08dd9832fe20
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 06:44:53.5760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yjz7ld2XtSTHzZwNHKb+kfH9KhosXgsdJbTyxW94t92Nn6F2RgLjp3NIve6oGXJGvTpvK8iZNL83LfKwCY0AIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747809950; x=1779345950;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kC4al/M0rtU3PT2P72wdqcbHixcPDlX4Y/Vlz733RZ0=;
 b=JCBtj+s+mSp6aMn4xjOXOJGEavhcsbXvLjXjO7P8I76xD41/ZCa1bM/j
 tc0TNtX+N2pEK4lUxSnvRYwVmGkk08ebpU893Hj+9TrX7yGKpM1Z+EGxO
 t7VbtUlyseRRt0C3vNHaNrx+n80l589SQhAWdk4vQgeMd8o5FhAVAATCH
 jqmqMy43wGSa+VFRaiYZRQAmjzB2A8GOcf6xlRkUGJ+cHyZEjAnt3IPnf
 FDedumUuJ/FgCbV1L9jjNFZaOtb4MifheLGZYLqEhvrIkUc/NLPizu03Z
 uFeXlLI5KkOJzBTiyXUCzRKbGIj663xlUwIbtY4ZNhmdx95FLF+nqLLTb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JCBtj+s+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/8] ice,
 libie: move generic adminq descriptors to lib
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 25 April 2025 11:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel=
.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Pio=
tr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Zaremba, Lar=
ysa <larysa.zaremba@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.c=
om>
> Subject: [Intel-wired-lan] [iwl-next v3 1/8] ice, libie: move generic adm=
inq descriptors to lib
>
> The descriptor structure is the same in ice, ixgbe and i40e. Move it to
common libie header to use it across different driver.
>
> Leave device specific adminq commands in separate folders. This lead to
a change that need to be done in filling/getting descriptor:
> - previous: struct specific_desc *cmd;
	    cmd =3D &desc.params.specific_desc;
> - now: struct specific_desc *cmd;
       cmd =3D libie_aq_raw(&desc);
>
> Do this changes across the driver to allow clean build. The casting only
have to be done in case of specific descriptors, for generic one union
can still be used.
>
> Changes beside code moving:
> - change ICE_ prefix to LIBIE_ prefix (ice_ and libie_ too)
> - remove shift variables not otherwise needed (in libie_aq_flags)
> - fill/get descriptor data based on desc.params.raw whenever the
  descriptor isn't defined in libie
> - move defines from the libie_aq_sth structure outside
> - add libie_aq_raw helper and use it instead of explicit casting
>
> Reviewed by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h          |   2 +-
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 270 +-----------
> drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
> drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
> include/linux/net/intel/libie/adminq.h        | 272 ++++++++++++
> .../net/ethernet/intel/ice/devlink/health.c   |   4 +-
> drivers/net/ethernet/intel/ice/ice_common.c   | 390 +++++++++---------
> drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +--
> drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
> drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +--
> .../net/ethernet/intel/ice/ice_fw_update.c    |  24 +-
> drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
> drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
> drivers/net/ethernet/intel/ice/ice_lib.c      |   6 +-
> drivers/net/ethernet/intel/ice/ice_main.c     |  34 +-
> drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
> drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
> drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +--
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
> .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
> 24 files changed, 673 insertions(+), 650 deletions(-)
> create mode 100644 include/linux/net/intel/libie/adminq.h
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
