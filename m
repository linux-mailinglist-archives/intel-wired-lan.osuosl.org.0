Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB09AE67E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 16:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18BB160BEE;
	Tue, 24 Jun 2025 14:10:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqGMeseOcSEm; Tue, 24 Jun 2025 14:10:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8165160C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750774231;
	bh=CkUPG2bE52NCEKXLgCGw2Jr3D3q+AmHCoZx27B9BHiU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IA+wkyPxFfx+sqlMT/bF3clmHq72dre3CzsDFlC6cx/++bbkDFno46neJXTi330/A
	 xBEo4CSaFzMR2nOD+apl3wBoRiHg56dADk3aDkd86RdS8rAGXe90QeOsNEqNfUNBuL
	 He6P5Q4w66vfy8RzRSPPTzUnY+AMlcEowXgbrwTfsgeMeykuyIEwQOZnNIVw9a511V
	 uEtQnDj35bZjiUIbr3LTCIXwIV0nt5ahzhlAafl+J4v7ieZGNBUinErxCPJTJ0EToO
	 5Cre3UzUq1pucu6vJw+Id+5xU9aE+9EpXb4BbxraMQNKm8dx2d1jwRiitQ5sGHzsVi
	 7IRZtvlbkuQlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8165160C0A;
	Tue, 24 Jun 2025 14:10:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BCA9D12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B96B883AE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:10:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kpKorEw932Y0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 14:10:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C46683AD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C46683AD7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C46683AD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:10:28 +0000 (UTC)
