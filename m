Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2160B5755F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 11:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CC386F8BA;
	Mon, 15 Sep 2025 09:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B6rnsBZI-GlO; Mon, 15 Sep 2025 09:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 879586F8C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757930324;
	bh=TyIsDmvDqrigHe2UQIV7BB3QTeufKmwaRjgZjs3Y1Hs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3TDR2FeKda+arqhNbKCseGPjcn0Waoe1sf14LXXnwOtk3URtzw6zzxSAMQrcbLli/
	 wf6zkz6Pj8OiJgB6Nfu2C5jqIvLvGwSktZspZvdO0V2rQ8RPO9vsJffQvHV5Tp3gDC
	 e5kLGHmFZJ0xR1Bjs2i/BTSzhDSvKgraUGuPmtT/y77ZTKusbcHk8Ix4AlYLOJ1v6O
	 vrRArLheRz2me9FZxf+wNCkR84571yJU+aDQon420aAdNC4pqZ+tSwYy3A7kwzuYiX
	 I8uaC2ZxeFN2cwU/b5LI0yCtFoG2dO8s3ek9VL2bcuKxjtDcQo/hnNGr1qUU+Cx+m2
	 QGFTJVGRlQoIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 879586F8C2;
	Mon, 15 Sep 2025 09:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EE96F12D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7B7241AEB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qVSyFtQsbH8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 09:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B120E41A5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B120E41A5B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B120E41A5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:58:40 +0000 (UTC)
