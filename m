Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2DB90519D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 13:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CDA78129E;
	Wed, 12 Jun 2024 11:51:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VuWMXnN-kQUH; Wed, 12 Jun 2024 11:51:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 654CB812A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718193092;
	bh=d6UA7a8M0r2NkAL0jtd+Qd4g7GESUu87oyTloNIkZCs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CjAJ/McWZHl2fA2zJr1GDU8hftXKJbo30iydFbkFGk8FxBW/k2acpl/QCXaklqVEo
	 esYyAFvMeOxH63sRTWLD5cusnLIX20+1Bi2yafCP8bWXSICAv7OjyXOG+cxLU1xN/2
	 6UIkJSiaTZf12tRrxPQnOlzQsUEfnFltrJW1R7UWJK54GQQoyeRYsAFX3+h7Vl1a8n
	 kS7DLhmNHCeJBKOrSc701lXR2CrwF8dWsY0GVzQEAM5gjJ0vxKixJ0dzzeMODc6B0C
	 4ZnRYyjovvHFCFU148uKBgRB98GJy0RthIE7pkgzTwOBvpUncBNPTOypjxUWxCtUXf
	 jJ9E4CARKAftQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 654CB812A8;
	Wed, 12 Jun 2024 11:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C88691BF373
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2132605FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZ8aRIWyONHn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 11:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B523D605E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B523D605E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B523D605E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:51:28 +0000 (UTC)
X-CSE-ConnectionGUID: bX5fvdcUT9O1MtF3z8RLWA==
X-CSE-MsgGUID: 8Je48Ub5SKe7o92SB+iSrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11100"; a="18729932"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="18729932"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 04:51:28 -0700
X-CSE-ConnectionGUID: RasFDXt+Qx6+zZTzIeEQsw==
X-CSE-MsgGUID: vfqK5cj0RTKJpx3i3ojlDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39832659"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 04:51:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 04:51:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 04:51:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 04:51:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 04:51:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWXwvk+AEnPHFMRI422+Y+tddcbMuAd3YZG4X5zJSRF2vzkSLzvw/CJf5jx8hZ6XnzDkSVy3IhW2IMlHw9CZMBiUkRLwWquWts2HXAvvyJqESQUd0DAysZxo0/xBz+HUMdIoc0zCLfP4JbDzztNw4yz9yfGo4feLnL5lftSng25vP0k8wuaRm7pHPAEkM4AJfLfr0sVTTgOIiKge2NXUkU36v/h3IeYoBWJdZ3b4U7aPyVzN5khIeob84+QMITDziPWq3z0/Un4x83eBZqQK+k/ezx9WVTjVynkMngTkqZZMBzl+AknrxJs546ZzuCYG73mTCtWpDK0TblibURlAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6UA7a8M0r2NkAL0jtd+Qd4g7GESUu87oyTloNIkZCs=;
 b=kEFUWgfm8H1RpckJAuBZZcOw6U8D2mqWXF1wePyCV5JcXvIiTbn6QFsziZ6zbMHxr8ASe1u+BejaqPBuXzIqFk5LGhHkqYoiuTPvBiS/V9eW43db0o4FJB/bs/uNWmVdzP6GdQdYMPmdd3W9cFt0FfM7gTaXFvTyzFFCNzBr3028Q9r5ReiOOSqoKJT0QvdV8Ey3cZuqnICHLFqdGm106AAWGllq6rVmwx6u0ZXpp1S58DRz8MLXHr61P7PZ8g6Plytr+WrEURuOIWiJRMZ34RHe+VN3HNuuvAr6AHifaQy64hv4oLbRSYjuXuKVq5eIj7gtCYOtImk07Ll4sh85QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB7028.namprd11.prod.outlook.com (2603:10b6:510:20b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 11:51:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 11:51:24 +0000
Message-ID: <70458c52-75ef-4876-a4a3-c042c52ecdb3@intel.com>
Date: Wed, 12 Jun 2024 13:51:17 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
 <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
 <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0237.eurprd07.prod.outlook.com
 (2603:10a6:802:58::40) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB7028:EE_
X-MS-Office365-Filtering-Correlation-Id: 10087d3a-fdc3-4008-1f7d-08dc8ad5fbeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXpjTFJCdGQrVWlhQ0JPdC81TzF2YjIyWkZlb1BXRlBQa3hDSXZHY2VRSkJn?=
 =?utf-8?B?MnJCdWNFbk13ZGRhUXFoUHpTUTRWOUFHdVlQRFk2aHdTSk5BY3FvNFpDb093?=
 =?utf-8?B?ZHBKTUZvMHl5bWNLUWJhTzFjSFVvbzJVMUtCR05OVnVKQ21QaHMwYWlISXRW?=
 =?utf-8?B?cFREUGdxYzZoVDJRQUl6VlVPaDVBWUZ6ZEVNcllRZVdnNW1ZRmU3eUtJaXU4?=
 =?utf-8?B?eGNhRmdkT2tnZGJkL1RWMDVxU0svTmw3VEFuNWpOY1JqTnFTaU1PNm1NRjdJ?=
 =?utf-8?B?bXF5WTBNUG14S1MzWWc2UksvWlZnVEZ5OHNGc1A0U1lrajRoS3Z2dGgrSVZm?=
 =?utf-8?B?VWQ1dnJlT0ZiY2E4dEVOdjVqWS9hTjh1V0ZrOVQ1Y2tseGdiREdLRlVSdVp0?=
 =?utf-8?B?N3dxRDlwc0Jhb1ZEK1JDVXZVZjRlN0c2VGZFcWs5Mjc1djMxcGI1SzN4YUZ5?=
 =?utf-8?B?QmY5OXVPQVVRelEwR0JrRHVPdHRiUkY0c2p4T3h0QlZnY1JYZmltRU1EWGdE?=
 =?utf-8?B?QmVaZXNYU1Y3UWgyWmhoNkZYVlJGc2hJbGtqQzhDZUJaaE1aamJLc1NCMTFz?=
 =?utf-8?B?T1JuK1BzMkxVRzBDRGtONDFEc2U5eDZUei80UXBpTWpidE80b2g0aUQyR3FS?=
 =?utf-8?B?bGloemZpdGhrN21aN0VsK0pIMk96d2Nadlg5N3VpTm5LVWNVYW43NWxzL09o?=
 =?utf-8?B?d1NXdCttY0svNDdXSTU2bVkvbVJtQUk2aHNtMnN1TkJndjVOTmtKYzAxRlc3?=
 =?utf-8?B?YkZ5K2g4UGV4cmNmNlV3eXB2RGhJaHA5U2FCOHBJZTBSTlBEMlAyanRpVkFp?=
 =?utf-8?B?NFdHRzE5cDh4a2crZmQ5KzlOYksyNjZ3N0h3Wng0ZmJhbVJFQktJOGJkV2Va?=
 =?utf-8?B?b2FKR3I2MUFwNzFpRmlhZ04rMzZROTBhZU1UWFgvbngyVVNoWkdibEp2STlM?=
 =?utf-8?B?cXFMZzFMSFNqL3ZLSUVYZHZvMjJKTFNqZTJXc0ZZT2JJNnByUDhtRnNYY1gz?=
 =?utf-8?B?R3ZsckpKbFNOUXdKWk5SSDg5bFZxZTlXRkE4QlpJUUIvNEdFRnpmL0c4bXA4?=
 =?utf-8?B?a3F4ZzR3YXd6SEZ0OUJlYUVPNjNmbzVSNE80MmJUOFkrR09sdTFBTmRPR2hu?=
 =?utf-8?B?M1p4UU5jNElla2x3L3A5QjhVaW8rdjFUSGVqYXg0SmE5TWpOK0lpRmk0Z2lq?=
 =?utf-8?B?UHpBVkFXbUxtNkVwUDc1NFl6MW9yYTNDcmdHb1k2MUdmNEtDSndlZm9Jekls?=
 =?utf-8?B?ZERQcjRleVBjMzBjRVJWajVaNmFFa1dsZGgxenJCemJKbzRpMVRPQVhERGt1?=
 =?utf-8?B?MnVHT3ZrU0wxZlBYQ1RkdHk5RmRORVc4a1hseDRGZitoTUpJN21QYnN0NUdX?=
 =?utf-8?B?UktOR0hlZm11c2x0K2ZpWGxqL2lPQjhwaVo5RXBwalVHcXVFbTA3RUU0Tmpl?=
 =?utf-8?B?ZEpJTWp6QVZCc0srakdLNm4reFdVZFhxMEtKaWp6OHJTNXJEeUpyaERFak1j?=
 =?utf-8?B?WGxKNFpoYnBOOTNNYTc1aEJvRkpOcE91bzE2aHRuNTBQbW9BWVBLUDE3bEpi?=
 =?utf-8?B?Y0h4UUgyYTVkUU9uKzBBaXNRMU1valZua2Z4Ny94a1ZkUi9jZlJ4VnZhMFMx?=
 =?utf-8?B?cGtKTUR1ZVZDMzlIT0NFdjlTaEQxNlVzVVBEcjhHcVQvRm1NSEhHU250d09C?=
 =?utf-8?B?QTFSa2t3SzdhYWxXTm52MEJhSG5jV1MwdTdQSk4rbjhWaDBKMFVDTVV6Nlp6?=
 =?utf-8?Q?d9VeXoYDjtJqLpN8NOn5u+irRcn0BhGqPQ2u9DF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3B3TUpGUklRdEpZVWVKbkRSaDBJTGJjcmt1SGJGYTc3MEE0eG1nUVJBWGZw?=
 =?utf-8?B?M1ZROWNwZ0NBUkV6KzJFYjZvcGFkYzB6aWdnZEVhVXJTM3NzeTFzU2FFb2RH?=
 =?utf-8?B?ejBhMXFIOFN2ZW0xc2FseG42cytHNW9zMkEzSCszdzY0U0JNc3VRczFsN3gz?=
 =?utf-8?B?ajhkWGdKVDZkU1hkNXNzdmIwN3BZdUtOalh5YU9jd0Y2VjM2RjBKb0xMWE9O?=
 =?utf-8?B?R2dxamRadzVKQS9PLzBFV2RCZ3dtMmlwV3laMVNkQ0VFN2IzZ2N2WWpBUGxW?=
 =?utf-8?B?M2VRWFB1STIyWVZBZEh2Ym5qWml6eFJvckNMNFdBUWVHMERRM0drSVpHeC9D?=
 =?utf-8?B?R2RBR21MNUN5N2h0R21aQjBrWlkvbHRWUm1MWFFqaTJKL0RMYlRVTWQrMmNR?=
 =?utf-8?B?UHkrUDVzWE9WTkczdWdUWE41K0VCOGoxM2hHUElQWU11TFU5eFIxcHAvUkZh?=
 =?utf-8?B?SGI3aFo5YW1VcFZ6eFVOU2hKS2NaR1VrelhjWVE0NnJuWlZKZytUZlAwMHJu?=
 =?utf-8?B?WHhMU1FwZG50WkYwWVE1Ym9Da1FiVHJVUDRkdWpxQnUxNHd3aVRxM1QxcDVh?=
 =?utf-8?B?N3M5SzcxN0FQbDI3U2JnQnlKVlVmR2xwYUhDU2JSMTJscEp5eE4vektLRzk2?=
 =?utf-8?B?UXc0WUVOVVcreU1rd0pOSkJLUmhuYmd2VjVaUkYxWEdYVWFMTktub1A0eXRu?=
 =?utf-8?B?MENreEJMWmE5cGNTK1RmYnNRRHdSY1Btd2hRejA3SS9wQXBRSzR6RzZ1ZFBs?=
 =?utf-8?B?bXMyNnNWV2tURkpmNzQ5ZE1McnpFNTcrWDRlRFN1ekxObGF1SUpoY3VsQlh1?=
 =?utf-8?B?bGt0SUx0UEszbWJuVS90YkpnSCtFajhyNlpHZGhPVzkwbG93enI0bHNVMk5X?=
 =?utf-8?B?M2xvTmo4RTE5eVYzOHFGTGhidmxBZkNnQVpiQWQ5eTNIRUExWlMzWVBVZ0tX?=
 =?utf-8?B?azRzTUFCYUNhZmU0bTcrVmE0bFZLajZrZ3dybmFXdzNhM25QTk1nblJjcE1q?=
 =?utf-8?B?UkNVeUtlam1seVBZQjRrSzNGQTM0c1J6aUpNWmcyaUFRQkNZYlJBMFAxdDhN?=
 =?utf-8?B?dFNKMzNPNVdjcDV6eFBLNlg4bEpRUWFTdU9yV3pxZG1MVm5ZVzFsb1IwL3Jh?=
 =?utf-8?B?RzhDbHQ2WjVCVXQxRksvME01cG1QNW81VlJQRDVDY2VNelh6TWxvOUdhSzg3?=
 =?utf-8?B?aHRQQW9JN09DbFh6b0xsM0MvMHpya0V4VDRBUDhtSDFYWnp5eVlvTVFsWlNP?=
 =?utf-8?B?WlJzZVpJNFNuL0RVanRyTkl0bnJMZ0F2QmpPSmNEcHRIZ2pyMlpka3Q1TFZF?=
 =?utf-8?B?V3VVOHdzV1hGNHlmUDhYMEFSVVdYVHBCYkF4REVodzNOMGtnS0hWcm1taGVQ?=
 =?utf-8?B?ZGNHeFRzUzc2bXYvR3NUMC9zbFRNVVZNTXhoZ3pqd1JvUXBZeGp0RU84UkFC?=
 =?utf-8?B?bTZsT3huci9CSFNFMTBpOTN0VTREdFhMcjlkQml5YVM4Q1ZacVhZcXQreDFO?=
 =?utf-8?B?YTd4UjJMNUx5Mjc1dGFWUnY5OEh6bmlsbHRGb3Z5ZzEvSnJEc3A5OEkyOXV0?=
 =?utf-8?B?UUJhcHFVcU0zaEJ2ZDg0YzM1b0JTZTBHM2FydHVONEc2TVBGMjY1d1BqbnlP?=
 =?utf-8?B?aHNvNjdhNDRTK2ljTzg1cjRoajMzLytmRzIwNGZxMjY3aTJQRFBsSi9sdWhj?=
 =?utf-8?B?N0UrS1F3aGlOVUwwRGV1d0RhM3phdjJkY21oMXRBOU9BQ1BTaStVdDF4aW84?=
 =?utf-8?B?UUp2WUhYUUFXSUM2OUdXWjdIdDB4WDBvYS9nSUVieWdnbHhVUktHMC9XL3VG?=
 =?utf-8?B?cThzTE4zRDlHSTEwTlNTVVBiSTQzV3l0bGl5WmQ3aGk0TDZ6R2Y5WFIxWnJZ?=
 =?utf-8?B?NllWTVJRUzI2eEllcGtndG53OEhNYnNIV01iOEtlRlY0UDc3aGM0b04rRWVD?=
 =?utf-8?B?TVBBTUtlaWNCbjZGU04vZWlLZUR6bHp4UnhPdUtpdExsMWluQTNJL3M0K01B?=
 =?utf-8?B?YmF3aFpMYVdJMjhxUUxYMi9iQjk4d3ZVdDVFd3JGNVIxQWg4NCtJSk5vQ0x4?=
 =?utf-8?B?bVNzU01ma3NldFBDUnZlZ0NpTXdybHhrcTR2SEVqdXZzTHlzSHVodEk5QVI1?=
 =?utf-8?B?Z0I5QU5aNlBZbFpLNWtWSFFSQnl5RGk0anc5d0lHTU0rNWpBbXFvQjI5cktu?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10087d3a-fdc3-4008-1f7d-08dc8ad5fbeb
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 11:51:24.1034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 51cz1jSkQupwU0E48DjSyoFCSALySq1Ty30MARXNJlPOVX5v1y+qZAspW4VUIqLfi6cz3Q71FYlvmc54chjAxGtvd5djojEoN6+NSsj0v+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7028
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718193089; x=1749729089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HlKJBvi27i6dv7pmLaHFOOxGcVnfJ4eQpfMVxceqjgw=;
 b=QpPoqFH0YoaI1WuDosbzWq/TtiXdMJ74TVKR5uuNaIRxhHUIERwzT9qO
 5Qv2sW9klbnfij2Jb6i3ecYL0qgVPHpRYgGuFfvgrMRAcqO/kPjE7jjQk
 lRgZQHBXzy3S8d8JSDCHMlT9t7WFOlwNIPfwTrTVURcDf1Au1icmGl4Oi
 AUysgS1tVq1Rr9+IruFhTCu0/bLpSCn+peM343mC94QeCrhmoJas3yANT
 65IKw+wE7cNB4wqRTdfHtapTOXetB0/DpoYEjdux91ewjGjvcePAZeHF3
 K91DMxG1HJw8dKxTBNdM6S5Pbp8Uq1eKvDsypZh//7dnRRaWx7jwHgn75
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QpPoqFH0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/11/24 22:52, Jacob Keller wrote:
> 
> 
> On 6/11/2024 4:47 AM, Alexander Lobakin wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Date: Tue,  4 Jun 2024 09:13:57 -0400
>>
>>> From: Jacob Keller <jacob.e.keller@intel.com>

[..]

>> Thanks,
>> Olek
> 
> Thanks for the detailed review. This is rather tricky to get right. The
> goal is to be able to support both the legacy descriptors for old PFs
> and the new flex descriptors to support new features like timestamping,
> while avoiding having a lot of near duplicate logic.
> 
> I guess you could achieve some of that via macros or some other
> construction that expands the code out better for compile time optimization?
> 
> I don't want to end up with just duplicating the entire hot path in
> code.. but I also don't want to end up with a "to avoid that we just
> check the same values again and again".
> 
> The goal is to make sure its maintainable and avoid the case where we
> introduce or fix bugs in one flow without fixing it in the others.. But
> the current approach here is obviously not the most optimal way to
> achieve these goals.
> 

Thank you Olek for providing the feedback, especially such insightful!

@Tony, I would like to have this patch kept in the for-VAL bucket, if
only to double check if applying the feedback have not accidentaly broke
the correctness. Additional points if double testing will illustrate
performance improvements :)
