Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B8BCB2267
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 08:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72C0340B4A;
	Wed, 10 Dec 2025 07:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ej0bShiFK2_d; Wed, 10 Dec 2025 07:09:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA8E840B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765350597;
	bh=CUQnkf7VPceoEgy5j1IwkXtl9wqZ0kuPD3SnBHvsxqc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iVVvr5tL6yX0i0PlR+EYd7vVf0EwfCrJ+S08haPvD+uqQUHEa2NmVbwu2yRbZpXqq
	 O1m6mNChzSLz62MYYvrsgbIX/X/QLNo9dmwJuGjdrWQ4V6R4NuthxEsXwkzBUko2Ns
	 kJZFWBHFXiv374iiVa4h6FED3rMtccB7lBuntG7SqEropionJ0M8ErJdvGZhiaJbSP
	 9IYrBqwGDpghFT4I00mQ6ykxrbpOXWF6X+v6rDhLgBy+FZFakQUnZY/aGixBDAzbGQ
	 jMuXZ0OrPv9nEhfUZZ97rpU0eFjw+i+aGkHtEIicBG4vwCnikj8+0p0w1dUqCCfKK4
	 QAJrPaPwwuMJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA8E840B18;
	Wed, 10 Dec 2025 07:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B5FBE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9906840B04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NFOpWckwQRwE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 07:09:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.159.59;
 helo=osppr02cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10D6E40A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10D6E40A9C
Received: from OSPPR02CU001.outbound.protection.outlook.com
 (mail-norwayeastazon11013059.outbound.protection.outlook.com [40.107.159.59])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10D6E40A9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:09:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ucWGkQzbK+NkFSpRoMsFIM5uE9sW7eUDRM33UakapzDJ5+sYng9FkJ5GYbLHTt5DiwNmVfKUb/0HMPQv6/eum25hnau2Y1qp8ADDHkrDb3pTlOHOWbqkXigfi7+TP00Y9LSQwB1EXPNHsA0ZkyFyJgEHJDu6qyBUbA9HEONr7OluSJ/zcgfCXD7n/cLc2YFybl3tAFPRmizZpJcjyl3YJa6v7ImYBrR4qS+T3WZhYIkNs8Pxvvbxfse9ZWSxLBkzz9PKP0ywxmgQpcB3qX/kpaE2VxwgOqVEMp00S3s0Q8bFQOyxh7hIFZIi0kEYEGV5V9Jk5LM8iFS5D1oIwYNttg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CUQnkf7VPceoEgy5j1IwkXtl9wqZ0kuPD3SnBHvsxqc=;
 b=x7buQKPSg1REUDReIML7Oquy4nZW4eXea4VnHreROMxAeXw/RHbPZhS0eHwAgt6Bkk1V3QUItimqVNeKamggLbZgLwCMfZ1MSG/vLpv9YVKuZbOeOyTNoWf3Ic2fgBXxzpdUUwwB7ZSMPSgZ972tLBanpcSej4rx9QuA6D+/taQEqx1Gie+TxI0cdB+epzdJt0XFA5frXyN+R4LowqscWLUxTZerI5oG0DPUnOopjnpbSAA1VdxygwQHoL42flSD2VK6QJBeYy50loSzcDCjJmWMgxLnz9ZnKIHaLVKz4RXDvOjQx3NQWY/0J7yL6mwf3cF3QmDAaHX9vV2ecXZlQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GV2PR10MB7509.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Wed, 10 Dec
 2025 07:09:50 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 07:09:50 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v4 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaaP5gjWbouD0OUCcv3XEa8PHhQ==
