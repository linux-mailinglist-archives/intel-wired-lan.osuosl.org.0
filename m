Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2F7MCxh8pWm6CAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 13:01:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD0B1D7FDE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 13:01:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 289DE60FBC;
	Mon,  2 Mar 2026 12:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkslgqgS6ber; Mon,  2 Mar 2026 12:01:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F422A6124B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772452885;
	bh=Kk+hV+1ZDnD0U554qhtbj/rNKcxCXL0O9Bh6jatZx0I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UthF9zaOe0ZFjCfdbRTdj7aL4aKB7Qyt+wCWlMN5Pv9jHQBOCXABQ/G5F5bYuH1jn
	 FONBJuGGC8ScZn4iwiTOZmqRM9GPdMhD9A/6s6oujErMUQL9xdYSRk9P38ILRi3ly2
	 X4eHhkIanGg8GwfNm1vDo1v84lMifuiSgvB5qolMcrtleU5QInrbMR3DKkFHBfqsrY
	 hfj6vNoW0FtsmCjJruta4Kmniw7sUmOIT6BeY/iJFFpvTYeNhyFKfqBUCzM0iMotE4
	 vZpqJ9SPE+hOZaVqoU7Y/p2Kz4QrqgC+NH++2G1HWQyFhUE74e9SN6quRocs70rpwm
	 vwMODpqHBphag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F422A6124B;
	Mon,  2 Mar 2026 12:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DDCE5231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C39D140CE2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:01:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8CKAQ4CGEvs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 12:01:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11E6640CE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11E6640CE0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11E6640CE0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:01:22 +0000 (UTC)
X-CSE-ConnectionGUID: BlF6hhOkRmihSsJgTFQJXQ==
X-CSE-MsgGUID: YjWUJPVyTpWyO7AafF/kdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77069331"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77069331"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 04:01:23 -0800
X-CSE-ConnectionGUID: OM1KFjMTS/K354kULkKX/Q==
X-CSE-MsgGUID: ZozPYLGySWi76Z0gDlc8wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217656722"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 04:01:22 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 04:01:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 04:01:21 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 04:01:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ARc6TbCDkn2IrrUSX7IANXnweffO7VZBE4ZRuYqH4pbDSwJbwzbB3AJhg47iy2h5pCDu4KEYkldE4+lwSNQXxdO3tDT++4sCKmkcJ8Nq/lj3oHt4DI6j/mLQPBMVBHKUjLmwKix7nGfQgZk1vB30UZ/rTugfv7wfeCaSfz5Gw3EO8jus3N04r7r3nSBi1hU9Wbj5wYcya3UU2gmy5p59vwJtlHkLhRGxYZHTZvokccw+YDH7ypKPWsV+AeNZyMABQbPAWbmOySGEz28oYIm+b0/IiWxrUBPHCKyLTyEgLjqPvzGo1F3bi9EEGyu3rfLR/cV6FNV3Xm03/y/zI3eyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kk+hV+1ZDnD0U554qhtbj/rNKcxCXL0O9Bh6jatZx0I=;
 b=LS//jZkBshv0qscSNRXcKO5Cfw9Rhg/10CVXSUxyuyTm8Vpek20oeF/r6rleP/Qf2okQ+Hb49U36ariwTmpklrDeyi3gSMwlv7y8pyqT4hxBkopIr0awt5nqqo9StQfXAXqZ5G9qqqYVRh8J3XY4yg0Htn8R8BJ4yULvLe498FaXbHji5orseZsh+dm5MtXR8vqvycgj4PiovV7g+kYpVXQ5u6AE1TXGqrrZMY02Pot1icLGFDPaQORKxRidgxvVQDP+2y4AnZK8Syg+1hVJn8Y8RFMftH00GR/a65jxAuOJvFhDhjgV9P1kl6egvAvqHfZMShQIB0YXMNi2jncvcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by PH3PPF7A88A980A.namprd11.prod.outlook.com (2603:10b6:518:1::d32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 2 Mar
 2026 12:01:12 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9654.014; Mon, 2 Mar 2026
 12:01:12 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-net v2] ice: dpll: Fix compilation warning