X-CSE-ConnectionGUID: 5DdcHEGLSGmHF3UtNNdjkA==
X-CSE-MsgGUID: dOxiqeieR2CewEgqiH+vTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60099577"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60099577"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 02:58:41 -0700
X-CSE-ConnectionGUID: P7GdHFe/RhajmkKhAF4lOQ==
X-CSE-MsgGUID: slfY9B07QMev50rQ+hY9Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="174403867"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 02:58:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 02:58:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 02:58:39 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 02:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QCNgCjJ+VGkrPptbR2RY+Auzc+hXkkp6+2+7De8asUwBdrMtNy2NV70YuY1xsCJ2nHu2MTdbgYda+1URHK6fNFCgVXbA5k8/1onrUPOla9wiEZiW4g2Dr9fixIAP6Jqy3ZflM6A/04rbWMxfDxIK5ziS9QsJMYHl/l7jhu9SeC5ZxEw68n8C9XdGECj27UKZq029WrTqt6JuC6iA/vUkfSmDJ5V7s31ek3FYwGMnKQ35J2zGVoP0r5tn5lBEWZ0IlwH05yL/gbE+pwvtAK7H7qNSgag9AyCC+XXSQCSp7hZ7haqYCKOR+1g8Fd/CwWT3RQoRGvUNGZm+nnWQNBbH5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyIsDmvDqrigHe2UQIV7BB3QTeufKmwaRjgZjs3Y1Hs=;
 b=RCtgzOHE4v2ZR0b3fvF8MwYyPxn6169RpAcsMZWkYakEp99biflyC+c8wqIgxZy4alkxrlmhpvwDNTBInXobOtOybdL4X5s8K0Ur1C2GSt6E2EZykAoJRD+VEQIp5i+rYOzcFAU4CtaxSpSmqgc0LQseNhcm7Dht7/l4rHUMXuVuNvH2S/HmxBpablHdrFIgI3HoeueE5BEjuqmiUz6y6G4HkT5gvg3Yl+Y0kXB0mDeI+fOy7RwoLmcP1Yr7co8VoDHd1hPS9R1L8nLvcIcheBwe7pWbBqfKC3YmuPoFSec/V3EBURn3k8NDfjAugE3fL6gJA/hfo0g4etAJgoR58w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS4PPF30373102B.namprd11.prod.outlook.com (2603:10b6:f:fc02::1b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 09:58:37 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 09:58:36 +0000
Message-ID: <679b3ad8-91fd-4570-9e63-c6c5e22a8820@intel.com>
Date: Mon, 15 Sep 2025 11:58:32 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>
References: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
 <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0213.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS4PPF30373102B:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e7b45a0-c00f-4c0d-b9ca-08ddf43e7051
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDRFNzVUdTFiUmZBdGxCN1VHYjdoSUl1YXBpTVJ1amYwRDJNdWNjbVpKc0xV?=
 =?utf-8?B?bWg4Q3d4VE9zUkd5S0xkc3FOb3hXMzJDMytHWWtROHpOSFpvTC90K2hWV0FX?=
 =?utf-8?B?VWt6ZEY1WnBsZ01rZnlBV0tKZGJVTnFJRC9mNTR0T0FKaG5jNU1CUlZva1R3?=
 =?utf-8?B?ZmxrRjVrdHVCY2JmMTRDT1F2T3JOY1BVZHlDMVIvVFRBQXNPM1hJUU5NUXVp?=
 =?utf-8?B?V0cyLzFzYjJpYldVQ0ZUMmhadEkvSHFFRndtUEdzVEUweTZiV29jTDlFYVB5?=
 =?utf-8?B?RWk5OUdHUG5xcUxBdFZIcy9oYkVyWXBTYzBjckIwQkl2bElBMVpiRXJYbUY0?=
 =?utf-8?B?c3NEbXJIWUVremdyc0hHSWVVSHg1TjJlelNSVWZ5cEFoSW8xaHF4MjB4ckpt?=
 =?utf-8?B?WHJmSnpHeXVzOG5UaCttUGZ5LytBaXViUXV0aDJteExOOW1SNng4RGdEb2x5?=
 =?utf-8?B?S3hVR2k3YWZJVFpBUkNQWlVKekxyMko2R1E5WUNXZkdGM08vY09ZMGJXWlFw?=
 =?utf-8?B?cEYzY3B2ZWE0dzVWZ2x5NndVeG9QMFdnbVIrMTBIYmF1c0pkNWw5dnY2YjZG?=
 =?utf-8?B?WXFlaXlaczdLZVR2M21XYWVvWWV0V2lMNGd4WC9CZXcyZUFuTDFRSytFWDI4?=
 =?utf-8?B?aHdhMEFaQVZHQnF2eDd1R0dLTldaSktnWk1ZMFRTNWxHRStpU1NBUkxuU255?=
 =?utf-8?B?WXJack9DY0lWWWlOM3A4akRJc1VRVHNVNEFCRHFad0dIWG5KMXFES2lmb3M4?=
 =?utf-8?B?cXBCVUQ2c1pNaXh6bXVGQ2UvbGFGMzludzVpTHpLTFRFQTg3Y2dzMzR5ZWIr?=
 =?utf-8?B?SS92ZXdhMHM1L3VONG9uQWR1Um14cXdjaWljUXl2OTRDalJ2OTRmOUhGNzJr?=
 =?utf-8?B?V05Xc0YxVTN1RGx0N3lwKzBCekFaSEp5Z0EzVnY3eUJkVVZpNDRCNzA2WFdx?=
 =?utf-8?B?N0xtR1V3V0l0NnlHYktFUml6UzNvY3hSdVpXajNtY2dqbkdMZDhVcERuZG1O?=
 =?utf-8?B?ZUFWOCtnWUUvc0g3UFArdStBQnVCcXBKOHBBZ1Q3elkrc0ZuY0M0STFwMTlC?=
 =?utf-8?B?cnJmaG1hcitkTEFOU0kwWGxyZllFQ2psUDFPRnFRSmpHN0tlRFBxMHE0ZWFk?=
 =?utf-8?B?bnFweU5IbHluajdvN3V3SE52ZGZ4bTN4ektDSG5FS3VGL2hiMWlTT1NJdmll?=
 =?utf-8?B?c0tsQ0tya08xc1FaVFQzN29XMGsvNmhTeG1vY2R0ZXJUSm90VlRkN0JJbGU5?=
 =?utf-8?B?NlRWd2VvSVVua0hKNDQwZDM5RTArWWU2VlpyNmNWZGd1Q3BVQ3VtQ2kyQ0JI?=
 =?utf-8?B?alBTRExYWUpYQjF4RVcxNkxpY2Y4OVVUYmJJWTlpYkJVNE1idTZmSkllZEFL?=
 =?utf-8?B?WHJScWgyMmFaRFFNTFpnQ281aWJydHFLTGtVbTlPV2d5Q09BNmFvWWZQQVhO?=
 =?utf-8?B?bDFKaUN2ZmJESWU0YXJhK0xhWDZCNHFIemtKYTNjVHFUbDhZbzV2aTFCbHNY?=
 =?utf-8?B?RlUwR3RhN0xPVWZiQUNsYXlrT2dxVHNpazNqM3M3TDVMVFFXc2twbmtXc0ZD?=
 =?utf-8?B?SXRlbVY5Q2Z5QWlwNE9zY0ZzcXhPcXdPcHlkQkI0VmVtVVNGRE9BSHNsbkdC?=
 =?utf-8?B?NU53andsSS9UeTZCQ1JWSW56cTZCVGhVeHExSG5weG9JNzNGODRVZytld2pB?=
 =?utf-8?B?T2thZ21GQ0ZPbTJJMXAvM1FCM1VaeGtma1BZMncvN1A1MElzUEdWS0VMZ3Ix?=
 =?utf-8?B?Q2ZqSVFCOFFYekY0bTBvczRsNWhSV205UlFjcTVHMVVLb2syYUdpN1dvNTVn?=
 =?utf-8?B?OWN1cHl4TENoUnlrRGROd2I5U3BuRVIzRGEwVy9VVVdyWjFqem94cnlzcHJv?=
 =?utf-8?B?YzhIeWF0cDdQNDZHazBSQy9EV2QyTzJLNlloQk1zeU9qZlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHBnQmdJejdNUFdMaFlYRkpkek9uK2kyQjI0ejh0Z1lPMlNaN3lMMTN0RVBX?=
 =?utf-8?B?ejJqQisrWWZ6V092NVFoRTM3ZjN5eWtKSGZrUnhLN2liMU1oZWhzU2FZTlNX?=
 =?utf-8?B?SWNSWkxSSXhJQ1NiTHFTRHpLUDhoQTdXRzl4UDl4QS9ON2pHNDlhLzBtUk1n?=
 =?utf-8?B?TW5DMzVtTkhqdWlGb3FabmVrbnVjYTR1bGZISFdIYW5PMCtDQnpacU9PeUhn?=
 =?utf-8?B?MjlDazVacUZtQWxWTEF6cWJORU9Qc044VFdXNmIxMDVvRXB0c3BjclNtNlpO?=
 =?utf-8?B?TFV4RGkxTURhZWlScGl6NnlaMkhTTlNjaXJRYi91RmVkRkVjUDltNG00YXA5?=
 =?utf-8?B?amt0R2l3SGM1U09IbU5taGI5VEhEK25ybmZObXQ5VjF0eG9meFgwTzBJT1dl?=
 =?utf-8?B?S3dVOVJwN0w2SzVkZk1ocE9HaVhQRlZqakt2UTdnRDRzUjVQbUlNblZWc3ZF?=
 =?utf-8?B?azB1M25yMVVheFp2aHNpRTJkZ0tJVmhmWnBBejJtck1SWnF0M0FYRVBNT3pZ?=
 =?utf-8?B?dVV5UmFtSkdBWFhRZWxHVll0MlFVaUxWVUk1T0VqenZHU2ZEYnEzK1hlVVg5?=
 =?utf-8?B?bFFHaDYveVAzZDZ4TDJnNWZkTExzWVZYSXFBNUd6ZVBzNm03bjByWVlGNFU5?=
 =?utf-8?B?dU44ZUh1RUxzOTVadDg1OW1LYzBjUDFjdFdhTEZ5WHNTSld1RkVRbGRveXo4?=
 =?utf-8?B?L2c0TDRsdTZLV0NrdFhNUVM3a1I1VmdrNXRsakkwSFFTbFBERk84TE5HT2xX?=
 =?utf-8?B?bDh6VHRYcnB0enY5ZVpEZHo3RTJKbUVia1UwTS9Ld1htaFBGaTRYL2JrbDJC?=
 =?utf-8?B?cWszOHpFOXkyb042bVlZeFhFTVVwczRDQWZFWTB1RlplK01tMW1Pa0xidU1q?=
 =?utf-8?B?OWM5MDFUKy9aWitrRmFOaUpHdTI1RzFNV3VjUGM2Rk1UOFlvSXhVTWo5dVp0?=
 =?utf-8?B?TXBEZ1d5MVRPV0UvOXFMcURxdTVnZkl0djJkZUNhd2FRcHBrRm9nTElheC81?=
 =?utf-8?B?M2RJUitFK1N3bkc0Uk85Q1paL2dLU1J5L3FxUlRvQWpvTUQ5VEttb01MUFpa?=
 =?utf-8?B?bHh6aTcwaFdqcnd3K2xkQStPa0o3RWZ0RzEzUitNNHZEbnVMQ3hYSk5BSlVS?=
 =?utf-8?B?eWVLZkVyaUpPdEgyTGxndERaSzhuV2diTzFXek9rK09CNGdKT0JUKzVWL2VP?=
 =?utf-8?B?OTY5WFk3YjY3di9wRlhoeDFPK1JLT3llVGU3MENPbTEvb25vSTYyN081Szh2?=
 =?utf-8?B?UlJySUh5R3pveTlDVlpDeXBLQUdjZ2twU24rSjlYd3lzN00yYnJMekZLWHhK?=
 =?utf-8?B?OGNKUWRJUXh0dlljRVB1Vnh2NHZtTGEvMHJOL2s4andlS24ydVE1Y1RzWWEv?=
 =?utf-8?B?RUV3cXhyN1Y4Vm4wdU0rcGlQaWZ2MGlFYmJyZk1HSFRTNlRkb2MrK2JLdHcr?=
 =?utf-8?B?UmZINGI2bngwMXhVN2xsTUtvNzZPbzRELzA5NjhrNGlvSlZ5eXQxeTVta0VE?=
 =?utf-8?B?TEdITkFkRUpGZ3ZJRWtJVkRUb0hWSEpET05wbFpEcUdWLzlFRnlQeHRPVjZk?=
 =?utf-8?B?cXQ0TTRBOGIwR1dzbnNna0hzMHl2R0RCM2kyd1JqdWFNL29rak1wV3hIVVB1?=
 =?utf-8?B?NUpweGFuc2dleGdNSit0MG1GL0VQLyswby9RcWJjeGtWZ1lBZU5YcWpwTzlG?=
 =?utf-8?B?THpDZ05aWlpDMHJDcWxYcE5LQ2liOVZja01aeXRWRmQwUXVPYVgxSGZ5TVNk?=
 =?utf-8?B?WCt5RzFjVDdzZmJ5U2tPRnI0V0VlVERaWmlGQU11RVJUMHRHaVZXT1Rsb2FU?=
 =?utf-8?B?V1FlWVFlUTJ4Y082TitNQXg3d01RMGRUMjlVc2VUNHQya0FBakxwbmlBaXY0?=
 =?utf-8?B?SFB4R1dCUjM1MjJJM1RSRGtFSnVES0hUb1lOQUlWTjBrMmpwTkphbGxWQWll?=
 =?utf-8?B?WVhwYXpRS09Yd3lyLzcxQlUvajZuOWJWRzAvNkNSTkZWVHYzdE0yMVNLTVcx?=
 =?utf-8?B?ZW1yMEs5SEZtUkUrMDRoSnE0WGFjRkw5WklWSVk2djUyQUdwcTlDQUxUSnZ6?=
 =?utf-8?B?cVB6M2k0NFZCdW5rRXZtcHcxNC9ndnM3dWFiSUtnQmJma3Q1MjVGb1dNWTFq?=
 =?utf-8?B?TU9vWFJFdWlyaTNlYzg4N25KcXhXbFRmdDdGdjYwUmlLdDFDcmYrbG4yeWZF?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e7b45a0-c00f-4c0d-b9ca-08ddf43e7051
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 09:58:36.7976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: evpb1XAu6wzN8HcuzqmhOyDVgcxCh3HCHOcV0X+S3Ax9tJ21gOEatBGVw33VTP9wP2Mnds1wWNNCoSveXM4Ctw3c5hWZvcJa2ejv3xl7KRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF30373102B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757930322; x=1789466322;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g7PQg9ccuRz90SR3TkSETcjb2OsP2tON7HVMfmLucxA=;
 b=XEUiZJsMO7OFoGoz4GORr9WUghM9YntTd0SONrPnsXfSpLjSA1w78/n0
 J7kkfg+2xW7qAsJCz7CQfCC8ATTAZ7ShiDi8P9untXgoeeBC7/WnvZspx
 EeFy5iKINJFuVFi2c/8luhPHfartfc+fCRz/xkZ84IQbo924p5YkmSSpA
 G/bVanbdYv+t7jCGqMRHPSnN/0SDdcM8EHope/jHkS6nMtD43JavIgkcz
 SA+kI1qdJXEuBgSrYy2PyJuiba/gh+yOucPk1EQIy0maZth2y4RKGkupV
 74hvX25TPR+K+yqlDv2r0SYx/nwoNMJle8WmdcvL1u9gKBVjCntripJ44
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XEUiZJsM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
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

On 9/15/25 11:12, Paul Menzel wrote:
> Dear Aleksandr,
> 
> 
> Thank you for your patch.
> 
> Am 12.09.25 um 10:02 schrieb Aleksandr Loktionov:
>> The variable 'err' in iavf_resume() is used to store the return value
>> of different functions, which return an int. Currently, 'err' is
>> declared as u32, which is semantically incorrect and misleading.
>>
>> In the Linux kernel, u32 is typically reserved for fixed-width data
>> used in hardware interfaces or protocol structures. Using it for a
>> generic error code may confuse reviewers or developers into thinking
>> the value is hardware-related or size-constrained.
>>
>> Replace u32 with int to reflect the actual usage and improve code
>> clarity and semantic correctness.
> 
> Why not use `unsigned int`?

I don't think we need to provide rationale for "kernel has adopted
a long standing practice of encoding errors as negative integer codes"
each time we change a type, IOW it's too basic thing to mention.

> 
>>
>> No functional change.
>>
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/ 
>> net/ethernet/intel/iavf/iavf_main.c
>> index 69054af..c2fbe44 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -5491,7 +5491,7 @@ static int iavf_resume(struct device *dev_d)
>>   {
>>       struct pci_dev *pdev = to_pci_dev(dev_d);
>>       struct iavf_adapter *adapter;
>> -    u32 err;
>> +    int err;
>>       adapter = iavf_pdev_to_adapter(pdev);
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thank you

> 
> 
> Kind regards,
> 
> Paul

