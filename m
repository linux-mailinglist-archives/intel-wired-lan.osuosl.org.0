Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nne6KBYtNGqnQgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 19:38:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 662D16A1F85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 19:38:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=CINTHJWV;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DFAB80E91;
	Thu, 18 Jun 2026 17:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQm2jYZTTgeG; Thu, 18 Jun 2026 17:38:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51AF580EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781804306;
	bh=kHKvEpKBK8iUwMVhup+p7AxKipmED+gLYTZSf9tBngc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CINTHJWVflo/RjvEZXeRtakUYZc2O5M7JqDThSJ7Izx3W3ZM2hN6yWK/PlqVvYh3b
	 9TaL6G4h621YwQm0gSzelG3LOsY+yvnt36AlEWVuSWGacc41uY13PCGko2FAcZSOkE
	 mIF+Xj5BDIIfcqzgJBd6eb4Dtcmc/gP/JzhRetclDKhLZ12Uk8Q3r2a/QFHJPHQKNx
	 vfWUehpirxEbmGOKOSwzQI+mtnbO7TnwWVPV6Negc/dGO18REpGehpzddpOd3QY++x
	 ShwFM3pUx5LsaGzR4Jgrynv/TKV25mmgSgdOboC0ue5nL6TEfNV2EWrn1sVZYw+Y1a
	 rxtq9FN2p95pA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51AF580EC4;
	Thu, 18 Jun 2026 17:38:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 773C7358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 17:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CBCA80D88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 17:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BgDwujFC1fD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 17:38:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C45FE808D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C45FE808D3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C45FE808D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 17:38:23 +0000 (UTC)
X-CSE-ConnectionGUID: Q/Fd8xqLSbCNuol5GheOUA==
X-CSE-MsgGUID: LsvsNwtBSammFjGGbuZ3Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="86330153"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="86330153"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 10:38:22 -0700
X-CSE-ConnectionGUID: I4yPpTtWTemdsKnmqsCrNw==
X-CSE-MsgGUID: MJYsuyiXRQmn3P/F1+SCww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="245501030"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 10:38:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 10:38:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 10:38:21 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.71)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 10:38:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kECY9OTYMfDaGeBGL8hDa9joVGHiEm7nz5GYkOgUt+TAg3vgHk6fNT6bybzaZAfDTTRyTHQ3YSyQ6Da3fWw3fbYs3pKc0mi8Ct0satSS/NK5z49cPD/P342vYD6DESau0ZWC//OPvC4fh0sXz3JlPtYu4HsPG2Vup7Hw9D6BacQqAUwqiaPrO6Yhxxp5Y7tsIA4eYTxL23iIWs4uXWENPdrBfkZblLgS8yG/61hvAsuNw2jkYp8q9R85y3Gm3wl7mrwlHlMp6WC8VK0sQIFm2syoY04bPbKSZ3almNu6Uy7ZLcIm/6vJ8W644RQlQuXHLxhUT5oicvysiTQWJKu/VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHKvEpKBK8iUwMVhup+p7AxKipmED+gLYTZSf9tBngc=;
 b=emz3CE930zCZZPKdINe2i0uyhj8cV9tsfozlw20mnb559YMqXRWMEPre3dk4hIJ54VXnqH33q3EGUe8SKOhLp8DX9sXpIqgccNQDG/onLMlt4QNWoqy7Rf1EIXrAX3N26TDHavfO5JBsGLlmsYodhZWN2YkMtgIMFcWz9OxEa14qpCMPdr7ZQx++pKDUQCV5H6N3aph4UEmcC7L+dExKmBG/PXgEKqQ7HBDQQ8iZJuX2o6/Bkuq8Grm/27JIPPZFJvZHe4rvOzmUqSYINOhNii/5Y4w/IbxSxC/+t1IKUqJPO94jYILHLc3a+baxb7Z7qM+a5G6E8Stt6DVkxmPTQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB8249.namprd11.prod.outlook.com (2603:10b6:510:1a7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 17:38:18 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%3]) with mapi id 15.21.0139.009; Thu, 18 Jun 2026
 17:38:18 +0000
