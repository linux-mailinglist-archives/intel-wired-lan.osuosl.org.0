Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDICCVYsnmmkTwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:55:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7291A18DE25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:55:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4ACA845DC;
	Tue, 24 Feb 2026 22:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ANMntMAjC2QD; Tue, 24 Feb 2026 22:55:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37227845CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771973715;
	bh=9Xl9JyK3hCEPQFAMWNqGYMIUT4y21icqgIjbkaIWXsQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BTn3nBI1Rnf3IuxvQ8TeNhvOiz8tqXghL/XcQRgEIN3QUtzZjJOJSTy5ToHcu5smk
	 3F4Jwai7cmlPP1lqqYLFfkeBnMKUmTgueCql2McrI09Kc8hYoSF3ZqJeoF5OuRduUC
	 EJkRmuw6RKyf6Xm6vbHI2FKXNM6hakeoUmTWha9VcvMijSnwKk0si8U+KSei9YOjw6
	 HJ4pMXHiAqYTW6D5viptmYuoewmpSgSGTr/Qmw5I/ztbMn1grHNRvmpfi9CNEjHfui
	 2hdwWf1q+m4cMNmolJvYqm+0cOsLfGeLvyCtx1tNp6NVvDsXDphg8/WuoVk8rluH4g
	 nwt1wVf5IqmIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37227845CE;
	Tue, 24 Feb 2026 22:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A56C23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8014B61167
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:55:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nCaCa6E7sPgz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 22:55:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 571BF60F5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571BF60F5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 571BF60F5C
 for <intel-wired-lan@osuosl.org>; Tue, 24 Feb 2026 22:55:12 +0000 (UTC)
X-CSE-ConnectionGUID: ha4XUhLxSvaECs1fNrodyQ==
X-CSE-MsgGUID: wEoGFkyGRK6lhMWdx2U6fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76613616"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76613616"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:55:12 -0800
X-CSE-ConnectionGUID: P/PwqmwCT12VvfpyZ8Qldw==
X-CSE-MsgGUID: YRog7mQfRhmEomWT3bA1Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220650156"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:55:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:55:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 14:55:11 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:55:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A1RtXgqrWQf0cyiDUEkGWKKqj6V3BjTA7/fafwD93mapYoykSwIAmeeMFHuLM4NW6jsXkQjIyUta83eACiJsm68rjSXILGIWeQ/hTWRuvt2nXjvFkKIlKnvFQxr38FLwQyVQZRFYTqwG27BHhCjeXSjkvcPRIdaZK5+pAMjEBqXG6ADvVIkcYKX87/ETpNufS8AatBzgSnEIK5KXnwbh+XTJVO+0pnIoeTSAVpSnKzQ6wGZfNhoat5A9AwAiv/yDNBvpc6MH2mA9ClldnyHFWYWG8PjmUEMflpdTk/PrIX/9D8nssv4TlNpQAVUjtXMiXDPniczdm1f7GndW291orw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Xl9JyK3hCEPQFAMWNqGYMIUT4y21icqgIjbkaIWXsQ=;
 b=X/X77RbtkbWVnH8haY3YKn34aA1kQP2yoL4e+oUBpL5oPykQv0uufqKk+dv8rMOub7V9WJjy0bo2QNz3iM4O3iFq6cXzl4/cFJJhqeVUtpU15RCPgEBvgqgbF4AS7OQt9RtRHSqtC+Wj8vEBz/lsiVKN6K/0C9JzXzHcTzDgmoUdJ3UGOPWm9U2awrUmQW2zpD4zqo8uM4VwN/FetNZ6N852UjRkzh46zo31ux4mTssvn0VpddeZssUZYJHHecpjsXvO8jqwL2X3ITWmihupn/SKoDwCK/YC4CrkM8GOzLNiNIwYAPD5VlXGBM9kzKx/cdY7bljCh7R6mtk3BboRhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 22:55:08 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 22:55:08 +0000
Message-ID: <58ce516e-b963-4537-bcd2-6215895b6974@intel.com>
Date: Tue, 24 Feb 2026 14:55:07 -0800
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>, <intel-wired-lan@osuosl.org>
References: <CAHQVBFExAim9my56vWG4db9WjKvgC-P8RZOPZ1JOcywBfG5QNA@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CAHQVBFExAim9my56vWG4db9WjKvgC-P8RZOPZ1JOcywBfG5QNA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0081.namprd03.prod.outlook.com
 (2603:10b6:a03:331::26) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|DM4PR11MB7325:EE_
