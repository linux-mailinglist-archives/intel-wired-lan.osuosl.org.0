Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lCLcD5NqUWqhEQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 23:56:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 857D373F434
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 23:56:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bl6oncmF;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B62EC8115D;
	Fri, 10 Jul 2026 21:48:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ARNiM7ey4uv; Fri, 10 Jul 2026 21:48:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 158DB81154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783720099;
	bh=PqCAKOvnVZKzfkGWh4/R/tZ7wFnv7/cCDAta9JqOyW8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bl6oncmFd2OitA03NC4s/ZeGAJlv6KLncohi1jnfLpd60wHAH65jn42Vu2T4KFe8P
	 LIoc0Y69r4RBv0pAQwK2+CnvFrHFYtQinWjeGZvnw5Ow94IwYQgLNxHTwziYyotLvn
	 Fl3pVz6Bn7smoWz6QO+TTTRjmtNYpslNmYC6PzW+ACDroUcjm3vg60XKCr68U8pBGt
	 93qh09qLI8on/djcGKaSlJ9+yZNrpIwN+vN0reOiY5iz6b0/a04Mo34hxIOH5q1rXJ
	 vZioU7Rsiv/lJLqFjh9wKdEFFbloc4q7XECG1bCzPmq7Fp7pxRKhB4MioycgyGkjcu
	 8BPM1oY0m8/xQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 158DB81154;
	Fri, 10 Jul 2026 21:48:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7900C2EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 21:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5EB6E8114C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 21:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D1dJ4XJoJcPi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 21:48:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 216B781143
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 216B781143
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 216B781143
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 21:48:15 +0000 (UTC)
X-CSE-ConnectionGUID: 7v7LCvEsTnqx4CSBYv6SuA==
X-CSE-MsgGUID: /2B+WYpiT0mMt4kpvMWcWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84276933"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84276933"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 14:48:16 -0700
X-CSE-ConnectionGUID: SOSf8sWeT6SDFExT5Re6VA==
X-CSE-MsgGUID: enJY4dzYRYaHGb3XL38SUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="285087920"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 14:48:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 14:48:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 14:48:14 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 14:48:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=anKkXMv8Ht+1v18218GK4w+sSpenO2BrwkRqt6bH+6215mRCE/34qRstIoceN3qcN+tAq+zdTAW2Gx0qvAe7LMCQXi5B8QJ/V9L506PXR0/NoXOohmRRjC3pdTkdBwSIwWKFwQGY5+4xSjj74FlHhirvludn97wh1bs631s3XI2AIFI56MazUVx7JZHbqFXaAr7VB5bjoDJON7SDqzbPR9BnmZ4Y0z0KmE8ePYZRjcCj3TjKhK3OFNP9tUGLkRAJTpdm4VZaRhZ+DLGBXrjFZS/wIRk8AxDNdrT91OldQI2oRriuVKV8KGfLcummOaxWHspS98G8LAsWpmvO7Blihw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PqCAKOvnVZKzfkGWh4/R/tZ7wFnv7/cCDAta9JqOyW8=;
 b=xaSRelm4uNHtJ5CAUkh5PXLW1qk5F0flCU8HOfCiXrPYR2xU41EXcexeKxNBlXboWY3qvqhGznCyH3bCFi2bcOivRb5ZMuxgNN7Siky9ZGnuToNvfxpzJOjlZypSctEQ4yS3bvyRBWhkd5s1yv4eTgUETPvswH0QBS1rMzLdl/adg5eHsh0Xi5zsyEZbf9M6IkIV2hLOHeys5RXXlEz21LhUkYbXpDK5T6X1JGRs3qvuOhRrFLlkY+quEIZcVRzIo+mHBuusmLl8Cxq4nB4cGh6xMhP/2SZk7AZK703z6pNAKGSExV0SDcdOm5ifWouvoyYc8adh+TPVBOV/z+Iq/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by PH8PR11MB9697.namprd11.prod.outlook.com (2603:10b6:510:3a5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.17; Fri, 10 Jul
 2026 21:48:12 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%6]) with mapi id 15.21.0181.017; Fri, 10 Jul 2026
 21:48:12 +0000
