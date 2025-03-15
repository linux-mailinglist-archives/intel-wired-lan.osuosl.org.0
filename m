Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 136DEA623E7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Mar 2025 02:18:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81E7860783;
	Sat, 15 Mar 2025 01:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qfzw6tVL6rUz; Sat, 15 Mar 2025 01:18:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE4FC607E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742001499;
	bh=L2+uoAw5Y63rxMHz5gs4kG/aNfIn+8tzWvCSlaOaR8w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rm8dVwqkUBH7988FUQvGlJzZZZ6OvT6EPRiisQ8hZNzcJunhtmAVmcwQjBxMcEgvX
	 8CFx0Vt9wUx2c0ZujL8pr9ttWoatKUgUsjZU/MJ3LISNVnEsPWrMEGPePonScpiMWc
	 z3Ao1Trhx+KAGvIhOY7t9Vtwcaqxjm4nHEBsoxbfONBsZ6frdWfAZ/bmr1b+6kJ4hS
	 KWumZtPpY09W40M2Ops/QUCwjTMcE4YOIssetrROten87x6zGXMllWcAWYbyDxfvuF
	 8Zn0HALnLRFC5fw+qzwccvD7eL5fQE7uO+nM6hBbF35WII2mMVLFmXFPmhl6Tt5v6B
	 eRGBLgqeeTs4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE4FC607E3;
	Sat, 15 Mar 2025 01:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9ACDFC8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 01:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86898401B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 01:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CoF2POVJC8JC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Mar 2025 01:18:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sridhar.samudrala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF7F640169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF7F640169
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF7F640169
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 01:18:15 +0000 (UTC)
X-CSE-ConnectionGUID: GVNVs5RPTjit3TZoqGiROA==
X-CSE-MsgGUID: uLozW9XATzCL1jSMfndwDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="30754074"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="30754074"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 18:18:15 -0700
X-CSE-ConnectionGUID: muw1NUWeRSWoturt0RbH+Q==
X-CSE-MsgGUID: izg6v3rcRXyCMiZN3BFuUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126078706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 18:18:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 18:18:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 18:18:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 18:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r1+aanhFuP0FonZnO0JElxvZ9fUi1QIlAPRAPHGW7euJEr8QqgY+KE2xGN3T2KwP3sHPoFmvKx6evl64f4NR6XGPsaUSX6IidQYkc4JaVKapbd4XpS9SPImKVjzQdvZ1MnjD+8A/JOrucJdOSDrKXAl1khbw42ipn5fwxnbByKyacxISmq6i4mx+lcUJ9Gs+zyxue3FMBidZb/ns0aCxn9P1knV3DHArdfE27S5L2I3zanMuR9Cec7iXX+9gNa7orxJBkc87SyIqss6lt+y/+UsSyfTTLhy+OVFm4YmYXIp7v/uaH/qQAOZsl0kve0mLzfif/6S46b6OPavXv21vIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2+uoAw5Y63rxMHz5gs4kG/aNfIn+8tzWvCSlaOaR8w=;
 b=XO1H5WfEff2/8c4w7EEkdCq52cK9HNrpY+ky2Wm+iOKs+f/+cwSM9KX344I8/40JZ6hl3PfoIFA7O2uJZfHH5aozZc+IqSVzdgyfBW7eC4gToH/ri35Ip8pYlguCE268KWW05cuHjRl+esV2D2Q5WM+qHKJ+cMBx+KogQDx2M+v6PCy1psWp2Mr0wwdFyxzdyZl2mN0l+9NG0GKOzqp4UbzDCf9PXquGQdm3XLAMwsZrKKVHmFZ9lc/sxlO8l6UYB3pd0UMTnHm2yCVG2xPk42qmziyKqqNI+jy2dpffi3E1uDWxRUebHWCDdL163fNlHzDbI8vgEnIKOaXauC3FmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Sat, 15 Mar
 2025 01:18:03 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::9251:427c:2735:9fd3]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::9251:427c:2735:9fd3%3]) with mapi id 15.20.8511.031; Sat, 15 Mar 2025
 01:18:03 +0000
