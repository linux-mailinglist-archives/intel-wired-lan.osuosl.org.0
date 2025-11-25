Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85798C83872
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:48:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E9F040B72;
	Tue, 25 Nov 2025 06:48:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58S5rn5Jg_cR; Tue, 25 Nov 2025 06:48:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82A9C40B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053303;
	bh=02kjbePwCBkpOxwQMIGTgzH0c8gm/03w6/X98xqTR2o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1VvktXMFvg12aGCjo64ot0D0j+qQHAAZ8K+rzi1n6RJOz04dY3C6EhLzYohoA1u1o
	 gSOHtJneKlJw6g7VjGGSQNFh/AyRGa4PpV+mu5aJLrTo9HKlruTqpSZroRUTxGGq89
	 7OBrH7aESeyUXdKNy8eX00WMGQjmqgTT8GCoMphx66BgAk1bIGGSStJ0sZVtAexWg/
	 T+HUTkwEK3jYmpr0g5w2UfDw7ebeOpzDLNgIj+MouUWcLd4U0KhazE8vygo0w+bJpF
	 Fp0L97G0ANudmcJ3Tt6hFqtLAp3NzNmANg9kurkQ1NAjG0gnPyE3Czkpj+cA7i6JQU
	 a5/rkVAuBbp5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82A9C40B75;
	Tue, 25 Nov 2025 06:48:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AA09359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8973C40B1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gulZDwSSTwoG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:48:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AB88C40B18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB88C40B18
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB88C40B18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:48:20 +0000 (UTC)
X-CSE-ConnectionGUID: Qaso6AEUQ9+ddyZhMI7iFA==
X-CSE-MsgGUID: T/lTRYJFQm+8F2orPeuqHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77174722"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="77174722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:48:10 -0800
X-CSE-ConnectionGUID: jx3cxln0TjCzo84ni9a3tg==
X-CSE-MsgGUID: B+kAOa3GQFWXVe0b7Dc7aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="223525676"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:48:12 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:48:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:48:11 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.28) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:48:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6gUupGJ0XFq00AgnLsghuvG6IZHMqdVTpuF1z/IJtrwMq8F+cbvyefJBVB/8E8/craCtRU6DJV/PQc9H63oSU8BEsVTJidlHTqVqwbHF750Hc+nVcbYA9utKXr8fm8Rf3ZY0gNX0ztUehhR3U4j8S5ESluHKszKucslt1jIS63cyUvCUWWftN4rigvC4+t9WZw7SRZURUMFIlu8xSafv8N+hLJVwC25dWl+kyAgyHfCx07qI940raCT147p0GTZ8VpgvYZ3Y53TpOaClM41nCa2mJvYFiIWMtm0Tw3NlYsScOGEQQ1ULXpMZNfw2hjc42S0PLA1S9NyL60tgWpEsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=02kjbePwCBkpOxwQMIGTgzH0c8gm/03w6/X98xqTR2o=;
 b=uG3Pp07c0l/aoXW5Yg26flxajEi3gpjJupNTZbSXHRKk9GI6WA3P4JoAa3L1M4wBB8Cb3z9b7688kvJcOk5w68VglmeEfhOEQ4MuAxBzakcFfytLEox3dgAN7bcoPpaZYFqASD+pB4yYdIsOsP1vNkJNz7aNlBpaqrZrJBKhC7S+X4gh0qPTGazZJGKIUmA8hluM+TvK+W+B7GXFC5R6cbeha2f+iQh2Bjiq5lTBSfTVS8i9ctQ+4/ul+IpgyHQBmJdL1A8VA8IN/7VzKq+1YTCvMfnWii0HTdq1qkjfMg7zox3Mi3pfdptlrwx64SMrfW6Df03v7RynmzpWIb/few==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:48:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:48:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7r8i0bhk7e7EW4bivsDfGllLUC87ng
