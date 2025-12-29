Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E13CE71FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 15:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F40681407;
	Mon, 29 Dec 2025 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TS-Xm9lb2HPx; Mon, 29 Dec 2025 14:50:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D534A816A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767019837;
	bh=JR0RQHYeSI2XTeGL8ydwu9P4U89jkSWWwL572Ujo1Ys=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h5NqJF2v/d48uOENZcD72tnvqRR49Q2/Go5GRgFg2JoE1qM+PKpcKMDtGVk046gNu
	 mzvut+faFi/wNVjOIh7BASg/aOIAN7yjzcpBqjbMlBzzib1AqKo9ohXaCiYoDrzy+H
	 HIqTXQnasXSx/qlTeh2WVJBfjmpY7IWwxNfxehPnu6RLqSYFiG/Dt4C/Eu2oZEhtdm
	 eOJh2o04mBSzki3jF250R9G7xZ9uG4nDKLd4+f7UTvZL9xfR0MzV901uhUDyfGaAba
	 b7/Ob2X6lSV5KojuCWeD30s3ovIihvtfJF9Ig//mpe6+GVrUwwW8c89g5wolhz3Xo2
	 7kPhCmZqRanaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D534A816A2;
	Mon, 29 Dec 2025 14:50:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A901177
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 603CE60823
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urAu1BC6qeuF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 14:50:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 648E260729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 648E260729
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 648E260729
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:50:33 +0000 (UTC)
X-CSE-ConnectionGUID: uwM7Y7q2TeqQXxvwny6sEg==
X-CSE-MsgGUID: tCfEuD0tRqOZZjzF5W0Bvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="79353334"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="79353334"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:50:29 -0800
X-CSE-ConnectionGUID: 3uYcmi12TFeOyfm83nE0Bw==
X-CSE-MsgGUID: pWVVejiYTQejawOgv1Snzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200157874"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:50:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:50:28 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 06:50:28 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:50:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kk3A5tl0Z8Vpdg1OtokUgToQ+RguMThc8yv/WdyDkr4fH5yNGo88VC4G0J83S8+/+PD/Otcl24y07MBi5fq8E8kS6zTUrZZPvTl/36U0dP99SO0ZL4RGxC/quEuq2ERh9CBRRR3FkeawV/TG//8/vtnnW78lyProWFOEEYC6rfrb0xjvjAEiu5YnVVzNvQBwThY+FFV7aqCds4WUeul/YCDme6Q+d3SkRta0OQ5ivjhCrBDFRe6TbS+pIZ9HIMblNLrjBnnCU9xzwv9tZOhwUOE1g/Gb4PGaTDUf3xtBOZxOmuq3VbZxWxIp6FLJA4tUi4TX4HLkJeDVg/yXAupaiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JR0RQHYeSI2XTeGL8ydwu9P4U89jkSWWwL572Ujo1Ys=;
 b=IwjasF1oFrCEqVTit2duxVf2aix6rPjQgPXSUWJjHStROI4fcmVChRkTpnhUIf1x4sxllXvTPKE3a7Csf8h6zBPu7H7/FX2IxAMhGhlS7iL3A+plcOOgIB31C5pox+JqcCgLp2IQPG3yUv/m1Hbxi11vKB22sbVzxt+Ly4AjFU3NufcWXx0W09l+T+rE5jDPRtL/PiyZS9isNZqviyVrcV2YQZtx0K184ymbQ3devCTdWnsFcXPIATwn/t9niVkG0ca6BAUIqrGCGoELjByqkLFo7xnuX40dcQGNZsKjY4cdsx/5elAHKBsVI4p8vzee8U02u3nAdx47NwqM/PtSeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by BL3PR11MB6412.namprd11.prod.outlook.com (2603:10b6:208:3bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 14:50:26 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce%5]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 14:50:25 +0000