Message-ID: <8b4868dd-f615-4049-a885-f2f95a3e7a54@intel.com>
Date: Fri, 14 Mar 2025 18:18:00 -0700
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
CC: "Ertman, David M" <david.m.ertman@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "jgg@nvidia.com" <jgg@nvidia.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
 <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
 <20250314181230.GP1322339@unreal>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20250314181230.GP1322339@unreal>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::26) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|PH7PR11MB7608:EE_
X-MS-Office365-Filtering-Correlation-Id: 36590a66-7551-485c-82d0-08dd635f3b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkMzWGdGK2l4YWVSZi9ZaVc1SEFiYVUvK3lManRPYUliVWV1NXR4eDZ0dEVF?=
 =?utf-8?B?NHlVRHlrUU1IWjFuSEFyYXhRYmxxb0F4cXlkclNhSWFuZmVVekVFY0ljdTdC?=
 =?utf-8?B?MkFSbUpwK3NxVEJTMWhSOUdnMUJPa0tMOTRGU2wvY0JySlQ3VVFJYlpiYWpL?=
 =?utf-8?B?T1hoMTh3RHpVbGNjMnRqOWF4eHFmVWU4NkdlYzdHaURMaVg1d1F2VmtWTzBB?=
 =?utf-8?B?MTZ3dEtHQlJNVnFxZXNJSktsVXErbURDM3BkVVhlS2pOd0pZVU9EWmtEK1li?=
 =?utf-8?B?TmhwejhwZlBPdWhXaGFzMElRc2ZHc0VrZEI2c1lFMEFJNVRnUkwwTUE5ZUNm?=
 =?utf-8?B?T3RlNmZGK29OWCtIN1NteVJMMHBWN05Lb1BHM2RDZ2toTktNRHFZZXo1YUlG?=
 =?utf-8?B?eUx6RVFudFA3aXptZTExWHVaWlhBRDRHRzJMcDYwMUozYklJNm1wRUJFc3NH?=
 =?utf-8?B?ZmQ1THp3czduZVRVajJoTjVLUUFkQXVadTFsMjF2N2dVVnhaTytZNkJGYUov?=
 =?utf-8?B?UDdHUEo5TkREMlNPbkhoaC9tdE9Hd0doMkJyS3RheTdFZ21Ic1B5RmlMd3Nz?=
 =?utf-8?B?VVM1azNsenhlVDc4MklMOVlqRlRrOEpZTE9VSS9SWWQrNE5keGdtdndvQmFU?=
 =?utf-8?B?NjhRbnpMRzU3aHREQitsQ29UNVlqM3RrZ2hwR1BPaGRhTTlCVWwyWWxwN2NB?=
 =?utf-8?B?WnhHSERISWc5QnZFNzRJQkVQTmM1YjVtK2xORXpDd2FOZDVDYVFaOUxCMm1F?=
 =?utf-8?B?d2NyRzZaazRUUnVZR0xTMm5SVGVab3V1cXl2T2tML3QzcGFuSmhIV2lReThR?=
 =?utf-8?B?Y2tBVExKaFpLbGN1YmJOYWthSjFTeHlMdUJUdDVBa0dmYzZYSnYyaGpLVDdo?=
 =?utf-8?B?eXlBUVIvSkdidDBGcTVUcktLZndpUG41MVArdWY1YTBCY3NSTUFxeGYrV01v?=
 =?utf-8?B?ckJmT1VGL2ZuUEFxLzZFZklDRjVuT0IvQ0sxOVY2SVN1TWRDY0FlMEE2eDFV?=
 =?utf-8?B?Ym5nVk5yQ2hYdWJSWGd2WHJaMXhtRjJoMm9BQUEzMDZHMTNhTDU5YWxVUU8v?=
 =?utf-8?B?ZnI3OVJIU0NLNS9ydWsxYXVvZHdLYnlNci9tUTJXdjloVUt2d3JucXVHSXFF?=
 =?utf-8?B?V25QVWN1UFZRd0ExWm42Q2t6cW5McVFpdkRnSkNkNCtML0EvbkNBTWFEU0lO?=
 =?utf-8?B?MkFwbXhSWFRhbGp3K1pEOHBtdEUzM2JNckE0bEw0VUU0SmlLY2xjenNKRFl0?=
 =?utf-8?B?ZXhvZnE5RUQ0ekhmZE43MlY5cTlMTi9GZTJrSXRHK2RRNitFR29HVzQ1ZlRC?=
 =?utf-8?B?NEQ4aGR4QmxTTndpVWszcjZHZ09tc1E3SEdudmI2VG54ZFZHNmxZR29DK2lq?=
 =?utf-8?B?Tk4yNG9sajVZMnB0TG1qeW4ySGZ3ekRxUGhQU2lGUmxhTmxoTnJhQlVMRzFL?=
 =?utf-8?B?MHk5V1kraTF1UzlOMlZWQnJScjl0SXVHV2hJeEZCdHJ0SFdndXZnS28yMWJu?=
 =?utf-8?B?SGdjVHZWeHRucVMvR1crdmhvSmp6d3lmT2FwUkJaZWZIUnJiVkd5dWZidnFn?=
 =?utf-8?B?THl6bHRxMmtzTjNNQ0gvUURoaUFuU1NtUEk0c1ZJMC9uVHVoL1FudTVwM2tm?=
 =?utf-8?B?bzQwT3I1RU03YlhseHdNSHd2RDFLT0h5SmZZUEc3NGlNVlR3YmNLbS8xZDVs?=
 =?utf-8?B?bDdXTjBrTDdlM0d1RjBRdmsrQ0RnRXdCS1o3WE9WMDVYUzg2MGt4V0dRS1dk?=
 =?utf-8?B?TUdXVW9nUWh1V0NKaTZjVVlTbHNNOGJ1K2lsYTZYeTkyU244UzhrTWdXRXUv?=
 =?utf-8?B?Z3NTemFOWDN1TlAxZ2tYR1BiN1VEc0xmRmpGN0M2U2xCNnhHRHY1UkIvRWN3?=
 =?utf-8?Q?WgQFy/ZcOLVyV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTF2SVk0ZnhwQ25rTFBqQ2FNaUFhSW5CRVZyWW1tMS9YUWlxc3hPNm5qRy9M?=
 =?utf-8?B?U055UU5STDhZejdaQldSVWpvNWRydGtEZyt0RUFKYklnS0t4M2d4UktRejhr?=
 =?utf-8?B?dzFSck8wL3lHZTFsTUlVOUlmT2x6TXQxMWJsMWRZWFYvK1IrT1Y3RnNxQUxI?=
 =?utf-8?B?RlR6NHh1OC9peEt1SWI1Q2FTLy9NWjRQY0t3VC9hSjR0ODg3WFZFUGRUMlhR?=
 =?utf-8?B?bU0vMVJDdW9ldzU0R1pmbncvdkRuYmo2TWV2QXpQSFpNMlZDdG81dDc0ZjNG?=
 =?utf-8?B?NnRIcGhpME1tZHZPUEJMWjRQRFNLUDhMOXlya3M5bWxvaU93YWVMem5qVThx?=
 =?utf-8?B?Q0liZWJMekJnTUZ2eCtUQlVLL04zRVVucmJZM21EVXh0S1dNeHdrOEQrZmNZ?=
 =?utf-8?B?UXJ1dkN6WnRVV1pOalIyT24yQmhsQUdmR1pXaVRLaVg0RVBRQnJmbURTc3Y0?=
 =?utf-8?B?Zk5KcWVQWk1nVllzK1V5V1JHd3ptZkNXbXBwSnJIWXFoUjliaGhuazZUdHBC?=
 =?utf-8?B?a2Fab3RLc2dEK0Q4TE93UTUwRUxDK3NpVVh3bkZwOVk5eElyKzVJV0RJN2s4?=
 =?utf-8?B?dTluYmVaeUsrUUY5QVNIb1QvQ3pXeU5OVWpHQUZKbzMyYlVxc2YzcnZzczhh?=
 =?utf-8?B?M0pJK2dMUDQ5QkhvYU55UENTVzA0ckROVUg5dzNMWk1LNWFsaUJaQnJvWmpM?=
 =?utf-8?B?TktDQUgybTUwWmZQL3N0c1lJRk84cVFXRnZMUDdpbjN2eUlGSXBhU2VIOVlQ?=
 =?utf-8?B?aXBoTTFsR3N3bXgwSnZpcE1aQXhBQk9VQ21Obm15eXQ5WTg4VG54d1lqRWUz?=
 =?utf-8?B?MUhDS1dzZEgvMmk1Q1ZTL3BpM1JpMHRMNk1LTFo1WjZhR3Z0NzBDMWN2cXBj?=
 =?utf-8?B?L0M4ck80ZlZUZFQwN0tJc2s4Yi8wbkdYUWNQeGpGZGd6Z0xQQzB6QXZGSTBY?=
 =?utf-8?B?MTZkc1RTWGhSUlo0QlUwUis2ZE5WOEtIM1Yzd21ERXpVRDlZK1U4UGw4MWJE?=
 =?utf-8?B?QnkveStVOFhqWk1DYWs1eTBqNUliR2RHV29jOVdKdmFQUzJVSG1PM0lFdGRX?=
 =?utf-8?B?NHFQZ1BrQWF1aDlEVGNIVWl4Sk01VzhMNjZFbUlkbWtEc2NzVW9rL1JUVmZj?=
 =?utf-8?B?dTExbVlnVEdiL2lMbUhJL0Z3dTYwUDJmQVlKMGNUYjdIbUUrVjFOWkpuRjN6?=
 =?utf-8?B?YWJuN2cxSGRkQ0duNE9iNytPd0RXZURkeGFYRk8zTnV5SHdieGtLTHkzeVZN?=
 =?utf-8?B?T3pJWnZib2FUMGt3ZVVzUkZtbDA0Wkg4QlhxT2RFMzR0SjArL3p4UG9PVTlp?=
 =?utf-8?B?bFd3cjkwRVhMaWVOcmpramtaSXh3K1M4VnpNaDk0NjcrQXBSUkUvaFIySjg3?=
 =?utf-8?B?NzZFUHhiT3JUbnFLaC9NcTJhMDNuVEtySnpmU3ZBVUhPYlNEckZuVlB6VkhI?=
 =?utf-8?B?WUFXSStmVlFrWlFGUWhhT1hIeGorcUs1SGFPQW5SM3ppT0REVGN1R1VnOHNG?=
 =?utf-8?B?SmxJREhHVEgzWTJ2NVJMQWtEMTJzcnZUYmNrQnNpUy82NVozc2lXRWR4SjYw?=
 =?utf-8?B?S2RSbnhIZWQ5VnBmZERiQkVObXUrYTgvajZYVjQ5eTI2TFRJVlhIblNPT1ox?=
 =?utf-8?B?aEt1eXpTZWQzWjJkRndCUG5QbWJBUWpPdUFsNkhSRFJFWDFubjhUaFpCamxm?=
 =?utf-8?B?c2RpcTZuSU1wakpjUzJMQ2E2SjRlakdiekcrWjVydzZIZGNWTWx5UHdZblNY?=
 =?utf-8?B?V0lMbS9qbHhoS21rTE1LeFJMR1Iwb0dzMUJoSGk5ODdudTl3OEVURitSRVFs?=
 =?utf-8?B?ZnpCUVhsdTZhN3F1TWQvSy9iSFpFeW1NY3lYVGZDbUJ1dFpmeGNFZzQxMHNP?=
 =?utf-8?B?aTlJVFc1K25IWEZnOUpwdFNJZDBVbHV4RHhCUE5RVUI0YTVNcWJ3Wk9MTnZX?=
 =?utf-8?B?U2RCdEVSUE50WHhyRWVpZzlTYU11dVh2bTF1ZXFPTDk5RGJIMS9QTDVOR2VR?=
 =?utf-8?B?TjdlQWpxbGt0V3VvOVpDVWZUVFppc1hPT3hNSkw3NjdEQThvU2MwL0dZUDd0?=
 =?utf-8?B?a0EwR3B4UE5kd0Z5cXJKY0VuWUx1UU9kckkwdEduRnBuY05TNnlqMWdneVo1?=
 =?utf-8?B?TzlDRHdjWXFTTmNaaVpjUGhGY2dRWWQrK1gyZHRRNkdlTVltNGRTVlBSZVFk?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36590a66-7551-485c-82d0-08dd635f3b80
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2025 01:18:03.0198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z4aKAE8m0+9F3tbtcuB9oRIAyPSvF+sgh25rsBACCJSfm+wkRoi1cClbTD665EWZjb44umri8oyrog78r22mmGh+kkrSKohi9U8Hru8wQuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742001496; x=1773537496;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QZPy9SHYWrIsIJ10LYKFHpHmFfkMkaJ0bdIo1+NL9ro=;
 b=eE4Yu3kPEuVZFtCuwsvTwur/4A7GuIx7FAzgQ2WJEIBtD7xdqp4xqIQM
 6xgOprBz9gdawUjvdZpMv2Hkup4HcNSbhCfvvHJ12KajP2To9/EKY+usk
 IFtfg4WUtzSTlXKOPeBU7Dvqj8834aW3NVT8Qm5N5dOjdQSPE7LnUCVOM
 dJMYp+8kGFH5v6CQOPTcUexbm7TyZU3mYKYJJrVZzmG8nah5zDsu85YDq
 4aFXDbvJXDIzhIDAGIBZhD6uVW6Ia0d94sTQ7O7PjXJPfuYED6kdwOkjZ
 5CZuthX4BprW3eWA4YGGQ0BF3Xfp9rxKPUFRQ2mizLhuKbp6BPqXDwrmy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eE4Yu3kP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
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



