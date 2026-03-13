Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFT0MbA2tGnTiwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 17:09:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 142C4286B41
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 17:09:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C79760BE5;
	Fri, 13 Mar 2026 16:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id an3_uT6aFG1r; Fri, 13 Mar 2026 16:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDD1760BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773418157;
	bh=/3Fn6mfJtKwa52D3+mfsPAgA9P2ifbTGHUzbTe3d/yk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WzZJyjxxWEGrzFlO0v5SGXsfPdq+eOR/s0DKNLk7teWoelyoNoTWK0JUuc12uBxbg
	 qwPnkNWigZEoRtTjClhkWVLWrurXjtJ0WDbjwDfRbQSTjCEgkKydUexGhrHjqfIlNO
	 jQ7IcqWTubos+Hz6KC23b0c7/w46IQYI9Y29oCZ1oH/GgHjQzGrWzC1/QgwDCAA/5u
	 CQ8jHTzKDHufp5Io/o2LPMXcpHJKDd6YSQVVn8QEI176J9XhLGmNJ8eVzMo2w7Ne9v
	 I/q/O3I+Eny86jG6MW2KCNoUTLbXRom1yJyZvHrlvxUBJNg+u4WL4z9B9UvAU5PUM1
	 32wLM/erN+9Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDD1760BE6;
	Fri, 13 Mar 2026 16:09:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 60EEF786
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 16:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E3EC60BE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 16:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qExzLlVIE84P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 16:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8700060BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8700060BC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8700060BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 16:09:15 +0000 (UTC)
X-CSE-ConnectionGUID: OGeXZM+9SyabLHQefmvJMw==
X-CSE-MsgGUID: ijY0R4uATmix3b2x0UnVag==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="85614806"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="85614806"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:09:15 -0700
X-CSE-ConnectionGUID: qI9j8bXDQUSkMretGAxH4Q==
X-CSE-MsgGUID: 5KSdVS5rS3qoxpemunvrgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="218542193"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:09:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 09:09:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 09:09:13 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 09:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OWn55Du4kTtdgysIT+omK30Bec6E0oXT36xQ9xpqs9sfgaKOXX7Ua/syajRVy2G7WiXE5MeWihDA6wstVcvJPwJrG01rlozhGVUQX4i3ixM63ZHPc/KSP+LpTj5feiSz8ObXNsW0SDV6cFCDHN+fyQGlm37ejCOJx64REhRvp5DZIZ06HsbXdQN6utOia3NSQ0BPsEme0P/yamNIND/j2doNPZaoFH8xryxJX84MwJXb/1C3iCfz/6fwlFym1PaKMTVjTTZpGokVsJpmXhTHhRzJjNoF8LJt4vSlxe0/0rBS7835fWFm07cUWt3KCQwnN11cNWQiqLDxQUx8oxDPZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3Fn6mfJtKwa52D3+mfsPAgA9P2ifbTGHUzbTe3d/yk=;
 b=Xk9IdR0Hla117bcV1MXT22C3h527qPHnbpPTsHMKwpOFZRoSRW9IDBGVrQYBC2vd6IrVWB8pP0kI1GT5yYUp6HOlMhIMDKSpMXik6hYAdnnIAkCthBzReJuOTLptfJuGFZ2IJC1mnYF9xONVhmMlEo4TJkp9DjUSJYeLMwn887IjzOLJPMlg9h7CUSNdA4Y6mW53ZRvILOjwN4A9Ly5vOSzYlnjaD/PzYAATd3QIDHYtAciw2H1KgYEawErEOs1hVJt9tESjQCZLtVzFfpfEfojeLmtaUZj/JOUYa4qUd8X3HkCuQMHBcez6EV1mCNWNYOpcs0+s+vMNpFbBkZ0gYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 16:09:05 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 16:09:04 +0000
