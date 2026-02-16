Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JBsDtL2kmlx0gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 11:52:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F050F1427FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 11:52:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3252660B2D;
	Mon, 16 Feb 2026 10:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EU_ZgW2r3CBU; Mon, 16 Feb 2026 10:51:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8370560B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771239116;
	bh=NVvZ02PC4TKZH+BqCL2xjLa/1IG3V16N/kh5To9zaOs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c9hUEEX35tl3SWdlMSLCep4KFB2GDb1LLHeKaohZXQe38soIckxStQ3tQ8enVY/0d
	 XwiceNUrlT3MwTCbnDUFj70k7rRCl9yD79yxkf3gj7sJrFoO7pWB4YueQINzbLhekR
	 ZU6dmFldZqZ4jlrG65+S8WlD98vCnqcxTNErJXRcmxLjkJZN+YXtNfhFsyOmdEEee+
	 twjcokfQy/xVklHl6IgivA+hpGocKtDw3nGuLofwntqEt27xFahjJcbqNU7QSeaPPG
	 KxO/KR+yEiJ8TLNc6LAl+6KwNFwclgcZ8Mvj+Pkv4acqxkT4YN4FxFloN44VK55F8l
	 +9kF3eUQNm77g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8370560B3A;
	Mon, 16 Feb 2026 10:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 25E9B1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1614960B2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w065deESBAmZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 10:51:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C9A760B27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C9A760B27
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C9A760B27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:51:53 +0000 (UTC)
X-CSE-ConnectionGUID: Px5lY/RHSMyyaz18KjmQzQ==
X-CSE-MsgGUID: Egpf4Iu5TpqA6hkl9lJ6ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="82646903"
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="82646903"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 02:51:52 -0800
X-CSE-ConnectionGUID: qlNJiJ3ETamiNEdH0GLdgA==
X-CSE-MsgGUID: 1R8UYXUnTASerniYbaptAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="213576993"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 02:51:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 02:51:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 02:51:50 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.36)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 02:51:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bKxV0P/6GFGQFtSEBG3YsvQsJo01Yw/QDST8y4/lmigW7foeBWg5oofOqitbf+20G0v6sCkPhTMj86ZMu6Gl0tuDygky5TOYKEoejtmJ2WfuCrtt8gJe0/1VqOCmwB5wyxngmo+fhFUBpXJxGzBEf6rWtGuoldLzql3+xG/YXrr/veZempkw0b3eMDj3bFpS7znpb9uH3qHzOazizOt3AIaPovyW+VbMbwt3ic5PCdNXW5AkMtzlmkhlaf0GPScCb2o1dT2bJWi2z/QVg7kq+4tbNXMqdiKbPn8R5Dz+Cu8HSW6eUMQBwGqw8ONM+O75phYIozTD2a76I2EvqR+bFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVvZ02PC4TKZH+BqCL2xjLa/1IG3V16N/kh5To9zaOs=;
 b=DfOhJ3Au/j3J2jTfiauZ2taI68zCAj1lRdR0VHRoMttVQ3I9mueeiGW4Rw2gSQyUMqvUbcdgjcLrZ15O9yOT0AiL5+YcXyDhJ4dWWTgE2k+wk0Tk1aqtpaczGJ5TfZkcQHRgNjmQkwz31B9T7/Fa2DeJG+RkHLZgrnaRW17e+sFtID0NElGnClaSBmoAS5vhzmVlkeuQ3fUQGCoufA/OqdbAioI5GJvGAAAZZGYbl5SERn3qsR90Wge4YhPJdT0uN2y/xjvPccC0rc0zzJc6Mvq+cfd3n1d8kSEpmRzTguIbq8RprpI6aur6RKp72qhuJGdTHpoBTLa7cYev8J/pJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.16; Mon, 16 Feb 2026 10:51:48 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 10:51:48 +0000
Message-ID: <de0cc1e0-63d3-486f-a7a3-f1957a4116f0@intel.com>
Date: Mon, 16 Feb 2026 11:48:27 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?Q?Ricardo_B=2E_Marli=C3=A8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-9-larysa.zaremba@intel.com>
 <5b7b1746-54e7-4281-a008-aa3496610ccc@intel.com>