Message-ID: <f2ba0aea-1d63-4dbf-8311-c9d74a752b62@intel.com>
Date: Fri, 10 Jul 2026 14:48:11 -0700
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20260706-jk-fix-missing-xa-destroy-v2-1-b83b0f02beef@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260706-jk-fix-missing-xa-destroy-v2-1-b83b0f02beef@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:303:8e::29) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|PH8PR11MB9697:EE_
X-MS-Office365-Filtering-Correlation-Id: bf030c1b-2bce-4aa0-119c-08dedeccf093
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|3023799007|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: yagU7nL9Vpi+zLZHJUahKya+wOBcpqoIqJDM55CTZnNmDg2LNgAwRllV2J3z/a/s/FyH8a2v2oG3iYECOIugwMIl1nLvX1yrAHAs6iqrzWJSAsRVtYgsEnWhuTglbYxq07AlI8iMHr8Mc75SiU41MvVW746x+Rn1fs2uH8tbov5ZXEBrG1qE6BosftiHn4NxTYJrv1x2Pq7KO684Kazk6PrKgsmRJyf/aPnVKNNZPOWiAyLB4QIY7AGbpkokqGzs4ajCQ40iEJ2YdFjKk7HfT65fZRKePSBqIVcagNlYSjuLhpi/za0Gcqq8JGB69q8hJzX4ujhzK6QttsnHf94sR+2dH1jCGalB2201R9ZOat+pNj2BUBZ5tkw1uH1z8Vl5DimF5Oz7CEx3yF2EnM1prVPDvQ8p1ixgyiHPB4CmIowjhLJOZj47g0upj6QLu9NdYZTLp3lnOx1qKK31peapsOBVfdiPQ/Ypic/jhBzg2xkUBS/kYxlX0o8yHU2Yd4ThhqaH6dmiC4cq6wFRgV58I+dDG9Z52msgL44KDPNg29+wmfiLzATM4bvABKqnFYS7gL7gi7UDJ4xmsexgQrgRge518ddt29dtw1ZE1/b5mi9fxEG5BydiZRdPYCPbcfR0CXitGu3Xyqot6PPYQiPMoIFwPRWmI5TwhFCuJdn27sI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(3023799007)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmNqZEtDY28yeTVaOHY3ZlBjdHVDU0UwMjNkdkZJVTBtVkM0NVVjRWxIdnRW?=
 =?utf-8?B?cmNVcDMxd1E1LzFIWXd2ckkvb1V4TzJ4WU1PV3FLeG8zTElwV1RzT0NLaWtr?=
 =?utf-8?B?NTBBRU1SODh5a052YnBRZ3JEWUtBLzVPa29VRVJ5K0owMVhXb09WZndCMDVH?=
 =?utf-8?B?QlJ2akZMK1gvQ0hmdkNCblJGMlVvcFMwcE5IVUg1enUxaXdTaitBY1JCSlZE?=
 =?utf-8?B?VUZvNlRpL1hONEFxRDg4TDJUbGxNZjVHWWdyU1hPTXo0TFIwZmN3NEFzazkr?=
 =?utf-8?B?a3ppQmlKS0U2VFJMREUrYkRsTlBJWkpCNXZHaHhZU0pUc3hGb2MrOWhLK2RW?=
 =?utf-8?B?OExtMmdvZE1MTTAvWFlzSWZsMVRvbzB4SXdPQkNQWGNXMUNIellMWWRSZDFy?=
 =?utf-8?B?MjVabmVLTzJmNnpYcnA5dkErRXhwQklVWnVMTk0rZFNmN2pvcC9wS2VNVzFR?=
 =?utf-8?B?cGRIemdZUDQxZU93c2w0M3I0d1kwRytYdzllTWpDOENmcHl0QXZBU0dGTUlw?=
 =?utf-8?B?MjJpRmRwWjUrZlAyaklpOUE1TFpRMkI2ejQ4eU5pNThRR2FIRWp4OVYvTzU0?=
 =?utf-8?B?L0NXRW9Kc1l1Zm5wQ0xFS2VzckRhcno2Q0RHc2NBbTZTbVc4NkpZSVdnNjZl?=
 =?utf-8?B?L0xReXJsSGorYUZWOG1UWUwzMzdiRDFUSDI2OStLYUpFNEZxeDJRNW5EbDln?=
 =?utf-8?B?T1ZEalVCNlBIVm9aTkJ0YlZxYmNLQ1BzZ0dZcDExTGtRcFBYV0ZuRlJ1VHFP?=
 =?utf-8?B?Zi9pZEdyMXIycW9seGhZTzRoTHVSZjUza1dRM2ZaYUJHY1JHMGFMNzQ0V3lp?=
 =?utf-8?B?b2xjUk1mNklCR0JkYklhSVhmcUNuM1gwNHNQRVBoSDVFZDNQWjRTR3R3ZnZ2?=
 =?utf-8?B?N09CQytDeUE5Qzd1VksyTk5ieTNjbGZFdVVRTlQ2VXJCczZPUUY5b2tOb3Qr?=
 =?utf-8?B?Nitrd0x2ZnlEeGxKdGFnTm1Qa0Z1MGx5M1YxN0xlejM1NGNDalRTQ2YrR2xG?=
 =?utf-8?B?dVNsWFNuclNHL3QrUStiQzBJYWJGaXVocXVBZFVwNmlRVjg3ZzVEVHNvUGpw?=
 =?utf-8?B?dmw5SENuNUNDUEIzYmRZYnV6QmV0eGt1NFEydnlmN1MveFROMWhUVUxOVWND?=
 =?utf-8?B?ejhVTldCTHdyMnZUVkFJejYzc2NOTXo0N25FU0hHcGd2M3VPdHlDMnFROHh1?=
 =?utf-8?B?UTJMb3d1WXBjTmljL1pXQTdSY0ladkVyRVZHUWpGRUNkdnk0cVB3NEM2R2c0?=
 =?utf-8?B?emtyTjViUXB6SFRrcExVSTI2UmJpNk0xemhqdUlUK3g0MVovSjlmVW1iOWxG?=
 =?utf-8?B?WGdOME8zMWJmYlk5UENvWG9zRGJyN3FGZC9FSW1vYUdQMUJNbXM1L0pvUHpB?=
 =?utf-8?B?Mk5QS3NZR0tibUZLamxqQkRXUWF2MG1lbk1pL1doOTUrVU9QeGE3dDdyTjFJ?=
 =?utf-8?B?RWZqNzBwSlo4T2t5YjVrZXpLVXFsVjNyUCtJSDJaOTVmQkdGblZDcEM1eTJx?=
 =?utf-8?B?NVMraTMwb2FuaXNNckhQZGZaN2RuWmRXdlFIbVR0azliL3FxRUpoblg3S1l0?=
 =?utf-8?B?ODVaSFI4djFNcXVCSXRlUGdLN3JMT3dSWU94b1pjQU5rb2xBK0VyV2RvTHRM?=
 =?utf-8?B?eXlscG0rTEg2YkpiNkxzMFVDQ3hITG9VWHpCRnFqdnVFQUd5RmZBRzBCZEZj?=
 =?utf-8?B?QzAzQnhOdTZVSzVUSlVlVFlnU3N4WGZBYS9NcW5FcGlMcmlsRGlkZEhMSVpT?=
 =?utf-8?B?UjhVTTJzR1oyYlY2OFh3NXNncEZQWGQ0SUpsbUx5WC8rWkk2MVJUWVAwUEto?=
 =?utf-8?B?QzQ1SWlWTXVHZ1QyR09FaUlpblBuWkZPb1lRU2J5aG5QU3J3dVBvVDdKTEto?=
 =?utf-8?B?TlRkTGRtREVvSzdpdWxPWTlzK0xXdjVRTTUvMGk3dWtsVnJZOVlKTG0ra29x?=
 =?utf-8?B?ck5CRW5oSW82QUYyemlXODBJVEppTXJlRm9LUFpGa0kxUFZOSUZZMkVZYW14?=
 =?utf-8?B?ZGpBWXpvbXdacnRlMHB0cnl1TE9DTDlwdXFmdzFYeWNxcm9wSHYxUTZvaHhH?=
 =?utf-8?B?akpzei9vMWhlejc2eGdYSEF5MW10R2tFVmpxU1NQWUduWkZjWnJBR0RtYlBK?=
 =?utf-8?B?bHVmaXYwUHRnM3RaV0Q0djhDbkp2Q3R2QTRuRmUzYjFNUUs3cEZZZGpFZklC?=
 =?utf-8?B?N29vZ2FRbkd0RGlZQ21XM3lBaWhaNmF1eHpDc0tMN1MrQkpXdFpqU3NEc2Qz?=
 =?utf-8?B?Yk9jbWFTNUF6YkpwOXkyTFI3b1NZKzQrR1lvZWhCeWpnSHZxRWptZzFqRVZ0?=
 =?utf-8?B?MzkzcHE3eituNmdIMlNySTAwVmg1Ti9qQWcyb21aRjQyQVNhSFdHZz09?=