Thread-Index: AQHcpNETliauqVK5pUasiQUqHVW/U7WTMUiAgAf9hTA=
Date: Mon, 2 Mar 2026 12:01:12 +0000
Message-ID: <PH0PR11MB490409B2463A17F8E6F64D43947EA@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260223143214.241797-1-przemyslaw.korba@intel.com>
 <aZ7IDXaOOnwcnuuq@horms.kernel.org>
In-Reply-To: <aZ7IDXaOOnwcnuuq@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|PH3PPF7A88A980A:EE_
x-ms-office365-filtering-correlation-id: 1c28612f-4cce-4597-ffc8-08de78536655
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: 0X4xN8XJdFYXGYxUwO3L9UYJUnh5JiJNOdCZHF0DZAd775R05Cqla+9aNSJSc3Enw6IxjCjBLtv87VMsA03ku5Sz08zXoxTZ6Hc/83S/oywC44LOzn2HnWd875zZlL82u7KDTl/Pq1t75SdLetVyCFA7z889ee5aU7vlzNzq+uWHJ2qNXts6ckOI+pAoEgtT4MhEIAV9tk0hQAbWUnhrp3NVjj7Tz17r3LJ2BjKYScIqfKpSJdgxVimtV08Bski+WM7vrQKoUxc0qWGisOCSl+Ys7Z6OrxtzMk6nMNKIS+2/Bm+ozv8wYDVE9GjAZMEnTu+3VBF05r6LueVY+xakxDUr07quVi+Hk0bsqHl8rhxrZrY9j8LZERMVI1dmKY15HRcNdMOj7Z3eKG/j8r+3M+FcV4p0607RLUVL2IWKu6rm4vayvVeDdPfkQa8tLsAZB2PGuJM7JAVDWqe0hsBp/MOi0N3pukiOSfOoqHqK0BP3hHzg7h1A93/vjz4DQNk6F0EN/GDXH66cP6tJ2lBGNjDbwWU43/j6xnUQzRc1SpzfOw1cNjFnEz8WOGAjI/Xik8dbTS/YUqe3d0I86qNQK9262jeBSkElRtIX5eT8oK/nZGq9ObN9BjN58uo/ackqtzGyNFkwAmSDPxxNAr9aveXwGtIhATSNNRTYeR+LC0kqOvpF3KoeiHcx736IwVBVQSOAJDDVgXSev4mmmPJCyFmlZZZaOogkXoaOGDD854h8W4iF8ip6mpjzhc+Ho1zKHrOzLPw+rG4YYt8FOIkkTyhtXAuxb5FvXVUOqrQTDaQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUxLcUVURzgvMHhuZGpqMlBnZkhwNXlnMzVTQ3RJSHJaTDgyYjdQRkJUUVdM?=
 =?utf-8?B?MmVJeU5WZCtFVHM5ZmdURFF1TG1jaXRWNDVRbG90SjFGR1N3c0xIR1ZzaDUw?=
 =?utf-8?B?YTBJSGJtZ1RiOGFkc0laSVVWdmZuMkJRS1J3QXFUeU1GZy8rVnhmSnB0QzRo?=
 =?utf-8?B?NTYyOXgxZHFKQUljeGsxeDBKY09jSWczNkpYWjhpK1FxbVoxS1IwTjFMaWRv?=
 =?utf-8?B?ZjJCVDh2SFdHRFRxd1FHbWtYUCt1Ukh1WmdEOWFNaUJIaWtxbWc0dzlqSFhm?=
 =?utf-8?B?NURNNDlrMHlpVmo3V3E3UGk4WU4xZXRib29iZmFUZ2dFbUJSSmJ0Y3VQRlRR?=
 =?utf-8?B?bzQ0Zy9VNWJyVWkwaW5Vb3dwWTUxbjNGT2NvTEd1SDBiOWQzL05YMk1EOHAr?=
 =?utf-8?B?Wjc2REJoOGp3d2RrVElkaWlGNm82ZEJESGZGNjAwNkdHMFd2b3NGdko5SmJ1?=
 =?utf-8?B?bktkNDd5UHVQUmNBWTQ5U1NYVmNaV0ZEOGRjWnRheWVscXNKdGEzUFdQeUlK?=
 =?utf-8?B?ZTFmMlZCdjJZSFIyQlJhTlZBUzVmSjZzbzdNd1FUSXNwZ2xueDRJK0hDY2hD?=
 =?utf-8?B?VnFNWTJtRUpnSmQxdnhpRnplSnlEbjFqZlhndHIyK3Y0OGQ4SFBvVjJLYUlT?=
 =?utf-8?B?T1BvaVFRQnpWcjk4cCt1a2ZXQUFvc3VDbWM5MHVyV3dNbUpERnd0WnBOcjlp?=
 =?utf-8?B?dFRScHVHZmNwbVZLMjI2d1ZMaUV1MHBkZjhpSmxvNmhqRXhzRjNydzg3dnlv?=
 =?utf-8?B?aVo3MkFQR3pObFVBOFlFZzc0UmdpTEJpKzNxRnhGWU1XZU5iNThISmQ5N3Ev?=
 =?utf-8?B?cmNzLzMrL051K1NSYlNGR0VLL1RYbkZtS1lDa3NPdkNJeXhIWDlYR2E3R0s1?=
 =?utf-8?B?bWZyaHZLVVdzRThwSDVQRXlCQ1RjR3c1R2xwa0ZwemVFb2FCR1VSTG1JcE9Y?=
 =?utf-8?B?SzRQclBSeHV5M2J5SlA5SW1uekhDNnY3UUJFUVVkdXlUWU9vc2diblgxdC9M?=
 =?utf-8?B?N0ZpZndKeCtqSVNma0FUNXdCd3kvL1B6REl4WmVBcGQweW5jOVJsOXBnb2Qz?=
 =?utf-8?B?dDZnVzBpdUlWQ29QZDJJRmhjVXVNaS8xZFRFTU9hNGh1aktxa1FXOElyOTF5?=
 =?utf-8?B?VGdQYTJWSlQ4VFJiWTNZN0JQMUc5RHFaa2tPZXVnU2NDUGhnRVU2Z0ViSVBn?=
 =?utf-8?B?c3FOeExVbWs1SzFSTk5McmdRd0g1Ry9QZzk1RFN6ME1GVGRCcmhUdmNGYTdD?=
 =?utf-8?B?TUROQkplNkhpTGpWTXZuWi80SHRkNmJMSmxaU1dnOG5UWUMvRzQvdFNMYzkz?=
 =?utf-8?B?QnF5K3lIWmhrdDE5Yk50eE00Q0RrVzBvQ1pqdkRWcysxUDI1Z3dYWUMrb1ZY?=
 =?utf-8?B?Yy80WlJ4Uy81YVJsQ1FaU2RrWTFsNEhvZGgxQ3pZNjJuWEVUY08zaFNBdmRK?=
 =?utf-8?B?d3JHYnE0V3RTRUlpMlpsSFY2eXVXb3o4WEd6T1BFMXJCN1h5YmxFazdLeTU0?=
 =?utf-8?B?Y05mcE5lbnVVWHl5QlVDRlgrbXF5RVBxaG8zd1J6N0hrczcyNkljZG5qdU42?=
 =?utf-8?B?U2lXTFNrelErWmU5ekVubUVQb1dKZU05VGV1ZDVwZkJMZXljSEx3WlJDVUVI?=
 =?utf-8?B?bS9xSTB3bVg5bjVZb1RsdWlnWXBZZVJXcGpBN1J3Yys1Q1VPdnRWak1pNHl2?=
 =?utf-8?B?ZlNEcjNJQjlMcS94bVJSc0Nsc2gvaU1PeVY1SnVacU0xYlJsUldGM2RkeDB1?=
 =?utf-8?B?bmE2RFYvZUozbnh0WXJmNEV0S043OUhYN2lVKytYNWVJTFo0YXNjOGJ1dnd0?=
 =?utf-8?B?NkNGdWpKa21UcVo0VWVYZEJEVXVCZUZSL0xSQ2VLSHBoQkFiMjJ3YnpHelRY?=
 =?utf-8?B?MHJic01QSlVTSnRGOUxJeUJkMTFORHFhUXAvY2xadzdiYnF5ekg2ZjVFcHll?=
 =?utf-8?B?K2lDU1lNbFVlUXVlaHpYZG9HUHNaZWpWaTNxbW1Ja24yNDRIT2hpN1dyNTFZ?=
 =?utf-8?B?UW14VFBjZ2g3V2pnTzZyU0hXWDV6UUVwanZzazBLbmpVaFVGR1ZRQkFzbjdh?=
 =?utf-8?B?dDhWU1R0d1pNWkZ0RnNzV1FhZWt3dUk5YUZqNDM0Ymp5dVJjNFpiMnJzeFQw?=
 =?utf-8?B?aDVUNDNWZEl4amgxUnJDUUxsZHNzdExkQWlERFNoenNEYmc1NHpNL3pqaGtE?=
 =?utf-8?B?QXdSaE56eGNUYkRxQmlUdXdPaVRzZXdLNWl1WGMxeitITDE4QVA2dnpMRjRr?=
 =?utf-8?B?NkpUOWtkNFluOTI1OGNuQWl1L0dWTnREZGVjTFRjenpuWDRDMFZONDlLUGdT?=
 =?utf-8?B?RlpKMnNFK2dQZllSR05peXRQNnVoQ2YwZmxTTFNzV0kveG5WL1g1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c28612f-4cce-4597-ffc8-08de78536655
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 12:01:12.7158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wk+4ByYhNX7tWLHHto7UcjKGe2YRG45iv7cRhtYJ/Osddkt6QfGmLUgR6hoLEpYZVmVMRXgfRwc4Y5jCDhlVCoYOxyiI5hn62R2VJiH2WYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7A88A980A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772452884; x=1803988884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kk+hV+1ZDnD0U554qhtbj/rNKcxCXL0O9Bh6jatZx0I=;
 b=M0TlVtPQhDZ1ky6fcRSrekIFg9k2jkAa4AofZORFLW7WnRkezRucnt+z
 TmYuXGhc0Ww+demtFuHRgNVQ80DCd6GjywJlBedpNtIJSsEsnfI/62TU2
 1YhNFFsl7Mv7DtnSweJJILpxKUWYKqyJL+eMQ0apDN6kwpdU/Iy6CMZ3x
 gLkL0BborAD03KsaiXZyLhUPIsIEFS532vuwQb/uinHYfcTrX/x78pJTW
 O8gSpL2O0kxYhSXghsWVI5j8orFfHNfX/hNQq5JAuZ46sbox0zs4z9gla
 yvABLAwbXcFNEtnSAr5cM8UANETMEijhHygQMWEJaVcxNH6CVq5OT4La5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M0TlVtPQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,PH0PR11MB4904.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 7CD0B1D7FDE
