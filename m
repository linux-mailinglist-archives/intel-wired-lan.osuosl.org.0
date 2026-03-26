Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yD0TAAdCxWkU8wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 15:26:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22849336BD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 15:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5CDE8133A;
	Thu, 26 Mar 2026 14:26:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZWYxyxoGaXJU; Thu, 26 Mar 2026 14:26:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 225B78135A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774535171;
	bh=+Uebr0mcMyY7Y7BrMHHqSZypvojpJuFNb/DQ6hwSs84=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YzwJhv84LAx1Ml7ysrv5K9Y17FulUV4nFrFBSqg+GAzQRMSWB6ThGidK4QEGUvdGW
	 OHswGXZUaltlfxg8biR2RKPPFp4sZz8PzqTFwjOM0QUE+vV4s2SpnQCg0Nso83wV/w
	 7kaMT9WQhfnC7uYWKDrDBMqFgbdHuvH+PPumptKmAbMPiD5fl7dY5fGekvJPFsfNUv
	 AIk/Us2ejTe4LPFaItO/NXQhYlp1wGq2sLuMccdAuI1caDxEi/W6sjm6dWGdosOQG6
	 GICrez9IN8ebNcoZxkjxocHPTfjUp1k1qBGOk2nMEs0YHllW/69Et3fHwiSWi/3Wl4
	 q1yUzUqNJMbig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 225B78135A;
	Thu, 26 Mar 2026 14:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D86F6F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA133407AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWI1Y01ck6zd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 14:26:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA3C04076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA3C04076C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA3C04076C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:26:08 +0000 (UTC)