X-MS-Office365-Filtering-Correlation-Id: df080cf9-1026-4d0d-bbe5-08de73f7c236
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjJYQ29CM1dGQytLRHBycjdkWlhGTnRqV2RyTTBVZG01d2c2QnNvY1RKbW1W?=
 =?utf-8?B?Y3hvT3pkNDcwcE9ZaFVDOHd2NnNpS2JEdGxWKzA5aW1rckkrQi9ua25USWVI?=
 =?utf-8?B?UFhtV1FjYk5FMThzRm9iMUhrZFZ3bVp1VzBWS2VsckhUOTkrZ05GbjBnNWdw?=
 =?utf-8?B?bGYwaEdmUmMzSUhFL2E1T25sY1VWT0F1ZTBGZzRyQVd4ZDJVVlF0QzZmTnBu?=
 =?utf-8?B?QkNYVk1oMU9iQ053WXo3RFg0czFkRWxpUjQ3N1FZejJPOXRsditvWWNBWWZk?=
 =?utf-8?B?ZFZsc0VPNVBkbEsvd3NxbWo3TFBtZVNhSER0NGV4aTFsbjh3MXZUN3ZSV2d3?=
 =?utf-8?B?R3MvaFp2ZkFBU0lXR3A3VnFqNC9NaC80UktQM1Q2b0UyV1V1MDhnck4yZ2Fw?=
 =?utf-8?B?TVBQU3dxQzYrOHBuZHBBVWpDMEd0WkpwVjh4U290VlJzS1lRZWdTYTMwR2lR?=
 =?utf-8?B?VTNPekJQdWo1bHE3N0ZOMWJoYTFMMGt1SzNvNW91WkNsSjZjeUJaMUNNaC9Z?=
 =?utf-8?B?c3psUXAzdE9ud0RjVnJZUzB2YXRmck5KUDZDTmxhdDh6MVczenVPOCs5akdq?=
 =?utf-8?B?blhUSzY2enlYb2pFVmVxVnV2Y0FDVGRKL3o2MEJsTzRKdEoyTytLemx6cThC?=
 =?utf-8?B?WE50d1pvU0dhQlpBdkJKblBzY0huWHU4bzZYOWpWUS8rZ0kxRkNuZnJLZUxk?=
 =?utf-8?B?aFB4NGx6aXZaQml3bWdBelp5enFqTmdEb0lhZXlFSklVemI5N1NRSkJsd1FT?=
 =?utf-8?B?bENEZEdQQytkNXhjWW01V3U5azQ4Tmt6Yzdhd2FFVGhvbVBYb010NVFxRkpU?=
 =?utf-8?B?LzJBWjN4c3FKakc0YmlFR0tleU1sczVwMFpRejJQYVBCTzJLVmZuT2dzalZj?=
 =?utf-8?B?SXQ3VjlXRWlOSksyT1RMejlFR08zZVBhKzNpM0srS0JMdEowQ21odXpKOFpk?=
 =?utf-8?B?ckY0OERXMnFHbTlaWFFRbkg3VDNZd2M4OGdYRmZUSE92aHFGTGNxRnAzWDBB?=
 =?utf-8?B?azJCTzhkaGN6UExpMmRWTWR2NTAxNUFQTyttVytCdnZBNkkvcTRTcUs3KzUz?=
 =?utf-8?B?UTUvY1BZdTY5WndEcTVaVHZKZEtYMWF1SmZPem5rY3E1cmdndWJsUWYwVURr?=
 =?utf-8?B?elJoRy9NeWNyL3dRZ2RSNVJNVXBzeGhjWW1oTFBmeEFLeUlBWmtkL1BPaE0z?=
 =?utf-8?B?S0VqS2l5QWx4K3kyK0F3UUNaaVRiYk0zVWx4MCtmU2RTRlpPKzNjWkRxeC9Z?=
 =?utf-8?B?TlJ1eGJJREY5SkRtU0c3bkZWaEgydEk3bEQraTNIVEc3N0hNVy9LMGVsZ1BB?=
 =?utf-8?B?V3VtRFBhQWxYdk0rMmRYaWFheEQraXF2QW1mYnVxck9XTmR2RlhSZ2NhQWVU?=
 =?utf-8?B?VXdzcU9iN3Y5b1BuVGtHSVFKc1UyNzNxQk5ZRzFhSXpNa1h3WHZGak5VSmor?=
 =?utf-8?B?NDZIVW53S01GNGc3bWVmdUFwWkNaSVE5VmhWU2N0RFJudmtGRHFtS0pwcVR2?=
 =?utf-8?B?akZDRHk4YWFpd0tEM1c5NjhNY1dTYVNWM1VNbFN3RzdXZWh4RlMxWnVDeUFP?=
 =?utf-8?B?a2ZtUXU0YjNhM09wQkxpZURqVzhOdmRJVXNHNU45ZGFHSnA2V3VnVTBZd3Fa?=
 =?utf-8?B?MEdhcXF3bHNYV0lrbVJBU1J3L0cxQzBOZk9QaWxqZTJ4Y3M3MDliVXgzcy81?=
 =?utf-8?B?RUVrb2dwTHRTcEl6ZFV2blh2M1NhRXRXZHRlTG50NzBoakZOWkhCd3YxRWky?=
 =?utf-8?B?K2s3bndmTTVnRitkR1oreWpPVXBsM0dyeXQxUDRPTjBFeXZvbStsMzIycWZY?=
 =?utf-8?B?N2NHV0J0ME8wOGVZNFNORFZlSEhjLzVpVlpWRFI3NURLcUFERzRGTFdqVFJC?=
 =?utf-8?B?SWFuTElNaVhVZEg3S2IyN0JxelI2bEYzanpxVlNpOFd4bmJpSDZ6YkVXZ2lP?=
 =?utf-8?B?ZTRHY05SOHUvZldtTlJ6M1lBUUFqRkhTYmVVb1NBR29Rd1pFY3Y4aG1rSndo?=
 =?utf-8?B?cFVWYkpheGpEMnlTcmlwTnV3Z1pXcHBOQmJ6UUo4NUoyWC90Q04zdENZYU05?=
 =?utf-8?B?QXJYV3poeG14NDIzZzFSR2V2cnJDVGlrKzJ5RVArZ2dtaDhsNXVBVE9jMTJ4?=
 =?utf-8?Q?xl5w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3RDd2hJYzVZSzhQZWlJdkRRd0E0aGlvL1dCVjdHZjNKdytpUHFIRHlldy9p?=
 =?utf-8?B?MGJmTUI5dUZ0SVNsNlBaSTVVNGNobnFFKzJVQnFxTU1OWGpjb0JWdFYybktB?=
 =?utf-8?B?aVluU0NDa0JnbnhpQi9FZ25uTlMrUUVRbkZBWEY1WjhUSkRzaXJCSWV0QWQ2?=
 =?utf-8?B?N0h1c3JnQmF6a3BmM1R5cWs5Yi9jRmRnR25wa1BmZGxBazNWLzZRQS9BWnF3?=
 =?utf-8?B?ODYyTndPMG8zRWdPS1NvRlF3ZE1XNnMvUnJ3by9ES0gwRWR3N04vWjN2SWUw?=
 =?utf-8?B?RlNFekhKdWc2UUNGZGVodHc0ZEl4YnUxWVRqZ3hEUzJKVE90blQrelA3clFn?=
 =?utf-8?B?cHB0RVZtd0hyeElmQzJERjR0am5EaUFaSE45aE1oSVZXT25OeTg2aTRVNTVD?=
 =?utf-8?B?OUVwSEtYd001Qk5BT011RXUwVTVCVXErNVdSeVcvOE5ZOFlIYjFlRk1UdW9l?=
 =?utf-8?B?MGpXb3NBaGx6V2dhYmkyd0wwUXZqMnVQWFRpT3ZWNlN1ODdrNjVHWFEzc2hi?=
 =?utf-8?B?R1hjaEY3eVdoSURwUFVENDNnWm81amROdndUWVkrWFlDUFhOMXk0M0lpbURv?=
 =?utf-8?B?SUJnQUM0NFR1QjNWMW80OVZ0K2lYdGZHV1p5WUgyWTVUQTQ0Z29SZWRrQ01W?=
 =?utf-8?B?dUN6WktKYkpRQVlvRmpSaDFKZkNZSW1iMGl3NDBtUFNUL3BQSUxpRTdDUmg5?=
 =?utf-8?B?bVFMVnBnTktJL0tSdjNZay9KUnBFMERuUW11Uk04V3NoYk5udFhYQUtjekt2?=
 =?utf-8?B?TU50bzdFbjNPZHRVaHZYNzNNVlUvSFdRZGo3UGJXYUt4UGdVWUpsUENzQ3RX?=
 =?utf-8?B?VVRjNnJsWWJKc05YQ0JWd215ZXR0WGRCVE5ONVVyZWlnWVdZbUZudGUvUkd1?=
 =?utf-8?B?ZTlNWllsNFRxeEp1ZHZNSDlmTFdXUmhwdzh4elY1RzB2eW9tbEJTbFVZcVlF?=
 =?utf-8?B?ckI2Q0Z4U1VJZmFQOGRUdldPNjZuZ0syQktlem1CTlprQ1VGcWwxS3dIY0hT?=
 =?utf-8?B?ZmFUQ2YxcVJBb0FPV1lSOTRTaTBaVksxRWlWK1F3VGEvTDRmTnRDWlRHb2Y0?=
 =?utf-8?B?MVFnaXRkKytSR1R1bHdiVEU2ZDZDQzIvZXNteVZEU0J0VHN4Ukd1b1ZBRmQz?=
 =?utf-8?B?OG4vN2R4TG45Sy9yWWM1aUdTS29wcnJMazl2Mmh0SjhmYUFZUHQxcC9vOE9S?=
 =?utf-8?B?SFJMVGZ0dGFlZUJjdWRKM29RUWt4T3hnU00xbmk2anZjMVdnWTdzUjVCOXdJ?=
 =?utf-8?B?R0VsMW5CcFpiNXc1U1Rmc3YxL3hjWTBNVmZ0SlNHc2h1Vm80ZnoyMkZKV0cr?=
 =?utf-8?B?Sk40RTZYTWVBU2RjYm9JS0pxN0dVc003azFCNG5QRkdFcUJyY0JvaHZrYzYw?=
 =?utf-8?B?Ym9rYUZVUEVHbk5SaW9jV1B3M1dDZjRhTE1YRUR3OC9iendpMFVEQ1RrQ3ZT?=
 =?utf-8?B?YkpWWDRSTTU4UGRkenFpdVlWNlljQUtOdjBVeHVwcURsTk1ObHJSaU9WM3Bz?=
 =?utf-8?B?RjEvMElRYzJDZFU0Q3VGWFNHWjNnRTQ3S1RldVpBbjN4VFFEdVBvcC9GcHRK?=
 =?utf-8?B?TlFFazVvUEdCRTM2b1RaZHArcytCeFBLcHo0amo5VllpY1pjdjZhZ3dPM20y?=
 =?utf-8?B?V2ZqUkQyRXZ4SUVwKzBaeUtvaGh4N29tNlJlcTFmZ1B0c21KNUQ1ZVF6RElM?=
 =?utf-8?B?eE5JQzJTdklad2NRbVJYeW9vdWdHdU1uNzg0K095TFlSRjlaN1Ribk0ybU84?=
 =?utf-8?B?dndjQnlscjR5REw5MVBJN1J6aXZETVNoZEhLNmNLQzZ0cDJYdmZlNWlGMHNs?=
 =?utf-8?B?YkgyeC9weFA1eFlYcElrNTN6TFNrKzI3K3M5ZHVydHdLSG4xaFRVYTlaeFZD?=
 =?utf-8?B?RkV5eU5FVEx2N0hBc3BjYVgwLzZEVjIrT1ZFZWhuTk5aWnQzVmwxZUM1QlNL?=
 =?utf-8?B?TlNWV25XUWk0dTZCTjRqUUZMZ002N2syNUJCbWVlekhDU2xneG5FOXRscUJQ?=
 =?utf-8?B?QWFhYVBDRERIZDdncnJwSXB2d1k1akJVeXlKb014YXI3dkdPYUdWUWhQeTlL?=
 =?utf-8?B?UVF6TThqTXJMVFJRWUh2VFBpOEE4TXhqZEptajNVMW91cE9QeDc0ODJFODlt?=
 =?utf-8?B?ZnUrbmpHeWNHU29pYlVLVFFqM0pJUXpuNk1JaFFENUprdmlZUG9udnp0VC83?=
 =?utf-8?B?T1Urbk1KZEtBZVluTXJnNWNxVW1qT3ZoZlU2YVAyMVdjRURicFBVaDY5V21U?=
 =?utf-8?B?aUp2Zm4zRnpVbTF5aERyWGVZVmZtUnphUkxCeU1hOGN1SlVyRzVpVEszbnhQ?=
 =?utf-8?B?UzZGMCtybFYxTFU4WjBzVWRXaWpvOGd5K2pFcllsSUZZV0V4MFNPRnJEQlBh?=
 =?utf-8?Q?Jev1yzRzo8pEQiTQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df080cf9-1026-4d0d-bbe5-08de73f7c236
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 22:55:08.7596 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AXovSCRF/ZoYI9TXMI+Vx7izFd+Pi4AcXpho8wr78gld9wKE8GgBQmJSNpu16r9HVLMXHOz3gwaYpBcblITx3oT3uKxf8QMQFlICBXpyULA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771973713; x=1803509713;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KpZJ8CpfL2FT41iJ4Iewq/18F9zWGAsTWqWEuWzhbN4=;
 b=ecPgEYcT5daouLx/nk61XRL3RSrcZmQ+zAuNqCX1mpxp/KY6/nIBRvvh
 z2zuBknZh4YPljpcnRIaFw+BWKL6Bs7NgV0T/qWjG3o2vIlQapaFTf9xQ
 cbrUS6JrTNIP6/FGjyzazA+edVj1QONlxJ2mmgD8cdEQ6pzbpj4sahKWx
 KECFXgxClXnxoKvu00C0aOkUXHMtIYNocgw+y13ght0ppzU/Fx0ZvxMT1
 qs8+vzXBOMxfBEPpb/NXSjpefBJ4VhxKSrkRVDq3GdMHPifeKodPX7C8+
 4XbMpPjGkTQ7Nz0KUk0ML9cNksMN5HS2DId03ZokXn1HYqer3QOQs0s0a
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ecPgEYcT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] e1000/e1000e: Fix leak in DMA
 error cleanup
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: 7291A18DE25
X-Rspamd-Action: no action



