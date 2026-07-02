Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O0RsNwpsRmrXUAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 15:47:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB46E6F87E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 15:47:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7tZqNY2y;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C93158222F;
	Thu,  2 Jul 2026 13:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aF3cN6TX5z63; Thu,  2 Jul 2026 13:47:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A42082234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783000071;
	bh=9/qHWpWmfcTfG6gWtAz/XFBV8BuRe6ve3cDaRCX/K/M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7tZqNY2yNGDzd+z3HZJfvvGT5t/H4JQ8gzeXYI6g8DURm4dHjE1l2YHFyNXuSNFWo
	 FMXohihx42XeNUdKzlrDBcrmTWtsPNRJIXalnHPRCmSVApa7hvbwR1Wzyv3L+lz5/1
	 CqetIdrvIkp3n4N4dGvdsPYRHe71VPKQcPmzo8lKRwWDryI/f6uZd2v/shNF5lHKaS
	 +XnNl5G8BB6d+vJFozhU9m5YHsGFmlcbnPmyGZcopSOEqpi/I4jblzU2oqbYdCUgUO
	 iQ3wRTUXUKMywoeUGHKfBGmVB5tVpIxfVzrCTlADTrKXmdvrfH/8umC54gJzB18J1I
	 34h3ngnPh9YVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A42082234;
	Thu,  2 Jul 2026 13:47:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 727BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 13:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63C04820DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 13:47:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E9YJnQpoB7le for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 13:47:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 828E1820B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 828E1820B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 828E1820B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 13:47:48 +0000 (UTC)
X-CSE-ConnectionGUID: jlsVxAX8R7KAfRfHekJEzQ==
X-CSE-MsgGUID: 5V8J9BvoRquoqPLokarSyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="94111240"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94111240"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:47:24 -0700
X-CSE-ConnectionGUID: UAIRDfiKS8iLVk9NKtSPEw==
X-CSE-MsgGUID: fmQGt7FNRy6fK8Q8UhOwqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251807918"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:47:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 06:47:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 06:47:23 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 06:47:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gLVl3gH2f8pCcYoFjHJiDkP6TrMUMmfp48HinQfJgrNvJ03UF/TM/N/G9TLoPJEjFj/CElQNaM47oQehjbXtSaxTdLNyQT5FOzztQIEeqJu13QjpxrfbJsc7ZNYoLdQ7KdKz5RMKC9mB0+jgCwpvRmhmYChGnzJAkQJM2ZfvaDw1EwQs9JoiNtVKYUB0wTxxdFkfmaID0l+zoByq8c3HdvF+XR/WAtcfm2d1tHL53R+2pEVMdneDO1gnAXNk2juP3LMa4UwE0mQQB4hB5EmRsuiS2BoH23YuJxKkKJ2seEj+WAWK/krTXyMIdR2I5O5QXBPDbVgAgC+cb8yAwd6jkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/qHWpWmfcTfG6gWtAz/XFBV8BuRe6ve3cDaRCX/K/M=;
 b=lc+CPuinYTHDZSXL3EdxHFypkL8qQcqN4Pr3hoRJCUA78antdzghgVai/sEMxpMM6elFDU2uDDY06E09nXf7hZnTa1081SXDEFdJ0Gz87PeuR+B9jdcogNcOjbNnEcLlXfS0cztVqDUN1hMMd3rW5jzzDG4jiFmXgYvUjLb6Yr6tBRe06yL4GsQp/7oZ+Fx76YJbHNwwHXL0uk/5zOD7DA8/k6TAF3GtzadYXqOMBB1Z+3y1ieyObQx2VC1yHv7dCzmVGSrpgSzAF/g0a2HAS4uPewLwaAXZv9wAZELvYBtlAlyh1Oc7LB//mpCjeSzyqTZ5C13sWRmUqerNYvMysQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by MW4PR11MB6862.namprd11.prod.outlook.com (2603:10b6:303:220::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 13:47:18 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 13:47:18 +0000
Message-ID: <d2c75404-a87f-4bb6-b17c-c921d08a1f15@intel.com>
Date: Thu, 2 Jul 2026 15:49:36 +0200
User-Agent: Mozilla Thunderbird
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Manish
 Chopra" <manishc@marvell.com>, Paolo Abeni <pabeni@redhat.com>
CC: Edward Cree <ecree.xilinx@gmail.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-net-drivers@amd.com>, <netdev@vger.kernel.org>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
 <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2PEPF000008AA.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d8::659) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|MW4PR11MB6862:EE_
