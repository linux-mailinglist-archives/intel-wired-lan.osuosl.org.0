Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKCsFs1yBWrFXAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 08:59:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A20753E9CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 08:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89C4B4053D;
	Thu, 14 May 2026 06:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id imRspasn-cYk; Thu, 14 May 2026 06:59:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C75644053A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778741961;
	bh=+BrInpqMneXn70MPHO2ko2sEAgGVLrxrBuzd8vYUg+o=;
	h=From:Date:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=Cxy08ZlGMZDDluwM0FlUQYzj/R0btCN1MlxQ03kbZrGIfilEiy0BLiRYXA0Ob2mqB
	 QSocbVSoRSsVwf3cLfzTAhpz5yRFU3nFgxcYbEiA0XyVijl/7SxrIiN2SDqStdlo5E
	 IWLxCeBkZjFZYZAL5pEaS7tn8ZWyph5GuA0pRDygRvneLJLRxdyYW05ki/EXSYm5rm
	 13jNZKpoIEomo/y20F2QByD8a9ZFm/RcmN2+ZLtAJ4ffzvIu7eRRPPmunnorlnhcNn
	 JBlXKS6xTAvrooM4qpoGC/mVfEO+5XdlKZljkfIZT4UdtqGhW44DJVeLH5N4qNiX+p
	 drsH1Y+LfbOIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C75644053A;
	Thu, 14 May 2026 06:59:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA96F37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 06:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0B8540679
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 06:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nt4nfwNA58X1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 06:59:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.103.72.72;
 helo=sy8pr01cu002.outbound.protection.outlook.com;
 envelope-from=moonafterrain@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7680B40667
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7680B40667
Received: from SY8PR01CU002.outbound.protection.outlook.com
 (mail-australiaeastazolkn19010072.outbound.protection.outlook.com
 [52.103.72.72])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7680B40667
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 06:59:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i4NRNITEGXJeKVWEFUJapx8a7anNUVvG//ZQ/UnEtf80dGoWzOjlLXD8VCy2Hx7uRrKC/dmC3TPtsjzo4fd0D616w8mXhqIhI3rS2QzMvTe0NzwlquwZhwwgtpJymwj4JAXkXDoeBHBiNZ+tc0hLFbouCfFnE8Noqk3fopATMGcb2ANWtnpWC9j4UT4ycurvknInRWOw01wLj5DPyjB4dSOd+4OusBvfBncauAgtGcR1hNrI4LXrPxYDD6WmnclrLMAo+CBuwavFbs+Y6dhblvlWuBmWdkFvk/b2AIhALtwSxD3nMWIIfxIV+OnfpNMcK9xPe5dRHB6lgnK9Gwca6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+BrInpqMneXn70MPHO2ko2sEAgGVLrxrBuzd8vYUg+o=;
 b=aO1ndC7F1/VSnBC2Stl7y1eG8DbYoTGm7tAqpmPlrpOpsAYXzTA8+xUeOX09MPfSre1yvO3KX5AtZzOpY7ajPqbo44w9OZsJOHrsOpt62lobMfrHUNU1LxpvcpJY7AAnS/xye/3iXAXQAHJPRZH6Kue1fLvziKWNYpqyck9Gequt5aXL1xW7wN9WoNwpLwGWKMZH2xctWNWbRZK+jJaS3Dmhj8KePTr4oRMzwk0iocz/fMjFAY5f4L/s9TL5HboGO1KU6uIh3bkOWLFJJg94SPh/9mUF0aX/YxX/xI8SgNqbg5TPoLyurqeV8NcJCe3dvqscXvVF+0UQYG+mNL+mpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SYBPR01MB7881.ausprd01.prod.outlook.com (2603:10c6:10:1b0::5)
 by ME3PR01MB6562.ausprd01.prod.outlook.com (2603:10c6:220:109::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.18; Thu, 14 May
 2026 06:59:11 +0000
Received: from SYBPR01MB7881.ausprd01.prod.outlook.com
 ([fe80::7cd2:d6e8:3fa0:5f0c]) by SYBPR01MB7881.ausprd01.prod.outlook.com
 ([fe80::7cd2:d6e8:3fa0:5f0c%3]) with mapi id 15.21.0025.012; Thu, 14 May 2026
 06:59:11 +0000
From: Junrui Luo <moonafterrain@outlook.com>
Date: Thu, 14 May 2026 14:55:04 +0800
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
X-B4-Tracking: v=1; b=H4sIAMdxBWoC/1WMsQ6CMBRFf4W8WZq+phR0EopuJkYnYxxIqdKol
 LRANIR/t2FzPPec3Am8dkZ72EQTOD0ab2wbgK0iUE3VPnRs6sDAKBM0QR7fzUf7uBKKYyoUVaK
 C0HZOLyKkV2h1D7cwNsb31n2X7xEXdb4UxxPFQ5FmGeZ7RMmTfFdKWnKZZ2sZNirY9i8j1eA7V
 1MknbM1sUP/svZJlH3DbZ7nH679dyfDAAAA
X-Change-ID: 20260514-fixes-a6c4176c0c6a
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Mitch Williams <mitch.a.williams@intel.com>, 
 Greg Rose <gregory.v.rose@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuhao Jiang <danisjiang@gmail.com>, 
 stable@vger.kernel.org, Junrui Luo <moonafterrain@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3513;
 i=moonafterrain@outlook.com; h=from:subject:message-id;
 bh=4GBPaN1SRM77r9F4tuY5yhp5IVn7AfiSBv3pckMqAhY=;
 b=owJ4nJvAy8zAJVb4wiKgu++DA+NptSSGLNbC4w2SwR5chS+4u1+sF9wv19Yun8XQcfyId7foB
 pGXD91vuHWUsjCIcTHIiimyHC+49M3Cd4vuFp8tyTBzWJlAhjBwcQrARGRvMzLsXfXm/MFVCkXc
 3ydY+FwvTdiiLPXdx/eUT+Kko7ufTC6NZPgft2IBy5lH+r/5NIwjymfd9jae1SFcoR/dfPxQ0vQ
 wmQlMAM3xSU4=
X-Developer-Key: i=moonafterrain@outlook.com; a=openpgp;
 fpr=C770D2F6384DB42DB44CB46371E838508B8EF040
In-Reply-To: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
X-ClientProxiedBy: TYCP286CA0087.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b3::18) To SYBPR01MB7881.ausprd01.prod.outlook.com
 (2603:10c6:10:1b0::5)