Content-Language: en-US
In-Reply-To: <5b7b1746-54e7-4281-a008-aa3496610ccc@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VIZP296CA0011.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:2a1::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB7908:EE_
X-MS-Office365-Filtering-Correlation-Id: a8cfd13b-8b37-4503-8a81-08de6d496241
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WU1DQ01leThrN0NHSTlPVHd2Rk03UVBXcmtvVitTRm9KSmtLVTliYnpWdHRz?=
 =?utf-8?B?a1cyN3lRMnZxa0RBWmx1b2hHekg3aUxJUnFjVnpWdXA0dnIwbE9zT3VjKzda?=
 =?utf-8?B?VEgrVWZqa0krelVUYnJMU3Y0WUJMU0YvYlFIaTNBd2hMTFZZOGtUOGJTMHBw?=
 =?utf-8?B?N3drUjJDM0dURkkycXRQa3kvVk5Xa21seGVERGNPSDJ2NDhJb0ZMRURVR0Vq?=
 =?utf-8?B?dUpaSDd3WmUrTHVrdWNaZk1lY0ZWd0NyNDc2UEJaeVVzZzA3SWZxMWEyV3h4?=
 =?utf-8?B?WTdSQlhiQS9QTFdhV0xraWMwdlJrdkFxVWZtVHZ6SGtxWHJwU0RTZXo2QThN?=
 =?utf-8?B?L2tmUlFMQVBjWEJYZFI3eUJSSCtlUW5BL0ZNY3p2bk1IVmZRU25iSldYaTJj?=
 =?utf-8?B?N1V4YkJtZDQ5ejlFdHp0OHlsdjM3Q0UvU3VveEpCMlRkRzFHU0xPNDRYNnhw?=
 =?utf-8?B?WWNYbWVEZjMwU3hOTUlMQ3J4c3FuUnozeVE4U05zWkg4dHpZK1dXTUlBb0NL?=
 =?utf-8?B?eTVieFZiMnlyeEZHeFlZSDRMeWFtTUZWRDJmRnFndG85bzRQNTdRS3FUTDAr?=
 =?utf-8?B?VmQ3azliYm9OWmo4U2JFckR1ZXJ5SFgvTnRMRmxwZmpTajgyUVV2SkVDaXJN?=
 =?utf-8?B?L0ZQbDNqdUxuWkdJVGYxUG9yUHFQcUFLRXYwKy9tUnAwUURZUjJrVnlHekYw?=
 =?utf-8?B?MkoxV3F5cG1yRXR3cUEwN1NUZTlYbGtjNHVTTk43eUlkODFvSmVXcmY3ZGtK?=
 =?utf-8?B?YjdSbC91R05YVjBOT0hhZWljanZBNjdzNUtLRHJwOVU0bVFrNmh1QThwTVRx?=
 =?utf-8?B?TU9GNDkwSExaS25uZzVpMXM2QXVBeG9tMkp3QitUamhGTUtQTThmamxIREJo?=
 =?utf-8?B?engrdU4wVE9lL0dLQ2hKTGZvdVhuYUk3cG1hRU93NVorVlhMa0lKaXpjVGxh?=
 =?utf-8?B?Q2pIVUhMUHNLWUcxendudjdha3BHZWJMVjdRSTYxZzVRcC8zYk9DUmk3S2c5?=
 =?utf-8?B?YUN2NldFZjl0YnZNcjdjZ2ZJanpvS01LZ01DVlJoRmJmQWtVaDFXaGJjc00y?=
 =?utf-8?B?aGkvWDdtUXhiOFpSRWJMRm9WWEhiL1lEK2ZmSVhYRnVOMlkxN0U5UTdIZ2tG?=
 =?utf-8?B?dU0xeDRoVjFHS1pzai9ZaUt3ZTV6TVFESVhXNFcxOHJQTHQzWTkwOTdZYWRV?=
 =?utf-8?B?bC85Z3MxY05OS2VvaUs1OWJtUlJONlQ1VkxOQ3ErMEFUTnd6dmZoc2pZL21N?=
 =?utf-8?B?enoyOEIzNTlYdVE0cDNwVTViRjdYN2oxZWZUYmwzT3pURW1lWGRkWC9ucnFr?=
 =?utf-8?B?OHdPUkZLZXRWb2J3eFY2TlhFRTlUaklha1diRjhtZ21YYmlSajBYNDR3OU5k?=
 =?utf-8?B?RDdFNkc3MXJNc2hWcFJyZTUwRXRtZlZ3Z0FrbmR5SnhBeGNTak9Ybjl1RE8y?=
 =?utf-8?B?OStibHRiaFhVNEFFNStPRWEybHlQQ1RWNXFVTUplMzdSemFoYmQ3V3hHRjR3?=
 =?utf-8?B?aGo5cXVjK3p5YkhKbFZYbmV4OFZJT2Y3cHlmYUcxcnpObmN2QnZZOUpNWkFh?=
 =?utf-8?B?cmtKY0MxMSthNUtxV01lRzdIMHl5aGxvUTdJUDYvbFd4eFJLZmt5VXlyZlVZ?=
 =?utf-8?B?a3RibnFtcHlidERVK0psd1RVUU9UU2FLRXVHVW5BZWd1bldwdENLR2pDU0RC?=
 =?utf-8?B?Wm1zRDk2VGtaRGdnZlZiUGhJTDY0SGVLSUV0UG5nVzh5NHc1Y0l0eDgxZklF?=
 =?utf-8?B?VDFGQ2FuaHZrdERZUnNETmd3b1pncFg3ZTlhWXQ3WVdVTTRpM1ZHcUhKMC9F?=
 =?utf-8?B?dkpUM3YrV2pOOHBJS2VIdVg5Q2RwYVpaWThITWgvRUZqYWtsWUJaVUZwT2JI?=
 =?utf-8?B?QU5nSVZ0K3lqSnJpK0NkNlFORkdiTVdvZGZaMWNSNk9xOFNwalpzMmdaOHVQ?=
 =?utf-8?B?aXU4amwvVUpVUEhFaFd5ZVRDU2Q4RGNnRlpLQnBOMDZacXd5Z0tXSlpwVTZl?=
 =?utf-8?B?ejYzNHFReTNpQ21NV00zdmJvOURzQkQ4SGl6MUIvTm9Nc0tJZ0Z1NUxja1RJ?=
 =?utf-8?B?a1EySElPVmRIWWdaK1lSV2FJanJ5S294Vlh5RWNNa0lGU3Z1STdqTDEydnhH?=
 =?utf-8?Q?Q/ms=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEdYVUN1dml5UDVScUdRL2lzazhSUUR5UjBNeVZYMm50N29RUVdNNS9oTnRs?=
 =?utf-8?B?SmhvZmZlMExwRlFiaU9jSFBpT3lma08rRFdBSVkwckJSTFZHZUhTTjFQb1c4?=
 =?utf-8?B?eFRuWWdaRi9pTVJCWmxONFhtUnRqUmxibEZKcVYvaTcxT0N3VUFSdnROT0lw?=
 =?utf-8?B?ckVpZkRJMFR2bGZETGZWeGhZQ3hCV3UxZDU2dEhVRVJFRllPSkpIeS94YWtX?=
 =?utf-8?B?ZHBNTGVFL1ZabnpKdmxuNFZNUFF2eWtHZENUUlhGK0JIMGttZFRzQWVBWmQr?=
 =?utf-8?B?S0lGMXA4dWI0WEZ2c1VHSXNXeXpDMTF0SGxmVzNvQWxsZzIzcitEUHA5eFhL?=
 =?utf-8?B?ZGphaHVmNVhZQUpzeWpyN2NTSFUrY0tVMnJoSWpIZnlPcnJLUDhkcFhiaUFq?=
 =?utf-8?B?TzdUTzA4SFBmeC8vQ0k3cDFYVitsUE5hNjhlNVZORitqdkJGWUhoY1B4ZmVE?=
 =?utf-8?B?RHY3Tnc0NW54c2hVYzY0Q0xFNHBPSGIveTZiTXQvVWd3YXphNG5hZk90cmdl?=
 =?utf-8?B?N3pPUjBMUVFKMDlJS3pRMCtEMUdFUmlGdVFERk9tMzQ3ZzFzSTYzajREYWpB?=
 =?utf-8?B?dkF6NHZGdVp1YmRHT0pETFdPR0laM2NoMjYvTzdrYlVMN0l4VVZPcjhvMVFk?=
 =?utf-8?B?Tm1kU1N6ejgrWFNqd0RzbGRuUWQxR1k1dTJrM1hJMDRlVzFvSkhFMlhDTkEv?=
 =?utf-8?B?WVhFd0s2cnBlaFNUd1kvZ3lWd0h6OGJGa3lJejIwWUs0NjlDYzByUk8xa0ZS?=
 =?utf-8?B?RmljcUJjZG1VOHl3WDlmU3d1bWZUR0hGMVJBUDBjblRSeitobUlodXVlb2xy?=
 =?utf-8?B?WkozNGxJRlo2RXpJNzgxUkRWcnBVWmVQK3U0T0hCZlp4TDAzY3FNUXErQnVC?=
 =?utf-8?B?ZlpacitZdFIyWEVFTUdUM01jYVpuUitaQW55SjBRN0VXUmVRRGEwaWxYNVQ0?=
 =?utf-8?B?Rm1TNGVIVlFPL1NMNGRaMWx6ZWRHdWQ4My8ybWZnZWdJdnFDQ1ZNNmhIdk5O?=
 =?utf-8?B?MkVTRTB1Q2JhTHRQUUszbnp1VVVqRzg2S3hrNk9YNm9VcDZkWVpQM052YkdH?=
 =?utf-8?B?YmtuZnp0V2N6aEZkTk9JZTVWSXByNGpzOXNUY0tLNU1HazJacEUxNUtOMmgz?=
 =?utf-8?B?TEg5Mk1LaE04c0swTDRIWFdtTC92OTduWUtBSm53MVh3d1JZTDZSZWI2NlZ3?=
 =?utf-8?B?TlhuY3VNb3VnYm1DVE5lYXRxa3FlQmJMTkZhOXIwVFg1WUI2andzRmlYNEtG?=
 =?utf-8?B?ajRzemVWSjVKekh2OXd2S3JQOXgzcnBwNFNmNk8rWjViODd0TG5qTjkwSEVX?=
 =?utf-8?B?eGxLa1FjY1hhdkpFcWduTGplaXhaR0FoWUIraFY1WC8wV2hGNFlYeEhTdFBB?=
 =?utf-8?B?VUE0UXFvbWdmcW45YnpSbEs1OHB0aVc3TldvYVp3YmtYQU4vVFoySmdWdTBi?=
 =?utf-8?B?NTNkOExwWTg0dXhEbzAyK01BZzBCZk9yU2pzNjEwWEpxejVwcWl1MFZUWHo5?=
 =?utf-8?B?MlM5NHROWTdOenRXVCtjTVpmc1g4TFJTQmFhTFJlQUlWV2hUUHhIMEFnbkQ2?=
 =?utf-8?B?YmowUGRyRmx2amlHd280dnhPWUVpb0NIdTdPaVM1dDQ0OUcycEd6K0ViWDZo?=
 =?utf-8?B?WDVFOFBMNVZINXgyYTErOTBkK0V1ZGdMVE9MRDJOUEVXWDMzQ1Jsc0swT1Zu?=
 =?utf-8?B?Y1JSbW95aWJUT3NvZjdKcDkrQzVSSklFTUI5RUtaNWZkRXlXNUNTMUo5ZTJw?=
 =?utf-8?B?cjdtdUtMY0dhbXk1b0R3WTdKQmtYZG1YSmJKVDB6T3Bibnp3bFNabTh3OTdL?=
 =?utf-8?B?eFAzcUNqRXNWNTBVNGxSNWkxZTh5Rys0K0JaVDA3Um1IOWZjVjVJVVJFVEF4?=
 =?utf-8?B?dm50MG1DbHJBNE9TZkFJQ29JRzlpZHgvNlRuY21sdDVIak00OGZCdTlwU1dt?=
 =?utf-8?B?aVhBNGM0UUkvelc5TUVwSE9nSW14NlVGcXJaNkpEQmlINlRUVm9RRlJWbllo?=
 =?utf-8?B?ckRkRS82Z2Z6WXhaUy9oMDhTamlLWkVOSlVyZmEzS3Bhd1gyeU5zODgvekFr?=
 =?utf-8?B?dlV6bzYwdTFrdnBhMXJuYlBWLzlvOHhWdzJveFF1MWVxK3FYRlBWRkVaQzRj?=
 =?utf-8?B?VDRwSGJCQ1o4NVZwcW9FREFOYWJmdE9UTGRwR1lYcU5rc3REbFpQL2VvTWtz?=
 =?utf-8?B?NmJSQ2xrUzc5RzFUZ3FGelFhTGwzQ3duVFBncXcycTRIZXN5eHQ4bmlXVHZj?=
 =?utf-8?B?UXJMcHNraW9ZdGl4cncrb3dER1d0d1Y0WGhNQW5CTkpSUlZCWGM1aS9ETmZQ?=
 =?utf-8?B?QytTVy9kTVNxSnNWcTNwYU9YSXNjMmV6WUdIc1BwL0dDdjFSdmlrcWRuQnds?=
 =?utf-8?Q?/iIT9/qwFLZqjoh8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8cfd13b-8b37-4503-8a81-08de6d496241
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 10:51:48.3746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IcjqNFL6aDiRmYUDB9IhCA9/ZeVyQw6xCuylAP2fpy5jmpZ13MgIkZpA5OwbGgTRZEoe5VScdbcgJK+iO9oWJgrm0rgF9KHBu6sHz+eoMh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771239113; x=1802775113;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=97tkYggv6qg6jaSpTBV92j4e6Hij1E7W25YqREs9Yjo=;
 b=CUgQmMOxz+fsYuVCnW7V8uRgH9Ag6/rN0Ez5PJjFdPdS8/RzPeEqQMan
 yifirapLNBtnYdCYdg5jsEkKRCXyzmQg1PQIAAUrHzTcwt8REe4kVPP5q
 5ge122aq9xcv6+WoPcPybL0ecvExENseryfPkW0Eitq8tQlsb0ndE6Qu1
 RcWRO3obZOFMiP80EKTgTZo61NyMH/IAu/unIZhQEPS5e7l4T0K7wH4Oe
 syIlN0QoXiIHmhn8BimisencXjb+O2tRpZYlQZ062rCd8f02QaM69UOws
 ViKie1R8Uysh+f2J8uU17m+yRodljZpi+3LO+oY8MwHEy7csBz1dwooz9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CUgQmMOx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 7/9] idpf: use truesize as XDP
 RxQ info frag_size
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvidia.c
 om,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: F050F1427FE
