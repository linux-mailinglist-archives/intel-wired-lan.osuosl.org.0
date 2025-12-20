Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E69CD2B66
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Dec 2025 10:02:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC78F60BA4;
	Sat, 20 Dec 2025 09:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zJwPeyfb7GZu; Sat, 20 Dec 2025 09:02:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6603860A4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766221321;
	bh=gdH+X4/JCkjxFddD4jzPlvka3m8T+kKeUGOzTal4wsg=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=SvN/1SglRLKWTMGYZnkh2SJTgfxO1HQvD77PWkCy9NaNgT50wmgywuXPKVQ1sWCo+
	 CkGDD8faV5h3SwgdGpAWqZxj3iVjrMDaYhNL/q1vz7VZleHnVco7L6sD17mu+vbx7U
	 VocXs5MgqFcAH4BKtEwzm7lDGPDUUMREBHkXvJJhplJhwgMAL+gdwIznpjKGIpaqFn
	 obDCnzFuM7aDZPS1BClGMhZlCOpUxjBmrc8crT349hMECrSXRf0xNwmApvvb0f8PGL
	 qkHgvNFqaBYK0X9bN/aA4yfErCum36pz62bMWa62t6JV6ZarK6InIZdPMxaBSPSH9d
	 0xumE8Z5c3qJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6603860A4A;
	Sat, 20 Dec 2025 09:02:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D375119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 431588134B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Zw1XIh521Ge for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 09:01:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.66;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0E4881345
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0E4881345
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011066.outbound.protection.outlook.com
 [40.107.130.66])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0E4881345
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:01:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pYEAWaPpfpzy0GhhroNuwhjbrhglHTZ7XAgf0sxi1sp8+JoYooIP4ATOsx+/AFcahKnXV6jtxE1gDsx2kIz2z5+svwMZnk7G/R/TGgY2xV1rAXc1lobU7aN71/PIntFAxKaGi28uLQ9wwxiUe/uph6HWuvpKbqd7ACElxAtfO4IuM0CDL534iC+i+Ugr7VdDHNcRytPyhNjE7hJYl5DMUnD3zdVkJIyE6hvEA+evge3cXuOgx/q70YLsKjJI5sJ885eNCaBV24Xf9iU8SJEMF8MpofidBwELT1vLnQCKm+VfsgcVBE3fCXBe1Uf+lELsc2vFP0v/KWbkhKds31d/tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdH+X4/JCkjxFddD4jzPlvka3m8T+kKeUGOzTal4wsg=;
 b=waSOq+9iqtVOliehAp/RCyDOioY2wCCK2qa4YYNkK6iS3Xm9mpiRO4PS+EUV9cpe7RmNklT3IBqZXSYc4m/IYz7yt4/YXgXKj/Uqk8rHtPhIhyiKoAh7PF2j2n2+1wzPfWbaAIes28RrZ6gszNRufhaJRD8IeVvmHZBCi8APeEoS7XpZJXnSsByHjU5Jai8wkjfqHTR1Dhx5vi/YzC/b7Dj/DaVoMBYKuLuCM/UiKCoOMHkxBa+i/AidIaW8a1bmh6s1BPQdu6oFw3UBEY62gT749DkmGAFlyQfpzHqjUrvqhcek8FF25g1zQ5EL8Z2IDY5OPJl42+dW2m0TfBfwfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by DB8PR10MB3848.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:160::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Sat, 20 Dec
 2025 09:01:51 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Sat, 20 Dec 2025
 09:01:51 +0000
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
Thread-Index: AQHcbb1WTTQGJ5yOPU2EevfUlIQYdrUkjtMAgAJx4wCAAQNpAIAAij8wgADsLwCAAMgX4A==
Date: Sat, 20 Dec 2025 09:01:51 +0000
Message-ID: <AS1PR10MB539213B440622D12992B44EF8FB6A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
 <DU0PR10MB5387DA3C8BD8703907230ED18FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
 <c039912f-fbec-4d02-b4a9-9259e09db612@intel.com>