On 3/14/2025 11:12 AM, Leon Romanovsky wrote:
> On Thu, Mar 13, 2025 at 04:38:39PM -0700, Samudrala, Sridhar wrote:
>>
>>
>> On 3/2/2025 12:26 AM, Leon Romanovsky wrote:
>>> On Wed, Feb 26, 2025 at 11:01:52PM +0000, Ertman, David M wrote:
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Leon Romanovsky <leon@kernel.org>
>>>>> Sent: Wednesday, February 26, 2025 10:50 AM
>>>>> To: Ertman, David M <david.m.ertman@intel.com>
>>>>> Cc: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; jgg@nvidia.com;
>>>>> intel-wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org;
>>>>> netdev@vger.kernel.org
>>>>> Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
>>>>> consumers
>>>>>
>>>>> On Wed, Feb 26, 2025 at 05:36:44PM +0000, Ertman, David M wrote:
>>>>>>> -----Original Message-----
>>>>>>> From: Leon Romanovsky <leon@kernel.org>
>>>>>>> Sent: Monday, February 24, 2025 11:56 PM
>>>>>>> To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
>>>>>>> Cc: jgg@nvidia.com; intel-wired-lan@lists.osuosl.org; linux-
>>>>>>> rdma@vger.kernel.org; netdev@vger.kernel.org; Ertman, David M
>>>>>>> <david.m.ertman@intel.com>
>>>>>>> Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support
>>>>> multiple
>>>>>>> consumers
>>>>>>>
>>>>>>> On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
>>>>>>>> From: Dave Ertman <david.m.ertman@intel.com>
>>>>>>>>
>>>>>>>> To support RDMA for E2000 product, the idpf driver will use the IDC
>>>>>>>> interface with the irdma auxiliary driver, thus becoming a second
>>>>>>>> consumer of it. This requires the IDC be updated to support multiple
>>>>>>>> consumers. The use of exported symbols no longer makes sense
>>>>> because it
>>>>>>>> will require all core drivers (ice/idpf) that can interface with irdma
>>>>>>>> auxiliary driver to be loaded even if hardware is not present for those
>>>>>>>> drivers.
>>>>>>>
>>>>>>> In auxiliary bus world, the code drivers (ice/idpf) need to created
>>>>>>> auxiliary devices only if specific device present. That auxiliary device
>>>>>>> will trigger the load of specific module (irdma in our case).
>>>>>>>
>>>>>>> EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
>>>>>>> true, load of irdma will trigger load of ice/idpf drivers (depends on
>>>>>>> their exported symbol).
>>>>>>>
>>>>>>>>
>>>>>>>> To address this, implement an ops struct that will be universal set of
>>>>>>>> naked function pointers that will be populated by each core driver for
>>>>>>>> the irdma auxiliary driver to call.
>>>>>>>
>>>>>>> No, we worked very hard to make proper HW discovery and driver
>>>>> autoload,
>>>>>>> let's not return back. For now, it is no-go.
>>>>>>
>>>>>> Hi Leon,
>>>>>>
>>>>>> I am a little confused about what the problem here is.  The main issue I pull
>>>>>> from your response is: Removing exported symbols will stop ice/idpf from
>>>>>> autoloading when irdma loads.  Is this correct or did I miss your point?
>>>>>
>>>>> It is one of the main points.
>>>>>
>>>>>>
>>>>>> But, if there is an ice or idpf supported device present in the system, the
>>>>>> appropriate driver will have already been loaded anyway (and gone
>>>>> through its
>>>>>> probe flow to create auxiliary devices).  If it is not loaded, then the system
>>>>> owner
>>>>>> has either unloaded it manually or blacklisted it.  This would not cause an
>>>>> issue
>>>>>> anyway, since irdma and ice/idpf can load in any order.
>>>>>
>>>>> There are two assumptions above, which both not true.
>>>>> 1. Users never issue "modprobe irdma" command alone and always will call
>>>>> to whole chain "modprobe ice ..." before.
>>>>> 2. You open-code module subsystem properly with reference counters,
>>>>> ownership and locks to protect from function pointers to be set/clear
>>>>> dynamically.
>>>>
>>>> Ah, I see your reasoning now.  Our goal was to make the two modules independent,
>>>> with no prescribed load order mandated, and utilize the auxiliary bus and device subsystem
>>>> to handle load order and unload of one or the other module.  The auxiliary device only has
>>>> the lifespan of the core PCI driver, so if the core driver unloads, then the auxiliary device gets
>>>> destroyed, and the associated link based off it will be gone.  We wanted to be able to unload
>>>> and reload either of the modules (core or irdma) and have the interaction be able to restart with a
>>>> new probe.  All our inter-driver function calls are protected by device lock on the auxiliary
>>>> device for the duration of the call.
>>>
>>> Yes, you are trying to return to pre-aux era.
>>
>>
>> The main motivation to go with callbacks to the parent driver instead of
>> using exported symbols is to allow loading only the parent driver required
>> for a particular deployment. irdma is a common rdma auxilary driver that
>> supports multiple parent pci drivers(ice, idpf, i40e, iavf). If we use
>> exported symbols, all these modules will get loaded even on a system with
>> only idpf device.
> 
> It is not how kernel works. IRDMA doesn't call to all exported symbols
> of all these modules. It will call to only one exported symbol and that
> module will be loaded.

