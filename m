Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E76ABBBF2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 13:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A31E67131F;
	Mon, 19 May 2025 11:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MjpcidN0JHDE; Mon, 19 May 2025 11:07:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC7D6615C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747652825;
	bh=WPcpLGe6NZnJ5WTcF2K6W9jFrJTYYqPoyZwOyD7KnZY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mLWbrrzfdHNU7V9SbmVhE1FZiJ6XWS41+dNjlD47wfkJJzTSVy0p3alfDqqn8DNht
	 fLCcwTS/JySZZrTyN169ZnaD44ODkfQAOnjaktmLeQSD6mvgmYm5XrV50/w3YqxtWg
	 wa6syWeFtjcTXTRtATNdgcGkJrLjBrpPQG9EKkuYmb+BrRX3aywbTmfDqOqxH2Kt5f
	 KSM+YARdCdoB3ZeodDi/aiqiZmggliAiMBP8/wstp5KVIbRLJkUdnpACKVV/FHce/5
	 42zsP9xJ/1lajVKtNQUKbuf4kWF20tHTrVWZzG9cUShCQJ6+opsJWDG/wCGg2Tt0je
	 tVMewNPoxgtbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC7D6615C2;
	Mon, 19 May 2025 11:07:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A366CD4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FB9E849FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6WkCB2wsq9xh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 11:05:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8106A849F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8106A849F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8106A849F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:15 +0000 (UTC)
X-CSE-ConnectionGUID: HoGNjS3/Q+S4CTvvwgmYEA==
X-CSE-MsgGUID: QGfaPbyoQQOXf3AH2UuUMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="37165215"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="37165215"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:15 -0700
X-CSE-ConnectionGUID: SHpR/KkHTx+1R3ue3T7Slw==
X-CSE-MsgGUID: HoJNYMlGTuCUChTWM7UfEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="170372382"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 04:05:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 04:05:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 04:05:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xQp8QSpp4d6Jm+j1xuJvg+mas0SvTbt6+0VgotamgyGdIlpXiTjRT11bcI+4UjWNptaJ82GH1PInLW9OMhWVoih/uL01FBTleNqHxdrIVaZzmgm+RxekiY3NtuG5NJoYcxVOF4jzYATcRBD5knfYCJZH6wwHvxu6Xukf0C7EF762UwB1hay9VOVn0kq7q+SmjrAm6ixoWeVsWuA6hFKAwsImWhF8v3rUMH5tbmqgcTuagulLD17Z+PfMgc49j+BhfFU8oAQ8o4/qgTeOCDqQIGUJauCgOsFmswBsI2o2kk+POqMIYKFo/mur3jquQbpLgysZAmOm8HVjQRhKG2YCBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPcpLGe6NZnJ5WTcF2K6W9jFrJTYYqPoyZwOyD7KnZY=;
 b=x7wLXMSDwjmoCE1BIiXWYvU/UZFKm0UKbLx0ozMr0At2SEFgCwY8iFYDMARmCbBMWbHgkF87GWsLLpcXj2kE/1zdwZMopuGFnH13RaGl+pn1EPHc16WhzTZnidB4Ku2U/iYLt3LQeQmiuY/fejDtTMEI/lKxiVmpi9utg/AiIcXrKoYSODD1lFsT7J5vxf07iYr0uwurvjIqFoAbz3ZywKAqmlCk65ilf0Hl1UeJbwsV3yEfB+ntaTaw+cyVg+ierSQ2ZIGfkSmp9H1BU4vZWGnNKktJy1sXTZLmCzHM0E4X+XOl927xSHKa9M4x4nX6J29Lm/B6+BTDMX9SowwE6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 11:04:51 +0000
Received: from BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4]) by BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4%2]) with mapi id 15.20.8722.031; Mon, 19 May 2025
 11:04:50 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: fix rebuilding the
 Tx scheduler tree for large queue counts
Thread-Index: AQHbw/Wq+yReWTAvHUyolrV8hGlRH7PZusGAgAAYLLA=
Date: Mon, 19 May 2025 11:04:50 +0000
Message-ID: <BYAPR11MB35426738ADF633BFF4300BCCF99CA@BYAPR11MB3542.namprd11.prod.outlook.com>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-4-michal.kubiak@intel.com>
 <PH0PR11MB5013BA5E1BAFE284EC81B006969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013BA5E1BAFE284EC81B006969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3542:EE_|PH7PR11MB8551:EE_
