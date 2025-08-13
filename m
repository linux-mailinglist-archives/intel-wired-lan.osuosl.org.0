Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D94BB24218
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:00:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD0A481024;
	Wed, 13 Aug 2025 07:00:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYkeM80tc1v7; Wed, 13 Aug 2025 07:00:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B49D8102D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755068418;
	bh=9+fm5x27WAV9urzCoXBYD+H69WceYmwFQnylzVAgTk0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NnLwyHtA2Q+eAZ4TM/uXbco7uJmCTBcjOEFZrL35wZ9Pp0jMeLbyHqIbbTX/4B/Y0
	 ZpvBs7Ptths+qO3ckFeIpsW2U/GODwVfYRecN1pQ+mrUuubi7uUeQLmkPhAqsZzbJ+
	 qJ6tOGXoZVvCUPQGEeQdt55F/8JOR23MyYxVqQ13V80k/ApG0Z6VewZ/jJFUmUhjS0
	 dtCV54o/69E5Xl9uk8kdty/XdvCPgo4HXds0RCNWnqPgjhNsBjgVpfYjRON4eI7oZd
	 oUdVxsNGrKkqrdWOugva3CHhR1ZDNgO4lD1t0A78QoFfUSc1ze5kN80lT2mCJGD/ow
	 9wB6mRj+cOogQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B49D8102D;
	Wed, 13 Aug 2025 07:00:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A68E51C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9860B400E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B3xhXjIthDd6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:00:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.44.54;
 helo=seypr02cu001.outbound.protection.outlook.com;
 envelope-from=rongqianfeng@vivo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C596D400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C596D400F6
Received: from SEYPR02CU001.outbound.protection.outlook.com
 (mail-koreacentralazon11013054.outbound.protection.outlook.com
 [40.107.44.54])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C596D400F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:00:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDp3ik4eLQnmnjT5dbXJYXJPEIXBFQmoktruEE8SA6YdXA+MqDKElFKn58iZFzasw6tv7pxejfP8Ku67UqAsf0AsjHKH+SPWeuvW/o2xsCmloLN2qeJOBIlO1ke0eGh3knPEw4+Pi6ihB3hbQ4HdJecwWK9HbhFJTV9zSUQIjYQG663DhokGO34YsQ0M9HzpoOAvtZ9SADtvGkstdYvC/BmQCoO3WncA3p+f/tICNOCpqMzkvVW/uOIpabMH+hvYfMwpBWGE6Q8inJCPYY9/NxJKOFVqfmHaBM2gQt5+ZIDCpQyf7oi0zfLkH3sJRVSvgHS291G2aWuffmrtWEokEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+fm5x27WAV9urzCoXBYD+H69WceYmwFQnylzVAgTk0=;
 b=BXNFFRuOuWArwVx/6JP2GLzHGRsxSddm91JXOaSeLCXxGjB9DRmu6VcPewsZc1hvq271j7cPYpx14LJRDDWLLp/7c0u0bo5dsW3vxQ7Z/AnVtg1kTyKy2glRIk0SWr20jOSYnFb+QgT80xczDA7sJVyX1v3diLPN10LaQnRJAfCI/5UQZzdxSM+gaE50ZVugbdyZdVUsutyJbb5SE46+cLscotM9jsmDnse7Z9P/PkKq0iqPUNE+DX9kSCPdWzmsBr7YRfwksg213DaCxrvPBYVposAFPNwhaxqXA4EZmaCbkLcFzJzHgXrHY0QhxJag503OLjWZ9pUcBkzOrg6HwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 JH0PR06MB6559.apcprd06.prod.outlook.com (2603:1096:990:2f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.22; Wed, 13 Aug 2025 07:00:10 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666%4]) with mapi id 15.20.9009.018; Wed, 13 Aug 2025
 07:00:10 +0000
Message-ID: <d015dc98-cacb-456e-ba31-3cd387fe1244@vivo.com>
Date: Wed, 13 Aug 2025 15:00:04 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:XDP (eXpress Data Path):Keyword:(?:b|_)xdp(?:b|_)"
 <bpf@vger.kernel.org>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
 <20250812134912.6c79845e@kernel.org>