X-CSE-ConnectionGUID: 8Nw9+BNuS0KXeb1PcR8rzA==
X-CSE-MsgGUID: SuFIetWyQIOBrSjqC5S11w==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75558053"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75558053"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 07:26:08 -0700
X-CSE-ConnectionGUID: qn82cY0MRT+orLGW+ZRBMQ==
X-CSE-MsgGUID: k4GXLkYkTOidT0B2J0MiFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="221704693"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 07:26:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 07:26:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 07:26:07 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 07:26:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PsKpgy1BUNkJKuCdBbl+GHwm59QwDneoj61PuWb6oRMcgwFIwz5Uf7yV8YEZeoUPFZ3qXgIZ73FHAtUB+xHQWIGwkWXBu0eyJZeyOpGag2+EOd20L+wh0MQ96LVi3MMdJSlZDMYECASxFqxAsShOQiyr7oMd3SZ2cV0u4EPDiHxXC8O4htqQYyerlBwh8o9BPt4Q+/mjGbHpoXIIMZRbnfO/XC7UKDpW+Q7dBd13XDa1Dtfng1b7E5Z9cLR0EoLFo0uSnV1N6NkPNrtm/OOq1CabVikW2Z+UZe2HxAD27meZVwJ232/ftExLQU0ayLfgbferJoeVQa7TR9Bzg04PYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Uebr0mcMyY7Y7BrMHHqSZypvojpJuFNb/DQ6hwSs84=;
 b=Z6PbUyFdh6O48x8Js0kIGoK+WVY35nGKcZr/AOCuN4mpHWbettebaV5EC/1FlYHF5RP2Ze9nY4rKfH9xlXEozb5fChSUseDYTPrag8+bi7QmpJjKVJwhQAucfOwyqmekzg3IKKTgbpMpPH+rAep9MVHzhmrEpqZ6MEUfrh+Y4FLNGqWurCAo5Tz3kkkfDS7hOnXHz7BI617EK3BWoY/pxolrFwpNe+2Jbp40UqFaurpSyIGXc+RoKer8pNysWM3TjQiEW7/OXSfUUR/Lr3WmdZvJ+GkAmjisBH4DGqF78zxnfK4x5rVRLQY/iXhUg1EX8na0RfK1di7DyWvkv8hqLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB8480.namprd11.prod.outlook.com (2603:10b6:510:2fe::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Thu, 26 Mar
 2026 14:26:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 14:26:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Bart Van Assche
 <bvanassche@acm.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Wieczerzycka, Katarzyna" <katarzyna.wieczerzycka@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: call mutex_lock() before
 mutex_unlock() in ice_dcb_rebuild()
Thread-Index: AQHcuCcv3rBsljLgoEeIQuQyrG1k5bW3NAaAgAm0OrA=
Date: Thu, 26 Mar 2026 14:26:04 +0000
Message-ID: <IA3PR11MB89861F5F5BA0800ED2EF68F7E556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320050522.422355-1-aleksandr.loktionov@intel.com>
 <4b1927b5-2a3c-4465-9181-2e8885afd122@intel.com>
In-Reply-To: <4b1927b5-2a3c-4465-9181-2e8885afd122@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB8480:EE_
x-ms-office365-filtering-correlation-id: 2fc728e7-711f-41bd-2361-08de8b439d34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Mt2Q87rFwEn3dgf7spR7J8faWlelBPTLCk9qsoRoMzHf3pjo5xsHKG8s63JlVcokY9CBbF80loTxtAEACG+WhzKdiFuVIq/mOEUWDXIhXER6aA5oXZZE/3S9Hkg7/ExsSZmq3DOkouoxu5ec7wmYhadk+zNS8HcJWUMR9yOlYSOxP1yeHbBQoXVlQNNBINt8iZz547Mzm7P4jntN3R/jOlIpgu/Rrjmm2Paa31Z0EDCWkgI567IkJUvc0nwfn0g1aVxoo35JqNrvCPvgla7OYxrzkgsH0xFbIW8pr0Qxu5Y6y57koQGiR2itmqE4QA4N6gg/B9BY7pvsYZb/8gQm8swRfQ0SkR46F5PdNfulLk6Xer78DH6A+zrimp0eF+ECCa/Xwpk9inJUDNUXJ0WpyvNnGT9W/9AOf3C58Att2kBa/9C/UbOVqjIfGu+slyM43Oxds0F85KySreTBhs4iB9RjXkeiFWe3i/b+Jj2LNHGufGQtmkfHfSwbqysM1VsVJnNqEFfxRdjkRdhJHz9x1AlIYljLZNciOvncgmdGCoBG4LZwfxTzF6PQf5O6GMUSNp5Qkxc0hR3N62D9DeuNvEk4ymBpLCEDlgEQ9eCRR7L2FOw5cxftssBJF995aLOhVHjDP1DSCcCnWvVPTrQfXp2oMkF4woLcKa1G98gYBaiw4sRx0NP3HI57TQJVj2V3zrMziyIgKUGFJuDYts5+3I+jVY5W1y3/Vu3QfdlA5qG8zYLUhcRxaliPzBbhrkXh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bEIvUVBTbHdFVXNLYUkya090Z051THBReEwzV1BiV3dDbmRmQlJtR2l2SzZC?=
 =?utf-8?B?cllteXlTa2tISTVoY0p3ZFJmbXNRZzVsZFhwTkhvRVhtU3VFYnRtek0yc3ZT?=
 =?utf-8?B?eXphcmsxVER5SkJjSmVPdXNIcm5ReFBzNkR3dWNZV2VTWmtBUmRmbnBYYjBp?=
 =?utf-8?B?RGR1RVhCMDYvUXZNdGRBZmpEYzFkK1ZRVlcwTE81V0Q3TWo4TEVUUjRaSzFN?=
 =?utf-8?B?LzM0Njc2cXkyZkpnbGhUN3hlWTY1TE5Nc0dqak5Sa0RrNkg4bFZZTG5GS251?=
 =?utf-8?B?d3BiS0w5eWhNeHprcE5pZVZFMW5lRCt3RnFCMlNtdWNPUDZVTGNudGJkYlp5?=
 =?utf-8?B?WkhKZVBuc1lLMmtjVkE1eVRvVUQ4OFRBbll0VWR2SFZlKzNmcDhLSWNvKzB3?=
 =?utf-8?B?NSt1blJkNW1RTXJxY3FpcUtRR00vQ09oTW9xNWVKMVMrRnUrelJuZm9rZEUy?=
 =?utf-8?B?andjajkxQjhUNm1FZlgwZHMrYnhpd1hUckN3bHJOU3VDUnlld1NURUtpT0di?=
 =?utf-8?B?N1pNM1N6aVg4TDBuUVkycXltbjJxaFNoQXBRVDFkU1VaNjFQbXJ4VXR0bTg0?=
 =?utf-8?B?SlBwR0lzK29SQys3R1ZnRk45TzZXaFR2bHZVb1FvbkdXQm9zR1JJeDlKKzNz?=
 =?utf-8?B?Z3FZa1N4ck9tUFd0QVNDby9nTlRscUluZkxMc2hkU3FQSklsT1IrVVludDFo?=
 =?utf-8?B?a21vV2ZmWUhvRnVnRnRqTkx0dXFFcjcrT2dCd1l1SDR6UUp3eGs0RlMzQUND?=
 =?utf-8?B?RVJUOUpDcUF6R3BMdzB5cE1sRDlKd3YwaFQ5N0QxM2NVWEI0RXkzWkVJWXFq?=
 =?utf-8?B?MTZldnZDM0djT0owMVk1b3RFY1Q1S3BweFgxK1pVLzNVK0wxblQxWXdNZExJ?=
 =?utf-8?B?bG02elRWSFl0cEEyeDIzNzk2NzdXNk9vZTlDQk51WXpOdm9DalMzazRBeTFz?=
 =?utf-8?B?VU42N2liTzRBMlpudWlCV25saXFVRzdUYkJGZ2piNVpWOU5tL2FwZ2t1SmMr?=
 =?utf-8?B?OXhHdlZLNDl5NXhJVnZmc2E5eURaUW5JOXh0MndWWWkzejBpS2sxWjNLeDlr?=
 =?utf-8?B?ajdZcGd5dkZYeURQQWFSNHlkVmdwYWg2WHVDMWlxVXJTb2ZYQk12dFFROTRI?=
 =?utf-8?B?RHB0ZXdpbHQ5ZndSeG40MUFOeC9CSlRTN2JEbUtwb01UbGxsR1N2VXBIbGpj?=
 =?utf-8?B?N1huTUVxY3hMVzR1QVVVWitNWUpGbTkveExBVVFWQXdpNnkzOGpxZERER0Rt?=
 =?utf-8?B?V0oxS0R0MSt1ZjhhYnN2U0hnZDNlaWlTR3MxZVIyTTErQzNUNHNReUtJZ21K?=
 =?utf-8?B?dzN0ZmVCbXZRMkhjdEs0M0lmQUhNUkRXQXhHME0vc3NVL2o1cjFNWlBGT1Vt?=
 =?utf-8?B?aURvRFk2VTJHcStQMDd6dEd1aGUxK29Ld2VTSEVweHpGNmE0aUxucW82eTJu?=
 =?utf-8?B?YXZmd2xKMGtTM0IwdmQ2U3Blck4yYk1PWEJLcE4wekluN1o0aitaUlA3SWxX?=
 =?utf-8?B?THlxeGJIR2N4UlhGeDNBMWZMM3hoL0ZQWlZhc1lwRHlKTUNqdzY3MGFoQXVn?=
 =?utf-8?B?V2dXK3FNV2ZNZWZMSi9YNGlmWnVNcE5MRUlQcU50c2wrWVNnTjNBNGkzQ3pZ?=
 =?utf-8?B?TUp4UjZQNGZ3cjlyeU5xaW5uNVVlWHlNVWQ3SnZFWXoxdktKTExCY1ZCa0cw?=
 =?utf-8?B?Y1dUZnFSV3kybjVZYVJtNTFRWS9VVFJSWFFCemg0a1BGbEVEc0x6ZGJ6K0V0?=
 =?utf-8?B?R242VGNyalVpVzBqVEh2NXZXTzJ0N2pzSmRqS29EMFd3UTZSMkxpSVR6Njl5?=
 =?utf-8?B?QnQxdXJLd0FFMHNqRlpCTkFFYXFpS1lWRGo1djZjNmg2MGZxMHRqdWMwNDNs?=
 =?utf-8?B?emJ2MFhvNW9NdDNaa3l0U3RNOFZnSTkxSzRSU1BYeTEwbDFmY3dIbWZHRDdh?=
 =?utf-8?B?TndvbkpLbGV2SjlsYXVRcHh2ZFVxUUNROW1iMWNybE9xRWdOUnhQdS9JOXRx?=
 =?utf-8?B?VWVnL0V3WjlHNEJockhVeWJKc2RCRFpEV0psUUg1ZGZpLzNGZGVFMXNuRDNj?=
 =?utf-8?B?WjNjZUd4cGNzUnVqQmtBYXlhdTBCdDJMWVY0N2dvRFZ6MlZ1SVlITTZzYnFB?=
 =?utf-8?B?RTZicFJzMzZKeWVnUDhKMFFQZk90alRKUCt5SnkvS3M3bjdhQjYwb0ZHL1Fl?=
 =?utf-8?B?MVRCY3Q3em5oeGVSM1ZIeHRoZ0tScTdLeWx1U1VqRDhBaG9zazJ4YmlDaW5X?=
 =?utf-8?B?SEJTUWpTSFplekR5MTJCbHpXeVZLRXVEdEs2Q2RCR3d0WFJ3aEl2cVJucGE2?=
 =?utf-8?B?dDBtQnEyeTFudzFORWpSSFp1Z1NlZExST0NDZ3VrajNuNDZpUU4wVDZMSmlU?=
 =?utf-8?Q?YE8MOUHY35DAcpDI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: T45G/pESkv6XGueg+Ufz6eNt5Cd6GWCelTPoDIC1bJuvQ5D90Oq1nw37Y/bWVETVH8/ofMOmZ9h1kYt/7zymil1GCb+MSRf65NLN0Dmee7dBqWNsAMrCkaqLaY75XnkGvRAURUEvcZg8TeprcP0PLKd0mIuuNoj+biB/H+A+FaWg3fpfwpo6hH3GaYxi8HqQ4NnAfhI7TfuIgLP80XDWjC26Yv3u+kgfpRZOSms/XA9hNfNqT8IcA4OIaB0FXLl+hWlXj2Jz7M1xv0T7ParrsJwNzZyDqsWnEs/XMQ4t4FcCpwGK7qQBeGEa4CaWZF2pX7u3dS739cwMHF5V4TwHvg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc728e7-711f-41bd-2361-08de8b439d34
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 14:26:04.9102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5HQXyqXh45fI1yDBPXtOzkcxkGykwh1IR5WQXQXAUdN6y0DSHUnQwdhYqfrSYLYv2mFe9PcsQse0fOqEzy6J3onYIo8IMPOugU7RMBnT8D4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774535168; x=1806071168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Uebr0mcMyY7Y7BrMHHqSZypvojpJuFNb/DQ6hwSs84=;
 b=jbuAbsZRonLw4ApjQ1yc5KAvDRXeEr8dIzMie07HyiGztWcqOKmi0mfD
 3/Fu7BQDJjD41B6omJKG9xi4lEQJLLZb+C6wCUley37hop0ilYT9v27E1
 6jnbMGWSqxkczItn6S5FEJ5VhgMd4d9JBSauKm4Nk37Dml8cA8KrvtAuq
 SBRcnXINyZLqeG31/ALgyG90QKWtCw6yPATba8cOwvdFlgkDYV0gf6U9s
 ik2Mo6xi7yd2Au5brm+0btuA9SHKTGnqWltqBPIJ7EGagaEL1KAGDCzgF
 6uuiJhJFO5jIFrsEg7IQbKWLvUUMHPgd1bloVQ94L/7QRg4qj8V/+HVyt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jbuAbsZR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: call mutex_lock()
 before mutex_unlock() in ice_dcb_rebuild()
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:bvanassche@acm.org,m:netdev@vger.kernel.org,m:katarzyna.wieczerzycka@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 22849336BD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBNYXJj
aCAyMCwgMjAyNiAxMToxMyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgQmFydCBWYW4NCj4gQXNzY2hlIDxidmFuYXNzY2hlQGFj
bS5vcmc+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZzsNCj4gV2llY3plcnp5Y2thLCBLYXRhcnp5bmEgPGthdGFyenluYS53aWVj
emVyenlja2FAaW50ZWwuY29tPjsgTmd1eWVuLA0KPiBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3
bC1uZXh0XSBpY2U6IGNhbGwgbXV0ZXhfbG9jaygpDQo+IGJlZm9yZSBtdXRleF91bmxvY2soKSBp
biBpY2VfZGNiX3JlYnVpbGQoKQ0KPiANCj4gT24gMy8yMC8yNiAwNjowNSwgQWxla3NhbmRyIExv
a3Rpb25vdiB3cm90ZToNCj4gPiBGcm9tOiBLYXRhcnp5bmEgV2llY3plcnp5Y2thIDxrYXRhcnp5
bmEud2llY3plcnp5Y2thQGludGVsLmNvbT4NCj4gPg0KPiA+IEluIGljZV9kY2JfcmVidWlsZCgp
LCB0aGUgZmlyc3QgY2FsbCB0byBpY2VfcXVlcnlfcG9ydF9ldHMoKSBpcw0KPiA+IGNoZWNrZWQg
Zm9yIGVycm9yLCBhbmQgb24gZmFpbHVyZSBqdW1wcyB0byB0aGUgJ2RjYl9lcnJvcicgbGFiZWwu
DQo+IFRoZQ0KPiA+IGVycm9yIHBhdGggYWx3YXlzIGNhbGxzIG11dGV4X3VubG9jaygmcGYtPnRj
X211dGV4KSwgYnV0IGF0IHRoaXMNCj4gcG9pbnQNCj4gPiBpbiB0aGUgY29kZSB0aGUgbXV0ZXgg
aGFzIG5ldmVyIGJlZW4gbG9ja2VkIC0tIG11dGV4X2xvY2soKSBjYW1lDQo+IGFmdGVyIHRoZSBj
aGVjay4NCj4gPg0KPiA+IFJlbGVhc2luZyBhIG11dGV4IHRoYXQgd2FzIG5vdCBsb2NrZWQgaXMg
dW5kZWZpbmVkIGJlaGF2aW91ciBhbmQgY2FuDQo+ID4gY2F1c2UgYSBkZWFkbG9jayBvciBjcmFz
aC4gRml4IHRoaXMgYnkgbW92aW5nIG11dGV4X2xvY2soKSB0byBiZWZvcmUNCj4gPiB0aGUgZXJy
b3IgY2hlY2ssIHNvIHRoYXQgJ2RjYl9lcnJvcicgYWx3YXlzIHBhaXJzIHdpdGggYSBwcmlvciBs
b2NrLg0KPiA+DQo+ID4gRml4ZXM6IDI0MmI1ZTA2OGIyNSAoImljZTogRml4IERDQiByZWJ1aWxk
IGFmdGVyIHJlc2V0IikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBLYXRhcnp5bmEgV2llY3plcnp5Y2th
DQo+ID4gPGthdGFyenluYS53aWVjemVyenlja2FAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
PiANCj4gTkFDSw0KPiANCj4gdGhlcmUgaXMgYSBiZXR0ZXIgZml4IHByb3Bvc2VkIGJ5IGNvbW11
bml0eSwgd2UgYXJlIGF3YWl0aW5nIHYyDQo+IGh0dHBzOi8vcGF0Y2hldy5vcmcvbGludXgvMjAy
NjAyMjMyMjAxMDIuMjE1ODYxMS0xLQ0KPiBiYXJ0LnZhbmFzc2NoZUBsaW51eC5kZXYvMjAyNjAy
MjMyMjAxMDIuMjE1ODYxMS0yMC0NCj4gYmFydC52YW5hc3NjaGVAbGludXguZGV2Lw0KPiANCj4g
PiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGNiX2xpYi5j
IHwgMyArLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2RjYl9saWIuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9kY2JfbGliLmMNCj4gPiBpbmRleCBiZDc3ZjFjLi5kNTE2NzM0IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGNiX2xpYi5jDQo+ID4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMNCj4gPiBAQCAtNTM4
LDEyICs1MzgsMTEgQEAgdm9pZCBpY2VfZGNiX3JlYnVpbGQoc3RydWN0IGljZV9wZiAqcGYpDQo+
ID4gICAJaW50IHJldDsNCj4gPg0KPiA+ICAgCXJldCA9IGljZV9xdWVyeV9wb3J0X2V0cyhwZi0+
aHcucG9ydF9pbmZvLCAmYnVmLCBzaXplb2YoYnVmKSwNCj4gPiBOVUxMKTsNCj4gDQo+IHRoZSBk
aWZmZXJlbmNlIGlzIHRvIG1vdmUgbXV0ZXhfbG9jaygpIG92ZXIgaWNlX3F1ZXJ5X3BvcnRfZXRz
KCkNCj4gDQo+ID4gKwltdXRleF9sb2NrKCZwZi0+dGNfbXV0ZXgpOw0KPiA+ICAgCWlmIChyZXQp
IHsNCj4gPiAgIAkJZGV2X2VycihkZXYsICJRdWVyeSBQb3J0IEVUUyBmYWlsZWRcbiIpOw0KPiA+
ICAgCQlnb3RvIGRjYl9lcnJvcjsNCj4gPiAgIAl9DQo+ID4NCj4gPiAtCW11dGV4X2xvY2soJnBm
LT50Y19tdXRleCk7DQo+ID4gLQ0KPiA+ICAgCWlmICghcGYtPmh3LnBvcnRfaW5mby0+cW9zX2Nm
Zy5pc19zd19sbGRwKQ0KPiA+ICAgCQlpY2VfY2ZnX2V0c3JlY19kZWZhdWx0cyhwZi0+aHcucG9y
dF9pbmZvKTsNCj4gPg0KDQpXaXRoZHJhd2luZyB0aGlzIHBhdGNoIChqdXN0IGluIGNhc2UgTkFD
SyBpcyBub3QgZW5vdWdoKS4NCg0KQmFydCBWYW4gQXNzY2hlJ3Mgc2VyaWVzIGNvdmVycyB0aGUg
c2FtZSBmaXggd2l0aCBhIG1vcmUgY29tcGxldGUNCmFwcHJvYWNoIChtb3ZpbmcgbXV0ZXhfbG9j
aygpIGFib3ZlIGljZV9xdWVyeV9wb3J0X2V0cygpKS4gSGlzIHY0DQpoYXMgYmVlbiByZXZpZXdl
ZCBhbmQgYWNjZXB0ZWQuDQoNCldpdGggdGhlIGJlc3QgcmVnYXJkcw0KQWxleA0KDQo=