Message-ID: <55ab9b13-ee51-4ac6-af7b-b3feb159eb51@intel.com>
Date: Thu, 18 Jun 2026 10:38:15 -0700
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Tjerk Kusters <tkusters@aweta.nl>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "hawk@kernel.org"
 <hawk@kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <PAWPR05MB1069106D52F4E17F1EDB99C67B9182@PAWPR05MB10691.eurprd05.prod.outlook.com>
 <8733yojljf.fsf@jax.kurt.home>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <8733yojljf.fsf@jax.kurt.home>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:303:b5::9) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB8249:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eb7dd23-8c74-44f2-30f3-08decd60620a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|7416014|376014|366016|6133799003|4143699003|11063799006|5023799004|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: XvYs/wPRORedt7x5Nl3c1dHqJTcu+XG+xYy5D3W1WESNRNfvtm0v0GouXOqAQ/EdhU6uG2dKeHrYUkfs5H6JjV10mUy0ljVMCBv2C3M2CKMFznYytzoboP9vXvhxm2eNxl2b1lwRkZBUcEO5WND9jM6UM6Wa7DD/AdOZkm+bf/3qVNAZhppntTPCUo1+phz13SpHK+rwL4P5fTdvpfAlLnPol84r51Aab8Hv7QchzW6czOrP1J0eTclFAheqLkc4xKacwQ6UkdC2Fvphl4rCLRtOyv9iCVwhHOPBsSIkmHsUuHQktUvJPAbBPNaQgdSwsSHKJ0OY+DmeBdiwa6v13OctwCspOOSY2+GzwhHjDDtKC7uBtISZqf3yqgqAFU17WTK5g8RrtmY0e1i3u1FwB3SlPskwMDHUNLIEV/UOflNgFY/JuUBpq4efg1nUEfyNhf8c5lRm1jXHnJ9ETp9Ei3E6h3gdqgiwl/p3WZinwP9zkSUcZx3ueSXeGOKVhm/E0Ku7Y11CI3T7Z17KTcAzgylEivtRPksxxJ9Wv7o6Z40zejT4ITHe+to4tCLmHcObXPGc5AQKtMcG+7AF0B2blfvojKPKZRgwBceZ0mC2pSnskSeCkmXyDUJaLwGoxM9w+Kc4s/vxIqLJjW2+lNQ3oLe6DFMPRj04XjQbMz+KWfnAXUlYZl1DcOHhLjbq3k4oRlnXirBTudduy0Yt5iTYFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(7416014)(376014)(366016)(6133799003)(4143699003)(11063799006)(5023799004)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDdaT09vbU02QmFHeGl1RlBjWTNlM1Yrd3pOV0Y2Yll5cmJvQjJzSXRtaEo3?=
 =?utf-8?B?eU9KTzJvTWFXNU1sUFpmODg0RlprSnB6YU42aG53NnZuTTFCdTR0RnhSV1FQ?=
 =?utf-8?B?VUZNVnR0OUNPeXYxSytTRVU5Snh1MGdPKzgxYUhPYU4rdzJlSWRxSFMxT2xk?=
 =?utf-8?B?YVdWb1pGM2pXRm9zTXBNVURZdzVWUGtobHJIenR1bTlnbDBWa2IyWDFoREpa?=
 =?utf-8?B?SHJLdG0xVkRZNUhoWVFFUFVUelJQQzdhYk1OZjVqVFVmendJMHYxM09vVDlv?=
 =?utf-8?B?dkZTcWJLSjRQNC94MCs4TFdGSmgwbS9nTHVlWVFXclVUb0tnbzNTUHJORS9T?=
 =?utf-8?B?RTVMM0t6K1p3Y2VIdU93TWVVNGxrL0JHNkxmWEtBMG9zVUs1bzdMNy91TXVT?=
 =?utf-8?B?TE9PWEdBOE95Ump6OEpvdDZEemJ0OU9DNllDU1h2VEVyZXMzN0NMMkJtN2RR?=
 =?utf-8?B?dFdOd2dlcW4vdUduQno4SW0xYzFwdWx4ZklvY1NTczRGMUFNRXIreWVsWXdE?=
 =?utf-8?B?UFd4VmZ6djJtL0dtQ2RNWUwzTHhWeTlISFRsN2VneG5rVGRpTXRVNldmaHlz?=
 =?utf-8?B?QWxXWmRHVnZNRVlScWFMS043MVExM29OYmhKWE1lcjdtOEIydkRVYXRJRzdn?=
 =?utf-8?B?ZGNiNXRCVHFCMnYwaDVWTXlqVGJ4UWVLT05Dbm8yZEJlQjU4OS9zMkRLNC9r?=
 =?utf-8?B?MnNkbFo5cHVyUDY4RGFQYlI5NHN3WXZsc0h4ZVZLWmVMWVFlVzMvd1RjaENK?=
 =?utf-8?B?c0wrakozN1RUVEN3OXF3ZlZDWmNvMjcxUE50WVRGdm1pNGJ6MUdReG5mSys5?=
 =?utf-8?B?OTR1SDFvNWsyN1EyOFpuMkUzT3BQZkV6T2ptbFBlRkdSbFBiYTBOM3paNUdi?=
 =?utf-8?B?azVEZkJPZ3VSWXBOZllZY3V2V3NPb2pZcFo1OVZNWFNHOG5uU0EwMU1QWVhM?=
 =?utf-8?B?VDd1MUU5SWFPN216akhydHZmemY3WVJJcWFYWGUwN1NTZkx0cGM4aTZhRlg2?=
 =?utf-8?B?L3ZvUjVwdCtYeGE0VWd2M2Q2U0FOTSthZHcvaE9scSswdEdNMVFyWUFsYzY4?=
 =?utf-8?B?MEcyQVpyUTlneE9QeEZJalZxdmYveG53dlBkRU1LTjNhVEpQelVnaEhUOXg5?=
 =?utf-8?B?RXBiTVJQcHFKYXk3b3hneUtFOEFUWkJYQnl2S2kwc2U0bnFYZG56T2F2VXZU?=
 =?utf-8?B?Sk9iT2pndmduV0lZNGw3RFFxUG9uZDMwaXNTd0JkdGR2dUh5YUR2UkM0dXZj?=
 =?utf-8?B?L3hOR3VUYjVSU2hKYW5KTWdkUEJsc21hR1ZBd2RCcEF2REhlcjd2anhBVXFj?=
 =?utf-8?B?QkxEd2FiUjg5eDB2NlpKaC9zVDltRTFPV3VuNXFHQVVBNUFaL2lVa01Na29O?=
 =?utf-8?B?UkZXY1ZxSmtqVWFkWHlYQWRVMkFjNGtnQXNaZ2VUTm9yMzArNHQ0M1RqV2Qx?=
 =?utf-8?B?WHhKQWZLcmhrMzRRZ2dzWk1nWEVIenc2WUM5ekpiakdTVUxsZU5mblNLLzND?=
 =?utf-8?B?enBmaUFFQk50ek5BVmNGL2RCSlJvZW5ZVkR0b1NtaGp3cUFNb1NmSnJRNHpH?=
 =?utf-8?B?aE5vSjJwWmM0WmFsdWc3a1dpdTNDLzVRM2dkSUpwcUJzMExiL2VMMkE5R2VH?=
 =?utf-8?B?bGdYbGtkazJHRkVCajdjUWRvcWRxSVhpWEJjb1R0S2ZvMjRDdDdoa096Snhn?=
 =?utf-8?B?Vk9rYjc2TDNHaXhXTmFQVnBqYXZCNnJWN1IvK2pkYlYxL1ZjK0NxbFpHSXpJ?=
 =?utf-8?B?VDBxNHViVTVHckN2UHV5UWlMSzdqVkI1V1hiL1Noa1VFaXVIOE05c25pQWJJ?=
 =?utf-8?B?VWVYa29YZUY5UTVSRXMrK3F0ZkEwNGtzYXlYb1E1U3VzYnJFd2FLTi8weVli?=
 =?utf-8?B?dy9qS1pNS2FzVERDTEF0YmpGa0ZVSnlmUGF0VVJKNVZKQ1hPY1ZOMlRNeHdP?=
 =?utf-8?B?RStUNWhVREtpZ2lub3FyV1JSa3pLNkVXZWZtNVdKdDdLRnRBcWtxWFl1ODEv?=
 =?utf-8?B?eSswZCtCM3d6dU9TVDhhN3g1RnVBS3NxOHhYTEtlV3c5OWdFUHY5Y0ZxK2tK?=
 =?utf-8?B?dTVWNDF3dG9iMG11VjJRNVFRdjFpZy9OTnZobDlLRWdEVytNS2xnTkNUNUlX?=
 =?utf-8?B?MlptT1VlcjZWRHJlV0E0aWI3dC9JdzMwNEM0eWVoNjQ0OFZucmYrV2ptaXlN?=
 =?utf-8?B?SW1KZXdOWHVxK1dGTGx0OVBydGJXbXVtbmt2YzFBWUVvQk0zQVBSRlVJd0ZM?=
 =?utf-8?B?ZkNyYnJmZXUxaDA1UnptUHVEQmdVNldwajJxeDZnd2FLaWkxUitpV1oyZWNQ?=
 =?utf-8?B?UEJyQkhMQUFzRlYrV00vT2pPVVlTYnpNQkdtSFRnem9HR3cwdUQ3dG05MkMv?=
 =?utf-8?Q?1gN9DAU3W5NspBxA=3D?=
