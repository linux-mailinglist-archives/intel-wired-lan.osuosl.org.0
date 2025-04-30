Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F46AA421F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 07:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D21FD60A96;
	Wed, 30 Apr 2025 05:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phPtZxotgpuG; Wed, 30 Apr 2025 05:08:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2DD760A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745989716;
	bh=oNItP5PVk2j/fN12UNSeC/XDU2rq6Gp2PZ7Xt20wxrU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wcELWhW97FUEVUIRei5NQaMYumMK5f+QfVwwDkYrbETWSvsQPO5+FVMiB3neO6QKr
	 jVvbXka7smcoHMypuVdgagcLxr7HeAi/dDsuGmu4+nvYrwNt5x4sc2Jrt1K0QedZ8u
	 bgjMFvhI3L2pyMifCA0xCf4LiQt+l69hDfxe7cbFHoYFLoSSb6oZzGC+5RBBYn9YgT
	 XxR2yCX+92H3VsOuYQEyhZsXr4utNeoixKkBZl+I1ZJsrJUJEi+WkU/xmqtfy4i79D
	 5qANVMZAV7wM+Lr9YUCBpRuwrO24fIP0RGdWrFPuaXOp16u41RzS7loGktKmlVg7eM
	 gkkcybS6bKsGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2DD760A58;
	Wed, 30 Apr 2025 05:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A27F1E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 05:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88DC140743
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 05:08:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUzUFXfSGK1i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 05:08:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF7744073E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF7744073E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF7744073E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 05:08:33 +0000 (UTC)
X-CSE-ConnectionGUID: R9Svp0NIS4y19ZRB/3dtHA==
X-CSE-MsgGUID: YPUBBgHESoWudPBPey4E5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="65173669"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="65173669"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 22:08:33 -0700
X-CSE-ConnectionGUID: m4jypQawS5+21+lUrgg7Ng==
X-CSE-MsgGUID: GKm+CY5dTVG2BdUGQrfYTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="134331503"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 22:08:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 22:08:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 22:08:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 22:08:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j8L/ISMURkbCOoArTkZFqaUq0gewGB8tkVwhwt0g0rjWlYXLl27HOOL7xHwVoB2cvDuI9t5VVdtn+THtuMipz3t0CaYAtqSyxN25/PVC6Z/FWFAOxFK80pspfvVs5RLwgvKRbE17z+0X4MPPkCFL8Co7AZ+wRhyM+zZNsn2DzSrtPl3KXmdYHcmzAsb/OW/6fsuxzk7cYhzu4fXfmsNiyyUZ+orkfEIMg5ArfbZUI8o+FVqQceEY61K38b5Uw4Udikywt8mATjECcEghzM1YJHPaIVR/YBxTVUda56IDhAmv999iYy1/hFidX6as5KO9goTPCHDLfIbqXk+327Hb5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oNItP5PVk2j/fN12UNSeC/XDU2rq6Gp2PZ7Xt20wxrU=;
 b=bhmODakjVFzbXD8QMfEGiEXCGDfurEu9QhWcX2Ak6M667nOl8/5KfMH1SQcFgvDFSCB8OsoDL8uGGA500sZ9ZW0QLx3nFumQAafrC0MXk4gOk8VlLertRNJlYnJcDMp00NyMioFDa+vxzWNoJ/Lg/vRMAXsV22T8i6b8l9pXdfir69/f78Vy2T1suPdUU68JPMnjHMTSYSEVEMPiUaLbUuOP/XWYtEDB2UQlvpHPcwsXBt5jHSj/LIc0LSOlozbutW8/hSwWaguFm7JWVHM6daswo2aGU6CINEOTZk26CkfG62G39Ho2Wik1j///pu71fTAtrm72s7IUMN3x7sKwaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.34; Wed, 30 Apr
 2025 05:07:45 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8678.028; Wed, 30 Apr 2025
 05:07:45 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 Simon Horman <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice: use DSN instead of PCI
 BDF for ice_adapter index