Date: Wed, 10 Dec 2025 07:09:50 +0000
Message-ID: <AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GV2PR10MB7509:EE_
x-ms-office365-filtering-correlation-id: 762a7d52-85ff-4faf-c682-08de37bb1c13
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?R0VScVVQNUd2ZUV6SnZhemFJNWVsYmM0SHM3TDZsaGNhTTgrZ0gvWU5YNXU1?=
 =?utf-8?B?dUpRNHh5RkJaZkJNNDZxRnZyTWxjNkIyRGplZVVvZUN5TDVyL3MxQUFhSXVV?=
 =?utf-8?B?bUhJVUx6SC9LYVVmbzM0V2psZGVZVGlpOTFndnRBb2VQYkR1dE9CNVlJUFhk?=
 =?utf-8?B?S3BKenZyaWNEYm5vanRyOUpxWjBEQ1AwTGs1NXVrR1l5OVZpZ1piODQ1SWpO?=
 =?utf-8?B?NWpBVmtFOFFwS2xQWGNJckxndjZxWXg5ZVNiVmNnbHd0OXY0QVNOVVlBTDhS?=
 =?utf-8?B?RU1XRUg4cmwzMjZCN3paaGRRWHY4Y21Gd25seGR6VjZGdXRnR2lINi9KTTZp?=
 =?utf-8?B?dnRMT28rTWczbEx5a3hKWHlXdTFyTkkxQ1J5OGtwNXdYZlUrWXpaak9vQUg1?=
 =?utf-8?B?VXFSVExrUVFIT2ZVYUJVTEtXa2xUbVVtWEgyOU9uczZ0Tk54R250ZkJkWDU1?=
 =?utf-8?B?dXBJaTJiSGlXR2ptWnRyekQrWGJ1czJTZEdLMkZVWVRnSmNpQSs4MmxNck1D?=
 =?utf-8?B?MnQ5MXdLbFB6NzhsVG5VNjZTbU9ZVWdGVGpjKzJRNW5pOCt6cUh0ZU1uQUs1?=
 =?utf-8?B?TEJUNG15ZFRFNVZvcld1dGFKNUxYU21BMHVCMnVUQlpNcStuc3BBTjU3TlZB?=
 =?utf-8?B?SWxFVkV0QnVicHFSekttVW1mYml6SVJFZFRHYVJjamR4d0UzMUpDZ0RFcjRp?=
 =?utf-8?B?aGt0U1BzMnIzRW91dW9TdEdZTTNYQ1dQTzdKUFJNdFBkSytiRFB6Wlg2UmVC?=
 =?utf-8?B?MmpRMzR6OHZ6ZmtCaTAwdEJGMTFOSUlKeElheGwwZGxBd1F3Wkw5N0NNRmhl?=
 =?utf-8?B?ajNCMjlMVDRBWjNIMUFCNDB1RFpWL280N3MrV1RabVhHdHBCbFRRYjJBKytp?=
 =?utf-8?B?QVNUWk0rZHpaUTJaTUhzMTU5R3lPQUYzdUIxWXlERnM3MW1DcWtyYVkrL0Jy?=
 =?utf-8?B?dGtDaWxENWY4ei9mRWxOamdxRkhkUDZsQysvM2s3eCtYZlRsR1lPaWNKM3Ru?=
 =?utf-8?B?cXJCMk0vRFI4bEpPY2FzcUwwT2lITlZrQk15aUtubjhQMDF1Q0tidjFsRVky?=
 =?utf-8?B?NFhkb25hS29wT2RWYlo1RG9lS3lXMXJEMHNLTjR6ZEwrMjFDVTRTTjV4MGh5?=
 =?utf-8?B?Ym11RHQ4bzhFZG9CVHJ6aE9kWjNYT3V6Wmt6NkVpSkVxUzd5ZFZqcG9hMUR1?=
 =?utf-8?B?K0F1TGRSc0VMc2YwMnlQNHdsZEhOUmdJM3JmN3V1SGp5OWxiYlBYNlE4YU01?=
 =?utf-8?B?cFBjTWxNOUhxQktiYjBvR0JHdDB0Z0RLQzVVR090dit1MGljU05QQVQ5VEJR?=
 =?utf-8?B?Y0k0eFhhTU83SG5OendzZ1BGL2JWOGhEUHNaMUhqdHB5WlBCUUFJcFI3UnRZ?=
 =?utf-8?B?UG5TM0dCejRLNlNrK0FGUC84UG9MZFNzVmFPU25NY1lQTHNDUUlrT3YxTWlW?=
 =?utf-8?B?Slp2bERRYUJ6Vmpvb0xSRnJjWVZQb3NTRzVUb3FnYjlLSDdBZGc0TTVFdVhD?=
 =?utf-8?B?LzNNTS9ieHhvQkUrR3JrcTNlN0xzVS9JV3dhUy9zR1c2Y3B5UElWbG1GMjFT?=
 =?utf-8?B?M3d1c3RqVDFEZU5WMlEycjFnRjBTRGRkaUVEYjcrL2lHOG5nSTl5cytMSVJW?=
 =?utf-8?B?QTVNUzhRa2FVLzBQbGNGbEpud3VQRVNGdmtZcFVRNndhbGZlcUZXT1ZuMS9a?=
 =?utf-8?B?alV2MkROVFU2U3l5NnBNbzhVenJuYmJ3a0VhZlBodlpoUm9IYTFCS1JVK0xz?=
 =?utf-8?B?SHBuQmRUSXlGOUxFWTBQRXNyZzZ2ejYya2F2K3lERWFOWTBaYTRmakRvZ0Qy?=
 =?utf-8?B?UmVFOVRzTFFZZXAraXpSaW9acEd2bmxKYXVVNUpMMmU2SGpNZDYrYWRyenlL?=
 =?utf-8?B?MElzMjdIZzB0eFFPSkN2ODZuZDFLRUxXaWNJNGJJL1VxSUtxZHRyejhaeUI3?=
 =?utf-8?B?TTY1MWJzUldkTlp6dEFIZUNlTjlOOEN5cHcyMVQrdEcycWpTNXRDQjBmKzly?=
 =?utf-8?B?UlQvZTlubVQyNm5EdHpNc01zRHBYQXBETjQ4M1ZUVktMWTlqdGQzWTJtOGZ3?=
 =?utf-8?B?UGxBeUF3YmhHNlQwcktrSjZVMjRYTzRpcktKUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkVLMjArbW5pbjg3a1NRNjVrVWkwUnQ4N3ZCUXBwRWJwSkpsbzhwZmJ2SkxB?=
 =?utf-8?B?ZDBvUVhhVTVqNlRUWDNIcDlwMnJHWXNrQmxVUktIdTN1NXZ3MVJYbWhYbFVh?=
 =?utf-8?B?N2V1RzVkRHFwL2NEVkNvcXlxQ01vOUhabmFZdjBuMVJCU1NVU2lnbEtsempk?=
 =?utf-8?B?WUNnaFdmZ3lpb3ZFcE9ZR1M4TFVYTis4cEcwN1FlYVdCZzBtZUdVQ0tBYjdY?=
 =?utf-8?B?UnE5K0NXMmJTSVVqd3BHQ3c2Ykd3d2g5eW9YeUZEVGRkZVpTZWkzZC9tUDFE?=
 =?utf-8?B?SnJOY2pzUTlCRFFycDZteS83NDVIYm9wd082M3IwSWcwUEdPQ0FnMUlBYlN6?=
 =?utf-8?B?VE5GbktyRzIrUi9UcWtvYXNJVzNEa0xGdUNtNjZGdjNHYUUzRlBHc09FSkky?=
 =?utf-8?B?ZkRoalMwR3YrRmdOZXlrYkRzYVpSR1dRZDBmS2pIdkxkcVVnV1g1TU5rTVhj?=
 =?utf-8?B?cTRIQzBubWhtQ3Y0cCsweUFWSzRQTlpWcVRPNXRXa2kwMWpsU21lTS9pSEUr?=
 =?utf-8?B?YkdiVDBYUnh4OVlvd1VZRTJJMTd1QkxvUUpHRisxM2dqbUNZQVNwNCtGdHlk?=
 =?utf-8?B?V2QzVXdCbmdqWHliUDg1cW5uK0JnbnJJNTlXZTlBR3BpNk1TOHlONThzYUF5?=
 =?utf-8?B?VnJoSmlVeVBMZHRPU3BxRU1hTG8wUk9YNllMODFNZ1I0TFNEUDZQcDlsUWts?=
 =?utf-8?B?a1k0MG43UFBJb1BJMCsvdlpqelNMaWdlSXNLcjRZR2pXWUt2a3A3VkNXVXhk?=
 =?utf-8?B?cjdJR2x3ajFwNG90MUw5YW5zZEdraUlQRHVqMlJJM242Z0g3c3FPc04yTEFN?=
 =?utf-8?B?QkhIRlJNK2xNcGpvT2xBSTVJc2RRaDhuSUg1c2hKWjZCbXROaFNBNFBSSkZo?=
 =?utf-8?B?THhCeFp1dEFkbkNUdDZwWFVTRUxTZHNoeFNiQXd4cXV2Z3VJNTBvdm5aWG8x?=
 =?utf-8?B?SmdGVTd4VU10dTJuMkRLVGc1cUdBOS96U09LTTI2ZG1DL2FjRTJaTkpjZitx?=
 =?utf-8?B?UFBUY29VVVVDVS9CUC9DTHN1bU5TVTZoSEVVa2lTVzJyVzVvMXpTNVplUGIr?=
 =?utf-8?B?K0l3Wkg3eUtkc2ZDckFxamNZOGN0dFkzYU5JOWhkMURjRUcvNmxCQW9HSHFD?=
 =?utf-8?B?ditFaFNhZ2NtVHRpQUpuTXM2TjFIK1ZmV3RvMTZISHl1eTB0eDYxQVE0aDBG?=
 =?utf-8?B?TW93SE0vOVNucyt1Lzl5MVJPa3cwS3ZBVXlhM2Q0UWhKY2pjK2w2OVpMTGRW?=
 =?utf-8?B?QmdFbkwrYTRjUWhKSDRKSWt4THFiNk5tRStCSDV1V214UllnTlZhaWlzRkZh?=
 =?utf-8?B?OGM3QUZ5RytlYzNtOEc0WXUrSFlsVy9vNStyNWVBazZRYlpUdW9BckdaN25W?=
 =?utf-8?B?bjlQK0ttdFdFMCtiTVdlcVVnUkRzTnNvN0lWVkFodi9TNnVHMkdReGllMTNp?=
 =?utf-8?B?TVlsRmRFb002RTZsTkpBTUh3NXI2QVVXalR3V3BwbzZaMzNzVmJ3TUxCNmQ2?=
 =?utf-8?B?OWxFc2Q3a3QxTERXNW9wV0k1dlk4clJ5b1p6VndjOWFqTW1MeEs1NEVtbjZv?=
 =?utf-8?B?ZTdIYUdLM0RWcjdTRmtXTWpNazIyNHZFNXdRMlBqQ25Dazg5S04zNlBLWjhn?=
 =?utf-8?B?MEloU3RLNDFBV0wyaGF0cVptbGd5akxVSkZOZUhNNGJ2N1ZiSjR2WnM2NUV2?=
 =?utf-8?B?MXBhTFFueHpMOVF6YVBLdzUzSTRRWGNGbVYvUTJUR3ZleFJaVWdkVzkvMDMz?=
 =?utf-8?B?L0t4Tmw4T1FsMVRuZ3NrUEx3a2xMZ1NtblA1UTNnTmpJNDc2Z3d4TmsyM0NI?=
 =?utf-8?B?UEk3VlBmSzR2WGpFcG5RaEh1dSsvMTQ0MmdMcXdFQkFnSCtxNGhTK2FDeWpR?=
 =?utf-8?B?bHZiaks0b1FRVXd4aGZuSVlkZW1yaEVjS1M4RGkwUkpENCt6T29lV0JxbHN1?=
 =?utf-8?B?d0FCd0haUUJuT0JrallpNVlKUnhFOEhuc1ZmdlNmUnNpeitadS80VFBXTmg1?=
 =?utf-8?B?TFUxd0ovN0owOVEwbVNla2ZUUEdJc1AvRWp6NXZqWjFQdGdZRllyRXZoK0sw?=
 =?utf-8?B?UnVaNzNTa2N2M0N6K0ZjN0NrZVQweVllNEhBWU9xelhNQWszOGFxZHpLcnpC?=
 =?utf-8?Q?k9TZVBlXY4/6GvpRbHhB982oI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 762a7d52-85ff-4faf-c682-08de37bb1c13
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 07:09:50.2253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QmS+DOeVB9HxiqJEz01CDn2scZVn6AF3oTzxBqJN12iLrtIZXVomxGgv6MSUNVf0lRLAyJVg1zxCgJBMxZI45BiRK+zivFSKTTP6w2di6xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB7509
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUQnkf7VPceoEgy5j1IwkXtl9wqZ0kuPD3SnBHvsxqc=;
 b=Tmrt/f5tPTxZRTh8mqgU3yBa8gLTFd3eMxqp/ZwfYgaHmeMe2ALEvfOGS/79hAaRmBvIapWD/HNDg8IIowXbUEjOsatTlS3/XgylDlb4eWkWfRImIesgmduDaCkfYeLuSu6mPgsHwqsw+8qJoTQsN4iSBsNS5ZGYZLkUw8jrAy2JRtm8kGP6u7qAg+TIYj5waGH3RTB4cTdHxVT1u8IDw2491ryf8INNruRsIk2nynbk2+EsvWJ1Nz/gsB0Ix0TrHRXZR1tSTwPB7cAJs46Zr76jRWWy84KecGJcA/Bw6NRFO9/0qL1nAAAkVohD4thmVBp5xK13kUjMMkprvXvyAA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=Tmrt/f5t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] igc: Fix trigger of
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Q2hhbmdlcyBpbiB2NA0KLSBBZGRlZCAnUmV2aWV3ZWQtYnk6JyB0YWcgZnJvbTogQWxla3NhbmRy
IGxva3Rpb25vdiAuDQoNCkZyb20gMmNiOGU2YThkM2M3YmYxYmU1MWU4MDNkYWJmOTFlMmI4MGIz
YTRlMiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCkZyb206IFZpdmVrIEJlaGVyYSA8dml2ZWsu
YmVoZXJhQHNpZW1lbnMuY29tPg0KRGF0ZTogRnJpLCA1IERlYyAyMDI1IDEwOjI2OjA1ICswMTAw
DQpTdWJqZWN0OiBbUEFUQ0ggdjQgaXdsLW5ldF0gaWdjOiBGaXggdHJpZ2dlciBvZiBpbmNvcnJl
Y3QgaXJxIGluDQogaWdjX3hza193YWtldXAgZnVuY3Rpb24NCg0KVGhpcyBwYXRjaCBhZGRyZXNz
ZXMgdGhlIGlzc3VlIHdoZXJlIHRoZSBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbg0Kd2FzIHRyaWdn
ZXJpbmcgYW4gaW5jb3JyZWN0IElSUSBmb3IgdHgtMCB3aGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3Vy
ZWQNCndpdGggb25seSAyIGNvbWJpbmVkIHF1ZXVlcyBvciBpbiBhbiBlbnZpcm9ubWVudCB3aXRo
IDIgYWN0aXZlIENQVSBjb3Jlcy4NClRoaXMgcHJldmVudGVkIFhEUCBaZXJvLWNvcHkgc2VuZCBm
dW5jdGlvbmFsaXR5IGluIHN1Y2ggc3BsaXQgSVJRDQpjb25maWd1cmF0aW9ucy4NCg0KVGhlIGZp
eCBpbXBsZW1lbnRzIHRoZSBjb3JyZWN0IGxvZ2ljIGZvciBleHRyYWN0aW5nIHFfdmVjdG9ycyBz
YXZlZA0KZHVyaW5nIHJ4IGFuZCB0eCByaW5nIGFsbG9jYXRpb24gYW5kIHV0aWxpemVzIGZsYWdz
IHByb3ZpZGVkIGJ5IHRoZQ0KbmRvX3hza193YWtldXAgQVBJIHRvIHRyaWdnZXIgdGhlIGFwcHJv
cHJpYXRlIElSUS4NCg0KRml4ZXM6IGZjOWRmMmEwYjUyMGQ3ZDQzOWVjZjQ2NDc5NGQ1M2U5MWJl
NzRiOTMgKCJpZ2M6IEVuYWJsZSBSWCB2aWEgQUZfWERQIHplcm8tY29weSIpDQpGaXhlczogMTVm
ZDAyMWJjNDI3MDI3M2Q4ZjRiN2Y1OGZkZGE4YTE2MjE0YTM3NyAoImlnYzogQWRkIFR4IGhhcmR3
YXJlIHRpbWVzdGFtcCByZXF1ZXN0IGZvciBBRl9YRFAgemVyby1jb3B5IHBhY2tldCIpDQpTaWdu
ZWQtb2ZmLWJ5OiBWaXZlayBCZWhlcmEgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NClJldmll
d2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmtlbGxlckBpbnRlbC5jb20+DQpSZXZpZXdlZC1i
eTogQWxla3NhbmRyIGxva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQot
LS0NCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDgxICsrKysr
KysrKysrKysrKysrKy0tLS0tDQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19w
dHAuYyAgfCAgMiArLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgMTkgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQpp
bmRleCA3YWFmYTYwYmEwYzguLmExMzBjZGY0YjQ1YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KQEAgLTY5MDgsMjEgKzY5MDgsMTMgQEAgc3RhdGljIGlu
dCBpZ2NfeGRwX3htaXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgaW50IG51bV9mcmFtZXMsDQog
CXJldHVybiBueG1pdDsNCiB9DQogDQotc3RhdGljIHZvaWQgaWdjX3RyaWdnZXJfcnh0eHFfaW50
ZXJydXB0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciwNCi0JCQkJCXN0cnVjdCBpZ2NfcV92
ZWN0b3IgKnFfdmVjdG9yKQ0KLXsNCi0Jc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7
DQotCXUzMiBlaWNzID0gMDsNCi0NCi0JZWljcyB8PSBxX3ZlY3Rvci0+ZWltc192YWx1ZTsNCi0J
d3IzMihJR0NfRUlDUywgZWljcyk7DQotfQ0KLQ0KIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykNCiB7DQogCXN0cnVjdCBp
Z2NfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7DQorCXN0cnVjdCBpZ2NfaHcg
Kmh3ID0gJmFkYXB0ZXItPmh3Ow0KIAlzdHJ1Y3QgaWdjX3FfdmVjdG9yICpxX3ZlY3RvcjsNCiAJ
c3RydWN0IGlnY19yaW5nICpyaW5nOw0KKwl1MzIgZWljcyA9IDA7DQogDQogCWlmICh0ZXN0X2Jp
dChfX0lHQ19ET1dOLCAmYWRhcHRlci0+c3RhdGUpKQ0KIAkJcmV0dXJuIC1FTkVURE9XTjsNCkBA
IC02OTMwLDE4ICs2OTIyLDcxIEBAIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykNCiAJaWYgKCFpZ2NfeGRwX2lzX2VuYWJs
ZWQoYWRhcHRlcikpDQogCQlyZXR1cm4gLUVOWElPOw0KIA0KLQlpZiAocXVldWVfaWQgPj0gYWRh
cHRlci0+bnVtX3J4X3F1ZXVlcykNCi0JCXJldHVybiAtRUlOVkFMOw0KKwlpZiAoKGZsYWdzICYg
WERQX1dBS0VVUF9SWCkgJiYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkpIHsNCisJCS8qIElmIGJv
dGggVFggYW5kIFJYIG5lZWQgdG8gYmUgd29rZW4gdXAsICovDQorCQkvKiBjaGVjayBpZiBxdWV1
ZSBwYWlycyBhcmUgYWN0aXZlLiAqLw0KKwkJaWYgKChhZGFwdGVyLT5mbGFncyAmIElHQ19GTEFH
X1FVRVVFX1BBSVJTKSkgew0KKwkJCS8qIEp1c3QgZ2V0IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4
ICovDQorCQkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQorCQkJCXJl
dHVybiAtRUlOVkFMOw0KKwkJCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCisJ
CX0gZWxzZSB7DQorCQkJLyoqKlR3byBpcnFzIGZvciBSeCBBTkQgVHggbmVlZCB0byBiZSB0cmln
Z2VyZWQqKiovDQorCQkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQor
CQkJCXJldHVybiAtRUlOVkFMOyAvKipxdWV1ZV9pZCBpbnZhbGlkKiovDQogDQotCXJpbmcgPSBh
ZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCisJCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+
bnVtX3R4X3F1ZXVlcykNCisJCQkJcmV0dXJuIC1FSU5WQUw7IC8qKnF1ZXVlX2lkIGludmFsaWQq
Ki8NCiANCi0JaWYgKCFyaW5nLT54c2tfcG9vbCkNCi0JCXJldHVybiAtRU5YSU87DQorCQkJLyoq
SVJRIHRyaWdnZXIgcHJlcGFyYXRpb24gZm9yIFJ4KiovDQorCQkJcmluZyA9IGFkYXB0ZXItPnJ4
X3JpbmdbcXVldWVfaWRdOw0KKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQorCQkJCXJldHVybiAt
RU5YSU87DQogDQotCXFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0b3JbcXVldWVfaWRdOw0KLQlp
ZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpDQotCQlp
Z2NfdHJpZ2dlcl9yeHR4cV9pbnRlcnJ1cHQoYWRhcHRlciwgcV92ZWN0b3IpOw0KKwkJCS8qIFJl
dHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUgcmluZyAqLw0KKwkJCXFfdmVjdG9yID0g
cmluZy0+cV92ZWN0b3I7DQorCQkJaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgm
cV92ZWN0b3ItPm5hcGkpKQ0KKwkJCQllaWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KKwkJ
CS8qKklSUSB0cmlnZ2VyIHByZXBhcmF0aW9uIGZvciBUeCAqLw0KKwkJCXJpbmcgPSBhZGFwdGVy
LT50eF9yaW5nW3F1ZXVlX2lkXTsNCiANCisJCQlpZiAoIXJpbmctPnhza19wb29sKQ0KKwkJCQly
ZXR1cm4gLUVOWElPOw0KKw0KKwkJCS8qIFJldHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0
aGUgcmluZyAqLw0KKwkJCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQorCQkJaWYgKCFuYXBp
X2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5hcGkpKQ0KKwkJCQllaWNzIHw9
IHFfdmVjdG9yLT5laW1zX3ZhbHVlOyAvKipFeHRlbmQgdGhlIEJJVCBtYXNrIGZvciBlaWNzKiov
DQorDQorCQkJLyoqKk5vdyB3ZSB0cmlnZ2VyIHRoZSBzcGxpdCBpcnFzIGZvciBSeCBhbmQgVHgg
b3ZlciBlaWNzKioqLw0KKwkJCWlmIChlaWNzICE9IDApDQorCQkJCXdyMzIoSUdDX0VJQ1MsIGVp
Y3MpOw0KKw0KKwkJCXJldHVybiAwOw0KKwkJfQ0KKwl9IGVsc2UgaWYgKGZsYWdzICYgWERQX1dB
S0VVUF9UWCkgew0KKwkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV90eF9xdWV1ZXMpDQor
CQkJcmV0dXJuIC1FSU5WQUw7DQorCQkvKiBHZXQgdGhlIHJpbmcgcGFyYW1zIGZyb20gVHggKi8N
CisJCXJpbmcgPSBhZGFwdGVyLT50eF9yaW5nW3F1ZXVlX2lkXTsNCisJfSBlbHNlIGlmIChmbGFn
cyAmIFhEUF9XQUtFVVBfUlgpIHsNCisJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhf
cXVldWVzKQ0KKwkJCXJldHVybiAtRUlOVkFMOw0KKwkJLyogR2V0IHRoZSByaW5nIHBhcmFtcyBm
cm9tIFJ4ICovDQorCQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQorCX0gZWxz
ZSB7DQorCQkvKiBJbnZhbGlkIEZsYWdzICovDQorCQlyZXR1cm4gLUVJTlZBTDsNCisJfQ0KKwkv
KiogUHJlcGFyZSB0byB0cmlnZ2VyIHNpbmdsZSBpcnEgKi8NCisJaWYgKCFyaW5nLT54c2tfcG9v
bCkNCisJCXJldHVybiAtRU5YSU87DQorCS8qIFJldHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBp
biB0aGUgcmluZyAqLw0KKwlxX3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KKwlpZiAoIW5hcGlf
aWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpIHsNCisJCWVpY3MgfD0g
cV92ZWN0b3ItPmVpbXNfdmFsdWU7DQorCQl3cjMyKElHQ19FSUNTLCBlaWNzKTsNCisJfQ0KIAly
ZXR1cm4gMDsNCiB9DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMN
CmluZGV4IGI3YjQ2ZDg2M2JlZS4uNmQ4YzJkNjM5Y2Q3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KQEAgLTU1MCw3ICs1NTAsNyBAQCBzdGF0aWMgdm9pZCBp
Z2NfcHRwX2ZyZWVfdHhfYnVmZmVyKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciwNCiAJCXRz
dGFtcC0+YnVmZmVyX3R5cGUgPSAwOw0KIA0KIAkJLyogVHJpZ2dlciB0eHJ4IGludGVycnVwdCBm
b3IgdHJhbnNtaXQgY29tcGxldGlvbiAqLw0KLQkJaWdjX3hza193YWtldXAoYWRhcHRlci0+bmV0
ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwgMCk7DQorCQlpZ2NfeHNrX3dha2V1cChhZGFw
dGVyLT5uZXRkZXYsIHRzdGFtcC0+eHNrX3F1ZXVlX2luZGV4LCBYRFBfV0FLRVVQX1RYKTsNCiAN
CiAJCXJldHVybjsNCiAJfQ0KLS0gDQoyLjM0LjENCg0KDQo=
