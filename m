Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAiCGF/Lumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:57:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EDD2BEC91
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E86B981E3F;
	Wed, 18 Mar 2026 15:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8_S0u-3Htand; Wed, 18 Mar 2026 15:57:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E2A581E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773849436;
	bh=hTwaN2K/n1KEeeaPD3QthhTQbOSLxuUIRTbilwkzJX0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kdgD7ObrlmusZ1BfgVY+UzMhw8QxP0uW/U0bATed/ztmLcz5awLx+0wDFsjttSjDm
	 /esdD4nT2buh0a1dhiJ4CMxY5Gfs9FH2aiw4iU1D7eo1X5p0jbVCJpE43RJVzobLQN
	 cDFZk1Y73rFCpdPBMYgMZ/3rIE0oaPR+HQgkb0enjHxA1rnT9+QOgnNnfGhG1O//if
	 NeVT7+fhnxuWzAxqDhHA8aJdOh6gWxwf8m/5c9JF9q8ZkjJKxjUSdMCh0sReQKPxiU
	 LP3tLCp/DFHOoWwWFfd3dJcpXf60HbsiYXHs1EZAoVhjceTx3sJZy9riVb4w7SdhDm
	 mpE7VgLYnw9QA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E2A581E58;
	Wed, 18 Mar 2026 15:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A8F41AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E422A40411
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jjkVooRT_8U8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:57:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1A7144007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A7144007D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A7144007D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:13 +0000 (UTC)
X-CSE-ConnectionGUID: iqNkwWDLSbuJkgYQ9fmgPQ==
X-CSE-MsgGUID: jANCAnGrRriZSMgmi1053Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="97517889"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="97517889"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:57:09 -0700
X-CSE-ConnectionGUID: P0uV4os9SzeOJWtdt3q0Sw==
X-CSE-MsgGUID: 52QhCcO+SvO1LjKdpdkqJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="219697599"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:57:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:57:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:57:08 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:57:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b00Irk8QLMgHdKUGfQvDoVNUXvfX4LW6dieXHYQFo5k/Tlz3Rs+iE0RtlbpwT3eTkBjTFfQd+o9CJ6cWnmpQA+xE0NdYJlHqtCFsfNw4ljsva3DchnmbBmRDJfjnYejKIYoJ04eCYXxwojCwBX3mXJJewgPA8KVkFAbf4bHgFelWIcegJpIbWfwEyLeSQJmuCl2zPJAqzZPLuCB5KbsR5j8zAmFZwRT+u4rPPLcUNuLZGq8+05pz5w4dptznCMkA/k48gO3TqYz3Dpbh+ZEpj47KQmCLNCQQV/4+bjrCj8a9cfG4O5QMPbn9xnpOotZQUduvTDXpsSCovhcZzMUl7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hTwaN2K/n1KEeeaPD3QthhTQbOSLxuUIRTbilwkzJX0=;
 b=nJ49a6KG91qJtGSbEnwX+CIgIfv1B2joxhmHke+OQyRr7x7ztB16ss51uk0fNauECbwK4JcsG5uS+O4EZDlFr5VxO6GNuxci6tQAlSXCd1vcOujcJNdIZnBZKyrtQpxg3DQ6PHXAB+ask1neg8xIPC6NwP3BY+yGHuaF8A77EWNMjAcid+ohmU60EYS3KbEiDIfi5SQj+FfBI1wj3Ce0rAzllVHlXdlqOXPuhfPZ0N5ZXtKhCmbeMFODrvyNOvgRAOcCrEbU2/JEpGEdxPTzslGUoNswsPZiGmTcRgzhfhMcl1Mkykfh3D1m5SZNC5YBYPfYbqCBDI+DMnjhkBkaUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by DS0PR11MB8134.namprd11.prod.outlook.com (2603:10b6:8:15a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 15:57:04 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:57:04 +0000
Message-ID: <af824f5c-2fbe-411f-881e-cad581fde7d1@intel.com>
Date: Wed, 18 Mar 2026 17:56:59 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260317062205.39406-1-kohei@enjuk.jp>
 <20260317062205.39406-2-kohei@enjuk.jp>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260317062205.39406-2-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|DS0PR11MB8134:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bd66623-9007-43e1-4509-08de8506ffb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: lScgM3fy/h7VyK0r5NLwCtDTTsexWQe0znYYh26WfnZLDt60ARbBe4/+9Fv/pjDIdfbrFuWbHlB+25RBXXbqkjZ94kX3qF+DLCk1WbyoXrsde/KvpgU/hKCf1IZNr3UImXiY0eoCqPdq+NGkXsrl2Xo48Za8jCWnCrIgX9rkE/CyHDJWVrbA9HzGkmcUe3YL6TQ+/gBO3HOS4kTaC88Uq2TuWBdml2aLBaxWM10KqvFnlkeBMXuzohPvByg3Z07pjuXaLMSYGnTAQuSan2EANO9Ww9W2c04QPQcQyZLb3Y0i51PyFABIfFG4rbTUL/ecdg/VcK1QyWjPTIpD0/tJQCObIOk5/+rDG+qtvJVB+PiDGbf8spE4qbg+j6IEX+F84m+1lZrfqcNHM8ApD/4krfbzjo4drvIQD+4MqnB43Cn5m5FoML8BxKQGyRLL6y6mtf4q/8rH7JDA1hke1eALj0OPGF0zgeGkXUuWmVCaKRtbxJ1s5WQpZIci/4MyfP/ngLAY9v6ncMjfInY0E6KKerSjWkffFXSW5cVoOUGYw9VUw6sNYbcVpqYsigwd5TeRz68w3I3X5YEd5iqofNfVNU1SvqkJmpm6l4UVoEMRwtAAq5RdAEoPpBnJuB9nEIKfpYBYPSHUfb6evVaOILDpuaL5En8wRgiYGy7V7s4MJmdWPwJeloeCB/nlhUJZ7nIVMTvGkSup6XrqIleRgSRiQkWJZ01Tq9t0CEzVPvlZiRo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajBybUFLSS8rQzlPVXFaRG1YRjNicU1GVFNQSGdJM3p0dm8yRHdCcktLR2Yw?=
 =?utf-8?B?YTNHcGV5MCtGNWltRnNROVJYUFhjU3JWWitrUU9vOWpMakxtcjl5UnNIWkZI?=
 =?utf-8?B?SHZ6b21MbW5rbHZYaTBkM0xQc21GY2tERll1L05QV3BCSjFiZW1TT0RySnBT?=
 =?utf-8?B?dE5vQjk1UENDdzVKVG4vREE2dnA1RllmVmdhcXFGdTFQSm0zTit4WTlaOWhx?=
 =?utf-8?B?N3N0enNmWUZSSnZRZUpQdERvZWgxU1VkT0p5RUNkSnpFL0xYbC9KZWlEb0NE?=
 =?utf-8?B?bnZScFdGMUlTYm1wRUNIbFYvakZXY3NtL2xReWJ2akhtSDAvalhWWkx5QmQ2?=
 =?utf-8?B?WWxmMjMxNzV4eUFaMmpxeGZhWnZzY0tTN0s3SFZMdWROY0RmMkdQaUZtM3RI?=
 =?utf-8?B?SzJMM09DVC8rbGhVZm00MHlCWE82K3pFKy82ZTRUbXdWSVd0REdFL0piUEM4?=
 =?utf-8?B?M0p3eG9rejRKWkJnenY0cTNjNHZMeHplaXNUaG9TMUpKcWMwTVk2RWlHUVdC?=
 =?utf-8?B?aCtQTzNrTE14c2Zybm03alRXYjFhSzRVa1l1OWRTbmU1cWNYbHNuRzJDMFo0?=
 =?utf-8?B?czVlQVJZSitkdmR4dXhocG4wRzZjVFNKUS9JWVdRVEtsTTZqN1JuRFlONFIv?=
 =?utf-8?B?UUpNK3ZlVjZRNjRUVFY5UUx2TldMaW9ONWhscG9SQXZFamMzQkw4OGlQamt1?=
 =?utf-8?B?Um1iOGQ0Z3RWbGtQZ01ZZmZuQUtocTVrUXZUMUt0dCsxMGhpdzQ2RlIrR3BN?=
 =?utf-8?B?UDZDczJTS0U1dTBYOWJWTHlxc0p3eXEyLzhKc0YyZDc1SlZUWUVZTHlWc2o1?=
 =?utf-8?B?QUEvRjJpZm1rckVpKzhjb2lLWG1GZG9LaWloOEViQUdIZnczUlpvSmZPdURs?=
 =?utf-8?B?dE41V1hjNGFRM2dGWnpNVytLRTg1dStBMDE3SWNaZjBHbURmWkNyVWNZM0lx?=
 =?utf-8?B?QjU2KzhMYVVmandNVUdsbXhBV1UyRndPd0VoaFFZTHplaXNZRUVNZ1lMWE15?=
 =?utf-8?B?dXpuUXJuQUVtTHFrTkVDTTVPS1VpQlhyQWVtd0tNWjZ3c0RxamhqbUxmRzhp?=
 =?utf-8?B?NG9QelhvMlIwVjNCVGNnS3c0QjJCdHEzdzhYNjJScVBtZlZxQlBSU0FvWFFj?=
 =?utf-8?B?bXNpWHpGTTFlREl6RHllMkR1QTNTdjNicmw1S1dTcENUYkFzc2kvcVZEOWdq?=
 =?utf-8?B?VVhscGxQRFRQQlRoRDQ4N1hKblVxTnNRUG1LcGticS9kSS9UcU1JYTFXQVVW?=
 =?utf-8?B?d1JjR3h5OFdPbStPQm5JTkZQdWFiWEZzM3Y5N1dCOUZaY2RZZXRMbGdxSFdp?=
 =?utf-8?B?KzhGQ2tJTWZsUkoyOGxzc3ZHRzVkdkFCcnBraWRtb0dUTXdQVk85M2pjejJ6?=
 =?utf-8?B?eGRFaE5CK2xZTHR2RC93UEw4QlFlVzJnRCtZYmtGdmIxd1d6Rk5WQzJuV2Rj?=
 =?utf-8?B?YVN6YVgvK2ErZU5xTTBLSzZFS20zZjFaa3JQY3BYdzRhNGs5RUtOK2FDd0tu?=
 =?utf-8?B?KzYzdUZDMUFSbzBlbkhjdGYxZjFCVEx4WGNmM1QvUVk3K1B5TVRhcElidUxp?=
 =?utf-8?B?ZGZjNmJjcWRKNmlYT1hMRzBVTmFEM1IyMWcwMGxMaHJya3dRSVJ3SlJna1Ax?=
 =?utf-8?B?Vml6eGtCMGR4aTVhT25jMGh3cXFTdENNWk1UcjVmdWVSZjdZRjFIcVR5TWFN?=
 =?utf-8?B?Qkd2MkVHR3FOMFUyTXlvbHhBdG80TEF4cGx3ZzJnWGsrdlppSml5cFJrYW1F?=
 =?utf-8?B?WThNU1BOYmxsaHppQVFMRXUwWVBXQWxkdnFiL2tDRHBTOWVTNVVmbm1BcjZ0?=
 =?utf-8?B?YzZCK3FCOVFGMFJVamxHdmFBQTU0bWZ4TGJia0ZJTmltaWh4WjV0NXk3dVRi?=
 =?utf-8?B?K2RtSCtIa0xhdVRia1MxbVh4OFdIcVZtVllYS1pWeDZrVkFYSUR5Yk1TdjI5?=
 =?utf-8?B?RlQ0MEdEQVRzNkhoUjN6YmlaTWdIRUxocUZCa0R3KzlHV2loazIrTndIMHRF?=
 =?utf-8?B?RHFub0J1V1MxR2tZeU5HQmJ3dFBZVXE1MUlFSG9tUGZmRmp1cVRTS0lBZENr?=
 =?utf-8?B?a3UrMGdiZzZIbC9jZFRLNGhrL3dIdWUxUDVtdnI0MVdlYnpZVzlqRlhVQVU2?=
 =?utf-8?B?UktERE1ja2cwalNENGoxUlJSdzdtcVA5TWxRNnF6VDVObktwZ2xjT25VVys2?=
 =?utf-8?B?YTF5dFhWZHRhNnpkWlQvOWNvRkZxcDRnUFFrUEo4UDRaZk1NNk1lWlErckt0?=
 =?utf-8?B?RDQydHYwZDNmYko4QWZMeFZQZ1JOQ212QjR4b1hIVzU4R3BnQlFCL3JuWmU4?=
 =?utf-8?B?RzIzdHhGTE4xSTU0UjNuYWVHYkh5dDdISlZiRnVQNjd1OXBvVEFIT1N4a3lB?=
 =?utf-8?Q?qJ+dBUCBaL5k6Mng=3D?=
X-Exchange-RoutingPolicyChecked: UDJERZfdF1TT6moPvt+e886/r09RRDye73HQhsxaWChq+Yte9Y1UCdFRBZfCU9jEuOt4PxcqLhdLMINh7FKNClaVfo2XABQS+SOiGJCPMbdt3xjB8TOPb+bogAU2Q8GsLqwgu8ERMOovJanDHOvh6Px1/YGB1THg/Jj7cILDDczV5+cDph20xEbNUoBC25zxWiQAJx57dUhquLC+rbAGnkKxTITfLHyK78rA7RZNjw1N9UTuxvrxXk5dMxxRSspq3gq61Dpihgq4hYsK0XNydySPEwWXVlYQunFSkwwDvzRGT06bjaCCb+nOrXerBGxwOkWIAnZ/PmaVwT7tX5qowg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd66623-9007-43e1-4509-08de8506ffb8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 15:57:04.2659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ie6sPzdAZ9hSZwDP/9MZ56N9s1+1BoNSAQYi76cG8mMVEwSs/UuXAti857J7qq6YV9+trcdT2KgJj15MdDeRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773849434; x=1805385434;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CfzZoLm0VDY5vuJdF+EJu/FPGNzHzNxaQfLosVYicfY=;
 b=fpJcU4CavCqgdjP3J/MSiNHHLzUyp0rxRIIIt7zD1ZjDZU/hx5ztPnR8
 bbwmJdB12AkElqx/RP9pkeI3F3A+lxNmCdeNTJnMucQTpK6ZBiZH7Pbxq
 Vw9jxy/stF8uEHYux9/f/jKcGlKVPaZfZwykofGIW5IohQPUj/3l5h8db
 DLahuq7L8BRrTQJ0mgCOalm7BTfOvJB+8Qw26xZQQHs00gxKky/n163KV
 jWPZiNXV/n2HtVWxpMbWiRJPUQ4upQEpl8iFdW0MOj2B4EZrt+1HHXMiJ
 9gbhNw5s4KxWUYn9hLnC0/VG2YCKQW/iNN3U+galG/+e/bApadhuk4Jho
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fpJcU4Ca
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid,enjuk.jp:email]
X-Rspamd-Queue-Id: A0EDD2BEC91
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 17/03/2026 8:21, Kohei Enju wrote:
> igc_construct_skb() sets RX hardware timestamps, but igc_build_skb()
> does not. This has not been observable so far since igc currently does
> not enable the build_skb RX path.
> 
> Set RX hardware timestamps in igc_build_skb() as well so that both skb
> construction paths provide the same behavior.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index cad5a26cc84d..79192b02e6be 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1964,8 +1964,9 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
>   
>   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>   				     struct igc_rx_buffer *rx_buffer,
> -				     struct xdp_buff *xdp)
> +				     struct igc_xdp_buff *ctx)
>   {
> +	struct xdp_buff *xdp = &ctx->xdp;
>   	unsigned int size = xdp->data_end - xdp->data;
>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>   	unsigned int metasize = xdp->data - xdp->data_meta;
> @@ -1979,6 +1980,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>   	if (unlikely(!skb))
>   		return NULL;
>   
> +	if (ctx->rx_ts) {
> +		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
> +		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
> +	}
> +
>   	/* update pointers within the skb to store the data */
>   	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>   	__skb_put(skb, size);
> @@ -2681,7 +2687,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>   		} else if (skb)
>   			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>   		else if (ring_uses_build_skb(rx_ring))
> -			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
> +			skb = igc_build_skb(rx_ring, rx_buffer, &ctx);
>   		else
>   			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
>   
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
