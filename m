Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 925AACAEFD1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 07:03:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E88CE61190;
	Tue,  9 Dec 2025 06:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TKpnDXcyyxF2; Tue,  9 Dec 2025 06:03:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 098E861197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765260197;
	bh=S+aYRpXP5hT9eERXHP30sTDY/bWGJloLHos4Ivp1rDc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T52llUxNED5+Ts3RKxnfU8eWjzZmWhkfOsJRSIWtGnDg8QGrg90URehS8xc0KNzMQ
	 hcjUdZUgK/11mZWTp7wxjF/ASlAhbOAPGSYpo8uAyXdBC53ObXXLiY714CKrrbpBR9
	 7DlxXSRgtFv9ApH+FA6qsH8f0ArNNaqrw0Tof45tidrEzXxPUqWtpukbbEmluiTPVj
	 8udGxXILqw8ck/VCzTAzItMj3hqpq7ovRqXzY1fiH7tv3wI/zE3TTAZKHchUVXBh2G
	 8m8gDLnGhH75m1N9w+DYl2ZMzW9dOeFDn2CViywFSA87OvQeRVzEjIlfwk2mJdL8It
	 znhmV8Du2JzUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 098E861197;
	Tue,  9 Dec 2025 06:03:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3133197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C980E40131
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:03:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0_Zzecon1XU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 06:03:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.44;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4AECB40097
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AECB40097
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013044.outbound.protection.outlook.com [52.101.72.44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AECB40097
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:03:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pQOJ46j8DPt+xxSsPkbeYRjx/Mgu5CL5aee0gpsl8fNDckAWg8K6dwgbtMqrsjz0BTg8rqiO/uTncwoZq7YBkewmp39MIlxE9GdXR/wUsaCsZdN/q8Jf2n7JYFvBAWsKTep/ijS0ZBYtxmbbt6T7y5F7SERnMTgpJF/mIS18rBk88ho14wLMEPozh3X55+80HOa2ywdNU+OM72ixN4wd76m0TPHf6e4ZSNXdQ/vgtIBFpvRJcn1TItixgPGjI+stU9YYKZepIps6Q55YsxsgbqzYYkuI74SGWdXZYOaPRYTDQ4vNl+yVW1eGeivxTGXgDkIbOO1ip8X/3mNMmUs1TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+aYRpXP5hT9eERXHP30sTDY/bWGJloLHos4Ivp1rDc=;
 b=LUh8/wr+HcvWsLvA1XoIrspbFinAa35juSg8Y3SWkgUBduH+uK/YSa73Sjsuio/6zUPTLTyMeAVNvJOHRCj6MTIv0yuIn5/48PX6HIROXAPrxoGZ8XnPdtzpNFE4JWo3hajBPtt2A/pthTUVc3xQi+y2uZIuZn3f1hrMxXj7KJPjy9F+MDHIgozjQI01agUIC4mbFTeP3Eyi7HpoaeevPtiR7gKafl0uV8ALrtBXLlpS8GyTzjHQc+vRJ5qnI2+2x0+ZRlmENNJmSbIzmTd/zE37ybEyhmjy/dFBPgxq/W26y0RYKPjTG2YjYGan7j+Vp+zMzm+5aeSpFTlK17O2Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AS4PR10MB5848.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:513::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 06:03:10 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 06:03:09 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup
 function
Thread-Index: Adxl4xN/bKAnSLoOQiOSWfX7JfGLpgCusoGAAAyd2bA=
Date: Tue, 9 Dec 2025 06:03:09 +0000
Message-ID: <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
In-Reply-To: <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d3ac5aa8-3a96-4e14-95c7-b25deb848df8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-09T05:54:50Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AS4PR10MB5848:EE_
x-ms-office365-filtering-correlation-id: 7376035a-5bec-4515-169c-08de36e8a143
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?a0g1dGRpL0VFT0o3V1JORGhvd1dBOS9KbFhoeFgzOHV5aDR1ZysrbmNsQjhj?=
 =?utf-8?B?cndSN0xESU5UNFAyek9IQTdnM1l6UnpOeGdFOExrSnhqNTE4OTZ1OVVUMHda?=
 =?utf-8?B?c0NVNG1qVFFjMlhkV0VkNUJORStNQUhETUdBZ3hUaWNsQ0sycUduZjRQZGRt?=
 =?utf-8?B?QVFsY3R2bEVqY2h1N0svaHdOd1Eva1BjcXRCU1NCRGNtWk5TK2h2S2dwa1Bp?=
 =?utf-8?B?VnhuUDd3MTd0SSs2ODQ3RzI4NEVhY2FZOExZcDhGelZTRjFTanlRS0Y3MXlp?=
 =?utf-8?B?WEtyb21RbG96WEZRaUhIbzZ3dVdYVHJDNjRZNFdaOEtQREMxOXJlWGQ4Q3Z2?=
 =?utf-8?B?Rm5GL2JwMzBrbHFFc0p6V1ppbUZXRXRmaTRxTWNWMjZGaDg1NXJDVitVSTRB?=
 =?utf-8?B?V1AzSU5kZFlCNTNZRVNTdGV4dGYxMFh0cERHZ0dpL2s0RkcydjB4Nm5sM1Rk?=
 =?utf-8?B?K1FlM290UHl4RkNYUkludW9PZlFCOTBtMHEzcGZoWFp1ZnVWZzJ0L1QzT1VI?=
 =?utf-8?B?a2dDUGxNUzhra29YSkVZR0FrUWxqT2JwZ3JmcUxrTHVrV29mUlIwOXFYcyt2?=
 =?utf-8?B?TmlsYjhnM1U3dUpkek5NZHRTZXRtd2ZrZVRpaTZQcGNnWm85K291OU9INzBp?=
 =?utf-8?B?dGpFemNlWXQ2UnZPMnBNUXFuWUJPaFdnV0dPc1krM29Gd0QvbHUyak83cENL?=
 =?utf-8?B?YisrYUo4bVFzd09CKzVERDM4MFcyTXp4WjRIcUJ6NlJLRkxUbVMvckR3ZnA0?=
 =?utf-8?B?YjNoaHJXV09oTTRONTNKa2FMVVdQQ21WN0RWblhIK0RUbDdIZUhXcjhnbmk3?=
 =?utf-8?B?QVoyYTZpc0w0dW1YSnU5bDFvQnJoN2RHSm9VaW1sMjl0aThoeUFYd2Zobkh3?=
 =?utf-8?B?eW9kTXJVd2FVUitHZ1NQZ040T0ttcEJLQjFna0lyVUNRa1I5OVFzVUpsVUky?=
 =?utf-8?B?SEY0TTdRLzY2R3J6REF3NDBNNDdGZDFxZEYxelNFaU11MDZjd09rVzRIT0Ji?=
 =?utf-8?B?U2huVTRVdmdobW1UK1hlOXlLaXJWcDc4UVlVNXF2MEdON2tSY2xONEU0SHFq?=
 =?utf-8?B?V1ltdXJOdjZnb1Y0NDNPbDlRbUgrZkVQdUJGRFpKZ0IyUm1QL29BZC90dlFU?=
 =?utf-8?B?U3BrMmFxTHAzRjRpbDZxNGZGamNiVWVLVkZ3L0ltVllzMy94Y3RlY2lNSmxE?=
 =?utf-8?B?QTdHWnVTTkFxampRN3grakNJMTRvbFcwaHdKQWxtenJTOHprQ0tDNTFyb2VH?=
 =?utf-8?B?c011WElPeVZkZjU0V3hUV3BuYlhOK2lMMWY0UHFuR0VDdVVhcU1PeHB4S2hH?=
 =?utf-8?B?ekZBT0RVdE5ZQSthN1dCQUV3dWFrQ2R6eThaVXEvT3ZKTG53eWNmWDNxNFps?=
 =?utf-8?B?WHdUY0JTdHhMNkpaOURvQjE4UUJ1djJobjRwME1oMXVIcENJUHRrTFN4VTdU?=
 =?utf-8?B?bzlCQ1huWFExdUkyOHlWb3htWXlkakcrOElQQXZ6M3ozMUpRUFl3ODVxYUdV?=
 =?utf-8?B?VzJSZEVpak81Q2FuSFIwYmZTeWxxUXdTVE56SHFPSTF1U2JMZWpLSUgrNVI0?=
 =?utf-8?B?cisxZ0s0VTh6a2RjNkFRaFNnUHhwa0RORDBCb25VTnpSUGRVSTN1NkUvUWtk?=
 =?utf-8?B?dkw1cTVGYVhKVE9NL2lUdnJlV0puamhySzFqVjhhZnRMVGhPeUFpT1dKRWpB?=
 =?utf-8?B?VzlLZ2hNakszMncwdUNoanVnSnlWSVo4T3pwZXk4bDRlcTY4OUJINlNUQ1Ru?=
 =?utf-8?B?MDViWGJ2VHl0c1RnRUo0Kzg5N1BkRnN1aUxjYkJYQkJ1cWxNV0dBWEEvNzNr?=
 =?utf-8?B?ZkQ2WDVrbDVCTk93Qm1aTEFVeW1YRWV6aURwbTZvYmpGVElGbTJ6cWo1ak5Y?=
 =?utf-8?B?NU9DWWJ6TFdObm1namVQMnFKUWlubG5ES3VJUmlPSnNOWml3RFErNHROZUk4?=
 =?utf-8?B?bTZIb2tCeG9tZ1ZXSHNESzNIRncrck1OZWkySmtXVjBDazRHYThqZy9NV2dC?=
 =?utf-8?B?MnJaMDZUdG95RHd6UnNDaUxTdmFYR3Ztcy9xREIwb0RKT1c1VzlHWFdSRjhF?=
 =?utf-8?Q?VAmejV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zm4wbEpTdFNhS3FFVkVpSEhxMDlmQzZ4Y3NyRVRHZXhTcmUzOFArdjJmZ3Fu?=
 =?utf-8?B?YXc2Ni9pQjRCZ3o2OTB1S1NJSmRHSGRUd3dscU1YbEpkWjFhNlFldlFHV0RF?=
 =?utf-8?B?c3JYUnNCVHRsUkZoR0RmWm5PZGlrWEZXb3V6RnRaeC94Rmdra3kxYzNxSE5Y?=
 =?utf-8?B?ZmgzRWJ6YmJKV1ZHNmFBVC9IaTg5YkRaRGJMVit6Q0ZaUTIxSWVqckM4ZWxP?=
 =?utf-8?B?RHdJalM3alRCdFFKUzBaaWVVSnhUQklXU0pFTXlRbUd4empDQS9pZENueXUw?=
 =?utf-8?B?bHkwQ3FHaDBwVXNFbjg5WWZQbURtTzk3UHZVRHVoZzhjVEw2cGhsZVNSZFpk?=
 =?utf-8?B?dEREZkxTSC9hM3ArRys3VDJodTRQRVYwR3NycmlRdGJXU3dQRGRocVFVNTln?=
 =?utf-8?B?dFgwM3UzRy9WazVQRm1rUlFia0hlWFl5aWtCd04xc2MzVkxXcEZ1alBFUVQ2?=
 =?utf-8?B?M0xzaEU5K2dYMVk4YlNwTjNIOTUwa1FLa2lPRVgyQlNuMHE5YTRsdUswdUtr?=
 =?utf-8?B?K0ZmeFZuWW9KNXd4WUU1Yy82a0ZvNTZuRnJITk1CbTVqYko4dUdQdkRnbExu?=
 =?utf-8?B?a21yU2h2dElQem8rcHNiN1J1bnlwL0JXbUQwRUF0ZXVYTU5xSEJIZjdWMWpL?=
 =?utf-8?B?TGxCVTA1bmk0dW55NVFXMTRKVjU4cTJ3cmNwdUJCdktWUmcyM3c3eE5uLzcz?=
 =?utf-8?B?S29CUVl1blpWT09jdjd1R3M5c1VtSnNuMmJ6eFpVV3lHc0dyRmZmQk4zTUZF?=
 =?utf-8?B?REVjS1NrSWV4MDhjQkZxZDcrV0VyYXhPRFRneTJzREN5bEE5TXVkWHd0YTZq?=
 =?utf-8?B?L09NVFhxdlFnVVVFSUFKb1daUEJwdlBkRmRUbnhlWXp6bnFzUVM1NkMyZFdG?=
 =?utf-8?B?QVJVWWpKVm1CRFJmZ3N3WmEyZ2dxbU5sdkdCU1ZEcXpoazcrWDdvaUFiekdQ?=
 =?utf-8?B?S3VkSnVxOHJHNVA5bUZXazhtZ0hubDAydzM4cy8wWmUramJhZUdQU1V0dG1w?=
 =?utf-8?B?cURJTG9nb2w0S1hoMDdESGUyUFdLTkpWVHRIdUoza1dFU0E1SUpVeXphVkYx?=
 =?utf-8?B?STI2L25aRW5aTGJxQWN2WGdjY2E2aTRCVXVPdHliZytFYTBGeFM2dS9rMGNM?=
 =?utf-8?B?Vm8rREdUMlB5b2JQeU1WWXBTREhsUHlKQnFyU2FpdWh4MEQ0WHQ3TFpVU1Y1?=
 =?utf-8?B?LytrTDZmYm5jOEJQaldnUk95T2YzcXhXUkg3emNVRXczNVJ1NW1IeUxsdlQy?=
 =?utf-8?B?SFlhTmNtZVVIZHh2UXJXMEM2YkgyL2xBQzdLaUxYV1lGYmRuRE1OZ0E5THZl?=
 =?utf-8?B?dWNJdzFoaUlYZ3l1L3FjV0swWnB1a1pjRDBJRGp5MFVzQzkyNU8xbEVWM2dX?=
 =?utf-8?B?N3JqbU04QzFYQXcvaTJ1QVd0V0VJNm5xQ2F3R2lJT0pkZEJrM3J2OW8rUUlM?=
 =?utf-8?B?U1ZETFJwcVhjMmJtM29CdGZTK1lQTE91QlA3bGlFSzk0dy8rOEVobDRhMG9Q?=
 =?utf-8?B?cHRmNUhRWFBLcXAyTVkrbUdoNzJveXRsbXFRaWN3NVdEVDVONE1nZ3preWFN?=
 =?utf-8?B?Z0hLTG9GMGZ4cGVzTHh3aGdXN3RML2d6ci8vQnJjelZldmNPUjNxL1BndVA2?=
 =?utf-8?B?ZklrbHdQSTUrdVI3WUE3OE0vNE12eWtBeTRCQlkyYWJUbXhEQk1jWTE2Z0pk?=
 =?utf-8?B?ME5hRmFRWEVxa2RTUDVmTENXa1VMdnBQaUgxYnhnUGptRWVqVkg4TjZ2REJJ?=
 =?utf-8?B?RXZLTXdBVStqaHYrU3NSUFNyOFdteGo2dHJ5eTliNnhjNEdUazN2OXRRWlhU?=
 =?utf-8?B?OFVxZDVqRmJlSGlRejVpbFNNclBTNUN2a1RlR1JreWpMdXA0d0xCKzlXemxZ?=
 =?utf-8?B?ekpiQURiYjFoV2NPNUNiVm5NVjNVbmFlYUlvRXBmOEtxR2RtOGc4blRUTzlQ?=
 =?utf-8?B?MjdyKzVhdWxHNG4raEVNVnlJTUpIZVpITFJKUHBIOGp5Qkg2V1hkME9oVzF4?=
 =?utf-8?B?THVmWjZURWpMK2cyVGd0YnVOQ2hVY3cwWk5EMVV0cU1wQWpUa0RwcEg4Nk56?=
 =?utf-8?B?Z2RCamw3YzNZRUtHUUphdllpVWJFb3R1QXJtM3pzUlBaZmh5YWp5NU5sbmpM?=
 =?utf-8?Q?pSUzIlrq+cB/+Rpd349RXKvGY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7376035a-5bec-4515-169c-08de36e8a143
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 06:03:09.8759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4QixHzZhUGGMn+RPtXIXeSYLl6uXazZcW54VIDTpPBvQodWmTKxesDAN/61T1VUraWHsuNpeHGb9FHOqX/t6iCUXq9tE+MTH+zI8tfca5Lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5848
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+aYRpXP5hT9eERXHP30sTDY/bWGJloLHos4Ivp1rDc=;
 b=XOQMV5JLA2aINpEy6ZhxI5wZbGZ91N/u0QtnQV6jYqxaJ6ooOXTKRw3DRb8m81VSJpPC6fbc4uB1NX3WB50CEEnpAY/CN7/km3cX+kYDxOqUT/AZsTzpMqG+jkeb4yA1W3kC9ihXlvLh0Dmbbqf8yoVwC7o2lz14BoTgyqGe8xnzK+AZlACC+ULi0oTKB/uVVogwjtzXHJ/f3lctnfHBcjFqM7W5OnOHnJo4sXUTwGAiJ8Daqvutz9D+itshlRr4UlZSZLUDXpWIPqeFJlIlc5i/R5CidFXkziLIkfMLGT6++Ws0hmZUYuRu7DWoDaF6af84jrvLEe741b2tfWHoig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=XOQMV5JL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
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

SGkgSmFjb2IsDQoNClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRha2luZyB0aGUgdGltZSB0byBy
ZXZpZXcgdGhlIHBhdGNoIGFuZCBmb3IgdGhlIGBSZXZpZXdlZC1ieTpgIHRhZyEgSSByZWFsbHkg
YXBwcmVjaWF0ZSB5b3VyIGZlZWRiYWNrLg0KDQpKdXN0IHdhbnRlZCB0byBsZXQgeW91IGtub3cg
dGhhdCBJIGhhZCBhbHJlYWR5IHNlbnQgb3V0IGB2MmAgb2YgdGhpcyBwYXRjaCwgd2hpY2ggaW5j
bHVkZWQgdGhlIFBUUCBUWCB3YWtldXAgZml4IGFuZCBhZGRyZXNzZWQgc29tZSBgY2hlY2twYXRj
aC5wbGAgY29tbWVudHMuDQoNCkZvciBgdjNgLCBJIHdpbGwgaW5jb3Jwb3JhdGUgeW91ciBzdWdn
ZXN0aW9ucyBhbmQgc2VuZCBpdCBvdXQgc2hvcnRseS4NCg0KVGhhbmtzIGFnYWluLA0KVml2ZWsg
QmVoZXJhDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSmFjb2IgS2VsbGVyIDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgRGVjZW1iZXIgOSwgMjAy
NSAxMjo1NCBBTQ0KVG86IEJlaGVyYSwgVml2ZWsgKERJIEZBIERTUCBJQ0MgUFJDMSkgPHZpdmVr
LmJlaGVyYUBzaWVtZW5zLmNvbT47IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT47IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFu
ZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1
YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQpTdWJqZWN0OiBSZTogW1BB
VENIXSBpZ2M6IEZpeCB0cmlnZ2VyIG9mIGluY29ycmVjdCBpcnEgaW4gaWdjX3hza193YWtldXAg
ZnVuY3Rpb24NCg0KDQoNCk9uIDEyLzUvMjAyNSA0OjM5IEFNLCBCZWhlcmEsIFZJVkVLIHdyb3Rl
Og0KPiBGcm9tIDRlM2ViZGMwYWY2YmFhODNjY2ZjMTdjNjFjMWViNjE0MDgwOTVmZmQgTW9uIFNl
cCAxNyAwMDowMDowMCAyMDAxDQo+IEZyb206IFZpdmVrIEJlaGVyYSA8dml2ZWsuYmVoZXJhQHNp
ZW1lbnMuY29tPg0KPiBEYXRlOiBGcmksIDUgRGVjIDIwMjUgMTA6MjY6MDUgKzAxMDANCj4gU3Vi
amVjdDogW1BBVENIXSBpZ2M6IEZpeCB0cmlnZ2VyIG9mIGluY29ycmVjdCBpcnEgaW4gaWdjX3hz
a193YWtldXAgDQo+IGZ1bmN0aW9uDQo+IA0KPiBXaGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQg
dG8gdXNlIG9ubHkgMiBjb21iaW5lZCBxdWV1ZXMgdXNpbmcgDQo+IGV0aHRvb2wgb3IgaW4gYW4g
ZW52aXJvbm1lbnQgd2l0aCBvbmx5IDIgYWN0aXZlIENQVSBjb3JlcyB0aGUgNCBpcnEgDQo+IGxp
bmVzIGFyZSB1c2VkIGluIGEgc3BsaXQgY29uZmlndXJhdGlvbiB3aXRoIG9uZSBpcnEgYXNzaWdu
ZWQgdG8gZWFjaCANCj4gb2YgdGhlIHR3byByeCBhbmQgdHggcXVldWVzIChzZWUgY29uc29sZSBv
dXRwdXQgYmVsb3cpDQo+IA0KPiBzdWRvIGV0aHRvb2wgLWwgZW5wMXMwDQo+IENoYW5uZWwgcGFy
YW1ldGVycyBmb3IgZW5wMXMwOg0KPiBQcmUtc2V0IG1heGltdW1zOg0KPiBSWDogICAgICAgICAg
ICAgICAgICAgICAgICBuL2ENCj4gVFg6ICAgICAgICAgICAgICAgICAgICAgICAgIG4vYQ0KPiBP
dGhlcjogICAgICAgICAgICAgICAgICAxDQo+IENvbWJpbmVkOiAgICAgICAgNA0KPiBDdXJyZW50
IGhhcmR3YXJlIHNldHRpbmdzOg0KPiBSWDogICAgICAgICAgICAgICAgICAgICAgICBuL2ENCj4g
VFg6ICAgICAgICAgICAgICAgICAgICAgICAgIG4vYQ0KPiBPdGhlcjogICAgICAgICAgICAgICAg
ICAxDQo+IENvbWJpbmVkOiAgICAgICAgMg0KPiBlZGR4QG12czp+JCBjYXQgL3Byb2MvaW50ZXJy
dXB0cyB8IGdyZXAgZW5wMXMwDQo+IDE0NzogICAgICAgICAgMSAgICAgICAgICAwICBJUi1QQ0kt
TVNJWC0wMDAwOjAxOjAwLjAgICAwLWVkZ2UgICAgICBlbnAxczANCj4gMTQ4OiAgICAgICAgICA4
ICAgICAgICAgIDAgIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgIDEtZWRnZSAgICAgIGVucDFz
MC1yeC0wDQo+IDE0OTogICAgICAgICAgMCAgICAgICAgICAwICBJUi1QQ0ktTVNJWC0wMDAwOjAx
OjAwLjAgICAyLWVkZ2UgICAgICBlbnAxczAtcngtMQ0KPiAxNTA6ICAgICAgICAgMjYgICAgICAg
ICAgMCAgSVItUENJLU1TSVgtMDAwMDowMTowMC4wICAgMy1lZGdlICAgICAgZW5wMXMwLXR4LTAN
Cj4gMTUxOiAgICAgICAgICAwICAgICAgICAgIDAgIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAg
IDQtZWRnZSAgICAgIGVucDFzMC10eC0xDQo+IA0KPiBXaGlsZSB0ZXN0aW5nIHdpdGggdGhlIFJU
QyBUZXN0YmVuY2ggaXQgd2FzIG5vdGljZWQgdXNpbmcgdGhlIGJwZnRyYWNlIA0KPiB0aGF0IHRo
ZSBpZ2NfeHNrX3dha2V1cCB3aGVuIHRyaWdnZXJlZCBieSB4c2tfc2VuZG1zZyB3YXMgdHJpZ2dl
cmluZyANCj4gdGhlIGluY29ycmVjdCBpcnEgZm9yIHR4LTAoc2VlIHRyYWNlIGJlbG93KQ0KPiAN
Cj4gVElNRVNUQU1QOiA0NTY5OTIzMDk4MjkgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAgfCBF
TlRSWTogDQo+IFJ0Y1R4VGhyZWFkIChQSUQ6IDk0NSkgLSBxdWV1ZV9pZDogMA0KPiBUSU1FU1RB
TVA6IDQ1Njk5MjMxNzE1NyB8IEZVTkNUSU9OOiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEvMTQ4LWVu
cDFzMC0gDQo+IChQSUQ6IDk0OCkNCj4gVElNRVNUQU1QOiA0NTY5OTMzMDk0MDggfCBGVU5DVElP
TjogaWdjX3hza193YWtldXAgfCBFTlRSWTogDQo+IFJ0Y1R4VGhyZWFkIChQSUQ6IDk0NSkgLSBx
dWV1ZV9pZDogMA0KPiBUSU1FU1RBTVA6IDQ1Njk5MzMxNjU5MSB8IEZVTkNUSU9OOiBpZ2NfcG9s
bCB8IEVOVFJZOiBpcnEvMTQ4LWVucDFzMC0gDQo+IChQSUQ6IDk0OCkNCj4gVElNRVNUQU1QOiA0
NTY5OTQzMDk2MzAgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAgfCBFTlRSWTogDQo+IFJ0Y1R4
VGhyZWFkIChQSUQ6IDk0NSkgLSBxdWV1ZV9pZDogMA0KPiBUSU1FU1RBTVA6IDQ1Njk5NDMxNjY3
NCB8IEZVTkNUSU9OOiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEvMTQ4LWVucDFzMC0gDQo+IChQSUQ6
IDk0OCkNCj4gVElNRVNUQU1QOiA0NTY5OTUzMDk0OTMgfCBGVU5DVElPTjogaWdjX3hza193YWtl
dXAgfCBFTlRSWTogDQo+IFJ0Y1R4VGhyZWFkIChQSUQ6IDk0NSkgLSBxdWV1ZV9pZDogMA0KPiBU
SU1FU1RBTVA6IDQ1Njk5NTMxNjU5MyB8IEZVTkNUSU9OOiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEv
MTQ4LWVucDFzMC0gDQo+IChQSUQ6IDk0OCkNCj4gDQo+IER1ZSB0byB0aGlzIGJ1ZyBubyBYRFAg
WmMgc2VuZCBpcyBwb3NzaWJsZSBpbiB0aGlzIHNwbGl0IGlycSBjb25maWd1cmF0aW9uLg0KPiBU
aGlzIHBhdGNoIGltcGxlbWVudHMgdGhlIGNvcnJlY3QgbG9naWMgb2YgZXh0cmFjdGluZyB0aGUg
cV92ZWN0b3JzIA0KPiBzYXZlZCBkdWlybmcgdGhlIHJ4IGFuZCB0eCByaW5nIGFsbG9jYXRpb24u
DQo+IEZ1cnRoZXJtb3JlIHRoZSBwYXRjaCBpbmNsdWRlcyB1c2FnZSBvZiBmbGFncyBwcm92aWRl
ZCBieSB0aGUgDQo+IG5kb194c2tfd2FrZXVwIGFwaSB0byB0cmlnZ2VyIHRoZSByZXF1aXJlZCBp
cnEuIFdpdGggdGhpcyBwYXRjaCANCj4gY29ycmVjdCBpcnFzIGFyZSB0cmlnZ2VyZWQNCj4gDQo+
IGNhdCAvcHJvYy9pbnRlcnJ1cHRzIHwgZ3JlcCBlbnAxczANCj4gMTYxOiAgICAgICAgICAxICAg
ICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAg
ICAwLWVkZ2UgICAgICBlbnAxczANCj4gMTYyOiAgICAgICAgICAyICAgICAgICAgIDAgICAgICAg
ICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgICAxLWVkZ2UgICAgICBl
bnAxczAtcngtMA0KPiAxNjM6ICAgICAgICAzNTkgICAgICAgICAgMCAgICAgICAgICAwICAgICAg
ICAgIDAgSVItUENJLU1TSVgtMDAwMDowMTowMC4wICAgIDItZWRnZSAgICAgIGVucDFzMC1yeC0x
DQo+IDE2NDogICAgIDg3MjAwNSAgICAgICAgICAwICAgICAgICAgIDAgICAgICAgICAgMCBJUi1Q
Q0ktTVNJWC0wMDAwOjAxOjAwLjAgICAgMy1lZGdlICAgICAgZW5wMXMwLXR4LTANCj4gMTY1OiAg
ICAgICAgIDcxICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAw
MDA6MDE6MDAuMCAgICA0LWVkZ2UgICAgICBlbnAxczAtdHgtMQ0KPiANCj4gVElNRVNUQU1QOiAx
NDk2NTg1ODkyMzkyMDUgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAgfCBFTlRSWTogDQo+IFJ0
Y1R4VGhyZWFkIChQSUQ6IDEwNjMzKSAtIHF1ZXVlX2lkOiAwDQo+IFRJTUVTVEFNUDogMTQ5NjU4
NTg5MjQ0NjYyIHwgRlVOQ1RJT046IGlnY19wb2xsIHwgRU5UUlk6IA0KPiBpcnEvMTY0LWVucDFz
MC0gKFBJRDogMTA1OTMpDQo+IFRJTUVTVEFNUDogMTQ5NjU4NTg5MjkzMzk2IHwgRlVOQ1RJT046
IGlnY19wb2xsIHwgRU5UUlk6IA0KPiBpcnEvMTY0LWVucDFzMC0gKFBJRDogMTA1OTMpDQo+IFRJ
TUVTVEFNUDogMTQ5NjU4NTg5Mjk1MzU3IHwgRlVOQ1RJT046IHhza190eF9jb21wbGV0ZWQgfCBF
TlRSWTogDQo+IGlycS8xNjQtZW5wMXMwLSAoUElEOiAxMDU5MykgLSBudW1fZW50cmllczogNjEN
Cj4gVElNRVNUQU1QOiAxNDk2NTg1ODkzNDIxNTEgfCBGVU5DVElPTjogaWdjX3BvbGwgfCBFTlRS
WTogDQo+IGlycS8xNjQtZW5wMXMwLSAoUElEOiAxMDU5MykNCj4gVElNRVNUQU1QOiAxNDk2NTg1
ODkzNDM4ODEgfCBGVU5DVElPTjogeHNrX3R4X2NvbXBsZXRlZCB8IEVOVFJZOiANCj4gaXJxLzE2
NC1lbnAxczAtIChQSUQ6IDEwNTkzKSAtIG51bV9lbnRyaWVzOiAzDQo+IFRJTUVTVEFNUDogMTQ5
NjU4NTg5MzkxMzk0IHwgRlVOQ1RJT046IGlnY19wb2xsIHwgRU5UUlk6IA0KPiBpcnEvMTY0LWVu
cDFzMC0gKFBJRDogMTA1OTMpDQo+IFRJTUVTVEFNUDogMTQ5NjU4NTkwMjM5MjE1IHwgRlVOQ1RJ
T046IGlnY194c2tfd2FrZXVwIHwgRU5UUlk6IA0KPiBSdGNUeFRocmVhZCAoUElEOiAxMDYzMykg
LSBxdWV1ZV9pZDogMA0KPiANCg0KSSBhcHByZWNpYXRlIHRoZSBkZXRhaWxlZCBvdXRsaW5lIG9m
IGhvdyB0byBjb25maWd1cmUgdGhlIHN5c3RlbSBzbyB0aGlzIGZhaWxzLCBhbmQgdGhlIHN0ZXBz
IHRha2VuIHRvIHZlcmlmeSB0aGUgY2hhbmdlIGZpeGVzIHRoZSBpc3N1ZS4NCg0KPiBTaWduZWQt
b2ZmLWJ5OiBWaXZlayBCZWhlcmEgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NCg0KVGhpcyBp
cyBhIGJ1ZyBmaXgsIHNvIGl0IHNob3VsZCBiZSB0YXJnZXRlZCBhdCBuZXQuIFlvdSB3aWxsIG5l
ZWQgYSBGaXhlcyB0YWcgYXNzb2NpYXRpbmcgd2hpY2ggY29tbWl0IHRoaXMgZml4ZXMgYXMgd2Vs
bC4gQWx0ZXJuYXRpdmVseSwgc2luY2UgdGhpcyBpcyBmb3IgYW4gSW50ZWwgbmV0d29ya2luZyBk
cml2ZXIgYW5kIHlvdSBzZW50IGl0IHRvIEludGVsIFdpcmVkIExBTiwgaXQgd291bGQgYmUgIml3
bC1uZXQiIHNvIHRoYXQgaXQgZ2V0cyBwaWNrZWQgdXAgYnkgVG9ueSBmb3IgdGVzdGluZyBhbG9u
ZyB3aXRoIG91ciBvdGhlciBpZ2MgY2hhbmdlcy4NCg0KDQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDMxICsrKysrKysrKysrKysrKysrKystLS0t
DQo+IDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
IA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+IGluZGV4
IDdhYWZhNjBiYTBjOC4uMGNmY2QyMGEyNTM2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiBAQCAtNjkzMCwyMSArNjkzMCw0MiBAQCBpbnQgaWdj
X3hza193YWtldXAoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxh
Z3MpDQo+ICAgICAgICAgICAgaWYgKCFpZ2NfeGRwX2lzX2VuYWJsZWQoYWRhcHRlcikpDQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTlhJTzsNCj4gLSAgICAgICAgICAgaWYgKHF1
ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ICsgICAgICAgICAgaWYgKChmbGFn
cyAmIFhEUF9XQUtFVVBfUlgpICYmIChmbGFncyAmIFhEUF9XQUtFVVBfVFgpKSB7DQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgLyogSWYgYm90aCBUWCBhbmQgUlggbmVlZCB0byBiZSB3b2tlbiB1
cCBxdWV1ZSBwYWlyIHBlciBJUlEgaXMgbmVlZGVkICovDQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgaWYgKCEoYWRhcHRlci0+ZmxhZ3MgJiBJR0NfRkxBR19RVUVVRV9QQUlSUykpDQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7IC8qIGlnYyBxdWV1
ZSBwYWlycyBhcmUgbm90IGFjdGl2YXRlZC4NCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqIENhbid0IHRyaWdnZXIgaXJxDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Ki8NCg0KV2Ugb25seSBoYXZlIHRvIGNoZWNrIGZvciBxdWV1ZSBwYWlycyBpZiB3ZSB3YW50IHRv
IHdha2UgYm90aC4gTWFrZXMgc2Vuc2UuDQoNCj4gKyAgICAgICAgICAgICAgICAgICAgICAvKiBK
dXN0IGdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0KPiArICAgICAgICAgICAgICAgICAg
ICAgIGlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArICAgICAgICAgICAg
ICAgICAgICAgIHJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4gKyAgICAgICAg
ICB9IGVsc2UgaWYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkgew0KPiArICAgICAgICAgICAgICAg
ICAgICAgIGlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fdHhfcXVldWVzKQ0KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArICAgICAgICAg
ICAgICAgICAgICAgIC8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBUeCAqLw0KPiArICAgICAg
ICAgICAgICAgICAgICAgIHJpbmcgPSBhZGFwdGVyLT50eF9yaW5nW3F1ZXVlX2lkXTsNCj4gKyAg
ICAgICAgICB9IGVsc2UgaWYgKGZsYWdzICYgWERQX1dBS0VVUF9SWCkgew0KPiArICAgICAgICAg
ICAgICAgICAgICAgIGlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArICAg
ICAgICAgICAgICAgICAgICAgIC8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0KPiAr
ICAgICAgICAgICAgICAgICAgICAgIHJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsN
Cj4gKyAgICAgICAgICB9IGVsc2Ugew0KPiArICAgICAgICAgICAgICAgICAgICAgIC8qIEludmFs
aWQgRmxhZ3MgKi8NCj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4g
LQ0KPiAtICAgICAgICAgICByaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+ICsg
ICAgICAgICAgfQ0KPiAgICAgICAgICAgICBpZiAoIXJpbmctPnhza19wb29sKQ0KPiAgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiAtRU5YSU87DQo+IC0NCj4gLSAgICAgICAgICAgcV92ZWN0
b3IgPSBhZGFwdGVyLT5xX3ZlY3RvcltxdWV1ZV9pZF07DQo+ICsgICAgICAgICAgLyogUmV0cmll
dmUgdGhlIHFfdmVjdG9yIHNhdmVkIGluIHRoZSByaW5nICovDQo+ICsgICAgICAgICAgcV92ZWN0
b3IgPSByaW5nLT5xX3ZlY3RvcjsNCj4gICAgICAgICAgICBpZiAoIW5hcGlfaWZfc2NoZWR1bGVk
X21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
aWdjX3RyaWdnZXJfcnh0eHFfaW50ZXJydXB0KGFkYXB0ZXIsIHFfdmVjdG9yKTsNCg0KVGhlIGFj
dHVhbCBjb2RlIGNoYW5nZXMgc2VlbSBjb3JyZWN0IHRvIG1lLCBzbyB5b3UgbWF5IGFkZCBteSBy
ZXZpZXcgdGFnIG9uIGEgdmVyc2lvbiB3aGljaCBoYXMgdGhlIEZpeGVzIGFuZCB0aGUgYXBwcm9w
cmlhdGUgdHJlZSB0YWcgaS5lLg0KW2l3bC1uZXRdIG9yIFtQQVRDSCBpd2wtbmV0XS4NCg0KUmV2
aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2Iua2VsbGVyQGludGVsLmNvbT4NCg0KVGhhbmtz
LA0KSmFrZQ0K