X-Microsoft-Original-Message-ID: <20260514-fixes-v2-1-48dc2c9e3e80@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SYBPR01MB7881:EE_|ME3PR01MB6562:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d4b2bce-61d4-4bac-cfe5-08deb1864d1d
X-Microsoft-Antispam: BCL:0;
 ARA:14566002|55001999006|24021099003|22091999003|24121999003|5072599009|51005399006|6090799003|8060799015|23021999003|15080799012|41001999006|19110799012|1602099012|40105399003|3412199025|440099028|4302099013|10035399007|1710799026;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDI3R0FTQ2VldVVGemd2TnVwM294dUxQWm9qdWxTbzlzMUZtaGJuaktBb016?=
 =?utf-8?B?cmdETWUvRUlISTBWNGQ1YmtZOXZXWjRpb2tEZ3BGbXIxRElhTXQ1dVVua0lS?=
 =?utf-8?B?MjFlQkkrcnFTbVBEaEQwVjJhZ294WHBCUE56bVhXQkZwUGEza1ovckkzK0FW?=
 =?utf-8?B?K1VEaUZ3QURIVmpPdDZHMTZQWXFyU1pjRkl0czZjaThnK0szdHpCTGwxV0wv?=
 =?utf-8?B?QStpRktmRGdUSDlLS2t3dkhSNmhIampma1Bya0J6Vm44RnNUQUxORGc0TEIv?=
 =?utf-8?B?WG9pZy9kYitYNFg5cm9obG1VTXR3WGcxSEQ2MjRUTzNsd25DQVkxa0N3QnN2?=
 =?utf-8?B?N3ZscDI3QjFvSlI5SHNVMGhSTjNsZ2V5enppZ0dSSnFWV0UvekhKTmJJaVNL?=
 =?utf-8?B?M0Vrd1ZRQTJvTXgwRFJ0VlEyMmJxVDQrOTgxZzg5eUlFWGFuaTlyd3k1dDBB?=
 =?utf-8?B?U1RmOFVQNWo4OGZQekJ0TjN6SzQxYUFOM1JDa3dTaUx0OG1oTnIwNkdVV2px?=
 =?utf-8?B?N21nM3pzdDVONVJHSklYenBlR0RHd1B2WEhZWFNySFlQVGhYVWlDWVlBejQw?=
 =?utf-8?B?c1dzNEpsa0hPRUJSaHZvU01EVDE4d0FaU2hhcVM1RXNidk9OWktpZCsyNEZ1?=
 =?utf-8?B?K3BPa2pGWUNkakRack9BdjhiN3krNTNTem5mZEVPVmZJL3NsZ1h1UnNNZjgz?=
 =?utf-8?B?WW9mQWZLcTdNaHJHU0ZPOFJXZWdvbUN4K0c2S2xMWVdNWDN5TU5ZZHo1RWpv?=
 =?utf-8?B?a2I0MDJGZ2h6NStaZzF1dDUxYTU1N25qZzdKM0pROGtvTEFYK2VDQ0d0eVZJ?=
 =?utf-8?B?cUd0NU1DaWhrRWwxL3duakRIZmlNWGxqL1FpZWNuWklMMnU0eVliakxzQlcr?=
 =?utf-8?B?U0JKc1hMQjBMTG5PeGxJZjMyR0tCNm10TWgybGYzaG1HRHNUNjVJTmZJc2t0?=
 =?utf-8?B?bndTWG9TWlFsZzRFajdCSUtJUVkvNkJhdFpTa3QyUkdRbUh4NEZEcEY3ZlRu?=
 =?utf-8?B?ZFpHMTFlL21mZE90Z0psbkFWUndXU004M2U4MmVmRFFrNzFIWGVKS1MzQzhZ?=
 =?utf-8?B?N2ROTFphc0VicGFSTlZYaEJnVHUyaVRLcDRFNE5icy9CZ2FxUFZPYk15a3U4?=
 =?utf-8?B?V2MrWFBaWGtmQWE3bzBsc0VJMk5IckpBOGhLRmxOTjRnTWJRa2ZvRVJFakZr?=
 =?utf-8?B?RW5EcnJhQWRjb3N6OVBXVVhKVXpqOE9JVDZnSVgrcmVOcnVxNWQ3a0poazRN?=
 =?utf-8?B?K3VkZHpKWGhxQUJCVDNZVHNZMis0VXdRNTVqQXQwcGRPQWhxTythZStBbDhG?=
 =?utf-8?B?UER3aWk3ZlFwL2pYbHFiYTc3bFlPd255Vm1vSkZGWkxrOUh6eEF4c0pZRGlS?=
 =?utf-8?B?U21reENmaGRCQjNRdGRmejRXZkZheHFEY2lOcG1QYVJmV3lqYzZ6aXNFYWJC?=
 =?utf-8?B?TlpTb0Y0U05uS3RJN012ejFpVXdOUHFKalRNWDBZZWxDWlQyR243QWlSNllQ?=
 =?utf-8?B?ZEh0V2t6SWhQZHpYbzN0bWREd2d1THp5eEZKVnRJMk9zS1RnRDRWSy9KUEdo?=
 =?utf-8?Q?vUcDw+N8HJ6Ks5bbd6QFoI81I=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEhEN3BQcm5IZVUwdjc5KzduSHRhZFdBZ0ExMkdjZkFyOTNxMCsxUE5qdStP?=
 =?utf-8?B?ZXcyTHVpeWd5dzRkeThXZHA1T2dDeVhadVg4NVJYa1puN29reGRsZEhCdmE3?=
 =?utf-8?B?THFDV3JtT2JkMjZ6ZkhMNUhSaWlNcmIzV3JNM1F5SFNYRFBsWjdWdDQxQXR2?=
 =?utf-8?B?Rm01WkdsZ01hZ1BLeng1anpBeWRZbnJvVktNQnBUUVc0aTJtMU5KaUV2eXJr?=
 =?utf-8?B?bmRTN0FrcjlPVjFEU3BVODhPeTV0OFBQK0NoMkxqMDB5azNBUzRqNEY2cVlC?=
 =?utf-8?B?dExDaXdNV3FWZWxJbnBwNlg5REhTNVNMTlE1VnFlT3ZWNld4Wm1UWGZCa09D?=
 =?utf-8?B?Lzh2Tm5XVUk5YlBUQXNjRVBtc0hRZzk1VXR1SHNGNDViUjkwV0JmZDgxZkhE?=
 =?utf-8?B?b2o1VFA2bGEycUJsMjlJWW9zUHF1S2RWU2dyVUJUbGdpaW5pMGdwYmdxVkh6?=
 =?utf-8?B?TjRVbDRIeFlYN0UvZVBsVmpnV0Z4cUVjNVlUMDNDUTl5T0VOTkh2YUhwSmYr?=
 =?utf-8?B?SXBpNnIvWDFmcktleWdrQm85L2xNL2JWZ0RTK1BUa1cxd1dNMXh6dko4MUNZ?=
 =?utf-8?B?bUdKa1JkcFY3R0NVM1E5K0ZxWUFkOGZ3ZTI4aHdRNGVKYTkyd1pZUysyaVpH?=
 =?utf-8?B?TEdxM2UvV0xWcTFIVU5ObVlJNjZyeUprRm5uNHY3L0tvM1JmUkdsMHRuUDBr?=
 =?utf-8?B?dnE3d3dDU200NWdRTW91TWJzN0xSNkFsQXpVYXRhNzlyWHBBbGtZUTNGVXBm?=
 =?utf-8?B?ajFnNEYyYW00MnJOcXFYN0w3MTE1a3hrRHZia2FHMFNBUFdRREIzdGZFRExz?=
 =?utf-8?B?RnVBZ3UvWDRVbWZ2UkFKaTFGTnR3ajRpSzFoNEk2ZEpIVXVPVEFhRm1DMVov?=
 =?utf-8?B?ZGtiT29HaXBmNjYzYk9EQUtqNkVNUnJqT2FhRTJsSVBOMUlxU1NVelJ4TzF4?=
 =?utf-8?B?c1lGNE1BQjlWN1ZTUmFNWnhEby9HZ3NZK25Qb0NkN3lKRWl0QVBDYmVBMi8y?=
 =?utf-8?B?MFpmV0lWdm9aZ2QzS3hLQm5ESWtaNGp5TkIyalVyeEFDTU5GclA0eDhFOFEz?=
 =?utf-8?B?NEJSTkxFMTVHU2krV2U3QTBmTmhmTkttL3JIUzJrNDhaSWdTeHNEVVBPRDVD?=
 =?utf-8?B?Ly84enhGK2ZGMWlkRmJpbFdyd0hmTXVPWVJNQUpoZ2ZOS0RSc3krUkJSS1Fi?=
 =?utf-8?B?cXJWemVwakk0elBHSWxoRzdzclA4bTFTTjM4ZmpSUi9FZFBQcE1uSkJxRUFS?=
 =?utf-8?B?VStOaVNzQzJOYmRWSjV2RFdmT3dnMXVzazZMakp2blVzZ0F6TS85M1hqZEYw?=
 =?utf-8?B?dU9wY2FHS0o5eExsWGtLdnAzZDc4N0VleDVkcXBUMC9EL1AwRGJNeVUxejhN?=
 =?utf-8?B?NGw2MlY0WGQ4M0p0UFIwVVdPa1ZEUjVCb2EwbXpDMFVRbVlLREw3LzRFOVlO?=
 =?utf-8?B?aUxsdVlwYmZabDZpbGZSRm04MkszYXpJZlV1MytDRGt4aHdVMGZEQUVKcXJh?=
 =?utf-8?B?Z1V5UFdSWGZxOHcwaEpReUtLcFNJUEQveTgvOEJnaVJOclR4dm00R3orQkRD?=
 =?utf-8?B?aVNRQnk4d0FqL2s1N09lSS8rYTQrYUpOcjZPVXJzZ2VFa2NFMVlkRXJwbnYx?=
 =?utf-8?B?T1ZwdnBFZ3JqeDUvYUtxMDUzUWNXb01DNWRuT01DOWJWTXZsT2FVWHRRZ0Jh?=
 =?utf-8?B?UzBUNzlWSHBIaVlhTlRuVzA2cDFESkRqT1hwWDdlRm5iVGNHZHN6WGRDaXp1?=
 =?utf-8?B?eUVFWWwwM3hFdVNYdVZ4V3BaNUtVeGtuT25Wb3k4YVQrdWVJRFZ3aklBeHoz?=
 =?utf-8?B?U3dBZUF4ZjdmSGtaWlE2bXQ4TmlWYWsvcWY1T2RwTWphcUFWTTdqVTgyY3ZV?=
 =?utf-8?B?bWxNMnNLOW0vQzRXclN2OEVwOFpIREtTemFOYXJQR3Z4U3c9PQ==?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d4b2bce-61d4-4bac-cfe5-08deb1864d1d