In-Reply-To: <c039912f-fbec-4d02-b4a9-9259e09db612@intel.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=5df16bb3-8e99-4474-a88a-47a73ccfd958;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-20T09:00:17Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|DB8PR10MB3848:EE_
x-ms-office365-filtering-correlation-id: 8e10dfd3-bbc9-442e-7abe-08de3fa66a4a
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?TnNUODR4M2N6bTRZNTdkdElrZENKT3Fsc2ZWYndPdDRYTDlqL3Y0TWloY0xx?=
 =?utf-8?B?clNZOFZZTVRJUGJ5UEhNdDFWL25PSGdWazBkQmpxTFA3K28zVkpseWZsRnRW?=
 =?utf-8?B?UWlSdllybkZGb2FHMCt5VUU1SjVFbUlCYXQ0ZjVjNkEwRlAyaHgyZEZIakxT?=
 =?utf-8?B?ekp2bWdLY2NxMEg0WlVLbm03RnZlQitvK3N4VjhOR25UR3Zic0lKQk8xeE9T?=
 =?utf-8?B?UTV0MkpneVE3S3BTWFAxQXBjbkRVVVRaSmtnc0UwZFhlQ3I2NUE1Z2M2ZWRy?=
 =?utf-8?B?Z3hjWGhEQVloampQdSswMDdMeTVmQ01Ha1phQVlBVTl2b2wyQVpNQXJuM09y?=
 =?utf-8?B?aVVOeHYvZUpPTXNIY3hYZFRia08zeFJJbjdhNHRsd2psdEpKYUQvZ1AyRThI?=
 =?utf-8?B?TURqMTRXY1F6WVNLdnoxRzBVTnNQRDlwdDRoZG95MXBrR25IQWtNRU1wYWVi?=
 =?utf-8?B?Yks1V25wMmFnNUxzdk9vaHJjYzFaWjlFa1JwcFo3akpJUnBWbDdZSnkxdmJq?=
 =?utf-8?B?WFRyVko3dE5qeUMvUEw4K05hQkJmbnFMUm1HdXcveVBTNmI3YWpsenJtMExr?=
 =?utf-8?B?ZWFCSGh4Z05PdHRJNG9YRUw1VXk5cXJtbldBaTd2MVlQazVaLzZ6aVpWVTV4?=
 =?utf-8?B?dnRERGlBc3REQW55TUwzRzlsdWRneHJ4TG1IS0VTMEdXVHJjcUlXNkVzWWhV?=
 =?utf-8?B?WnBRdnJvV0V4OGZ2d3FrRDFUVHNuZVBBalFZaS9rUldmU01wTlBGVld4VStL?=
 =?utf-8?B?L3kzS1RPUTFlblN2N2YxVmVMODVHQ3FhQ0t6b3drd1R2WmpFZHdqRk94Z3ZZ?=
 =?utf-8?B?VmNPaE84ejdncXRydnRRWUVza2pjcERDNHBHNGduWXNCSUlHVVJnSmtFdFlM?=
 =?utf-8?B?alhudnBkTFlubzFqdXlRdzJuMmFITGdXdnlqY2Mzbis5aHo5M2c2TENpNXYx?=
 =?utf-8?B?aGFBT0NjdmVYMURYVFFRVzlTb3B3K2FHRDNTS21LU28rMWFYS2xHL1JuejVt?=
 =?utf-8?B?c3RVaVcxdlVnVFBCS0s1b2c4bE5PTDNOMXhWNkJraGdNNXhzaWt1eWo1ejZz?=
 =?utf-8?B?dGVibEJldTV5Q3EyQWJMbTRHa1hLTmw5N0dndWJBSHd3cHAzS3pJVyswTkV1?=
 =?utf-8?B?amlrbTZtRUp5a2ZJclVKVU8vTEZQTDVSZlZBQVdQTnpFQnFLUGlMVjZKRlZh?=
 =?utf-8?B?ZkEzRmdVYVMvdUxDZktBVHAyWFk0ZFVzeWJGdjF6TGI4aUpVRytBNTZFNk1p?=
 =?utf-8?B?cFNGMmtmZXVKK21GdHBZc0RyalozYXNqWkM1QVpQaFpaYlVJM0FrQWV4WEZO?=
 =?utf-8?B?OWs5eUsralUrYUxlbnk5SnJXaTJGeVBkK3JLVzdLam5SSktqWTR0UkFldWVT?=
 =?utf-8?B?WWZPeFNFYWhzazRMS3JQUEVQcVJSTWdnalcxTkoxenNvajM3Y0JkRmNkeHpO?=
 =?utf-8?B?Y0U2TEVkdHZTcHAyT0kranhKSHFzL0tkNUFpT3VxamV4aUNSUUUzMmJTT1hC?=
 =?utf-8?B?eWExNGx5OXRFdnFIMzVPWFhyZWxWcC9vckYzSW8yT3c1T2pDcFp5Mlo2OXhR?=
 =?utf-8?B?WVg0VW9PS0F0bG5GOTdOaEpHVmp5Uk1MaHBxNnc0VTZwWE1FQ1Z5azhnRS93?=
 =?utf-8?B?Mm04S3A2VWZuUkxHQmxTV0pKSWdock53cGdacUFPMXpPck9wb00wYzNJM2FD?=
 =?utf-8?B?OGNFL2tBLzJRUWlDdzNJL2djUkU0ZGJtaE1aODY3TWxwWGVjV3hLdk9SZS95?=
 =?utf-8?B?ZGJjWHlnTzN0RGY1ME40SStvOXA5MC9RdTJoUXdOTlBla1Z0bDVCRXRzMVM5?=
 =?utf-8?B?Y3krUlJqVUpVaCtNZ25rSnIvT24wczRpMFZXcEt0ZHJyY2Z0cWpicDl1TThj?=
 =?utf-8?B?Y1d5N3hWNUQxcFFMVk0zUS9ScmVseUc5Y3plalZnL2o5dVhiMCtVM3lDSWVP?=
 =?utf-8?B?L080VzNFSkRhRFA0UExwdy92UXE0VnA3WC92K25rdDF1eTBZY05mVHRSOEIz?=
 =?utf-8?B?RGJ5ZUUvYUFmTWdKS3g4cnZLVjQwdWVFWUZVcVh1TWo1T1Y2VFFRdEhpbFl2?=
 =?utf-8?B?R05iRWRDUS84dWNtRDJ6akloYllEUCtPZ29aQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXpkSjYyWkI0K0RnUUFBcTkyQ0NjajkyMS80YVBrSTBHREJxYWJJVDNXYVNY?=
 =?utf-8?B?TjRFQWVLYlYxblFNYTB5Mk0wL1pKMXlmeGJ4d096YVJxVVpUbUdpeUlVaWdj?=
 =?utf-8?B?TnJQdUs0eFBqeUt2Y1poS0xsWm9kZTVyejVtMDhHT0JsMm9rZ3R4bWpMT3g5?=
 =?utf-8?B?LzAxWlp3RUs3RnQ3MVYzY0ZUbWZmNjVoUG9CeTRPZEpsZkJJTDAwWUZtU1NM?=
 =?utf-8?B?a01HSHV1S0dKVkZkYnpjMkgzOEhCL0o5c0g4Q2JFSkxOVjdjd01Qbng4Qk9P?=
 =?utf-8?B?ZnluVE9qdnBMaFFZcEpVMS9MK2JkNlBFMkRvQUhkV21GK1poY25YcFN3b2dH?=
 =?utf-8?B?dG9lOTlwVDY3WHhmUDQydHRrd09BWElHKzcxYnloc0x6WXRKczJZWEFsNHZa?=
 =?utf-8?B?UTlIaHY1SmVzQ3huVHhDVWZkbFVGZGUrVkZ4TkJEMVNHY3hNRGFDSkVUTnZQ?=
 =?utf-8?B?WW5wbXhxbnBWMGJZMHNmN0dDSXd4d25IMHdWM0t5dGhVaWZXd1ZkeVVYREpa?=
 =?utf-8?B?a21WVHdkdm9mSHYrQ01NSmdZRVNhUDRJc1FtM3U5VDNDekV4VjRzWnN5bDRI?=
 =?utf-8?B?QktZNmhMT08xaUVMVDBUc0FYOEgzL1BGcFI1aStqTEJjVDNWMTBuVmZYdW4x?=
 =?utf-8?B?cVpKZ2hXMWtMeW9vYjZZaUVtVW0wZVIxcURmakswcU5rSHNMY2RaalpIVGF5?=
 =?utf-8?B?cVVDM082Z3liNmNtUlQ2R2JzbFNROC8yV1pZUnpLNFFMMW9XZlRPdnR5UGFk?=
 =?utf-8?B?QThZZHk1NlBSQ2V4S2Uzc0JESG85ZVV1NjRvUmhaS0ZjWU5obURWRE9PSjRu?=
 =?utf-8?B?L25rV0JXRFZlMmhodFBrU2ZiYVBQdFhhdWFYdVAwWWN4NkJYcWN6bWVSRmtN?=
 =?utf-8?B?aWs4SzFYWHdxWnhLTkNINk84NGtDckJlNXZpb250clIzN0RIeG9MY2Fxb0cz?=
 =?utf-8?B?OVJvM3ZTV0NVOXBKZjFrZ2R5dGVNUXpLWnBaMmNoNm5qbllkVlNjcENTVVRr?=
 =?utf-8?B?WXpRRXM5emdpQll4eGVCdTFLWTBsK201eVp6YmdWOElFTHhYTEs5c3JZNXVQ?=
 =?utf-8?B?cDBWWEovVXNjTThMSlcxaHBkMW12NlB3c29sOU1lc2JwSU5CTmpQU3VJTTQ3?=
 =?utf-8?B?b3Z1bUlWblJDTGtMVWdUSmNxVXBWY053RmVyd1h2eS9CTUtMN0x6N2dtWWly?=
 =?utf-8?B?TVQ2N1ZpWXJyWXRaTXFTdTl2SVZGaTV2MEgvVWJHQlY0M2RlSlJOZ3RkQzZt?=
 =?utf-8?B?SEd2Q01sN3A0dVhQRjlBNzVvMEQrdUU2dHB0YWxRcVgyMTI1MmpFcWtYMUhk?=
 =?utf-8?B?T0ZrcDNMUUJGcWhHL1g2RDBqckFBYXl3ZGhrYlc4ZFlmY1BhTHVvYnl6eGNw?=
 =?utf-8?B?TjFaYnJTaU5UMGhJZ21PM3UxSHM1M2tDNGtMZWVPMXZNZU1uNjZsUmRhZ3hK?=
 =?utf-8?B?ZnU3aHNYMGlLV1l3eHAxVEE5K0h6dXdXeklOLzZNRTNRZmpGOXhQVk9pSVdB?=
 =?utf-8?B?cUN4cWp4SWgwa3NwcG1YaVkxa3RwSjZHMnkwN0dWaUR3V04zVmhMakRGSGor?=
 =?utf-8?B?WldldEk4VVNSR2t0QUlFcTNvUHFFWjRiRWNjWlVhM3g1ZnZCNGpkMVdtOFpF?=
 =?utf-8?B?bEdNU3NoWFhMOVdEdTY0cHpHWm0vR1RQclJIUTJFMmhFR1pRekQrWTBqcW1P?=
 =?utf-8?B?Tk91VVFUWVpldzhyY0xSOVJIMU5pcWM0UU93Qkc0dUtBYVoycFJ3ak9SQjRF?=
 =?utf-8?B?YU85S2JZdmQ5OWsybk1QMzcydThScTdXL1VMVnMzM3dCVTBRUE5YSWhMZWRj?=
 =?utf-8?B?ODhMbHNDQ1kvZDdhUGxZL0JDV2RKcVlQYmE3UitDN1FFUi9RV2J2TTZWSnI4?=
 =?utf-8?B?ZjdwWEd4TXM1ZmJ6TE5xc04zci9xRGJmdlBReUdGYTI0OHNkVzBjMGdBcWVm?=
 =?utf-8?B?ckt5WjdhU1FGZGZhOXB5RndFTW1ZZVlJUEVJUitIanBhbDczTlo4c3JVZkgv?=
 =?utf-8?B?azY0ZjIzN2RxZzN2WG8zcStuaEJvR3hKUVlCcThuQ0orU09IZ1NjNkR3Ymk5?=
 =?utf-8?B?UXg3aXQ3bG9SL2dBTTl0K1ExM3lqRDd5WDA5WThiaFllVGZ4UnorRlpMc2dT?=
 =?utf-8?B?U3pJeUxacjRFczJSM0NrRkVxVzgwaGt5M3NqVXc0Qm1hY0RoK1dPMGFnRGFX?=
 =?utf-8?B?RHNOSjFoYUhlVk9JSDg4WHlsbHRYcWcybDljQTZNUUJmTTBjYzBoZG82Tk5Y?=
 =?utf-8?B?cTNUMnRqY3VSVXJ2cU9vNjNtUjJTS2RmanU0MnhBVVpMT3lVdU1pU3FIK2xs?=
 =?utf-8?B?dVNpUVZidnZPejBzdkwxR3YvOURaTVVBS2l3bk1VZC9UbVFFMS9ZQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e10dfd3-bbc9-442e-7abe-08de3fa66a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2025 09:01:51.3202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L79oGciHfJDzDfC+TGW98NEMKIoNmWz88lvoZYxh6/+m1zXpqmpbjhO6vksbiLQj7VmzinVl01bu5PzXfCxIwICJyu3BIrJxFA7svE2uv4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR10MB3848
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gdH+X4/JCkjxFddD4jzPlvka3m8T+kKeUGOzTal4wsg=;
 b=UDgwkRSuw7dcNtEZLajt4sYBBYbvHhAfZmTzYV5ojp7Z9xSV/esSd1PQXibX50RPIWRNi5EXAV7lOn9yWB+qhzA9rbrkxiM49yR9sAyy/H3h5r+tmpZxN1FgcJWdV0Xj7Ba/ebvrfhxw5TMmt30FlrqR8fSS/wi7E8cDPrqPcaks7WJdSgbvQvtHAkzxV5wfMs+WofTVuXMISgCPBSebwinnM0mkYht1WaSHyKBwNFPRXlnBqbq+ct9R0VYtiWb0Vv4XJsT4pWz4fQ7h1I7EZHpkS3hmxgTrNG7ZEuhyuyNzzZLrxUsB13pAzsiZe75Yo+UagMkDDeKG6Clys5mYrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=UDgwkRSu
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
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE5LCAy
MDI1IDEwOjA0IFBNDQo+IFRvOiBCZWhlcmEsIFZpdmVrIChESSBGQSBEU1AgSUNDIFBSQzEpIDx2
aXZlay5iZWhlcmFAc2llbWVucy5jb20+Ow0KPiBLd2FwdWxpbnNraSwgUGlvdHIgPHBpb3RyLmt3
YXB1bGluc2tpQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIu
bG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPjsNCj4gS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT47DQo+IFlvb25nLlNpYW5nLlNvbmdAaW50ZWwuY29tDQo+IENjOiBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZzsgaG9ybXNAa2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjhdIGlnYzogRml4IHRyaWdnZXIgb2YgaW5j
b3JyZWN0IGlycSBpbg0KPiBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbg0KPiANCj4gDQo+IA0KPiBP
biAxMi8xOC8yMDI1IDExOjAyIFBNLCBCZWhlcmEsIFZJVkVLIHdyb3RlOg0KPiANCj4gLi4uDQo+
IA0KPiA+IEhpIHRvbnkuDQo+ID4NCj4gPiBPa2F5ICwgdW5kZXJzdG9vZC4NCj4gPg0KPiA+IFBs
ZWFzZSBsZXQgbWUga25vdyBhYm91dCB0aGUgc3RhdHVzIG9mIHRoaXMgcGF0Y2gNCj4gDQo+IEhp
IFZpdmVrLA0KPiANCj4gQ291bGQgeW91IGFkZHJlc3MgdGhlIGZlZWRiYWNrIGZyb20gbWUgYW5k
IFNpYW5nPw0KPiANCj4gVGhhbmtzLA0KPiBUb255DQoNCkhpIFRvbnksDQoNClllcyBJIHdpbGwg
c3VibWl0IGEgdmVyc2lvbiBhZGRyZXNzaW5nIHRoZSBmZWVkYmFjayByZWNlaXZlZCBmcm9tIHlv
dSBhbmQgc2lhbmcNCg0KVGhhbmtzIA0KVml2ZWsNCj4gDQo+ID4gUmVnYXJkcw0KPiA+DQo+ID4g
Vml2ZWsNCg0K
