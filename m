Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE108CCEB44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 08:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9D8C811E9;
	Fri, 19 Dec 2025 07:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHkhCEOYu7fn; Fri, 19 Dec 2025 07:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F37A811EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766127732;
	bh=PP2eIGyp54vPsnnr4klVXzg+bOvwmv5dMG/6Q8BZ1GA=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=eNbRDld5wxpMHBsETQX/IGu8YkIpwfeYXMJNBTz0roaIzJppLlf32GrffnaXI0udv
	 EVADswAErp/W+thSNMznH08QSstGNYHKmo2sjeeqGZX1kyAbqaAPKPetn5oS2vCKFj
	 EpA4qSaKaIYcu/EhNqJ6WX2t7BiavU3ebEU/H5p13xzqCnpLmTVmPwISrWOTO9popl
	 ql5Z7BhihJUVAtqzWVcyDr3V2E19B7W9lGUAgMMNfLwYj41gwD5nAbv7/4rw0V6nwY
	 5SLTGl8skYWTeLm+L+9a9xmi2J5wTKuus8B1FqCntarjPOGBc/3YrpWRwxlqrCs4U9
	 asI5TpYBGICzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F37A811EC;
	Fri, 19 Dec 2025 07:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C9891A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E18F811A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZ5Aboy1sBdT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 07:02:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.31;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E276A81192
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E276A81192
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011031.outbound.protection.outlook.com
 [40.107.130.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E276A81192
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:02:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pszwRK0iKi2CMxb7lkTI8PXF3TnS2CED3CFJ+Bh/iHwCCDQ8heHOWbQS7KrTVfzb7r0+7PKP3TYRC6laxi+oL6FUZM4O8eD9EBJ9Xz4GUP+emTtoAIn+YpuLFPde/iSiuo3fqEQNE+Q1MQHTHDlead4prcV/kQxHAgtp3zEIzW/7JpvY6AkznQNzmnJrgkftCfAhSjIR2lQdsTKP/Ai6NmjY4ZzU9x0NwDmge7c24PtVl+20fVXbU5Xui3pFoFtzd4TWno11W5f44Id3etcylR6AAGaY2Cum/41k6HItBjGMjh7XVR6jmdm4OIQ2oYl5D1Oct1saVr7OH1vEcru0RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PP2eIGyp54vPsnnr4klVXzg+bOvwmv5dMG/6Q8BZ1GA=;
 b=Cxkvj4jjGET8hxVxwYUX9D1qWa3HTIMCj88KqhDxk/hld/DRlIxyApOtk45YDpW8IQD07zZWauvAzez/L6Lb2mCBkQZ/S0Y8pR6lqxdQtoiCx9NVDmBGKOEy4VBsmLt/NWXmlWoRTGgzaSVFVFyN+bjqosdAvLpU/SPXJPXk1VICukZcrz+H65sb88sSm32UoyIvIiwG0RWyZ1TGCbNn/D9aSHZ/7tL+HCHjUXCprYxMCF3OrFYT9HJ3x8AgZPGpho2v86azV2BVc7t7PCElRgy4Tl7fna+Bh6/forFxSIjkFrLJU9UPgb+3C0dzih5o21+Lwyxe1UyPRRDBIrXhBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by AMBPR10MB9243.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:6a7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Fri, 19 Dec
 2025 07:02:05 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 07:02:05 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Yoong.Siang.Song@intel.com"
 <Yoong.Siang.Song@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHcbb1WTTQGJ5yOPU2EevfUlIQYdrUkjtMAgAJx4wCAAQNpAIAAij8w
Date: Fri, 19 Dec 2025 07:02:05 +0000
Message-ID: <DU0PR10MB5387DA3C8BD8703907230ED18FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
In-Reply-To: <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=8b4bba5e-d8f2-46ef-9b88-ad5840ec1d74;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-19T06:58:48Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|AMBPR10MB9243:EE_
x-ms-office365-filtering-correlation-id: f4f2c041-7fa9-475f-9800-08de3ecc8498
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?YjV3ZFViblJybkJiUVNtaXo3ZGtaQk5oMW05OEp0STdUaXVoTmVsSFBIMU9L?=
 =?utf-8?B?cWlldU9EcTJDa1pJbjRYcFE1djhCTXVVSmlNaE53QW1zYUpwVWdOTkM0NjY0?=
 =?utf-8?B?TWxoSnBpVC9HZFhCWGdkM3ptVHNndStyb2xiSUV0cXVHQ2JITmplQitobFVN?=
 =?utf-8?B?WDhselRDcHZvQzE1eGE2T2NocnoraG5KNEtoYy82SjBSenJXRWJMS2RRREhC?=
 =?utf-8?B?U2h1Q1czUUFIeDU1TkQ4U3d1WGJ4d0lPT2dzQVBzd1U0QzROL0VheWZwYndi?=
 =?utf-8?B?NFRJcU5Vbk1mZ2tMNU9HRENxejBFWFlyRHI3Y1A3NzczLytONlZZUzlCeENi?=
 =?utf-8?B?ZzJpMGpCUmVmb01SN1pSNEREdEFVTmZTZFhQODVxVDhRN0FHL1BXTUcvVytz?=
 =?utf-8?B?bmM1Uy85eDNDSWEwYzZ2Tml0QUp3cy93UWNMZW5hSjc1a09OWU1VTmowNmNZ?=
 =?utf-8?B?NVRzbmUxUFJqR3c2QlVMNGZhNEdwWnZpOHQ4UUZaOEE0akRFeXljREo0U29X?=
 =?utf-8?B?eUZONmp4dGFCRTJZWW00eW9MOXBXUk1xT2o0cVpMOFRheG4yZ2xEd2VRWkha?=
 =?utf-8?B?N3hXZlRZZFliY3hyMFU4eUt4MEF5RE5tU3VobXpLcUpiTU41Q2MvSEQybCt4?=
 =?utf-8?B?RFU0MXpXU1h2cWEwbkZPRVcwWGFqdW0vRUFxelBJdmEyd05CcklUdzdzRzAv?=
 =?utf-8?B?K2N5RUxkU0NlOHRCMCtSWjI5RTBZMyt1QXZHaHlIdDFVU3VYdHY1SVZFTTZt?=
 =?utf-8?B?VDdHOHhCUDZweHZvZHZGL0hYTkFTLzZBV0NLam9IWFVaY2xaVURaVmdCaFVL?=
 =?utf-8?B?djByaEo5bDYyL0RWVEJReW42dW9QeVdncFhoaCtNOCs5c01RRGtxcENUOFFV?=
 =?utf-8?B?TjAyOUVHaysrNjBrN1BuYjAzbXZvUFZEWjFPeE9EUnN1UEVDSzNnTDh1Zk5T?=
 =?utf-8?B?T2U2bVZEWUVqR3Q2Q3pldzcwVDZRbGJYWW9ORTA4SFZuUVNkZXVLVkZYWDFP?=
 =?utf-8?B?bTFzbVlDZlA3R1BkbjRtNG9kTE9uQnlvcTR5eUszamxpc0xYRk1GMElJV3Q1?=
 =?utf-8?B?dktWZ0NEVXBrZjR5MkZ5S084S3ZTOU8vT21PM05kTUNBaFFlZUdHY0lDQjVM?=
 =?utf-8?B?VDllYU1PQytTTGtTVWRIZW5WZlpmejBYNnpJelRGUklWcmhPRkhRcWwwQThT?=
 =?utf-8?B?aW9vcHdYbTNmRXBLWTNwSEZvVjdtbG1WQW8ybk85SCtxeDhlcTBKdER5WFdx?=
 =?utf-8?B?NDZsMEpuRW1aMmVqNzNJZW5IeWVYQ1VQaWJ3MHFxRTBEYnVyeFFESHlGaTRp?=
 =?utf-8?B?bjQrU0JvUGFOOUFVWXBiUlY5dDRsVHg2aTd5NGQyRHhtWWRBb2hTQXFuaExn?=
 =?utf-8?B?ZG9ZaWF0Z1MrcEg0YnlCcldNOE9zTGpmcGJoY3JNQnhTcEJyYi9iZUV5aXUw?=
 =?utf-8?B?UnBldExFMG04bUg1aUhVcEtYVmZlTU13QVIzWXMwNVdIWHVSVWtIZW4zeDVB?=
 =?utf-8?B?ZTB2TU02VkFqSFNSckRzUWdHNThHbytSd3VOTG12WWRUb3NmRUYwUURPcGpu?=
 =?utf-8?B?cGZsQjV2eC9OYk9TMlRsNDRoYXdVNVBhdE0yYkpFOWwyOWpjUWJZNUVndHFs?=
 =?utf-8?B?ZmwwMi9yUXNub3NVcENFd24rZ3BGS3J1ZURCWjFnMEFIMm0rb0F2aWx0Rkg4?=
 =?utf-8?B?d2hobmozUXdHcGlIMDdBeUZDNG02aVJPdjFiL3hoWFNRZmVRSnNIWnZTb0hq?=
 =?utf-8?B?eWpGbzJRV0YyQnRSek5UOFJxNm9ZOUZxdkEybDRKZjNNTmpMOGRLaU5vSWVR?=
 =?utf-8?B?NEdSY1Zzc3F6dkk2eEFTd1hkVlgwWTBCWldlV1V3UVowVmdBN3VHZG1PYy9q?=
 =?utf-8?B?azFJYWEwYXFXalFGK2R2bEk3dHJIMExXTHlsTUtldzNsbzFuSlFqZjIyNDBB?=
 =?utf-8?B?UXp5YVBmM1hGZzllaEQ0MGh3RlFtTkpheDc3WlYvT0N1TUlkd3dRNGZpOE1W?=
 =?utf-8?B?TTA0OU5DNU1yRnRGWTNqcUV5MW5vdW9kY1ZIakF5NGtzRGJhUEtLSE9kNG9o?=
 =?utf-8?B?S3FKMm9RVUJEY0wzcDhwZ2dDcDRmSkxqOGxkdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0dnK2ExU2JhcjNYMkxBZjdYNnRNdmUzRjY2SEFDMEhLbllWMElRNXNkbnlZ?=
 =?utf-8?B?d1lOVG02RVBTWkR0am5PaFRIT2JFMWNVdzRMVmZ4V1lOUXpGdFBXdTAyVlFH?=
 =?utf-8?B?UGlOYkNtZTNSOGIxWVJ0TE52Qkt5elJwY1A4b0FtWWcrVnBPWVF1UUMrUHli?=
 =?utf-8?B?NnllMVMwSFFPYUZlYTg5SUFBNG1sZERPYXo4alc5b1BGNWJUSlduTmIwYXVY?=
 =?utf-8?B?QldtTzFRYmpyVVFSNlhtNTdraUNyM29DMUliZ1RLMmRUUGY0NFZlM2h0OWJ0?=
 =?utf-8?B?dHFGaWViSHJicU9BaGRNUnRiNGZCWUxOVjFmMEcvZlBFM2xUV1FsMS9Edm15?=
 =?utf-8?B?YnNUZy93TVpOZEtOVFlVTW5QMDI1RnhqYkZrcTdZRjY2Tkp4TlB1NnM3S2JO?=
 =?utf-8?B?SXZYMEZvYys0TlQxSlpERDVMSDZSQ0piYnIxbkthZTZ5T1h2N2oyTkEwcFgy?=
 =?utf-8?B?aXBkeVFBRjR6enRZK210RDJHcU5ybkdnN01nS0RMUWFGQmNSUGF6YjhqSWJs?=
 =?utf-8?B?cVhaZmR5eDJPcUlGTzF2QnhUaWhrS01acytjQmtiMFE5N1dqdnV5RzBtUUV3?=
 =?utf-8?B?SEtLekJtYVB4RC9zN2d0Z2ZSelJhWHVvRHlBTFQ2RnFTdlRtUjJVSFlBZGxM?=
 =?utf-8?B?ZHVJa3VJYjVGZWZzVWtVOEVSY2dVNnBoT09mSGh1WEpESkU5TWpHaEtxeWFx?=
 =?utf-8?B?RUpNTjFHYWgxMkNIWGlwbjZRM1dPdVJYM3g3ZWRJSy9QbVQ4MXoxWVNTUFlr?=
 =?utf-8?B?NmZFMHV0VkhYdjNpWlpoZGU5L3c1eXByMnphelVpTVNsYXdNRkdEUndpZDYw?=
 =?utf-8?B?S3AwWGdwZDFjb2NSUEJDbTNQTHllU3kwaVRpaUVrZmtZWVNFc2cxTUNTL1dw?=
 =?utf-8?B?MlJURGlSQ2xnSjlhWkk0WERQdHRVZk5mQkxOMEx1NGJZU2NjbS9rajdaUkYv?=
 =?utf-8?B?bkVwT2o3QlBqZW1UaVJUVEIySnVhVUlwbFRoVWdBZTB1OFZHb2hrV056Z0dr?=
 =?utf-8?B?QmtRbFJFc1FGQmtSUThtK3FmUk4xdnphNWZkZ09hMVlzZWMycFQxNTViY2R0?=
 =?utf-8?B?MnhnazlUT2plSXV4MHNudk9rQ1dMK3JCTnV0ZEUrM1k5Qzd5cVIzcFdiTkFJ?=
 =?utf-8?B?YW1iZmxJeldsdEY2OUJzZ09MbFcvdGIyeFhZS0VlZUhqUURrQTB4czNWTWVN?=
 =?utf-8?B?VTVmQlpDbzRuYjhWV1dRc2JQaEQ4aWdOSUF5c0ZJZlM1SjRBYkRGMHBBN0d2?=
 =?utf-8?B?aTZCd2lzNlpHV01tNjB3ZTc5TU5nS25KTWFMemhtUDFrTjlmR0J1T04xRkIv?=
 =?utf-8?B?Ykc2R2hvbkh1dld0SXdVSGVKclJwTm9TZjFqS3I0a2wycDdtTTQ3RnM0bW91?=
 =?utf-8?B?cnBOQWIzN2RjUldDdmJHMzBFUGFIN3E4NVJBakMvcFhWUTNmZm1tZERjVTdG?=
 =?utf-8?B?QVlLbzdXR1dCNmNlY2dDRGNOTnRjelNiSjBxVGNnRDFLd2NKSE9hcEo0Yi9Y?=
 =?utf-8?B?Mld0L2I4VzgrVm5ORHQ3UEJUUUdVcEVOWWdYdm9wdzR6YUlVTkN5WnRsWHNh?=
 =?utf-8?B?cXVqZkJ2cEpDQnMvK1g1bWVoOVRYdytIbWNBTU5BcmQza3J6UEtQdFZ1OW80?=
 =?utf-8?B?Y0szRys4WVAzUGNIZkRDeGdwdkRLKzZHVGduSEVZbCtnZUxla2s4Z2V3Zysw?=
 =?utf-8?B?UmRxK1crWnRBSHRKTmk3bzJRSjZzRTk4dTkrSFFvczI0QnpaS255UEpIa1BQ?=
 =?utf-8?B?Njh1OWZtMmJMTzJHZ2tKbngwbU5sajRLbldwQVNHNmRsa2FwbkZVWDlUWVVV?=
 =?utf-8?B?YW1zYkEyaUREY1plczFLajZtdmpBNGxWT0U5VnFxK3hyRDhpbjJ4bWlySFlM?=
 =?utf-8?B?WDgrSFNoV3ZON2V4L0Q4V3JZSjBQMWRLQTVDREE0NENmOFdNZlRuTXJ1bmVG?=
 =?utf-8?B?TTZ1MDVWcENPdlJ3YmhBckxySG1aT24wdUt6bHFReS80SllhUXhwRmQ4THBX?=
 =?utf-8?B?ZnNZY0xLcWt6VnNiN3NKOTFXdHRUNy80dWtveElVRE1pbXUveE5sOU5xYkhr?=
 =?utf-8?B?a0hlSmE5Q0JVc0NQYlNndVo0QUR6V1ZMMm5Jcmx4M29JSXoxYmZOVzNRRkZY?=
 =?utf-8?Q?9XVr9HkJ/2akaGctnIx3AIrjc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f2c041-7fa9-475f-9800-08de3ecc8498
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 07:02:05.1781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLxRkNtTCsIgY7gvMsTCV31f1V5vJE+ck8zaynbejcGU99g4l42Om8rS2zsBRq594X6M6285mmLXhATv5krXof33qDhavUZmcDKG4BFmpww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBPR10MB9243
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PP2eIGyp54vPsnnr4klVXzg+bOvwmv5dMG/6Q8BZ1GA=;
 b=0AdHk2lUkGRQoWkg5Jo9njjpbT+jCdDh+xdyx/aHJsamBfqQdwVQM3urHi/1YmJjC6MA9zdus3iVX+loM8EM2LPPv97w8J/M+c/bITAcnNRslFfpEqXp8xBnCZkwDnu4bXaw4wXFZcPFxSE91uezKxqKz6RqeI0tfdDDT9DCGNCVq5ejGTviOMwxBMmxa7QvQoWP7MwOxPLMFPqrS4zDLzE/gKuQGhiwslAJCjDwmJniOV4NH0L8PT3EikAUO+cqs7XcTCsJkoxm35ls5G/je5dAriEU5o2LGKFAhVkavCN9ha8JcRQwU9/OClaFfPtrH0YgLv0gcmryUMyiyHWItA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=0AdHk2lU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVG9ueSBOZ3V5ZW4gPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTgs
IDIwMjUgMTE6NDQgUE0NCj4gVG86IEJlaGVyYSwgVml2ZWsgKERJIEZBIERTUCBJQ0MgUFJDMSkg
PHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT47DQo+IEt3YXB1bGluc2tpLCBQaW90ciA8cGlvdHIu
a3dhcHVsaW5za2lAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBp
bnRlbC5jb20+Ow0KPiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPjsNCj4gWW9vbmcuU2lhbmcuU29uZ0BpbnRlbC5jb20NCj4gQ2M6IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBob3Jtc0BrZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2OF0gaWdjOiBGaXggdHJpZ2dlciBvZiBp
bmNvcnJlY3QgaXJxIGluDQo+IGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uDQo+IA0KPiANCj4gDQo+
IE9uIDEyLzE3LzIwMjUgMTE6MjEgUE0sIEJlaGVyYSwgVklWRUsgd3JvdGU6DQo+ID4gSGVsbG8g
Y29sbGVhZ3VlcywNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4+IEZyb206IEt3YXB1bGluc2tpLCBQaW90ciA8cGlvdHIua3dhcHVsaW5za2lAaW50ZWwuY29t
Pg0KPiA+PiBTZW50OiBUdWVzZGF5LCBEZWNlbWJlciAxNiwgMjAyNSA2OjU1IFBNDQo+ID4+IFRv
OiBCZWhlcmEsIFZpdmVrIChESSBGQSBEU1AgSUNDIFBSQzEpIDx2aXZlay5iZWhlcmFAc2llbWVu
cy5jb20+Ow0KPiA+PiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+OyBLZWxsZXIsIEphY29iIEUNCj4gPj4gPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT47IE5ndXllbiwgQW50aG9ueSBMDQo+ID4+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+ID4+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgaG9ybXNAa2VybmVs
Lm9yZzsgQmVoZXJhLCBWaXZlaw0KPiA+PiAoREkgRkEgRFNQIElDQyBQUkMxKSA8dml2ZWsuYmVo
ZXJhQHNpZW1lbnMuY29tPg0KPiA+PiBTdWJqZWN0OiBSRTogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIGl3bC1uZXQgdjhdIGlnYzogRml4IHRyaWdnZXIgb2YNCj4gPj4gaW5jb3JyZWN0IGlycSBp
biBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbg0KPiA+Pg0KPiA+Pj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4gPj4+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJv
dW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmDQo+ID4+PiBPZiBWaXZlayBCZWhlcmENCj4gPj4+
IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTUsIDIwMjUgMToyMSBQTQ0KPiA+Pj4gVG86IExva3Rp
b25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwN
Cj4gPj4+IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9u
eSBMDQo+ID4+PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlz
bGF3DQo+ID4+PiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPj4+IENjOiBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgaG9ybXNAa2VybmVsLm9yZzsgQmVoZXJhLA0K
PiA+Pj4gVml2ZWsgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NCj4gPj4+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHY4XSBpZ2M6IEZpeCB0cmlnZ2VyIG9mDQo+
ID4+PiBpbmNvcnJlY3QgaXJxIGluIGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uDQo+ID4+Pg0KPiA+
Pj4gVGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIGlzc3VlIHdoZXJlIHRoZSBpZ2NfeHNrX3dha2V1
cCBmdW5jdGlvbiB3YXMNCj4gPj4gdHJpZ2dlcmluZyBhbiBpbmNvcnJlY3QgSVJRIGZvciB0eC0w
IHdoZW4gdGhlIGkyMjYgaXMgY29uZmlndXJlZCB3aXRoDQo+ID4+IG9ubHkgMiBjb21iaW5lZCBx
dWV1ZXMgb3IgaW4gYW4gZW52aXJvbm1lbnQgd2l0aCAyIGFjdGl2ZSBDUFUgY29yZXMuDQo+ID4+
PiBUaGlzIHByZXZlbnRlZCBYRFAgWmVyby1jb3B5IHNlbmQgZnVuY3Rpb25hbGl0eSBpbiBzdWNo
IHNwbGl0IElSUQ0KPiA+PiBjb25maWd1cmF0aW9ucy4NCj4gPj4+DQo+ID4+PiBUaGUgZml4IGlt
cGxlbWVudHMgdGhlIGNvcnJlY3QgbG9naWMgZm9yIGV4dHJhY3RpbmcgcV92ZWN0b3JzIHNhdmVk
DQo+ID4+PiBkdXJpbmcgcngNCj4gPj4gYW5kIHR4IHJpbmcgYWxsb2NhdGlvbiBhbmQgdXRpbGl6
ZXMgZmxhZ3MgcHJvdmlkZWQgYnkgdGhlDQo+ID4+IG5kb194c2tfd2FrZXVwIEFQSSB0byB0cmln
Z2VyIHRoZSBhcHByb3ByaWF0ZSBJUlEuDQo+ID4+Pg0KPiA+Pj4gRml4ZXM6IGZjOWRmMmEwYjUy
MCAoImlnYzogRW5hYmxlIFJYIHZpYSBBRl9YRFAgemVyby1jb3B5IikNCj4gPj4+IEZpeGVzOiAx
NWZkMDIxYmM0MjcgKCJpZ2M6IEFkZCBUeCBoYXJkd2FyZSB0aW1lc3RhbXAgcmVxdWVzdCBmb3IN
Cj4gPj4+IEFGX1hEUCB6ZXJvLWNvcHkgcGFja2V0IikNCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFZp
dmVrIEJlaGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPg0KPiA+Pj4gUmV2aWV3ZWQtYnk6
IEphY29iIEtlbGxlciA8amFjb2Iua2VsbGVyQGludGVsLmNvbT4NCj4gPj4+IFJldmlld2VkLWJ5
OiBBbGVrc2FuZHIgbG9rdGlub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+
Pj4gUmV2aWV3ZWQtYnk6IFByemVteXNsYXcgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT4NCj4gPj4+IFJldmlld2VkLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXll
bkBpbnRlbC5jb20+DQo+IA0KPiBVbmxlc3MgeW91IGhhdmUgcmVjZWl2ZWQgYSBSZXZpZXdlZC1i
eSB0YWcgZXhwbGljaXRseSBmcm9tIHRoZSBwZXJzb24sIHlvdQ0KPiBzaG91bGRuJ3QgYWRkIGl0
Lg0KPiANCj4gLi4uDQo+IA0KPiA+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19tYWluLmMgfCA5MA0KPiA+Pj4gKysrKysrKysrKysrKysrKysrLS0tLS0gZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyAgfA0KPiA+Pj4gMiArLQ0KPiA+Pj4gMiBmaWxl
cyBjaGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gPj4+DQo+ID4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMN
Cj4gPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPj4+
IGluZGV4IDdhYWZhNjBiYTBjOC4uNzZlNDc5MGJkM2MwIDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4+PiBAQCAtNjkwOCwyMSAr
NjkwOCwxMyBAQCBzdGF0aWMgaW50IGlnY194ZHBfeG1pdChzdHJ1Y3QgbmV0X2RldmljZQ0KPiA+
Pj4gKmRldiwgaW50DQo+ID4+IG51bV9mcmFtZXMsDQo+ID4+PiAJcmV0dXJuIG54bWl0Ow0KPiA+
Pj4gfQ0KPiA+Pj4NCj4gPj4+IC1zdGF0aWMgdm9pZCBpZ2NfdHJpZ2dlcl9yeHR4cV9pbnRlcnJ1
cHQoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLA0KPiA+Pj4gLQkJCQkJc3RydWN0IGlnY19x
X3ZlY3RvciAqcV92ZWN0b3IpDQo+ID4+PiAtew0KPiA+Pj4gLQlzdHJ1Y3QgaWdjX2h3ICpodyA9
ICZhZGFwdGVyLT5odzsNCj4gPj4+IC0JdTMyIGVpY3MgPSAwOw0KPiA+Pj4gLQ0KPiA+Pj4gLQll
aWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KPiA+Pj4gLQl3cjMyKElHQ19FSUNTLCBlaWNz
KTsNCj4gPj4+IC19DQo+ID4+PiAtDQo+ID4+PiBpbnQgaWdjX3hza193YWtldXAoc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxhZ3MpICB7DQo+ID4+PiAJc3RydWN0
IGlnY19hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYoZGV2KTsNCj4gPj4+ICsJc3RydWN0
IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+ID4+PiAJc3RydWN0IGlnY19xX3ZlY3RvciAq
cV92ZWN0b3I7DQo+ID4+PiAJc3RydWN0IGlnY19yaW5nICpyaW5nOw0KPiA+Pj4gKwl1MzIgZWlj
cyA9IDA7DQo+ID4+Pg0KPiA+Pj4gCWlmICh0ZXN0X2JpdChfX0lHQ19ET1dOLCAmYWRhcHRlci0+
c3RhdGUpKQ0KPiA+Pj4gCQlyZXR1cm4gLUVORVRET1dOOw0KPiA+Pj4gQEAgLTY5MzAsMTggKzY5
MjIsODAgQEAgaW50IGlnY194c2tfd2FrZXVwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsDQo+ID4+
PiB1MzINCj4gPj4gcXVldWVfaWQsIHUzMiBmbGFncykNCj4gPj4+IAlpZiAoIWlnY194ZHBfaXNf
ZW5hYmxlZChhZGFwdGVyKSkNCj4gPj4+IAkJcmV0dXJuIC1FTlhJTzsNCj4gPj4+DQo+ID4+PiAt
CWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiA+Pj4gKwlpZiAoKGZs
YWdzICYgWERQX1dBS0VVUF9SWCkgJiYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkpIHsNCj4gPj4+
ICsJCS8qIElmIGJvdGggVFggYW5kIFJYIG5lZWQgdG8gYmUgd29rZW4gdXAgKi8NCj4gPj4+ICsJ
CS8qIGNoZWNrIGlmIHF1ZXVlIHBhaXJzIGFyZSBhY3RpdmUuICovDQo+IA0KPiBuaXQ6IFRoaXMg
Y2FuIGp1c3QgYmUgb25lIGNvbW1lbnQsIG5vIG5lZWQgdG8gYnJlYWsgaXQgaW50byB0d28gY29t
bWVudCBibG9ja3MNCj4gDQo+IAkJLyogSWYgYm90aCBUWCBhbmQgUlggbmVlZCB0byBiZSB3b2tl
biB1cA0KPiAJCSAqIGNoZWNrIGlmIHF1ZXVlIHBhaXJzIGFyZSBhY3RpdmUuDQo+IAkJICovDQo+
IA0KPiANCj4gPj4+ICsJCWlmICgoYWRhcHRlci0+ZmxhZ3MgJiBJR0NfRkxBR19RVUVVRV9QQUlS
UykpIHsNCj4gPj4+ICsJCQkvKiBKdXN0IGdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0K
PiA+Pj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiA+Pj4g
KwkJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+ICsJCQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1tx
dWV1ZV9pZF07DQo+ID4+PiArCQl9IGVsc2Ugew0KPiA+Pj4gKwkJCS8qIFR3byBpcnFzIGZvciBS
eCBBTkQgVHggbmVlZCB0byBiZSB0cmlnZ2VyZWQgKi8NCj4gPj4+ICsJCQl1MzIgZWljc190eCA9
IDA7DQo+ID4+PiArCQkJdTMyIGVpY3NfcnggPSAwOw0KPiA+Pj4gKwkJCXN0cnVjdCBuYXBpX3N0
cnVjdCAqcnhfbmFwaTsNCj4gPj4+ICsJCQlzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKnR4X25hcGk7DQo+
IA0KPiBUaGlzIHNob3VsZCBiZSBSQ1QsIGxvbmdlc3QgYXJndW1lbnQgdG8gc2hvcnRlc3QsIHNv
IHRoZSBzdHJ1Y3RzIHNob3VsZCBiZSBmaXJzdC4NCj4gDQo+ID4+PiArDQo+ID4+PiArCQkJaWYg
KHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ID4+PiArCQkJCXJldHVybiAt
RUlOVkFMOw0KPiA+Pj4gKw0KPiA+Pj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1f
dHhfcXVldWVzKQ0KPiA+Pj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+ICsNCj4gPj4+ICsJ
CQkvKiBJUlEgdHJpZ2dlciBwcmVwYXJhdGlvbiBmb3IgUnggKi8NCj4gPj4+ICsJCQlyaW5nID0g
YWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+ID4+PiArCQkJaWYgKCFyaW5nLT54c2tfcG9v
bCkNCj4gPj4+ICsJCQkJcmV0dXJuIC1FTlhJTzsNCj4gPj4+ICsJCQlxX3ZlY3RvciA9IHJpbmct
PnFfdmVjdG9yOw0KPiA+Pj4gKwkJCXJ4X25hcGkgPSAmcV92ZWN0b3ItPm5hcGk7DQo+ID4+PiAr
CQkJLyogRXh0ZW5kIHRoZSBCSVQgbWFzayBmb3IgZWljcyAqLw0KPiA+Pj4gKwkJCWVpY3Nfcngg
fD0gcmluZy0+cV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+ID4+PiArDQo+ID4+PiArCQkJLyogSVJR
IHRyaWdnZXIgcHJlcGFyYXRpb24gZm9yIFR4ICovDQo+ID4+PiArCQkJcmluZyA9IGFkYXB0ZXIt
PnR4X3JpbmdbcXVldWVfaWRdOw0KPiA+Pj4gKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+ID4+
PiArCQkJCXJldHVybiAtRU5YSU87DQo+ID4+PiArCQkJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3Rv
cjsNCj4gPj4+ICsJCQl0eF9uYXBpID0gJnFfdmVjdG9yLT5uYXBpOw0KPiA+Pj4gKwkJCS8qIEV4
dGVuZCB0aGUgQklUIG1hc2sgZm9yIGVpY3MgKi8NCj4gPj4+ICsJCQllaWNzX3R4IHw9IHJpbmct
PnFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KPiA+Pj4gKw0KPiA+Pj4gKwkJCS8qIENoZWNrIGFuZCB1
cGRhdGUgbmFwaSBzdGF0ZXMgZm9yIHJ4IGFuZCB0eCAqLw0KPiA+Pj4gKwkJCWlmICghbmFwaV9p
Zl9zY2hlZHVsZWRfbWFya19taXNzZWQocnhfbmFwaSkpDQo+ID4+PiArCQkJCWVpY3MgfD0gZWlj
c19yeDsNCj4gPj4+ICsJCQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKHR4X25h
cGkpKQ0KPiA+Pj4gKwkJCQllaWNzIHw9IGVpY3NfdHg7DQo+ID4+PiArDQo+ID4+PiArCQkJLyog
Tm93IHdlIHRyaWdnZXIgdGhlIHJlcXVpcmVkIGlycXMgZm9yIFJ4IGFuZCBUeCAqLw0KPiA+Pj4g
KwkJCWlmIChlaWNzKQ0KPiA+Pj4gKwkJCQl3cjMyKElHQ19FSUNTLCBlaWNzKTsNCj4gPj4+ICsN
Cj4gPj4+ICsJCQlyZXR1cm4gMDsNCj4gPj4+ICsJCX0NCj4gPj4+ICsJfSBlbHNlIGlmIChmbGFn
cyAmIFhEUF9XQUtFVVBfVFgpIHsNCj4gPj4+ICsJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5u
dW1fdHhfcXVldWVzKQ0KPiA+Pj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiA+Pj4gKwkJLyogR2V0
IHRoZSByaW5nIHBhcmFtcyBmcm9tIFR4ICovDQo+ID4+PiArCQlyaW5nID0gYWRhcHRlci0+dHhf
cmluZ1txdWV1ZV9pZF07DQo+ID4+PiArCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1JY
KSB7DQo+ID4+PiArCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcykNCj4g
Pj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+ICsJCS8qIEdldCB0aGUgcmluZyBwYXJhbXMg
ZnJvbSBSeCAqLw0KPiA+Pj4gKwkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0K
PiA+Pj4gKwl9IGVsc2Ugew0KPiA+Pj4gKwkJLyogSW52YWxpZCBGbGFncyAqLw0KPiA+Pj4gCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPj4+IC0NCj4gPj4+IC0JcmluZyA9IGFkYXB0ZXItPnJ4X3Jpbmdb
cXVldWVfaWRdOw0KPiA+Pj4gLQ0KPiA+Pj4gKwl9DQo+ID4+PiArCS8qIFByZXBhcmUgdG8gdHJp
Z2dlciBzaW5nbGUgaXJxICovDQo+ID4+PiAJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4gPj4+IAkJ
cmV0dXJuIC1FTlhJTzsNCj4gPj4+DQo+ID4+PiAtCXFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0
b3JbcXVldWVfaWRdOw0KPiA+Pj4gLQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2Vk
KCZxX3ZlY3Rvci0+bmFwaSkpDQo+ID4+PiAtCQlpZ2NfdHJpZ2dlcl9yeHR4cV9pbnRlcnJ1cHQo
YWRhcHRlciwgcV92ZWN0b3IpOw0KPiA+Pj4gLQ0KPiA+Pj4gKwlxX3ZlY3RvciA9IHJpbmctPnFf
dmVjdG9yOw0KPiA+Pj4gKwlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKCZxX3Zl
Y3Rvci0+bmFwaSkpIHsNCj4gPj4+ICsJCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+
ID4+PiArCQl3cjMyKElHQ19FSUNTLCBlaWNzKTsNCj4gPj4+ICsJfQ0KPiA+Pj4gCXJldHVybiAw
Ow0KPiA+Pj4gfQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+ID4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfcHRwLmMNCj4gPj4+IGluZGV4IGI3YjQ2ZDg2M2JlZS4uNmQ4YzJkNjM5Y2Q3IDEw
MDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAu
Yw0KPiA+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0K
PiA+Pj4gQEAgLTU1MCw3ICs1NTAsNyBAQCBzdGF0aWMgdm9pZCBpZ2NfcHRwX2ZyZWVfdHhfYnVm
ZmVyKHN0cnVjdA0KPiA+Pj4gaWdjX2FkYXB0ZXINCj4gPj4gKmFkYXB0ZXIsDQo+ID4+PiAJCXRz
dGFtcC0+YnVmZmVyX3R5cGUgPSAwOw0KPiA+Pj4NCj4gPj4+IAkJLyogVHJpZ2dlciB0eHJ4IGlu
dGVycnVwdCBmb3IgdHJhbnNtaXQgY29tcGxldGlvbiAqLw0KPiA+Pj4gLQkJaWdjX3hza193YWtl
dXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwgMCk7DQo+ID4+PiAr
CQlpZ2NfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIHRzdGFtcC0+eHNrX3F1ZXVlX2luZGV4
LA0KPiA+Pj4gK1hEUF9XQUtFVVBfVFgpOw0KPiA+Pj4NCj4gPj4+IAkJcmV0dXJuOw0KPiA+Pj4g
CX0NCj4gPj4+IC0tDQo+ID4+PiAyLjM0LjENCj4gPj4NCj4gPj4gUmV2aWV3ZWQtYnk6IFBpb3Ry
IEt3YXB1bGluc2tpIDxwaW90ci5rd2FwdWxpbnNraUBpbnRlbC5jb20+DQo+ID4NCj4gPiBUaGFu
a3MgZm9yIGFsbCB0aGUgcmV2aWV3cy4gQXJlIHRoZXJlIGFueSBzdWdnZXN0aW9ucyBiZWZvcmUg
SSBhZGQNCj4gPiBuZXRkZXZAIGFuZCBsaW51eC1rZXJuZWxAIHRvIHRoZSBsaXN0IGZvciBmdXJ0
aGVyIHJldmlldw0KPiANCj4gRm9yIHRoaXMgcGF0Y2gsIEkgZG9uJ3QgdGhpbmsgSSB3b3VsZCBy
ZS1hZGQgdGhlbS4gQXMgcGFydCBvZiBub3JtYWwgcHJvY2VzcyAoZnV0dXJlDQo+IHBhdGNoZXMp
LCB5ZXMsIGJ1dCB0aGlzIG9uZSB3YXMgYXNrZWQgdG8gYmUgZXhjbHVkZWQgd2hpbGUgdGhlIGtp
bmtzIG9mIHRoZQ0KPiB1cHN0cmVhbSBwcm9jZXNzIHdlcmUgd29ya2VkIG91dC4gQXMgdGhpcyBp
cyB0aGUgbGlzdCB5b3UncmUgdGFyZ2V0aW5nIHlvdXIgcGF0Y2gNCj4gZm9yIGFuZCBJJ2xsIGJl
IHNlbmRpbmcgdGhpcyB0byBuZXRkZXYgZm9sbG93aW5nIG91ciB2YWxpZGF0aW9uLCBpdCB3aWxs
IGdldCBpdHMgcmV2aWV3DQo+IGZyb20gbmV0ZGV2IGF0IHRoYXQgdGltZS4NCj4gDQo+IEFsc28s
IGFkZGluZyBTaWFuZyB3aG8gaXMgb25lIG9mIHRoZSBhdXRob3JzIGZyb20gdGhlIEZpeGVzOg0K
PiANCj4gVGhhbmtzLA0KPiBUb255DQo+ID4NCj4gPiBSZWdhcmRzDQo+ID4NCj4gPiBWaXZlaw0K
DQpIaSB0b255LiANCg0KT2theSAsIHVuZGVyc3Rvb2QuDQoNClBsZWFzZSBsZXQgbWUga25vdyBh
Ym91dCB0aGUgc3RhdHVzIG9mIHRoaXMgcGF0Y2gNCg0KUmVnYXJkcw0KDQpWaXZlaw0K