X-MS-Exchange-CrossTenant-AuthSource: SYBPR01MB7881.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 06:59:11.3747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB6562
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+BrInpqMneXn70MPHO2ko2sEAgGVLrxrBuzd8vYUg+o=;
 b=pasf3sKdezr+rsEL3tawnU9KgrURAh8XNyiXICtU6/PJeP8cvaukFkvyOZyY99cEW94riLwWLL5X3MU2lySq1jSqLhjPx3wSiFin7jvTKknH6SUaYkdiz46E8Sn5Q2TBuCUhGQKp/6mNBEVTqTOVF0NlMXhSOLt0wKsnfoliKK60TXEQ35UbMhcrKXAhuSwhT7rWmYUQwM5oxzravHoqErYit6bs6KJofxFZWEvaTK1Sn7xKSbqPKHjJ0q7wZRK0uYA1VojhW3FtT3TWJjlM7oMMtcIa1vTqbIbtKjth5LgTNglZYGauhxfIKIyHUfKQYONU1oKaJeaDy0JAFVWA6w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=pasf3sKd
Subject: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
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
X-Rspamd-Queue-Id: 2A20753E9CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[outlook.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:danisjiang@gmail.com,m:stable@vger.kernel.org,m:moonafterrain@outlook.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[outlook.com];
	FORGED_SENDER(0.00)[moonafterrain@outlook.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[moonafterrain@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,gmail.com,outlook.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

The VF allocates a fixed-size buffer for IAVF_MAX_VF_VSI (3) VSI
entries when processing a VIRTCHNL_OP_GET_VF_RESOURCES response from
the PF. However, num_vsis from the PF response is used unchecked as
the loop bound when iterating over vsi_res[] in multiple functions.

A PF sending num_vsis greater than IAVF_MAX_VF_VSI, or the received
message is shorter than num_vsis claims leads to out-of-bounds accesses
on the vsi_res[] array.

Clamp num_vsis based on the actual bytes copied from the PF response.

Fixes: 5eae00c57f5e ("i40evf: main driver core")
Reported-by: Yuhao Jiang <danisjiang@gmail.com>
Cc: stable@vger.kernel.org
Signed-off-by: Junrui Luo <moonafterrain@outlook.com>
---
Changes in v2:
- Clamp num_vsis based on actual received message length instead of
IAVF_MAX_VF_VSI suggested by Przemek
- Link to v1: https://lore.kernel.org/r/SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 26 ++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a52c100dcbc5..1f9a2fc70084 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -248,12 +248,28 @@ int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
 /**
  * iavf_validate_num_queues
  * @adapter: adapter structure
+ * @msglen: length of the received VF resource message
  *
- * Validate that the number of queues the PF has sent in
- * VIRTCHNL_OP_GET_VF_RESOURCES is not larger than the VF can handle.
+ * Validate the VIRTCHNL_OP_GET_VF_RESOURCES response from the PF. Ensure
+ * num_vsis does not exceed what the message length can cover, and cap
+ * num_queue_pairs to the VF maximum.
  **/
-static void iavf_validate_num_queues(struct iavf_adapter *adapter)
+static void iavf_validate_num_queues(struct iavf_adapter *adapter, u16 msglen)
 {
+	u16 max_vsis;
+
+	if (msglen < sizeof(struct virtchnl_vf_resource))
+		max_vsis = 0;
+	else
+		max_vsis = (msglen - sizeof(struct virtchnl_vf_resource)) /
+			   sizeof(struct virtchnl_vsi_resource);
+
+	if (adapter->vf_res->num_vsis > max_vsis) {
+		dev_info(&adapter->pdev->dev, "Received %d VSIs, but message can only cover %d\n",
+			 adapter->vf_res->num_vsis, max_vsis);
+		adapter->vf_res->num_vsis = max_vsis;
+	}
+
 	if (adapter->vf_res->num_queue_pairs > IAVF_MAX_REQ_QUEUES) {
 		struct virtchnl_vsi_resource *vsi_res;
 		int i;
@@ -300,7 +316,7 @@ int iavf_get_vf_config(struct iavf_adapter *adapter)
 	 * we aren't getting too many queues
 	 */
 	if (!err)
-		iavf_validate_num_queues(adapter);
+		iavf_validate_num_queues(adapter, min(event.msg_len, len));
 	iavf_vf_parse_hw_config(hw, adapter->vf_res);
 
 	kfree(event.msg_buf);
@@ -2609,7 +2625,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		u16 len = IAVF_VIRTCHNL_VF_RESOURCE_SIZE;
 
 		memcpy(adapter->vf_res, msg, min(msglen, len));
-		iavf_validate_num_queues(adapter);
+		iavf_validate_num_queues(adapter, min(msglen, len));
 		iavf_vf_parse_hw_config(&adapter->hw, adapter->vf_res);
 		if (is_zero_ether_addr(adapter->hw.mac.addr)) {
 			/* restore current mac address */

---
base-commit: 7aaa8047eafd0bd628065b15757d9b48c5f9c07d
change-id: 20260514-fixes-a6c4176c0c6a

Best regards,
-- 
Junrui Luo <moonafterrain@outlook.com>

