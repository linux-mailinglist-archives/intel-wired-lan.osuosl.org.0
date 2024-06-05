Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDE98FD5B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 20:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4088C4167B;
	Wed,  5 Jun 2024 18:27:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q1Y2Aha9NEgp; Wed,  5 Jun 2024 18:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F1AD4167C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717612059;
	bh=Dg67DVQ0EvOz4qKiUvsohsvfvSSdNOFxRYgt0ekipm8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8wPGuWVsjWqBBYQUMX6jRvgfAU/xq2twu5JU2avyt9j8/osddmWqfxa6DEzdtTNba
	 Sf4eF2pIIpt5zP2MOc/Z3njiQ50zUYL4DW+15YS932BqP1uq85ku9y+M5ts+H2AM2B
	 q0dDoEn7ETKnYBKWki+UFodsh0sQj0EgStCb7l1MCHIK8h/oN2jYddFpNjOHWLqfIU
	 cWu8ms+VeQru9hL8C2LGzYXv81vKh3Mp4AkR1CTzRpJ0vcW1lf0maQvX6E2vLvk7g1
	 jhZKst1vLitYpYyFXnoRDfSY07tG2kXO3Mjy464dsoWLhwRKHNL1WCtayxzC+IqaCY
	 jS9A3Y/98j34Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F1AD4167C;
	Wed,  5 Jun 2024 18:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5128C1BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 18:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D9C860748
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 18:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U5zGBOw5e-cd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 18:27:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 143606069A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 143606069A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 143606069A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 18:27:34 +0000 (UTC)
X-CSE-ConnectionGUID: WhyNsHBhS5eEwNFt/TCYUA==
X-CSE-MsgGUID: UBu9uSj4Q5aoDy/3v3DKAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14379558"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="14379558"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 11:27:33 -0700
X-CSE-ConnectionGUID: t3gLZnc+RmCKob4xBPbvAA==
X-CSE-MsgGUID: RWi8oeceQJyFU0MyYziBJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="37568457"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 11:27:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 11:27:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 11:27:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 11:27:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2SUe1rkN7PuJNnZGHkLEX0ZTEVHf8m5I2nWnJlXAjcIrUPnOCBDd91L+wajvIx2CTIJyAi6b/GC9+ETHoJQGYRieh1IQIZOv6Oi6YWhUY74uN8MgFGwsn2/dnEQW9C6rHaG6VQ1jEiTvkRkuJgoeFYUcYPcUMwBXgH+99iJ5eMvQxfTG0r77wUf87xw+aeWd/4LFjs0osGOaI19qIjLvsjDwYYo/U/Ul6ZiojhYtivr8hROToBRJlBXqRxLIyrjmiK6FR8beguAESW4/VTwdfmEOlzRiszux/WivQ6esJSJB8o9Aj2Qw9+vYF66Ti+E1+Tc9+UMd/MUFYhucPH5IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dg67DVQ0EvOz4qKiUvsohsvfvSSdNOFxRYgt0ekipm8=;
 b=Rs874uE27xd8t0u+AuArdXf5GiXV4TGeurlCF6eB1hHuB3vbetsbqUF8i6a+bEhdqEwA1np3ijRSjZyZZVQzd5jhVovpI0JhjrTfdhUpDav8U5VizlM+bZfw5HyKfbXZVmHeV3e67q1Z/d2lit7s6a+wPk+Chh+gzdlP6TiaNFVARjBOoB8eSmWauMpe5R6EJ/QymmNnk8r9P6xsNZ9TTsOiUL1Ket8UFK2DYTSmXr4KMFOj3+cuzU4Q2xdCaN/HLuiLJEPzI7f+snPR9twctC6j6VuXBsBLOiuhyHHRe1LrQCwx8sfOVmkzcV5qcnUkoG7dSEzkZCjRQthhcsYHrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Wed, 5 Jun
 2024 18:27:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.021; Wed, 5 Jun 2024
 18:27:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Gal Pressman <gal@nvidia.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>, Jakub
 Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v6 1/7] net: ethtool: pass ethtool_rxfh to
 get/set_rxfh ethtool ops
