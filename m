Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gdHtL+dlVmou4wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 18:37:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C54756FD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 18:37:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LkdqFv0W;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23AC260828;
	Tue, 14 Jul 2026 16:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gVaEr-zLWfTm; Tue, 14 Jul 2026 16:37:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 956EF60AB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784047076;
	bh=+XXU1w163hgzD3L09DbRR3sCfXvMifc+PQZMaui+oh0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LkdqFv0Wvb/rgPtkfY9FFlJOdtU9y7XJJfWucayDVw3yaTavKi7c1INmsNW4NRRly
	 Z/1YygHKjua6Dndyl90HV5B0xu9yIMmMZqwAATV570O876QfuOzvh/jDu9uIKwE9b8
	 ei9Hwbjqg1b9WaxDJYxAer35wuu0w7grSAMqCXXGr7PJEazIU/SV5hZUhJg89OoVOZ
	 1UpK07jaB+bktVml+wtN0PjWmKJBv6Q54vhE5Ko56DTiHHE/NphV7sw9b+f9c5KKHU
	 74eBSJECn+Y4hFZF9xoKy7kz6h2FrxpmJLBOxemX2McTuHrVvgEWm4oKdiDfAl3pTP
	 8JKx0DnZg2wfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 956EF60AB0;
	Tue, 14 Jul 2026 16:37:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F43A438
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 16:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88DF9400BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 16:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYVKVQyDMtQF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 16:37:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A374E40086
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A374E40086
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A374E40086
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 16:37:10 +0000 (UTC)
X-CSE-ConnectionGUID: GpbYs9k0QfiPMsSv9WNIqw==
X-CSE-MsgGUID: qhS4p+GWR5OOyiOKHNw2Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="72198618"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="72198618"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 09:36:58 -0700
X-CSE-ConnectionGUID: 3IzL51kLSGWtKh7xpr5iHQ==
X-CSE-MsgGUID: 5Nd40KPaRSq1+K9CBVmJMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="253294860"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 09:36:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 09:36:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 09:36:58 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 09:36:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tLLcwOK48tsKJcbMbsmv0s0/TMnvK20lcO1XDdFOg2woiXjkNtXpKN0OfkEruwsXPneEpyNmXxaJTiP0Vol02FSNM5wlp6iG1y1HVWik0Yg4qPR7jWbt2yqmLTEHnoPQtuTTtuhtFIiqiEZ53ks0O3yDX+NrzOQZxcgpHb/j+wCCyD3vitc0L+0SLNt0a6Sz6D9/PraTowyXI2JU4AMgitmjespqErr8Pbtm8FAHmY+cRLXUp/tlCu6FOXWUoCAeegt2PyZwFb2hv0c3qE1v59xVYxIUht4nC73BEhMwyHphy4fRKk9mZ/LcXIJfEbKqpgyHHDXLLz2DaEQBRGph2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+XXU1w163hgzD3L09DbRR3sCfXvMifc+PQZMaui+oh0=;
 b=MjnT7fD1ReUXMPcDEMxFCJ9SShqqYnlzDN81drFGp2opNyGVegiwApONUxFlGuA8r7wdWg2KnFdBO5esBZcwGqu4qrKARFumvLLs0ORxOmY3hzs0ipFBMLAToR1YfnNDMLeUZRbJgD7tIE61w6rekQ7yzGnFFytDSNNcqyquPLXOqW5JCJxPLFI/gG7dyX5NQ1mtEA4M0nJt+1DvAiEovALbdM0mHzWcJwr4mYgAGUIhCAYpFJgn2IDE6bmWmHG973RN0dYNtpSI43xE5+Ckp8CPKrqw4uQkUk9ZrEb7Ouwt6kba3DvVLKYTkWbRzPc532asRkH10SMaZM+PBUgUKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by IA4PR11MB8916.namprd11.prod.outlook.com (2603:10b6:208:55e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Tue, 14 Jul
 2026 16:36:55 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%3]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 16:36:55 +0000
