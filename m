Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EF49BDB12
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:17:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79CC280F82;
	Wed,  6 Nov 2024 01:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yUvioV1_pZBU; Wed,  6 Nov 2024 01:17:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C91C80FAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855832;
	bh=w9XnZpddROlEW5uJMmTXdssGVA/K977jAjiyumPEu0k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wa/X7s3kqWglyCR1fjNo4zeJscNm9XE+Zi/fwICa266SAtDSZLbRfS6WSZ5Sa2jT/
	 sRWAkqKhtCcfkYYYrQsaPJv4naX2gFxg78ZDTNlUaBIuUFy0BFtHTkj+EEAN/MoF6k
	 P4DLghmgfHg1vnAxbHKPc2bc5Ut0sNGdWa8tTWUV7spr7mMRs6vNv7YX9oEV4fG278
	 iZCDH64ZB9wu9O28RRwDzomJIM+21HSI8akRG7HBoCmIPOoVeIZ96m3Zgr+7RePdaL
	 0WtipUffRJIhAnbLJBb3lM9Cn2ei5IAHscQIGAhTM4eftM39b+eemXt1cPN/KdoAsh
	 tqJM2mS2jrgKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C91C80FAA;
	Wed,  6 Nov 2024 01:17:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 50E403B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31F0860844
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYGa2cxt8ORG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:17:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C368606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C368606FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C368606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:17:09 +0000 (UTC)
X-CSE-ConnectionGUID: fI4sjBMPRhOXzza3f5Ak/g==
X-CSE-MsgGUID: PzXVk5iTSou3P/jGoraoyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30043670"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30043670"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:17:09 -0800
X-CSE-ConnectionGUID: MMh5k6EQTEGUyDbjW8l25w==
X-CSE-MsgGUID: OmPMeEiLR+yZhEYKWIldSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="83901035"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 17:17:08 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 17:17:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 17:17:08 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 17:17:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+7ZYtGV8/xWF5kwFE4SrI0wifQoEpKi+aAFwerITJQtQfVvpANc62sxlXGQprBT81m4TCMgE8mOyumRtZAc1/D06lP/rJOiLIWoU7SFB6t3uGCO0sYNS/vRx0XufIo7WYvLZk16lPkJ3CvxXRCUY/60kGPkSGpYi+cLSAolCIBTS4a2Vvs0y2bqa5xCxvHwpmOLbv0++AeUuOGICD75Ft89jPzW0Ewcdk0Q3CDPpSZK819tiaIrACuxex8jwizaH0XlVHVY/OCVaaQtzOs6lghRPslu/RMfqw8G9is4eXeNNmo42IzMWqK4qxQIBGPqDvQu/ZFh6N5VT8lmYOacoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w9XnZpddROlEW5uJMmTXdssGVA/K977jAjiyumPEu0k=;
 b=L5lPfFDZiAdCUQY1uZVPmETtFVgKZ2F1U4qIb9ZDLM9yM9hA64DYg2DcQYOH5l2W34W/IRpprZtX7u0RTMOBxv7R/9y1qL5phFOEbVY2u4tVdpzFabEFvBT5RF16hzA65SctqMazjNOvdpUDDBODcm5EptxGkrGnpcz4kviQvd0CyjPWWmDSemTM5WaneBai2fowReR14tLp1eL9/R+8aIziVP8XErK58tbWe6MxNJCMAtBLR2Dp1IDl43NgkwMubA1sY8MW4zBq91Vyxx6ho+EQVTw+Oqgx3eI9w2VgUH93OIY2Bp6igvTk0wKaUT9mzUxPCLXuLJMlQbS0/1kxhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Wed, 6 Nov
 2024 01:17:05 +0000
Received: from MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3]) by MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3%5]) with mapi id 15.20.8114.031; Wed, 6 Nov 2024
 01:17:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 2/2] ice: ptp: add control over HW timestamp
 latch point
