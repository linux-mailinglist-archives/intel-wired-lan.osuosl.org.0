Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 442C7CE721C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 15:53:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE67A81274;
	Mon, 29 Dec 2025 14:53:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oedhxHLuINA5; Mon, 29 Dec 2025 14:53:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AAD781293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767020032;
	bh=53QdsszUt+lbVKzEKOINFbtJmtyuWqUrhP2zyvSFsMM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8+8MzU1Ncc2Mb53HQroiHiZYuSIh56cb7ydLzPuclz2S6CHKfJXQv3mvvR6XtEewO
	 A7/GO7zfJLbnSFly81qtfxHx/6qj2ah5vLEAHKvV5YuExwwiHlYbx2K9GIE3CJgGP4
	 a3fAbw+lTRrNYvx8zlYEGm3iaTdSMHYavzDj01HKwa5i4eHGIKTHLjP7U7jRaRslOH
	 BtChZFyz7xglyyuJlUbOvBJ+dCRSPN+Jc8dqwCgrhbNrpPd0ZHSfnDzLm6+THoTaNm
	 VU5dbBDSZoTefu3b4PWdw+mm0nSXk2s+Ch9maCKQcL7dysxHvSYzRxF9rjXRz8Fj8v
	 7g0kXpPS83ICg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AAD781293;
	Mon, 29 Dec 2025 14:53:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C919DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF41C81287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZY-Qt5SNfLF2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 14:53:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EFA8F81274
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFA8F81274
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFA8F81274
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:53:49 +0000 (UTC)
X-CSE-ConnectionGUID: cGMNIKR9SxCfHF0/UdDZog==
X-CSE-MsgGUID: Bv8FnuqaRZ2JIpNmk3Cxtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72476301"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="72476301"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:53:49 -0800
X-CSE-ConnectionGUID: UDWBZfM0Q7Gj55UOXIx/Sw==
X-CSE-MsgGUID: BmcLRJWXTXGS/mde6Ym1QA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:53:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:53:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 06:53:48 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.24)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:53:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cY7QaW0cQjLntiJTGS9ESAk85v+WgXtbaivL/JmGC/wZNTz/bYgaDB03GcM65E7erIu7Yaw6qmSgsxQDIjwZtkp4LiiYvL938KhlIBRJ82NnCD2Bm0nhmJl6gIgRaERDDllGn56kTi3RK7Oy9djgvSQLXDVfxHgjftrb7e3LWpg6QFSw4D2ylyGitT67CSxlQXz0TB/1MF+zbnQhfEcUSV+0FWzSQ6O8rJJI5vndy5XAWRtuh3RENui/mP+89Qdg2DrHUhG8KMNkL82pUN31hnHwHUPvaP/RaQv51zLVrS2WCukt6ws/A4c/B1T0+ZhO/qj5iIVFBwVVw9FwDg7a9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=53QdsszUt+lbVKzEKOINFbtJmtyuWqUrhP2zyvSFsMM=;
 b=SzcdPlJ+qYZo/hDGwlA1AeR0BxiFRVs1AjZwoVFdkENGV11Xv7yS+cR0RdqOggXDUpSqRlgFaNkJE8XXWKgwukCwzHv9Ged6RZ7JW2RnWncwmb9S0l+seeWwUqqWHHojs3VVpagX506sNVGtmIrcN3lbJHlf4NR/SaN27QxSCVusuEFWjFJ/dCdXTrFJlCv/zac41fw1bdIGMu2VVXvyB+4G6fhCLQNnc9h8Ge0Qol5dgMbddXoIXX29u4US5xkUaBnLji8o34LstIOKXO5GIhpglWm7FCZGaKSQCbhq7v5RHZWrRP08kYtXmM6Ffc3LvUCJuUKgCOYXnfGw4rejAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 14:53:45 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce%5]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 14:53:45 +0000