X-Rspamd-Action: no action

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Mon, 16 Feb 2026 11:46:05 +0100

> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Date: Thu, 12 Feb 2026 19:33:22 +0100
> 
>> The only user of frag_size field in XDP RxQ info is
>> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
>> of DMA write size. Different assumptions in idpf driver configuration lead
>> to negative tailroom.
>>
>> To make it worse, buffer sizes are not actually uniform in idpf when
>> splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
>> is meaningless in this case.
>>
>> Use rxq->truesize as a frag_size for singleq and truesize of the first bufq
>> in AF_XDP ZC, as there is only one. Disable growinf tail for regular
>> splitq.
>>
>> Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/xdp.c | 8 +++++++-
>>  drivers/net/ethernet/intel/idpf/xsk.c | 1 +
>>  2 files changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>> index 958d16f87424..a152c9a26976 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>> @@ -46,11 +46,17 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
>>  {
>>  	const struct idpf_vport *vport = rxq->q_vector->vport;
>>  	bool split = idpf_is_queue_model_split(vport->rxq_model);
>> +	u32 frag_size = 0;
>>  	int err;
>>  
>> +	if (idpf_queue_has(XSK, rxq) && split)
>> +		frag_size = rxq->bufq_sets[0].bufq.truesize;
>> +	else if (!split)
>> +		frag_size = rxq->truesize;
> 
> XDP and XSk are supported only in mode splitq mode, so you can remove
> the second condition and change the first one to just `has(XSK)`.
> 
>> +
>>  	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
>>  				 rxq->q_vector->napi.napi_id,
>> -				 rxq->rx_buf_size);
>> +				 frag_size);
>>  	if (err)
>>  		return err;
>>  
>> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
>> index fd2cc43ab43c..febe1073b9b4 100644
>> --- a/drivers/net/ethernet/intel/idpf/xsk.c
>> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
>> @@ -401,6 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
>>  	bufq->pending = fq.pending;
>>  	bufq->thresh = fq.thresh;
>>  	bufq->rx_buf_size = fq.buf_len;
>> +	bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);

Better to do that in libeth_xdp rather than here?

>>  
>>  	if (!idpf_xskfq_refill(bufq))
>>  		netdev_err(bufq->pool->netdev,

Thanks,
Olek