X-Exchange-RoutingPolicyChecked: by0YkeePFX1gXAc1EEcZHPcjrfVIVza7yEmA3RMjMje4yUIeflkSezCGdSBPiupbe4EhY2OfsMhcB4ApwkaQUW23yIdh78YGk/BVvKB16BgPEoTFT0fUxRCOAIrtpSbzJSx9SZY/d++wDwUvmBOqG7UDYnh13fM4ljnw66Bc6doT1C0DoxOATxMaFIAQ5mPR6yTqMNO6TnSLL100aijPXgSY3wb+e8ing3H4dfbXcT3d++7dQd+SxU95fMmDG5QGwIJ6knQPYHqwuoGKiAMMqkl9BqLxKHHhPJD6EkbytEnjYiNUwxYOgUcxl/Mmh89nZ88pj4wYO5sVpZMb24Nwaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf030c1b-2bce-4aa0-119c-08dedeccf093
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2026 21:48:12.6224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzfa9YPPALvAC94VhUI6a1+EtRy34QSn1Ju9Zze2nXZ7xcYBfzLJNHxm6Xa99WlbyOu/QBklcW9dC1NkX8KHhc7Nmmbxx5qdmxOi+aH4+zM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783720097; x=1815256097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WvcfhPeFKQY/n2iGL5iAAZ0IN+xx9s+2TZWdzQcGn+g=;
 b=jkjSHnBEZWOeD4+JomJlgw20u2hzcPgXHFbECR/UfH2eE5947zB3gXE3
 GQVy9l1tdWYRWnF/9q1dKXygVqoX2ysXTWoQENtHqPGVCCz1S96j5C2yi
 GAONh7r4ZkibQg8i+H1JgY75RE0AEqVmpExroOwc8tH7pvl04YVTNtJBw
 7KQLkUDeZfAHurh7be6swJEVkquBToKlON25g6wJZkynaXk2xiMEANx7H
 p6r7w4u6/BH3UhcuerLKIRO1pBxkRlJHRBz9MUdq9i3dQ0Gk386Pe1uI0
 ZpKppfmMn2n0FRS+PKZBAlmhD3KpBvad4aX7J9S8JSp5W28+qnu4DZWy7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jkjSHnBE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: add missing
 xa_destroy for sched_node_ids
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:from_smtp,osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,body];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 857D373F434
X-Spam: Yes