X-MS-Office365-Filtering-Correlation-Id: c09bbd31-de0e-466f-ae67-08ded8406ed8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|23010399003|56012099006|4143699003|11063799006|5023799004|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: mZswNAF5JuHpf/0EI+NVtqWBVNNb6+IKpBl75KqdCTTF3DtO1gMhj2qbcoyORpFbYGguLv5vveutgY65k/uuN9XCtKoGsjYZGdVMXhEo4UwtW7UiwILauE3ek3HrjYTvGSEEbqoK9x+xQ72jrvF6lMmNnK600+nTvvK4Ju0dEeHtOMcVOEz222MUDTwFlVXysrqpmHwvzbl8O9veK3GB2XfE3YxZHboC0+eWGYRqCEZvatDUU8KLKhU3YyI2EZoXnjzIS3ACzvR4XC9bmGLnA+xbVDwimv0rSBxIi7MzzBTnm4RHnR5dr7XFp09nBhzdb6nOoII2V/gYU+IvWIw+PbO2B991yTBxO9DpZiV2dID7tohpIaROaSlNdzSQBKuZ4+56XJgj3k2WiNaVHjQwv/alDxFxakW7ON4XsvjRK6z9/4Layd/i3yV9jR3EEemdr4CDJFtHX6dAIQlshF6VKFpJrmzwRQCEaLwHiCTCpCLnv4uu0nT26AZLDRsP8rQxsxKDbvUKv/mWqAM7wiN3mx57RJYgt0LzlpERUIxlrbY/uaJxkAtTCN8luJg4Yd2Hly8bUMcZCeR/cLZ8caJsE6mZyuupecpAiFyL+Uf43PA38AzZnXJ3GYBSBgV+XA/l7nKKYDfpryxwXJo6SvieTyHrQwtZkQ0KZC2vfrakkGs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(23010399003)(56012099006)(4143699003)(11063799006)(5023799004)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDRTdStnenJ3b0dyNnQzbjc3b1VkeTc4T2IwL1I0aVNlTm85TENVYU91Tmp4?=
 =?utf-8?B?eUZITnc2cW9zWXlLLzE4T3h6TVVEamMrek9tWDRQR0NtSlh4cU5VZ2NnMGw5?=
 =?utf-8?B?b0dZelV3dXdqVldPQWI4R1hoWS9wd0FRT3lCcUE2MmRqTzJ0NVk4ZUUxQWdK?=
 =?utf-8?B?L0pTcVJlWG9JMXc2SFdINHplNklmRXJPb3ljNmxnZ2YyNWxVcllJNzNFYmQv?=
 =?utf-8?B?QkVod2x0bThaeGxVWXlOamM5TWEzbzM3NDdwWmRSTmRhVWcvQkNJcnlDRVl0?=
 =?utf-8?B?Slp3TWp6UFpnZFMwcE1zS050VkpyWlc4MGFzd3hWdy9IN1ZxZHpMZ0NwcWFr?=
 =?utf-8?B?azdramtkRG05TUhhNm1TRjlQQ1FkQjRwSzI1dVNyVkUvdmdBbmFrZzhzZEhh?=
 =?utf-8?B?UTdWalltUU9ZbzNoVmh2QjZrbzF5VlMrOW0wV1o5WkJGK1NqUlhnNW5FSzFo?=
 =?utf-8?B?MTlTN3dMeklKclE2NmtvM0MyMVZhU3E3cW5qWDZGU1dzR1gyUUxNSnZ1V1pY?=
 =?utf-8?B?S3ZycHBWT2lVdDlJUXJ0NDN1VTZuWjFXTWpTUjl0Y2Zva1lOSjMwY2FlTVFQ?=
 =?utf-8?B?ZmRKRFFXMlIxMFIyR0xZeWN4SUJaZ0ZmUG9xaVozeXRPdUlYTTMvYnRDczlp?=
 =?utf-8?B?bWx6SFJKcE9MK3pOTkwySlhFWllmNXZma0RrSkZjWTlNMnEzcytvLzh0SFRn?=
 =?utf-8?B?MndQT3p1SE1lM1grZkZ4b0xUKzdyQUExMjhrSnlkd2w0K2FYYXIwbXZ0R2RW?=
 =?utf-8?B?a1lGcmpSZ2Vsc3lGUFhhalkvOERMeFQ1OG1OSHNzSzBqTU5GN2cvWWtVeXRK?=
 =?utf-8?B?SGNkc3BSVE4yOFk4Vmt6RzREeEU0U1lTUDJpM29lUHAzaDlERkpSbGdvWVdp?=
 =?utf-8?B?S0FWaThUcTVwNjVYOFhzWTFMNzE5MW16Y2JYRitvUlBiaTAyNkFrdVF4QXdz?=
 =?utf-8?B?ZkJDQ0ZhUmFMUlBrMy9aUjErcG1QNG8wVHV2dGdXMXltazA2dUxUbDVLcjJ1?=
 =?utf-8?B?OXNuWGpJMlBiY3NpTnZzdDlwbnNFVCtrWUtxY25mdDJTcXZidVphejN2VTB1?=
 =?utf-8?B?UzNwUjA1NnNhRzcwSGkwM2xGbUVlemJRdnlRSk1YMVJ1UTM2Y0tKTWNLUXFX?=
 =?utf-8?B?K0JibjlwbGQvR3JpQWdtYlJsSlZNM1BEcDJmZmdNdStkUTJTdm9jb3RiWlRv?=
 =?utf-8?B?NzNpbXdHbUJuelBOSlA4NStCVmFYVFd3emthME91MkJzNC84K2o0M2NlYjFT?=
 =?utf-8?B?L2tSbW5DbjZVQ1dNTUEvNUhKRmVvTktlNHdUTEdvMkVmUTZScGxjZlVHaVhu?=
 =?utf-8?B?VW54YUVTaXRHZnIyWlJVdHZ0NGxqOFUxSmh0Qk1GUFlHQ2ZuZXg3d0FGa0dT?=
 =?utf-8?B?WTJWeHcwZTBEdUZkUUNTbTRBc1Y5U1Rxd01NZ1MzVU1oZGVmNmJMdk5keXB6?=
 =?utf-8?B?SXhBZ0hybzVLVFUrYW40M0ZOTm9xV3BuRmdxTUF3R0lHZ1QvT0ZVdVY1VzdO?=
 =?utf-8?B?VEcrWnZkeWhxMUwwN0tJRGU0ZTdRUGt5aktvbGJrWmQ1LzA1cDUvYUMvUzQv?=
 =?utf-8?B?eUJnZUUvMk5HOVpQeGFwbTB0NWJvdmVrQ1N0NVpzVXhSSk1wUHVHQnhLRmtQ?=
 =?utf-8?B?cEZvVW5qMGMzMWprcmQzYTc5UDVkSUo4UHFNcmVRYk1xRUFoL1RkLytPYm5p?=
 =?utf-8?B?Z2VKVW5qQmNiOXZHczJrbUZUaVd6RjFxRnB1UUZKeEpOSStsR2l0d1ZnSkp3?=
 =?utf-8?B?ZjJPZDNIaXpFUUZ0ZXhEVmhWUE50TTRUOU1Ob3pDMHdPK2czQ3RFWC9lcUtu?=
 =?utf-8?B?dlNxRlhoSkZ1YmxRTmZWZVJCNEprNWZTZTcvT3VoOVFFMmhNY2xHdXFPaW0y?=
 =?utf-8?B?UUlHdFJFUTQzTktMbDRudlBHa0RYTmJJdC8zN1d6TW1DS0FiUE9Nd2w2WTJ5?=
 =?utf-8?B?d2NlRWNmVUk3MGJYaEQ3N0tVNWp6RXljMEMwcW1GYmVENTdXTi90K0pMZFk3?=
 =?utf-8?B?Zm90V0puRyt0d0tsUGVQK05hRmtKMWhqbC9IT1o1YTg0ZHVIanBCMEFTNHdQ?=
 =?utf-8?B?UUsyUkpVRUh5Vjl4RUlmSnoySE55TE9lNXZTNUtmSXJWRmg0WFRkUEhvNU1V?=
 =?utf-8?B?Vzd3Z0pnQm1QOVpxaEFBd2NWbjNuK3pVamJvRXNwcXBES1d3a0NESkc4UGJZ?=
 =?utf-8?B?dkh5SWdyMEU2SWthMloyOHM3SEE1YzJGM3JYZGRseUFoZ1N1c0cwRmVqTnV0?=
 =?utf-8?B?Z2NFcHNjQnNHTFhLUE9FUmNhaHlqT3ZtZjBqMVFpUzlTM0dQUjB3di85QUxx?=
 =?utf-8?B?dmUwWk5waGp6Q1RHdlNuNlFEUG4wWTJEVVJOY3BuOGtDWDloc1lreXRHaWRP?=
 =?utf-8?Q?0QjktrQAtxwdyPz0=3D?=
