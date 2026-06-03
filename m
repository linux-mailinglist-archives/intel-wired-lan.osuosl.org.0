Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yx9jBGNiIGq82QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:20:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9681363A211
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:20:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IJPObmxO;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39B1842762;
	Wed,  3 Jun 2026 17:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IcMbezFzeHXm; Wed,  3 Jun 2026 17:20:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 745004275F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780507228;
	bh=gUhCq5SUyDs9hj8todRnFkbL4+ohoF8X0eKpPnHAJ4w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IJPObmxOBZi3O4h3SKlM7iJuqp0kbvw9F87VCEfWx45IoCgpoQO2yq+fh77/5vpvZ
	 uvC2cnKWqVDXZnbylIEnnepZonBcN+LgqAcTpwOMnBsTUKa2fJNRNBgcT+h5pZXU3B
	 m7W1nWcG0p1zfSQCqqnlTbg84MIBfeBgdqvsloxFOygLChEVvC7Syyjpysol/8ny5D
	 0m8RD34KQok2nnM30XuwZJ2eyLe6idyCsoFfs82cJ6NqlIEP6BRX395Hg9QotBWoLx
	 mqnS5szoLXuPeVe1g/NJZpOmZIHahprZNobFSimBiypL9X402pdHa3x8x2MBx+idIy
	 Ej25lON1zl+IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 745004275F;
	Wed,  3 Jun 2026 17:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 07344192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE2686170E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CJI_RRGQYXhu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 17:20:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BF17F616FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF17F616FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF17F616FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:20:25 +0000 (UTC)
X-CSE-ConnectionGUID: hOqRRUO5SWKAqWUa/X/FmA==
X-CSE-MsgGUID: kP23SaViSPiRMzAHJFg6Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81452750"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81452750"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 10:20:24 -0700
X-CSE-ConnectionGUID: FGP+W80WSey0bHTTdDHspA==
X-CSE-MsgGUID: VgAgtQZWRWy30dsJqCbjOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244385654"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 10:20:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 10:20:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 10:20:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 10:20:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uPWISVQ7ndS5gNnPa00ZPDb6Wany+c8SZ6NdNJPMcJjfx/UgqL9QDLg6NJYapFOO/ykwNoG/kO6tNya//QvE+AauCf0APZR1rVq8DBGvT6ghOqhyz0wT81/e8W4/vAQRvcVpVr24yW0G5PIQhIDCADr6u0Y2RWKC8j5Q6eom8C5vtXdW5avsNYEoGxmdNfNwxGGU0q2+8VMcvWFWShxWabhgjnoq2IOb7brUkXjf4yVVS17hjEMtmcp+tAeMwkzJ8uH73rI9nNgv8Gd5GhCZefuamEYcspxEeNSnRJ3hh/dl0dCCFQCG2UBnj6/Pjs498hps3BH/2zKxoahMUGKxNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUhCq5SUyDs9hj8todRnFkbL4+ohoF8X0eKpPnHAJ4w=;
 b=XqZiQH1o/Q7ATwlFcffk5Itwp0axCpQ6oi6KWsw3LglZ0x68OrFNk+TRYoE3x1/C0E969dBkTmaUXwF2nxMJ0DN8gsQVjkfM2wBG/YhMPo0pe9vxWUX1YtLYo1K3fEML7e/iUk7PaRkfPkCyWyRNHoeL6dVvkg3GSk2aHeCuL87ZLZDR7o5T8t/xwCMSLONKIrrkQKLidmehKIMQzVl0JvwG/LQN4igG7KLCAc2SDeyuDuR3JNAjpe7PvDLYy8dlAgKy5eu7So/J1PjdQaaPlazUMDadeuIS/sFhVEbPeYDc5Tk7Tbu+95O3fcEhhivpuvrbBAsT8GUIeDvBwjVD3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Wed, 3 Jun 2026
 17:20:20 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 17:20:20 +0000
Message-ID: <f4e402c1-f60c-4349-8bcb-6c135aa3b45d@intel.com>
Date: Wed, 3 Jun 2026 10:20:17 -0700
User-Agent: Mozilla Thunderbird
To: Thorsten Leemhuis <regressions@leemhuis.info>, Dima Ruinskiy
 <dima.ruinskiy@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <anthony.l.nguyen@intel.com>