X-Rspamd-Action: no action

PiBGcm9tOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgRmVicnVhcnkgMjUsIDIwMjYgMTE6MDAgQU0NCj4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxw
cnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXQgdjJd
IGljZTogZHBsbDogRml4IGNvbXBpbGF0aW9uIHdhcm5pbmcNCj4gDQo+IE9uIE1vbiwgRmViIDIz
LCAyMDI2IGF0IDAzOjMxOjU1UE0gKzAxMDAsIFByemVteXNsYXcgS29yYmEgd3JvdGU6DQo+ID4g
aWNlX2RwbGwuYzogSW4gZnVuY3Rpb24g4oCYaWNlX2RwbGxfaW5pdOKAmToNCj4gPiBpY2VfZHBs
bC5jOjM1ODg6NTk6IGVycm9yOiDigJgldeKAmSBkaXJlY3RpdmUgb3V0cHV0IG1heSBiZSB0cnVu
Y2F0ZWQNCj4gPiB3cml0aW5nIGJldHdlZW4gMSBhbmQgMTAgYnl0ZXMgaW50byBhIHJlZ2lvbiBv
ZiBzaXplIDQNCj4gPiBbLVdlcnJvcj1mb3JtYXQtdHJ1bmNhdGlvbj1dIHNucHJpbnRmKHBpbl9u
YW1lLCBzaXplb2YocGluX25hbWUpLA0KPiA+ICJyY2xrJXUiLCBpKTsNCj4gPg0KPiA+IEZpeGVz
OiBhZDFkZjRmMmQ1OTEgKCJpY2U6IGRwbGw6IFN1cHBvcnQgRTgyNS1DIFN5bmNFIGFuZCBkeW5h
bWljIHBpbiBkaXNjb3ZlcnkiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcgS29yYmEg
PHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiANCj4gSGkgUHJ6ZW15c2xhdywNCj4gDQo+
IEkgYWdyZWUgdGhhdCBpdCBpcyBnb29kIHRvIGFkZHJlc3MgdGhpcyBwcm9ibGVtLg0KPiBCdXQg
aXMgaXQgYSBidWc/DQo+IA0KPiBJdCBzZWVtcyB0byBtZSB0aGF0IG9mIHRoZSA4IGJ5dGVzIG9m
IHBpbl9uYW1lLCB0aHJlZSBhcmUgYXZhaWxhYmxlIGZvciAldS4NCj4gU28gdmFsdWVzIHVwIHRv
IDk5OSBjYW4gYmUgc2FmZWx5IGZvcm1hdHRlZC4gIEFuZCBJIHN1c3BlY3QgdGhhdA0KPiBwZi0+
ZHBsbHMucmNsay5udW1fcGFyZW50cyBpcyBhbHdheXMgc2lnbmlmaWNhbnRseSBzbWFsbGVyIHRo
YW4gdGhhdC4NCj4gDQo+IElmIHNvLCBJJ2Qgc3VnZ2VzdCB0aGlzIGlzIGl3bC1uZXh0IG1hdGVy
aWFsLiBBbmQgc2hvdWxkIG5vdCBoYXZlDQo+IGEgRml4ZXMgdGFnLiBCdXQgeW91IGNvdWxkIGNp
dGUgdGhlIGNvbW1pdCB0aGF0IGludHJvZHVjZWQgdGhlIHByb2JsZW0NCj4gc29tZXRoaW5nIGxp
a2UgdGhpcyAodGhlIHBhcnQgc3RhcnRpbmcgd2l0aCAnY29tbWl0JyBpcyB0aGUgc3ludGF4IGZv
cg0KPiBjaXRpbmcgY29tbWl0cyk6DQo+IA0KPiBJbnRyb2R1Y2VkIGJ5IGNvbW1pdCBhZDFkZjRm
MmQ1OTEgKCJpY2U6IGRwbGw6IFN1cHBvcnQgRTgyNS1DIFN5bmNFIGFuZA0KPiBkeW5hbWljIHBp
biBkaXNjb3ZlcnkiKQ0KPiANCg0KVGhhbmsgeW91ISBJIHNlbnQgaXQgdG8gbmV4dCwgd2l0aCB1
cGRhdGVkIGNvbW1pdCBtZXNzYWdlIPCfmIoNCg==
