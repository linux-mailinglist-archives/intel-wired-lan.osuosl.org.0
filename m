Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDU4GUeWi2m+WQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 21:34:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 208AD11F0B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 21:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13D5181E63;
	Tue, 10 Feb 2026 20:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNcvgFFNhHK7; Tue, 10 Feb 2026 20:34:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 447C7820B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770755651;
	bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bXZFLV4wOF2VMVeOTHtqoMA6Oie7nvnPLo7Bv0IjhKLWghklGFuOK+IAHEAUiyn5P
	 jVcrTCoes/g3qKJ6dowVsxdDmtdOYKu2MPdJKG6E/IeDUJMuBattoJD0/ccNriQgi3
	 8OC33BpDCREp2oqtnd0yhQg3ONiOp9RlVuJeAiKYnfDbpSCvUtTGDGgxG7wo6bgbyS
	 SFvHftljqruvfInnSSOWGEQkq68Nm7UMq9XjSf3jSzYKm1r6HDHqVj/UeIGJrzlUBE
	 lPafVYqNFhEwN3U8GwS8xC496mS/U+gjurXnn6NTPvt505gHotqzbQCpaBdw7S0mub
	 0rkFBjMtGlIrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 447C7820B8;
	Tue, 10 Feb 2026 20:34:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C8EA2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 20:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A9A581BD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 20:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lDifOUSBocYT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 20:34:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.103.14.84;
 helo=sa9pr02cu001.outbound.protection.outlook.com;
 envelope-from=harshankmatkar1304@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3B4581B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3B4581B7B
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazolkn19013084.outbound.protection.outlook.com
 [52.103.14.84])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3B4581B7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 20:34:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AuSyQD9IbwMKJ4XDc9jr9y+h1OPA916pcVaYwn9RdqHBE1Vmo48jShnW2mjUwipFnJAzetJxlb33qNI1zkjNYoXhltk8UtTXvHMLcbwdZ6rSSuK1RDRddB5PazwaZHuU7FyXv5lNDRfr9g60ZpagU/vjITPKCNLMahmFDSYTs5pan3601Q8SyvadY0WXAfGQYoAa532zXhdWYAYuQ+s00oUqjaAtDrsXS92dUIPs7aupnc1ER8tW9GTHJonXqNOejnioBu8XxyHz5t7yIY27x9mY56KJgi/c8qu7cpLPcguaJ2aTNzLDxa5sqgFnH6/kRsuZ0yUxmhLMLXewV6M4Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
 b=elEQ+9g4r6ERUAZP+7vKXAGS4s8Ixuzkn1AFJD8uXU63W/JnOzoHBz+ar3GxMgrDCh7t96M1KAAkTmm75lC8DdxP6DP0kxDK6ckyXxGGQl07zCDtjQShcqh4JaYMdQPtY9T1EeYAEMUsJgLTRpbU9P07fJTaBkwTTldnS6giiDNmajNWZaHL1IremlauHx4lYm1z8kWOTnLpOfqcrdz1gjJkuiWqBDhvVj64UfdXuDtYAHcIzckzEhl3oiYkYI0KXuhrt45+q5XOYn8dRrAe5hYrt9wDJkAl5zKDBZqxqAa7TfVjHBCIn3Owz+b6yfg3L/yiXogS1aRlVsaQAUgzTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MN2PR14MB2638.namprd14.prod.outlook.com (2603:10b6:208:cc::16)
 by SN7PR14MB5894.namprd14.prod.outlook.com (2603:10b6:806:26a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Tue, 10 Feb
 2026 20:34:05 +0000
Received: from MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50]) by MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50%6]) with mapi id 15.20.9611.006; Tue, 10 Feb 2026
 20:34:02 +0000
From: Harshank Matkar <harshankmatkar1304@outlook.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "tony.nguyen@intel.com" <tony.nguyen@intel.com>, Harshank Matkar
 <harshankmatkar1304@outlook.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "edumazet@google.com"
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] igc: Add PCIe link recovery for I225/I226
Thread-Index: AQHcmsyX2pU9cEBI4U2inzjzUohpXg==
Date: Tue, 10 Feb 2026 20:34:02 +0000
Message-ID: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB2638:EE_|SN7PR14MB5894:EE_
x-ms-office365-filtering-correlation-id: 01d006ae-72d6-47f2-ac0e-08de68e3ba79
x-microsoft-antispam: BCL:0;
 ARA:14566002|19110799012|8060799015|41001999006|12121999013|15080799012|8062599012|38102599003|31061999003|461199028|3412199025|440099028|102099032|53005399003|40105399003|1710799026;