Thread-Index: AQHaG/QP185W+Ikg/kG7KHZafeRsILCFbSEAgAjTIoCBLGdRAIAADDbw
Date: Wed, 5 Jun 2024 18:27:25 +0000
Message-ID: <CO1PR11MB5089B72A5B0BFDE1ADC68472D6F92@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-2-ahmed.zaki@intel.com>
 <20231121152906.2dd5f487@kernel.org>
 <4945c089-3817-47b2-9a02-2532995d3a46@intel.com>
 <1e32711c-a89d-40e6-9b34-485b58a3c9a6@nvidia.com>
In-Reply-To: <1e32711c-a89d-40e6-9b34-485b58a3c9a6@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA2PR11MB4921:EE_
x-ms-office365-filtering-correlation-id: 20c9fa06-1931-4bbc-9488-08dc858d25e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|376005|1800799015|366007|7416005|38070700009; 
x-microsoft-antispam-message-info: =?utf-8?B?VEhJNHhsWjgxeFBoL3BoY3J3UTRFTE1LRkkyc2tHWnZBd2xVQWVLMUdmNnY2?=
 =?utf-8?B?OU11QVhVeE1KL2pJN2RwRlE3ZjR0ZjY5NTY1d2lyRGNRakJsaVNaZDZocFlp?=
 =?utf-8?B?T29yQVEwUVVRRkRuNjdqNW85RW9Za05FQ2xEbHA4cm53Wm50K2NVdWRPNlI1?=
 =?utf-8?B?YUVlRDFNSUl0blJGMlhvT3dJQXY5R2RBeUpRbzNPQ2JwckxITUtjRmttdG5V?=
 =?utf-8?B?NW9HWjYvS2E2Ni9BQS9UeVdjNzlqbUc1aERnS0U3aUQzMGJqUStqcTRVdzVM?=
 =?utf-8?B?N3FISmpQRGxPV01OVnhJYnlweVhiczhaeXNmcnBlWFdUN0xpWXJFcTFyUnkx?=
 =?utf-8?B?RWd4bDFLYys5UTEyaFdmR3MyMENLeWVUdUNtcGRrMWFCWFNzQWhmYXRDYVZl?=
 =?utf-8?B?dDdwSVhUQjJWams4elArSHhpSUxZLzRscGNDZkxuUDBEZ2lnMUF3aFZLcHU4?=
 =?utf-8?B?N1Q1L3ZCU1U0dUF3ODZkYmlsQTNNM3h2QnpaelhFSVZ2MkdacGxkdUFBRThz?=
 =?utf-8?B?SnBOUXp5aFRWZ3BZclpSLzN5TWU2Rk5admdkdzlSQnY2M3RwRmE4THk2N1lh?=
 =?utf-8?B?bzgwaTNxTTB1RVdRaWZ0bnJYMkNudjFiN0o4UCtWVUQrdmw3dlB1bVlwc3ZI?=
 =?utf-8?B?SENzVEh3SE14MkM3aEV2S29LV1haOXZGTU1HRERHYmo3RGlaeWx1REZ6TXQv?=
 =?utf-8?B?M3lPUXRJeHIvVjNnM0hBN2lPQ09XTzZJSGpEcjA5WVoxVGxTc1ZBT2l5WFFL?=
 =?utf-8?B?dkJ2aEt0SEpyQ1FKTWJ0cGF6bEFBY3dxbksydTFDWldCUlpHQ1B1V3BpQnZo?=
 =?utf-8?B?TnFmekd0V2dMVVlVRXpvc1BGN0V0d3pBcjNwM3hGekVQMTJpeDRBd0dGdzEx?=
 =?utf-8?B?VkNmeEpxY1dMQ2pGaHZqc04wcHdZRzlXdGQySFlPenhEdXR6Tjhrcmd2M052?=
 =?utf-8?B?eE54dzFwYlZSRWVPU25ldnk1SUkyRTVmY3kvaE1aWnB2VHlWR1NHcHdXVTRY?=
 =?utf-8?B?cThKYVpJem5UZU5sZVMxTTA5eWE4VDhINEtmRHNBbFBDK0dWV3lOSnZVRDBj?=
 =?utf-8?B?VkN6Z3dOVjNBUjJWSEVKWjBxejhIUTBCaDVrQzB4N1BTMjhQbitVRG11QTE1?=
 =?utf-8?B?S0J6ZjV1eTV6NEtMcjhkVis0VXQ5dERjRnUwZjNiNnRldWtJMEJJL1hhN0NL?=
 =?utf-8?B?elUwNjh1dTlvcUtva3pONFlFeExFRVMyajBhdkZPOGkybGdrcmI4cmFuMFAx?=
 =?utf-8?B?bWlETThvVWNETVlQblhUT3NFSjA1aUFCcE1ZNXMraW1CbGIwUUpMcHBDWFd4?=
 =?utf-8?B?azZiUFpYb1d6UVA1MTJIaUljZ2FCRTQzeFcrWG40U0VVMU95STZBRWlTWE1O?=
 =?utf-8?B?RnNRZ09oVmZVcFgzTEJtOWdjTmF5YWlKMVhFMXZwOXlEVU1PY29xam9DS2h5?=
 =?utf-8?B?eXpNOGhwNDcwTm1BU1EvcURkVlNwWjEzeTA2NW8wUDE1R21MRmZWaUVneTZl?=
 =?utf-8?B?OTgvSys4ZWpaMGRENjFvUWtINGdxSVFMTURrUGJ6cm1uZ2diZkRMTlM0c0Zn?=
 =?utf-8?B?eEdOMkxVOUw5U1VPQU14UktzaEJxSUtTVW1wVDMyL0QvcDZoUlAvZzZoQTg5?=
 =?utf-8?B?Q3RJbDJqbkNES1BqYlIvb0Vub20rTE5WRUtGUGhVUFlCVjcvcHVoakFEbXAw?=
 =?utf-8?B?aHY0UFB6ajNhdW5zbmd5TG11MFpnYXBMbmNndHZIaWNicG5PTEphT2gvMHFV?=
 =?utf-8?B?Y1Vjdzk3Szl0Tnh6U043OVRVbUo5MGdEODIrWW5JZzZ5bFR2UTgxYUw3Nnln?=
 =?utf-8?B?bHptRGJ3Qk9Xb0g4Rm9tUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(7416005)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDEwRWZDS2lJSDYrSmdCd3U2czFoQ3NaME9WT3RkM2toQjRWVzhvQThYU1NP?=
 =?utf-8?B?dW5xRlFqTlBRc1ZVclJSdzZBZlU3dEZnZHRUMFQxTVlIV1F4TU9oRUNxQjBY?=
 =?utf-8?B?VktvaGRrTXFVT2NxTS90eDIyL2RyZ0Z0K0NTMHZ2czZERXZycFF5ZVBYTjh4?=
 =?utf-8?B?YjJzWTdpR3R0QVhybEQ2Mm1xQzFMSDluRDFmWHBKQ3l2eHpOZXVCZEJPbnpD?=
 =?utf-8?B?aSs4NitQR2FKQURiWitHekg0djR3dWFkQTNkZzVud0pRTGJ2UTJ2ejlvb2o4?=
 =?utf-8?B?V1cvczZXY3BLVUJNZWl5SnVBNnZIWGJsbWcvNG1ZMnlOLzVKWlJWSVVYWTMv?=
 =?utf-8?B?Z3ZOSXRKRFIwc2M3V1JRODZzby9qSzhkM1BoOUhTd1VqRFNsaEVPckg5RTNI?=
 =?utf-8?B?bDU1RThQK3htb2dwVUg5UGdVeUI5cnJQakFQVWJCdXNaNDZZcUZtU3Y3TEF0?=
 =?utf-8?B?cGszNkRNeUZ1aGdjUkNMR3l2TmRQQ2tnUldzbXZvYzVNTG5ubS9QR25IS1g0?=
 =?utf-8?B?NDJoaXM1WW05STFKYjFsUG14S0RkaWMxQ2lQSUZwbVpMQ2FZUitpQldNaVpH?=
 =?utf-8?B?QkxndE55UkVPVGpMV3ZkTW9nTGp3QUp5cjIwRjdTS2NybzcwbCtnLzdBb2w3?=
 =?utf-8?B?Z0ppL1ZBNDRVallmS3NnMFhSSnArSmtXWUE5cjQyNW9NaWt3WERvc1REUnUx?=
 =?utf-8?B?S0U5MUltUWhWVnRUUmRIMExZWTMrS2RIVmZRR2FyYUxzQlJBYkdMM0Voc2xL?=
 =?utf-8?B?Z29KWFY4djdKMUFaaFZaY1kzSVVOaVA0RjdTRmpaNlRzMUtMVC85NExOMmlt?=
 =?utf-8?B?SitkczQ3Vzllb3I5eTNLUCtVeTFzOElOODNMbVZBd0JBSnZQRGN1YkRsUUpy?=
 =?utf-8?B?Q04wZUo1RkNwSllWaWhyamgraU0wN05qN1owU1lVcUJ1TDhFUmtTeXcyb3Za?=
 =?utf-8?B?ZWRqaHlMdmt2WXgvdkt1bGliMHZ1dWI5eFRJa2VjTlVOSjFPZHZnZk5DL2Q0?=
 =?utf-8?B?RlpTblEzbitTczJ6OHNpMGQrWHNzdG5GRFI4a2toWVRSakRCa0dNVVRDMjVY?=
 =?utf-8?B?TnowUmptZ0tQZWlpZGphWVVWUUVIbUsrQUpBRk5sZmFBc2xkUDlWL21OQ2N1?=
 =?utf-8?B?VW0reHVMd09NK1F3SjN2VEM1Ry9DMnpJK1FidzJKcXBIZ1plYTJCSVdBZ0tP?=
 =?utf-8?B?bFJTdUJpQkFmekV3ZlQ1bEp3d0RiVGQ5VGdhRXY0anhncmFSZWk3dWxlWXRj?=
 =?utf-8?B?YzFZU3l2MmJrWm5idkw1WVN5ZFhVRForYk85UjhwM0tEUWd6TmZ5dGpwSk5P?=
 =?utf-8?B?VU16RVdGTmhkRFBIcm8rUkVWTUY1dEJTdktoN1U5UGdRKzhEU210WUg3ZE5O?=
 =?utf-8?B?d0wvY0dmSWFxVUMxZWVvc3lRc25hQmFlN0ZhbFlxU1BGVGhJSU4rYXF5VUJD?=
 =?utf-8?B?ZDQyb0RpYks2ejFEbk5ocE9uZ29PVGZ0M1BmeHREVjhhbVlUWGRYeGROSW83?=
 =?utf-8?B?QWVzaXJGYy9BUHpHZVRUK3lIeGJ3ODJiVEtleGhtYjJtV3lGMXZ6T0xFNkMv?=
 =?utf-8?B?eFlmeGN4TzA5Zm4wTmk1cFVpSlBlT0tteGFGc20yUHorL2pRME1FM2dXMjRk?=
 =?utf-8?B?TXI5T2dQYUd6SUduSFRLQW5xQktTZEMyTWJFMitUT1FNV2MzcWxRMm0zSE9u?=
 =?utf-8?B?anRvLzFBVFZWTzZXTGxybkMydzVVcXNuZW4yd0lweVMybEh3amFFai91aDhP?=
 =?utf-8?B?bW8xQlpmajM3b0h5VTFoSU1Ia0RwVzhzaXJJT1RjakY2djNka213VE9adUwv?=
 =?utf-8?B?Sm9JK3IyVE1GL1JxZ1lGTTF2L1RCaWJyczlZUStQdUtLbXlCUWluNldzMnpL?=
 =?utf-8?B?cERhbEovRklRdHFITWw5SUlaOXNmUHNmVmMzcGhLSXRaTEwxbGlHSEd0d1c0?=
 =?utf-8?B?aVJBT2hkQkVnc1d5NWJlTVhySDV2ZWpGdzNKT3dSOGdRZVpCNjdGQUVGYWNs?=
 =?utf-8?B?amxxZXNDRTlVSUdiNGdkeTBod0s4Y1dhT21oRWU1SFhSZTJVRU8weGlzblhO?=
 =?utf-8?B?UzJNUENZeThIS0VvdDFRQTVpcnk3d3EweHgrUUdGZHZqUHE0N2lxS25pYjlR?=
 =?utf-8?B?ODVaejZqN2hlNU9GNXYrcmtjSThtOTFBcWZ4Y1NvaHFhdkh6WkRvNnhaNDI4?=
 =?utf-8?B?cmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c9fa06-1931-4bbc-9488-08dc858d25e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2024 18:27:25.2061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VnSB2FqeK0t0kkIj1J/1OpE3YnufQ9bqv+EPVq7X1AMlSyb8nwZBdXiQbC1pceiJlZPxCALKv/vIoJsPibfj3/6RKBATzKhQZsyg/tslvug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717612055; x=1749148055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dg67DVQ0EvOz4qKiUvsohsvfvSSdNOFxRYgt0ekipm8=;
 b=S/8/rLeIYVd9xGPLHvDM7uXDWVlPAJgNxjA61Cx48BMUXByvedAEzfRX
 KdGqhq1NjNn13qDj9s1uexwqk8Q5/XmGIB9pq56IdFfWpy4TmrpCnJ87y
 E/vKu+PzhsXM38YWFq91ZExFFVUFLwcr7KLAVxc3AFUhNC0gxtSmLwe03
 rpN+j8Qq414x+Bs0QtDAsXvOjGeXzlRRf61xQ1aZpUK26EziUItDP3zdV
 0PJkJnKt3ro9bv62MEWKE7+QUyJa7LHq7AYKYWAYMORjLntrHl1fPVHO8
 aKwDBh8+XIuZkGB4ZOCyUx1X5H4Pmxiz707gQECXxHrg6Q6CSOjoTqZGF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S/8/rLeI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>, "edumazet@google.com" <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR2FsIFByZXNzbWFuIDxn
YWxAbnZpZGlhLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDUsIDIwMjQgMTA6NDMgQU0N
Cj4gVG86IFpha2ksIEFobWVkIDxhaG1lZC56YWtpQGludGVsLmNvbT47IEpha3ViIEtpY2luc2tp
IDxrdWJhQGtlcm5lbC5vcmc+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgY29yYmV0QGx3bi5uZXQ7DQo+IEJyYW5kZWJ1cmcs
IEplc3NlIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1h
emV0QGdvb2dsZS5jb207DQo+IHBhYmVuaUByZWRoYXQuY29tOyB2bGFkaW1pci5vbHRlYW5Abnhw
LmNvbTsgYW5kcmV3QGx1bm4uY2g7DQo+IGhvcm1zQGtlcm5lbC5vcmc7IG1rdWJlY2VrQHN1c2Uu
Y3o7IHdpbGxlbWRlYnJ1aWpuLmtlcm5lbEBnbWFpbC5jb207DQo+IGFsZXhhbmRlci5kdXlja0Bn
bWFpbC5jb207IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmc7IEJhZ251Y2tpLCBJZ29yDQo+IDxp
Z29yLmJhZ251Y2tpQGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIG5ldC1uZXh0IHY2IDEvN10gbmV0OiBl
dGh0b29sOiBwYXNzIGV0aHRvb2xfcnhmaCB0bw0KPiBnZXQvc2V0X3J4ZmggZXRodG9vbCBvcHMN
Cj4gDQo+IE9uIDI3LzExLzIwMjMgMTY6MTQsIEFobWVkIFpha2kgd3JvdGU6DQo+ID4NCj4gPg0K
PiA+IE9uIDIwMjMtMTEtMjEgMTY6MjksIEpha3ViIEtpY2luc2tpIHdyb3RlOg0KPiA+PiBPbiBN
b24sIDIwIE5vdiAyMDIzIDEzOjU2OjA4IC0wNzAwIEFobWVkIFpha2kgd3JvdGU6DQo+ID4+PiDC
oMKgwqDCoMKgIHUzMsKgwqDCoCAoKmdldF9yeGZoX2tleV9zaXplKShzdHJ1Y3QgbmV0X2Rldmlj
ZSAqKTsNCj4gPj4+IMKgwqDCoMKgwqAgdTMywqDCoMKgICgqZ2V0X3J4ZmhfaW5kaXJfc2l6ZSko
c3RydWN0IG5ldF9kZXZpY2UgKik7DQo+ID4+PiAtwqDCoMKgIGludMKgwqDCoCAoKmdldF9yeGZo
KShzdHJ1Y3QgbmV0X2RldmljZSAqLCB1MzIgKmluZGlyLCB1OCAqa2V5LA0KPiA+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1OCAqaGZ1bmMpOw0KPiA+Pj4gLcKgwqDCoCBpbnTC
oMKgwqAgKCpzZXRfcnhmaCkoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3QgdTMyICppbmRpciwN
Cj4gPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgdTggKmtleSwgY29u
c3QgdTggaGZ1bmMpOw0KPiA+Pj4gK8KgwqDCoCBpbnTCoMKgwqAgKCpnZXRfcnhmaCkoc3RydWN0
IG5ldF9kZXZpY2UgKiwgc3RydWN0IGV0aHRvb2xfcnhmaCAqLA0KPiA+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgKmluZGlyLCB1OCAqa2V5KTsNCj4gPj4+ICvCoMKgwqAg
aW50wqDCoMKgICgqc2V0X3J4ZmgpKHN0cnVjdCBuZXRfZGV2aWNlICosIHN0cnVjdCBldGh0b29s
X3J4ZmggKiwNCj4gPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgdTMy
ICppbmRpciwgY29uc3QgdTggKmtleSk7DQo+ID4+PiDCoMKgwqDCoMKgIGludMKgwqDCoCAoKmdl
dF9yeGZoX2NvbnRleHQpKHN0cnVjdCBuZXRfZGV2aWNlICosIHUzMiAqaW5kaXIsIHU4DQo+ID4+
PiAqa2V5LA0KPiA+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHU4ICpoZnVuYywgdTMyIHJzc19jb250ZXh0KTsNCj4gPj4+IMKgwqDCoMKgwqAgaW50wqDCoMKg
ICgqc2V0X3J4ZmhfY29udGV4dCkoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3QgdTMyICppbmRp
ciwNCj4gPj4NCj4gPj4gVGhpcyBjb252ZXJzaW9uIGxvb2tzIDEvNHRoIGRvbmUuIFlvdSBzaG91
bGQgZG8gdGhlIGZvbGxvd2luZzoNCj4gPj4NCj4gPj4gwqAgLSBGaXJzdCBzaW1wbGlmeSB0aGUg
Y29kZSBieSBhbHdheXMgcHJvdmlkaW5nIGEgcG9pbnRlciB0byBhbGwgcGFyYW1zDQo+ID4+IMKg
wqDCoCAoaW5kaXIsIGtleSBhbmQgZnVuYyk7IHRoZSBmYWN0IHRoYXQgc29tZSBvZiB0aGVtIG1h
eSBiZSBOVUxMIHNlZW1zDQo+ID4+IMKgwqDCoCBsaWtlIGEgd2VpcmQgaGlzdG9yaWMgdGhpbmcg
b3IgYSBwcmVtYXR1cmUgb3B0aW1pemF0aW9uLg0KPiA+PiDCoMKgwqAgSXQgd2lsbCBzaW1wbGlm
eSB0aGUgZHJpdmVycyBpZiBhbGwgcG9pbnRlcnMgYXJlIGFsd2F5cyBwcmVzZW50Lg0KPiA+PiDC
oMKgwqAgWW91IGRvbid0IGhhdmUgdG8gcmVtb3ZlIHRoZSBpZiAoKSBjaGVja3MgaW4gdGhlIGV4
aXN0aW5nIGRyaXZlcnMuDQo+ID4+DQo+ID4+IMKgIC0gVGhlbiBtYWtlIHRoZSBmdW5jdGlvbnMg
dGFrZSBhIGRldiBwb2ludGVyLCBhbmQgYSBwb2ludGVyIHRvIGENCj4gPj4gwqDCoMKgIHNpbmds
ZSBzdHJ1Y3Qgd3JhcHBpbmcgYWxsIGFyZ3VtZW50cy4gVGhlIHNldF8qIHNob3VsZCBhbHNvIHRh
a2UNCj4gPj4gwqDCoMKgIGFuIGV4dGFjay4NCj4gPg0KPiA+IENhbiB3ZSBza2lwIHRoZSAiZXh0
YWNrIiBwYXJ0IGZvciB0aGlzIHNlcmllcz8gVGhlcmUgaXMgbm8NCj4gPiAiRVRIVE9PTF9NU0df
UlNTX1NFVCIgbmV0bGluayBtZXNzYWdlLCB3aGljaCBpcyBuZWVkZWQgZm9yIHVzZXItc3BhY2Ug
dG8NCj4gPiBnZXQgdGhlIEFDSyBhbmQgYWRkaW5nIGFsbCB0aGUgbmV0bGluayBzdHVmZiBzZWVt
cyBhIGJpdCBvdXQgb2Ygc2NvcGUuDQo+IA0KPiBIaSBBaG1lZCwNCj4gDQo+IFNvcnJ5IGZvciBy
ZXZpdmluZyB0aGlzIG9sZCB0aHJlYWQsIEkgbm90aWNlZCB5b3Uga2VwdCB0aGUgZXh0YWNrIGlu
IHRoZQ0KPiBzZXRfcnhmaCBjYWxsYmFjayBldmVudHVhbGx5LiBXYXMgdGhhdCBvbiBwdXJwb3Nl
Pw0KPiBJdCdzIHdlaXJkIHRoYXQgd2UgaGF2ZSBhIHBhcmFtZXRlciB0aGF0IGlzIGFsd2F5cyBw
YXNzZWQgYXMgTlVMTC4NCg0KRXZlbnR1YWxseSBpZiBzZXRfcnhmaCBnYWlucyBldGh0b29sIG5l
dGxpbmsgc3VwcG9ydCBpdCB3b3VsZCBiZW5lZml0IGZyb20gYWxyZWFkeSBoYXZpbmcgdGhlIGV4
dGFjayBhcmd1bWVudCBhbmQgbm90IG5lZWRpbmcgZHJpdmVycyB0byBiZSBtb2RpZmllZCBhZ2Fp
biBhdCB0aGF0IHRpbWUgdG8gaGF2ZSBleHRhY2suIFllcywgY3VycmVudGx5IHRoZXJlIGlzIG5v
IG1lc3NhZ2UgdG8gc2V0IFJTUyB0aHJvdWdoIG5ldGxpbmsgdG9kYXksIHNvIGl0cyAidXNlbGVz
cyIgYnV0IEkgZ3Vlc3MgaXTigJlzIGEgbWF0dGVyIG9mICJ3aWxsIHdlIGFkZCB0aGF0IGF0IHNv
bWUgcG9pbnQgaW4gdGhlIG5lYXIgZnV0dXJlIg0K