X-Exchange-RoutingPolicyChecked: K7mmacc6XLVRl1g3DGYGLEjPBlEMKE38FCdQHC5+ZStIK2YZIaPldTDVKYkbV9d26AtEE93AdkptUazPFZmDpSILRTAOAYomEpJ2Gn4dqIEAlZ0JEbhwS1VRWoQOBiooEXAItR8UxvYiCOnW+9cohdZzAziJjzof4vBViXwB5eKeSfL3DbvOrfPhzQ+oV0oiTQjHexO7EYas/K3bOo5U+ga8qz/ZX8lOHsvL6KS3Tk3/V7rOBsW0mdOL+NXQOTrNCaug0a0eojdgaLItPMBxeGCo0W+CByXTGqRBhfKEI4vmFKj2O35VQom/7vDKKRH3d+seulIvWVdmXGAzTDGqqA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb7dd23-8c74-44f2-30f3-08decd60620a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 17:38:18.0901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nHGcuRw0ysSsxeEVvz9aSoNuHDGF/uvbmD7Ms31N7Mg3E4iGjLJofIOphOXAgdlvG36t5Is0FYLm7MUIhK8Iqa0gZn0GTAK/HDPfZZRFGXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8249
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781804304; x=1813340304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q/wv1WnErXehmeY6hdiLlRMSPwv/FTkbbvSzIuhhGBA=;
 b=TfzZHLeQBwmsgw7rRH55wgTx3UsLF0qvliKtuEVLZqhk5PW1Q1SvnrTR
 uSRSG4d0Rdgt96of8FVfherGRL1PEmeNmZmSbjl8lgcnDOzPRwiQGn3C8
 EU80j55oJJlO0nptyNCYfor6+xS8f55e6kilCQHoVnS9P4r1AIE0MWvvs
 62RoxaGAgqUCO3WN2bMdF3zTK+lJClvVZVJKZKzZv36dPsxuqChTDDaH8
 K2Kw8SnaU7DEScVwKdZGvfhgOh2cVZPU9blXpKVjJPgUK1N9k2H3/U6GX
 FGS/5Vhj8rqy6+fDlZdBNW7N1h6axFSZRPTg09rOit8kRUjg5Wt1PNSUL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TfzZHLeQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:tkusters@aweta.nl,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 662D16A1F85