Message-ID: <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
Date: Fri, 13 Mar 2026 17:08:57 +0100
User-Agent: Mozilla Thunderbird
To: Marco Crivellari <marco.crivellari@suse.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Tejun Heo <tj@kernel.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, "Frederic
 Weisbecker" <frederic@kernel.org>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Michal Hocko <mhocko@suse.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20260313150917.271086-1-marco.crivellari@suse.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260313150917.271086-1-marco.crivellari@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZP191CA0071.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 9463f875-b42b-44ac-ab5f-08de811ad8e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|56012099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: EUxubB73hEwAnl9F9jSXjjF7sJUUf8cqeV6OKyF0d2vHCkzEoLRpC5ImudbELrkVl3aACnVz1xl/40pErKjW38PSOw7MNiQUEs5A2p5Prglc+lzrK/2BgomXONOsn3Juzh5nBK9pSjEUKwHtT8k+JG8sogEoXFIbZbVMUpauzfHPBHwaWgMVT4C/CF3wf9rFN58P1nVVygs1i9uF2qLfOnrgtRkNQdqzCIby4/mR9C9/+RxP4A04igwM7n+D6Cvx6GGBFP6fJMJelUuqodeXe/nDJX41tYDjQ7ukruZXyk1TSsNNRYcf9+y++hC2DwnfrW8aBkPcFeDNgvc0jpkfWxFjWkJTUC6fbrt3FBnqR8XXrbz9CHLCiBxzgtOnWs6O/44oGzpJINm+twkPmzCRJkklaQqID/c1JxASNDS2IW4SxpX7LRoAolRNuvSyqBJwbAPOpqM8dmOxZOyFmTner5cppb5jzILejEYbHiKPatGg4hktFkNzfJnnTtucq6duxfzRGuSxjN1IkmEn9UAs6eaJ228drq9tKAcvhL483OopYg4BGmDMlIo6pWe3lgOz2UCLUAFuW0s6lwWFIPLo3oST8+uQGlwEa+USfo4/FrB1dVU15pkC+UEhKw06/qVBmk5sn1lXtcHU1xYOY2LbTw3fbUT4Xk9EyfrB8pBv5zLpVg4ZCxc6VBFXlBXWIgcvvyzngedLi37eXG0EWz7kqXoztKyGLqDedkCRSHllx5kb0nqrpuGKTq8SxXdLOdK8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enpmMmxpazhrVExpa2cydG5ZdWRMRDkyYUlhWDBxWUxzcXBRbWtpcTE5akdu?=
 =?utf-8?B?UGdZQlRYMGx0ZWxPTlJFSVNUcG1kMmxWQ1UrbzVWTWZqY0NFTlVvK2NuN3Ru?=
 =?utf-8?B?b3pUQzR5RUdUeE5YdURKbml0KzI1ZDhlM1VJMHVYZi9DSmJCWFU1K0gzU2Vm?=
 =?utf-8?B?bVpneGFzempicVhGQXlOdThaU3hzQW5WeWo5UllyTlV4MEE5SU11UjRRT3B6?=
 =?utf-8?B?ZFBLcnBsNHZ4NkRlMC9uMUNmd1lZcHdxays5ZkhKTTBGaDF2U0xxYmorL0Ft?=
 =?utf-8?B?dkx2VDgyYlVQWWRBVFNXZ3I2MjZ1VHNocnU2VW1MRnorTUZPaU04STRFcGtD?=
 =?utf-8?B?anpWcERpc05vQ3N4eTNINmdOajhqeldVS2tBVVZYN0dvcGswYUpoVmR5cUtk?=
 =?utf-8?B?eFByYStMTzNNN2E1dUMrVWJuRTVtbDdSZGcxZi9CMnQ0aGhZdk1abzNUWXVT?=
 =?utf-8?B?bTBORGdXay9zRi9VdTBxblBJbWY5SWRwY3hEQTc0aVNjQnBPMnIwSUNkN2Qv?=
 =?utf-8?B?K2RDZ3V2Vi9FN3Y0V1lBZEFoZlNydmk4bGM2cG0ydER4TzFvLzBYdE92RjVX?=
 =?utf-8?B?MmVZZmFkb3hnbXR0ckMzbTVoaHlUa2JRei8reGt6bHpNTFMyTFk1QXRoNnVE?=
 =?utf-8?B?NnNHVHFEbTFGNVdJSFg1RUtaalRGTWNVTXl3OSsvZGM3NWYyMjB1M0ttYkdQ?=
 =?utf-8?B?eWR0WVQ2eWpneUk1UXBBbTRXdnpIMWN0clkvUWFmeTg5ajJyYkxMeU1Xd2Jn?=
 =?utf-8?B?T1Bab0pYcHNFb1lJY3VuWXVvdHY3Z2lnNFgwSEw2dFQ0dDk3ZVF0MXI2YjVP?=
 =?utf-8?B?SnYxZ1UwaGJ3SlpoMlpjNUFBbHc4RVRLbndRUUFvZWR6TWdqNGg3bU9HNGly?=
 =?utf-8?B?U2JyaHhhUnFta0paRWF0QWxXeG9lSTBFSVZ3aGZ6eE1jN2poYWNzMXc1WEx0?=
 =?utf-8?B?dm5KVnRaSlE4SFFwdGsyTmJlS0FWc1RGOVlRZ0dVVkNHYUR0bXpwcDc4Rm01?=
 =?utf-8?B?RWFYWWJiUjZLcE5WbUpTdjRqRjNOcUpsTXdSNHVCblJOaklrWExOdi9kOXJG?=
 =?utf-8?B?a3NqbjZUM1cxUUE1cGZKTnZ5N1NPZmVPS3VYTXRtNFUzeE9hWm5EZi8zWXJR?=
 =?utf-8?B?aG1veElMWjB2TGRRNVdoQkQxQUJMUlhRajd3cFlPTVJxZXo3d2tKOG5RVlh0?=
 =?utf-8?B?T2FVZ1lqTTZ1UGRnaXpJaXJ5SlJNMWpNY2Q2dzZwdEM3bUZLNENGRCtXZHph?=
 =?utf-8?B?NEc3bEV1MmtIZnNlWXdESXd1eFZFSUdZR2xFL0xKckFsb28rTnMvcXJmZ0Nh?=
 =?utf-8?B?VUpuM2RXOVZmaDAwNTd2M2MvT0hzZGdpYW5iWTBKd3BjemQzYmIrbW9NdUQw?=
 =?utf-8?B?RjVHaGQ3bWRDcWRGWmFTUWtxKzVWaURnK3NCSFBzSjNXZTBhMjk1R0pkcVVx?=
 =?utf-8?B?WHIxbkZTa0grZklHOWJJdnhlZkt4ZXd5c0lkYXFlSTE1L1hHNXBraFJqYTdt?=
 =?utf-8?B?ZkdxcVM0ZFBITmo0N1RTNzZERzNoMXZYbUpqNnlWa3BKN0FCc0dNQ0lJMTBT?=
 =?utf-8?B?blpWbHU3a1JnOXFPTWdFS25yUU44TUpJb2F2SDh0TjRqN1VKSEx5UFpFNGxl?=
 =?utf-8?B?b1J2dnBtUmV1SE9aU3lkUlA4N2FINEsrWFQ3VHNySHlleHFFWnozODRsaytl?=
 =?utf-8?B?M3JscFBLdjBHanJqZU8xNkNReVFhN3RNeFgyeVBkcTRtLzFjNGVwcGZTZjNy?=
 =?utf-8?B?aUY2WjlydVd5R3BPbkRsQ1dNZ2pJVWlFVzArcVFtUEhXZ1hHcXE1MkhXMktN?=
 =?utf-8?B?UVVMMUF1aG9EQ1dnK3Y5SGdsVnBBUlIvWDRJNVhMOWJ4eFJtc0huem9CblZQ?=
 =?utf-8?B?QUY4N1A2Q0ZPRW5yNzN6MjNqOGZLemVuRkJ5ZHdoWkVaa3cvV0l6WGNuUWc3?=
 =?utf-8?B?RUM3clQ4SFhSSU45eE1tMFFEczVuVnpWb1RzbTNQZVJLRUlvZnI1YXozN0t4?=
 =?utf-8?B?K2t0RUZyTkpIS3I5Q1hvclFwYjVGQXozbG5nLzVLWEl4UEtQR2xCdXNIa2RD?=
 =?utf-8?B?MFRyVElGWlc5YVcvRlQvNkx2UklVY2JPM2p5QXdJK0VkRUtzOHZTdGt0NDlX?=
 =?utf-8?B?Sk5QYlpYeXdiOGxKM0FGOWRlUWtlY2NqUFhhaVlKMms0a3BpRzY2VUtmYmJw?=
 =?utf-8?B?UnVRRGdHMmJ6Z3lWY295WGhRUEswMjRNU29jNitQWUJ5ejhGMmdqVnRXR1pm?=
 =?utf-8?B?c0kxT09URkhGTlk1eUhjSFpITEJ5bE4veE9rdCtHZEtkME1BaUt2QlRuOFFK?=
 =?utf-8?B?UDRqODBCRFdnbEY2WFY5Nm9WOEtQNjBGUk1UWklvR3ludVoxSFZJemJ6aVlM?=
 =?utf-8?Q?F9O0juFptyc5LwXU=3D?=