Thread-Index: AQHbKXtenPXCRnB+aEylv5rgPlgtELKdZDqAgAwbrxA=
Date: Wed, 6 Nov 2024 01:17:02 +0000
Message-ID: <MW3PR11MB46663CAE78ED0D953907A35A9B532@MW3PR11MB4666.namprd11.prod.outlook.com>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <20241028204755.1514189-3-arkadiusz.kubalewski@intel.com>
 <a3e2b0b6-df37-4320-b928-741f360548d3@intel.com>
In-Reply-To: <a3e2b0b6-df37-4320-b928-741f360548d3@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4666:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: 5893afef-eb6e-440f-ecb8-08dcfe00b880
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UVBEV0c3aERLMjZ2RDByUFpIVkVrWm50aFlqL3VBSldXVDVYTTRpTG5HYmtQ?=
 =?utf-8?B?NFlObXN0V25Xck5FMjQxeFpEUHA3Z3BPM2h2UEd4d3dxRVMvRjkwVzZkL1Mx?=
 =?utf-8?B?dTZ0aHIzSGVtVlJiOWpIRFVzSDhwamN1VVR3dWo4cVpTbStMOTlsQVVnM1Vs?=
 =?utf-8?B?dXB4OWw0VUFBRHZlMHFCNC84VG5rOFNPV3oxYjNlWm5EVVB6NVdPak1XWlA5?=
 =?utf-8?B?RXduK09jdFZXN210dEhRd1NTaHgzK3QySmxtNUhmRXBVUFIvMGZWWDFlRXBt?=
 =?utf-8?B?Mi9NWEJ4MGdpWDJLS3dneXVzcWpZNnVpRG1FMlpEYXNhaENyQkZGdnBPQ2dy?=
 =?utf-8?B?aTdSMXpDeVBINlNOTjQ3ZzNnY3JjRFhBbHUwV1BubE16OHZiMyt3ZlZkb0VE?=
 =?utf-8?B?UFF0czNJeVBvWE1BbURkdEVvb3pTalNRMzJXc204REtvL0tHZEozam5kWFlS?=
 =?utf-8?B?dmRONWdhcXR6VlhkV3NjS0lVL1VGTDVyWVJsTXd1ZHlCNlllL1gzODhZRm9t?=
 =?utf-8?B?eUxWREZ2QW5kWFdnaGlnZjV4N0REQTR0d0NpalVSSERnN0laV1dBc2RKNHY3?=
 =?utf-8?B?VWw2YTJwT1kyRFB2VmZ3YWlDWDNaVmtRKzhoN3ZPaVZLRkJTMi9oRkRVRGFx?=
 =?utf-8?B?a3ZrcDVqQ0dsM1EybzBYTjIvVzlXMVpDdzJCRlBmVkNkTEEwUmk2Sm1BUGdk?=
 =?utf-8?B?LzNaRzM0RTlqTkFCb05TQ2RsQ0N2ZzBDVVlKSG1QdlB6SlBGbGpVU1VZODdo?=
 =?utf-8?B?SnVIcmliVFIrV1VjS3E0SEk3b0w1aDVpb0tPcXBENEpKK1RmSnJkNFJ4enJD?=
 =?utf-8?B?Z3dWdG5RWHZzR3ZEdjQ0OTVUY1NzQmh5WlZ1UUdmWnlzbjloTVFMZzdPelU2?=
 =?utf-8?B?MXhmaUVPRk5nN1ZiOGNETG5hVVZuRGJNRFo1YXlOdXlJUVlFQ2x5TUNkZTRn?=
 =?utf-8?B?Mzc5TFA4UjIwbTlrWFVRY3RHNE84dnU3N1hYc1NQNUh3ZExJalRCSVRyWVd5?=
 =?utf-8?B?Ukg0Vmh1ZG0zUnRwa3A0WW9UTnJXcWVUYVlTTGlnTnpIZDFqbVZEd3hCeUho?=
 =?utf-8?B?OHdlakIrcGxtYzRsL2EwbjFWQ3pVdHo0UzJkZnNuNVpSTHJ3T05scXpzS1NR?=
 =?utf-8?B?QnhhRXVVR2lvd05oVTRDc24xblRlUmswV0hQdlcxZ29qdlBHc2UvMytlN1pE?=
 =?utf-8?B?bE5hQWJrZW0rbEw0cFZoYzNDdmo4Z3F2U1lMcXlQaXlwcmhEK0ppOUNPa2Ir?=
 =?utf-8?B?MThGOEJpci9uUzlaVy9wUzhDT2E4N2FkbWpJUnB5Sk4vVVpHbmtkdXVVWld0?=
 =?utf-8?B?VlpxdnhnMG4vZ1RiT2pWdktKdkR5ZDcvMGt3T2sxdE5YazZUd1Bqa2NKS2RP?=
 =?utf-8?B?Nm1hWC9CQVVZL0ZjV09zNThmTENsb2JibFlDVm43d1luY3FacVNHOUw0SC9M?=
 =?utf-8?B?NFVMYjZHYlFITjJNbTdIWWVyTVFNVi9QK001TzU0TjlMOWs4ajYvVjN4bk40?=
 =?utf-8?B?cUJJYWVhcUJUTGh3NjRYRXMvblB6UFRjdCthQTAzNTRvQytncHBMRXBsMzN2?=
 =?utf-8?B?L2ZYclduSDZxc09ITzZQSCtJT3E2bmFsRHc2bzRsZ3NmWFl1NjB0OUJiK0dG?=
 =?utf-8?B?bmYxSG9KMWZURk9NOCs5NVB6NVVRRWpkN1hFV3UvL1lVczNHNXBmUm5pMERL?=
 =?utf-8?B?cDNVeGZTcTJkS2NtaTVweGhtK1Bmbkt3cHU3L2dZM1hHbjJnN29yZnJDSG5q?=
 =?utf-8?B?cFcwd2dMT2Z1UUdoRlBNTUt3RVlacGdMZzZGZlZ1bWRSODhaOEp1QjQ0ZXE0?=
 =?utf-8?Q?BhGSc6AS4cbRxPYIvMEFC5fxK3x9Ja9pPKXio=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4666.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qk1JR2JMQW9TVEcvVHRzNDE1bDVDTlNZaGJQaVN2RUJKTmFxcFlGdWdXWWlu?=
 =?utf-8?B?NW5sWmFmMnVtS3lyUlQ4ZHdhOXNweVVqT0I5NlZVMVlHRWdKSVczWElId291?=
 =?utf-8?B?MEVSSEZNVXFXOFRHNlNndnVUZUxWdlpob0NqVHl1ZC8rSFZVSS9xU0w4M2tM?=
 =?utf-8?B?cERqUDRCdy9UUU40VENPU1ZJam94WUgraHJLa2RzZ1FDVmtmWllTRDNiTTdk?=
 =?utf-8?B?SDhLUitXL3hHTUkxazBlTVZNZG4wOEMxaWJCd1VybVJOT2Z6ZU9hRFRtcXJC?=
 =?utf-8?B?THo3bis4S2xPRjgvbEg5UHUvUTB1NWIrYUtqK0ErS2t2UHppc1RDRml4K1E2?=
 =?utf-8?B?L2p0Nmd1ejFpUVlJS3g2L2JOdDFmdlQ4alB0M1g2SzRKRFk3UFRsb3hlbE05?=
 =?utf-8?B?NGphdmk5Tm1NUEl0QXVQdHdjYTBReUNTbld0Z3AxZmxFOEJzcmRlcklid0Zs?=
 =?utf-8?B?dTZielZVeEVyVWtlWWoxMFBvM0c3Yi9EUGM3WjlvamhjZURnV3RlMTduazZs?=
 =?utf-8?B?N0ZYR1huSjhRRWNqNnZwNXNOenBTYnIwNjNKb2tEQWFLdHE5N3Z6UHN6LzU0?=
 =?utf-8?B?S2VNbXI1VHpycDdzZGNJd2Z0RFNDVG5zQUZDMnVVeU84UDEvdDNNSHFueDNV?=
 =?utf-8?B?Zld4aU82MG1QWEVSTUMvWlZQMjZLdXBQRlBWNWNDQ001MzVWY3hqMDhlQ2dv?=
 =?utf-8?B?VXFUK0hhd3pseHlab3lGV3VqTDZ4QjZFSEpCV1pnMFdjbUxIZk1uV3g3a1dL?=
 =?utf-8?B?Z200Y1FSVTQ1aExlelNjeU81ekJRaWFEazR3cXZWWWxScXYvaE92VTZOYkRJ?=
 =?utf-8?B?azJPRVJHeG8ySG85clY5UHdMcWtyMTdlNndML0pQZkE5V0xnNGpwQnBORVdW?=
 =?utf-8?B?azIzWWlON1dzRjZiUFllZXZvUWdGeTVERzdxTmVxbzlRWG1XNGJCREl1RDNO?=
 =?utf-8?B?VFNOeWZyVDNUTzFGQ2VIRVZnZkpyQTJEeVd5RDF1V1pXdlB4SGJFMXkvazFJ?=
 =?utf-8?B?c1pKeUtaaXJMS0c0dDVDMUpJb3MwajFuT3BTS3h1ZzUzY2xIQ25VMUJjWjE3?=
 =?utf-8?B?KzQyRDBnOUE4M2s2UE11cnMwbm94L3luS3Q4SjV1QU9zQkpwRmlQSFEvRkph?=
 =?utf-8?B?cXRYNTQyZjhta215VUdsVzN5TUdtejFBdE5NOVdweFU4OXE3ckVyT3ZqVkY1?=
 =?utf-8?B?UmVwVThudkxZQ201TmRsa01ZWUZ2YkJ5VmNEWm1VSkV0V1VhZUVRemFZU01B?=
 =?utf-8?B?OEwyN1RQODJXeVY1VDZ3aU5kNkpFYXJVcitFUkRzUnlKckxtUmZPK1lUbHpz?=
 =?utf-8?B?TThDUU5EdTRVNlJMM09pUHc0R2szSUUzMkhiWDRKZk1HNmIvOEk1Tmx1YnQ1?=
 =?utf-8?B?Qjg5VEZOTUNOWWMvUUVaczNhWit0M3luTkh4WHN2RmJadkZwc29mbi9LM08r?=
 =?utf-8?B?VHQxOHRuVEZ3WVVKSEtVS1ZMMHhUVmtKYjZCYWZTa3R2d1QrbXZoM0lIZEUy?=
 =?utf-8?B?aFNXT2Z6ZHZiWUZ1NDNxS3BBa3A2R0RZZTJ2SmlsMzZrRXI0Mk1udzZ6d2ZO?=
 =?utf-8?B?SUdmbS9IOFpMQUlDaElrRnVsSnFwbGRzcy8yYmtsWTVBdC9YNG5tQUtHaG4w?=
 =?utf-8?B?UldoeWs0NnBCZk0xTmppT0dVa0VsbUozVDJ0eTltcU9ydDF5akFuQythQlFh?=
 =?utf-8?B?S3VzSmRyaUNIZ0V4UnIzN2JnMUtLMEcrNVhPaWVHM2thaU55bVZZN0UxYmpP?=
 =?utf-8?B?WTdQWTZZOFVGaEhDaHlpVVNkREljTVJ4b1ZPY1h4THY2eHlFRGFBY3JHUFNR?=
 =?utf-8?B?WWc2ZUVNK2RVTVdibUVjeW82VWJhMXBZVUFYQlJ4cDdmREdUQXUySjVPMEFI?=
 =?utf-8?B?UFZOdWtHUHVILzhVbVczMDYvTDZGSjAzTzRyeGozNFNhNG8xMXpYTXdJa24r?=
 =?utf-8?B?eUxtcnFwU2UwVTNITWczeDNWTENSV0VNYUlwMDRHU081cmtLRlBnbndadjJH?=
 =?utf-8?B?OVAxVjMwR1g0WHgycGxkQm5ZOHNWTzZQcGc4RkdGRlQwcTZPYzk4N2w5U25S?=
 =?utf-8?B?STNxaXdBdVNwMVpaM2dsVno0bTltdGFaM1YrdDRvdDU0V1VpdmFFeGxlQWtC?=
 =?utf-8?B?eFJiMURsMDJ0dUdPeVQ1SkF6V25kWDlScWUyNHlhSnQ2RkJNcU9uaVZhN0Qr?=
 =?utf-8?B?cHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4666.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5893afef-eb6e-440f-ecb8-08dcfe00b880
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 01:17:02.8099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iNr3Wlu6AgTiU4WMjGhVtgzzaOohBYn+u7OT9FI24CZ2mX91s89rluBYdenV9wikfRhDyRfPFyqrfVa5qS6LCAubgXbcISBdUhs31PXoMPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855829; x=1762391829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w9XnZpddROlEW5uJMmTXdssGVA/K977jAjiyumPEu0k=;
 b=J/2Kev7IP+EuUZVzsL5TpJm+jpWiusqIEqHYfZVC2TiYlSCFIYN1GoEZ
 R9WZPJWQ778PAkBqgMhyH0uN1e9w6Qmapb1DNmWq+R8Y4FdLDEyKXtCrD
 4ZRYhgNxI3qOeQ791LqpCZtfigufBGUQsFVfY44hTOkigzcurB99Mxfe3
 KOQ6/dLpYyVOXL3nMplbLCmXIKfeJuvlIvQmtblJktm0HvaP72O3wW9tp
 W07T/C2QntwM/6u0Yb2pg9JbfouK/AkfkwoBBxpJkbPAxOhaczD0/aHej
 tJ9EIGzam4SPRG8KDTJQQbY+kM3me9eWk+XEsY8eXJkWOfyM7SAHLI8qn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J/2Kev7I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: ptp: add control
 over HW timestamp latch point
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