x-ms-office365-filtering-correlation-id: 36f24cd9-b510-4a80-b48b-08dd96c4f9eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pIMtKBNSUpAEhwdcy7enS4qCpa3Jr4XX+P4Ywn824aIwBG1xNZodYT1J78ZO?=
 =?us-ascii?Q?Jq9GjZKZQ41Khg2N7bAUmPc3D2vBEXpyDIqv4A8F65LPJ3VPDWplFYDtFUDV?=
 =?us-ascii?Q?x4MFv3hPZwy+sOgvtCEdN1Ld3e9YoOiBuoRDjHk+hvl9m2SxCBtPOWyj/ioY?=
 =?us-ascii?Q?l3YMXGMsi5GqJ2Df73zaX2aTkk8Uvr0+W/iUP3AMnvMnPNmLX54YU3/5oO6Z?=
 =?us-ascii?Q?fYN8T5/z4qtROHm8v/zleW6URHVUTkKV0vXft5kJIU8jOoH3wcqmz8nlWk7k?=
 =?us-ascii?Q?Ler42lewZPmAvH9b36tluWcm4/3hikGYQUJrVf2BFXeJipC4LrvlpQlmTGGr?=
 =?us-ascii?Q?5F7V+2R5U7RIyaevBvzgleihrf1MKFjOA8NAhHIF9OskNbVoRJut3AdPGMFS?=
 =?us-ascii?Q?JZ+IaIKg7m1E5fxY4S5HEopV3MIwCwgt/k7WoEQY9OvCiIAFTW+B84Xq+AKv?=
 =?us-ascii?Q?y30j2U0baKLeyq0JAx5HSSoVPpV3MA/cq6+4uj0kKweaKV35DYJxkGrRGB1D?=
 =?us-ascii?Q?YhAT6E1ruewjHZ55oFiSLHEAbSkTQuUI2MCuT86k0bEvcezY+2wqU6Uy8e37?=
 =?us-ascii?Q?gFRcqk/gCOXrg0ssbY69t7+SZMQqy3O7faSZGR31qP7ec6CM/eJNNzz3UHzv?=
 =?us-ascii?Q?D/SKpGcUze0oAEGN/AcQNAZ7hK21Yt4wLm0K/IuXof1IaMxj5GLX8xb5Ma0Q?=
 =?us-ascii?Q?gI0SRynK8/7W0+cck5eozQKW+9AN+VgFExh2RiVvwbwWSZBwFgM+a0JM8mCd?=
 =?us-ascii?Q?mQIOWiUbpFz8wXV0fBM80yPZJsI8h1DRMpWbHCw7dQ7uufql9LxZARlGKMvA?=
 =?us-ascii?Q?W+hT0mT6YOTw6+YJH7Y32L2J7MFPEqwzKKPRFfUee3sBTAAQLcTRU/AHzyhh?=
 =?us-ascii?Q?2d0WsgvcKM52U1+rvKI1mavAO5l+MWCXbO2kmlt3tga8XY3kVnaMpB7CvrpZ?=
 =?us-ascii?Q?YO+q+TZKwLkFR0uhRKO3h/DXHwoqLj/Xhe2quEWlQ/jyFsoYE4PiXOPP+955?=
 =?us-ascii?Q?fUlqANBaMo0sZxXPAz13eDqhIGHd6nlnLHPahbuH7GS/rdVDZDBnS94VkVhR?=
 =?us-ascii?Q?ecZVz2HZsTUcPdGQ8XPaIgaL9h1BJRXJ0ED95qhCBQa8gDa9+URRBxQZXW0m?=
 =?us-ascii?Q?Z08hrkB8YL8vPpNpiuR+fjKrswXMJfYR+DKIdvJum72BHtbavFcl3JUMJD4u?=
 =?us-ascii?Q?sFkeA+qLt2yhmnlGC96Q4iEvI0HOPKYwaUn221QhZWsBYl/rc7QJb9/z3Uf9?=
 =?us-ascii?Q?rtuHahMD4PJ3rKrpxnWqnm+4IwA5ZzFk3gvg0kyeBvyxTf+d0NpfUwOFcS6d?=
 =?us-ascii?Q?0L0ULNf6AzrEWE4nzbOo6JQTRNYPEHAdAGxsFpW/vsC5mKaRsWbrH8/X/ih+?=
 =?us-ascii?Q?0C97jZrb3GdvxtDyNZZryVGZq7V54lpnEH7Ko/dpZFmju+zd7pTAMStxpBbx?=
 =?us-ascii?Q?uf98S6nq6QTxIwE5lQ93Ppbr/AZLc2jXyTKfDY/6PI0288ZFYXslEg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3542.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dwGINWr714Ef+0/gkdzlWarL0Hd6Pioj1jhzjZwQe3t4rM5BIAZqSK6A5Ls8?=
 =?us-ascii?Q?McUCyMsH7nLaO/Dqg0Orougmm8TBBN6a2gRtdPEGWSwjY26JiwmTHbFQKPP+?=
 =?us-ascii?Q?6PxgVJmTu8sfLCcjKX5t+IHJTXKYP8OYzuq72uA4WmNEic5wSGXA3osqR19d?=
 =?us-ascii?Q?a/r4Ik4m3jyyqvkUivjFjABwHxuwgo8ohl83vdaGw2wXwHHLWImCcFUbSHBQ?=
 =?us-ascii?Q?Ofs39uP8X1/kpN3We7RfGoItC9KULhXdVkxh4B+XjHdOxSH1p0wW5JorJziD?=
 =?us-ascii?Q?XOKRphx+hiSPZPl9Vlnpz0pQVClAwNHGbgl6L+SJbrPZTpeqK/oE7uJRT2nC?=
 =?us-ascii?Q?6AY4GiKVQNEzl3kZffK0nvf17UcNZEbPwp4qznUo4d5UWIAiFuX40e3EMs8x?=
 =?us-ascii?Q?y3L/zqNIJqpATKGBXai4vy/IHKiM7EiK4gp/zl65aR4zRS9ccWUeo8c9ZRjn?=
 =?us-ascii?Q?anCsfmm3+tOYEFvc++GwAdA8dHvElSiKK0rjPfKNx+J0VUakZbtAdS9PFZ52?=
 =?us-ascii?Q?aBnPdSNKtMwef6w69e4q1KGwWggILRdbe/Uy+kRrxr7EKZOWNhmbkKR/EWC3?=
 =?us-ascii?Q?wtN6GlIwXesjvGLN/16PIkYkC8FboHDjsE5mNKb/ZTcSzZg1L80Q+kwOQrBs?=
 =?us-ascii?Q?QM/QgjEQsA4MI0Hqea/yyX69IGl1twH1oRA3XyRsvzbsLOgJrPY595OPR+GW?=
 =?us-ascii?Q?waJwArV+H9GHstCZJztmF44W1bwgBFMfypk9IJ3R+TFJ6++RmaYU8F9a5d6O?=
 =?us-ascii?Q?XMMcgWP5+lKfea7O3mHZXwEc3DiFOZoJHM7sP7OPOSF3M2vPpH7xNg7+p1z5?=
 =?us-ascii?Q?0ftMVnyKpyhc5D2H0ndbpYshFMfd7Yioj5WkeO5ScQrTGGqYJyifaSXYxzKZ?=
 =?us-ascii?Q?ksTxkgizqG1v7oGB+K2HdZSVjr/s5DLQGk8jmoJr2+w53Ex5RJSOdCIKZtf4?=
 =?us-ascii?Q?rRBCsyqwyIUqoUU6RE/9QlmTcEXl9q0dpnH/H5k9UG6azqLuUCmYb3KnOt78?=
 =?us-ascii?Q?4G1Mi/OyJaRWVRr1nRHVuSUcTGbYAT56m5Yqq1PLnFLqlCSVkYlYCpay+vR0?=
 =?us-ascii?Q?/HwKiF9moUgv/S4ibY0uDl6HkHexkyn8y1XyECX1QJIuG2QO6gBIyb8PEJ7O?=
 =?us-ascii?Q?BK3t8pLxsoOHXH5tmTAZm8k5q+dxOr32l+GjweIv4Hg+7V0EKqp1PgSoDGVg?=
 =?us-ascii?Q?j8GIj4ZGci8RAtVRRqivGY1BPZJI6bCGPs4LTqmOsONcDHVm78b6u3DNR2sS?=
 =?us-ascii?Q?Qws1nm9ipJqELl9eGewQIGpE6ebV9rSPhbR8Ubl5gG+RiRSEy4dOrQPwAKi5?=
 =?us-ascii?Q?9I1jR2FXsWcyWby3M7vF3mpsf2rrZlCcVN8/3FI0+5seGfhRQjSMDWXgSlaq?=
 =?us-ascii?Q?9mvWXSrOfMCS4r0Q35p+koZVQFKoGO14mqC5oVhbLQTSIkghv6T97v10XSmX?=
 =?us-ascii?Q?Ig5L6rMkSHwuc1SO5BWwnNZodfmg5Z4dyd6njLf8dwR3PzfCd+okS4WCzhoT?=
 =?us-ascii?Q?bffA/zK0zIwkqX8TAiDCkplUqUm2GgGMyt4WyfeFlClXnUwkk4jNjhjPEEfN?=
 =?us-ascii?Q?D1SMac59iLWWi+TxYHMZTCO8zrmDc/7lY+sMcE6dQeW7gwg0o8wyWAOkvt1O?=
 =?us-ascii?Q?pRddUxsEUUL1UKDl9OpfQl4fbXC0By7tfljyVm+R1ThtDGJfJDLJbRxnCt7k?=
 =?us-ascii?Q?K6BxTg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3542.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f24cd9-b510-4a80-b48b-08dd96c4f9eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 11:04:50.7146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KKFd1cyny3Dc4ed0qb0Xhe3/gMefU+8c30VLgUR1zfpSA/gRHeShVqGQ9KXUl2u4QP6M/PQgONNzXcZz33bZlM0EKMCdONX8baez0+q48rU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747652715; x=1779188715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sm8sbbPv3ACvAOTYA4ceM95Rj1Ng7Du00towKuhsL/A=;
 b=fv767sT9x2uXQpm0eDfsnNWN8rINtOWQKYcSS0HQeAuw+KOxhulebzKW
 Xjzxvi01mdPwg4YrhetbbaHBVYO8wN0TX3lIoHF4v/0UihaKQC6Sq42Vv
 1a7JwOFM2XWQhqyXDdAyYpkcKpaATuwGsfmIrXEySUZ3kRi0qpo6XiF9l
 K9p4QyN1rS69GpxNwGPYVmsz/FctI8Q6hVZCwLQwuMSXTvASt2O/UuuDj
 wFuAAEwgE1yO5+E+3KTqRNUC4MQFdZZoFU/NtpNFog1f3Z1K7df5jRVfs
 RAloQdQYX7l6hbJMpJy7+E85k/luqfajD35grP6Z05dkb2A5IDy8Njt1o
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fv767sT9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: fix rebuilding
 the Tx scheduler tree for large queue counts
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Kubiak
> Sent: Tuesday, May 13, 2025 4:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; Brandeburg, Jesse
> <jbrandeburg@cloudflare.com>; netdev@vger.kernel.org; Kubiak, Michal
> <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: fix rebuilding the=
 Tx