X-Exchange-RoutingPolicyChecked: tG1ALlWnm8fyuHewYl/zWaIq7BTpFoAD7qB9/RA3CfYP79KfS3Hx6bjPkTrrNMXt1JhRfG9znIkjWNy0Xg0NM/7X0/B/v4JDJBuNIKXR74Z0g6vB2A264XA9Ra7ObVSASreuzUnNf3YlIvaqtxJl4qolxxB1sDROUiKB79eXX2n1fAQYl4UBhDOOIEg6kk+JhwXtMiJ7RJwyshs3fXZpXGqmcpZR9M+fWTLF5S74mObux/9Rn2m3VGq00zxnmHpaykEQz5V66DS6KAXjz7e85YAwwOhpLmXFZiVPDbFmy9DtmrIx90yV/k/Eh7EFwBPzTwLECUIlRBOGSztlQC+nNg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9463f875-b42b-44ac-ab5f-08de811ad8e9
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 16:09:04.3851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xYLIffazyqq5ZU2LbN9GVb3NDO06NKGKnwsIdivxj2MRIZyP17u4gPapwvSPNe+Lfk12Ae3JluOcB4GapTir/JyElYYGQ+IvmcEnCRZzZNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773418156; x=1804954156;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NMQO4h11IMLXhx0gC9tYUl8CHmipRAN+h3wtMhdeUmI=;
 b=Bc6Lpv7308GP6XWMt4Ei3zEm4Xhgn9CHYt+OIBR60UWeZ1Jd/472On4d
 CalDHEatMcgpPDbrkwKO3pUi59CFJDQ8MmC6sBRkP7YPzxDqVTACRtKvu
 iy1TVOI5h0dRtKeONQC2+c+ZJFf0YLUKOTg4scRw/cBR4JXQkIfitDThd
 OxSgIajzJuSH4kwtzRxJLWu3ds1ds2YyTcoOghJZ83aSVMSywxlgHtBY+
 X33hdkj8wUmaPHCiEuP+GNWiheUCzm5g3AVavQ3lutYiMf9GOJNdMVUlr
 bQu1N5NjBub+RISI5PuTwMiN2/7/WIo3F0GNgGAgG+LUI4KP8J8gOJIHg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bc6Lpv73
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Replace use of
 system_unbound_wq with system_dfl_wq
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marco.crivellari@suse.com,m:tj@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:jiangshanlai@gmail.com,m:frederic@kernel.org,m:bigeasy@linutronix.de,m:mhocko@suse.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,linutronix.de,suse.com,intel.com,lunn.ch,davemloft.net,google.com,redhat.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 142C4286B41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 16:09, Marco Crivellari wrote:
> This patch continues the effort to refactor workqueue APIs, which has begun
> with the changes introducing new workqueues and a new alloc_workqueue flag:
> 
>     commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
>     commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")
> 
> The point of the refactoring is to eventually alter the default behavior of
> workqueues to become unbound by default so that their workload placement is
> optimized by the scheduler.

this wording kinda scared me, but after reading linked commits, there is
nothing to worry about, as there are no functional changes in this patch

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
> Before that to happen, workqueue users must be converted to the better named
> new workqueues with no intended behaviour changes:
> 
>     system_wq -> system_percpu_wq
>     system_unbound_wq -> system_dfl_wq
> 
> This way the old obsolete workqueues (system_wq, system_unbound_wq) can be
> removed in the future.
> 
> Link: https://lore.kernel.org/all/20250221112003.1dSuoGyc@linutronix.de/
> Suggested-by: Tejun Heo <tj@kernel.org>
> Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 252259993022..6b84e728d29d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2022,7 +2022,7 @@ static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
>   		/* Fetch timestamp from completion descriptor through
>   		 * virtchnl msg to report to stack.
>   		 */
> -		queue_work(system_unbound_wq, txq->tstamp_task);
> +		queue_work(system_dfl_wq, txq->tstamp_task);
>   		break;
>   	}
>   