Message-ID: <38f70791-56b6-4795-876d-b84df289dbd8@intel.com>
Date: Mon, 29 Dec 2025 16:53:38 +0200
User-Agent: Mozilla Thunderbird
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Zdenek Bouska <zdenek.bouska@siemens.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>, "Simon
 Horman" <horms@kernel.org>
References: <20251204122150.23853-1-chwee.lin.choong@intel.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251204122150.23853-1-chwee.lin.choong@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::10) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|IA1PR11MB8802:EE_
X-MS-Office365-Filtering-Correlation-Id: 12b41939-aa34-473d-c2fd-08de46ea10ca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFA5KzB4KzBDNjEyVDZrNTlmR2htdFJGY3RCQm5hWDN2RW1MbGU0UmM2ejNH?=
 =?utf-8?B?ZlNZWlg0V3BMUzZoSkY4VmpDSjlQVCtQTnFSem9YVmxvMjRIN2JPV3RqSHNv?=
 =?utf-8?B?OTF0RnRPcmM4SmxyT3dsRzZRbXl6WG13L01mb0ZxTU82aUI0d3ltT3QyaWM2?=
 =?utf-8?B?ald1MXphbU16S2FIRDJ6elc0V1JiSEk0ZlhMZ0RGNjAzYW43cVI5YzVUbWMz?=
 =?utf-8?B?alQ5U3QrN1RuTDlWTEJNa0FlZVhDTjFZTmorb2w1Y0VpekZ5R2xnbVdZWTBi?=
 =?utf-8?B?QlY2amxpTUVDZlYzcjY3eUhVYXBnNE14c3Z4UUNzRWZoYUxkRjJvaE40WkVC?=
 =?utf-8?B?NVFKUDZvaTdYMDZTRE5kYmFKbjU5VXRQdHlQTHk4NFpwR3Byc1FkRC9Ua1NV?=
 =?utf-8?B?eDBneXdVNnZJdk16OUhtOWJxTlI1cEJYN1FXZVZXemxmWWFwbit0b2dQaUV2?=
 =?utf-8?B?M0F5UmNRUVp4ODJZZ0hrc3ZpMWhvOWJmSm5zc1JkaDNhNmdzS0Nia0Qxd0Rw?=
 =?utf-8?B?MjhCL0N5MUZWOHZ5RDZIdS80bjVjQmd5eVZqM01iTFJBbzkrMGE0TlBSYUM0?=
 =?utf-8?B?WjdzUld1T0VWUGxrenI3a2pNWE44azRudEwza3psb1B2Qmhwdy9nd1E5Q2dY?=
 =?utf-8?B?a2swS3JvQ1Bldm9WUnJCUDBTN0RsWjhFeTJ1SVFNQkd1V1djMCtQeVFEek1n?=
 =?utf-8?B?Y0FnTzY2blpRWGdCYlNZaXlscDBHaVJwVzJFeDhDaTBBZkxqSi8xdUc5amtt?=
 =?utf-8?B?ck1GQWJ2dHVNSnRJakZ1K29XVkJpTjJ4eXkvSmk0RHM5dU5WUVcxTzNENUV6?=
 =?utf-8?B?QTVEV3U3aER0bFpnTmpXd3JZc2V4aHFWN0Fib3dxS282alFKc1V6ZWlIK2xO?=
 =?utf-8?B?N29iV1VVYkdqV050bG53ci9xN0NSVVN1ekhwVTFEWjVvWjF3YkNMQ0F0cDZS?=
 =?utf-8?B?Qm5WamQvZSsrejFUVGVpbDlsR2MwMm1pWXVDMlNVeEU0Y3prTzNma1ZPMFZh?=
 =?utf-8?B?VG9uUHBja0JEQWxXbjVwSmhVOVBWdHB5bDhoaEZwQXhSclIyUFFLeGJzVEJo?=
 =?utf-8?B?NFJZY3FjZ3ZBaXVIQ3BRRjJmRENSTEVVWWFlODZ2M3NISVV6QjVvRnhhNDV3?=
 =?utf-8?B?VE1qY1BFK0hPYjZydVVQZElmSDUwa1FWblVLQ1Q4bDdyNks2K0cxRi8vS2Fu?=
 =?utf-8?B?bEIzczFZbnNPcmFsTm4rSmtQVFNpZk90blc3OUFDbmdHblYzaHZhclZqVFZW?=
 =?utf-8?B?ZEtZeHpCckIxNktRNUhkcUFXejNMaSsxWGdBZ1NNTVlUd1VUZ0RLRkVZMVRq?=
 =?utf-8?B?Vkc0aDlsbFFxN2drT1BJQkZ0cDFNUTZCRC9oUEdYOGd1WWJjRzZlcHhLSWNx?=
 =?utf-8?B?WitGVDd1dHluSitaMnkyMzJoWFJBRnF0WFBBdFdUaFk0MVFOVUVxem40Y1Q1?=
 =?utf-8?B?cFNZcjNJc0cyVFQ1WnZpMWRhWkt1V081c2dVOHh4aU41TUNDdy9mckd3eGdi?=
 =?utf-8?B?cnZQQW1KZUxWODFzWnVGQVBRNXZwSlpXbjN1L1FWOWIyczE1T0FsaXFrbEdh?=
 =?utf-8?B?T2RsZHRWbUsvNFU1bVdkR2lBTERtNHIyRW9rQlNsQ1hVNDBxMFo3MTJwTGxy?=
 =?utf-8?B?cFpBRnlyK1lUb3d2QlZRL0hBalRuZVZrQWY0VlBEMlNUTXJRVzMvd2tZckxP?=
 =?utf-8?B?ZmIvU2toOG5pVUQwWTZ6eFBzQTg3b0xhaXh0VzlHL3M3WlQrMTBvcVdrWGVV?=
 =?utf-8?B?M09PRGpYZHhIMy9CNmt3QWFDL0FqMHlIQlpQVlBlNG0rSFJxQldqaFY3UUI3?=
 =?utf-8?B?dzBnSGlMMmtYT1F0ZWNNR0U0c0R4UkpLRklkQUNNOVBkZjlST1JtTGVEaXFr?=
 =?utf-8?B?OTRTQlR4TVQ3U01POWpyZWdjRmxpbDRjem1FSFJObGY5SldQdVJpQTN4cnJF?=
 =?utf-8?B?R3FNdTYvOTFjMDhXT3l4eFBaaEk0d2x4czRkdFVQRk4ybk44b3pwWFZhUE5E?=
 =?utf-8?B?aUlOUmZKTlh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkVtNHJIeFoxMHBicERnWFoweTR2TC91SmRuUkRHVUNsOEJwRjlmOTJuM2pm?=
 =?utf-8?B?NXZLY2NnQnc5U29NQURLS293RE9mdG1zZzRXbERVUGFUU3JLSlZNN1hsMWtJ?=
 =?utf-8?B?MkI5T1A0YjlNWG9kOElXUUlobFFaUmRKK0dqWlhNanNpei9iTnJ5Tm8wTE5w?=
 =?utf-8?B?aGh4NGY5L3EzU1BXZUlNYkNRc3Z6aCtvMWs0YzZ1YTdEVG4ycCtodEl5VU9V?=
 =?utf-8?B?TTRSaXFXaEcwakExd2puQjZ3amdWRnlYeDVQV2NQcHJtSTk4NE1FTWdmUUtk?=
 =?utf-8?B?Z1VYY0hYcHQ5MUFCb01IV0xQRGQyVXRyOTRzcWZhTzNjS1JsT0ZaRDYzU2Fj?=
 =?utf-8?B?V0syMGVNeGxUd210OVRrbDJILzMwdlFMRG5GQUIybW1RVEZPclFLS1RveGpD?=
 =?utf-8?B?eEc2Nk91OG4xNjRtRU1IYWtON0pad2hobGowWHI4cEh4QUhoVUZsdTl2T2xG?=
 =?utf-8?B?UXBub09rOWxmWWVremwvR0liWW1Jb1RGOHFYWCtET1RWVkwzcEJhSGRQUUFJ?=
 =?utf-8?B?aWVZdVQ4OTJsV0EweWF5MGhsRmlVbzloZGdnUWxUS2M4bTJPM0lybHNmK2Rv?=
 =?utf-8?B?MVAyRWRvVmczd2ZXRTJIWGlWSDhVZGRrNjEvaVBWNk16M3IyYncxU3hEU2p0?=
 =?utf-8?B?S0Qza2FzTWR0SjU5dUVZTWdVekN3SnRsSGh4akdDVktKM3JnZ01DWGxlQmZz?=
 =?utf-8?B?NklWVHpzNU9WTmpCL0RuMUNvSmlpSXVJUllMdFBBZ0xKdzl3WUM1R3J0RnB2?=
 =?utf-8?B?Z2hpTVVwY01XRVZQSkE5cjd4dktDTGxwanBNR1lsclpJaER5L3JQTFlSZUFF?=
 =?utf-8?B?dytzTDZ5eW5tVGdGa2h0cUNMUzl3SnlpbVd2K282VjFPdXA1NDdlRUMvWGdK?=
 =?utf-8?B?QlVMQkhqcmgzUU1LNWthSDgwZFpUa2xIWXRKUzZBUTh3L0xpYllJMmJuWUV2?=
 =?utf-8?B?OWtHSnZHVExXUWVuRGtQMkFxTENBeDFRVXJPWWVqL3BCU0xIQVlPa1Bndjhh?=
 =?utf-8?B?eEgyOUV2LzVhd25Oa0laM01icGxkMTllNTFmV1VnelkvdHBrMUhsWjZXSUNn?=
 =?utf-8?B?TkZrYS9aNkRYSFV2L3FhVGxoZk5ZTHhjeVplM0M0b2pGYjEwTzFxVGZHNmJU?=
 =?utf-8?B?VEhLU3NzQm9PWFJTcEMwWlNMYjdNQVRhM2VxS2YxbmxXNTk5WXZMbG5BdHNv?=
 =?utf-8?B?Zy9jMWpOSFJ2amZ1VkJtY1d0cThZM1FYTXZYdXllS1ZQVmQ2YTZNVzlJTFBL?=
 =?utf-8?B?QmpDRXdtQVQ4bXV0KzJteGFHVUNrWEZyQXMyTk96QmZ5Rk5tSjBHY1lCeml6?=
 =?utf-8?B?UjNuRWdYWUN5R1htbngxK0lacEV1cUlpalAyd2t4NlRLSzcwOUo2b0xHSUsw?=
 =?utf-8?B?c3dzT2VvaW1pZHVXWXdFdGJGTXRHb045bDBGV2R1MUN5UFdObEtYUTRCT2NZ?=
 =?utf-8?B?ZVJGNzU3YWViSXpnNkV6Zm4xanRVQmxGdDNpNXhOTVBkRFplLzJFcjN4N1Er?=
 =?utf-8?B?NEZ5cytTUnZ2dm43aUpPMHR3MVYxMWl4ZVJrNXo3dUE1bFlyOGE3ZytsM1h5?=
 =?utf-8?B?SUI3bzgwUU5wbkYyQkd1ejZBbjY3Mm5VRm5BWHo2TXQzMTFDQk5MYUJCbldD?=
 =?utf-8?B?MVBZOXFuL0NQT1NTL3pBREhBZ0pacG1tS25mVXlCN3l3aW9GcVBWMTB4WUc2?=
 =?utf-8?B?TnBlajJDL3plQTllc2lFMjdDSk5DaDRmeXNVU1NVQWpaaFlJY3VXMFhRd1Zp?=
 =?utf-8?B?V1lBRGFVUUlGbEQ0aVJnTzNpM1pxSE9kTGJxbXV0bjM5VWpLQnJrd2kxZ25Y?=
 =?utf-8?B?SWo3djUyczRROWRCU0lxZ1Npem5ENkh4L2NXaGhsS3FzbVZoVHlKekZrL3Bu?=
 =?utf-8?B?NXQzeDg3ZUJFYklVSVAvZ3gyejFpQUMvcXMwOFN4K2trNlFRQ004dUJobG03?=
 =?utf-8?B?UVlHSWNJQk50Y1lQd3lXMTBNcGF5bWlCTGtFWW81MEtXaFBYMzZFUitva0lK?=
 =?utf-8?B?YXYvM0VWZm1CQ2FlaHlkMldWbk5mYmdqdjhDcFJ3dHlISXJON25yK2JIeUk1?=
 =?utf-8?B?M042dENkbkxoSlc3SnEwRW1MMXFIN1prVkFtZEJYZ0lUZG1XWnNaVytNMld1?=
 =?utf-8?B?THl4dGhybXJpbWNrbzVpNllheEw4NWZIU1crWnR2QjI3VEI5dDVISStCNUVx?=
 =?utf-8?B?UDJORmxHeGgwaytXTHV5MTF3ZnBGRXNab25ENlFoa1BsenhtNXNUeDJFMktJ?=
 =?utf-8?B?dmx5ODhFaVdObWk0Q0g2cS9iQW1YeGhZT1d2QU12R1dIY2trVWtGUFZlczFm?=
 =?utf-8?B?MURtU0U2SmNEYU11TnNpbk1Cck55blpkTFRIVlBaY0IvYlg4c3h5NTh4dW9p?=
 =?utf-8?Q?RV4IbC0pcfDcfitI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b41939-aa34-473d-c2fd-08de46ea10ca
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 14:53:45.4237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFs5gmKJr89Ljjp2CzfMwIVP2iOduutNETiAUT10T+CqkXkurLaZ+jbueI/0IqYg5GN6frzPudR68RznVY55LKJfncGqdd4FrcdH5Y5qh3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767020030; x=1798556030;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LhEVR1PjOR96xbM13zGnWRohAUO2fldOJWjGT6GaafE=;
 b=XKZ2Ddwb/YeOah6mJzmyMnnGcAnoUZysxqnednl8zlfA+C7Ge/E3X+93
 TdcNHOb8NhSbdTwvHQa57gODSfYKzPxqVg+BQe6ex9af/qg4BDX0hvgT2
 1Gb80h1yR0rX1mNJBHLMt/+yq3MOy8Iy+VcKkXu0TdKFWfWHfaWV16FRE
 PEsWIwTpEdhJPticK8DTTRG9FQIgitJTzeb9AWaNcs9P7hpNuNddhrRYb
 3mKAwPn+DUGygXR9UF5VnOPTSwc3oZMh4Wil3a3NbnAIywkz8myUzZ35D
 kAlPUmcJvsDfPdn/1+w1JPZRpwP/XlM0Oz4UZhs3lBw77jd3ZhOxEbwi+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XKZ2Ddwb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Reduce TSN TX packet
 buffer from 7KB to 5KB per queue
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



On 04/12/2025 14:21, Chwee-Lin Choong wrote:
> The previous 7 KB per queue caused TX unit hangs under heavy
> timestamping load. Reducing to 5 KB avoids these hangs and matches
> the TSN recommendation in I225/I226 SW User Manual Section 7.5.4.
> 
> The 8 KB “freed” by this change is currently unused. This reduction
> is not expected to impact throughput, as the i226 is PCIe-limited
> for small TSN packets rather than TX-buffer-limited.
> 
> Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for TSN mode")
> Reported-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> Closes: https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> ---
> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250918183811.31270-1-chwee.lin.choong@intel.com/
> 
> changelog:
> v1 -> v2
> - Elaborated commit message
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