x-microsoft-antispam-message-info: =?utf-8?B?Um9rYlpBdkhrWnlQY2kvMS92MjRjWE41YUJTMExHU1RmWjJTSWdUVHdKcnI0?=
 =?utf-8?B?QUo2VlV1NkdhL2p0ckNSVGM5dmdQWU9TY0MyWHBVWnA5enIwclBGcWloalY3?=
 =?utf-8?B?TkRmY2g2Vzg3c3pNQUIvbXoyUGo1N3haY2lPVjdGcjJOV28wVTg1UE84a3lm?=
 =?utf-8?B?Z1RLMVRDdDRjV0lsQWdrT3VuTWNjS3lpYXRYU2VvZWZPMTFWbmFEZVM4TnUy?=
 =?utf-8?B?S2JqTWp1dW1Zc3ZuTkRmeVVNb1c5Zm1qNU1DL3kzc05GNVFuU2REa1pKbUZ5?=
 =?utf-8?B?L2hiTGRVNStUOVQrMnhTNWRQZ3VUY3JKeTV5dGYrSWswWENOWElDSmZTWHZR?=
 =?utf-8?B?L21EeEp1dmFFcHY2cDBwb2k0dmxUQVJXZmswb0haam41NjF6MlNTdStPUkls?=
 =?utf-8?B?R3pSdkdjT1JqVXZTK3YxTWMwQ2pKcldMSUxkSTNKRlFjZGlYVk5BREJ6anRq?=
 =?utf-8?B?T3RGanY1QmZCNHc0cUwzeFZ0NWdob3pRT3FrZ1BDY3l3MG5tbTBiTEFka1hS?=
 =?utf-8?B?MWUvQy9UaU1PRkhkalZ6OGZLRFRYNWo4WmloM3FhQUgrMjVDK1BhWmdlbCsw?=
 =?utf-8?B?ZEsxQ3ZheDRLZk1nSTAxNFJReVpsamZlNVVGb24yRzBad2crWUlXelVNM0FY?=
 =?utf-8?B?QzNibHhHazI2c1o2UitQbVZjVUY5d0pHRUxjbDNoQ3BSRGtHbkFoLzZqWmlY?=
 =?utf-8?B?Z1YrTkdvOXdJb3A4cUptRHoyV3VZTUF4TTFublp1R2MvYTlpVGc0OHRVMVRP?=
 =?utf-8?B?eWVwWm5sSGhOTHdTeXZiVTN2ckRIRzVyK3FSaGhmTDM5a25vNW9PVXpNNExL?=
 =?utf-8?B?ZzZuN3licDkwbzR1eGt6eUVBTjBJUzBXRHRmYlV3WWxiQkU2cnFmT3NybjVM?=
 =?utf-8?B?cW1CK0Ivd3hNMytZbWROSXlwblIzRnVacjBZcDAzajZoSy9qR1RhbzFjNTRr?=
 =?utf-8?B?bmNaZXd1UWJQVEc4R0NmQkUvZFk0WkZrYWJMWk80a2xXdzZjOThPZlo2Rit5?=
 =?utf-8?B?QWhTc25IMVRoUDh1R1YxNjM5TDUvU2lkUUI2NjFLZitrN0dBcEFYeXdPTFFj?=
 =?utf-8?B?OUgzTjZNS016dHlOQmdpVVBMZkdsVVB4ODRrU3k5UDFkbWpIT3RzaHlNSFR3?=
 =?utf-8?B?NXI2NjNFaVoraGk4U05aY1liTUgwajF0NG4yWjRNVE1MRWhkRURoWGozZUs5?=
 =?utf-8?B?eFRoUURlOUlEakF2YXFmM1RESHNyUGp3NmNXZUJaaXZ4amNES0RMSzJHVVJh?=
 =?utf-8?B?WXNITUY4OFk5TmlhalhkY2s3Z3BSSU5iZkd3a2lmVUw0RDdUU1ZGOGROdnor?=
 =?utf-8?B?Y1Vjc0w1MTlVSjRGZXh4L0ZmbmVLSnhQbE5IUmxBS3grTGIxaVpXM1k0OVk5?=
 =?utf-8?B?dFM4OWJXcGNidnZuSWZGeWUvdmdURG9qZGJGZnZJWE5IdFZQNFhYTWg2M1dK?=
 =?utf-8?B?KzNtbXBnV0FBWXZCb1h5bnRsZENQcWp2TmE5enJaYVVPSitQR0ZMSVFZVjdM?=
 =?utf-8?B?RkVEK2k1RElJT0U3b3RoNHNHT1ZBVzdYOVQ2dW1GNFBHUk1RWHVHekZLVncy?=
 =?utf-8?B?dnR5bVcwS0NxbGIrc2ZwVm9jU0tQYzJIRjdFSXdjUnI0RUF6Y2VVczdsWVdM?=
 =?utf-8?B?SHlERTMvU2RWREpjMHhydTZ4RTkxanYwM2UwVTkwdkZ5WWNCVmg1K2ZlWWUy?=
 =?utf-8?B?YnF0VEowQVhGaXpjNkYvZW5mU0lsTGRvbXZIOEszaCs5Y05jSXZLRms5VnV5?=
 =?utf-8?Q?mqWMebYaNLflTxkkL8=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGUvT1JLZ0NOZGtvZzdzSkMxR2xsUmZqNTh3eUpNZTRnU0J6TXdQSWxzSzJJ?=
 =?utf-8?B?SmdXYmxENXVtS0JMa1F2ZVlWVnFBc09xSzdxT1ZTZ05tR1dzZmtGTTZCU1Nv?=
 =?utf-8?B?YWFuSWZNa21xd0YxMmlHVzVLY20xbHZyazZBZEpPL0hLazFQWSs0TFpPRWhs?=
 =?utf-8?B?RXVZS3lUOExzb2d1WitEY0gyTmtoejBGSUVYR2xzVWRLcUVXTDlJZmVBcXJL?=
 =?utf-8?B?ZnZEdjdzTGJad2d2SElOcEFadjlsWDdZanIzRUJpNFpJSnZrUnQ4dGQwSWJF?=
 =?utf-8?B?RkFEVXI5alJRZ2xjT0lkMXlnNUxBcVFLN2xXMWlMODZOSTZ1cFFYTmdtUSsr?=
 =?utf-8?B?ZHFPazl6dXpXbFRlYWJ3R2t5TnFCbElJbzBXN2UwVG9NcXNqQ3dYUFNUMW5m?=
 =?utf-8?B?WHlWeFJOT3NDSFdCS2tPRGlpdTgwOWtzSlVqaXFLRmthM3pJY1RaZGVibnhE?=
 =?utf-8?B?Ym1ocE5qMENZdFVQeG1oOU5BbkVnZndHRVRpS0RmaVpWQWpzbzNkeTRSaEZq?=
 =?utf-8?B?SCtrV0hLYWJDcm5sL1RtT1RIdUJTbG5kRGxraHlQN2Jwd3UyekRYUkxBcW81?=
 =?utf-8?B?K0ZWMFhHYk9uYmt2MlN1cnBwVTA0K3JjSmlHWmJYMFY2aVRrb2dJanA2KzQr?=
 =?utf-8?B?bzNoT3Y2NFRITkR1dUNBNE51WFI0bW4zbmJ2cWdZTkd5RitIR3JjNHl5NjMz?=
 =?utf-8?B?TlhjSEpieVB1UjVyVlNtRFM3anZnUk9haTJSQU9ncHBIRW9xSDdDQzBqNXhk?=
 =?utf-8?B?ajhiLzZCbjNsV3I1RWdqaGhPaEl3Uis3ZHhtNHRIZG5nUmR3WGxocHY5eWds?=
 =?utf-8?B?Q3lHaWF3d2JUSlJOdUpac0gybjdSdzhYWGowS1czNEZ0aWlHREFhTlBXWElm?=
 =?utf-8?B?TE9YYXQyb1RIWnN3VUMvK082dkNFak5FY3BpRmdYc2tSdVgrYWlBbXdLd3V1?=
 =?utf-8?B?dlU1RXBUVWplRGoza2NBdGRUOXVIYStpT21zQzRpR2JIQUE4ODlxdEVkeWpa?=
 =?utf-8?B?SU9nM2NQNUg5MWFXdk13YnVsSEtQbFpkQlRpVjBaSmpENVhzV1lHY2hzNlF6?=
 =?utf-8?B?bFVJZGpac0pnOVdCRkVmOXJBWlkxMnk4RHlCRDZiRENRUDhYMVhZcjhSK1hG?=
 =?utf-8?B?VjdtbFVITVp6ZnUxT3M4eE1mRmV4UTJJTWNZeEJHTGFVS1VoellKVmlsZEQ5?=
 =?utf-8?B?OHF6QS9ITVZKaDdla1JDMUZYUklCbG82K05aRmZMWXdUZ3Nkdm84djFVaXZ3?=
 =?utf-8?B?Y3J1S09PTktHSW5mQ3lOM1ExcWljSUlidk1XbUdsTFNHaGRGMSt0SXRmeHA0?=
 =?utf-8?B?WjJKb1hIVksybUl6VTdmbzA5SXdHK3IrMGdrcnZkclA5ZTJKS1J4eWNyblZl?=
 =?utf-8?B?bUlUQU5GNE8yRGtFZUxNejRBb1lRSERyaTJrOWNuQjBseGdVWWsrZEw5YTcv?=
 =?utf-8?B?V3pLNVppV1psUWpEWldsZFBjcStNUjIvbHpEM2hxQmtWV25xL2tEZndRQWRV?=
 =?utf-8?B?b1I4cU9yV3EwT2VmVllob2tTdVRmVUE1UG5FcEJZT1UrS01VOUhiTzBoT0dM?=
 =?utf-8?B?b3JZckZCbXhaSFR5K1A2bzRIaDdVWkFpWHJpMjlVejArNWlwT1NrL2JDeGU3?=
 =?utf-8?B?MmtqaXNQdGhmRHpEbUE1WEY0TEhmUHN0aHRENG5oY3pKVnExcit2dmgvcHIy?=
 =?utf-8?B?dk81ODVZSkREOHlad2FMeGE2Q3A1TkVkZU1tSGcxSG55NWNDemdKN2FKdHBK?=
 =?utf-8?B?TEdYY1pGK2paZWpLU0tmelZDYXNCUDZrVExqbGQyNXMvV2FQb2dpY1YxU2ly?=
 =?utf-8?B?TzNGdGZGTmNYdGdaUkp4YWFhaWFYSUEydkUzM0YzcGFGZExhY05ockNHTW1q?=
 =?utf-8?B?bWV2TThPUk00bWIvdWxSZVEzS092aXFWS1dITm9LRno5UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B085AD058252D14E8B7595B5BB161EAC@namprd14.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB2638.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d006ae-72d6-47f2-ac0e-08de68e3ba79
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2026 20:34:02.8480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR14MB5894
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
 b=VZxT1Yzdvg8gC8NbO3fhOiMFHrjjNjBVYfRf0Zu9fuM5TymLZ0WBbCoylh+hZbNoo6cLe7Ak1HwcDnppDcDgxKyASUSwmRs6l43TqeS8cd2J1fQvJN3XVH0uI1DgMD/YljBS14g7nTdNFoGnNnKlTVOv2ehvFfpiMHNyZVHEwoxry5eK85G/VUmkskfgCrYaozCsGLrEcyTU2Mwek6eT90el7iuTOy78LZd6lmAl1nHS60TAHEbex6KLCklzdWgOoYQxgxizWxtU6AGoyyGyx8KsqHtqE8jya0/zHhBhQTHw3Nc7IqqnRo1Ley1MnMRTpqvEIIQjgc0qRV25beo+4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=VZxT1Yzd