Thread-Index: AQHbrT//aTgnMzn8SkmC/+hYW59DcLO7vXcg
Date: Wed, 30 Apr 2025 05:07:45 +0000
Message-ID: <IA1PR11MB624112E2C04D751315976D938B832@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250414131241.122855-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250414131241.122855-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM4PR11MB6117:EE_
x-ms-office365-filtering-correlation-id: b6ddc622-63e0-4689-8ff3-08dd87a4f185
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bOfVcFgrdzir0wGa6C7VzpbLdXt1hRFQroxiuzNn9vtSl57mmN7WZK+8S2Dc?=
 =?us-ascii?Q?s1fksYgpl8u3xIopq0G4efMI2RH686fD2v+QsgirpB6GAizyB4XEaXq0DumT?=
 =?us-ascii?Q?xmTWJFLqR9M6g4BVSDr/bUVf6rmhQPaioA9NEyojLFxtEPe2uOUK8cF7et7d?=
 =?us-ascii?Q?HvGVwwuNb+8BEDmw0CIM2+AQa8Haqcu0iIGq/fJtCyUXjq6/CdEU0+yd3+aV?=
 =?us-ascii?Q?Cr6A/c7kbLIGzRI5mdxbIdkY/vIOB0l8/dEgPz6xNFp3/RHwcydBh4EwzISI?=
 =?us-ascii?Q?qMuP8bWgA+BNOWPtEzK72e/EgUFnAugn/ZQ5+iH5CTDufkLes6fTuxE0Em1x?=
 =?us-ascii?Q?Inctcy0Wz4OhBhpaLeyHtNWocq4GqDHDAwGVj4MAqnlbl+T/iJKavwRv6QJ6?=
 =?us-ascii?Q?SAsacUefWT8QwLqgou9uBySnC13GxkZgtASyZ5HiVRMFfMGsQL3R1HO6S/8Y?=
 =?us-ascii?Q?Gyg9VpA4oMA370VHiJDR4Pgde7VpSZ/MHhDKE/Wu4oSulTiTV71HWGq6aLNf?=
 =?us-ascii?Q?+odWyruMMWachKmE9cRJkg0DAUgl3js3/NCO6njkmBdnEv3CQOA6/CC1VhRQ?=
 =?us-ascii?Q?jxvRcBobwMCh+xiwZoPdGlVQVSlkYDczaSsEjXInQOQhK6nHiCC4E50SZq7v?=
 =?us-ascii?Q?itdPaMGtAhmkwpVyNCk5bTlHt5o066ZHlkuaPSZSybIBgk76IMseImSw2W3o?=
 =?us-ascii?Q?zD3Y4TQKGSzKXZVj3KbkS1LQVYpfyioscqzf/EhONcweWIk6Vctz/e1EVlFu?=
 =?us-ascii?Q?ZzzqVIyCv5jCVh0UT8e4v17/z1w7c0hF/6Q3XsngnWB1xHup5wCymSURXhM2?=
 =?us-ascii?Q?5JEv/Z/LcfRroSZSbDrBj8mxbiZAA94/cOBGog7R7GcyxjpJql03KV49/QlV?=
 =?us-ascii?Q?bPM8W+5AQoo8dmh2CEIs9bcpfzJAdAv2BefspA+Ziy8eVz0D1mEojmWfdRDL?=
 =?us-ascii?Q?+Udin0B6TaNaX/ZzQgkYdW1eFdlk8EWMvPKjmiBEkmzhn5fyTjMShTwFMcm6?=
 =?us-ascii?Q?W+dDu0Xc7QbtLfWuNVtDxWkB59R4JHfW8KIsq9ifoHPC+7uQcsUzU1+t4nrz?=
 =?us-ascii?Q?8weo9e+ymp66v4/ty1Dhajov2xEhXlQaS0cxscpuVbypcCUOudrmfpg0b/8l?=
 =?us-ascii?Q?5pNN4pdhm2o3Allzo7g2MGO85PgxpeWhM9xmvbAIXe15bW5ZSyOPJOMy1Tuy?=
 =?us-ascii?Q?qxjv72wWHZm2YM3nI807UYSiSLBlitQrN9WfORad+bSZaxFpeLo75voUNDu4?=
 =?us-ascii?Q?XP3TY+HqunWgTtBM33U/IRachxuIOCgEZJEMU5+f+cELpOfHse1Hq60TFeSw?=
 =?us-ascii?Q?9+WMthhwXT+TYEJq9G7UDGFoOwq0a5TIgAfgAfmRwnqlXmY62hfr68Nko3cI?=
 =?us-ascii?Q?wNtVJD2ZjAoU5WmjIvM788x5j+F0+L+g/2mlVws16GkuBhUm+6mR4nvWGkpG?=
 =?us-ascii?Q?eBSP8JL4JbH7umczH0Lnf+/mN8SZH+eioiU+xbZxlsWi7cKlpbsjZ9XY7pOs?=
 =?us-ascii?Q?PBzc4oITt0C2bEc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qik90q7oZVhIlC5JtKmuCbb3MXtvT9t8Wn6gXdyqjWmKKI+UoQEzgYGhdtEa?=
 =?us-ascii?Q?as41ttgZAUkxiRqacpGE6UL5PS7UWuBRFiKSugJ3FZL2wqNM1KPHFZmLD0pc?=
 =?us-ascii?Q?gZXUe/E1a547/AhwKOLPuc4Q2wOkVuU0GauFYU26bqUk+PrFDUVnOpN13EXP?=
 =?us-ascii?Q?lQcqnaDhQADlugzSgM83MSnNITJ+Y5UOfrszycc1/hhigzc/zePkgWEBAhpn?=
 =?us-ascii?Q?DY6hlRo7/boh/bm0ZH733Vl/70Sn0wDEcRecVrSCi4SF/g0UAcTSPXeSH4u5?=
 =?us-ascii?Q?2hM71LaGeeIqRLDixVFgduwapwDZ2ZFkCbuTHEc0IzHljlRszHtg6jFLSazw?=
 =?us-ascii?Q?j5ZjDWRTQEnqX6U5vD3t8ehReTwHyfCsxeN8puRa2bCt1vFwLH3qVHXDKvAj?=
 =?us-ascii?Q?yMhpfLlx3hYO3noGkaTMvvMccVmIenqikPxyPgwALdoqsR4XLqDx+/E/awde?=
 =?us-ascii?Q?3JC3JL4vlJy4JPnyeEhwdmr+fIwK3nXEIwxOzMjSlNbNWh5DD12l/sCJtQfC?=
 =?us-ascii?Q?Ru+5cH9I0JOi2Ql+xQ01zAYwRn2+9FlQWRvC4IeR8uBmPotr9JA4+FyfDgJn?=
 =?us-ascii?Q?cHce1QCHBLjDLtZe1ApyHZ1khKOc54j6SwH3AQJkdAemQZLvbVQpgn2J2eiE?=
 =?us-ascii?Q?TDyeTCjPuo1kgK2JrSEWTHULP/ETH5Knx75bSLk9NjVLWm1/dwBkdLNmkGDq?=
 =?us-ascii?Q?rzemxeGxhtpbvQinCJVKe4ubxC1JLbX5b1WQM1e3q7yN5jCyj549dhcBNgqD?=
 =?us-ascii?Q?i4skqES+0WIndln4AkO+kA229pMdQh8KUB0YiJ/ZYp/lf1olOVXPr7cCBWpR?=
 =?us-ascii?Q?DKaO5EIDUNX2uHYoCruKiAF/QfksrjslO63seflYZVZzUz//XpsI7tpZYItz?=
 =?us-ascii?Q?MsRFR33lZrL7ZacEf4g/mZOD74JZEjl7d5ZimbllJKt61tqdAZ9tcERYcsFS?=
 =?us-ascii?Q?xF6K6WRM04PeQPXJPWC4kzdvnHFfB/NJ43jkyKIhw/YW9TWJXN2YSfWAuRnf?=
 =?us-ascii?Q?JKctAvDg4+lw605HdlP8psk5pD96KY7QoIX1RX9p+h6yyIpOv0lPeXb+OCSy?=
 =?us-ascii?Q?d45Qr10XrRBLFDAzwLB63Jf4uTZNWrvjVlKLWfJeOvp7Y6VDSOdHORCB77Pe?=
 =?us-ascii?Q?P4yf8vugNKSKDQrRsqttF9WJ0/IH8FhVCIeyUCWkC7tkSUojKkbDJhx3nTZ4?=
 =?us-ascii?Q?X77JNR2WwAGFxHzh1mRuGAmDq6/ELpdcK1r/MSuYHPBr3jPOHdYcoNXhij0X?=
 =?us-ascii?Q?gLDn9iqWcAwSOXDPIQMNiLMsXd78deA6P0NVpcvzVyVrPOY4CND6Lp0mWKQh?=
 =?us-ascii?Q?NiX8uULw+Sosk4G0HUlzm3kgcMNdMEeYY/CSZsvJ9OF4mzoprda6u33PWYfw?=
 =?us-ascii?Q?4kdZdhpJHZKbGA6brWpOxQWBByRRffDbTmDpiQh1OWfEV+kw9M22zoUuuD5l?=
 =?us-ascii?Q?/hfQC9gFqbiRYePFm6fTxD98ggoGHcRd/P9K9xBBiYSfCV4jT2nx0ndynMjY?=
 =?us-ascii?Q?vMH9EMHVdooqApBwnhoSBEM2w+p95ybRu2Zsm/bE/95znLnQqtkdcvI7dP/c?=
 =?us-ascii?Q?2T+J1f7+GpntpAtSmSwRy+YRIdjFnnfStar3YkVu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ddc622-63e0-4689-8ff3-08dd87a4f185
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 05:07:45.2370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1eQsPp7NOqNC9yDteU+YIoKdsdhO3C1+jWmfuEPoY0HzJdTDpVBGLdf31sqpnoqSPStYO/01J8YoLVlnXNhQmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745989714; x=1777525714;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=19VPOg2xsZEuQBGsLHBS/FxBBWQPgbDYy6RA8oBN6ck=;
 b=XnKl94Z9Rwc8DBT8b5EkdqpWx1zXqJoFZoc12v4CyrnGdh4Zw3WxEYDU
 ecBXi0KDv18RzsKZjm/91XvJoKO1zlfdok5hhd/ixSa4g7tA7fFjG7M7V
 UMMrL+eP2BPP3ib7XWihFycgWzrzlb4KeuS6jdzFxIVi27p+zowyJqN4+
 +MSbah68AYAacUbbG+q+fC6rjwWV/gvuQpuVF7psdyQpeBisKuiyzN0GT
 IaY1u2mk1VWxrzsndePpJQpq3THDxBZMzeA5+YvW8o1i6095UhGnIiGBV
 CusFHzxOhj/tqsxQb2K1SkbycyChnAfrDhWziqLqm8PUpRpr87kl6K1C+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XnKl94Z9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 14 April 2025 18:43
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: Jiri Pirko <jiri@resnulli.us>; Temerkhanov, Sergey <sergey.temerkhano=
v@intel.com>; netdev@vger.kernel.org; Loktionov, Aleksandr <aleksandr.lokti=
onov@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Kubiak, > =
Michal <michal.kubiak@intel.com>; Simon Horman <horms@kernel.org>; Kitszel,=
 Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller=