X-Exchange-RoutingPolicyChecked: g+HcOcfdk62kS6z89P87ZtLO3+jiv5SAXYl8byTGqxRyFx9K9cjAWfeK54Ay1glUGi6pGEehJPmG9taJ5/JvOanuQ6wwPqLYbSmQ02wt2OTZExDFBgvxrqZryNAcIBc+9t+ia/Zh3qN6c6NYt9WWIqgaatEJpNMadc8tgVBmI/nH4Ndkp61IRzEw/qn1pfKFWbhR1V7Lzf1K4Ermsuvif3o3drJ1yZQd/xv6FpE13ukt2cOVwtz7pGXxTtrpU86RNrdCmuhB2fUjQMK/2LMaycr3o/xORKAvpx7P7taJ+FhhPbPtL/MenAF0GBfGm5jUaFTXryEHwShdhx06n4OH5Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: c09bbd31-de0e-466f-ae67-08ded8406ed8
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 13:47:18.4674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ypbAiC3Q3xYZyW9SizqUqLhkmJahIBrs+/+8hnDtnjOgJNKYxSQFkorbCzl4IpEc9PHjWkOfpC3cWozPLr2jieYc5Kte3d8zbia7408KNhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6862
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783000069; x=1814536069;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mg+6wIIx5ps5azPc5xuCN1bnYLJy2Q+Vm6ZCAtbWqB4=;
 b=A6i9WiqX4TkCtMm2yX6cnI7+OK3M4TK2dpoWoaCR9RSIxFnNlpN/lYuF
 cJ6fUr/pI5z/KcmFx+6zZpuYjGAxPN4Pdf33EqOq3GDjupEUoKDQdbete
 7Kgn5R4yq5jnkPp0V+cCWF3n8f/SiDLGhERLJ2J4f4aqHbnDsyd7Ew+4P
 MbvkCc54Bd7QyWwFRf442mZfRxVmXr9C99/k2C1FabyGb7Q+d9QzjGWbR
 QDBeCvLqy8f7N5E3PovLQi9hv68PraRMRngXcqWlAQaSogoYRE8SyqD8x
 lnVNq9O4UT8MPgiNNrQpx9AG+P9rgUzkvGmcATvA6Am5QzgvOJMAFCLsk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A6i9WiqX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/4] ice: use kzalloc() to allocate
 staging buffer for reading from GNSS
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,marvell.com,intel.com,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB46E6F87E6

