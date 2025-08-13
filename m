Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1732B246AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:09:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 672E1607E8;
	Wed, 13 Aug 2025 10:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y6XeAYqrjZHA; Wed, 13 Aug 2025 10:09:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA5FC607EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755079790;
	bh=cSBnc7+tks79ZF/NkprhvNRxJrcGctUxEi0FKi+cAhU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pG2/HPOAZOnOUxIHGnLvaNVyabg7nSdKbEuSRl3bEj8L0RY/A2rrJcXZa1467CGEy
	 n2Q81rjOzchD70KyFfSKmndls0yRGxO1q3whz2CE7PwyeGsAowCY7KQad/IbxHwGLR
	 wnPj/v3dI5toQSUJgXI9aa3IKztxHmuyDB/8+T5ggAf8mMMZ06yK47ZWt0i6ddiFiH
	 gRDkWsYEB8/0G9QotedTbHSx3s2XROzSJ40r9I9JBn+l1UbIygeRWoT9yHqu3mbCQA
	 fiCUdBvI04l9zQVXbSXWLouD+EIZzc6o8dSgegC2VTvyaqE5+qIoG4Su0LH7xbXqN0
	 Cp3r0hVbkJSAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA5FC607EC;
	Wed, 13 Aug 2025 10:09:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB3BF938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9140840490
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id es4_gv7Q3I1X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:09:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB6D740843
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB6D740843
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB6D740843
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:09:47 +0000 (UTC)
X-CSE-ConnectionGUID: Fn/FosFlR6ejS9HW38IYnQ==
X-CSE-MsgGUID: TqR6UL8pSEergIw+cf05Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57432759"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57432759"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:09:47 -0700
X-CSE-ConnectionGUID: wFI34piwT2GDc34ayyOwgA==
X-CSE-MsgGUID: YaNYw0VcRFuoZlcYtxfluw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="197290726"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:09:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 03:09:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 03:09:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 13 Aug 2025 03:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EZGux0xfl3lm2vuzJevrzUbp1LQ1zR+NUUkaQBxJBALd5BAgjl/fPckyP027jxO40h+ttrdj898GHMbdmKmtE+4+ZOdbvQbSEy7Hviciux1y4q3IV9NP2Uz2CxhoFHEuOcM+gPht8gjL4qubT07RvsWPNUFWmu2bIwGj08TntX4nr6UWBFOIer7ozVKvgSVx/kBtAnjRaX6vlWXAStf2VCb2qoUv5gZ0Lh/gGQYo5qXHS18ntFG3O+N47OZoh2DkYkebuJ4xh2roVdtqHq+C6am1DTTJrbP391ucLPDUSHxRcDeX1qi0bkDrSPlkNm/e3GkuhZXPFU9y3yzIr+KkBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cSBnc7+tks79ZF/NkprhvNRxJrcGctUxEi0FKi+cAhU=;
 b=O1le7Fc1+XPdvkpg8DnnS+fdabf/QAxNgepC82qJXI4mHsX/yP9yfTcCGv5aVtxrkyHTnFh/Q0DbZiSRV69wVUg01xNBTx/+2dJgowW3bHL3Y5FysxnkwhkHei+yPg0usQHROpahy85whw86r/R67yXmVKqZy3UYBiO5XkRf6c7nI8Ug6nyaSGLyYfwp7qQ+9fX4soRsvKJhHgv0/Pehzt0inb7uMuN5g52kzzolhHPZhZNuSCOgvyCw+ywcNFivgDWK3IACO+Lxm7V3lh8h9qNn4WihXlZs0GvGvfL3Z+FKPrmBEzl+8UkJvz0ijMMXZFzB7OfrwmKdxzppvH8/cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7524.namprd11.prod.outlook.com (2603:10b6:510:281::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Wed, 13 Aug
 2025 10:09:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 10:09:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
Thread-Index: AQHcC8fKoCcWfC0AmEKv7rWLZXKE5LRgXNdg
Date: Wed, 13 Aug 2025 10:09:43 +0000
Message-ID: <IA3PR11MB89864D7323B7E3662CAD765AE52AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250812202025.3610612-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250812202025.3610612-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7524:EE_
x-ms-office365-filtering-correlation-id: 24fafd4a-a6c3-43f2-9781-08ddda51860d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2M4fKVxxpeuLwmrnNg9OwEoDhvjdBX4v1YHt3kWXFNWLq6KEq6ABjQPOZJkY?=
 =?us-ascii?Q?lfp7cv0SjmkwziNkDQFtv5dydY9nktPLP8XVU7GQX+yxUTyaGJDUEWYcocZI?=
 =?us-ascii?Q?e+RZR8HTRnaGmvH+iIuF+TKXTjjTVKpFAQLIUae62gqTr6WjcRgPI4m3ioLk?=
 =?us-ascii?Q?dqPlMJJtdTTyMaMPCw/BktWBROcFMjhmhWs8cpgQRsGN6Wem91/i4fXOywY+?=
 =?us-ascii?Q?7sKRSy/SAYmpnOcsq17ngLX0MlVT82X+T9SlWmuiZFJpc70GPILvpaEmp/AI?=
 =?us-ascii?Q?qNkFgtEaBNadHmKwFhYjyJaDfdn3cN+bVRk088C4t+PPijrsVn/3ubBWEuN2?=
 =?us-ascii?Q?6hoRGdHZke6wI/JUZUCLodt27FwDVJpfJ7m0CAnaHRTINK4DHUJ6nt+oZ5nr?=
 =?us-ascii?Q?SgKT3kQev5/krWhZuST8jLu9vUPdXTocLFXO1NY2wVo5C8dZ4D9dBFjWGNeU?=
 =?us-ascii?Q?baxF0hl6fMjLyJDoDfXgK6Nxb5MahwuPckm/ei9EinsKub9wi9QOS4lObs8g?=
 =?us-ascii?Q?DbpvWF4pITwTLOp8rF3393mr/sXhWHmR8r6yMRdntpsZtSnBNy5IA3eUZzMo?=
 =?us-ascii?Q?lXMxztnNS75DWrEeZbMHen9+VAUDDSZFjUCtqXlTeOtstkTTorUzz7dudg19?=
 =?us-ascii?Q?lli27AJTFwX1MlfxIUGtNSFCIbzfR7zoycGTzA0FmYVcOxhTnqKbCPOLfv9w?=
 =?us-ascii?Q?YRMl9e7GRPI7Tx15qqeeceN4vOYXWR0gG52rPPr7YuwNTyQo5wDa8SLT0npw?=
 =?us-ascii?Q?CryhfdrGxlSwVDxgdqVDQgHYQWmuseRHOTlXGupHdMCpx+BroJX03p3MM9B/?=
 =?us-ascii?Q?VIc9VfEIloxYdXxNJnPc5ruU0AjxTnb0mfuFDdMKUrQ7uJtw90B/WNdCWHbu?=
 =?us-ascii?Q?+91ROAuFxi8YwnWnSIGN7iZDwtzdx/r7L5vvI8TS42qB6yBaT48hzMM2Qd60?=
 =?us-ascii?Q?TirvGlqOZOUVqm5sQ7K8pupgTRLzLhHTS9biAnpgP9cen6N8Kq7impX1ccb1?=
 =?us-ascii?Q?I+XaY0ZbAVKkGDP7wFPJ9dVS2vLRtUOIKKNnfr6/ypL7n/MPTFvYws/LAmED?=
 =?us-ascii?Q?T/lZmkKvQ5x9JR6Z9kW9nDiZTAfLMhpgFMekgsbQS9hG81N+V6OQ79ThMI5v?=
 =?us-ascii?Q?SE5NlvKP1VmZLY9F13IsyGxvNXUJUk8Er66FjxHwPhvBRD1GXapqYfEgbWoW?=
 =?us-ascii?Q?upQonlSJOLXTLcS4vbpHUgFrftzbFO9hKUkbU85YtapfAYL/5LxNR5jpqWwm?=
 =?us-ascii?Q?VYZJ04B0Xy8255ASwm33UJABnXChJI09MpbE58glz1FYbeLg3Vjsb58saidQ?=
 =?us-ascii?Q?frHMT2+Zz8TLD3bgdBGaQy3fRIsjNeBZuQxQIVL8ON7bgwrtkgx2v9HRwJX9?=
 =?us-ascii?Q?f6Z922SyviM7BmOBtfGs8vutelLj65FDpqUePyJtnN1bs3GQQfyrXIr0Nlzn?=
 =?us-ascii?Q?yoyL2eqQ9aTAu8t56gt/4qCek3p47y/4l9EhrgY1Izyw08pewUKvqnfhWuqN?=
 =?us-ascii?Q?IMEdbcG31E3ZPBo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HHBXGNPyJ4nqEfY1Qwkgc9Suxi/EO0118jrrrSMHLvkrICpYFoEQ20ZPC/Mm?=
 =?us-ascii?Q?NTM54BUSZZxhRUwCOEThfnsRdSWGnWN78Igj+6rxP1nURKvx1t+09sSvqt/g?=
 =?us-ascii?Q?nLFFx5NnDnocZSNETfQ6d2b4NHbbBITa9u5pHAU4WZtHQlM7DdnrgvLSDz6H?=
 =?us-ascii?Q?BEGbVfoUD/QRkhJrS/1lXLSz1lNMZW1Y3uOOe4I0YveQM/GOcxuLcr+jSz1c?=
 =?us-ascii?Q?s1X60a3oqljQQwyPq7bc92GTrH6gGsSAgwi2iKMDaLzRHyD3pbVzXpjNm4PF?=
 =?us-ascii?Q?tGaPU1T0CjlFwqLMqYZV26dcMbCeAtQsudYHirEW6TZot+ksuqxROnO1yLlp?=
 =?us-ascii?Q?smEc08Hjfl09ByDtTUAc8WJjGh1uRxb7WPudtUVBB0CwbpE0HS/BEfJNtSiV?=
 =?us-ascii?Q?HHyPfN0FHn8Ri8cB1bqOngsE+1YWL/oCnLwF09TF3xr+UFA6e4lQW3zec3Wg?=
 =?us-ascii?Q?lLvStR7b+FQGVBM50ri/L8i+Ovwtes7pwuKwa5DarR/MGqQPI+e3eMMfykxa?=
 =?us-ascii?Q?3O8jlKrFjMWF79UMgFAzTLLWrz3n5Ol/Z99ikaxGiaMvx4zQ5oQWlPSIQMp3?=
 =?us-ascii?Q?G3xQm4v3jA7puefll/rEbBqvnel1oalUHiNslri2tD0xFFOvxb5XJ1l59+MR?=
 =?us-ascii?Q?SLjgIy6LFj2P+pY1wod2zGG8mO8DlvQVxGbJqiCHkJO0Ex8H5AefHtNjRIMu?=
 =?us-ascii?Q?XfyvWKpU/QY7Cy7tEXZ7WT/DmcWpLlZ8GydDhu+GJQAnCeD+YaFctmZU2Vuw?=
 =?us-ascii?Q?wKa3IHzXSRZuVl878kuVo60N/XhMqbWy8DEk04FvlXhJBuk3uiTEUiDSRWhg?=
 =?us-ascii?Q?XLZ4ixdTwmhbLvKVBbGmqyLCbGFfw9yWAgsINFwuPoTCIl2J5Wlp6dnaQaX+?=
 =?us-ascii?Q?7Y1xDQw/31rQcglKBsME7pT4EgFcD0AxpJ9ayXGBg15nCLlNZIFH6PZRTp7s?=
 =?us-ascii?Q?SmTIja6CUZm5WYorqVM1p+uvMlnuZ2kKfYuw9P+NI/RRlyVEtUUjdDY4TnCK?=
 =?us-ascii?Q?iDfADqxB9SWmboGTCr6HuHhy5BahfpZqI9mw3ZtKZ9eIWG1F3AucYAolfFET?=
 =?us-ascii?Q?56bKQFPBS6n+cUGD3OeZpP1rYI2O+xFtQzCJ9jLNtpOc61lGieQAuhgbEuic?=
 =?us-ascii?Q?mGCDo2G+8FPsrCQ/0mtAp5msB04YaioYIr25CoUAI8tkvzCkgZkqQJp3cmF7?=
 =?us-ascii?Q?3bM33w/5G1/YUR9QrG/vwl80FiOhYQPFjHcAQ4X652ffbngr1lBSVF83ymI0?=
 =?us-ascii?Q?cryN8qH4nYLOFLTvTj70ChXkCYmTMO9cFG0UfyubVDeqUIQYU0e5+0vM6Tk2?=
 =?us-ascii?Q?064VC16IjXGhtS3IjiH+zlOtlI6/HzaeFrNfIudXB1lLyDuyqjdO4vK7rBwJ?=
 =?us-ascii?Q?3fCd/TYrr3u1MDjm861kQvCFN7org/5gwaX7HI/IudLHkU6PuOGD7Xy5FSNF?=
 =?us-ascii?Q?fmOhreTzXpxRe30/Oe2Xz7kbrGDz5Q2SrmlHtqJMDOj+KFjdBNakOhPtSryC?=
 =?us-ascii?Q?WcQ2KwgmI1ZkWMfzJNdzPHMz9e4pLipRuvQJe9aWhfuKSbIzrDQSEj1bmjh2?=
 =?us-ascii?Q?+hEOzZAEYl1JHv/9u5bD7EzDQELFzCW+dlshxu0l/H4Zz0uhI+2pii/Vyht+?=
 =?us-ascii?Q?eQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fafd4a-a6c3-43f2-9781-08ddda51860d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 10:09:43.2229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YfNVO/K1RLXDlhpiiVKM8adV+cvbRitf3DjFqColoHc/wJH1wj4pwGs076PBk2Tg7z0ArczPJnydy5bgAfuNzkG+FvHiii+dEcG0ghJ6ig8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7524
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755079788; x=1786615788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JE8Hh97XIeDjEat0aX3hJN/5iZVuL4q1Cl9/idL6pNw=;
 b=LMQ6fcT+77N01F/ZXgiRsykbhG/So3abHhKR39mfbe/5npB8dKgxulk8
 iJZm2A7eggZbR4RKg7cIJ9UGnSALp4Hu0zUqudN+nCldc012U5xoC04Wn
 cmnpB/f6YIQA7CqVguTDnTF1dJOktzvGpQeCWTo4q802+p/gCgveIg9NA
 Z3icA5KFntPX8KAE9NVT+hRik5wb9LcmfIvze/Ra6mjVaucjYxOG6l+gW
 k8wTRf4+u7guTw0a+giDFURHw6I1triLnsoXZnUF+mxuSZT7eNlkr8doR
 tn5kyY2X7p3P/PvcsD66C2u6thZtBWB5VcsGpxUprRuX9ptVTSbD/xKX8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LMQ6fcT+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Tuesday, August 12, 2025 10:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Olech, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next] ice: add recovery
> clock and clock 1588 control for E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL [1].
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20

...

> +
> +#define ICE_CGU_R10				0x28
> +#define ICE_CGU_R10_SYNCE_CLKO_SEL		GENMASK(8, 5)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_M1		GENMASK(13, 9)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD		BIT(14)
> +#define ICE_CGU_R10_SYNCE_DCK_RST		BIT(15)
> +#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL		GENMASK(18, 16)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_M1		GENMASK(23, 19)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD		BIT(24)
> +#define ICE_CGU_R10_SYNCE_DCK2_RST		BIT(25)
> +#define ICE_CGU_R10_SYNCE_S_REF_CLK		GENMASK(31, 27)
> +
> +#define ICE_CGU_R11				0x2C
> +#define ICE_CGU_R11_SYNCE_S_BYP_CLK		GENMASK(6, 1)
> +
> +#define ICE_CGU_BYPASS_MUX_OFFSET_E825C		3
> +
> +#define SET_PIN_STATE(_pin, _id, _condition) \
> +	((_pin)->state[_id] =3D (_condition) ? DPLL_PIN_STATE_CONNECTED
> : \
> +			       DPLL_PIN_STATE_DISCONNECTED)
Can you consider implement it as inline function instead of macro?

Alex