Date: Tue, 25 Nov 2025 06:48:08 +0000
Message-ID: <IA3PR11MB8986B2AF393FF9E3609C9DB0E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: fdf62bd6-46d8-4097-b496-08de2bee983d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?VnNacnpiejdUdjlmYVdxVm1OV3dMRUYvaVB3TENjYnd4ZXlvWk9kRGo3MEIz?=
 =?utf-8?B?MTd6d3gva0JuUDJWcjVDbGN0K2xBQjdRU000VjZOTWJxKzR5ajh3eGJ4SjI2?=
 =?utf-8?B?L1BGREVPUjNmV2Y5MWtNQ2xxdjlDdisyVDBjYVI3cngvUFBxb2FBMythdHJx?=
 =?utf-8?B?SEhYU0crR2ErUnpmOU1kVG94alplLzd3ZnhBcDhjWDJWUUhlSUc5dmxNVktZ?=
 =?utf-8?B?OGdHZityek4rQm1kTndLQk5lbk9uWHQwODZHVzZVQ1ErNVJYOWs1eWs3UGNR?=
 =?utf-8?B?MHVUd25vVlNlUzB0eHA2SlQ2YkxXY3hFN1MxZllLeG9DOVhEKzkyYjZJdFpH?=
 =?utf-8?B?V1cxUWVvRXlqb2ZqK3JubFNsaENHaUhDVGp6ZEFqaStsKzNzL2FHZVJWSXFw?=
 =?utf-8?B?ZUVWaXFEY2lkSkpoQkNQdklxQlRkWGtlQitmSWtyd3RxQ2xUU1Y4MUF4YzFw?=
 =?utf-8?B?MTBMRjJ4ZHVsQk1ybmQ5MFlMWGNIZWpNM3IwZldieTNPMHJmVjhhYWttSW9i?=
 =?utf-8?B?UVBnTE9Jb3R4VkZGMUJmMGo4ZnJmL3ZOL3RTaCt4dUFQTU1zclh3OU5Ld1k1?=
 =?utf-8?B?MTFzS3lFMEhEbytuazBMR1hCZWdWbmM5aUlyZ1dJUWVDOXdLTGIza2RpdVY5?=
 =?utf-8?B?VmVJUVVFaXcvc2FnRTFPUm9aek1SSk1CKzJCdVdXbkI4Wk80S0dod0dDUFZ6?=
 =?utf-8?B?b1R5Q3p1RkhnNlBPMWNaNlYxQjNTT3FINzFpRFJSLzZ0S3NKbGhNZ3hreXJx?=
 =?utf-8?B?c3E2Q201QWROQ21vMk40dnJxL1hKTll2UTFBT21aZVJPMmJyZmRldzhLaFFa?=
 =?utf-8?B?NE5yNHlmcUoyUVJtSzZKd04rZVZwMG5uR3BZMVZSN25CUnZrSGlieWw3RDJ4?=
 =?utf-8?B?QkxXZXppZm9mZDZMc3NoOWdETEZhQWZsWm5KNjFYc21pYVBTWW1LYjk5RE4y?=
 =?utf-8?B?L2wrS2ZxdXRTOXVkdllDZjZFUkVVNFNHTnF6Yk5zbmJ6ZDlqOG0wb3d5amZh?=
 =?utf-8?B?anRWV1JJYjJMWGlQSnVRSnorcGZtai80R2ZnZENEQ2EzMDJKdUhjamdoUkJC?=
 =?utf-8?B?ZTF6d3k2VjRsaktSQlZHU2pjYnJJa09yT0pEMldFYkZDZzRaUGNSNFlsWTYz?=
 =?utf-8?B?RktFcjE1WG1Rc3I1WVVmbHN3akc2c1Zpd1lPN2FRZ1BIM2pmNStJMGF6THlZ?=
 =?utf-8?B?VVBHNjBRamV4enRMamJ1NlRneVdRZ0YvUk9EWVdndU9TSlNwSzNibXRoUUFU?=
 =?utf-8?B?T0dQS1Y0TnFEZkd2allVSFJ6VjBaTit2SFpLYVp1bmdseEpmTjhSTGt0dXdJ?=
 =?utf-8?B?VjdCNmFjTFVzVW5pVjJmMEhGOGxnMkYwek5vUzdzSURFNm9XYWNFSFhwYUdH?=
 =?utf-8?B?YTQrYVJ5U0NEUFQycUVEcnRRbjBKYSt2eFB5QzBqeHhPV0huanM3aHB5eWFa?=
 =?utf-8?B?NzJEOCszUGx1bVFWYWFoTGtzS3Y3VmJ0OC9UbGh1dGV4YksvSEw3REx0TVRD?=
 =?utf-8?B?VkREUllyVnVNcyt5RXFMQnJUYldRYU51RkpjQ0p6UFYzNmE1YnVEOW94TTdh?=
 =?utf-8?B?VmZ5TzhOQnBOMll1ZWdDQXB4b3RyVTZqVVFtOGJvNEl6dEJReVpETWNBVkwv?=
 =?utf-8?B?Y01TTUIzcjhiQUsxcEE5ZXdqR2FqNnhZMTJnNk1zL2tWbDdvck5UdzU4dU0r?=
 =?utf-8?B?Sm1SdTU4dWViUC9wQWloZ3loUXJnbndRVmRWZHdkcGs4RC90Y0trQ29OL25q?=
 =?utf-8?B?Njg4UkRqZENYdmNKOVJ5cHFSRHFJSGtUOHcxb2tyYUpScVJBdDdhQkdDMVVC?=
 =?utf-8?B?SHU1c3JqT3lYVE5sQjZHWkJDRXE2RUZYaFhZY1pJeWUvS2NtSkM2ZGlGYWxM?=
 =?utf-8?B?OXhLaitnc1lzZTNWcVNVS2t2WHo2OWJrc2VicVlsNHB5ajJ0S0tGS09CSkR2?=
 =?utf-8?B?N0syb0ZmL1hBTTYzMlVSL3JhV0doMGJoQ1RnMUVHOFQ5cDdxdm93RzNsS283?=
 =?utf-8?B?em8wUC9jMFZnQ01YeTRyZGJ5S0txY2VSMStaSzF2WmtlSG1saVQwWFEzTDJ6?=
 =?utf-8?B?RUx1N2NZSzdpUmYwWm9IR2ljaHEwcGNIWjdPdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEJqcFdzNjZjUE0vL0FDZi9zUnFycnl6MWRieWMrWkFCQTJQUkR1dU0vSkdS?=
 =?utf-8?B?VFBPWnVHRU1NWC9PMHVRWnRaR2pEQmJ3LzgrWEVRem1JaE1XRWVHNk1xZGs3?=
 =?utf-8?B?eGpVMmlyMWg4ZTBrYm5TMDhDLzR0MFFVVWVMQUpFd3FKbllpd3ZiZnREcVZ5?=
 =?utf-8?B?czhJVWJZR25uWGVkTGJwZlNvYmJKS21jOW1QaGVXMzNFOStSUVcwV0NSTHFn?=
 =?utf-8?B?cU9UcDlkSlVsTTRwS2p1Z0NDYjFhS2QrZHQ5bWh1NmV6NFdkaG1RNFFkZ2p2?=
 =?utf-8?B?N05USHNLdkIxQ1NYRlprT3hFdkJrMHY2Y1kwTVpVYkVJaC9vaWRtOUYyUU9t?=
 =?utf-8?B?VU1udUc4WGNnZ2Q4OXZ1b0Erb3R0ZVFrcWZ2QUxmM3ZwbzdDUXBiT2c0VFBq?=
 =?utf-8?B?aUpDSG5oV05WODdHY2FWcDZtcENxajhzOGFrUU9DdXFqeHlpVFdJL1lJVHpY?=
 =?utf-8?B?U1JMejJVQUVzZmJlbVE3amZUdVVNUUdkdjNRSEdBUzFsdUo5NzlTdkJ2SGFn?=
 =?utf-8?B?M2FlUmVyVVJ2MHJPbDg4YXRRL3FvSVNvY2dYZ0dacjdqdGVtK2xzRnNLUFVG?=
 =?utf-8?B?WVpzRmtkYXVsdjFuNkxBMkVtbEFCWEdjbSsrL2gwVlh6K0hWelR3U1lJeERB?=
 =?utf-8?B?ZmlNUlhrdFNNNEt0a2dWeURBNEZ1bHVWR3BYZi9BYldoNkN2YmYwUDNPRG5h?=
 =?utf-8?B?NndzeWEzbk04cXZvNCtZZG55dHRkTlAyWnRMRWtzQTViK1E4TDZzKzlYUzVm?=
 =?utf-8?B?UHZzSmpES0xyKy9wWFpMSDBubXhkZnEzaXNFWnk0RG5ETCtCMFNGR0VRMkhu?=
 =?utf-8?B?c3hTNXd1ZDBJSlpuNHgwTi91SldvV1RrbkxXR1Q5UExNbk0xUzlUcWNvSzE0?=
 =?utf-8?B?WjFJN0xXNHFLVzNKQmJ3b2dqSW9rcTNuazJPUks5eDQwY0NPRVBhajRoTDdG?=
 =?utf-8?B?eUQxdll4b1ZmYVhmdzAvR2tmclcwWWZHSWtZeENDVGRmSXNiNGZ2UlJKcEtt?=
 =?utf-8?B?TUlBdkdvdGFNT2FNWHlJbW1qcStURXhwdXgwN2t2aEF5VHF6ZUFFYWcyK1ND?=
 =?utf-8?B?T3FUWFYwcEdOUUFsQW1YUWJYYkgyaDVZZFBWelBIVnRCbVRjUXU5cWZaT0VN?=
 =?utf-8?B?bnFscVJ3ZkdJYjFJSVZaYWcwS1FMQlZPQm53ZktpK080eHpUaEF1MEdyVXQ1?=
 =?utf-8?B?Rk1JUG1RM2JxZDBKc0VFelRhenlGZEpNaUtydWFsQWxGT3c4M3VnZWdaalJG?=
 =?utf-8?B?S3ZDRmQ0Z2JQVmUzUlZrWXZBTVBaMEtFRkxMTnM0MFB4cWIzVlNQaW91Wk95?=
 =?utf-8?B?MmhDeXMrK0hRbmJkejd5WWZYUEZvQ0NFa0dqWWF5UE5iYzhTRllRb3BqMFRs?=
 =?utf-8?B?UWZQNENMb3YycDZJdEhoWjdnMTdOdlJwLzFsZFZxd1FFTEdDM3FndktnbjlR?=
 =?utf-8?B?czltRnJKUnlyZ3B2TzZuZGdPZ1JyalpHeEFuZlFkS2JFQU4wQURXQ0Ric1dk?=
 =?utf-8?B?RVBMaHR5K0VrRDZIeFRXU3FSbyszTzJkVEtDK3VBU01yNW80dnM0Vlpwd29D?=
 =?utf-8?B?L2Q1VGlDVFNrd1hVOEkvMnV0MUxPc3dKMUpkcllxMkVoQUJFTE1mcXBiSmdX?=
 =?utf-8?B?eWtjWUpVNTlGTXVHYXltNEVETjlKYjh2a29WMEhITkZFbS9VUmN4M1liNTJG?=
 =?utf-8?B?cWtrMVptSlV5MWxkWFEzazdUQVArTTd0V3ZTWHBKWmZvUFhEa3phVGlNTm1B?=
 =?utf-8?B?TlJaM0g0Qndrc2d1RVFXOFlKREFNbHJxR1JkU2R4SmF2NHdjdFZ4ZVd6d1c4?=
 =?utf-8?B?eDIxK0JJVlVKZHVKZk8wRjhlVnpNUDhkYjFLMi9IQy9hOFpDbzdZN25YNDNq?=
 =?utf-8?B?a1hjbHQ5UnNRMFo2MmJZYnBHSUFoa1p2KzRTRGV0eUxSREowWXNTZ0hSMHB0?=
 =?utf-8?B?ejA2a213empQVElwRkc2cys2b2FzYXJlNTczN3NLaUhwSGg3SjVKOUYxdU9n?=
 =?utf-8?B?VlFnMXE5Ym83dFQ2SVNNbUVSa1ZQMnR2S1h1b3BqTTQ0RForT0lQSkR5Z1pn?=
 =?utf-8?B?U25oN2VZSE8rUjduM1pVS1h0TXlCaGhhU1c1UTg1aGVKRnovVExWb1JyL29M?=
 =?utf-8?B?alNoaHl0MFEvbGpLRU1ZK2lhWGxUL0YvNXExSkc3UGRjdERoSk9sc1M1aDlN?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf62bd6-46d8-4097-b496-08de2bee983d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:48:08.9151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kBNmHSAIcfqpBN84p424vD2e98Uo2ajiAkoDTSEWkdncdh64vYVXU7ePyhS3KqeP+fX0tp1upPKUdZDg+kSEoyTjY1MAVO3CpeLE6fm4YLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053298; x=1795589298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=02kjbePwCBkpOxwQMIGTgzH0c8gm/03w6/X98xqTR2o=;
 b=DXSTcL73L/UVChQrTzd5GLfh1dK2WQ5H+b0jgLrGX9ZLLSnaAeeEicU/
 W7n/fDIbtoUt0MURkg/st2uXTQEgmy63sV804ioC8b+2DfvRqNrjkSkhh
 wehs8A+81xLBWbPtQskOTdEtwvoIaGJWE8xZu/wCwObiIJ1QJrrZ2ZsIf
 rbLKBdeCBq7CVcE1rSWW9NCySVbikMShd+tVustrswWKdBIQyM//rVqvr
 DyC9lTVapTO5ctTp/0g5CIl6kucPB5U5p1iBp/ZD288fIJEOz47TUJnNL
 0youd5EBFiJr/ctr9wVqpQW/ZAawV6U/VsPi3fOJPQEELMxHFsv5CXGog
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DXSTcL73
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0
LmNvbT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCA0LzhdIGlkcGY6IGV4
dHJhY3QgR1JYUklOR1MNCj4gZnJvbSAuZ2V0X3J4bmZjDQo+IA0KPiBDb21taXQgODRlYWY0MzU5
YzM2ICgibmV0OiBldGh0b29sOiBhZGQgZ2V0X3J4X3JpbmdfY291bnQgY2FsbGJhY2sgdG8NCj4g
b3B0aW1pemUgUlggcmluZyBxdWVyaWVzIikgYWRkZWQgc3BlY2lmaWMgc3VwcG9ydCBmb3IgR1JY
UklOR1MNCj4gY2FsbGJhY2ssIHNpbXBsaWZ5aW5nIC5nZXRfcnhuZmMuDQo+IA0KPiBSZW1vdmUg
dGhlIGhhbmRsaW5nIG9mIEdSWFJJTkdTIGluIC5nZXRfcnhuZmMoKSBieSBtb3ZpbmcgaXQgdG8g
dGhlDQo+IG5ldyAuZ2V0X3J4X3JpbmdfY291bnQoKS4NCj4gDQo+IFRoaXMgc2ltcGxpZmllcyB0
aGUgUlggcmluZyBjb3VudCByZXRyaWV2YWwgYW5kIGFsaWducyBpZHBmIHdpdGggdGhlDQo+IG5l
dyBldGh0b29sIEFQSSBmb3IgcXVlcnlpbmcgUlggcmluZyBwYXJhbWV0ZXJzLg0KPiANCj4gSSB3
YXMgbm90IHRvdGF0bHkgY29udmluY2VkIEkgbmVlZGVkIHRvIGhhdmUgdGhlIGxvY2ssIGJ1dCwg
SSBkZWNpZGVkDQoNCnRvdGF0bHkgLT4gdG90YWxseQ0KDQpXaXRoIHRoZSBiZXN0IHJlZ2FyZHMN
CkFsZXgNCg0KLi4uDQo=