CC: Linux kernel regressions list <regressions@lists.linux.dev>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, netdev <netdev@vger.kernel.org>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
 <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
 <56f5f3da-31b8-4847-b274-ce140bf39617@intel.com>
 <2619ad91-e3c9-439c-86ed-4604c3f5d912@leemhuis.info>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <2619ad91-e3c9-439c-86ed-4604c3f5d912@leemhuis.info>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|PH7PR11MB6032:EE_
X-MS-Office365-Filtering-Correlation-Id: 10a8addc-f6dc-43db-7804-08dec1946379
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CXLfbX+uD/cEUipOapUKM+nCUeP/PIQU7Yc0OBIKPBenzyFJIxTwJPJJNcOYeZLug3lGQd9F2HNCeruUL0z4P9IlQ7b0CXasy7YqJtb2ozeo4YeHePvLMQtx1WMtSyK5y+Jl1JPY4k2U0cmjD4s7/k26m/2Ot/0PrzxvFPrxh2uFL/5843TB132NHwurQFWt0GWkVjFuqwbT0mgGVYXaWlrt8wViqYQuZc1/b4BIj3oPAasHX308vOmcy4QFiMlSNaQpu+XeMG+yIGKqCzQaNxl6luIqcDHnoumivNQ4HuGrQdMnuS8hC7U9QiyeH3YwpcCVf4XI8EVAahtHUhHrPbZtdFfdIg18qh9Uz7S1jrzzqB47WTYZXQFkyR9GqCLtIqyY6Vz09xCvgAmUIE3eMiHSDUIDD+WBpVy/ZFxjOk0uZPYHj2lsUesYufILh/IiTBSRH0ll5Jf3xXvsxpODxWd1L41+W1aPJVjg5xq9Uk5fcChgYECcURze2qtrczxnajUjtz04CZmAdxbSKICPjQSF8SW8tK2Vb+X1Vo0KUAQYyCi7gI+dGyDWe3LjNLRt7tW7GXefkX+j4TDImsF9SM2bv8fmulHN0WG+6RHjKwxb5cd8lzwTn+4W757yufS/oJ1oXIf3SvP7LjsQvnT8Toz/vmEFUB4E5CJXwB/5a0mTRc3kB+H6WlE/dly0SyH9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUx1WWVsT3hlTjJ0M0ovMEkwdytjbHFtQldBTVg2MEVCS3dvOWxNK0xaRTRl?=
 =?utf-8?B?Q0dsWEpxL3RWMjU2S09xVjRWS2xYbVpUbmRQR1p2YldXTEwzS1JVMEdLMXJJ?=
 =?utf-8?B?VFNIMDFyeTNEMkhhUW1USzFpSGhBUWswY1YyTUVHMTFkTmZCZVhTaElpWlNo?=
 =?utf-8?B?dzBUdDU5N0JnWG1ySmNMczV6WHB5bEgveWpOYVd4RE5oYVNtR1RSOHZFb2FK?=
 =?utf-8?B?bERhL0JJRlFpR2pTc1dvWUdLODgyREhkam9ObEcxY0NvVTVMRytsSENVdkdS?=
 =?utf-8?B?RnlmTGJ6bzFDWmpIMXoxdU9vUlBWS1Q3ZStwS2dZMTZzYTY2TjhpeURPTk0x?=
 =?utf-8?B?Qm5TQ0lTNUJWTGFld0sxRlRuWlkrY0lHUTZMQXlic0VocUtQdHFrUTduZ1Br?=
 =?utf-8?B?dlBnenkrNDVWK3p2YjRXZHFkTk9KZ1BCWEI5TmdlZXJYOXNyc204M3dxRjA2?=
 =?utf-8?B?ckFBTDVMODlQRDVkaDZ4Y1Jya01LeENnL3B3bVdZTzFTRUN6UlJCYVhDd0Uz?=
 =?utf-8?B?WmNBeGFPMzF2dU4rSTFJU01qVUhGYlJuUXA4ay80SzBzbHVOR0xUUnFObGEx?=
 =?utf-8?B?Y21yb1E3S2FORXllMWhCRHNzVExDdnUvM3hlaDdLUEhhQS9jVUluMFRCZkR6?=
 =?utf-8?B?aUUwVEtpR0RwYTdaQ1hkNGNQci9TcXkvMHNrSTVwU1RJYVh1SlcyZ0w1NHBn?=
 =?utf-8?B?bFJ6aXZoQWdzTFlWNGYwTVdtSUw4ZlEraDVXN1JIcVM2eGFGMDBsa1laMGxR?=
 =?utf-8?B?R25lekM4UVFGbGJ6SEc1bGVtTzlZL3pCYm5vVzgvVkFZaHRROTcxQU8zUE1J?=
 =?utf-8?B?QnFSazVoTXRxcnVRa20vZ0xwdHp6OXFnMUhIK3BpM3RHN05FU2E4VUxjS0Fv?=
 =?utf-8?B?eWh4UC9ydEpWU3U5UFJTTngrdFhrS0FSM3E0T2lpK1dnbU02WWFEWjFqaFRk?=
 =?utf-8?B?N3NDVFJJdjRMRktnUVczQTJvVEVQNFBKbytnLzNvenRPaFRSOUg2a0ZTVUZh?=
 =?utf-8?B?VFlYd0ZTRzJjYm9WQWd2Zm12VzREVTdBM21XdDExRUp2TStodk1qM2JFYmJU?=
 =?utf-8?B?UW1GSHZYZllwcUZQMkRVcVI3WjQ0SExsTXFBc0F6SzJjelEwUzcxS1Ftakl3?=
 =?utf-8?B?VUlsSi91ZVFMMGdRdWorVjJwRkZCdzFzV2EyYXRhYkRzbWNpclFwSGY0T1dO?=
 =?utf-8?B?VDlaM2NDN3YvYUpyWEIvVlgzcWxaS1gxRkt6enk3MlloUGhVYWJDTzlKKzlO?=
 =?utf-8?B?bHlQVmhxNk9WbGRheW14d1V1RlNBMWpJejhVVUF1aEwyY3FMbTZxN0hUK0w2?=
 =?utf-8?B?S0hFK1lZVGExVTczTHRCZ21BK095QzRXbk5KV0lOdTh2ZGJObkFTMXRWWlF1?=
 =?utf-8?B?cGFlclZrYnFHTlNuWXAySnhWSzZSZ250ZDdacnF4Z0o0TENBWDJ4SWNRNkpB?=
 =?utf-8?B?TEo1ZGJPajBlQms4M1RsY2g0U1dOMVRFemdONDRqMUQ4dzNMbUdzbWNCQjg3?=
 =?utf-8?B?U3hLazUyWWE5VmJXT0VNSUFSVDl4cENHeUk1blJsMWRwODZQRXFwZVJvaDBy?=
 =?utf-8?B?ZmhHcGxjMjV1WEwveXFzeFY0QzdFUk9lTVBkb0pBQ0k3cVpBZWRSWVlTdEFZ?=
 =?utf-8?B?V2NTdENBRHRsSW9wZk9hQmxST21nbTBSYUJYTG9JNHVZSGJTWDdQeFp5b0dl?=
 =?utf-8?B?ZUJvYnhydmY4U01tckVlR2E1dndHVXZkTHRvcnp1dWc1L1N6Z0xmMjZ0RHJq?=
 =?utf-8?B?SVpJekZtdE0rS1JIOHJFTkRuaWlRQ3VqODZWemRaVFlEdWh2bkRyeFVJTHNj?=
 =?utf-8?B?MzhzTk1PVTlwVUFUVHB3OElPOEJ1RjVlbzBvZkh5R3RqOWt6eHZqWGh0Lytl?=
 =?utf-8?B?VFJLUktCSHlmbVNHRlAwZ2NrS3NiVXhiTHNNYlZIblBVaTN5VExQQ2g4TUxs?=
 =?utf-8?B?NCs5eW9WejMwdlZLT2dLR2tzVzdxN0xLc2RSUm42bEFORkFTY1BHT3UxRk9Z?=
 =?utf-8?B?blRFOWZ3UVpRdC92U0dYcUtqbDdQUldUTTlvYzVJTEhsVmlBM2NEL3c1SHdV?=
 =?utf-8?B?bitQYjBRZHdiOWkvY0tZVUJvUzlXTE1vSFk5dXRESlBsQXplWkE4cjlTTFFv?=
 =?utf-8?B?OEJFbzE4cVBMcmVWZmt1bGJrZDNlUEZSWlp0Tyt0Q3ZKK1RHcW1WelR4WXpO?=
 =?utf-8?B?N0w4bkJQZjhNT1ljdWVtcm9yWkdENVV4QktWS29ubVExSU1FM3ZhengxOHpL?=
 =?utf-8?B?L3dLVXNNSzh1ZWxZRjFwSmhvLzgzMkNhWGVFdFpLTXFvMmhUdFpxcDMzY0dW?=
 =?utf-8?B?bmxrTE9SME9MZDlsZnowSXNkaUNwam9sQmNMcUVDK0tsSytHcGxxZlA1TDAx?=
 =?utf-8?Q?0KELyQBGyXRO0R7U=3D?=