Message-ID: <edc9c916-1a9b-407d-b2e4-cd8709287a34@intel.com>
Date: Tue, 14 Jul 2026 09:36:52 -0700
User-Agent: Mozilla Thunderbird
To: Myeonghun Pak <mhun512@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 <intel-wired-lan@lists.osuosl.org>
CC: Milena Olech <milena.olech@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Ijae Kim <ae878000@gmail.com>
References: <20260714081124.90962-1-mhun512@gmail.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260714081124.90962-1-mhun512@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:303:2b::19) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|IA4PR11MB8916:EE_
X-MS-Office365-Filtering-Correlation-Id: 956d14be-2a2e-4293-b91c-08dee1c61d4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|7416014|366016|1800799024|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 7p1gPsr8DOaYTLcr2WivVWGQinoLwU5gh6W/gg5Rn70Mlh/YQtXwk6ucuXQy4zJ5Lz9bHf52YWJDCTTwr4Y9UzIkJRtLAnpnMQ0v7euVwMbpVFyohf4RSENw7btGQbjzNZHKYsSsp/VQ0KbtnhL1VNwfN1TIDRl7T6s5AMP5o43yanGIzk7BNBchuafBSZCDCEap1ln4b9V8JtLZEnpeSGpZC0ycQn93kVy34WuBN28L0cAH2pN3WihXuKIjxsw+TlVhCX+8KCaqo2NcFDauiPbvRYYCN8AGKrrhtLIOwzvy450CQYt3tuO+5Juw/shWJu4wDICSLWT0s1JaGo7d5U6CQ9vbjFPAcHhaEtn7XPXLlT889YFFkLP0kmcyDdJDJGb7C3rtBtmENNKXEl9jFG/WCpakGEk3eXPRyOrn0g98jTW58IN9pcR/rTmOvYvv/s9JNPLU0e80VJl1N2WBFKdrLI7FTw8WnnglFGF3XKZ31Xi88+0dDEpspcrPG4NXjU7feD4i++kWqTBzd6f5ny2nqr4oZXN7Dn084Grpcbc/lMNG8Y/8t8Rqvlq63Ml0RedO+OijmhX+2E4dw1FQ8bvhiV+vJagrImG5tgkv6mpqTlbhpvP7wqxhAVpIlvKBWQQHiwlnMBl/56U0xImbypx3pgtXc+buMUb0iipa3Vs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(7416014)(366016)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cys3YWVlc210SGhqK0FTWVU5UWFBSjU3WHZpd0ZjR2lJVkY0dFc5RmR0a3hk?=
 =?utf-8?B?MjZqYUpHT0Y1RjhBNk9WUUt1ZWl0UDgzR2dEdEdydHBrYURDN2U0akN1elEw?=
 =?utf-8?B?Z0xPc3hyTis5aEhwOHVtYVBEUVpoTWtPamlQOVl1NHFaWVZXYXNuTXMwazdR?=
 =?utf-8?B?MmFPNDhDcExycElxRU9TNTRtdE5ONU1jd3ExTzhzNkVuOVBPQnZVZ25qUGNJ?=
 =?utf-8?B?cXg5M2Y1cTVGRDNJQms5MndYYm9YM1ZWWFBrdFI2NDJDOEhTNWtIb1poMlVn?=
 =?utf-8?B?YXFmb1EwWWNyQklnR25JSnVsaDlBRUE1R0FiamJNL3lPUVpsT2FvdHVkS3Qx?=
 =?utf-8?B?TVQvdW9mNDU2QzdaaUVZKy94WWhXMzhUMUhPbHViUFZkQjNzNTl6WDYreEMx?=
 =?utf-8?B?alN1TVBJYkkvcDBQK25Hb2EwVW14QlZzd3hZellVbGdhdTJVSUlZckJtV2pj?=
 =?utf-8?B?RDZNTEtCVXQxTHV2Y2JXUDY1VXd0Zng2QWRudWplOUMxRW5KbUtiVmVYSDZw?=
 =?utf-8?B?UlhXb1llQjhwSStET1FmVUNCQjBKSHN2Si9tcjFGNlhmUEFaMVhOeXd3UlI1?=
 =?utf-8?B?NzIveTNRNk01ajlxMGphL0RaTy9MSzIzWFBzT0ZoV3NxM3JxUE5DeWdKVEZx?=
 =?utf-8?B?eGdKQTFCb2k4MnJhWDRsSjdRalgxMlgrWnNQT3ZFaGZUckhMTDRIeVFRZWtD?=
 =?utf-8?B?RXBGS0VjQzFGWmM3Ny9ZRk1TNFJsOXZhenNoc0o1T05TWGRaVDVGc2I4eG5t?=
 =?utf-8?B?dEJCd0NhZ3RXS0JSZytra0VYbE1nU3I4bnFYclpoeFl5YkZqMXR0KzdPZ05l?=
 =?utf-8?B?c0hNRE9hbTRhZnhNUDgxNkRrWC9CSWZLaUU5VHVDQ1dJV3BXYkpGQmpMbGUw?=
 =?utf-8?B?eVF4M2h5eFVWL3N1V2tVaDNzVXNGNzcrdTBTQ0UwLzFnVURHQzgxVGI2Nlkw?=
 =?utf-8?B?QVVzc0NqN0dHRFp0VG14aHRWZ21ZdWdUZzlISjdZcWhNOXMyWDlJQTVKWStE?=
 =?utf-8?B?bEJiY3ZyVDFRUGl0SGdTNjhOQXBSZXR3ckp1a1pCVGNPRE5EZFVqTkNUOHNL?=
 =?utf-8?B?N3htdlM3dlJnV21kSXc1U2pQQWdtK0lXVXhMZW05ak41UnpKN0JlTlJBVzEx?=
 =?utf-8?B?eWI3T29pK1dWV0VLUHR5SVR2QmlCWG8xVGVLREZXN3RvcVE0VU1maWNwTHEy?=
 =?utf-8?B?NFVxZlNINWZMd3U0YWNHZEpLWWlRWktUK1hRaE5Ndy9yTGkzZjF6M0xOSlgv?=
 =?utf-8?B?UDA2N1lRbDJleTI2T05BaExQR2NqT1NTL25NZUpGSVc1bkhSazM0U2lxL290?=
 =?utf-8?B?QTBHeElSYnEvWjRXejM5N3l4YU52OGdRZ3RlaldzemJvbmNza3FVdWlpcEtT?=
 =?utf-8?B?Y3BuNkRWeTR3ZmlkOFNZL3V2MmJxQUFzODk2UW9SUHhGcDg5endXUlBSS1FF?=
 =?utf-8?B?ZWhRcTVjazZiWHovL044VCtpSW1GemQ0QURtY2ZKZVZ1WEZwTE54RkNFTTNT?=
 =?utf-8?B?Ri84cythOVZMckhqTkRFMjhxNDZUTWhNaWlTNmg0cnlyV0Q4eFc0bkEwTG1V?=
 =?utf-8?B?Q05KQUU1cGFjcnhNcFAxQU9LOVRuR0VNcEh6NklycGhQOGRqbXA1bmNJOWsv?=
 =?utf-8?B?eTUyOEc5LzgrdnJjYUlXb1h1ckk2TEZ6NzZrUzhwTk1uN3FWS0tydnl5Ymh1?=
 =?utf-8?B?UktQakthT3lIbU1kVVJvRUx5SEl2ZkNKOVEwY0M4Um4vVUFOSEdYSkoyRkRN?=
 =?utf-8?B?azlhSWJPamhQekVxcG5wQ2FpSjNzT1ZhV3FFQ1RqLzhGYkZsV296NTJHcDRT?=
 =?utf-8?B?dnlobWFkTzBwTG95bncxR3B3OFFaU2loZTZuWWN2R1NVS0J6K1JiOFJ5Ujli?=
 =?utf-8?B?bFQ0bzc5VjF1UURBQ0NjQmhrQnhVZVNjZjhlbjArWDB6d0ZncHRsRUhxclph?=
 =?utf-8?B?RTVjUGQ3dlpwQVo1WFFaeEZuMWt6ZjBCUGx3eFFJT08xMzVWaGJ0TXlRYWxQ?=
 =?utf-8?B?U0lHS0J5ZVQ1dG5nTW5WL0tUQ1ZsU2NzODgrNWRWM0tIWnlZRTl6akJQZzZ0?=
 =?utf-8?B?SWhkcXhnZUdKS1FwV2YzbFFhUmFkV25uYUFSRGZSMDVnQXEvK0lvYkJzeHZQ?=
 =?utf-8?B?bGkvM3poamc0cy91SDFLUS9zakNQV1c3bzVUWk02N0JHcXhIMFMzdUNCeFNX?=
 =?utf-8?B?RUFEQllZR2ZRdnh1cG9NQjBJQUt5N0ZvN3JlKzh3OHI4NUhXdEVkMkgxQm5W?=
 =?utf-8?B?SlprQlFNK3M5N3FlU0lFNXQ3THhCcmFuSSs4TXhqS2JrMVhwUlFBYUZBbnpM?=
 =?utf-8?B?OWp2TkZpQWNYblN2cHdFQzMvS0VLTHdEUXA3MHhhWEs5YkRvTnlUdWpZV2k3?=
 =?utf-8?Q?Ngte3oty+sUuYVzM=3D?=
