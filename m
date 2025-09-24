Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3333BB99F85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:05:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82E1840677;
	Wed, 24 Sep 2025 13:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jf5w_0g4L7NZ; Wed, 24 Sep 2025 13:05:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6261A40D3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758719153;
	bh=NH/1zhmUeHWRpYHKzvYpv6BkgZ2h+ifO5XT+8FZLiV0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z72qJRg3Jc53gLJwxxQLvHpgeFFOIbrXuILwceUnCl0aYhZgXkeii4nzxHY/Xyaiy
	 b0lCnMWGYjsIhp8TWSBO45Nu+RyE7YCirjFuUdvTJyHv54xofiXV3pnWj7D/4tTGMn
	 JRiAFZLf36X9Tmmru2wPIm7bq1SIfUq9mBODiCw+yA+qeZRtv70wosMrcLpJ8XsQ4T
	 kFUCfCDISTeBosTPC73vdCFSnva0do/d+wIg9KbZL4ejUxXt+hUYz0lSKpFHIPVVnT
	 duICXZ+TqlLjkH0nKJs/sYCHLNjBnMZhuFoj923/T/lWlmnbd1LbhLGOXbxM+tqe6L
	 l03Jmy83btXlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6261A40D3F;
	Wed, 24 Sep 2025 13:05:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 78ADD199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EB20400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:05:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xC6Kj-AYvCp1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:05:51 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Sep 2025 13:05:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B22A40806
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B22A40806
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=marek.landowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B22A40806
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:05:51 +0000 (UTC)
X-CSE-ConnectionGUID: 0lj4fNTDSOqQQE7U1dWxKQ==
X-CSE-MsgGUID: MgExdjCgR8ORrmhPjBAK6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="78451111"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="78451111"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:58:43 -0700
X-CSE-ConnectionGUID: xvLr9HGtQqquea89jBstVQ==
X-CSE-MsgGUID: Zupz+gJvTMmto7sBHP8Jew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176863651"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:58:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 05:58:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 05:58:42 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 05:58:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iYAOYfdlaqhe9xikE6zWQtF+9rTUDHsAe5cp9Ja0bp+6gCsMQCdvNUcBnMajDEDjJUxCh1XRX52BcESwbyjZsQjIft7hhNN23OtFziN9jMzMjLqCUX5zbLxvOrxMqbqPRz4Yvn6e+7gqGCB4JEm23lkSNnvtTukiIyQAh8zHREgIDq9dsnwgoSS2DzHGzs7gdyyCxddHRyn9/KHr8OMVabD00gRKmm2WoGasy+jnePtss23X5gxTyxY0uFu6ySLTec0BvsEbuxm/Cjl7a0+AKPBZ3wrCM0jRg095VShz2Kqn4F9am7q1DhpnGYpoBVYdu074wZIckRYjgKId1+zL9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NH/1zhmUeHWRpYHKzvYpv6BkgZ2h+ifO5XT+8FZLiV0=;
 b=dRwiyFaEDX9LEpkLvD00aCWQeOBTn0X0OGUPegjs/xcqC1OP+lUOcP9TlaucSLIUni5W3J8BES6V3YxHWknqZfXaBnyQLyEyDULfb9d4gcA0xCFPrN119r0a8zlJvdGRJ2nx+aTmwBF3RALckHnKG+9KPPECmkbzTmUarRnFSOtRBcaYqrP+q1JnGpFO0qr9yoCiw9dKBYn7UtexkbFmX4zLvLJQ4IsW1iYK7iT0ovWzY42KRQrAZmExQSXn4hUwCyWPkCjvl095tnmdSzjgpOI0o7Mzoqf+Mp2TNRQ0O9aP25+OUNr3wIeCVBMN8J+KhTyoi1IOk4rZYskNB8ESRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7557.namprd11.prod.outlook.com (2603:10b6:8:14d::18)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 12:58:34 +0000
