Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O1xVJq6gQmqL+wkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2026 18:43:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A7F6DD723
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2026 18:43:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ZkUSaHHL;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E93081EB5;
	Mon, 29 Jun 2026 16:43:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yXCG9FxZ8hG; Mon, 29 Jun 2026 16:43:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC55581EBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782751402;
	bh=9WjQ0YRcRNLx4Ax9NKh7b248DiBs6I+t63Rgek+gRL0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZkUSaHHLq1wZBeEdDhS5IWiLs84uH45IxPWzro0uFvYs7NZdGdYAKt4W/r7qdwv83
	 hbs03m2b63lqhvWXq77NcVAHLzn2nRNWhh1V8bBREoD2LhlY4Mc5D6haFgKchelVyB
	 csjZJGc0jvOSwJ8lpBFKZoUe17DrsPzOdB4t9zJPPoTrBA/hmQFB8co4CO0OC4av2/
	 mxWLHA1M3er8FI+YdpFl+NpvCAOOAb6KsM2wN6zC1MkR7wkS946II4VkV0uu+0Sqt3
	 ap1Glq8xIl9+bPzqDOOMKut13QSp7fhj1BI4y4FrE2TXaxyt6RRauD5pGLrvdCewBd
	 dJg+Xl1jXQlaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC55581EBB;
	Mon, 29 Jun 2026 16:43:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA6E0264
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 16:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBCFF40233
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 16:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TA1FgwAwW0Sz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2026 16:43:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BAE7C40225
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAE7C40225
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAE7C40225
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 16:43:20 +0000 (UTC)
X-CSE-ConnectionGUID: 5dzhKR0/SYSasj9Hhz1sGQ==
X-CSE-MsgGUID: jmLPwtvXSZOG39ZR+rEDbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="83479202"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="83479202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 09:43:05 -0700
X-CSE-ConnectionGUID: lXc6Zf9SRHGr0XWXJGJzjg==
X-CSE-MsgGUID: cqaVX4UOQU+c/J9hZY/ChQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="256925451"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 09:43:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 09:43:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 09:43:03 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 09:43:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYkRR9MGOs40buQuClEedva4A8rTuTbv7vxtl6c+BmkfN+tcS4amgaQm6Sq9Z77wguCZr/T3eL2pCjJ3E1e+la/YGaZYGgo0G7rVbyyTrfe2mJ2K/rchjewqw4yKbSLYl33dMLfgF3wJW3/tCPmtnFbiPwE0jARJ+NvmXD6pirDBbUs63SIhNuhgsrmE27I7BKjwHgZuIypYhC0qjBI1YdjbLDHG4LhD/afWfgpAqi8bvMXCutAGWYwTbF52ELUKhKqSCYSRuryXzSAp66Fg7sMfll8Ul0SLCJuFOT59dlkH47gnDliOSeP6Z6nD60/Xwi6ASRD1n/Nv9PoG7rl+Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WjQ0YRcRNLx4Ax9NKh7b248DiBs6I+t63Rgek+gRL0=;
 b=SJAmcA6tiXVyFVNmaUnbp5X6ibVMVyabn5Z7bQ3j/TndHOWst4LiDxRA6lRMltoLe+L5njVE6i2b9wJQ2v0tcZCZyuPVDSjevyxH4M0Qm3UlP2kg5mfNBVLVNEZvZI4s3sgA9iC2vUY3CBQT2SIBEm8Lf0XR5EyB/K68CdyJLpebMTjZ1NSx15Q/A4ML08qwa5D4wUYO9NCV0ASS+s6uYY6QWlnV9oN9fnK40xWj7xUqXIXMNqTgv8d0VAKN2DE9YaTbwDeUSzzPuzLSZTb0fouhqH9ygMMt8qX4SXjJzWDe0cQHFyHLPfMufN5UGlYJbYybE0f+kVl9hCkJbC5y2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by IA1PR11MB6490.namprd11.prod.outlook.com (2603:10b6:208:3a6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 16:42:50 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 16:42:50 +0000
Message-ID: <1d6c3aae-c9b1-42da-b5fa-6f8ee9ebcae1@intel.com>
Date: Mon, 29 Jun 2026 19:42:43 +0300
User-Agent: Mozilla Thunderbird
To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
 <IA3PR11MB8986B77F49DF672178FEE4BCE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
 <c3030882-55c8-486f-8ff3-571d001b99a1@intel.com>
 <ajiHH-RaHUjgraMh@acelan-Precision-5480>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <ajiHH-RaHUjgraMh@acelan-Precision-5480>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|IA1PR11MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c357007-279f-4cfa-a015-08ded5fd7513
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|921020|22082099003|11063799006|4143699003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info: WzqwAHSNyl6lrRzZbGSEiCxh0+EfIaB/pPwpQxcmHPbQAdXBu9IeLN+kUxdtvjeHYCfA0EdBQOarIL2wSsGaLXjjDwPEG7GBmyPgxPAjJ9TweUEq9Jf5qyWUVYtIZg2t3qaaf60o3F1nnmMOfNvTWuDiztTfnA58o3EI01nSQSrr7XWWjDwXnqG33awFODEiywP2IDbNS5knvUwjIdopDstFpCcFbCQgORqQ/i1vWji5W157oR76SfTBwdkwqz4BXLszHoioRUrpYCTqzbw2vB2wFr6TRIHemOnDmnrkK6G4EslmZqwWihUk1Lml6O1FvKopzDNyz/qd0Cu/rpH+iSwGSYjDrNM7NqPzV76kyJD6ifFLrVyHxfIOMD8qcl8WjwXDCXOthuaVe69Gr8uLHAO9Smtm3m1j+iM+L57mg1Hk1/D4Y1JiTjHuUj0HXXvKPxUNJbqnZzUeNhtwTQgTDDad8t+JrIAJ7mt+wBLrITqkXp7wGZP3/3Aiif3yF4XzQGBFeWnsaqIMKIqWnO63RRijvR8dNFQt3LryLONTyTUgBySKvUDG/WdP4aVyG39N3R6B8c8LmSWxs8cL8duXbriCd693LZyd2pm3XBeL2jJHDRa0P7Kmc/FsEpYmEYQ4LasnV1a9rgQw6BdQJ+btcu2ojXWzcz2Q98jEtI09a+zC1XE5vp1VBSc3GZTwMgI9CTHG1Tw7MqVgyqI3IBsItA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(921020)(22082099003)(11063799006)(4143699003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2ZLZWxsclQwVFZldXVZaVRiSDJYSXR1ZjR1NmNWN3A2VGVmRlhVaHh0TllV?=
 =?utf-8?B?SExNYitTdEYxbFdFdjd4YUdJTCtnVUIrT1krMjJvNUVvZm5nMXBRWmZKMmhR?=
 =?utf-8?B?YlZUelhUYlpYdVdETlFlTnV0RzhzT0Qxalh1YmF5R2NpMWtHbEd0eUEyWFFI?=
 =?utf-8?B?dlIzNnZ3cmZzR0EvRTRia1RBZTl0TFhNTndBTUpGRW4yUUI0bzhOS3ZWK1dp?=
 =?utf-8?B?ZDBkWnIveC9nT3NaeXdQZGJvVnlwZ1hYTEdxcDhsK3lraEVEa2dsVFVUTzg5?=
 =?utf-8?B?TmJlK2FWR0UwYnNJZVE0MjBFMHdWV0ZRRkRVRVJxYnVtcTV2bHdDKzlBOExE?=
 =?utf-8?B?QW1YdkJleS9SMHFsY1pYNEw3TGEzaE1WVmczeFBnQlZ0ZVpoMVd1RE53ZE9G?=
 =?utf-8?B?SjYvMXZ0elZyMkgrTExhdURLQm1meG5sVXhtY0FPK3BrbXQ3NnYrZUxpUXVo?=
 =?utf-8?B?TkNPMDdHYlNYaUw4citSYnRKZTdRb2xFMHFod3psdVcvSjZaaW1RYmZMV0I3?=
 =?utf-8?B?bzExT0dVa2lNR3RIbE4rUFhVZXBhOVFJMGtkMmZFWWN4QnNZLzYrUU4wSDE1?=
 =?utf-8?B?TC9uRTQ5K2RKanh5K2FjSUs2d1ZDZWpvQ1ZVaE1uR3VUNUtXODBNSHhtL2tz?=
 =?utf-8?B?Tlc2S04rM2t1V1Y0ZmtmT1piTC9MbTZmdWVRZ05ZcDBmZUZHQVZZY2p3Nkxq?=
 =?utf-8?B?ZHM1SloyeENROU9GRlAvVTArVWk2VzlRUHBvMEpGQnJhSVYyOHZHNnpiay9w?=
 =?utf-8?B?ZGtwVExKclhNd0hZRURlNHNKVEY2V0ViNlVubHpyQjJIbnBBc3VlcTJPZmtu?=
 =?utf-8?B?N2NySklwb1dxajQrYUVCa3JvMjJzelNUTVpXZlpIZkxpQktQN0VZcFVMZTNK?=
 =?utf-8?B?VmFpVjZIdEJIeXRKUlNJS1ZWVW1NZW5YZFV0Qk9XdVQ5eVRiNTVDQ3lvY3Vk?=
 =?utf-8?B?SFcrRzhhMFhOc002bkFMaFZOUExNMEJ3Zyt1Skk5a2hQMTM5Y2k0cVFVODEz?=
 =?utf-8?B?blN1OTZPQlpHaklDVmtTNEZ5Z2JvL21mN1c0dXR2cStqTkJrcjJqTW16Uk5V?=
 =?utf-8?B?OGs2OXVBVEtQc3Bsb2llcE9JTWpCN0I4L29tL0JTTUdTU3hOWHVOZGt6Z0or?=
 =?utf-8?B?Z2ovQjZlbCtYK1JYYUlBN3RFMUZHYklYMnhnR0xLUm95TVlRUWZDOWFKWmR1?=
 =?utf-8?B?RTdmTjdsWWh2U0RUbmw4cWt5Zi9EOFRXbVJnNTRFd2YyQnNiQTRScGt5QldD?=
 =?utf-8?B?SWRmWndrb3BIdUI0MlIvSGdJbjRlSjJRaDNwSFFVQisyUzNsQXlMWVV3WnFB?=
 =?utf-8?B?M2Z5b1NnRjJMdDNCWVJ3S1JEcVpWMmhQbGpQMmdOb20ybzErdHdIa3BVemxD?=
 =?utf-8?B?YjVTbkZJSFlEbjdpWHFBdHNTYmpDSnVBYVpBMS9ITFlpR2JsSUJROXJVQ3Zw?=
 =?utf-8?B?SitFVVZpR04zVmh4MXJiUXpoZUdMTjhzOHFVdFlIOVNrZFU0N3RyM1hrM2J1?=
 =?utf-8?B?ektkSTdzZWozdWhaNjBhRVFUQU9JRElVbStSays2cmY0eDdzUUN1NVZCN1Zo?=
 =?utf-8?B?U0ZCSktEazFPU3FtYXNDUjFXb0NJT1g4STUvellCV1NpYUdiMTB6Z3RQMVJs?=
 =?utf-8?B?ZkVVamVKZ0VIU3pxVTZrNzNSY1ZCL0s4bGJzSVVKWU9hMHBYcmZLRmMyZnJ3?=
 =?utf-8?B?MGFOOGJDRUlkbS9iWUVDNlJQVEFJaXVyMTV6d1VCeFhrS3o2dmNzclBtaTRC?=
 =?utf-8?B?VnRLN3JoOFgrd0daTnlrYThUZmpTSEhGM3A0eWZXUndsZnNXZFluSjBoSk9j?=
 =?utf-8?B?R3ZJbGplUTNoQmJDYU9ETjFoRjFpUjlQcThYWDhxZ29wTmM5eC96bmJWSFp6?=
 =?utf-8?B?c2ZFSUt2YlBjMVQ4Yjk3bkpoQlZuN2xoV3NYUzFjQUs0aDVKck5mMXpFcnVn?=
 =?utf-8?B?YmRueDM5NzFkcDF6dkVJVTNKL1plVjcwNVZneXpDZnpLTEJFWnVGSmMvNHFD?=
 =?utf-8?B?QlNzOUJTQVNYUkRGVjVTWk1GMStnNjlFeW1OZU1NZndaQlpPR0N1Y3k2dTVl?=
 =?utf-8?B?OGVsMEExVEpGbWhHK2Nod2tkUXJyQzM3SW9ZckQ5Z3A0VndpSjliQUllK3ZQ?=
 =?utf-8?B?aE5GVmhvVyt6TFFJNTNST2NscDJ0bUk1S3RiWXZvV2ZieDJsNWRQR0E0a0VQ?=
 =?utf-8?B?UG56YXlZbzBLVkFtWDJlaTRIOS9NdWRJeHZ5V0VpY2dJT2tXZkwvckRoT3Fo?=
 =?utf-8?B?VTNIbjlwOHFEWW9BYVNFQ01uU3hDaGVKVmhIbGtlNEtYWWd3Tnh5NWlCR1dr?=
 =?utf-8?B?QXNVYjhPUEVLREh1UGEyNnVncGJGOTJRblF3OW16MkxYL3MySVhGdFUva3ZC?=
 =?utf-8?Q?XxmMQvbUpR1eL0rk=3D?=
X-Exchange-RoutingPolicyChecked: oj2Rwb6mNG6qNxkRKs3JJ7+9Xc0OzrdpWH20T0pYWDxqHi4JDcCtb0IBZRrEqtUL6WpKPW6VAbaR4Q2O2TT76z1WT09583GZaRK+SfugAsmSYhlyt98ECmEvyJBDZYrju5gj4UvsqIdJ4poMAaXrTZVKD0yh8hNGB4wNVJEBk8rsJH8CQwJeJSYo99PLE6ou3gTC6Hxqixa+L3PuC4vLRd9HBgThwZc8pBrqBGy7HmIQyM0ijZiQOY/dsElEBq2JG3kwENu7BvKpneeun8rRlqajQvxx5nDBnpwdq15hljYIncSCDHYEjFdiQMwRytVfMQXeodpnME2uh37V1XkDtA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c357007-279f-4cfa-a015-08ded5fd7513
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 16:42:50.8164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wOWvq9s32iC/Ei97xMmAZ6BH4FNel5p+7KAzEUh/4mtHadvrkaaeCA/nVIZ140VC8SwG/XbmE5YFzylYm8/jgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782751401; x=1814287401;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7fkgJ3BjEX4nVZy3+OD5bb9J4LFxYHuGCm6aR+VYqaw=;
 b=IdIz2cwZvUTOzbpqXJ9GccJAhExQk7afaNQG3Ryd74kk4e0omPKmIePE
 pN2XE5/BRLnKSz8eoRnkfDpRtkn2D6ybrZr/8gR+PHtHVFThqj9Kf68VI
 nb4QbgdeFNpzICt1BhFzcd70dJ7FsRPfNfScJU3gawnobFQwO3ESqPBab
 Jp4M97BgPUDHeXR7/J40RdkUSw10XXMWKczdD2LEvbMsQrIsnRnUwwyrM
 vFBZbmAPbkHo3WbIxx4QTYKFGJCThkn7sr33j73sZvllepLAhmgtm23EX
 P5P1xtu+VieEntr67ABUzFFv7Wj1puzZqw6StXQfQTXjfnftPDJG6TExK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IdIz2cwZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
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
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:acelan.kao@canonical.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,canonical.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54A7F6DD723

Hi AceLan,

Some more comments below.

On 22/06/2026 4:57, Chia-Lin Kao (AceLan) wrote:

>>
>> Because 100 iterations of 100msec each - this translates to up-to 10
>> seconds, no?
> Yes, just in case it takes longer.
> I think 5 seconds should be enough if you feel this is feasible.
5 seconds also sounds excessive, assuming the majority of the systems do 
not support / enable MAC passthrough via the FW feature (and I have a 
hunch it is the case). 2 seconds... maybe, but then you say that in some 
rare cases it exceeds 2 seconds as well. What if in some even rare cases 
it exceeds 5/10 seconds? Perhaps because of some glitch it will not come 
up at all on this cycle. Should the driver always wait?

> I wish we can detect if the MAC passthrough is enabled, so that we
> know if we need to poll for the MAC address.
Unfortunately, like you I am not aware of any way for the driver to know 
whether MAC passthrough via FW is enabled. Because of this we have been 
exploring a simpler way to support this feature via ACPI objects (which 
are set by the BIOS when MAC passthrough is enabled and are easy for the 
driver to query). I know some vendors have already implemented it, and I 
am currently drafting a patch to send.

> For the FW interrupt mechanism also needs BIOS support, and we don't
> have the power to push this.
The mechanism I have in mind does not require BIOS support - the 
I225/I226 FW already supports the required interrupt, AFAIK - it merely 
needs to be enabled in the igc driver. With that said, there still 
remains the question of how to notify the network stack above us that 
the MAC address has changed post-probe - and whether it is even supported.

--Dima

> 
>>
>> Thanks,
>> Dima.
>>
>>>
>>>> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
>>>> ---
>>>>    drivers/net/ethernet/intel/igc/igc_main.c | 48
>>>> +++++++++++++++++++++++
>>>>    1 file changed, 48 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>>> b/drivers/net/ethernet/intel/igc/igc_main.c
>>>> index 2c9e2dfd8499..fa9752ed8bc5 100644
>>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>>> @@ -11,6 +11,7 @@
>>>>    #include <net/pkt_sched.h>
>>>>    #include <linux/bpf_trace.h>
>>>>    #include <net/xdp_sock_drv.h>
>>>> +#include <linux/etherdevice.h>
>>>>    #include <linux/pci.h>
>>>>    #include <linux/mdio.h>
>>>>
>>>> @@ -69,6 +70,52 @@ static const struct pci_device_id igc_pci_tbl[] = {
>>>>
>>>>    MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
>>>>
>>>> +static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32
>>>> +*rah) {
>>>> +	*ral = rd32(IGC_RAL(0));
>>>> +	*rah = rd32(IGC_RAH(0));
>>>> +
>>>> +	addr[0] = *ral & 0xff;
>>>> +	addr[1] = (*ral >> 8) & 0xff;
>>>> +	addr[2] = (*ral >> 16) & 0xff;
>>>> +	addr[3] = (*ral >> 24) & 0xff;
>>>> +	addr[4] = *rah & 0xff;
>>>> +	addr[5] = (*rah >> 8) & 0xff;
>>>> +}
>>>> +
>>>> +static bool igc_is_lmvp_device(struct pci_dev *pdev) {
>>>> +	switch (pdev->device) {
>>>> +	case IGC_DEV_ID_I225_LMVP:
>>>> +	case IGC_DEV_ID_I226_LMVP:
>>>> +		return true;
>>>> +	default:
>>>> +		return false;
>>>> +	}
>>>> +}
>>>> +
>>>> +static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
>>>> +					      struct igc_hw *hw)
>>>> +{
>>>> +	u8 addr[ETH_ALEN] __aligned(2);
>>>> +	u32 orig_ral, orig_rah;
>>>> +	u32 ral, rah;
>>>> +	int i;
>>>> +
>>>> +	if (!igc_is_lmvp_device(pdev))
>>>> +		return;
>>>> +
>>>> +	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
>>>> +
>>>> +	for (i = 0; i < 100; i++) {
>>>> +		msleep(100);
>>>> +		igc_read_rar0(hw, addr, &ral, &rah);
>>>> +		if ((ral != orig_ral || rah != orig_rah) &&
>>>> +		    is_valid_ether_addr(addr))
>>>> +			return;
>>>> +	}
>>>> +}
>>>> +
>>>>    enum latency_range {
>>>>    	lowest_latency = 0,
>>>>    	low_latency = 1,
>>>> @@ -7259,6 +7306,7 @@ static int igc_probe(struct pci_dev *pdev,
>>>>    	 * known good starting state
>>>>    	 */
>>>>    	hw->mac.ops.reset_hw(hw);
>>>> +	igc_wait_for_lmvp_mac_passthrough(pdev, hw);
>>>>
>>>>    	if (igc_get_flash_presence_i225(hw)) {
>>>>    		if (hw->nvm.ops.validate(hw) < 0) {
>>>> --
>>>> 2.53.0
>>>
>>

