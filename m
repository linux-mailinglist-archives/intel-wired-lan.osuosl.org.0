Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3695A3281A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 15:10:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B161414A2;
	Wed, 12 Feb 2025 14:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VgX33kNCRbRD; Wed, 12 Feb 2025 14:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBAAF40B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739369457;
	bh=rMx5TkJOv50jazTmCfwJUNFpnZKRSE6+oa6oet3O8Lk=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MsQKyXXQuq1BG3T7z3qO+jo+1EYVn8QX5M4NcWRq128u0c5eg4a3WSGmwQvn1qegA
	 WrGRK58EtQdsiaaXHF1Q/vB8h2MgU8xgjesvJHty/plh2qjS76owL+onZsmBYFwTSM
	 JlLpBJf6+yT954LV2ZzRGWyhw+4YDjssVayPl5rYX5z2YCQ98V4TiJpmjYgrF0MbfW
	 rGuHZRa79D66D8I1p7+oKFPQ6Zoqbf5UysnB/Ss0lnDjwffvnFkTUpqtFxSPkPszlV
	 hVHP4oDZlK2IWc0sWIQsaeMzEljJnbE9x6eu9Lt2jjdrqpLrx0UP5bTn4U/eV7AcwE
	 AgQ92V5TzNofQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBAAF40B4B;
	Wed, 12 Feb 2025 14:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B23CDC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A16B4412EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUWyEeJMQTDa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 14:10:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 92D1D4131F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92D1D4131F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92D1D4131F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:10:52 +0000 (UTC)
X-CSE-ConnectionGUID: f7oOnclQRWqIJ5LF8Pc7hQ==
X-CSE-MsgGUID: AI95RFDIR7SkRiTklTGYYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="40055236"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="40055236"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:07:36 -0800
X-CSE-ConnectionGUID: oqXOeUfbSM6ae4B2dC/D9w==
X-CSE-MsgGUID: GO1PXG2MTxWt/okO8rXmSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="143752535"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:07:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Feb 2025 06:07:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 06:07:34 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 06:07:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9K0X1SOM/ds9aW72HXfoc5uv0dxU3zJyBcOVHxTlXBlrBQfrJ8nW0PM/v3AhACHoNV6HZ/dYufYz1dDyN26Y8JqRQzn0Zd7hJCN2G/kqTMMxHfM5TNCReNzJQvVd960HHTwJUHk0Lu4owD2Shmt/73pvzFYb9gRAecNiiJh1JvVX66iC3RCK1NJIUG+ySktN3JI9D38fIO7/sxuMERgGTVoQ0khVj3sz5fNLSecjwPp98ZxhDazEJzEYI/xzicAfku1UMfy3rxZzU/lQd0K/6YcYiIiiYTVPZ2GCGFNfcr2GPG+9oFvfLjwi6KpkAdDOfUUVqD5GVQz9IjOhmnUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMx5TkJOv50jazTmCfwJUNFpnZKRSE6+oa6oet3O8Lk=;
 b=mH4mmqc8/P2pWgEsDqdDT201oARPEHSPWDzByc+D03ur9Pq0NXxlixaqQQoIoqT/lQFTxYLCrOPLh6LzEUu341uC+ykLJdeA0jbx6a2C/svzI4IDYV3UEICAwmgSX5QaoL82IIhNlGIbWod6ntqUwb4oSShFRjYsi4DNyZfZvbeFpkPcU9i0gv3b0EQZGKANyrxMqaDPI+ok24/jRKyHW/dt8TGh3KFz8jyj36r3IfNrw+EuThHGkrue/gGYmvTPesvTmpDS6re79Log+qzRV7tCZPkpksmEXKoaPn8lVzrspYyf56yKKezM7Uaevc8nUMS5txqDKNiT5YQVB9XK/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by IA1PR11MB7295.namprd11.prod.outlook.com (2603:10b6:208:428::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 14:07:31 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%4]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 14:07:31 +0000