> scheduler tree for large queue counts
>=20
> The current implementation of the Tx scheduler allows the tree to be rebu=
ilt
> as the user adds more Tx queues to the VSI. In such a case, additional ch=
ild
> nodes are added to the tree to support the new number of queues.
> Unfortunately, this algorithm does not take into account that the limit o=
f the
> VSI support node may be exceeded, so an additional node in the VSI layer
> may be required to handle all the requested queues.
>=20
> Such a scenario occurs when adding XDP Tx queues on machines with many
> CPUs. Although the driver still respects the queue limit returned by the =
FW,
> the Tx scheduler was unable to add those queues to its tree and returned =
one
> of the errors below.
>=20
> Such a scenario occurs when adding XDP Tx queues on machines with many
> CPUs (e.g. at least 321 CPUs, if there is already 128 Tx/Rx queue pairs).
> Although the driver still respects the queue limit returned by the FW, th=
e Tx
> scheduler was unable to add those queues to its tree and returned the
> following errors:
>=20
>      Failed VSI LAN queue config for XDP, error: -5
> or:
>      Failed to set LAN Tx queue context, error: -22
>=20
> Fix this problem by extending the tree rebuild algorithm to check if the
> current VSI node can support the requested number of queues. If it cannot=
,
> create as many additional VSI support nodes as necessary to handle all th=
e
> required Tx queues. Symmetrically, adjust the VSI node removal algorithm =
to
> remove all nodes associated with the given VSI.
> Also, make the search for the next free VSI node more restrictive. That i=
s, add
> queue group nodes only to the VSI support nodes that have a matching VSI
> handle.
> Finally, fix the comment describing the tree update algorithm to better r=
eflect
> the current scenario.
>=20
> Fixes: b0153fdd7e8a ("ice: update VSI config dynamically")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 170 +++++++++++++++++----
>  1 file changed, 142 insertions(+), 28 deletions(-)
>=20

Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com> (A Contingent Wor=
ker at Intel)