Message-ID: <c08ea6dd-89e1-4c7b-bcd5-732330c26081@intel.com>
Date: Mon, 29 Dec 2025 16:50:19 +0200
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|BL3PR11MB6412:EE_
X-MS-Office365-Filtering-Correlation-Id: 8652d433-b175-4e2e-b145-08de46e999d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnpVQTVGc09kczg3bEZFRyt6ZHd4REMyWS9wYm05UzdZWFBkNFpvM3lscFY1?=
 =?utf-8?B?OU1KMWF4U3VnTnN3VEZqdFlvTTU5WG1KdmI1cnJETExhR3V2VHY0cDFJQVVZ?=
 =?utf-8?B?anZma0FlazB0aStPNjg3TVhKdlIzT05VZlRwQXp1aHlYd0RQZ1dtQWdMak9j?=
 =?utf-8?B?ZDBwa3dnQ2ZEeUxja09IZStmQjhJT1Nkc0tmRGhUSXkyTFU2SGQ0V2VzOHpU?=
 =?utf-8?B?all4LzcyUG9KWlRYNmVKMWZETWlYWmNhZG5kdjB0Qi9rUDArNlVCRVEzU2xv?=
 =?utf-8?B?QytiVkk4QTJGVFBBU0Y2L2xmZ1dvZlJ5MEMyZlBGbWdxSUx2NUlwMWNEOVA4?=
 =?utf-8?B?QlRxNXhnTU9vWU5WcjdkQUczbmhteGNwakRmc0ptOTMrSXFFMFJvR2taWlRF?=
 =?utf-8?B?VmM1SXBPM0JzTktYcWpNWlJTSGVWWHhWNnVETnNMTUxjU29xaGZqVHg3eXIw?=
 =?utf-8?B?bS9xeGpGbHd3RFBCYlc2ejlLbm0yeWd1Nkp1U2pZZjcvSDd3NXRBR2ttQU9D?=
 =?utf-8?B?cnkrc0tKSDZzL01RSjdVZTBBbFNvSEpWSlBYWXRTVFBhRnU4TGpLYTdHMHZ6?=
 =?utf-8?B?amRWdVh5bVhGWnNaNytnckdBOU5KNmxvWTdwdXdxV1JLMktROFhwTklRZ3R0?=
 =?utf-8?B?RWx6SW1WdEZTa0dCYlcydk5KQmUrMmZzSE5OYnRYUVpNZzJIWkY2aUxYaXp5?=
 =?utf-8?B?dENYUk80aDI5cTlYMXpGOVRCTFF5bU4xNzVUb0NDOU1sakM5MFlZOW5zZ2ZP?=
 =?utf-8?B?Tzl4dGcwL051U3hCWkRjMzBiYVhCTVVxZFFQRTJYSWx5VTRUSlFUbkwrWGZH?=
 =?utf-8?B?c0JyelVvbzhWQkNPOWFuZ0JNZzA2UlhiN3N1QVJxSGh1aFB6anhicjdqQlc0?=
 =?utf-8?B?blM5Z3lONVpodzVXT1V4YndVR2hISm13b0lqSWgzL240OHZNL3FpSDFPREdM?=
 =?utf-8?B?aUtqMk5VQy9nVVpWcXVUZTR2YWpmdW44MVNXcXZXNFdVbno1OGVGWlhTSnU1?=
 =?utf-8?B?R0FtTG8rVUhQT1h4L2ZXMTlhc051eDF1NmFBQVVuMmo5RW1HRS9ra2hpUklY?=
 =?utf-8?B?R3hEcGl4VGJ0dFZobnQvSnFRY2p0QjdvOUZZcjBFRU5SMkJKOEZTUnNwQzlw?=
 =?utf-8?B?VytHK0cvMWRoWWkvWXl2cENpUFhTUWF2dlpOcUh4RDVsUlQrRGhrU0toOFRq?=
 =?utf-8?B?NEl5eGllTjVFdFE0Vm02U2hpbWxHN2xrMlZ0K2NkRE9qUis1dzdzMXEzdW5q?=
 =?utf-8?B?QWQzeFZza0N5TWpHYnFUcW84TXdBbU8raE1JUElIWXYzbmJ5YjRTWVJ2VUt0?=
 =?utf-8?B?ZlQ1dmVHU0FaQXFvTWNxV2J0QWFMQStkU2JSeGduT0crdVVHR1p5OUtHV1pa?=
 =?utf-8?B?czI4TjhIZ2l2aUJIby9hRUk5MlNhYms2OGY3Wkw3REZrVnJHL2Z4SmZkb1Bt?=
 =?utf-8?B?M2F4M0QwS2hLM0Y0RjFQT0JBRGRsRjBIYkl0dlI1SmNrZlFjbjZhVEZ1ckhW?=
 =?utf-8?B?R2JOS2tKUDdPNk9QQ2dSbTVYdk5nTnVub2tGZmNSZUxiWEwvM05ZSWUvMDJs?=
 =?utf-8?B?aERzSlZCdUZVeTZyWmFWNjdqVGJZTlJlNkZ2Vzl0b241dFpHUE5MT2RjVk5m?=
 =?utf-8?B?eDNWdGxVNjh0azcrZmhuOU52NS9TVVh3YkpPL0dpZ21ncU5XTVVYNWk2bTZJ?=
 =?utf-8?B?Mis3QWQ3ajQyQ1JjRnArNWZiek1WUjRob09EYktyeU1hTnZFNTZHcXRYLzZU?=
 =?utf-8?B?ZitsdmVIZEF0Z2NWaEJFMUxXMVRKSmw0b1FtclpRa1dYRXV4YWt6WGErMXpK?=
 =?utf-8?B?QWNKUHRKMlQxMDkzZFV0SzV3SHpkNFpzbnNDSFZuMWRaeG1raEQ0QnZic2tj?=
 =?utf-8?B?d2NRYVBENCtVZXNqc2tkRVFwR0pmTHM0T2tLdFNvZVp1bkZkNGsxdVVST0lQ?=
 =?utf-8?B?STcvOHY1QTlJeTJSWXFGL09wbWRSZHYrTzk3K0RQNWVORk52d0dBSjBRTWN4?=
 =?utf-8?B?NVpGY2pvTUJ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmRrYWs1cUo4N29tRDMxMHV4NDVIdENadGh2THR0dkp2eWNSVkF5K1dLaDh3?=
 =?utf-8?B?SkNlV3JLRktBVDkySzNuVy8yTWowaTJOTmhFWklPcUVRVkQxOHdXcERhTkg3?=
 =?utf-8?B?OTlwMlVlM1RtcEtiTDVPWUgvMHkyRWZBRzhNeXg2SlVYUzMyd2pmZmw4ZitE?=
 =?utf-8?B?aGlGa0hTNGM5WjUzSWdjK1JNbVlEc2sxSmN1eThkTHpjc1ZYbzNQd3F3em5M?=
 =?utf-8?B?QkhiSlY4Rk11TjFHWmNXb3Y2d0R5VUlWRHNUS1MwcHJER2o2NFFXRCt3MGpv?=
 =?utf-8?B?YTh3bGxpaEdDNVZqMjB6OFM3cERFcWYvaDVxOHQxcnVXV3FqUVlwUDFCeFdv?=
 =?utf-8?B?RVpwbUVwQVpqbkdhUFUwMUtwT2lhTjNoWjBDdU0zaEVXaDJneUpsZFY0Yzgx?=
 =?utf-8?B?Wm5tSmwxcHh6UjdIVEJDSGhzUW1EQTA2UmJGaG9tUXlGTFZQOS9TQnV4NnBL?=
 =?utf-8?B?dXlEbmFHeU9TdStjK29valcyL29QcXhZNG00TlVuSDcvL1J6MktnVGJrZ2tK?=
 =?utf-8?B?cjhhR04rbFVFYndCUXlCQk4ySm5iK3BoRjMxbDA4T3k3WWpURFJudVluQmlV?=
 =?utf-8?B?dTRYN1J3cVdIcSt3KzBYN3ZHbUlmZktVaE5zc05JeXpIV25uYks5SUpTaHBH?=
 =?utf-8?B?NTlFQWJkR3J5UkFIMzhoQkgrbExMVDcvaFFNeUwxQytMU2pxUHAyc2VYV1Bv?=
 =?utf-8?B?czJwdFlPZFpOUjlxamsvbHdjc3FvWG9PMWtveVkwWDZxcjk1ZzVESHRHclBO?=
 =?utf-8?B?RkFmODMwY1FEYzcwamV6NUtaU2owRGh5Z0hUaWs5VE9VZUY5TGE2TjVRNmNI?=
 =?utf-8?B?U04xbjZSR1h6ajlzTmxrc0NRaDB2VzloRHd6bmhCcHlnWWovRjBDOVpYQko5?=
 =?utf-8?B?RUhBTWxSQ3VJOFMrcnlOaTJsSWlLTkNNeW4yQlZDWTVhRXpmWERwS3phQzdV?=
 =?utf-8?B?dHBKd0M4ZGsyMVVScVRFcGpUMnZncjFJV2pMUjdzbC83LzhVMktDSkJjR045?=
 =?utf-8?B?WUlHa05zL3loSTdkWjhVZEVmeVVObzhWQUt4WjVrR1JUU2NQbFFDOGNtU1pq?=
 =?utf-8?B?U05rZ0t5R2ZZTWw1YTV3dGNxVFJWT1JhZko3V2E4UURZNm1yVUpWU2xhbCt2?=
 =?utf-8?B?YVZubno3R1dhS09PUytWOUgvM0wzakJiNkNWYlVVV3A4cCt2akJqUjRJUTda?=
 =?utf-8?B?T1JHOXpxcko0WmdseFdVd2MwWlZuN3ZxYUtPQTkvOTJDZkQvVWNuRHM2bGsz?=
 =?utf-8?B?dEc4QWo3NVpLWHpDL2p1Ym1IMHd3T2FEUGs5em1RcXRtbC9nRm9Od080b093?=
 =?utf-8?B?dXZLc25EdWVNZm1SVDhQb2ZZUEJNcmI5TStNWThGZU9iQkNFQTU0emoyZmcz?=
 =?utf-8?B?TjdMMVlralNlejlqSXhyMFIwbmdPcmQ4KzFCOTFNY0szMEJIbXQzTEYyQ0lt?=
 =?utf-8?B?MjN5ck1KSlZtYWxsMHBvdWhvc1B2ZjczYWdGY0pEVmRCaUNSZldzQzNUYmlJ?=
 =?utf-8?B?V2xCWEF1WVZMR3RWQTJHc2x1eVIrOUVBZlBsTlY0bnB2SEZWUWMyUE1YaUZN?=
 =?utf-8?B?UGtEZjFWeXFyd0E4d01UNWhlNVZid1VPTXlxVnAyUUs0OXBvRlVSQktvcXFU?=
 =?utf-8?B?cnUwNUdlazJBNU5abUxvYWQ2THpCZ0hZUlFCc1E0R3FJRWpZc2JmYWpGRlo4?=
 =?utf-8?B?Q09XTlBsL2Ztd0ExWHYraEFhNXZpbWsrSnhCL2c0RUQ1TFRSMmplcThHRnMx?=
 =?utf-8?B?bmdnQkZmYnRSUjZySjBqRldnZmFsNG16c3RKdDhsRDRWam4wUWNwZWcxc1dq?=
 =?utf-8?B?RktpTU9JSTl2Uy9jOE4xVUhjSjRlelFwdllJNHJTMWxyUjg5dndRVEhTc3Bv?=
 =?utf-8?B?a3ExOHBJajFMaUZMKzdaYVVxaUhZZng4TFc5NHNlM3ppY2tvRkNmdlEvMGh4?=
 =?utf-8?B?aWRVeDRiMmxvN0JoTE5uVXNRdFdKanVSZXJUeXMvY1FBbjVFRkpybFFUdmZU?=
 =?utf-8?B?M0QvMnhTSkhPWm1ZbjM1Yk5VZTViQzlGZGgvaG9mbExTaGtTb2h1RWw3ek9p?=
 =?utf-8?B?NEFMQk5DODgzdWZlZWpZZjQvQnQ5OTNta0EyV2Q1aXZXZXZ4OGNGUTdzWXR5?=
 =?utf-8?B?cHVhVG9aL0FwOThhdVFBYjRXZGsybGxwRDRkZjFmeE9LRmdWM1V4bFAvUStD?=
 =?utf-8?B?dkhYZHNGaWMweFcyMzZtWThraVpxeHNIbmVDTk5WN0lvV20wNFhmNlBCdS9I?=
 =?utf-8?B?SHRoT2h0aGdyZ2g5UTVTd0pDUEZlVTc2ZE13bWRWYnp1ajU1d3I5NGJvWEdi?=
 =?utf-8?B?WWV1YVVXRnlrUkNlMjZiR0JUWXZTb3JwOTYwUVlRMjFvREtDUUxFS3JPNVl3?=
 =?utf-8?Q?VysPHa15hrOKCFeo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8652d433-b175-4e2e-b145-08de46e999d6
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 14:50:25.8626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nceQZtOShymdTGQcSw9YMjk3BKXdb/ho9+qWEehuQ/TrbzivjrARA4J7TyJhhO5pGEz0ovTP46CjPsGdrPO0HW4t65tk4/1t/9xeFJhKGcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767019834; x=1798555834;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/0fvD6HJI06yNkth7kG74zLu+U8OptvQ0MQbxpFOrSA=;
 b=NgbZodquw4fSyFUEOp63V4pgupmfKmn9HklbW9ra/HteJ7GlC8dYsTx0
 dKcfsOw6rXc2LaeRyeOyxIhCDVoAz9y3yIQlUcdajLnUp1h9sXCPlq4m9
 dO0HWkvyAPzKvzKlvrHBU5m0v/YkUV/06C9G11emljw/t6pJr6csD+2nk
 PDI+qE5m5/p04Eg9Tawyh/coaJDlud3hHrivh/d6LqJyHa1A5oAUNiYlG
 T6lCJFh7b0GmLio/bw2Hbf625w1PRBwVfynxbdwGToVbUqGabF+s5QUIp
 Yf7OGrhZgMjYo2+wP5wAbZm8I9tstKNzNIC4zHyQAJXXapXoBLP5aQvI8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NgbZodqu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Restore default Qbv
 schedule when changing channels
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