X-Exchange-RoutingPolicyChecked: C0pwl669Idg20GJwDA+B4C/bVoUtTZQBcokGLDVsN55Bh2cQbbZBkpQhtHP7IOuhPCKwZ01TI9v4dfoqhgvLiNt3/176WTqT4M10kPZ+ThNvMHocjkgShP0W6EbzNXzdBqqossS5ZhLeZ5L8+VHa9hEmDQXsmZPuKYaiA4hZSy4H/F7iJDBLvZtv9u8yUI6odr6kFx8ImDD/QDaQhxD+nE2RRLNn0s8R8gjuhYFY/hO7jLM4Sof8jyLa41oTmacZuquXFLuvQvesxiBEiDOV4uFjyADCUeYvBxOXt8TH+g9w0fsMYhBAIFU57siylts4hJEKzz+xnnjnbMhCVxIwuA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a8addc-f6dc-43db-7804-08dec1946379
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 17:20:20.4039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5X3oqunClaho0CuT6fvLal2e3qD3W+hJ+ZDGbfhFyhrFlvyIhKtAPF0jhbOSavoPVDtEPdC7Wx49ExtX8AhAOE3Lf0VOLN1oRm7UsTD05go=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780507225; x=1812043225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GS+2VwLy5sy2OFozl6cwiz/0io3pmjKYUmwOUYdAFwM=;
 b=GjQ9khbzxGIXQ7WxF6LnMiY4mhpY/HSD815MEufwe32vdNu97WCC0LuU
 Yagw2/avKsFcsuwwszpwDPcZBBAJc2szWS1tSKc8/VfMA6v1YumnHwV3a
 FZ2i6DfPgVG4srGpFkQ8GHlxoTY93CyBOBJHO16zdjAKSlI9XJzDhtP7y
 Snsuy0J5TMKYpDIkFza1T6GSVu/UUaV6NcZrth5PW+xSWubr2Ni9mCzMI
 2YAK7l10Ii4uIXM7BwypQtM3M7xJ9nL/SH9TcOeeiesjL/53Y6UbJy96X
 fCwjTZi/SNY6ySoKGNvWxCnQIpeQJUGHTnugeWmKj+/yudUplkX2yiE7Y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GjQ9khbz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:regressions@leemhuis.info,m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,m:regressions@lists.linux.dev,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9681363A211