@intel.com>; Jakub Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: use DSN instead of PCI=
 BDF for ice_adapter index
>
> Use Device Serial Number instead of PCI bus/device/function for the index=
 of struct ice_adapter.
>
> Functions on the same physical device should point to the very same ice_a=
dapter instance, but with two PFs, when at least one of them is PCI-e passe=
d-through to a VM, it is no longer the case - PFs will get seemingly random=
 PCI BDF values, and thus indices, what finally leds to each of them being =
on their own instance of ice_adapter. That causes them to don't attempt any=
 synchronization of the PTP HW clock usage, or any other future resources.
>
> DSN works nicely in place of the index, as it is "immutable" in terms of =
virtualization.
>
> Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on =
the same NIC")
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC: Karol Kolacinski <karol.kolacinski@intel.com>
> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> CC: Michal Kubiak <michal.kubiak@intel.com>
> CC: Simon Horman <horms@kernel.org>
>
> v4:
> - Add fixes tag for real... (Simon)
> - extend commit message (Simon)
> - pass dsn to ice_adapter_new() to have simpler code
>   (I happened to do that as (local) followup) (me)
>
> v3:
> https://lore.kernel.org/intel-wired-lan/20250408134655.4287-1-przemyslaw.=
kitszel@intel.com/
> - Add fixes tag (Michal K)
> - add missing braces (lkp bot), turns out it's hard to purge C++ from you=
r mind
> - (no changes in the collision handling on 32bit systems)
>
> v2:
> https://lore.kernel.org/intel-wired-lan/20250407112005.85468-1-przemyslaw=
.kitszel@intel.com/
> - target to -net (Jiri)
> - mix both halves of u64 DSN on 32bit systems (Jiri)
> - (no changes in terms of fallbacks for pre-prod HW)
> - warn when there is DSN collision after reducing to 32bit
>
> v1:
> https://lore.kernel.org/netdev/20250306211159.3697-2-przemyslaw.kitszel@i=
ntel.com
> ---
> drivers/net/ethernet/intel/ice/ice_adapter.h |  6 ++-  drivers/net/ethern=
et/intel/ice/ice_adapter.c | 47 ++++++++------------
> 2 files changed, 22 insertions(+), 31 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