On 20/11/2025 10:18, Kurt Kanzenbach wrote:
> The Multi-queue Priority (MQPRIO) and Earliest TxTime First (ETF) offloads
> utilize the Time Sensitive Networking (TSN) Tx mode. This mode is always
> coupled to IEEE 802.1Qbv time aware shaper (Qbv). Therefore, the driver
> sets a default Qbv schedule of all gates opened and a cycle time of
> 1s. This schedule is set during probe.
> 
> However, the following sequence of events lead to Tx issues:
> 
>   - Boot a dual core system
>     igc_probe():
>       igc_tsn_clear_schedule():
>         -> Default Schedule is set
>         Note: At this point the driver has allocated two Tx/Rx queues, because
>         there are only two CPUs.
> 
>   - ethtool -L enp3s0 combined 4
>     igc_ethtool_set_channels():
>       igc_reinit_queues()
>         -> Default schedule is gone, per Tx ring start and end time are zero
> 
>    - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>        num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>        queues 1@0 1@1 1@2 1@3 hw 1
>      igc_tsn_offload_apply():
>        igc_tsn_enable_offload():
>          -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i), causing Tx to stall/fail
> 
> Therefore, restore the default Qbv schedule after changing the number of
> channels.
> 
> Furthermore, add a restriction to not allow queue reconfiguration when
> TSN/Qbv is enabled, because it may lead to inconsistent states.
> 
> Fixes: c814a2d2d48f ("igc: Use default cycle 'start' and 'end' values for queues")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v3:
> - Adjust commit message and comments (Aleksandr)
> - Link to v2: https://lore.kernel.org/r/20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de
> 
> Changes in v2:
> - Explain abbreviations (Aleksandr)
> - Only clear schedule if no error happened (Aleksandr)
> - Add restriction to avoid inconsistent states (Vinicius)
> - Target net tree (Vinicius)
> - Link to v1: https://lore.kernel.org/r/20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++--
>   drivers/net/ethernet/intel/igc/igc_main.c    | 5 +++++
>   2 files changed, 7 insertions(+), 2 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