On 2/20/2026 5:03 PM, Matt Vollrath wrote:
> If an error is encountered while mapping TX buffers, the driver should
> unmap any buffers already mapped for that skb.
> 
> Because count is incremented after a successful mapping, it will always
> match the correct number of unmappings needed when dma_error is reached.
> Decrementing count before the while loop in dma_error causes an
> off-by-one error. If any mapping was successful before an unsuccessful
> mapping for an skb, exactly one DMA mapping would leak.
> 
> In these commits, a faulty while condition caused an infinite loop in
> dma_error:
> Commit 03b1320dfcee ("e1000e: remove use of skb_dma_map from e1000e
> driver")
> Commit 602c0554d7b0 ("e1000: remove use of skb_dma_map from e1000 driver")
> 
> Commit c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of
> unsigned in *_tx_map()") fixed the infinite loop, but introduced the
> off-by-one error.
> 
> This issue may still exist in the igbvf driver, but I did not address it
> in this patch.
> 
> Fixes: c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of
> unsigned in *_tx_map()")
> Assisted-by: Claude:claude-4.6-opus
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000/e1000_main.c | 2 --
>   drivers/net/ethernet/intel/e1000e/netdev.c    | 2 --
>   2 files changed, 4 deletions(-)
> 
>                  if (i == 0)

Hi Matt,

Looks like this patch got munged. It's not applying for me with this 
line removed. Could you re-send?

Thanks,
Tony

> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c
> b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 7f078ec9c14c..15160427c8b3 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -2952,8 +2952,6 @@ static int e1000_tx_map(struct e1000_adapter *adapter,
>   dma_error:
>          dev_err(&pdev->dev, "TX DMA map failed\n");
>          buffer_info->dma = 0;
> -       if (count)
> -               count--;
> 
>          while (count--) {
>                  if (i == 0)
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index ddbe2f7d8112..6bcb57609d16 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5654,8 +5654,6 @@ static int e1000_tx_map(struct e1000_ring *tx_ring,
> struct sk_buff *skb,
>   dma_error:
>          dev_err(&pdev->dev, "Tx DMA map failed\n");
>          buffer_info->dma = 0;
> -       if (count)
> -               count--;
> 
>          while (count--) {