On 7/6/2026 4:31 PM, Jacob Keller wrote:
> Commit 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
> added a sched_node_ids xarray to the port info structure, but never called
> xa_destroy on it.
> 
> Since xarrays can allocate internal memory, this can result in a memory
> leak even if every element in the xarray has been removed.
> 
> The xarray is currently embedded in the port_info structure. This appears
> to have been done because its use is within functions that take the
> port_info as a primary argument.
> 
> However, this complicates managing the lifecycle of the field. The
> port_info structure is allocated in ice_init_hw() using devm, and it is
> not released until the devm cleanup when the driver is unloaded.
> 
> The ice_init_hw() function is called in many places, including devlink
> reload, and possibly during DDP load after updating the Tx scheduler
> layout.
> 
> Adding a call of xa_destroy to the ice_deinit_hw() causes Sashiko to raise
> multiple concerns due to potential ordering issues and possible ways that
> port_info could be a dangling reference.
> 
> To handle this, move the sched_node_ids out of port_info and into the hw
> structure. All users of the array already have a pointer to hw anyways, and
> there is only one sched_node_ids per adapter. While here, remove the overly
> verbose comment explaining the nature of the sched_node_ids xarray.
> 
> Add the missing xa_destroy to the cleanup path and to ice_deinit_hw(),
> ensuring that we properly release the xarray memory.
> 
> This was caught by Sashiko during development of unrelated code.
> 
> Fixes: 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

