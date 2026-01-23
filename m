Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC1aNBAgc2ngsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 08:15:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFCA71870
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 08:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 077846059D;
	Fri, 23 Jan 2026 07:15:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OAbnc6c2JxV; Fri, 23 Jan 2026 07:15:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 763AA6073E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769152525;
	bh=GlF9BcFPYEz0VYxW1u41DuZSpuV+lWvW+zyTdt3ydEw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LnEK1vTDKGc6I+QF0Jcb/+4NWsxOJ5nzQETJwFPe01GbMcxuWMNqNr30nwP0+kw9U
	 CXjyb5U6uamWdaRe6g3Pkf+CGml4Wxxhu0kXgVKBvd9HNZ1f1yQYkdaw0H0qFzyrW3
	 1ZZ5e40AIwKiGWY84vx55jB2kohVsXvWuwA0lQ2+dv9fQGDiEDbhR7fkSEebf+z/ZT
	 eNPZRFIAQDP3Ao2iSW1tlNPKSvZrvmkFUQi2y9VrpYGFHdrcli/CB3vuapN8RoW+tb
	 rXC/IDv/ubwTn/rAXINfgsv+rvAIvR+MG3X43aSDp8bJJ/W+JqXaVppNOrw5FY16qn
	 CnstNEWauXOTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 763AA6073E;
	Fri, 23 Jan 2026 07:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 61110158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 07:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4451740949
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 07:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CRj3zWgY-Zct for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 07:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 664E840942
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 664E840942
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 664E840942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 07:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: UqUo6ySMS+y2NFB9bN1IqQ==
X-CSE-MsgGUID: ND85gKZBQraIHfPkyEf8Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="69421661"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="69421661"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 23:15:22 -0800
X-CSE-ConnectionGUID: SJotLFEBQ+OC5P6/6UomIA==
X-CSE-MsgGUID: IOq5OZSqQQKNl7cZJrtfuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="229914346"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 23:15:21 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 23:15:20 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 23:15:20 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 23:15:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z47zV64wPPRoe7MAg/eaUAfrs5y3uTSPIC6Q3BfthdhaOZFV+nY5IAsOrzV49+tWQUSpjx3IPwGo7g116J0aQ0Vk3c+s5COvZ+O/3Zh08USgGmKsldTRatN2rMGpFDSBLib1kHCHOTQIR9hTYkQ4aa+/wIYjhwaDxiBL5/PEbMBo7wjMfD5LydwM4CyHt2W2Jc6RuMJD2jAvrPJuMzVzS3JGF5qnWpRPWwGbFWZOW7mTMsT5k8S8DiGYFqd88Uv61GNvMfVZL52dVVuK0ce1zV/SKhKhuxu88eivm9vo0ThfA1jPAW31hAh3GxOXpl2Z9LSz8KGH+KS5FqVypa4JNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlF9BcFPYEz0VYxW1u41DuZSpuV+lWvW+zyTdt3ydEw=;
 b=l71VbNxyog6/+MIXCcjey/KuJi0R7jNjLi47o6xCrnsgFkVL8UrYQagIjjws/1fEW2m3ZjyP2Rbsaf2yHwWsATJhanDrLTljMNWxhgiwoJlvSjfQl6I1IYqD0GR25OH9iUdOC93AmZ1WBFlN3KaVQAg/3TFbVmB9LVzsmkR9NooYmygu78Gp4219vJhlH/PNyy4TtsBjQ40cdqkJsk9xtmHt+A3SyUdNq4D+DRut9UUld2vhehEKa+63HVZxuqrOgLXL2ayfYV3wb0KN/1o05tlHQRgIMXTz4tsG1X6ad3/4YkZo3YPLfZ2XxCyegV9QtnQ7KuyQ76googSj1/ueWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7452.namprd11.prod.outlook.com (2603:10b6:510:27d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 07:15:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 07:15:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
Thread-Index: AQHcjDW3oxqR782nvkG3eN0ujbFZN7VfVnkQ
Date: Fri, 23 Jan 2026 07:15:15 +0000
Message-ID: <IA3PR11MB8986E9CEBE2CEC78B194DF40E594A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260123065806.3858623-1-boolli@google.com>
In-Reply-To: <20260123065806.3858623-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7452:EE_
x-ms-office365-filtering-correlation-id: 402e6a82-c961-42b9-0f4e-08de5a4f27f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?N3JHTlpieURyREt3SGdteWdFb21JcUV2NDA0WUt6bEpMWksySXZOaG9XdmRW?=
 =?utf-8?B?S2RsVGxTbTg4cTFXbGpxM2I0MmZtR1dYS2dWakhRd2tSbXZrc25mWlRzQU9j?=
 =?utf-8?B?c3dUTURadXNwQXNXQkdxVFZJcFAxaEcySEF1ZkpqTlFuaFhrNHB2RVE0cEdu?=
 =?utf-8?B?M1V5cHMvTDhjL3E5VnFVYU0vSEx0SmVGOW1RUDY1OHVwMGQxR1g0dEVXT2Nn?=
 =?utf-8?B?VlRxTUdSdVdNMDJIeG53cDFiSFI2NjA4MXE3WFo2WkJFYkhtbmN0S2ZOMGRO?=
 =?utf-8?B?UUZwU2Juc0lqUk5FRXdTc3AvWjg5eU5RWDE3SCttbnFnUzVLa0ZjMTNDTGxw?=
 =?utf-8?B?UWY5SXFSSW1QOG54d3AreTIxMEJNN0NmNjBITUNuSE8xTS9qQm93OWNhdkUv?=
 =?utf-8?B?WDNsaXNSZEpUK2RtWVg5UDVKUGdHb1RXbHErd0xBSkIyM29vSHZ3U1dqWFBl?=
 =?utf-8?B?QW9DOWlsdmRwNzJ4SFZBRU1XdzhzR0xaWVZyS3htSEdGMGlNOE45bnRMZDkx?=
 =?utf-8?B?anhndy96ajlQb09DVmNOK0JWcTVlcEJjbHlOL0U2dFNrTytvNzVNOFhRbWl1?=
 =?utf-8?B?REFNQkJoaVFHS3VLOUc0ZTlvZzhqTm42OGE4a21QLzRwdkkyb2JhZWREYjhl?=
 =?utf-8?B?SnhSNTBnU2VuTUxyQ2NmVy9adUR2MzlxbllCWWZRek9VLzdYYjhobWQrbUds?=
 =?utf-8?B?WVEySzRFSFdhSjFiY0gyVmhadnNFbzlsUDd5MHNnOG1jclVlOUQ3Mkcwc2Fi?=
 =?utf-8?B?SkpUMVh4SHMxcnRwaDVhM0p2cnlka21LdGFCWUozeG9nd1VlK3FyMzBLWFRN?=
 =?utf-8?B?SXgyOGdFZFcvVVFFaWtMYmd3bk80SlZUelJtT0hRRGl1Z1lGMjZnV3RleXlE?=
 =?utf-8?B?cjlldDBXeHVNWHpsdHVCOStZR3F0ZTVJQnp2cHZidjNDYXpnK3c4dU1ab1Ix?=
 =?utf-8?B?Q0xPaGxONmVpcThzOU1VemNBbFQxV0w0NVdVSmZNYjgxZGtJS2k4QThzY05E?=
 =?utf-8?B?WmxVNFZVMDdWLzBacjExRDI1MThwUGxlVnNvSnlxcmgrcEErdm1VdlptU0M4?=
 =?utf-8?B?ZGRFeE9QRVA3VkdlbDcyNGdVTEo0c1ZYVUtlQkNwd3diQ2J3dXpTVkJzalhs?=
 =?utf-8?B?YkVwbWVmcGE4ZTFIYjB2WUU3TlMvOHFoL0VQRUcxWUZ0blRKYmhaSGR0d2hY?=
 =?utf-8?B?SmI5bE51ZldtajFCOTdhZ016Rlc3NDlmY0NSU1NBQnlvc0RzVVBnVG16Y2o5?=
 =?utf-8?B?TGsyN0hQeHNMbHBVbkIvdEhxVlBNSGd3dnZ3bEF1NmdsZlhqdmZBdlVLYjlG?=
 =?utf-8?B?SlJHRUhFdTI4SlBvWU1ES1RYd2U4VUZBUkpseFlsUGRXQTNnbzVHYlJyZUdU?=
 =?utf-8?B?cE9TSWNOQ3lmTHFzY3p2blkyb2wvc2tVWVlGVCtQT3B5TGFWOHFJNjkwUEJT?=
 =?utf-8?B?aEJaOTM3M2dwZldweWRIRGM5Mnd0UDZUTFBScC9UTHNmaXRHbE1PbUovYS83?=
 =?utf-8?B?R2xTUGdNOHpSVjVhUG1RTUd6K3lqOTYvci9MelRyNHdZdVEwUUMxZ1RkQUtR?=
 =?utf-8?B?dlVRZlQ1ekcxTW95WFZnN25JTWNhNXV0TDBleU9ENWFoZWlUc1ZMWmlvWEs5?=
 =?utf-8?B?eElFaTlDdkRpVzhBWXpyWjlTeXZ4ZzFUT0JBV2xNdjBLMGxCT2dFQXd6aWta?=
 =?utf-8?B?YWYyMFRBYmNuUkIzN2F5TzJLeUd5ckoxLzBzM09QZHY5SHNSYk1tLytKNm50?=
 =?utf-8?B?YmJldEVQZ0tGcC9LNk5pcXdWS1hONlY3V3B2UTVObndWVU85MEtyeHNEVXhz?=
 =?utf-8?B?WHhyWGxQWG1IY1FtRFBCZ0dES09tUFFJcG8vdWRINDhhT3Q2RUQ1Sk11MjBP?=
 =?utf-8?B?bkU2S3pyd09aWWwvRHkyTFQwYTMwYmkzLzYyOUd1bmx5ZjRwVXM5dU5saC9M?=
 =?utf-8?B?WlB6VWdsdlFTMWFpUXZqQkZmVEljNmxpUkpLODZsSFo3VmpFMjJZU1VTamor?=
 =?utf-8?B?Qm44UlUyV2xiZnlKdTVaYzV2Q1JWRllZM0IyUG9aWWd4OUZBQjVMQUJjM2Y5?=
 =?utf-8?B?djZFNzczbUNKaFJnY1V2WndVZ29wZ1hvR2dVbGtVclljZnIxU2ZyWHIzdmxi?=
 =?utf-8?B?dU01UVpncUZmT1J2czIrbHpNbVdSQkFLUnlGOUZ2ZEx3bDRjLzgwUENocnd2?=
 =?utf-8?Q?PS//pdLP60x7e5AEeMEvjKI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkZ6ejhYT0ZBbUlqbmovZUpyb3RHa2duMkRCeS85TzVKKzBZQ1RtRTJlSzBU?=
 =?utf-8?B?OEZ6QjhlSUpNMXdNZE1Ma2IwL2dCZGhYbTNZWENjMlA5QVIzUlhhOUVDWndp?=
 =?utf-8?B?WWM0R0RINWpoU0IvYTVZdnpFZDFkQm1naWpYcHpka2J4SWsrMEJaOEV5aWti?=
 =?utf-8?B?K2dXbUZMK3hKSFdNWnNYRWNpVEJSL0N4ampWbzZSNmdNSEtCNWVzR0t0RE81?=
 =?utf-8?B?UHNwQ0JSYW1yRjZ6dUlzK3BiemVzRHdLZFFjMkRLemY3WHkyaFkzYjZoU0Mw?=
 =?utf-8?B?aFNVUHhjZFBFdUZaNGlkOXN6cVp2Njl1TjE0ZVRkMjZ4c1hVeVpUVjI5ZWg2?=
 =?utf-8?B?NlFrYXBJMzRrTTM0TU9QM3lhdXNTQ2VDMkNERGx6NGZyWDExU1hrZithcVBF?=
 =?utf-8?B?UnFQR0x2eUg0SUc4aDhVSGVHbDB0ZWlyc1ArQWFkd2gxSmxrTklZaHVaeDZS?=
 =?utf-8?B?MXlaT2VLNnQvV2VKMW9sWEFBRWtybnY4S3lNdy9wK292ZE5YdjBsWjN5RzJs?=
 =?utf-8?B?RUFPSGt4MW0rdDBrblJCdERlSEtOME9WTTZib3pBa3A3aFBSRGRKQ2lKUzYv?=
 =?utf-8?B?NjRRa2QrQ0szTE13emVTUmo2ZFdHQWtGK2FiQ3VHTm5hODRRWUl3Rzg4aFJs?=
 =?utf-8?B?eHVXek9TYVJaSGFyelhSZU1oNk5vbmVTSHRBR1o0SkFMditLV2tlU3FsZE1D?=
 =?utf-8?B?NlRvd2dpWlN4a3RLLzJmbGU4M1YwMlBEejlLV29tSURjcFJWdC9wbTdEQzRw?=
 =?utf-8?B?alF3MjJQNmxPTXJyTDVkWTd1MGtOam84Y0gzNGsvUnFSRDBpTWR2QlcrTUth?=
 =?utf-8?B?bDNxbHFmbzNuR1NrbW4wdDJQRzVIUnJydVcvU1BuZnZZZ3NsbzNnZGoyWVp4?=
 =?utf-8?B?Vm83dForM3orWmtHQXl3bnNDQXA1eTNxMzF3MWs0ZGhGK2FZeEZibTVmcG1o?=
 =?utf-8?B?QVlYSFVlWXJ1Rjc0R3EvOUo5WjhLVjBscjNneFBpQlVDNzlGLzdoZTBqQ0Ra?=
 =?utf-8?B?aGZsT2lvUTYyOEhVWUFwcTFHNEdmSnJyQzhjQnhTanhnay9OejN5YTVkSXp0?=
 =?utf-8?B?Mjh5VjFQc3dwaTkyQ3RHL3VUNUxLSHc5NEVRRVlTd3ZUWi9mbXlkc29JaWdL?=
 =?utf-8?B?cndSNDA5VmF5dnU4QnM0K01sRGcrR3dGbG5aVWptTW5EUXJOd2plV1J4NER4?=
 =?utf-8?B?bzdkUkRiOXBhVVhFSE5EUS9wUzZmOEtOVkZ3WWpZQUxTeTVOazRua2kybHBP?=
 =?utf-8?B?QTBMc05HdERCdkpJN29ya0o2RXlUeWZKS3ZGUUJVZGhWMGw0NXNnSVFGaUZz?=
 =?utf-8?B?L0NWajdjanpmSUlhb2NxWXZ4VzdQWERrNGhvakNmUk00Ykt5dkFLU2dDU2tG?=
 =?utf-8?B?NU5tSnBEU0xyNENNK1NBRmNvK1JXZDBmcVlHenhzMExoTUxTdkt1dTc5MDRQ?=
 =?utf-8?B?NzlBbTBoRlUxOTJpbGpmdUJhWW95Q1IwZFg3YnhZR0JBU2hSeTZHUDUwSlIw?=
 =?utf-8?B?eGljMEc1VkJZNkJ5UGVTdzloaUozZ1M3VmlsSDFsM1U2aE9qakR5bTVOUHZv?=
 =?utf-8?B?SlQrMkNZMEs2T0pnQS83S25tdnNmZ2Y0ZUw4ZzhQbEZ4RUI0WGdLNGNZTGVx?=
 =?utf-8?B?OW5ESWZUYnJiN2lsUUZxcFlCcUcwMjl6dFA2TlhIc0ZmMjBxdExUSWNxMGN0?=
 =?utf-8?B?S2phRFpvZ0x0UmlGUEtSZDgyVnhSdGlWUVQ2UytCZmZ0MDNuUjd0YmdwQWl2?=
 =?utf-8?B?c0dlYTBySkdwb0xTbm9aS3dWOHRzSDBORXREYmtNdDNzOUpTYlRqa3RrUGtB?=
 =?utf-8?B?YzV3c0xsYmxidlpMUXJLUmoyeDJLd1lyMzFVL0VjbnJqVElCWFNxMXRSdzBQ?=
 =?utf-8?B?SEtUMTBoUG41andzeDNiQ2puTlZJcTlPbkhZZXF4eTRKNFdyTHBlN3BTbVBM?=
 =?utf-8?B?VVNZclFWK3RlNEhRd2h2WDdjQVJqWlFyYXVaMURLM2VERStndHVUZGN1NGlH?=
 =?utf-8?B?bFN6enJ0SDExZlZGcU9tYnFxeDF0MUpsTkVZekx3M2tlcEpuWFpNT1hDMi9O?=
 =?utf-8?B?Q1RiRi9UMEdibmhvdEsxYkwyUkV4bnQ5TTRjc09OUHh6NDVmTFN0NCtHcThk?=
 =?utf-8?B?cEY4TFA5VGpHR3g4SUxQRTJBUGduTzZBMUc3NkNGRjlFTjhrZmdyM3pNb1RS?=
 =?utf-8?B?MUtmWTdqS0JZdERPWHFTVVpzY1Btd2pjdE4wUXhvZFdYcGJvQ0dsTVk5Z2ZS?=
 =?utf-8?B?bHFEbXdYVnl4OGN0S05hVGVZYlBPYWM2SDB0WCtDRVVjakFSdFhWMFZHTmh5?=
 =?utf-8?B?eStXOVhoNmJYbUs2MW55WE5xb1crcWRteEpzWXFaSFpVUG5oRlp5UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 402e6a82-c961-42b9-0f4e-08de5a4f27f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 07:15:15.2348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9TSkkQuHKpUehIkNcGFncyOZoTCmzGdooCs3ZL9Jd4ZkeMXwwrgY/X83SOAjo/JRm/0zsYYxiELr1Q7+3SYkE+iMWBACW8hyDrl5v0VSmxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769152522; x=1800688522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GlF9BcFPYEz0VYxW1u41DuZSpuV+lWvW+zyTdt3ydEw=;
 b=ksNa9ExTO4Hr27GPumlE15m1KCFstItw0o/yoSWv2K+EjB79EK6bzjQA
 +GZg+dN5DQxMNB5bCKyrUHJCleSp5qjEqWOUOhHsgiDZgZrKSvjHprav3
 5lzjN20X2QD3Vorw8q+nxbBfTifWZG/kX7Dxd5KT4mrORwSMkWaVGfF3a
 u8c9Wgt6z06urmngjioPTv5abd3vUZApB/Unz2PLvU/ohlPsZ3R3IIlcX
 kxAzbhVyi+sU6DMFJFseyjIlukRkG710BN617qgrQ6yoZNmbRgpHCTjxq
 LYyYohC7jMslyY8hNUraSezV4KS3rQYieFVcHPmR9Krd46MJSXCvPKoBD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ksNa9ExT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,davemloft.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 6CFCA71870
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBGcmlkYXksIEphbnVhcnkgMjMsIDIwMjYg
Nzo1OCBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEpha3ViIEtpY2lu
c2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5j
b20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gRGVjb3Rp
Z255IDxkZWNvdEBnb29nbGUuY29tPjsgU2luZ2hhaSwgQW5qYWxpDQo+IDxhbmphbGkuc2luZ2hh
aUBpbnRlbC5jb20+OyBTYW11ZHJhbGEsIFNyaWRoYXINCj4gPHNyaWRoYXIuc2FtdWRyYWxhQGlu
dGVsLmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47IExpDQo+IExpIDxi
b29sbGlAZ29vZ2xlLmNvbT47IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2Ml0gaWRwZjogbnVs
bGlmeSBwb2ludGVycyBhZnRlcg0KPiB0aGV5IGFyZSBmcmVlZA0KPiANCj4gcnNzX2RhdGEtPnJz
c19rZXkgbmVlZHMgdG8gYmUgbnVsbGlmaWVkIGFmdGVyIGl0IGlzIGZyZWVkLg0KPiBDaGVja3Mg
bGlrZSAiaWYgKCFyc3NfZGF0YS0+cnNzX2tleSkiIGluIHRoZSBjb2RlIGNvdWxkIGZhaWwgaWYg
aXQgaXMNCj4gbm90IG51bGxpZmllZC4NCj4gDQo+IFRlc3RlZDogYnVpbHQgYW5kIGJvb3RlZCB0
aGUga2VybmVsLg0KPiANCkdvb2QgZGF5ICxMaSBMaQ0KDQpDYW4geW91IHJlLXNwaW4gdjMgYW5k
IG1lbnRpb24gdGhlIHJlcHJvZHVjdGlvbiBzdGVwcyAoZXhhY3QgYmFzaCBjb21tYW5kcyk/DQpU
aGUgQ0FMTCB0cmFjZSBmcm9tIGRtZXNnIGFsc28gaXMgbmVlZGVkIGZvciB1c2Vycy9hZG1pbnMg
dG8gZmluZCB0aGUgZml4Lg0KDQpPdGhlcndpc2UsIGZpbmUNClJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiBGaXhlczog
ODNmMzhmMjEwYjg1ICgiaWRwZjogRml4IFJTUyBMVVQgTlVMTCBwb2ludGVyIGNyYXNoIG9uIGVh
cmx5DQo+IGV0aHRvb2wgb3BlcmF0aW9ucyIpDQo+IFNpZ25lZC1vZmYtYnk6IExpIExpIDxib29s
bGlAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+ICAtIFJlbW92ZSB0aGUg
bGluZSB0byBudWxsaWZ5IHZwb3J0LT5xX3ZlY3Rvcl9pZHhzIGFzIGl0IGlzIG5vdA0KPiAgICBu
ZWNlc3NhcnkuDQo+IA0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xp
Yi5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gaW5kZXggMTMxYTgx
MjE4MzliZC4uZjYzYWI1ODQyOGQyZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lkcGYvaWRwZl9saWIuYw0KPiBAQCAtMTMwOCw2ICsxMzA4LDcgQEAgc3RhdGljIHN0cnVj
dCBpZHBmX3Zwb3J0DQo+ICppZHBmX3Zwb3J0X2FsbG9jKHN0cnVjdCBpZHBmX2FkYXB0ZXIgKmFk
YXB0ZXIsDQo+IA0KPiAgZnJlZV9yc3Nfa2V5Og0KPiAgCWtmcmVlKHJzc19kYXRhLT5yc3Nfa2V5
KTsNCj4gKwlyc3NfZGF0YS0+cnNzX2tleSA9IE5VTEw7DQo+ICBmcmVlX3ZlY3Rvcl9pZHhzOg0K
PiAgCWtmcmVlKHZwb3J0LT5xX3ZlY3Rvcl9pZHhzKTsNCj4gIGZyZWVfdnBvcnQ6DQo+IC0tDQo+
IDIuNTIuMC40NTcuZzZiNTQ5MWRlNDMtZ29vZw0KDQo=