PkZyb206IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+U2VudDogVHVlc2RheSwgT2N0b2JlciAyOSwgMjAyNCA5OjIyIEFNDQo+DQo+T24gMTAvMjgv
MjQgMjE6NDcsIEFya2FkaXVzeiBLdWJhbGV3c2tpIHdyb3RlOg0KPj4gQWxsb3cgdXNlciB0byBj
b250cm9sIHRoZSBsYXRjaCBwb2ludCBvZiBwdHAgSFcgdGltZXN0YW1wcyBpbiBFODI1DQo+DQo+
c29tZXRpbWVzIHlvdSB3cml0ZSBwdHAsIHNvbWV0aW1lcyBQVFAsIEkgd291bGQgbWFrZSBpdCBj
b25zaXN0ZW50DQo+KGJ1dCBzdWJqZWN0IGxpbmUgaXMgZmluZSBhcyBpcykNCj4NCj4+IGRldmlj
ZXMuDQo+Pg0KPj4gVXNhZ2UsIGV4YW1wbGVzOg0KPj4NCj4+ICoqIE9idGFpbiBjdXJyZW50IHN0
YXRlOg0KPj4gJCBjYXQgL3N5cy9jbGFzcy9uZXQvZXRoPE4+L2RldmljZS9wdHAvdHNfcG9pbnQN
Cj4+IENvbW1hbmQgcmV0dXJucyBlbnVtL2ludGVnZXI6DQo+PiAqIDAgLSB0aW1lc3RhbXAgbGF0
Y2hlZCBieSBQSFkgYXQgdGhlIGJlZ2lubmluZyBvZiBTRkQsDQo+PiAqIDEgLSB0aW1lc3RhbXAg
bGF0Y2hlZCBieSBQSFkgYWZ0ZXIgdGhlIFNGRCwNCj4NCj5wZXJoYXBzIHRob3NlIHZhbHVlcyBj
b3VsZCBiZSBleHBvcnRlZCB0byB1QVBJPw0KPih0aGUgZW51bSBmcm9tIHRoZSBwcmV2IHBhdGNo
KQ0KPitlbnVtIHB0cF90c19wb2ludCB7DQo+KwlQVFBfVFNfUE9JTlRfU0ZELA0KPisJUFRQX1RT
X1BPSU5UX1BPU1RfU0ZELA0KPg0KPj4gKiBOb25lIC0gY2FsbGJhY2sgcmV0dXJucyBlcnJvciB0
byB0aGUgdXNlci4NCj4+DQo+PiAqKiBDb25maWd1cmUgdGltZXN0YW1wIGxhdGNoIHBvaW50IGF0
IHRoZSBiZWdpbm5pbmcgb2YgU0ZEOg0KPj4gJCBlY2hvIDAgPiAvc3lzL2NsYXNzL25ldC9ldGg8
Tj4vZGV2aWNlL3B0cC90c19wb2ludA0KPj4NCj4+ICoqIENvbmZpZ3VyZSB0aW1lc3RhbXAgbGF0
Y2ggcG9pbnQgYWZ0ZXIgdGhlIFNGRDoNCj4+ICQgZWNobyAxID4gL3N5cy9jbGFzcy9uZXQvZXRo
PE4+L2RldmljZS9wdHAvdHNfcG9pbnQNCj4+DQo+PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExv
a3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0K
Pg0KPmdlbmVyYWwgYXNrOiBmb3IgZnV0dXJlIHN1Ym1pc3Npb25zIHBsZWFzZSB1c2UgLS1iYXNl
IHN3aXRjaCBvZg0KPmdpdC1zZW5kLWVtYWlsLCB0aGlzIHdpbGwgYWlkIHJlc29sdmluZyBjb25m
bGljdHMgb3IgYXBwbHlpbmcgdGhlIHBhdGNoDQo+bG9jYWxseSBmb3IgcmV2aWV3Ow0KPg0KPnRo
aXMgc2VyaWVzIGluIHBhcnRpY3VsYXIgd291bGQgbGlrZWx5IGNvbmZsaWN0cyB3aXRoIGN1cnJl
bnQNCj5Ub255J3MgZGV2LXF1ZXVlIChkaWRuJ3QgY2hlY2tlZCwgYnV0IEthcm9sIHJlbW92ZXMg
aWNlX2lzX2U4MjVjKCksDQo+Y2FsbGVkIHdpdGhpbiAzLWxpbmUgY29udGV4dCBvZiB5b3VyIGNo
YW5nZXMpLg0KPg0KPj4gLS0tDQo+PiB2MjoNCj4+IC0gYWRkIGtlcm5lbCBkb2MgcmV0dXJuIGRl
c2NyaXB0aW9uIG9uIGljZV9nZXRfdHNfcG9pbnQoLi4pLA0KPj4gLSB1c2UgZW51bSBwdHBfdHNf
cG9pbnQgZGlyZWN0bHksIGluc3RlYWQgb2YgYWRkaXRpb25hbCBib29sIHRvIHBhc3MgdHgNCj4+
ICAgIHRpbWVzdGFtcCBsYXRjaCBwb2ludCBmcm9tIHVzZXJzcGFjZSBjYWxsYmFjayB1cCB0byBw
dHBfaHcNCj4+ICAgIGNvbmZpZ3VyYXRpb24sDQo+PiAtIGZpeCBiaXQgbG9naWMuDQo+PiAtLS0N
Cj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyAgICB8IDQ0ICsr
KysrKysrKysrKysrKw0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cF9ody5jIHwgNTkgKysrKysrKysrKysrKysrKysrKysrDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmggfCAgMiArDQo+PiAgIDMgZmlsZXMgY2hhbmdlZCwg
MTA1IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPmIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuYw0KPj4gaW5kZXggYTk5OWZmYWNlMjcyLi4yMWZjNmI1ZTJkNjkgMTAwNjQ0DQo+
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jDQo+PiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jDQo+PiBAQCAtMjUwOSw2
ICsyNTA5LDQ4IEBAIHN0YXRpYyBpbnQgaWNlX3B0cF9wYXJzZV9zZHBfZW50cmllcyhzdHJ1Y3Qg
aWNlX3BmDQo+PipwZiwgX19sZTE2ICplbnRyaWVzLA0KPj4gICAJcmV0dXJuIDA7DQo+PiAgIH0N
Cj4+DQo+PiArLyoqDQo+PiArICogaWNlX2dldF90c19wb2ludCAtIGdldCB0aGUgdHggdGltZXN0
YW1wIGxhdGNoIHBvaW50DQo+DQo+VHgsIHBsZWFzZSBhcHBseSBpbiB0aGUgd2hvbGUgcGF0Y2gN
Cj4NCj4+ICsgKiBAaW5mbzogdGhlIGRyaXZlcidzIFBUUCBpbmZvIHN0cnVjdHVyZQ0KPj4gKyAq
IEBwb2ludDogcmV0dXJuIHRoZSBjb25maWd1cmVkIHR4IHRpbWVzdGFtcCBsYXRjaCBwb2ludA0K
Pj4gKyAqDQo+PiArICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIG9uIGZhaWx1cmUu
DQo+PiArICovDQo+PiArc3RhdGljIGludA0KPj4gK2ljZV9nZXRfdHNfcG9pbnQoc3RydWN0IHB0
cF9jbG9ja19pbmZvICppbmZvLCBlbnVtIHB0cF90c19wb2ludCAqcG9pbnQpDQo+DQo+bml0OiB0
aGUgY3VycmVudCBwcmVmZXJyZWQgc3R5bGUgaXMgdG8gYnJlYWsgbGluZSBhZnRlciAiaW5mbywi
DQo+DQo+PiArew0KPj4gKwlzdHJ1Y3QgaWNlX3BmICpwZiA9IHB0cF9pbmZvX3RvX3BmKGluZm8p
Ow0KPj4gKwlzdHJ1Y3QgaWNlX2h3ICpodyA9ICZwZi0+aHc7DQo+PiArCWludCByZXQ7DQo+PiAr
DQo+PiArCWljZV9wdHBfbG9jayhodyk7DQo+PiArCXJldCA9IGljZV9wdHBfaHdfdHNfcG9pbnRf
Z2V0KGh3LCBwb2ludCk7DQo+PiArCWljZV9wdHBfdW5sb2NrKGh3KTsNCj4+ICsNCj4+ICsJcmV0
dXJuIHJldDsNCj4+ICt9DQo+DQo+Wy4uLl0NCj4NCj4+ICsvKioNCj4+ICsgKiBpY2VfcHRwX2h3
X3RzX3BvaW50X3NldCAtIGNvbmZpZ3VyZSB0aW1lc3RhbXBpbmcgb24vcG9zdCBTRkQNCj4+ICsg
KiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0cnVjdA0KPj4gKyAqIEBwb2ludDogcmVxdWVzdGVk
IHR4IHRpbWVzdGFtcCBsYXRjaCBwb2ludA0KPj4gKyAqDQo+PiArICogQ29uZmlndXJlIHRpbWVz
dGFtcGluZyB0byBtZWFzdXJlIGF0IHRoZSBiZWdpbm5pbmcvcG9zdCBTRkQgKFN0YXJ0IG9mDQo+
PiBGcmFtZQ0KPj4gKyAqIERlbGltaXRlcikNCj4+ICsgKg0KPj4gKyAqIFJldHVybjogMCBvbiBz
dWNjZXNzLCBuZWdhdGl2ZSBvbiBlcnJvcg0KPj4gKyAqLw0KPj4gK2ludCBpY2VfcHRwX2h3X3Rz
X3BvaW50X3NldChzdHJ1Y3QgaWNlX2h3ICpodywgZW51bSBwdHBfdHNfcG9pbnQgcG9pbnQpDQo+
PiArew0KPj4gKwl1OCBwb3J0ID0gaHctPnBvcnRfaW5mby0+bHBvcnQ7DQo+PiArCWludCBlcnIs
IHZhbDsNCj4+ICsNCj4+ICsJZXJyID0gaWNlX3JlYWRfbWFjX3JlZ19ldGg1NmcoaHcsIHBvcnQs
IFBIWV9NQUNfWElGX01PREUsICZ2YWwpOw0KPj4gKwlpZiAoZXJyKQ0KPj4gKwkJcmV0dXJuIGVy
cjsNCj4+ICsJaWYgKCh2YWwgJiBQSFlfTUFDX1hJRl9UU19TRkRfRU5BX00gJiYgcG9pbnQgPT0g
UFRQX1RTX1BPSU5UX1NGRCkgfHwNCj4+ICsJICAgICghKHZhbCAmIFBIWV9NQUNfWElGX1RTX1NG
RF9FTkFfTSkgJiYNCj4+ICsJICAgICBwb2ludCA9PSBQVFBfVFNfUE9JTlRfUE9TVF9TRkQpKQ0K
Pg0KPnRoYXQncyB0aGUgdGhpbmcgdGhhdCB1cmdlZCBtZSB0byBzdGFydCBjb21tZW50aW5nIG9u
IHRoaXMgcGF0Y2ggOykNCj4NCj5wdXQgYnJhY2VzIGFyb3VuZCAoYml0ICYgYXJpdGgpIGNvbWJp
bmVkIHdpdGggbG9naWNhbCAmJiBvciB8fA0KPg0KPnlvdSBjb3VsZCBhbHNvIHNwbGl0IGludG8g
bXVsdGlwbGUgaWYgYnJhbmNoZXMgZm9yIHJlYWRhYmlsaXR5DQo+DQo+PiArCQlyZXR1cm4gLUVJ
TlZBTDsNCj4+ICsJaWYgKHBvaW50ID09IFBUUF9UU19QT0lOVF9TRkQpDQo+PiArCQl2YWwgfD0g
UEhZX01BQ19YSUZfVFNfU0ZEX0VOQV9NOw0KPj4gKwllbHNlIGlmIChwb2ludCA9PSBQVFBfVFNf
UE9JTlRfUE9TVF9TRkQpDQo+PiArCQl2YWwgJj0gflBIWV9NQUNfWElGX1RTX1NGRF9FTkFfTTsN
Cj4+ICsJZWxzZQ0KPj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+PiArDQo+PiArCXJldHVybiBpY2Vf
d3JpdGVfbWFjX3JlZ19ldGg1NmcoaHcsIHBvcnQsIFBIWV9NQUNfWElGX01PREUsIHZhbCk7DQo+
PiArfQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwX2h3LmgNCj4+Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5o
DQo+PiBpbmRleCA2NTZkYWZmMzQ0N2UuLmY4ZTQ5NWI4MjY1MyAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgNCj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgNCj4+IEBAIC0zNDgsNiArMzQ4
LDggQEAgdm9pZCBpY2VfcHRwX2luaXRfaHcoc3RydWN0IGljZV9odyAqaHcpOw0KPj4gICBpbnQg
aWNlX2dldF9waHlfdHhfdHN0YW1wX3JlYWR5KHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBibG9jaywg
dTY0DQo+Pip0c3RhbXBfcmVhZHkpOw0KPj4gICBpbnQgaWNlX3B0cF9vbmVfcG9ydF9jbWQoc3Ry
dWN0IGljZV9odyAqaHcsIHU4IGNvbmZpZ3VyZWRfcG9ydCwNCj4+ICAgCQkJIGVudW0gaWNlX3B0
cF90bXJfY21kIGNvbmZpZ3VyZWRfY21kKTsNCj4+ICtpbnQgaWNlX3B0cF9od190c19wb2ludF9n
ZXQoc3RydWN0IGljZV9odyAqaHcsIGVudW0gcHRwX3RzX3BvaW50DQo+Pipwb2ludCk7DQo+PiAr
aW50IGljZV9wdHBfaHdfdHNfcG9pbnRfc2V0KHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIHB0cF90
c19wb2ludCBwb2ludCk7DQo+Pg0KPj4gICAvKiBFODIyIGZhbWlseSBmdW5jdGlvbnMgKi8NCj4+
ICAgaW50IGljZV9yZWFkX3F1YWRfcmVnX2U4Mngoc3RydWN0IGljZV9odyAqaHcsIHU4IHF1YWQs
IHUxNiBvZmZzZXQsIHUzMg0KPj4qdmFsKTsNCg0KRml4ZWQgYWxsIGluIHYzLg0KDQpUaGFuayB5
b3UhDQpBcmthZGl1c3oNCg==