Received: from DS0PR11MB7557.namprd11.prod.outlook.com
 ([fe80::fc44:fb3a:41f4:b8b8]) by DS0PR11MB7557.namprd11.prod.outlook.com
 ([fe80::fc44:fb3a:41f4:b8b8%5]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 12:58:33 +0000
From: "Landowski, Marek" <marek.landowski@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Chittim, Madhu" <madhu.chittim@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4] idpf: add support	for IDPF
 PCI programming interface
Thread-Index: AQKNb5+l37ttnv3gUcdLLz2S3ASvybM/xZAw
Date: Wed, 24 Sep 2025 12:58:15 +0000
Deferred-Delivery: Wed, 24 Sep 2025 12:57:23 +0000
Message-ID: <DS0PR11MB7557C98EBD1665035304815CFF1CA@DS0PR11MB7557.namprd11.prod.outlook.com>
References: <2aec7267-32de-4984-a628-e9f8286cdfa3@intel.com>
In-Reply-To: <2aec7267-32de-4984-a628-e9f8286cdfa3@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7557:EE_|MW3PR11MB4649:EE_
x-ms-office365-filtering-correlation-id: 1df03cd5-5fd2-41e1-8a80-08ddfb6a11bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NUVGL1dTa3ZQK0tPQ3N2U0ZhVGZkQzZva1lKR2pFcFRjc3V3Q0pxMWdRYTRx?=
 =?utf-8?B?UFBWWXh4ZmJaNDBkYUVlbmJUK0M3aWE3MHpzZktXdTBTRzNUVHVMZmVlaWUw?=
 =?utf-8?B?N1huVi9kaWtreElpV0R1bkl0YmdpWnVsZXlDOTBVL0ZmZ2NqKzNlQlFkeHdk?=
 =?utf-8?B?U3FEZnM2Y3ZRTWlWK2xVcmRabFFJTkdGKzZQd3U1eUk4UTVjMXU2MXpHUEVG?=
 =?utf-8?B?TDlaaTA0ZmRqaktpUjZBamVHOUpmalJiaWlwb21iNXZpbEJETStNMTlHWWRx?=
 =?utf-8?B?UGtEUVVyOGxiSU9YYXR3ZHE1ZGVoaU91NTVyOFAyS1RVYUl5Q20yS1NyOHJM?=
 =?utf-8?B?dUxocDhHaUd4aHkrL21WR25tTG9sTkFWSTl6T2lqVGxDMUJIYWNuNlpiVG0v?=
 =?utf-8?B?RE4zakFTb3h2M0dFZmhIUVBTS25XY0NJMlB4QlRRK0VZZnBjQ2dWckFQTVpu?=
 =?utf-8?B?dkk3OU9GbFZ1UGVGa3pGb2w3THZRR3EzNXZwZFByY0hrZHgyNGpic3Y3dEdG?=
 =?utf-8?B?YUM1c25NbjlJYW1aQjRCNlVOSlNuTDY5RzQyVkxmbzVHQlZQYUd2ZkMyUlBt?=
 =?utf-8?B?TnpIRVFtUVYwWjFFNmJDMUhLWEgycFIva0NzSHJuNUFKcnVSYUdQTldLeWY1?=
 =?utf-8?B?TTkyVWl0VHhQZ2NOOUdNckwrM3puWkMzRHlhS1h0OExCMXkwcGtvM3VrNXBk?=
 =?utf-8?B?cGNFeDdFYyt2V0ZUMDFrc2lpdW1YR1QrclhxdCtaZmVjVnBkMFpzem4wSURU?=
 =?utf-8?B?dW1FMkVwNjQ2Zk5GUjZnV2I2cTA2ckt0ZGRrUUR2QUoxUnFqOHdhOXBBbnlK?=
 =?utf-8?B?TzVSUkRDUDkrdFU1bFRJTllpRnJrNmdwNHhTTlYvd2tiSHE4QUVnZ1VCY09W?=
 =?utf-8?B?amZaQTRtUmRrRzdGbS9GbUVnbjRCWDJCeWs2R3JIdXFnSDEybGgrZmRRanFO?=
 =?utf-8?B?bExwakJ6T3h4TmVBc1F1RHpobXFFZUtITzBMMCtVUU1oMVJmc0swcU9EZm04?=
 =?utf-8?B?L3pOZmY0dXhHaWV3MHpKczlMOUxuTlRPN3pPV09ydHFnNkhSbW9XczRCRWZn?=
 =?utf-8?B?eHhlYmI3L05lOHdtRzdzQjAyRGlmSlNXM0x5L2JYVFd1azg2VW5qWGV2OVNU?=
 =?utf-8?B?T1ZMY2NiSitRWlV2RUxxNUYvbDFQWm5ucmZ5SG9mc0dFQk9kQUw4L1VyR3FF?=
 =?utf-8?B?MkV4WTJJbFhpeGdabFVwNXZjMDRIb2dkS0dEZ0FVZlFPM3o1RXpiTEVORnFu?=
 =?utf-8?B?Tk5uMDJ6VXlJZEsvOVFLL0JJOFhmOGM0bFU0N0ttVnpMZXJ5Mnd4c2FOVXh6?=
 =?utf-8?B?VmhJVU1zZUtXbk9kVFJBYnVmZ1hucFVpVlh6TVN2dkRUT29QL1BMckdia0J6?=
 =?utf-8?B?UXVCK2VNUFlqOWxab2lzN0RlakdaMjljRFdqTXEvTU5VYnRNRWVKam9jSGNk?=
 =?utf-8?B?Y2RjY0dWRWJvTlM0dThJa0U5bEFrbnlhRU02RDBhd1QvS3IrdEFCc2hLSjlY?=
 =?utf-8?B?TDJnVm93YVJCb1k4Vm5YK25SYTBqYTQ0Nk1WME9jcTZXQXNtL1AzZDZ0OXg5?=
 =?utf-8?B?YXdvT1JWMzJ4cDhaNGtKblZKcW5HS2wwZlY0Z0p4L0FmU3JEWDVOR3h1b3J5?=
 =?utf-8?B?aityQVBxK0ZkVkVZRi9xNE1jVm5hOW5qOVo2NWloNkdxTER5bm9PNlFTT05u?=
 =?utf-8?B?ZWpCalk1d2VPb1gyZVBYZkdKYlpGVTJ6a3hDNnZyOVNUKzZaaFNpc2VWazhE?=
 =?utf-8?B?M0Z4ZWo2aGlFMllUcit4OU5VT0JkQzVXTlNhUW1YRVR5Z1J0ZFZyVW9OMGhp?=
 =?utf-8?B?cVowb1NuUVdrVERNQ2ZoSVQ4VE5kV0VldXdLV0VnZ1Zvdm5UWkZGNXBBU1F5?=
 =?utf-8?B?UlozUWJQYmVHQ3NnOVQ3NUVQWWNzN0hJYnJNdXdzKzBNbDNId2JDd0RubHQy?=
 =?utf-8?Q?I+cKGjdiA4o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7557.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2J3N2pQZTNkb0dHNXErWTBqY1VvRXlCZUFMclhzVnAvMEZuTllMRG5PM0NE?=
 =?utf-8?B?VThleEltSzFzeXlQbWF6UnVpR1M4NHRiWU1HZmJ1dFVtM2UwVnRwS0k4L09j?=
 =?utf-8?B?aXhKclhNYXpFQ21SSUlBTjdYS1VIS3YzU0dBUU9qQTVvRjhwTmpvSFJ3aW1X?=
 =?utf-8?B?ZlVBYzYrK2FPUm5WTmcxTkYrOEdEVFRwbzV5YmJZSHFMdVhqbGQwdXMyUmQ5?=
 =?utf-8?B?Smlqb0lQSE5VYms3NHd1SFRIbklxQ0Z0WVJYN2J1SlBoU3djM3NBVnVhUkdW?=
 =?utf-8?B?TmZjNDQyTm0zUDlQeTc4cmRkQmh0NVNkKy9JRThEK05zMWYyeDRpOWNRWW1a?=
 =?utf-8?B?OGdRa2JSamNHUHpjeDdpK0xHdUw0SGtjN1ZtK3hSYktsZkRuK2pXSnZoWVhp?=
 =?utf-8?B?M2pQQSt5UlJJNEVWSDdLbUZjNEZjcllwbHpub0VObzBJY09GY0ExOXAzSUla?=
 =?utf-8?B?SXNhbllvZlBlN25zcUdEUzZYS1UrajU2THlFVS9xN29xYmZuZjRRQzd6N2xq?=
 =?utf-8?B?OVZHdlhBbHpwMnpVcDF2K0lodThQeSs4R1I3eFIxRUdHbVJrNit4UjAwU1Fn?=
 =?utf-8?B?eUJnZmQ5a2NPSzVXK1pYUDZ1cm9Sd2ZzbWtLOGFhcWJRLzNTb3ZoTEFibnp1?=
 =?utf-8?B?eC9VK1IyM2pxR01vYzVnNER6b1F2Y29KNWpNRkxyaVJ0TGg0aWNzcUhFTjBO?=
 =?utf-8?B?V3oxejllNnZpN1lvbkhMNklRNTdxNG5Gd3JBZXQ5QW1DSWRKbGM5Y0NZQlBi?=
 =?utf-8?B?M3pqTTZkS1RaRzF0cEVJaFplRjU0K2hYQ3Z1RmdaY1FDUnF6ckVzZnEwQ2Fi?=
 =?utf-8?B?bFFhZzB3c0l4eFUxL1V2eDd2SlowZCtPU0FGOEJQZGI5UTdWY28vSnJpOWE5?=
 =?utf-8?B?a1pGeGZEZytUNCs4anNVNTBEUVBXeStjcFZVK0VFdEFzb0pnOTdJL1VJZEZk?=
 =?utf-8?B?MGpNaW5vclFIbWJ0QVYraU5IVWJoRWZDMWY3OWtEM2ZWQVIvU1FCWTZqRTFU?=
 =?utf-8?B?dnN0L2xBS2dMUy9GVExEWUtYbFFRbXlHaG84SG1yaVp6N2dPbDhscnRyYVBo?=
 =?utf-8?B?R2w2UHZmWHlCVTBtN1BmWmRPU2Uzdm1iU3JWWUJ0dmRjZU5BNXd0TmVOZUlV?=
 =?utf-8?B?eldaa2x3NTlib3NiVEpSRTZmZEk2cXY4Z3diczhXQmpGazBGNmw1SWNVdm5E?=
 =?utf-8?B?aGduN3JKSlBQMTB4UEVORjBOVWhxalNMSWhBRVFva0pGZXQ0NW9BWFBlNGJD?=
 =?utf-8?B?U1h6N2wxd3RRZGhha2cyTk9RTHlqYXRNSnZ1bHA2dm1SaHVsdlFXYlJqOEVR?=
 =?utf-8?B?djJjellZcEd4MDQ1SDZzYmdXSUdlVGVBNkI1VSsvbkRvaVVOU093eDZibVN1?=
 =?utf-8?B?ajZXQlAwamVQdHk2RUlpd0JlL1d0Q2dORWdzNk1hMy9jUHN2WW43SHBVcEZa?=
 =?utf-8?B?MU9FaDZRblduTFB0bnduOUlILytiSHpCdnVFODM1ZHZRcDZhdG95a1RJTFZT?=
 =?utf-8?B?YldNYkJGdXYvRXZTSXk2ZDFqdFhPc1Vnek1tbmVjR1pGWm4rQW55UGNIVDhX?=
 =?utf-8?B?SG5lemNLUkYzMUFTQ0x2LzhiMStsQUJDUFc1VmMwQ0h6YVhQZnpmVmVaWFJK?=
 =?utf-8?B?NnJyYkQ2dmJmQ0t2RHJGZ25ZazBTUVp1c1lDNU5nemlQSDdyYi95Y29yWWU3?=
 =?utf-8?B?SllaTFFiNW1mYUVBZm41U0xHUVFKOUsvMFF5ZElOT1lxYm1iWXNja3YrMU04?=
 =?utf-8?B?eUVMVk9VNStVVDdOQnAzcHI4cFRXaXFjQmVOWmlxQXRvWUJlT2xld09mUG40?=
 =?utf-8?B?OTBzSElzR04vV1gwY0kxYm5vVkN4K2ptSUVuMnJSc243dTQ5c3JDbkhFcHNQ?=
 =?utf-8?B?cVI0enJEWDVXYnVYOGV5WmxUSDVqemlKaDBZWnVpMmdqckpBckFtaFdDQnZT?=
 =?utf-8?B?K0QrU0pXN1krWUZqZE1adFBNeUx0VUJ4N3B1SHY5cEpiKzlZSUkzUkpXdlUw?=
 =?utf-8?B?cU9QbUNrOU5KVGpmZGFEeHBzdlBMa2dtR0lzM2c3Y0MzY2JzR01mcldvRldv?=
 =?utf-8?B?b0xiRzYyUE5RazVuS2VtSXZ1WjNJOUhWMWZXQW52WHVHQk5hMEdiVkRmVW5U?=
 =?utf-8?Q?Q5FI8wFoa0Jexu9b4+y056MFY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df03cd5-5fd2-41e1-8a80-08ddfb6a11bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 12:58:33.9058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugwCpLG1Y/87gMxVZviEmKVldGlEG/4kN5awnUKSJSiF98I4FX83O3Akx6t0DXYfnXpd1VuqlhZXuPE6lFQ9sPS8rqXjk3pkDPl93GbUgrc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758719151; x=1790255151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NH/1zhmUeHWRpYHKzvYpv6BkgZ2h+ifO5XT+8FZLiV0=;
 b=X3W/5NxPw0xwdPJi2dHBJey41EEDq//gycKjylyQe/YPTp7Y8XabirH7
 r9uXZS2youBYzA3ZXQKfOnPN/3xisItoHG8auHAOKBmgFkEo1FsCuxuNO
 Q3E+X4R9oXbM0Nn94Counh4Z6n3CtDEQszZvsQntq3UIvf0ZK8MkCoNI1
 z+1qPhVMB3CikmhDBSTqopNsi47ydOICPLdW1/PGF3Vz3JAvttYKES2mr
 BMo5I/8B3qkRp6Btv8znfDKWnP2X9ejKCdxEbK0sw6d3IzZBX3uhPF/rl
 k5SngPYDJrsylQQhrjNywCmzeFO5OV5esYBJBLSHcYOX4zMr7bCc2+MG8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X3W/5NxP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] idpf: add support	for
 IDPF PCI programming interface
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMaW5nYSwgUGF2YW4gS3VtYXIg
PHBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbT4NCj4gU2VudDogNCBTZXB0ZW1iZXIsIDIwMjUg
MjA6MDUNCj4gVG86IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gQ2M6IGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBtYWRodS5jaGl0dGltQGludGVsLmNvbTsNCj4g
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgU3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRy
YWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBu
ZXQtbmV4dCB2NF0gaWRwZjogYWRkIHN1cHBvcnQgZm9yIElEUEYNCj4gUENJIHByb2dyYW1taW5n
IGludGVyZmFjZQ0KPiANCj4gDQo+IA0KPiBPbiA5LzMvMjAyNSA1OjUxIEFNLCBTaW1vbiBIb3Jt
YW4gd3JvdGU6DQo+ID4gT24gVHVlLCBTZXAgMDIsIDIwMjUgYXQgMDg6NTg6NTJQTSAtMDcwMCwg
UGF2YW4gS3VtYXIgTGluZ2Egd3JvdGU6DQo+ID4+IEF0IHByZXNlbnQgSURQRiBzdXBwb3J0cyBv
bmx5IDB4MTQ1MiBhbmQgMHgxNDVDIGFzIFBGIGFuZCBWRiBkZXZpY2UNCj4gPj4gSURzIG9uIG91
ciBjdXJyZW50IGdlbmVyYXRpb24gaGFyZHdhcmUuIEZ1dHVyZSBoYXJkd2FyZSBleHBvc2VzIGEg
bmV3DQo+ID4+IHNldCBvZiBkZXZpY2UgSURzIGZvciBlYWNoIGdlbmVyYXRpb24uIFRvIGF2b2lk
IGFkZGluZyBhIG5ldyBkZXZpY2UNCj4gPj4gSUQgZm9yIGVhY2ggZ2VuZXJhdGlvbiBhbmQgdG8g
bWFrZSB0aGUgZHJpdmVyIGZvcndhcmQgYW5kIGJhY2t3YXJkDQo+ID4+IGNvbXBhdGlibGUsIG1h
a2UgdXNlIG9mIHRoZSBJRFBGIFBDSSBwcm9ncmFtbWluZyBpbnRlcmZhY2UgdG8gbG9hZCB0aGUN
Cj4gZHJpdmVyLg0KPiA+Pg0KPiA+PiBXcml0ZSBhbmQgcmVhZCB0aGUgVkZfQVJRQkFMIG1haWxi
b3ggcmVnaXN0ZXIgdG8gZmluZCBpZiB0aGUgY3VycmVudA0KPiA+PiBkZXZpY2UgaXMgYSBQRiBv
ciBhIFZGLg0KPiA+Pg0KPiA+PiBQQ0kgU0lHIGFsbG9jYXRlZCBhIG5ldyBwcm9ncmFtbWluZyBp
bnRlcmZhY2UgZm9yIHRoZSBJRFBGIGNvbXBsaWFudA0KPiA+PiBldGhlcm5ldCBuZXR3b3JrIGNv
bnRyb2xsZXIgZGV2aWNlcy4gSXQgY2FuIGJlIGZvdW5kIGF0Og0KPiA+PiBodHRwczovL21lbWJl
cnMucGNpc2lnLmNvbS93Zy9QQ0ktU0lHL2RvY3VtZW50LzIwMTEzDQo+ID4+IHdpdGggdGhlIGRv
Y3VtZW50IHRpdGxlZCBhcyAnUENJIENvZGUgYW5kIElEIEFzc2lnbm1lbnQgUmV2aXNpb24gMS4x
NicNCj4gPj4gb3IgYW55IGxhdGVzdCByZXZpc2lvbnMuDQo+ID4+DQo+ID4+IFRlc3RlZCB0aGlz
IHBhdGNoIGJ5IGRvaW5nIGEgc2ltcGxlIGRyaXZlciBsb2FkL3VubG9hZCBvbiBJbnRlbCBJUFUN
Cj4gPj4gRTIwMDAgaGFyZHdhcmUgd2hpY2ggc3VwcG9ydHMgMHgxNDUyIGFuZCAweDE0NUMgZGV2
aWNlIElEcyBhbmQgbmV3DQo+ID4+IGhhcmR3YXJlIHdoaWNoIHN1cHBvcnRzIHRoZSBJRFBGIFBD
SSBwcm9ncmFtbWluZyBpbnRlcmZhY2UuDQo+ID4+DQo+ID4+IFJldmlld2VkLWJ5OiBTcmlkaGFy
IFNhbXVkcmFsYSA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPg0KPiA+PiBTaWduZWQtb2Zm
LWJ5OiBNYWRodSBDaGl0dGltIDxtYWRodS5jaGl0dGltQGludGVsLmNvbT4NCj4gPj4gUmV2aWV3
ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gPj4gU2lnbmVkLW9mZi1i
eTogUGF2YW4gS3VtYXIgTGluZ2EgPHBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbT4NCj4gPg0K
PiA+IEhpIFBhdmFuLA0KPiA+DQo+ID4gU2hvdWxkIHRoaXMgYmUgdGFyZ2V0ZWQgYXQgaXdsLCB3
aGVyZSBpdCBhcHBsaWVzIGNsZWFubHksIHJhdGhlciB0aGFuDQo+ID4gbmV0LW5leHQsIHdoZXJl
IGl0IGRvZXMgbm90Lg0KPiA+DQo+ID4gSWYgdGhlIGxhdGVyLCBJIHRoaW5rIHRoYXQgYSByZWJh
c2UgYW5kIHJlcG9zdCBpcyBhcHByb3ByaWF0ZS4NCj4gPg0KPiA+IC4uLg0KPiANCj4gTXkgYmFk
LiBJdCBpcyB0YXJnZXRlZCBmb3IgaXdsLW5leHQsIGJ1dCBJIG1hcmtlZCBpdCBhcyBuZXQtbmV4
dC4NCj4gDQo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ugd2FudCBtZSB0byBjb3JyZWN0IHRo
ZSB0YXJnZXQgYW5kIHNlbmQgYSBuZXcNCj4gcmV2aXNpb24uDQo+IA0KPiBUaGFua3MsDQo+IFBh
dmFuDQoNClRlc3RlZC1ieTogTWFyZWsgTGFuZG93c2tpIDxtYXJlay5sYW5kb3dza2lAaW50ZWwu
Y29tPg0K