X-Exchange-RoutingPolicyChecked: M6XcQAW9JV40E8xP0QTZY3bo93Q2Mej596/5XXQ6TbStxr/iYbxceGACS9gOYJCZuMz2yWVKHUxGh9rItJuSsZNUEurevem2GPx+CF8FxoThcoXeNjs1Xj/dv0RpxiKMWxDdovIMY4N3PWceBCYjnl+AY538Nkb3Iffj2/8LyQoP4tWTFyG1ivFE7StMkUruHNeY2XMOUPn8D4/i9qDrTUt6mYWYm0mMw/Q9LBRhZVg545vCQLaV64cUFmgmlI49pBn0Kb9JxeIDTAZCFPdFf+rVxSEArTgxMDzG6BVe6vxhfyBQNmQeZZyL6jLCOIKnkziZ/Ns1ep7nXjfPHKthPg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 956d14be-2a2e-4293-b91c-08dee1c61d4c
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 16:36:54.8033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4LbL8zrdt47WpQzZsCPCe27Rbd+JEMhW3V59RZBGkRdMngw/JFF5Kk3aa30PFs0ZKML5F5+VJZbuifEK1hP8HwYWhnoYSZhTkTaz+WJ1YA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784047073; x=1815583073;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GquZ2z+uYrdZ3gML84IU5ydmqJVd3B1jnPn4qAAT8Nc=;
 b=nX4bakulh+XMNLoWKQgQ39Uv1Z0r1xTU61vwjq5jTFLzLSFCuWCE6CUF
 riQTik5+FoGrr7r982sRftGiN4N7YoWn0eG/+w+fDb8iAOjAdhnajbx26
 d7qJsb05qVpBRhAoNMOeTN7CeVlaY98sJmiGBWJkYumwvCFcV/qXXjF+G
 KFa46U908hVWKzSMrNYGPtGiqV4O8A+P+EHBNCRDXYFtzd+99RF3aE9NT
 OUjVE2QQwpu4HNQPhZYyARaJhrYv8g1P/iBopiGk5xbXFdex3ie0XcAsT
 z3vc/sa8qtlDTglAWoC1RLjwOpwdHmW0IPcidB6d5edxIVdqTEHeDQxTl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nX4bakul
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: disable PCIe PTM on device
 removal
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mhun512@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:milena.olech@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ae878000@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74C54756FD3