On 6/3/2026 3:42 AM, Thorsten Leemhuis wrote:
> On 5/6/26 22:13, Jacob Keller wrote:
>> On 5/6/2026 2:59 AM, Thorsten Leemhuis wrote:
>>> On 4/17/26 12:43, Dima Ruinskiy wrote:
>>>> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>>>> disabled K1 by default on Meteor Lake and newer systems due to packet
>>>> loss observed on various platforms. However, disabling K1 caused an
>>>> increase in power consumption.
>>>>
>>>> To mitigate this, reconfigure the PLL clock gate value so that K1 can
>>>> remain enabled without incurring the additional power consumption.
>>>> Re-enable K1 by default, but keep the private flag to support disabling
>>>> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
>>>> be disabled by default on known problematic systems. Currently, this
>>>> includes the Dell Pro 16 Plus, where the issue has been reported to persist
>>>> despite the changes to the PLL lock timeout.
>>>>
>>>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
>>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
>>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
>>>
>>> What happened to this fix for a regression first reported in January? It
>>> looks like it fell through the cracks. Or was some other solution found?
>>>
>> There has been a bunch of back and forth discussion and varying versions
>> of a fix for this. Its still in the Intel Wired LAN queue, and is
>> currently waiting for one the E1000E team to report testing completed.
> 
> What's the status? Just wondering, as it looks like this didn't make any
> progress, but it's easy to miss things from where I stand.
> 
> Ciao, Thorsten

Pushing Tony to the To line so he won't miss it, since he's back running
the queue.