To: Piotr Wejman <wejmanpm@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250208154350.75316-1-wejmanpm@gmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <7d0fccb0-6fee-44d9-8f1c-455c889a21a1@intel.com>
Date: Wed, 12 Feb 2025 16:07:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250208154350.75316-1-wejmanpm@gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|IA1PR11MB7295:EE_
X-MS-Office365-Filtering-Correlation-Id: 33f8df51-d0e9-474c-db34-08dd4b6e9749
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnVjMGc0dE1RRm0rZjI5cFV0VWZ1TU9lYVYvUmZ0VWF3MS8vaVQxbGIzVXFD?=
 =?utf-8?B?SEVJNkNBNGNyekduYVI4K1ptbmhCcnN1VzJYdWJFdU0xYWpTTUdSZnF4Vmpp?=
 =?utf-8?B?TWJJNTZiUW1rb1VMUjVKcms3OVhuZkJIVnlLRUtCY29PWFR1T1VzL2tuSUtt?=
 =?utf-8?B?Y0NPcmh2T3I1TmNsaDJVb1JDUy9TS0hiMHhMWDliQlpmTldDek9yNzc4TTJN?=
 =?utf-8?B?eEVIdHBZV0JqRFdZSXp2eHN2dWhlb1Avd1AyVmJtYkVPNTdnL24vSTZYb25r?=
 =?utf-8?B?SVU5cmhUUERwQUVRN05kcStITUxWRGJkc3pSWjdPT1MxRS83MHdpSFdHalgz?=
 =?utf-8?B?R0NCT0hnMUh1WlVmTzU1T21rMmptQkhJUUdpSGFUTGV3RDNQckI0Sm9Xd2xx?=
 =?utf-8?B?SnpzRTNaWElvYWxWZzRzaExMdHhDeUY2UURGRDNtbmtJM2ZTejFJZmN0QlQy?=
 =?utf-8?B?c1ZMY3lXT0x1QlRlYlB0YnZ4VmNqSlArUWR3Z3BSNWRmT0FVeTFlZGhDcFpE?=
 =?utf-8?B?Z0V2elZoSytzSEtadmFDcTdoREtvS2VKZk1ZV3RpUVlROVpsNTFhWmFzd0xo?=
 =?utf-8?B?UmJhdWVFTTZocFVEN3MrUXo3dzB0WHdGQzM5Q2EyL2s4ZW93ZjFjRFRLZEdV?=
 =?utf-8?B?WmVuRGNSME1XSGlLY2xHNGFmUFlBSDFlVm4zMHIzWGhmZHgyQ0k5UHgxdy83?=
 =?utf-8?B?WWgyK3llb25nK3lsTXJUYlh0b0xPN2FmYUUraUVqVVB6RCs5azFTTndvWGdW?=
 =?utf-8?B?Sm1UUGljYnpWRHJtd2xjSG1FdVJlQmRjeVpaVUcyeEtlUllQL2o4OVNhaU5t?=
 =?utf-8?B?clAybmJ3MGQ2Z3ByaWtZZGVrV1AzRUZzT2VoR29FcmZEeWZaNWFYSHM3a2xH?=
 =?utf-8?B?ZDN2alE0OEt4akF2MDM5NDBVdkVacFhEcFk3Uk8vQWszQVQ4MmpjRXVWR3lD?=
 =?utf-8?B?a3NuYkE4QnVNbThkYlRkWHhIaUY2Q2FQblRZQmplOHY2MG5zbFhLSDk5VW5x?=
 =?utf-8?B?OGxFR3U3OU0zaW5kK2ZuVWx3L1orT3Rsa0pHZTJBVUh0dnFXZDYySFJISm11?=
 =?utf-8?B?L3daRVB0WUNHTXl1aHFuanJxV05Na2FTS1l3VTU3a2NYR3hBeVhXMllZckla?=
 =?utf-8?B?eTNhaytpbjlDLzZYTlc0UTdkMjdlQTduYXp5a2YxbUsxcFo0M3VqdGUzTnYw?=
 =?utf-8?B?aWhjRmRXbUpOOHByUFRPNDFpbUZKVlRNVEpURm9ERXo1WFJWS1UvL1Q3T3FJ?=
 =?utf-8?B?QWhLRWpBR2FuM0ExM2dTYjVhYkVIejJMK3pxcU4xcUh4LzJaUVNoSGpMV2tD?=
 =?utf-8?B?cktSS2VFMFJTUUR2QWZmZUwvSlVxb0x6d1d3RVJ6akFZYVptT1RpWjJjb21R?=
 =?utf-8?B?Mmtjd2dhZE4wS3UrL2toNzRZMlN2Y3REci9BOW1nQXVoREcvRDNFVEV5bDB4?=
 =?utf-8?B?ekxxdEVRbXdWcDdoVlByNkJMM1VSaWEwcVNkWGdZMkgzMXIzOHZtb21SdGoz?=
 =?utf-8?B?ejRxWmVsT0NkV2s3cHlMTUN4VEo1MUNTbWhWWE9HVVpXMzlXQTg1U0U5dmpK?=
 =?utf-8?B?Y2hrZS9lWHRnYWJYOHBYL3ZVam8yNVQ0VWFCUTZxMXJIdmR2WDJwalFtYzBj?=
 =?utf-8?B?alVVbE1nZ1ZJRWtXc3dWV2FjajREQ0dFMzFqdEYxMk9LbVZxUnRYSGlxL2xJ?=
 =?utf-8?B?RGZrZkVZSWQ1SHNYby9NeUc2bFFDQ3gxblhyUFJFL29VUndsMXhpNWk5ZlBv?=
 =?utf-8?B?L0sxNWx5MGxJMkdsY1Rxb0U5bEF0Q2QyOElDRnJRUHNoZWUvcDlQa05IMWZD?=
 =?utf-8?B?VHJWbE0xL0ZmQVVVUGY2NytMaHZRNW9HaWJ2c1FjUjFCZHo3VUIzbzI5NTVN?=
 =?utf-8?B?V1hQTTFiYW54OU9zNTZFVEhFNXR6eis4ZVM2MHZCbTdjSFhLQ29GME5UVG1i?=
 =?utf-8?Q?jUwBEfeP158=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVlycWlxTWtaWUgxcEJRMUhQQTdTdEtvSmQvQmJ1VHNjZkF4SXBPR0VraWVH?=
 =?utf-8?B?RS9Obm9HWlh2SlhFcmhMajVPYmNKNUxlQ2x5KzFrSWJOWkZlWnJqejQrYml0?=
 =?utf-8?B?ZXAvdmdTNnYwZzQ0Skw2ZWZBaEcwaHRLZXR0Y0xZWGlqU3htS1ZUSVhWR29V?=
 =?utf-8?B?c3NoUkNNVWxGK2tYUk93NTJYT1pZOWJYS25OcmJFMUVuT29wS2xQanB6NUVu?=
 =?utf-8?B?NitzNDBMRGxwZzFIWE52R2l4bjB2ZUs2b0ZSUTZuWUZualZCbDlNb3VuRXN1?=
 =?utf-8?B?T01nM1lLT01GUTZxVndRSDNMRHUraUNtNmd4dmx0akdVdlYyelRPbEJ5V0RN?=
 =?utf-8?B?QlZuL3VOQXJkK2NENU9yaGxZTG5LSjcxREJURmxMZjZMeGh6MVBUaWhnbHFx?=
 =?utf-8?B?RmtNQlM1UktMcUFoS1hvU0dYUFZqUlpPYys1QUFtWGNGMlREU1c2NnJNOEtG?=
 =?utf-8?B?cjZWSmNDbVVCMmdoUk9XVE81OFBoZ3lmL2laZXEzN2xRMUEyTXBHK2h3ZXVG?=
 =?utf-8?B?QjFnQjlMUmRXMEdvVGYyRURNakI5dXhvYlhwUWpGYmN4MlJyQjhmTm9tek45?=
 =?utf-8?B?dW4rT0xYMEgva256VlVQK1ZMUFo5Sk5WVVJsQzhXODMxMUgvb2IrZmNqdVpM?=
 =?utf-8?B?enI0RnluVE9jRlFrdFhxREMraWZubDU4TGxDWFU3OVlvMWcxMVhiUlNyMm9j?=
 =?utf-8?B?REcxbDhoWUdYQ3d6QzhzZ2lybEMwVkYrcEcxYlVMeE1MVFUyZytTalpFUkJY?=
 =?utf-8?B?V1A1Ym1iNnIveHUySGdNN3VNWWZscWlkM0I1S25WYnlWdWJSY2NkYnpLbEpo?=
 =?utf-8?B?bUg1SGtBK1ZUN0FkS2p3Y3ZKNmkzMjhFT1hPWDMzajB3Rk5WcVowUFQ4VUo1?=
 =?utf-8?B?dGtsOXYyVHZyazdwTUNaTStkTEEycDhIb0M2S25BYkUzekQ5eTRudGtCbXBH?=
 =?utf-8?B?ZXorYUZIVXNlc2xJRGhQSnh0c2pMeW82UGptVnMxVE5zZWhyWWhwQ0ZuVy93?=
 =?utf-8?B?TzI2SnVFV0RVUHJicXdrMDNUOHZ0ZXdzRndWYy9jb05ydnhKaGpBS05ianZV?=
 =?utf-8?B?NlBISHJHWFVwN0UvWndWWDZ1b0xEZ0ZJdXRxZHMvOXoxaHZSZVZTM0FpUzBZ?=
 =?utf-8?B?N2lxS1JQQzZTZ3ZNNVlQbmxmNkhlV2dtWUxtVjAvZWcvYzkzV2JPeHo1bzY4?=
 =?utf-8?B?UUtLdzcxTDUxYzJQRDdZcjEwRm9FU29nWFZGbC9DZWRHNkRUS0F2d2NWcWlo?=
 =?utf-8?B?WmJuODBLS3p4NVV3Q255YUczUHovQzJ2bmlEdER3R3FXU3ZycUsrdkMvMWY3?=
 =?utf-8?B?MXpwcnVLQ2pvRXBZTTl0Y09RK0JydnExK2VHR3VwYzdCT1dibEJzczUwZ0tI?=
 =?utf-8?B?QThBNXJhOHMrRkllZFdPczgwUkhaU3ZhWjBJVzArNE9KUzF6Nlk1TVpKRWlj?=
 =?utf-8?B?VFhCTEFSRlZ1VGF1ZHhpeUdwMVY5YkdSSktRcUt5b21xdlcyamJacGE3eEhs?=
 =?utf-8?B?S2ZZWENXNFBWZUsxWndmcUFwT0huYk55MFBiaXlCYVA3K2dmMUlVNGtMU2JX?=
 =?utf-8?B?clFLN2QzT2FzWFdhSEZGVkU1d0NVRWFtbk83eGkxdXVYNUJXLy85RkZBVjl2?=
 =?utf-8?B?bmg3ZEZyVE5kcXVjSFJzNGZXaUwyRXJpdkJqTFBQYU1hYnQvdkRibkxlMUI2?=
 =?utf-8?B?dTltbTFwVDY2QStndHRvNG05ODhhTThPSXVIZUgxcjVJTGdUb09UbWZBbWtJ?=
 =?utf-8?B?aUx1WGd4ZUNKcjN2YmFJT0s5cjVoeEdzbUh6eEhVNWJyUGVBcDRwaEIySWYx?=
 =?utf-8?B?MzM2SmhDVEZ6ZzdGM1N2dDVoV0hNVVdvSVJneWFYc1JkaHNUMk9tbUFzWVVM?=
 =?utf-8?B?UWROQ2hJSmwzRjF4Rkc5VmJ6aFlETXFkUTB3UG9sZzNEWVA1aGF4TnJWVzVu?=
 =?utf-8?B?UXZ1M2pkTnJjeFFjbVg2SzRQQUZNSU51SGVublo5Zi9jRTdHYzh3c04yR1RB?=
 =?utf-8?B?bk45K2hXa0xQaE1EYXJ0bzY4SGZYT2JMd3M4ZFk4UDEyNHNvQ1RVc0ZPTjUy?=
 =?utf-8?B?cmxYcnp4NEtaSTZ0cUtxbHZBWTdlS0lwbUpOVkVmS25WSUdtdi9VQ2hTY3dy?=
 =?utf-8?B?bk5HL2pGajU3aXUxbDBXN0MzUXlkMWkyTmExQVgrVzJPK0lwUWU3NW5tWU5m?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f8df51-d0e9-474c-db34-08dd4b6e9749
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 14:07:31.4486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M41GhZ8JWt2jYI2AxsLNKOc7Tzdo3iYO6wvwTbZ2xyKjwTEI/mtqZnl0a4DYxiguybCPRX6CGFxw/flXuEN8EkkiPGzOaN3CozJn0EuV4zM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739369454; x=1770905454;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WzXvOB+SOalproSY0Sm7Ig453dGQj+vdwGm6jEK7s6M=;
 b=PQtAGGdJq1JW/ZQ76J7L7TfD/VhQwjsiVYw8jwdjzKYtccL8zm84Ylqn
 nTpburVpwXPWllKujC/PkGZVBq7/KmmERXTm5WU/OfFRBaNGmEB4HUreX
 dIzL3ydJAmT3whb/vpMPBIXhm0VdJg+v2kMcaHNCke9TZCEKS+eb2Ad1X
 pKVV77gH5CWAcC50aTAuByOR2nB/keXqOuuKU7TG4s2Je+AOfqkJPDGUB
 fVWE/vRSg7/kLqGG6uH8PSptkTUWK6+MJfNX20G3QjcQMHeH2i87ELO5D
 W8mv8fLdLIXfkDerhUSzQK6uMeRDgz58JAAsfvI65npeyki2lFdT36JCJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PQtAGGdJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 2/8/2025 5:43 PM, Piotr Wejman wrote:
> Update the driver to use the new hardware timestamping API added in commit
> 66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
> Use Netlink extack for error reporting in e1000e_hwtstamp_set.
> Align the indentation of net_device_ops.
> 
> Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
> ---
> Changes in v2:
>    - amend commit message
>    - use extack for error reporting
>    - rename e1000_mii_ioctl to e1000_ioctl
>    - Link to v1: https://lore.kernel.org/netdev/20250202170839.47375-1-piotrwejman90@gmail.com/
> 
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c | 68 ++++++++++------------
>   2 files changed, 31 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..952898151565 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -319,7 +319,7 @@ struct e1000_adapter {
>   	u16 tx_ring_count;
>   	u16 rx_ring_count;
>   
> -	struct hwtstamp_config hwtstamp_config;
> +	struct kernel_hwtstamp_config hwtstamp_config;
>   	struct delayed_work systim_overflow_work;
>   	struct sk_buff *tx_hwtstamp_skb;
>   	unsigned long tx_hwtstamp_start;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 286155efcedf..43933e64819b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3574,6 +3574,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>    * e1000e_config_hwtstamp - configure the hwtstamp registers and enable/disable
>    * @adapter: board private structure
>    * @config: timestamp configuration
> + * @extack: netlink extended ACK for error report
>    *
>    * Outgoing time stamping can be enabled and disabled. Play nice and
>    * disable it when requested, although it shouldn't cause any overhead
> @@ -3587,7 +3588,8 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>    * exception of "all V2 events regardless of level 2 or 4".
>    **/
>   static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
> -				  struct hwtstamp_config *config)
> +				  struct kernel_hwtstamp_config *config,
> +				  struct netlink_ext_ack *extack)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
> @@ -3598,8 +3600,10 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
>   	bool is_l2 = false;
>   	u32 regval;
>   
> -	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
> +	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP)) {
> +		NL_SET_ERR_MSG(extack, "No HW timestamp support\n");
>   		return -EINVAL;
> +	}
>   
>   	switch (config->tx_type) {
>   	case HWTSTAMP_TX_OFF:
> @@ -3608,6 +3612,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
>   	case HWTSTAMP_TX_ON:
>   		break;
>   	default:
> +		NL_SET_ERR_MSG(extack, "Unsupported TX HW timestamp type\n");
>   		return -ERANGE;
>   	}
>   
> @@ -3681,6 +3686,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
>   		config->rx_filter = HWTSTAMP_FILTER_ALL;
>   		break;
>   	default:
> +		NL_SET_ERR_MSG(extack, "Unsupported RX HW timestamp filter\n");
>   		return -ERANGE;
>   	}
>   
> @@ -3693,7 +3699,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
>   	ew32(TSYNCTXCTL, regval);
>   	if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=
>   	    (regval & E1000_TSYNCTXCTL_ENABLED)) {
> -		e_err("Timesync Tx Control register not set as expected\n");
> +		NL_SET_ERR_MSG(extack, "Timesync Tx Control register not set as expected\n");

In the case where this function is being called from e1000e_systim_reset 
function, won't it cause this debug print to do nothing?

>   		return -EAGAIN;
>   	}
>   
> @@ -3706,7 +3712,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
>   				 E1000_TSYNCRXCTL_TYPE_MASK)) !=
>   	    (regval & (E1000_TSYNCRXCTL_ENABLED |
>   		       E1000_TSYNCRXCTL_TYPE_MASK))) {
> -		e_err("Timesync Rx Control register not set as expected\n");

Same question here.

> +		NL_SET_ERR_MSG(extack, "Timesync Rx Control register not set as expected\n");
>   		return -EAGAIN;
>   	}
>   
> @@ -3932,7 +3938,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>   	spin_unlock_irqrestore(&adapter->systim_lock, flags);
>   
>   	/* restore the previous hwtstamp configuration settings */
> -	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
> +	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, NULL);
>   }
>   
>   /**
> @@ -6079,8 +6085,8 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
>   	return 0;
>   }
>   
> -static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
> -			   int cmd)
> +static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
> +		       int cmd)
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   	struct mii_ioctl_data *data = if_mii(ifr);
> @@ -6140,7 +6146,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
>   /**
>    * e1000e_hwtstamp_set - control hardware time stamping
>    * @netdev: network interface device structure
> - * @ifr: interface request
> + * @config: timestamp configuration
> + * @extack: netlink extended ACK report
>    *
>    * Outgoing time stamping can be enabled and disabled. Play nice and
>    * disable it when requested, although it shouldn't cause any overhead
> @@ -6153,20 +6160,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
>    * specified. Matching the kind of event packet is not supported, with the
>    * exception of "all V2 events regardless of level 2 or 4".
>    **/
> -static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
> +static int e1000e_hwtstamp_set(struct net_device *netdev,
> +			       struct kernel_hwtstamp_config *config,
> +			       struct netlink_ext_ack *extack)
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
> -	struct hwtstamp_config config;
>   	int ret_val;
>   
> -	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
> -		return -EFAULT;
> -
> -	ret_val = e1000e_config_hwtstamp(adapter, &config);
> +	ret_val = e1000e_config_hwtstamp(adapter, config, extack);
>   	if (ret_val)
>   		return ret_val;
>   
> -	switch (config.rx_filter) {
> +	switch (config->rx_filter) {
>   	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
>   	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
>   	case HWTSTAMP_FILTER_PTP_V2_SYNC:
> @@ -6178,38 +6183,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
>   		 * by hardware so notify the caller the requested packets plus
>   		 * some others are time stamped.
>   		 */
> -		config.rx_filter = HWTSTAMP_FILTER_SOME;
> +		config->rx_filter = HWTSTAMP_FILTER_SOME;
>   		break;
>   	default:
>   		break;
>   	}
>   
> -	return copy_to_user(ifr->ifr_data, &config,
> -			    sizeof(config)) ? -EFAULT : 0;
> +	return 0;
>   }
>   
> -static int e1000e_hwtstamp_get(struct net_device *netdev, struct ifreq *ifr)
> +static int e1000e_hwtstamp_get(struct net_device *netdev,
> +			       struct kernel_hwtstamp_config *kernel_config)
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   
> -	return copy_to_user(ifr->ifr_data, &adapter->hwtstamp_config,
> -			    sizeof(adapter->hwtstamp_config)) ? -EFAULT : 0;
> -}
> +	*kernel_config = adapter->hwtstamp_config;
>   
> -static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
> -{
> -	switch (cmd) {
> -	case SIOCGMIIPHY:
> -	case SIOCGMIIREG:
> -	case SIOCSMIIREG:
> -		return e1000_mii_ioctl(netdev, ifr, cmd);
> -	case SIOCSHWTSTAMP:
> -		return e1000e_hwtstamp_set(netdev, ifr);
> -	case SIOCGHWTSTAMP:
> -		return e1000e_hwtstamp_get(netdev, ifr);
> -	default:
> -		return -EOPNOTSUPP;
> -	}
> +	return 0;
>   }
>   
>   static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 wufc)
> @@ -7346,9 +7336,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
>   #ifdef CONFIG_NET_POLL_CONTROLLER
>   	.ndo_poll_controller	= e1000_netpoll,
>   #endif
> -	.ndo_set_features = e1000_set_features,
> -	.ndo_fix_features = e1000_fix_features,
> +	.ndo_set_features	= e1000_set_features,
> +	.ndo_fix_features	= e1000_fix_features,
>   	.ndo_features_check	= passthru_features_check,
> +	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
> +	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
>   };
>   
>   /**
> 


Also you are missing a subject prefix, I assume that you mean to send it
to iwl-next since it is not a bug fix. Please add it to your patch.