On 7/14/2026 1:11 AM, Myeonghun Pak wrote:
> idpf_probe() enables PCIe Precision Time Measurement with
> pci_enable_ptm(pdev, NULL), which programs the PTM control bits and sets
> pdev->ptm_enabled when the bus/controller supports it.  The teardown path
> in idpf_remove() releases the workqueues, vports, mutexes and the adapter
> memory but never calls pci_disable_ptm(), so PTM is left enabled on the
> device after the driver detaches.
> 
> This leaves the PCI core's software PTM state and the device's PTM control
> bits set with no bound driver.  pcim_enable_device() only arranges for
> pci_disable_device() on teardown and does not undo the PTM enable, so it
> is not a substitute here.
> 
> Pair the enable with pci_disable_ptm(pdev) in idpf_remove(), matching the
> igc and mlx5 drivers which already disable PTM on their remove paths.
> 
> Fixes: 8d5e12c5921c ("idpf: add initial PTP support")
> Co-developed-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 0dd741dcfc..3d3471d3f7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -159,6 +159,7 @@ static void idpf_remove(struct pci_dev *pdev)
>   	mutex_destroy(&adapter->queue_lock);
>   	mutex_destroy(&adapter->vc_buf_lock);
>   
> +	pci_disable_ptm(pdev);
>   	pci_set_drvdata(pdev, NULL);
>   	kfree(adapter);
>   }

I think another call will also be needed in idpf_probe() in the error 
path, following pci_enable_ptm().

Thanks,
Emil