X-CSE-ConnectionGUID: vEj28YtdS+Sgq0jXGNuPlw==
X-CSE-MsgGUID: xSHZf7hzTEiPU2H/SSTGHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52737840"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="52737840"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 07:10:28 -0700
X-CSE-ConnectionGUID: bzJRxrzIT7KPi9s3487nHw==
X-CSE-MsgGUID: sXH02gZTTayLODa2ScLgng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="152629932"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 07:10:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 07:10:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 07:10:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 07:10:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xj3Nka2Yd27E5jKqun9+83ycWtMFoTa1g/KIs9rjBysA1lZyQiT+TjhW66uL/fbD1oKeqqKiFIuQwmjWRWFkYFymyu7q7ke49rCEoVXAyFm1ZwaXydbAAZDfyYaqPwngmTfn41zN3Xv1cHI64pi8h1g7XlSUH4P7ma5AjqDQ+Lkh2bSDn5NLTuXlsPLdjwFjfwpa/oq1ZPFFpRj3rSbjLk6yzbxOrBQhLicQAFaNUo7FOMpnPVV7JtJzFLeHKmcX5LNtLU8zCO0UfHpof2HyClrIxJqcF5HUc1qvH8h5MX7m5YjbUbQUl7F3ycAvi6CM1nEy5g3R2DoktoTr4DIfMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CkUPG2bE52NCEKXLgCGw2Jr3D3q+AmHCoZx27B9BHiU=;
 b=urISh6qZXb5SNyeyjszCG356Ts5XFnirDIWWRpAhFsrBkOv1FMhB5ZRZSC5tRNBSQ6a1LPUlmAjPsPIMBSePeNRFzIgl8a6gCezBMTNw7HGbrUNdY31ONH9RXTUQQ9+YKE1TSYL5o7xYgX3KSa3PIXRFcaeGD9iF5k4p6tMTsS4akEI6lAIz4CLP4yD+IEkMT6tIZiiIgzRcY93QwXe/w4I06Vr1LoONkBstX5jyJNFVOn+Req+6lMqMRf9a7KlqLoETUD4HhTsRaN0qXQKqXPBwIJ4f0LaRHEVdKoEKLzsp3l7/dqxxAWw/9WKh25So7NBoQ0on5Z1FWEuqnSrUwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB6293.namprd11.prod.outlook.com (2603:10b6:8:97::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Tue, 24 Jun
 2025 14:10:11 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 14:10:11 +0000
Message-ID: <dc2d8a33-644f-4f45-af59-04531e40a79a@intel.com>
Date: Tue, 24 Jun 2025 16:10:04 +0200
User-Agent: Mozilla Thunderbird
To: Arnd Bergmann <arnd@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Arnd Bergmann
 <arnd@arndb.de>, Simon Horman <horms@kernel.org>, "Dr. David Alan Gilbert"
 <linux@treblig.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>, Slawomir Mrozowicz
 <slawomirx.mrozowicz@intel.com>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250620173158.794034-1-arnd@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250620173158.794034-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA1P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::22) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB6293:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e597251-4eeb-41e5-f18a-08ddb328d4ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmFWcWthQzdPdTdNcEhndUFrR1JYKzIrcmE5c2ttVDJCak9pSWdEcWIrb2ph?=
 =?utf-8?B?MVdXR2wvZWZOVHptVUpaS0tpQ0dreXlxaDlqb1VJUkVibWtTZlJuWWxjSjhL?=
 =?utf-8?B?T1VMZ0daU0RCZHhzcUQ3Y1ErU1lLc3o4cnJnOU9lbWRRaXh2cW43RHlOL3pn?=
 =?utf-8?B?QzZ6ZXpIdFJERFQwL0NHdmQ4UGRSU1RoU0Z0dnpYZm8ySk9uK1JFSEZrRlAr?=
 =?utf-8?B?Kzk5RlF1YjRyOEJITXozWFNacmtpZ3Nkc3hmTU9GZWQ5bGM1VXZJcCtYTDRJ?=
 =?utf-8?B?UUV5UTBUSEhRWFZjbktLR2N1QWJiOENLeGxWSkVuWlQ2SXRHWEtnczdmb3Jv?=
 =?utf-8?B?K0E1Mm5SeHFnSC9MU25nMnIvSVV0c3FEcDVWZ0EwcVBScENFcFJDMzVhRFM1?=
 =?utf-8?B?b1JWUWZjZ3laOXZLSzE1eUsyNmxYTzNFbEI3YUZoenpUQ1ZzRUhMdXY3Tndi?=
 =?utf-8?B?cm85NSt6RGhTcDYya0NUaldBdzVTeTZHdmE5cUJ2YkRBaXF4dGxjL0JIb2Nl?=
 =?utf-8?B?L21aMHFyQTl0ZDZNS1BDaVFPclpwYkZkQW1yWnpEQ3l2U3piT2tkOEswcGFn?=
 =?utf-8?B?VlRJZzE1OGFodTBZb2RoZlY5Ti81bm4zV3h6bUZ2THVtaHpEei9Gc1FPZEJw?=
 =?utf-8?B?bjJWUTRhK2dzUjg3VkluZDFxWkRaTFhOU2Nzcm56S2diZTZEMjhiZU9rOTFP?=
 =?utf-8?B?S2dOdVZZUjNHdW9pQ1JLUUpjSlE2VGI3Q3NPQ3NVMUFkZkVnclNHNm02d05p?=
 =?utf-8?B?dS90WmRHc0J1aHFnQkZTUG9Ya0R4bGpFUm85dXQwUnZNRGk3VXFwREw4RHVW?=
 =?utf-8?B?dGRvYjBuZGhhMjVHWnRGUHEzQmQvOCtTNjY2VGNabGRFeVJXdHdCcWFIdTMv?=
 =?utf-8?B?djdxOXBITDc5WUNwWXA1b0owV1NJWWRZN2dKRzVIdm9TUlMwN1NRejZoUlEx?=
 =?utf-8?B?cHNPNzhxeHhMM3ErVk5wTmlnYzRuTHVFMXZtN1hIajRIdFFHeXE3WlN0WE5M?=
 =?utf-8?B?RVRBWC9meExMcXNMS05Pek9la2NBWlg4VlM3cytyOE9CTTFUQXllVkdiQ1RX?=
 =?utf-8?B?YWNwWmZ4cUxlclNSZXZMYXM0SVBBMDc2aFROM0FaNFpBOVdBZ000Y1BvcHNp?=
 =?utf-8?B?MmlGODlhT3UyQXFDQUFLUVJNclkrRXpuZGFhVElQakRzUjF1VTI1VDV5UjNP?=
 =?utf-8?B?cDFHSU1jUHl1QzRTbXZRSm93M3RpL2w5YkduNmd2ZTJIVDRSQ1daZmh0VVU3?=
 =?utf-8?B?UzV6VjJTVEtJdnVzY3FHTTJVOFFnSm5odGpZeWVPRTBrY2R3ZWVPOUpSRHZJ?=
 =?utf-8?B?aC82S00rcThkVzVHeFEwT3hpTHdmdGlxcnJ1N2Nwd0wyempSS1lqUlIzbFlD?=
 =?utf-8?B?ZXpkbGs5YkorT042VFpLS0Uzb29tTGdYRVpFZitxa1haQVh3Yk5GZ0MyQ0Y2?=
 =?utf-8?B?SmpZd3k0bFBoQ2hkelRLOWdVMmFVSXVJNStRTWZzR2JHRkQySGw2OVZVSitQ?=
 =?utf-8?B?ZnJVajUxRHI4TFhDWjlGSTdvRFdzdWJyZlpIRzdOZHhYN0J3Ty9tUnZIUXZo?=
 =?utf-8?B?bmhGdFpmUzJRNmdKdFVGZENZTWVRVC9DWXZxemFXVThWb1A2VHcrWlRLbmdZ?=
 =?utf-8?B?SkdxdDdJSmp1eDkydVRPRElyOXdiVDJ3cVM0akpKZnZIbDVvMmhiM3lZNVVQ?=
 =?utf-8?B?K0gwalZpUk1HZVE0V0c4Q3lUMWJRdDZ4NEROdm16YW5KUEU3Tk84ZVNkMXRS?=
 =?utf-8?B?KzVmT0JkNWdrdXVtditkK3VTYlp3MTJJVW9sL05IMW02Zzd2YkwvQmRuRGE0?=
 =?utf-8?B?dTdCS2UyN0VrTlh4bEdkdFhJUmd0NHdBTUJXbnJlakF5cTFXMEozcnJDMXFz?=
 =?utf-8?B?MVVSUnMvazMzSS9mL0pCT2FZUFhVeEN3MzllbUs0QlhiczN5ckk0emh0aVFn?=
 =?utf-8?Q?M5d5Wd+liuU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmUzUTVlZERhRkVoRCtvYTVoanFROStKaGdtaUk1bW9MK1kxcGFLUU4wUXU0?=
 =?utf-8?B?NXdqaXk5Mmd3N09nY2JZVkcvWlgxSmtCUzVwN1RuaFVqUXZ5NHpwaGlUaUhP?=
 =?utf-8?B?K3ZiOUlTUjl3clhERm1VUHM0eno1c1o5SyttTnJoYTUxVm5mMnBYQzlkenAz?=
 =?utf-8?B?MkRoK3B3ak43UCt3T051djlkQzNwWEdidTlLZzY4YlhyZkMwM0RkbWZPQVdo?=
 =?utf-8?B?Q2FLQ01lV0lva0Y1aVZPY1J6dDNOZm11UlY0SFg0S3VnZHp4QUUxVnFlK3dw?=
 =?utf-8?B?TlhGMytkL1RhTTh2ZTF2VThNR3dDV1U5TVFHNmhjNXQvYmw2c2lyWXRxdFVG?=
 =?utf-8?B?VzdPeUpKM1dIbEJEaEd1ZU9HbXpnYTJ3ZkM3ZU80RFFTNTZ1OW9EQWZmelFi?=
 =?utf-8?B?b2lUUHdnQmF2ZUhQNkYwTkVzTkROL2UzTmZHU1BrM1FTelo3RENyR0FVNE5t?=
 =?utf-8?B?SkFiZC92UDFHTVVwbm51eU1RR2F6Wm9KT3pIZktqNkNCMlJmTWRPWVI3OWhl?=
 =?utf-8?B?R0gwUjROc0UyTk5OcGtLTGpmYW11SmRkRHFvTlVnaENoZUNISUlFUnlkQzQ3?=
 =?utf-8?B?aUVRVDFjdS9mZTFHRmNaUFNpcytRQUx0cm5hWWhYZkYvd29iVlBTM29IZWRn?=
 =?utf-8?B?YnZUU0cyby9OVTcvVzMvUzF6VGF5K3VWWGRBTDFMb2ZMYlFXbTR4UUs3dEln?=
 =?utf-8?B?TnI4bGNseXlicVJ6SzZsRmtMWnJWSUZWS0F3eVk5eGhwQThqdGtMVHRNL2s5?=
 =?utf-8?B?SFNjeUZ1cUwzZUhjdTc3N0FENTVuSXJzT3NHY0t2TGowREtpeE1HWVU1Zllp?=
 =?utf-8?B?aVpQbkZ5Qm1qMlZBeFMvdjY4RjJxQjYxd2FBWnBRTlRpTm9tK2UyOXp5TXRh?=
 =?utf-8?B?b3BNZEQ4Wi9JM2dnRisrczM0b2Urdy9ZSmVBNWdKbVlqSnhuU0gxOE5kdWg5?=
 =?utf-8?B?dExMSEkvck50SmhrYk9BS1ZCWG15WllFdTFyZFNLdHlKMTU2cTN6N1VzU3Na?=
 =?utf-8?B?Y0pjYmJNcW01MzFFYVdwdHFFMk5aZldmQU5tM1l3dm1MYVlYdFNocDY1ZFpO?=
 =?utf-8?B?R2dacmVoaDBUandKUGxpcW04R053aG1PUW5BRzRrVEZScFR4VlVOYlo2Y2dI?=
 =?utf-8?B?OW4vNmVqMXpaeTQ1bXo0eVBubVp3SWdySWo2TGU4R0E5aFRhUFEyMmt1RjVJ?=
 =?utf-8?B?S2ZqZmk1ek13VVNtR20vTHA2b28yMnA2Wk1NZE9OYXpGV25CSEV1eVV0RkpO?=
 =?utf-8?B?aE4ybENkdHIwWEk4MHZGeTBpQUgzakFkTno2RjFZbG9zUEVJQTBmd0xRSkJU?=
 =?utf-8?B?RTRwUHNUK05MM1UwL3RGRTdIbWxld2YrcG4zU1lreEg1VFBMZS9YZ0YvL2RT?=
 =?utf-8?B?N3ZERHNHV3pFVm1FU2JZcUdsY1Y2OFpFK21OQ1Jsazh3czIxQUEwTC9ZeGY2?=
 =?utf-8?B?SGpvemdjSjBDa0ZrZHg1dWxIY3M3K09xR0M0OEdCY2x0clFZWko1U3A3dWE0?=
 =?utf-8?B?UkVBa1VyTnY1dGo4dzRNSTRvZ0lVSHRrdk5YazBKVjF5K0M4ZEorc3Zrd1Vy?=
 =?utf-8?B?SzN6T2VyUlYyOWhHYnh0TENlRDF5d3VKSHpDbmlqVGlUUmZOMGRNeEsyTm1q?=
 =?utf-8?B?U1Uyb1FQOUF1ZzlxOXl5Mm5LR0NaY2phMENUd09zM2U3eVZwbzFxUzVNT3lr?=
 =?utf-8?B?amV5VW52S2NwZHZTMTV5M2d3SmpjREJ3d082REU3b1R2OWZxdkF5MzhrYStz?=
 =?utf-8?B?SUVUeFIrMFUzQ3QvYkFRNS96Uis0NnpOT2V6bE9RL1poZ2ZQUFE0N05PRGgw?=
 =?utf-8?B?anphb2dsdVJlN05jZkR2Vm9YUTJ6RzJ0WEowWGFzWmVQS05VRkVYNk5rYW9R?=
 =?utf-8?B?ZzJleFFqSVpTa1JtbU1ieEdIMXZldDloN2RBemJCV3d5TmtIdzNDUmRYQ0ZT?=
 =?utf-8?B?WjZ1ZjIzSDVkRVBZamhZOG1MTHdWeHlpYm1sUkExSlZ6cXp5MStTZzlMaWhE?=
 =?utf-8?B?Z0xQZlJXb3lRM3RvdjZzQUpuY3BmR2wwNHZ3ZEtpbElYemlXOHVuck0zbXAy?=
 =?utf-8?B?d2NkVDF6VHFaY1pUcW52b0dLUk1pYm5KcVY2c3JEdjIyRzdoQnYvaEJ1TVF5?=
 =?utf-8?B?MEp2VEI1Q3ZXVG9ZQ040RXE0MHRPZUJMQXdtRmJnUFgxc01jL1k1Q0dpMmN4?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e597251-4eeb-41e5-f18a-08ddb328d4ec
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 14:10:11.1885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F1PVfQlmRe+VskPsCbsW9YvtZg2biYeZGt0FWpTmSqNyrSn2kFhhL9B9MKHKy5iRTVYya1CAIFRqirWZmdT8B5BEnxhqzuFZOz61vPd/5KY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750774229; x=1782310229;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZrBRckQp4OilZ6u1kuJ48t9N69OZFktxg6JqKFdPFWs=;
 b=JMhDrl9g7p6xJ6ly7D0ufbBXkWJnrtMqSaYOGpAGjeignfzNmTLJb1tR
 JxGtdYrFlxBhPIzB9WK7wtb2PHjWtbP1tUbfLR9UWg9jTyTGap69A0ZvG
 s07HO+ybLTsaXt/fdH8EoNfOVCVGqepT+4cdbfYCgT5116vlLATDWERVs
 yEYYwnPoepDz28vwb47joRpVMYgM4MT7O+5hK0vYiVRf1vxMh/RGju+LY
 42QPs2+QBioWuRXFOFfrlwRoZhP3xBoFDpAHcJwb0b+vkxvoqhoHB3LnU
 MREhPrwEjHtaIYskCwpG7HjFbhQ5azqmYd/z/HoBDuEffK/Ifby4nLbO0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JMhDrl9g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
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

From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 20 Jun 2025 19:31:24 +0200

> From: Arnd Bergmann <arnd@arndb.de>
> 
> With large values of CONFIG_NR_CPUS, three Intel ethernet drivers fail to
> compile like:
> 
> In function ‘i40e_free_q_vector’,
>     inlined from ‘i40e_vsi_alloc_q_vectors’ at drivers/net/ethernet/intel/i40e/i40e_main.c:12112:3:
>   571 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> include/linux/rcupdate.h:1084:17: note: in expansion of macro ‘BUILD_BUG_ON’
>  1084 |                 BUILD_BUG_ON(offsetof(typeof(*(ptr)), rhf) >= 4096);    \
> drivers/net/ethernet/intel/i40e/i40e_main.c:5113:9: note: in expansion of macro ‘kfree_rcu’
>  5113 |         kfree_rcu(q_vector, rcu);
>       |         ^~~~~~~~~
> 
> The problem is that the 'rcu' member in 'q_vector' is too far from the start
> of the structure. Move this member before the CPU mask instead, in all three
> drivers.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

> ---
> v2: move rcu to just after the napi_struct [Alexander Lobakin]

Thanks!
Olek