On 6/15/2026 12:43 AM, Kurt Kanzenbach wrote:
> Hi,
> 
> On Fri Jun 12 2026, Tjerk Kusters wrote:
>> Hi,
>>
>> The patch is attached (0001-igb-only-strip-Rx-timestamp-header-on-the-first-buff.patch)
>> as my mail setup cannot send it inline via git send-email; apologies for the
>> attachment.
> 
> b4 has a web submission endpoint. Maybe you can use that one:
> 
> https://b4.docs.kernel.org/en/latest/contributor/send.html
Hi Tjerk,

It would be great if you could get this setup as it makes patch handling 
easier.

> [snip]
> 
>>  From fee3e3452dfcd7e109332369672a3e0090cadeb3 Mon Sep 17 00:00:00 2001
>> From: T Kusters <tkusters@aweta.nl>
>> Date: Tue, 9 Jun 2026 14:06:24 +0200
>> Subject: [PATCH net] igb: only strip Rx timestamp header on the first buffer
>>   of a frame
>>
>> When Rx hardware timestamping is enabled (e.g. ptp4l, which configures
>> HWTSTAMP_FILTER_ALL), the NIC prepends a 16-byte timestamp header to the
>> first Rx buffer of every received frame. igb_clean_rx_irq() strips this
>> header inside its per-buffer loop:
>>
>> 	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
>> 		ts_hdr_len = igb_ptp_rx_pktstamp(rx_ring->q_vector,
>> 						 pktbuf, &timestamp);
>> 		pkt_offset += ts_hdr_len;
>> 		size -= ts_hdr_len;
>> 	}
>>
>> For a frame that spans more than one Rx buffer (e.g. a jumbo frame), this
>> block runs once per buffer. The timestamp header only exists at the start
>> of the first buffer, but igb_ptp_rx_pktstamp() is called for every buffer.
>>
>> On a continuation buffer the data is packet payload, not a timestamp
>> header. igb_ptp_rx_pktstamp() already has two guards against acting on a
>> non-header buffer: it returns 0 if PTP is disabled, and returns 0 if the
>> reserved dwords (the first 8 bytes) are non-zero. Neither is sufficient
>> here: PTP is enabled, and a continuation buffer whose payload happens to
>> begin with 8 zero bytes passes the reserved-dword check. In that case the
>> payload is mistaken for a valid timestamp header and igb_ptp_rx_pktstamp()
>> returns IGB_TS_HDR_LEN, so the caller strips 16 bytes of real data from
>> that buffer. A frame spanning N buffers whose continuation buffers start
>> with zero bytes therefore loses 16 * (N - 1) bytes from its tail.
>>
>> This is easily triggered by a GigE Vision camera streaming dark frames
>> (mostly 0x00 pixel data) over jumbo UDP with PTP active on the receiver:
>> the all-zero frames arrive truncated while frames with non-zero content
>> are fine. There is no error indication.
>>
>> No content-based check can reliably tell a continuation buffer that begins
>> with zero bytes from a real timestamp header, because both are all zero.
>> Fix it structurally instead: only attempt the strip on the first buffer of
>> a frame, which is the only buffer that can contain a timestamp header. In
>> igb_clean_rx_irq() skb is NULL until the first buffer has been processed,
>> so guarding the strip with !skb restricts it to the first buffer
>> regardless of payload content.
>>
>> Fixes: 5379260852b0 ("igb: Fix XDP with PTP enabled")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: T Kusters <tkusters@aweta.nl>

Sign off should be your full name.

Thanks,
Tony

> Great explanation! igb_clean_rx_irq_zc() does not need the same
> treatment, correct?
> 
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> 
>> ---
>>   drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index ce91dda00ec0..abb55cd589a9 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -9061,7 +9061,8 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>>   		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
>>   
>>   		/* pull rx packet timestamp if available and valid */
>> -		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
>> +		if (!skb &&
>> +		    igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
>>   			int ts_hdr_len;
>>   
>>   			ts_hdr_len = igb_ptp_rx_pktstamp(rx_ring->q_vector,
>> -- 
>> 2.27.0
>>