Subject: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for I225/I226
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[outlook.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[outlook.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:mid,outlook.com:email,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,outlook.com,davemloft.net,kernel.org,redhat.com,google.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 208AD11F0B2
X-Rspamd-Action: no action

RnJvbTogSGFyc2hhbmsgTWF0a2FyIDxoYXJzaGFua21hdGthcjEzMDRAb3V0bG9vay5jb20+CgpX
aGVuIEFTUE0gTDBzIHRyYW5zaXRpb25zIG9jY3VyIG9uIEludGVsIEkyMjUvSTIyNiBjb250cm9s
bGVycywKdHJhbnNpZW50IFBDSWUgbGluayBpbnN0YWJpbGl0eSBjYW4gY2F1c2UgcmVnaXN0ZXIg
cmVhZCBmYWlsdXJlcwooMHhGRkZGRkZGRiByZXNwb25zZXMpLiBJbXBsZW1lbnQgYSBtdWx0aS1s
YXllciByZWNvdmVyeSBzdHJhdGVneToKCjEuIEltbWVkaWF0ZSByZXRyaWVzOiAzIGF0dGVtcHRz
IHdpdGggMTAwLTIwMM68cyBkZWxheXMKMi4gTGluayByZXRyYWluaW5nOiBUcmlnZ2VyIFBDSWUg
bGluayByZXRyYWluaW5nIHZpYSBjYXBhYmlsaXRpZXMKMy4gRGV2aWNlIGRldGFjaG1lbnQ6IE9u
bHkgYXMgbGFzdCByZXNvcnQgYWZ0ZXIgbWF4IGF0dGVtcHRzCgpUaGUgcmVjb3ZlcnkgbWVjaGFu
aXNtIGluY2x1ZGVzIHJhdGUgbGltaXRpbmcsIG1heGltdW0gYXR0ZW1wdAp0cmFja2luZywgYW5k
IGRldmljZSBwcmVzZW5jZSB2YWxpZGF0aW9uIHRvIHByZXZlbnQgZmFsc2UgZGV0YWNoZXMKb24g
dHJhbnNpZW50IEFTUE0gZ2xpdGNoZXMgd2hpbGUgbWFpbnRhaW5pbmcgc2FmZXR5IHRocm91Z2gK
Ym91bmRlZCByZXRyeSBsaW1pdHMuCgpTaWduZWQtb2ZmLWJ5OiBIYXJzaGFuayBNYXRrYXIgPGhh
cnNoYW5rbWF0a2FyMTMwNEBvdXRsb29rLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjLmggICAgICB8ICAgNiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19tYWluLmMgfCAxNTUgKysrKysrKysrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFu
Z2VkLCAxNDkgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnYy5oCmluZGV4IGE0MjdmMDU4MTRjMS4uMmVmNDg4YjI3OWI5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oCkBAIC0zNDYsNiArMzQ2LDEwIEBAIHN0cnVjdCBp
Z2NfYWRhcHRlciB7CiAJc3RydWN0IG11dGV4IGxlZF9tdXRleDsKIAlzdHJ1Y3QgaWdjX2xlZF9j
bGFzc2RldiAqbGVkczsKIAlib29sIGxlZHNfYXZhaWxhYmxlOworCisJLyogUENJZSByZWNvdmVy
eSB0cmFja2luZyAqLworCXVuc2lnbmVkIGludCBwY2llX3JlY292ZXJ5X2F0dGVtcHRzOworCXVu
c2lnbmVkIGxvbmcgbGFzdF9yZWNvdmVyeV90aW1lOwogfTsKIAogdm9pZCBpZ2NfdXAoc3RydWN0
IGlnY19hZGFwdGVyICphZGFwdGVyKTsKQEAgLTQyMiw3ICs0MjYsNyBAQCBlbnVtIGlnY19yc3Nf
dHlwZV9udW0gewogCUlHQ19SU1NfVFlQRV9NQVgJCT0gMTAsCiB9OwogI2RlZmluZSBJR0NfUlNT
X1RZUEVfTUFYX1RBQkxFCQkxNgotI2RlZmluZSBJR0NfUlNTX1RZUEVfTUFTSwkJR0VOTUFTSygz
LDApIC8qIDQtYml0cyAoMzowKSA9IG1hc2sgMHgwRiAqLworI2RlZmluZSBJR0NfUlNTX1RZUEVf
TUFTSwkJR0VOTUFTSygzLCAwKSAvKiA0LWJpdHMgKDM6MCkgPSBtYXNrIDB4MEYgKi8KIAogLyog
aWdjX3Jzc190eXBlIC0gUnggZGVzY3JpcHRvciBSU1MgdHlwZSBmaWVsZCAqLwogc3RhdGljIGlu
bGluZSB1MzIgaWdjX3Jzc190eXBlKGNvbnN0IHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVz
YykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKaW5kZXggODlhMzIx
YTM0NGQyLi5mMGRhYTNlZGJiNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jCkBAIC0xNDExLDkgKzE0MTEsOCBAQCBzdGF0aWMgaW50IGlnY190eF9tYXAoc3Ry
dWN0IGlnY19yaW5nICp0eF9yaW5nLAogCS8qIE1ha2Ugc3VyZSB0aGVyZSBpcyBzcGFjZSBpbiB0
aGUgcmluZyBmb3IgdGhlIG5leHQgc2VuZC4gKi8KIAlpZ2NfbWF5YmVfc3RvcF90eCh0eF9yaW5n
LCBERVNDX05FRURFRCk7CiAKLQlpZiAobmV0aWZfeG1pdF9zdG9wcGVkKHR4cmluZ190eHEodHhf
cmluZykpIHx8ICFuZXRkZXZfeG1pdF9tb3JlKCkpIHsKKwlpZiAobmV0aWZfeG1pdF9zdG9wcGVk
KHR4cmluZ190eHEodHhfcmluZykpIHx8ICFuZXRkZXZfeG1pdF9tb3JlKCkpCiAJCXdyaXRlbChp
LCB0eF9yaW5nLT50YWlsKTsKLQl9CiAKIAlyZXR1cm4gMDsKIGRtYV9lcnJvcjoKQEAgLTE2MTMs
OCArMTYxMiw3IEBAIHN0YXRpYyBuZXRkZXZfdHhfdCBpZ2NfeG1pdF9mcmFtZV9yaW5nKHN0cnVj
dCBza19idWZmICpza2IsCiAJICogb3RoZXJ3aXNlIHRyeSBuZXh0IHRpbWUKIAkgKi8KIAlmb3Ig
KGYgPSAwOyBmIDwgc2tiX3NoaW5mbyhza2IpLT5ucl9mcmFnczsgZisrKQotCQljb3VudCArPSBU
WERfVVNFX0NPVU5UKHNrYl9mcmFnX3NpemUoCi0JCQkJCQkmc2tiX3NoaW5mbyhza2IpLT5mcmFn
c1tmXSkpOworCQljb3VudCArPSBUWERfVVNFX0NPVU5UKHNrYl9mcmFnX3NpemUoJnNrYl9zaGlu
Zm8oc2tiKS0+ZnJhZ3NbZl0pKTsKIAogCWlmIChpZ2NfbWF5YmVfc3RvcF90eCh0eF9yaW5nLCBj
b3VudCArIDUpKSB7CiAJCS8qIHRoaXMgaXMgYSBoYXJkIGVycm9yICovCkBAIC0yNTI0LDcgKzI1
MjIsNiBAQCBzdGF0aWMgaW50IF9faWdjX3hkcF9ydW5fcHJvZyhzdHJ1Y3QgaWdjX2FkYXB0ZXIg
KmFkYXB0ZXIsCiAJCWlmICh4ZHBfZG9fcmVkaXJlY3QoYWRhcHRlci0+bmV0ZGV2LCB4ZHAsIHBy
b2cpIDwgMCkKIAkJCWdvdG8gb3V0X2ZhaWx1cmU7CiAJCXJldHVybiBJR0NfWERQX1JFRElSRUNU
OwotCQlicmVhazsKIAlkZWZhdWx0OgogCQlicGZfd2Fybl9pbnZhbGlkX3hkcF9hY3Rpb24oYWRh
cHRlci0+bmV0ZGV2LCBwcm9nLCBhY3QpOwogCQlmYWxsdGhyb3VnaDsKQEAgLTI3OTEsNyArMjc4
OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaWdjX3hkcF9idWZmICp4c2tfYnVmZl90b19pZ2NfY3R4KHN0
cnVjdCB4ZHBfYnVmZiAqeGRwKQogCSAqIGlnY194ZHBfYnVmZiBzaGFyZXMgaXRzIGxheW91dCB3
aXRoIHhkcF9idWZmX3hzayBhbmQgcHJpdmF0ZQogCSAqIGlnY194ZHBfYnVmZiBmaWVsZHMgZmFs
bCBpbnRvIHhkcF9idWZmX3hzay0+Y2IKIAkgKi8KLSAgICAgICByZXR1cm4gKHN0cnVjdCBpZ2Nf
eGRwX2J1ZmYgKil4ZHA7CisJcmV0dXJuIChzdHJ1Y3QgaWdjX3hkcF9idWZmICopeGRwOwogfQog
CiBzdGF0aWMgaW50IGlnY19jbGVhbl9yeF9pcnFfemMoc3RydWN0IGlnY19xX3ZlY3RvciAqcV92
ZWN0b3IsIGNvbnN0IGludCBidWRnZXQpCkBAIC0zODk1LDkgKzM4OTIsOCBAQCBzdGF0aWMgaW50
IGlnY19lbmFibGVfbmZjX3J1bGUoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLAogewogCWlu
dCBlcnI7CiAKLQlpZiAocnVsZS0+ZmxleCkgeworCWlmIChydWxlLT5mbGV4KQogCQlyZXR1cm4g
aWdjX2FkZF9mbGV4X2ZpbHRlcihhZGFwdGVyLCBydWxlKTsKLQl9CiAKIAlpZiAocnVsZS0+Zmls
dGVyLm1hdGNoX2ZsYWdzICYgSUdDX0ZJTFRFUl9GTEFHX0VUSEVSX1RZUEUpIHsKIAkJZXJyID0g
aWdjX2FkZF9ldHlwZV9maWx0ZXIoYWRhcHRlciwgcnVsZS0+ZmlsdGVyLmV0eXBlLApAQCAtNjk4
NCwxMSArNjk4MCwxMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBuZXRfZGV2aWNlX29wcyBpZ2Nf
bmV0ZGV2X29wcyA9IHsKIAkubmRvX2h3dHN0YW1wX3NldAk9IGlnY19wdHBfaHd0c3RhbXBfc2V0
LAogfTsKIAorI2RlZmluZSBJR0NfUkVHSVNURVJfUkVBRF9SRVRSSUVTCTMKKyNkZWZpbmUgSUdD
X1BDSUVfUkVDT1ZFUllfTUFYX0FUVEVNUFRTCTEwCisjZGVmaW5lIElHQ19QQ0lFX1JFQ09WRVJZ
X0lOVEVSVkFMX01TCTEwMDAKKworLyoqCisgKiBpZ2NfcGNpZV9saW5rX3JlY292ZXIgLSBBdHRl
bXB0IFBDSWUgbGluayByZWNvdmVyeQorICogQGFkYXB0ZXI6IGJvYXJkIHByaXZhdGUgc3RydWN0
dXJlCisgKgorICogQXR0ZW1wdHMgdG8gcmVjb3ZlciBhIGZhaWxlZCBQQ0llIGxpbmsgYnkgdHJp
Z2dlcmluZyBhIGxpbmsgcmV0cmFpbi4KKyAqIFJhdGUtbGltaXRlZCB0byAxIGF0dGVtcHQgcGVy
IHNlY29uZCwgbWF4aW11bSAxMCBhdHRlbXB0cy4KKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgcmVj
b3Zlcnkgd2FzIHN1Y2Nlc3NmdWwsIGZhbHNlIG90aGVyd2lzZS4KKyAqLworc3RhdGljIGJvb2wg
aWdjX3BjaWVfbGlua19yZWNvdmVyKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKK3sKKwlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IGFkYXB0ZXItPnBkZXY7CisJdW5zaWduZWQgbG9uZyBub3cg
PSBqaWZmaWVzOworCXUxNiBsbmtzdGEsIGxua2N0bDsKKwlpbnQgcmV0OworCWludCBpOworCisJ
LyogUmF0ZSBsaW1pdGluZzogbm8gbW9yZSB0aGFuIDEgYXR0ZW1wdCBwZXIgc2Vjb25kICovCisJ
aWYgKHRpbWVfYmVmb3JlKG5vdywgYWRhcHRlci0+bGFzdF9yZWNvdmVyeV90aW1lICsKKwkJCW1z
ZWNzX3RvX2ppZmZpZXMoSUdDX1BDSUVfUkVDT1ZFUllfSU5URVJWQUxfTVMpKSkKKwkJcmV0dXJu
IGZhbHNlOworCisJLyogTWF4aW11bSBhdHRlbXB0IGxpbWl0ICovCisJaWYgKGFkYXB0ZXItPnBj
aWVfcmVjb3ZlcnlfYXR0ZW1wdHMgPj0gSUdDX1BDSUVfUkVDT1ZFUllfTUFYX0FUVEVNUFRTKSB7
CisJCW5ldGRldl9lcnIoYWRhcHRlci0+bmV0ZGV2LAorCQkJICAgIkV4Y2VlZGVkIG1heGltdW0g
UENJZSByZWNvdmVyeSBhdHRlbXB0cyAoJWQpXG4iLAorCQkJICAgSUdDX1BDSUVfUkVDT1ZFUllf
TUFYX0FUVEVNUFRTKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKworCWFkYXB0ZXItPmxhc3RfcmVj
b3ZlcnlfdGltZSA9IG5vdzsKKwlhZGFwdGVyLT5wY2llX3JlY292ZXJ5X2F0dGVtcHRzKys7CisK
KwluZXRkZXZfd2FybihhZGFwdGVyLT5uZXRkZXYsCisJCSAgICAiQXR0ZW1wdGluZyBQQ0llIGxp
bmsgcmVjb3ZlcnkgKGF0dGVtcHQgJWQvJWQpXG4iLAorCQkgICAgYWRhcHRlci0+cGNpZV9yZWNv
dmVyeV9hdHRlbXB0cywKKwkJICAgIElHQ19QQ0lFX1JFQ09WRVJZX01BWF9BVFRFTVBUUyk7CisK
KwkvKiBDaGVjayBpZiBkZXZpY2UgaXMgc3RpbGwgcHJlc2VudCBvbiB0aGUgYnVzICovCisJaWYg
KCFwY2lfZGV2aWNlX2lzX3ByZXNlbnQocGRldikpIHsKKwkJbmV0ZGV2X2VycihhZGFwdGVyLT5u
ZXRkZXYsICJEZXZpY2Ugbm90IHByZXNlbnQgb24gUENJZSBidXNcbiIpOworCQlyZXR1cm4gZmFs
c2U7CisJfQorCisJLyogQ2hlY2sgbGluayBzdGF0dXMgKi8KKwlyZXQgPSBwY2llX2NhcGFiaWxp
dHlfcmVhZF93b3JkKHBkZXYsIFBDSV9FWFBfTE5LU1RBLCAmbG5rc3RhKTsKKwlpZiAocmV0KSB7
CisJCW5ldGRldl9lcnIoYWRhcHRlci0+bmV0ZGV2LCAiRmFpbGVkIHRvIHJlYWQgbGluayBzdGF0
dXNcbiIpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJLyogVHJpZ2dlciBsaW5rIHJldHJhaW4g
aWYgbGluayBhcHBlYXJzIGRvd24gKi8KKwlpZiAoIShsbmtzdGEgJiBQQ0lfRVhQX0xOS1NUQV9E
TExMQSkpIHsKKwkJbmV0ZGV2X2luZm8oYWRhcHRlci0+bmV0ZGV2LAorCQkJICAgICJMaW5rIGRv
d24sIGF0dGVtcHRpbmcgcmV0cmFpblxuIik7CisKKwkJLyogUmVhZCBsaW5rIGNvbnRyb2wgcmVn
aXN0ZXIgKi8KKwkJcmV0ID0gcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQ
X0xOS0NUTCwgJmxua2N0bCk7CisJCWlmIChyZXQgPT0gMCkgeworCQkJLyogVHJpZ2dlciByZXRy
YWluIGJ5IHNldHRpbmcgUkwgYml0ICovCisJCQlwY2llX2NhcGFiaWxpdHlfd3JpdGVfd29yZChw
ZGV2LCBQQ0lfRVhQX0xOS0NUTCwKKwkJCQkJCSAgIGxua2N0bCB8IFBDSV9FWFBfTE5LQ1RMX1JM
KTsKKworCQkJLyogV2FpdCBmb3IgcmV0cmFpbiB0byBjb21wbGV0ZSAodXAgdG8gMSBzZWNvbmQp
ICovCisJCQlmb3IgKGkgPSAwOyBpIDwgMTAwOyBpKyspIHsKKwkJCQl1c2xlZXBfcmFuZ2UoMTAw
MDAsIDIwMDAwKTsKKwkJCQlyZXQgPSBwY2llX2NhcGFiaWxpdHlfcmVhZF93b3JkKHBkZXYsIFBD
SV9FWFBfTE5LU1RBLAorCQkJCQkJCQkmbG5rc3RhKTsKKwkJCQlpZiAocmV0ID09IDAgJiYgKGxu
a3N0YSAmIFBDSV9FWFBfTE5LU1RBX0RMTExBKSAmJgorCQkJCSAgICAhKGxua3N0YSAmIFBDSV9F
WFBfTE5LU1RBX0xUKSkgeworCQkJCQluZXRkZXZfaW5mbyhhZGFwdGVyLT5uZXRkZXYsCisJCQkJ
CQkgICAgIlBDSWUgbGluayByZWNvdmVyeSBzdWNjZXNzZnVsXG4iKTsKKwkJCQkJcmV0dXJuIHRy
dWU7CisJCQkJfQorCQkJfQorCQl9CisJfQorCisJLyogR2l2ZSB0aGUgbGluayBzb21lIGFkZGl0
aW9uYWwgdGltZSB0byByZWNvdmVyIG9uIGl0cyBvd24gKi8KKwltc2xlZXAoMTAwKTsKKworCS8q
IENoZWNrIGlmIGRldmljZSBpcyByZXNwb25kaW5nIG5vdyAqLworCWlmIChwY2lfZGV2aWNlX2lz
X3ByZXNlbnQocGRldikpIHsKKwkJcmV0ID0gcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZChwZGV2
LCBQQ0lfRVhQX0xOS1NUQSwgJmxua3N0YSk7CisJCWlmIChyZXQgPT0gMCAmJiAobG5rc3RhICYg
UENJX0VYUF9MTktTVEFfRExMTEEpKSB7CisJCQluZXRkZXZfaW5mbyhhZGFwdGVyLT5uZXRkZXYs
CisJCQkJICAgICJQQ0llIGxpbmsgcmVjb3ZlcmVkIGFmdGVyIGRlbGF5XG4iKTsKKwkJCXJldHVy
biB0cnVlOworCQl9CisJfQorCisJbmV0ZGV2X3dhcm4oYWRhcHRlci0+bmV0ZGV2LCAiUENJZSBs
aW5rIHJlY292ZXJ5IGZhaWxlZFxuIik7CisJcmV0dXJuIGZhbHNlOworfQorCiB1MzIgaWdjX3Jk
MzIoc3RydWN0IGlnY19odyAqaHcsIHUzMiByZWcpCiB7CiAJc3RydWN0IGlnY19hZGFwdGVyICpp
Z2MgPSBjb250YWluZXJfb2YoaHcsIHN0cnVjdCBpZ2NfYWRhcHRlciwgaHcpOwogCXU4IF9faW9t
ZW0gKmh3X2FkZHIgPSBSRUFEX09OQ0UoaHctPmh3X2FkZHIpOworCXN0cnVjdCBuZXRfZGV2aWNl
ICpuZXRkZXYgPSBpZ2MtPm5ldGRldjsKIAl1MzIgdmFsdWUgPSAwOworCWludCByZXRyeTsKIAog
CWlmIChJR0NfUkVNT1ZFRChod19hZGRyKSkKIAkJcmV0dXJuIH52YWx1ZTsKQEAgLTY5OTcsMTMg
KzcwOTQsNDkgQEAgdTMyIGlnY19yZDMyKHN0cnVjdCBpZ2NfaHcgKmh3LCB1MzIgcmVnKQogCiAJ
LyogcmVhZHMgc2hvdWxkIG5vdCByZXR1cm4gYWxsIEYncyAqLwogCWlmICghKH52YWx1ZSkgJiYg
KCFyZWcgfHwgISh+cmVhZGwoaHdfYWRkcikpKSkgewotCQlzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2ID0gaWdjLT5uZXRkZXY7CisJCS8qIExheWVyIDE6IEltbWVkaWF0ZSByZXRyaWVzIHdpdGgg
c2hvcnQgZGVsYXlzICgxMDAtMjAwzrxzKSAqLworCQlmb3IgKHJldHJ5ID0gMDsgcmV0cnkgPCBJ
R0NfUkVHSVNURVJfUkVBRF9SRVRSSUVTOyByZXRyeSsrKSB7CisJCQl1c2xlZXBfcmFuZ2UoMTAw
LCAyMDApOworCQkJdmFsdWUgPSByZWFkbCgmaHdfYWRkcltyZWddKTsKKworCQkJLyogSWYgd2Ug
Z290IGEgdmFsaWQgcmVhZCwgcmV0dXJuIGltbWVkaWF0ZWx5ICovCisJCQlpZiAofnZhbHVlIHx8
IChyZWcgJiYgfnJlYWRsKGh3X2FkZHIpKSkgeworCQkJCW5ldGRldl9kYmcobmV0ZGV2LAorCQkJ
CQkgICAiUmVnaXN0ZXIgcmVhZCByZWNvdmVyZWQgYWZ0ZXIgJWQgcmV0cmllc1xuIiwKKwkJCQkJ
ICAgcmV0cnkgKyAxKTsKKwkJCQlyZXR1cm4gdmFsdWU7CisJCQl9CisJCX0KKworCQkvKiBMYXll
ciAyOiBBdHRlbXB0IGZ1bGwgUENJZSBsaW5rIHJlY292ZXJ5ICovCisJCW5ldGRldl93YXJuKG5l
dGRldiwKKwkJCSAgICAiQWxsIGltbWVkaWF0ZSByZXRyaWVzIGZhaWxlZCwgYXR0ZW1wdGluZyBQ
Q0llIGxpbmsgcmVjb3ZlcnlcbiIpOworCisJCWlmIChpZ2NfcGNpZV9saW5rX3JlY292ZXIoaWdj
KSkgeworCQkJLyogUmVjb3Zlcnkgc3VjY2VlZGVkLCByZS1yZWFkIHRoZSByZWdpc3RlciAqLwor
CQkJaHdfYWRkciA9IFJFQURfT05DRShody0+aHdfYWRkcik7CisJCQlpZiAoaHdfYWRkciAmJiAh
SUdDX1JFTU9WRUQoaHdfYWRkcikpIHsKKwkJCQl2YWx1ZSA9IHJlYWRsKCZod19hZGRyW3JlZ10p
OworCisJCQkJLyogVmVyaWZ5IHRoZSByZWFkIGlzIHZhbGlkICovCisJCQkJaWYgKH52YWx1ZSB8
fCAocmVnICYmIH5yZWFkbChod19hZGRyKSkpIHsKKwkJCQkJbmV0ZGV2X2luZm8obmV0ZGV2LAor
CQkJCQkJICAgICJSZWdpc3RlciByZWFkIHN1Y2Nlc3NmdWwgYWZ0ZXIgbGluayByZWNvdmVyeVxu
Iik7CisJCQkJCXJldHVybiB2YWx1ZTsKKwkJCQl9CisJCQl9CisJCX0KKworCQkvKiBMYXllciAz
OiBBbGwgcmVjb3ZlcnkgYXR0ZW1wdHMgZmFpbGVkLCBkZXRhY2ggZGV2aWNlICovCisJCW5ldGRl
dl9lcnIobmV0ZGV2LAorCQkJICAgIlBDSWUgbGluayBsb3N0IGFmdGVyICVkIHJldHJpZXMgYW5k
IHJlY292ZXJ5IGF0dGVtcHRzLCBkZXZpY2Ugbm93IGRldGFjaGVkXG4iLAorCQkJICAgSUdDX1JF
R0lTVEVSX1JFQURfUkVUUklFUyk7CiAKIAkJaHctPmh3X2FkZHIgPSBOVUxMOwogCQluZXRpZl9k
ZXZpY2VfZGV0YWNoKG5ldGRldik7Ci0JCW5ldGRldl9lcnIobmV0ZGV2LCAiUENJZSBsaW5rIGxv
c3QsIGRldmljZSBub3cgZGV0YWNoZWRcbiIpOworCiAJCVdBUk4ocGNpX2RldmljZV9pc19wcmVz
ZW50KGlnYy0+cGRldiksCi0JCSAgICAgImlnYzogRmFpbGVkIHRvIHJlYWQgcmVnIDB4JXghXG4i
LCByZWcpOworCQkgICAgICJpZ2M6IEZhaWxlZCB0byByZWFkIHJlZyAweCV4IGFmdGVyIGFsbCBy
ZWNvdmVyeSBhdHRlbXB0cyFcbiIsIHJlZyk7CiAJfQogCiAJcmV0dXJuIHZhbHVlOwotLSAKMi41
Mi4wCgo=