On 7/1/26 15:57, Mike Rapoport (Microsoft) wrote:
> ice_gnss_read() uses get_zeroed_page() to  allocate a staging buffer for
> reading GNSS module data via I2C bus.
> 
> This buffer can be allocated with kmalloc() as there's nothing special
> about it to go directly to the page allocator.
> 
> kmalloc() provides a better API that does not require ugly casts and
> kfree() does not need to know the size of the freed object.
> 
> Performance difference between kmalloc() and __get_free_pages() is not
> measurable as both allocators take an object/page from a per-CPU list for
> fast path allocations.
> 
> For the slow path the performance is anyway determined by the amount of
> reclaim involved rather than by what allocator is used.
> 
> Replace use of get_zeroed_page() with kzalloc() and free_page() with
> kfree().
> 
> Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> ---
>   drivers/net/ethernet/intel/ice/ice_gnss.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index 8fd954f1ebd6..7d21c3417b0b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -2,6 +2,7 @@
>   /* Copyright (C) 2021-2022, Intel Corporation. */
>   
>   #include "ice.h"
> +#include <linux/slab.h>
>   #include "ice_lib.h"
>   
>   /**
> @@ -124,7 +125,7 @@ static void ice_gnss_read(struct kthread_work *work)
>   
>   	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
>   
> -	buf = (char *)get_zeroed_page(GFP_KERNEL);
> +	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);

nit:
from the code it is clear that we read at most a page, and @data_len
stores the actual amount needed

comment:
I don't know why we limit to a page, it's outside of the scope of this
series, but likely you have removed the limit (which will go into the
loop - single AQ call is likely limited by a PAGE too).

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

>   	if (!buf) {
>   		err = -ENOMEM;
>   		goto requeue;
> @@ -151,7 +152,7 @@ static void ice_gnss_read(struct kthread_work *work)
>   			 count, i);
>   	delay = ICE_GNSS_TIMER_DELAY_TIME;
>   free_buf:
> -	free_page((unsigned long)buf);
> +	kfree(buf);
>   requeue:
>   	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
>   	if (err)
> 

