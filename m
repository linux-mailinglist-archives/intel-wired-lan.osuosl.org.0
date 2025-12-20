Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D286CD2BF0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Dec 2025 10:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C3FF60B83;
	Sat, 20 Dec 2025 09:13:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMbiJJ1HS2y3; Sat, 20 Dec 2025 09:13:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC25360BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766222020;
	bh=UZ7PWI06OYk1dgpLHR+cdtp7uwVG8Qb0ZpGKUHlUDKE=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=nRLyHAmia1kZUpsmKGvr6G5vZAx0arBtloKPmTyRQMJPY29rC6mRrW1aRDajyLIEu
	 mPHnaMImIbBJQ6NnCEPniIy8OqhLIHy6BrsfJgyHlNdx0UU8z5cxqvjfG/Hm3gW6lM
	 N+voYjbDhcTdv3a4yoLLMqTj4Ch5I9ElT0LRRlLs+DBSGxjaOuOrabiEhW7HCQos9e
	 1oe6vpCOCBlNlCqPH55mpYaOA/Onpj1eNRNdVXudvSq7XPZfJlImoSNDAvJDxeCV91
	 sBVCfvyr9zg9b0QariSFKLn4aZbspbZqI/BoBgO3XCdy5L2oQEaH8K/nvW4m3CGqQT
	 oqdLxX13OU27Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC25360BA4;
	Sat, 20 Dec 2025 09:13:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4293A119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3617340AEF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kF-ZN-1fKuRd for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 09:13:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.70.51;
 helo=as8pr04cu009.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0CFA40ADC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0CFA40ADC
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11011051.outbound.protection.outlook.com [52.101.70.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0CFA40ADC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:13:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SgdeCeUgO/UqFj2AGFSKA5/zBOBhUT+va0C1ODFHzUWnr+wOwVu++OyxqLhb+KO89hJw9AVeW7pe1qIN6YVqw8p9VcC+1raS27K5xrYL4p7gUzLTNTiq3uIyachedyEn9b5nOJEn52YkwBlPIM7rL7IhMxpSsXMEvqCkoWs3g0NLWjDsQszFMiJ0PSHgVw/VtTadFZkg/xOaDBTxe0vKIMmN82sJdV3jBRoWthZ6DQBobnXeIaHRv2W9xdu9A7RSQ9IPnckvHflCodTxFVuBvU3303C6TgwINcwCrUa8o3STMQ5dHhGNewkSvrAcyIFG6THB2z5RAZdIdM3X+AePeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZ7PWI06OYk1dgpLHR+cdtp7uwVG8Qb0ZpGKUHlUDKE=;
 b=P/EUb+bBo1mepd4epLrWdwi8abefudd/wDzvgeaIzrzAxV0E/XYWpT66X99S7MyNpLiCbKj1F516SAf+fIzX0tkIqKK4LY4NBREm2DXyvFWl4HG3wBBZyvmY0zxBEclMoIBJXmZ1nlV8pdH4yEY1pH81QAzsTENXVbXvJhL3ESaJrwACQ1kALhHNu/b3urEsk6cjsFtaziyN74fBIbi9KOkD8rPPoN9TJIeDQnmTIybfsmWzsNagt4tP0QSzk0hwk4ZUb1xYDoZIKwclu2bCQtMpj/tmeKBCUDA0NihSmB/0XUevPmpds1mlJOS0GCLu2iqDjb76oG3JP0pMOZrCUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GVXPR10MB8252.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:11b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sat, 20 Dec
 2025 09:13:34 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Sat, 20 Dec 2025
 09:13:34 +0000
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
Thread-Index: AQHcbb1WTTQGJ5yOPU2EevfUlIQYdrUkjtMAgAJx4wCAAQNpAIACQWdQ
Date: Sat, 20 Dec 2025 09:13:34 +0000
Message-ID: <AS1PR10MB5392692C9933F1ACA2E56C7E8FB6A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
In-Reply-To: <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=522d02bd-6197-487c-bc6b-524a85651879;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-20T09:10:35Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GVXPR10MB8252:EE_
x-ms-office365-filtering-correlation-id: ab2e26b6-3c05-49b6-3b05-08de3fa80d3e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?cUlkZFpna1ZNY2IwK2YxMi9vMmh3cVZVa1haV1N4cCszOXFOaWQ2OUo2bG1I?=
 =?utf-8?B?dkZka3c1TVFrQTU1OTQwK2V0dmxOZ1hMa28zSW5lL1RxQ0JTa0RPa2F6bHNM?=
 =?utf-8?B?Q01Td3R6d2tVN0VqWlBUNWZLakxUUVhZdnM5Ui9MV1grTVdlYkkyZjROUk1F?=
 =?utf-8?B?QzhBajhIcE1QNVFacUppdmY3TDVyMlB1S2RsS0srWklTWkhRcUtneEtabXBH?=
 =?utf-8?B?TlBIRVJNWC9yS0Vadjh4OVhOZThCeXRBZVlLVjlTdVJBWWQwazNrQ2x2S0xR?=
 =?utf-8?B?N3ViRjNxa0NVWWdMUURXeStNTmI5TnJ5Q3JzVFFidExOTEVOT3hJNzVOQTlv?=
 =?utf-8?B?TVhiSWFNSEdhbkVjRG9NODh5RG9kaHpxLzFScThSc3cycTJvM0J1Z3pXY2Jo?=
 =?utf-8?B?bHR0dGhQeFFzNHgvMGpHYmRkNHVoL0g2eVAwT0VzZUxWRVYrczJuR0ovNWJv?=
 =?utf-8?B?UlZzTGY4Sks3cFVoZUxtR1JxSFUrOFBvdTYxVEE4YnhHb1dHajdmM2dQZ2hj?=
 =?utf-8?B?dWorVDFpcEJZME1Kc0dJejM3L2pLS3VJUUxhOEQ1RWxQTjc0bEV5MFErVlN2?=
 =?utf-8?B?OW8vMytlZ0VXQzBuZlFXZ1hKYTRLMUVZRTBtUHNXNko0VUg1d2RuVHFnRnU2?=
 =?utf-8?B?MkgvaWJLM3JnY3B5eVBxT3p2K0hSMGpmTDAvY2llME8vR3NOSkhTQjNQV3BQ?=
 =?utf-8?B?UDhzT2M3dlQ3amhnOFFCK2NMVkJOUStqbmR1bGVnMkUvakJOcHFhV1VrU3Bq?=
 =?utf-8?B?bnBUZDJpSndTNjNJK09KUnRjbWwzTmtsSlQ3UVRRUGI5SWNqZUZXa0ZkNnAx?=
 =?utf-8?B?YUJhRWMzNWVBZXF5dFJYQ2pqam5rSUhiblIrNlh2WXdiMWZWUTJ1d0g5emd2?=
 =?utf-8?B?RmZrK2N4SHJVN2tTQVVNcFkyQk5rZXVFWGZyMHExMWk2U28zOUhYMTB5dENq?=
 =?utf-8?B?NFphQzgzUDNTSkUyRmF2Ym1PMjBvK3M2ajc1cFVjTU5kTHp3S1haUVMvSi9M?=
 =?utf-8?B?TTk5S1ZiM2JwUEpwWEcwVHg2Wi8yeGE0alZKc1N6cUJYNnQydy9zU3Q0ellV?=
 =?utf-8?B?ZnVQZVRmQlVBMnJDTWVha3hVemFvd1Npc0hqbTRkcVVBamIzcFdxb2g3UFRI?=
 =?utf-8?B?UVhEbWIrTW9uK1ZJRk9MVGU2U0pqeVhFdkVacXBSVUZ5S1FyOEo1clpzMzQ0?=
 =?utf-8?B?Mm04Rkx6RHhtUWNURnJaLzdtNDNlZkREekp5ekJFYkFpbis3bE1IeEdGaXhV?=
 =?utf-8?B?bjdhd2NUeVJkK1Brd1pPZmxSRm0ybE4yYThBMHJ6NjkxQ1ZRdXdld3hGLzVX?=
 =?utf-8?B?c3dLTkloMndralBWZmpZNVRkL0tIOEt5R2JTZDBxNTV1Uis4NTlYMDJwOWtw?=
 =?utf-8?B?OG9hL0JIQkU3TGU4a3p4UE05WDhZZmlwUEJWbHRvaDhHdko0Y0dxRjA2ckww?=
 =?utf-8?B?L2h4ZmxTVUl4L3RJQkhCZ1B6TUJDOVN5NUhNL0ZETWNMcGNUWVdsa0UrNHAr?=
 =?utf-8?B?UFFCNS9FcW1vWlQ0NTV4K3NOTE5vaWU5V3NuTXVaaTFaQW82R0VlM1FBM3Jy?=
 =?utf-8?B?SFF2UjB3bGZMMDh2YjVtOXBjK3VQSURYUTFJUXpBQXVPc0xvTTZUUExORzgv?=
 =?utf-8?B?TEtGTHcvSGtydS8za2NXc1FxRlQrRUJRYWVCbkwyUXZiNTI2a0QxNTZXNHRG?=
 =?utf-8?B?SHA3bWlqQW1DRzRLMS9CZUVqUUhUK3BYcWc0UkI3SnBEMzNYZEVoblJJTzlG?=
 =?utf-8?B?Q3RLMnFmMmpVQkpnZm1NcEJ4Vm5BN2thd1RPUGFhL0V0ZDFEVm1mSWQySzlE?=
 =?utf-8?B?cTg1NEJPYWRWc2J3RlNhdXZ6RmV6Y2N2UVFyc25JWE0xUVllSC9nT0hwTFl1?=
 =?utf-8?B?WTd2WHo3ZHAzV2pzQ2hPcXNMSjRmTXIvN0ZocWZtTnVjd0xvN1hwbksybHpm?=
 =?utf-8?B?bklqdE9jUDNyVFdiZFJ2bnE3TjJKVjFFOWdRNUhRRHE2SDNuazdQWlFsWURY?=
 =?utf-8?B?RC9DVDBuVFlBQTJFWWRmdjZuNzE2bWJucDdxZHIwK3BYVUFvRXNKeS9lMWox?=
 =?utf-8?B?MmhHS1VTVENhR2ZXNXRpMXIzK3VtN1cvbndqUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEZYQVNTenhNMU1LQ3BSWnd1bnRaZU4xK1RtOFBJS1FPSUw1RVZFeWdrMTZi?=
 =?utf-8?B?M3BUbzlwRWs1Q1haWTY2ZFl1QlI4ZXNmN3MwTDhGaWdlS0NELzcwTk00SUZS?=
 =?utf-8?B?STYzakFRbkZNS1hQUnRZajZ3MmlJZFR1bWVOcy8zRXBuQWtjSkUrNllFMEw4?=
 =?utf-8?B?NG1Ha1ZFcHpqQlI0MTA2K1BWMzlzcVhuOHQyQWFsZVlpRXoyRDBJRmRIRTU2?=
 =?utf-8?B?QnJoNFlUWXZ1OTdxbXhYQi9sa0tWUVBFSHNnMHF6aFJVSWxDdE5lS3A4Nkwv?=
 =?utf-8?B?OFZzenZ2WVRGSThPSmh3M1FFaGx5Rmlrd09yWld1MFlKcVp4cVhYZm4rOXlI?=
 =?utf-8?B?SkpFbWt3eWJVczVLdWJxc1FPTUxsaEhIaFdDcTJKcGRUcm1jMzB4bTRYR1Zy?=
 =?utf-8?B?OGpRWXRxdjB3cXYvcXlIQUVPVm1WUTBVcnBaWW5qa3FzaFhpNWQ1eWlWcnM5?=
 =?utf-8?B?c1liZ0IxOHNKTGJ6REcwMWw2QjZyZ2ZIeGZXTmJoci9uRmRSNTI2VXZqSHda?=
 =?utf-8?B?TXd2dWI1QkpHMDh4MnFkcnRaamZjanNEeUhCSkpYQ2IvMm1MVkpIKzJQUFpy?=
 =?utf-8?B?aTVKd2R4dkdVbFpQRUJXRnI0ejhudHE1OU1yVGlHWnN3K3dVSTBJSlFudzMz?=
 =?utf-8?B?MGRXb1o4N0N4bVY3dlQ1YUpmUkZjUWR2WkhiNEJRWTA1Z2lqZlVzVE5XaXJH?=
 =?utf-8?B?aDBpM0l2UGE5Yi9vdU9CNmRYSC9DYjVhSmQvejZjL2o2NURSMjRwWmtLRlFx?=
 =?utf-8?B?bXFveXdLa0hYdWFRbTlPR1g4VFJQajRmNTQxTzRQN0toRzhKVE90aDlGdTVp?=
 =?utf-8?B?QXl3aFI5RzBEeXorTml5amlUYU05NlNpTkEvYVFUbmZtd3crUFF3eVFMWXNQ?=
 =?utf-8?B?SzNWb3dkTWZ4MC9ydUNMVms1THVLMktuQkNtN2VnNnZ1RURFVjMvc3JHQURW?=
 =?utf-8?B?MDg4aXdla3dobHphS0lpWnd1Qm50VC9ZQVRaODhOTGw2OUdvaGx1VlJ3RFlJ?=
 =?utf-8?B?ZnJxQnIzYy9ENXFZV0VzTUtueVZJMk5GaEtjMnhKY0lpMGdpSG43TDZpU0Zz?=
 =?utf-8?B?ajBOV0VBNFhKSTZWSWVqOHk5TFBobnROSkc4SEIxRXVXV0g3NGFKNk9qV09l?=
 =?utf-8?B?U2hHTzRhT2lnRjlzOXR5cHBYdVpqbjIyWWR4cm4yWjJqd1oyZnUyRTRhUHV1?=
 =?utf-8?B?OUtvQ1FjN3pvM0VKMForWEZGOFRtR01KYXQ0bEd3V2ZQQVVvajNxZkFjNlZJ?=
 =?utf-8?B?WkhSZ29DTUJJR29oSmVTZFpIM3dxVDlLd3J4aDk5bkNUanJFWXdsRjJqWlM1?=
 =?utf-8?B?VXpuaUxKRjlRNVV2RVFKYnh5SzY0UFlTQVBaYXJoVy9Pb09ETUxHRnRlc1Z1?=
 =?utf-8?B?a2M5NmxtSHNiSkE1K0hzNTR2ZUxzMVIxOWZodG5tei9tdy9vUDMwdVQ2bno4?=
 =?utf-8?B?NjVDUnQyNDQyQUUvNTlvZ3lBSktDUE5jc1B6MGJxN1R6MCtvZUkwOHMrdWcx?=
 =?utf-8?B?Z2hwS2tTZHZXUnJHNTRNNXRLSGFvcm8wWkZuakxFcVJlMGZGWDRZeittOEow?=
 =?utf-8?B?cFpRY01rYVZJcmdpeWN6WTh2eWpRbW9JdTBqeWxjTjVYSFh6V2NBVkdjVjlv?=
 =?utf-8?B?RjY4SDZSMWNuV1FTdXFMeU84dGxpUnBRUjNqaHI5SEhUU0RDRlkwcE9EYzJC?=
 =?utf-8?B?OVVWL0hMNmtTWmI4NTQwVjNsT0N6U25mcHlPdklSdE9nOEdNVHFreE1obkJK?=
 =?utf-8?B?bnNRVUhKVDlrQlJuQmJhNDRvcjZmekNzL0tVbjJ0Unc4aXhHSXpMZTBkNmli?=
 =?utf-8?B?RDFEUDFSUlh1RWhHYnJlaHBFQUkzeFY4YjJ5UU5pQnpuUVdNcEtqeEhtdFZz?=
 =?utf-8?B?alBLYmVRQzV2RVV5K1B0T3VoS0ZrbXhEWkZXYkdNaGEyZFpDQTVVYVJxcHFu?=
 =?utf-8?B?OVJGRGdVKzBuNGtka0xoWmYwUjEwUmptajU1OXl2OHdOSXZUK3QxbWdRNlBB?=
 =?utf-8?B?aTdGVVh3VXpveVY3QWYwQS94TktFZkhHSUs0WWhEMWUvSThuUWxuZ1RrRXNj?=
 =?utf-8?B?VDgxL1F0WDE4VnJNN0EzRXBDbEdYMG82NkhENmYyQ0o3T2pZUjN2dExtTlNH?=
 =?utf-8?B?OE54VTI0a2RDWitiNWFGVmU2dDgwWnBkSXYzUUlpWS9BN2ZqaUhFbm1aZVhN?=
 =?utf-8?B?dU14ZTRGT1RPZk9Sc3ZWaDNib2JIK01hN0ZXZm5jNVdGZzVSbTVpY0dKMVFk?=
 =?utf-8?B?TlhUamhJaGhZemFmZVFqR0J1NzQ3WDUyRHF0eEZMdnBTTnl5eUprY1pCRnEy?=
 =?utf-8?B?OHgvblB4emxKOWc3UUVkdVJSQld4R1JHR1pucjJJSSs4SEMrQ2xpdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ab2e26b6-3c05-49b6-3b05-08de3fa80d3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2025 09:13:34.2063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OaLGni/S0/faFU1i3QN39a7OuMPK/Ml5F5NAsj6RhIYhceiS1y+Tk5LqHOiBJ4BzpIC8zArzSeAAXvnFycYx1k7E10JUUQJODDI1zmLQe+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8252
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UZ7PWI06OYk1dgpLHR+cdtp7uwVG8Qb0ZpGKUHlUDKE=;
 b=lojiz/n8lYyn5q0B2kPetq/oLN/jE+rPBwjc6gQo4Q/eV2K+NtgseeqxjiLMWjXrp7vRYt581O+4AlE0JGjE0CG5sKXyVikaJ/pnxJxBkm7KFkVfIv1eURh18TrIRNYWqQkoibbe4MIitmuN9aaIZvke3BxfGwoUp2mxwoC0Q1sOetqBfEbzgXSdBreQL+pRksIyRHxOqTnN9VoyjFHDtMg8M8Wp35wtW7PVmjEED/MwrjcC37pFrryD5CZ3UAPtudbw9sNQwmHeTGznDVJG4mCYyDiRsA7S91GjyY/MZG2p1avw+goj6WiRfXwHnxqqJvSAPZBd2udp3Vl5tCCujg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=lojiz/n8
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
IHRoZSBzdHJ1Y3RzIHNob3VsZCBiZSBmaXJzdC4NCk9rYXkuIEkgd2lsbCBmaXggdGhpcyBpbiB0
aGUgbmV4dCB2ZXJzaW9uDQo+IA0KPiA+Pj4gKw0KPiA+Pj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBh
ZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiA+Pj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+
ICsNCj4gPj4+ICsJCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykNCj4g
Pj4+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4+PiArDQo+ID4+PiArCQkJLyogSVJRIHRyaWdn
ZXIgcHJlcGFyYXRpb24gZm9yIFJ4ICovDQo+ID4+PiArCQkJcmluZyA9IGFkYXB0ZXItPnJ4X3Jp
bmdbcXVldWVfaWRdOw0KPiA+Pj4gKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+ID4+PiArCQkJ
CXJldHVybiAtRU5YSU87DQo+ID4+PiArCQkJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsNCj4g
Pj4+ICsJCQlyeF9uYXBpID0gJnFfdmVjdG9yLT5uYXBpOw0KPiA+Pj4gKwkJCS8qIEV4dGVuZCB0
aGUgQklUIG1hc2sgZm9yIGVpY3MgKi8NCj4gPj4+ICsJCQllaWNzX3J4IHw9IHJpbmctPnFfdmVj
dG9yLT5laW1zX3ZhbHVlOw0KPiA+Pj4gKw0KPiA+Pj4gKwkJCS8qIElSUSB0cmlnZ2VyIHByZXBh
cmF0aW9uIGZvciBUeCAqLw0KPiA+Pj4gKwkJCXJpbmcgPSBhZGFwdGVyLT50eF9yaW5nW3F1ZXVl
X2lkXTsNCj4gPj4+ICsJCQlpZiAoIXJpbmctPnhza19wb29sKQ0KPiA+Pj4gKwkJCQlyZXR1cm4g
LUVOWElPOw0KPiA+Pj4gKwkJCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQo+ID4+PiArCQkJ
dHhfbmFwaSA9ICZxX3ZlY3Rvci0+bmFwaTsNCj4gPj4+ICsJCQkvKiBFeHRlbmQgdGhlIEJJVCBt
YXNrIGZvciBlaWNzICovDQo+ID4+PiArCQkJZWljc190eCB8PSByaW5nLT5xX3ZlY3Rvci0+ZWlt
c192YWx1ZTsNCj4gPj4+ICsNCj4gPj4+ICsJCQkvKiBDaGVjayBhbmQgdXBkYXRlIG5hcGkgc3Rh
dGVzIGZvciByeCBhbmQgdHggKi8NCj4gPj4+ICsJCQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21h
cmtfbWlzc2VkKHJ4X25hcGkpKQ0KPiA+Pj4gKwkJCQllaWNzIHw9IGVpY3Nfcng7DQo+ID4+PiAr
CQkJaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCh0eF9uYXBpKSkNCj4gPj4+ICsJ
CQkJZWljcyB8PSBlaWNzX3R4Ow0KPiA+Pj4gKw0KPiA+Pj4gKwkJCS8qIE5vdyB3ZSB0cmlnZ2Vy
IHRoZSByZXF1aXJlZCBpcnFzIGZvciBSeCBhbmQgVHggKi8NCj4gPj4+ICsJCQlpZiAoZWljcykN
Cj4gPj4+ICsJCQkJd3IzMihJR0NfRUlDUywgZWljcyk7DQo+ID4+PiArDQo+ID4+PiArCQkJcmV0
dXJuIDA7DQo+ID4+PiArCQl9DQo+ID4+PiArCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQ
X1RYKSB7DQo+ID4+PiArCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykN
Cj4gPj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+ICsJCS8qIEdldCB0aGUgcmluZyBwYXJh
bXMgZnJvbSBUeCAqLw0KPiA+Pj4gKwkJcmluZyA9IGFkYXB0ZXItPnR4X3JpbmdbcXVldWVfaWRd
Ow0KPiA+Pj4gKwl9IGVsc2UgaWYgKGZsYWdzICYgWERQX1dBS0VVUF9SWCkgew0KPiA+Pj4gKwkJ
aWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ID4+PiArCQkJcmV0dXJu
IC1FSU5WQUw7DQo+ID4+PiArCQkvKiBHZXQgdGhlIHJpbmcgcGFyYW1zIGZyb20gUnggKi8NCj4g
Pj4+ICsJCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4gPj4+ICsJfSBlbHNl
IHsNCj4gPj4+ICsJCS8qIEludmFsaWQgRmxhZ3MgKi8NCj4gPj4+IAkJcmV0dXJuIC1FSU5WQUw7
DQo+ID4+PiAtDQo+ID4+PiAtCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4g
Pj4+IC0NCj4gPj4+ICsJfQ0KPiA+Pj4gKwkvKiBQcmVwYXJlIHRvIHRyaWdnZXIgc2luZ2xlIGly
cSAqLw0KPiA+Pj4gCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+ID4+PiAJCXJldHVybiAtRU5YSU87
DQo+ID4+Pg0KPiA+Pj4gLQlxX3ZlY3RvciA9IGFkYXB0ZXItPnFfdmVjdG9yW3F1ZXVlX2lkXTsN
Cj4gPj4+IC0JaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5h
cGkpKQ0KPiA+Pj4gLQkJaWdjX3RyaWdnZXJfcnh0eHFfaW50ZXJydXB0KGFkYXB0ZXIsIHFfdmVj
dG9yKTsNCj4gPj4+IC0NCj4gPj4+ICsJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsNCj4gPj4+
ICsJaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5hcGkpKSB7
DQo+ID4+PiArCQllaWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KPiA+Pj4gKwkJd3IzMihJ
R0NfRUlDUywgZWljcyk7DQo+ID4+PiArCX0NCj4gPj4+IAlyZXR1cm4gMDsNCj4gPj4+IH0NCj4g
Pj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19wdHAuYw0KPiA+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5j
DQo+ID4+PiBpbmRleCBiN2I0NmQ4NjNiZWUuLjZkOGMyZDYzOWNkNyAxMDA2NDQNCj4gPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4gPj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4gPj4+IEBAIC01NTAs
NyArNTUwLDcgQEAgc3RhdGljIHZvaWQgaWdjX3B0cF9mcmVlX3R4X2J1ZmZlcihzdHJ1Y3QNCj4g
Pj4+IGlnY19hZGFwdGVyDQo+ID4+ICphZGFwdGVyLA0KPiA+Pj4gCQl0c3RhbXAtPmJ1ZmZlcl90
eXBlID0gMDsNCj4gPj4+DQo+ID4+PiAJCS8qIFRyaWdnZXIgdHhyeCBpbnRlcnJ1cHQgZm9yIHRy
YW5zbWl0IGNvbXBsZXRpb24gKi8NCj4gPj4+IC0JCWlnY194c2tfd2FrZXVwKGFkYXB0ZXItPm5l
dGRldiwgdHN0YW1wLT54c2tfcXVldWVfaW5kZXgsIDApOw0KPiA+Pj4gKwkJaWdjX3hza193YWtl
dXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwNCj4gPj4+ICtYRFBf
V0FLRVVQX1RYKTsNCj4gPj4+DQo+ID4+PiAJCXJldHVybjsNCj4gPj4+IAl9DQo+ID4+PiAtLQ0K
PiA+Pj4gMi4zNC4xDQo+ID4+DQo+ID4+IFJldmlld2VkLWJ5OiBQaW90ciBLd2FwdWxpbnNraSA8
cGlvdHIua3dhcHVsaW5za2lAaW50ZWwuY29tPg0KPiA+DQo+ID4gVGhhbmtzIGZvciBhbGwgdGhl
IHJldmlld3MuIEFyZSB0aGVyZSBhbnkgc3VnZ2VzdGlvbnMgYmVmb3JlIEkgYWRkDQo+ID4gbmV0
ZGV2QCBhbmQgbGludXgta2VybmVsQCB0byB0aGUgbGlzdCBmb3IgZnVydGhlciByZXZpZXcNCj4g
DQo+IEZvciB0aGlzIHBhdGNoLCBJIGRvbid0IHRoaW5rIEkgd291bGQgcmUtYWRkIHRoZW0uIEFz
IHBhcnQgb2Ygbm9ybWFsIHByb2Nlc3MgKGZ1dHVyZQ0KPiBwYXRjaGVzKSwgeWVzLCBidXQgdGhp
cyBvbmUgd2FzIGFza2VkIHRvIGJlIGV4Y2x1ZGVkIHdoaWxlIHRoZSBraW5rcyBvZiB0aGUNCj4g
dXBzdHJlYW0gcHJvY2VzcyB3ZXJlIHdvcmtlZCBvdXQuIEFzIHRoaXMgaXMgdGhlIGxpc3QgeW91
J3JlIHRhcmdldGluZyB5b3VyIHBhdGNoDQo+IGZvciBhbmQgSSdsbCBiZSBzZW5kaW5nIHRoaXMg
dG8gbmV0ZGV2IGZvbGxvd2luZyBvdXIgdmFsaWRhdGlvbiwgaXQgd2lsbCBnZXQgaXRzIHJldmll
dw0KPiBmcm9tIG5ldGRldiBhdCB0aGF0IHRpbWUuDQo+IA0KPiBBbHNvLCBhZGRpbmcgU2lhbmcg
d2hvIGlzIG9uZSBvZiB0aGUgYXV0aG9ycyBmcm9tIHRoZSBGaXhlczoNCj4gDQo+IFRoYW5rcywN
Cj4gVG9ueQ0KPiA+DQo+ID4gUmVnYXJkcw0KPiA+DQo+ID4gVml2ZWsNCg0KDQpSZWdhcmRzDQoN
ClZpdmVrDQo=