From: Qianfeng Rong <rongqianfeng@vivo.com>
In-Reply-To: <20250812134912.6c79845e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TYCPR01CA0055.jpnprd01.prod.outlook.com
 (2603:1096:405:2::19) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|JH0PR06MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e22adfa-977b-4668-603c-08ddda370b68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SCtNMG42aW5Hc081Y3FacGpudTZFcklmbkhnRVVsbjZHRFZQTEF5RFBQaWcx?=
 =?utf-8?B?RXhoYzh1QnJMK25iTlVOSElrd2hObktNNFFabi8xOXBaZWdQYVBCRjl4VE10?=
 =?utf-8?B?clV4WENTSVBUUnhmUmowZnFMNDJUb3FXeXlLckEvRDlhdGVaejg4TStMdHNq?=
 =?utf-8?B?SVo3YkxYdjVVL0lpN3ZuTmx1TUNsdlJjK051bmhvSjdVUURaWjg0V3RaNmJo?=
 =?utf-8?B?d3NBaDdIdCs5Y0k3T1RKWWd1RHo5QmF5RXd1Wm5obVE4MitwNmp3d1l3Y0JC?=
 =?utf-8?B?OGtUcFBRMlNDNWpWRkJlYXNYVWltVG1OVThkSEYzM1NhWmhvSVp0N0tNSWdN?=
 =?utf-8?B?MEdaWFdiMkE3cGlrZkh5NEE5QUF4M3ZjSFEzWGE3RmJ5aFFDckJSMG12NVNa?=
 =?utf-8?B?YWlxRTNIMEhKQk5zVjdQa1l6UzVTS0ZpcnBtaXRXcGsrUlhITzg1bkNnckZI?=
 =?utf-8?B?eTVKR2tDWU94NVNoc2dxWjBHYklYSEhHdHh4YjNGQlVGQ2hseGpUcGsvYk1K?=
 =?utf-8?B?Q05BMlRVRGhaaVAwS1NTc1NhSGs5RXdvZUMrMnJuellqY0tRWG1MNENxckxP?=
 =?utf-8?B?MGNFdThJV2NJMnE3Y1VRTUdlbXgvZnY5L3p0K1oxYVpkN0s0cGV0Wkx2Qkk2?=
 =?utf-8?B?YmVnZmJTTnd4a0xucU9kQnE5NU15bTRLNnpwSHBJWmx4VUN3WTZSaXR2SThC?=
 =?utf-8?B?WUFUdHBNVG1zY0s0U210TTJDVGYzZTRtMTRCeW82SHo0d21PejN1c254SVV4?=
 =?utf-8?B?UUZ2Zk5MQ0svcWFqMnJmdk9jdEVWaVBCNTNBVHRZcmhiRmROMEFDTnRrT2E0?=
 =?utf-8?B?YXV4dTQwTXBZTUIrV2Jkekh0WmhDVXpOejJ5MWh6aG5Tc1NrQXFzV3ZiN3Jr?=
 =?utf-8?B?ZWNrbUtOSGJ0dzE5WkJJcWN3dHU1NjFOQjdxd0xhRUlKdlBNM3VGMnJ4WndP?=
 =?utf-8?B?OFFIaGppTnR5QmYyaWN2YkxrQWpPR2wrU2hEeE9JMGg3T0V5RERxLzBra1lC?=
 =?utf-8?B?UE5kMDlYRDBpWjB3WERpY3BLeWh2TmRkNlN3NkU3NkhWMmZ6eEVWOU5RNmUr?=
 =?utf-8?B?VXNxYkRPQmlQM3hLeWFmZVhaQlh0WE8vZzR2ZmdZSGg4RGZ5bUNKOE5MQW85?=
 =?utf-8?B?YlNpTHJCeHJkVFNnN2VFM0pTOUZMM2drSzhTSEFsVnptbDU5ckFlOWhwMXVM?=
 =?utf-8?B?K3p3UnBNQ2oreFVpaW5PVXZJcUdBRmRLUTlzUXF6bU9sQWt5NTB3dFB3cmpT?=
 =?utf-8?B?MFl6dGtJaGoraHZhQlhSMDdLY1hVcFBIVDlRREpJNTRoRzB2emtJRDRiZDBW?=
 =?utf-8?B?Z25yMjh3eGwzL2VSclN5U0RBN1JGTGpjSnAxV3AzVGpqWTQ2WTVkcG1ReXcr?=
 =?utf-8?B?QktNUWVSNno5M0RXT0pzTE5hZXFRRkVWd3dQbXVIYXd0TW9TWlBjVEw2OUg3?=
 =?utf-8?B?c2cxMXBhc0h1NmFWcjBkWHIwTThDL3lpcWkrZm9PbHo4OEEyc1REYWxuNHA5?=
 =?utf-8?B?S3VkengzNEV4NjlMVkNYbEt6L016RnBIaDZuVFhBMkRFam1SNDZXSVgxbDZw?=
 =?utf-8?B?Nnp2SlByQ0kzZUhUQ2FZdVdXNU5RckE5T0VmU2o2U015NTVPZ2Qxb0ZFbE5m?=
 =?utf-8?B?YzhNTnpuMVJoOFFsVUQ3Z3B2YW43UlpwcitWOENHakNpeUFQbjE1TGE3Z3g0?=
 =?utf-8?B?MithbnpQUUw0S3VadXQwcnJHQ2Q3Z1hhOGdVaHJVbEc4K1VOZjhGcGFjREF0?=
 =?utf-8?B?Nk1RNjN4Y1czZ3BRQlhRcTl0YW5Ta0lEalVKL1M0RVVMSzZQQzNzMHN0NUdo?=
 =?utf-8?B?YkNOREJQNnJLQTZLVkZMaXBvTVZtSzY4eklxVWtBbDU1WXhUQmhtc24yY08v?=
 =?utf-8?B?bkNnTlpRYVcxY1ZkR0wrcVpITjREL3RGOEN2Nk9ic3IxS3NHWWtWdHlxc0Jh?=
 =?utf-8?Q?Z7fLR5puZ0c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SI2PR06MB5140.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTNqY3FIdHNjbDhtWGQ0dFdTU0VCQ3FTYmhabEhjM1pOak9hb2RucVgwbklJ?=
 =?utf-8?B?L25QNVlYNG95ejVXeDJwVjNWUUhQemRsUm1XQlFPR0ozUWtEN3R6MTh2d0d1?=
 =?utf-8?B?ZGM4SXZNRDArVnMraW53QzFzcWFVbThDOFJTcXFLNW1kbFNjSEFGd3VMVDlw?=
 =?utf-8?B?MzNwSEo4VVI2NTFqWG4wcnRwdDE0TktCSU84TFovQWc5UThHdVB5eWg5ODQr?=
 =?utf-8?B?SnRqVWlOTlEyYlhlQzFqcUF6dFlFdzFiUU9TdU1EUlg0c2RwQWxwZnU1aDdV?=
 =?utf-8?B?UXR1WFdOMUxsSHg0VDBBdEU5dTJOclJpbUIwTE4yaUk2MExYQkszMDB4Z3BI?=
 =?utf-8?B?ZDNCSzV6dkRxUDhQL3UzeFJwNWliMmkzZCs1TlZ6NDRWVStYQS9YaFhEZUlo?=
 =?utf-8?B?aE5UVXRJNXdCV0lqaFY2elNTMmd4M1ZTdnk2WEVMVTNISG5BeUFYdXNYS3FL?=
 =?utf-8?B?ZGFpaTVxK1hHdmZqaFRtVjFjZDRSTWRnS09CcTUzRTNZREdXb0wvVXhxWjZS?=
 =?utf-8?B?SnZUcWt2WEQ2WVlzcy9YYlNXU0RNbnZzcVg1ZkVZZFloM0tWUVlxUTQ5dXZi?=
 =?utf-8?B?NTZWQlBndXBrR3hYWjBCbEp0SlkwbGI4SFJjN25nRytOZzZLRzBZQms2YnNv?=
 =?utf-8?B?S1FNbU5tL0c1VFdBSW1YeStmcDh6TldoN1VlM3Z6NkJVUGF1RnhqYzVxdXlJ?=
 =?utf-8?B?anNZN2hneFcvRkdUdWZHZnlkR1krS0tRRCtiSkJMSGxIVU5FZnpWVzl2RWxR?=
 =?utf-8?B?SUdzNEQ3NFFuVnZPcDlrRy8zQ3V3RmFIODMrTWNCTHdaQ0lFbGcxVVVZK3F6?=
 =?utf-8?B?dTNGbHdEbGZwN213cnh4V25pcEtIWk51SXNWTkJBQVl2NEdmTjJENTBFSEZO?=
 =?utf-8?B?QjRVSzFMZElJbXg0SGxkTk5GbWpqSFhKWWUwSUtsaGtKS0E4MkdsUnRKc2du?=
 =?utf-8?B?Z3dsczlOc0NabStGcTJteFUzRWhGVExGOFVBV3FRRG9xeWdzZ2FPeHVqQy9T?=
 =?utf-8?B?OWVPY1M2akxsbUx4czRWM0Y0Sk9vYWY3TE50Q1pxUFNTTnp0QTFIajl1ZXYy?=
 =?utf-8?B?YnFQdEd3OVNjdnB3aHluQ2NJOFNSVUlITEdkQ1BVMHBTMDF0MWNaSE5JczE5?=
 =?utf-8?B?MjA3K0VhRlAwRDQybm9LOG45dmdURHVZY29jc0h5REphT2Jybkk1WkRvUEFp?=
 =?utf-8?B?Rlo4VE5VS29iaVZmODQ5RTFNQXJaVjJTcVBTSWwreTFDTVJUWFNkSW9OQlhW?=
 =?utf-8?B?aTVpd2wvNW1LV21NWmRScHBpSzllVDlDODJQYTJUN1MyVkxXdWF0U3VHNmtL?=
 =?utf-8?B?Nm56MkJyQ0MrTW1INDg4UnczeDBKM2s4dWZGU2tMdFdMZ2dQV0ZjWC9sMFZK?=
 =?utf-8?B?V3JtaFZWb1c3Y2ErckdJVWoxTXRIeUlkVm4rbHhFY0MzaEpPZGlISFVDZS9y?=
 =?utf-8?B?M29VUDNOQXpzTlZnelpCMGJUd2ZuaXo0cDFXNGtOYnhpVTZleXk1THRXbVQ5?=
 =?utf-8?B?dTFEVFNjbUhBWWVRZTdPRlAvalkwZHpzV1FTNWVPaFpEYTBCbWRQdlo2aktL?=
 =?utf-8?B?dVE1NzkzMzBTZE5mUEk1Q2JqZ2ExYUo5cHRmV010bFFrenhHaHhab0ZwNmlr?=
 =?utf-8?B?enZHVW9EVTNxZUgxb1V0MXVsN3YyN29BZUlBbEpXV2Z0REdzMkFBdEhpN1dy?=
 =?utf-8?B?Q1B6aE10ZW9ueVFIMjQycitXVHNLM0oxQi9wakliSzllMzlCVVJRU0tvTytn?=
 =?utf-8?B?alh2SGFycktTMTJ5S1pweGZrbDFEeHdnYkZHaW5mNDQ1UVVGSGgvTlFtN1Q4?=
 =?utf-8?B?SHJEaGVjTHIyN3BzYXY3L2ZvNHVSam5qenl0dDlSRXJZeUsvbkRxWDFRTWlR?=
 =?utf-8?B?N0hnUmh1Wk4yRVZOUWNxRUk1YjFyT1dxTy80Y1VoSU84S2dNdUNzMVh5WVFR?=
 =?utf-8?B?UitHTi80RDdEeVdtQjkranU1K2VZd3haTWI0OTlDUVJWR1RuaGpJS1V3dTh6?=
 =?utf-8?B?N2VoNzNUelpOVnpzZDMxSnJFNVl1b3RMWUM3a0dWM1g3TVZ0UytVc2ZzN29r?=
 =?utf-8?B?NWpuTXZLZ0NmNHdac0k2Y0pjbHQybHdNYm02RDJVY2pBdnJXTDVjWHpsWEFJ?=
 =?utf-8?Q?BQyeFwqxIlZCg1Uh56iKk18RG?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e22adfa-977b-4668-603c-08ddda370b68
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 07:00:10.7796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kL0wa+4kxtx6GLDX2EQvjfOnPxMa/g5PLvFNwcd6fYWONt2Okv25l24w8tWoJ596ZqlBhmOufJcrxQOTC18bXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6559
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+fm5x27WAV9urzCoXBYD+H69WceYmwFQnylzVAgTk0=;
 b=a/QI2M1CAhyo9hKK4mvyWfCYrszFtkiJQgJgm5MQ6hUjBIPKifNX0WMILn+COeDw1hKG2BhvI7YOx6mky05vVVI0LFE7DitB1VpW82xDL08gs084E+bnIET2LW8EegZwhv24k5arIlWeRQ7w2S8x1mG/VrUfVdQN8KkWuz+54tN6Dei1Jx8avtbg+o7hVxV4iI6JcA7YlYHTbEObK8Zjjx/6pjNuGHE4rpC5TJvnSYOyOtFEYg6m2noLXl3VDfgl+Ckk6n4NJlKRulyF63xOzh0aF9Ipu0Hx/YI4xXRGv6Iju7ptCezZ2bU1y8sfgInLsW7uvx2oKFR7BWAFqfDZ9g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=vivo.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=a/QI2M1C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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


在 2025/8/13 4:49, Jakub Kicinski 写道:
> On Tue, 12 Aug 2025 21:32:14 +0800 Qianfeng Rong wrote:
>> Subject: [PATCH 1/5] ethtool: use vmalloc_array() to simplify code
> ethtool:
>
> would make sense for patches which touch net/ethtool.
> Please use
>
> 	eth: intel:
>
> as the subject prefix.

Got it. Will do in the next version.

Best regards,
Qianfeng