--8<--

> index ef1ce106f81b..04633103e3e6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1146,6 +1145,8 @@ int ice_init_hw(struct ice_hw *hw)
>  	ice_cleanup_fltr_mgmt_struct(hw);
>  err_unroll_sched:
>  	ice_sched_cleanup_all(hw);
> +err_unroll_xarray:
> +	xa_destroy(&hw->sched_node_ids);
>  err_unroll_alloc:
>  	devm_kfree(ice_hw_to_dev(hw), hw->port_info);

Sashiko says:
> This is a pre-existing issue, but does this error unroll path leave a dangling
> pointer?
> In ice_init_hw(), when hw->port_info is explicitly freed here, the pointer is
> not set to NULL.
> If devlink reload retry is triggered and ice_init_hw() is called again,
> it will see a non-NULL hw->port_info and skip the allocation:
> 	if (!hw->port_info)
> 		hw->port_info = devm_kzalloc(ice_hw_to_dev(hw),
> 					     sizeof(*hw->port_info),
> 					     GFP_KERNEL);
> Additionally, during teardown in ice_deinit_hw(), the dangling hw->port_info
> is unconditionally dereferenced in ice_sched_cleanup_all() ->
> ice_sched_clear_port(hw->port_info), potentially leading to a use-after-free.
> Would it be safer to set hw->port_info to NULL immediately after freeing it?

This issue is clearly pre-existing. I think it only affects devlink
reload, because ice_probe() exits immediately if ice_init_hw() fails. I
will create and submit a separate fix for this, and do not believe it
should hold up the existing fix.

> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index fff0c1afdb41..ffa18d86729a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -977,7 +977,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
>  		if (!new_node->name)
>  			return -ENOMEM;
>  
> -		status = xa_alloc(&pi->sched_node_ids, &new_node->id, NULL, XA_LIMIT(0, UINT_MAX),
> +		status = xa_alloc(&hw->sched_node_ids, &new_node->id, NULL, XA_LIMIT(0, UINT_MAX),
>  				  GFP_KERNEL);
>  		if (status) {
>  			ice_debug(hw, ICE_DBG_SCHED, "xa_alloc failed for sched node status =%d\n",

Sashiko says:
> 
> This isn't a bug introduced by this patch, but does this allocation failure
> leave a partially initialized node in the software tree?
> In ice_sched_add_elems(), if kzalloc() for new_node->name or xa_alloc()
> fails, the function returns -ENOMEM or breaks the loop without removing
> new_node from the parent's children array. 
> Because new_node->id remains zero-initialized, subsequent teardown via
> ice_free_sched_node() calls xa_erase() on ID 0:
> 	xa_erase(&hw->sched_node_ids, node->id);
> Could this erroneously erase ID 0 from the xarray, corrupting the ID
> allocator and potentially causing ID collisions for active scheduler nodes?


This is also a pre-existing issue with the sched_node_ids, and likely
requires us to do some sort of cleanup. This should also be resolved as
a separate fix and not hold up this fix.

I plan to finish investigating and submit fixes for both of these issues
as a follow-up.

Thanks,
Jake