If we are using plain exported symbols from all the parent pci drivers 
and make direct calls from irdma, i would expect that all the drivers 
need to load based on module dependencies.

Are you referring to the usage of request_module() based dynamic loading 
of the modules?

> 
>>
>> The documentation for auxiliary bus
>> 	https://docs.kernel.org/driver-api/auxiliary_bus.html
>> shows an example on how shared data/callbacks can be used to establish
>> connection with the parent.
> 
> I'm aware of this documentation, it is incorrect. You can find the
> explanation why this documentation exists in habanalabs discussion.

Will look into that discussion.

> 
>>
>> Auxiliary devices are created and registered by a subsystem-level core
>> device that needs to break up its functionality into smaller fragments. One
>> way to extend the scope of an auxiliary_device is to encapsulate it within a
>> domain-specific structure defined by the parent device. This structure
>> contains the auxiliary_device and any associated shared data/callbacks
>> needed to establish the connection with the parent.
>>
>> An example is:
>>
>>   struct foo {
>>        struct auxiliary_device auxdev;
>>        void (*connect)(struct auxiliary_device *auxdev);
>>        void (*disconnect)(struct auxiliary_device *auxdev);
>>        void *data;
>> };
>>
>> This example clearly shows that it is OK to use callbacks from the aux
>> driver. The aux driver is dependent on the parent driver and the parent
>> driver will guarantee that it will not get unloaded until all the auxiliary
>> devices are destroyed.
>>
>> Hopefully you will understand our motivation of going with this design and
>> not force us to go with a solution that is not optimal.
> 
> Feel free to fix documentation.
> 
> Thanks
> 
>>
>> Thanks
>> Sridhar
>>

