Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF55DB04602
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 18:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C20C60ADB;
	Mon, 14 Jul 2025 16:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aRZvlFHYu5XE; Mon, 14 Jul 2025 16:59:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C95E60B0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752512393;
	bh=4YdKIOCxXJh8gCUAEFnLr40/AXvYhO6BeAfcHi9n52Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IXSa49gkXjtOPrDulb4Ul6oTQPytduRt0KZeYdq8bdfH5wKKNgloRjiW5/EBZF34B
	 dQ9CdarTvFS3vNKFNd6NVjHnmEbKeDb48WmK6g+1zrOisdQ7fWb2X1wa0JbyzFeXbk
	 BtVQZNjVJYGx7uAUlW+x1eLiKtKPKOfykiFVkVMpwg9A4VWS/M1wbUiIfkj8rX0Lnj
	 SSE1c9zAmty+nRtNyM1fUVenwXivN1fW7F2Zxu7JWbipXQX0igSPFRT7VU8pBUsf2g
	 cvnICq1mIfDCwZ3te40ML9CMRnUhpgGjwo3GUFQ+ac1+mOuCzBfXfO/nMyTHrhyTEm
	 tYN3RJpmOID8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C95E60B0A;
	Mon, 14 Jul 2025 16:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5CB15E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3270404E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VdmnJW6A6EHo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 16:59:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23A944023A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23A944023A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23A944023A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:59:48 +0000 (UTC)
X-CSE-ConnectionGUID: JOybI4kcRbOLs8mGVIYj8A==
X-CSE-MsgGUID: 5aEOSZhDS8aXCv6wIIFDaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="66160523"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="66160523"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 09:59:48 -0700
X-CSE-ConnectionGUID: 69SuiLrhTTuULuzi2r4jlw==
X-CSE-MsgGUID: Z3t6kRNTRLmFu2dLQt/u3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="187972212"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 09:59:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 09:59:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 09:59:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 09:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iCRbbttWZ3rifSaB9jXhmjcjvwHwVlMMcLuIWEtVmhP3y3+AUe6m2vpIiIMjT7uQ9+2Dqi/vYwwLlm9bBlu0/+MA4cdFq18jDwlHC4lCW2gDeyL/vx+LUh4lXgAG/A04hJPIs6WceatGwtHrxhFKviDx0lcRKKNjhjpELK9x679i2NqprKbvvTwVYAKEHbErpZDztVf7fit+tYJVzgW0mW/g8/n86lFcPHANpT1bQNdI7gFZWlTTT1MbnhLEbjRj6ZnCcIRb9IAlNMLbuffvZyzTAPtpBiuZzvJkzSbkk9QogWyK7ZyLrJ0MjJS8KyxbH5mIE9m5yxgiUEZRBD/Pvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4YdKIOCxXJh8gCUAEFnLr40/AXvYhO6BeAfcHi9n52Y=;
 b=zC/Yitk9FwuScbkivZGQ7EkJqSYGcBbsuWL3nd3ucxNlBo6BpHP3T2nE6JOsFc8n9meBNds4kzyh9diZWz47Bmvc4SjytibslJNlUhI4SmlZ4l7574d86qKYckTGvfgKdeLELRbCZEIkwUQxq4dGPv/BJqxKatdVf+DQK49AfVHmPs0WEnu+7AMGfERIXb0kyK1IL3v5A6zqk217nyEC/1sJC5BZfozQbckew4Jn92ut5631ODHiL7X3HOQA4T3P2TxaVub0OWtAli4B9p8/H5jIMXhaLeUVaPYABmjREVyDSWecf1ffc1uHpNVtVCP3rXRwkUQp0a8wx3vGJrPB0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by DM6PR11MB4644.namprd11.prod.outlook.com
 (2603:10b6:5:28f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.33; Mon, 14 Jul
 2025 16:59:37 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983%7]) with mapi id 15.20.8857.026; Mon, 14 Jul 2025
 16:59:37 +0000
Message-ID: <b50bf0ca-abad-454d-8e47-e60312609383@intel.com>
Date: Mon, 14 Jul 2025 19:59:31 +0300
User-Agent: Mozilla Thunderbird
To: Rui Salvaterra <rsalvaterra@gmail.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
CC: <edumazet@google.com>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250707092531.365663-1-rsalvaterra@gmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250707092531.365663-1-rsalvaterra@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::12) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|DM6PR11MB4644:EE_
X-MS-Office365-Filtering-Correlation-Id: be4bbddb-09f6-4670-1181-08ddc2f7d0b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDJSNSt2S0N5NEk3VS9jU2FlYzVLZUtBN2FEVDlWZy9UZ0gzbDVVcVZsQ3A4?=
 =?utf-8?B?cFkvQlUvM2k2RlVtbmZNd0lESVpUNTlkV2tNckd4K2pQZHBBem42eHV4Mlhx?=
 =?utf-8?B?ckQ2cnRHa2RBYThZUUYwK3JiNHJ4S0tQL3dySitDb0UxUTVlR1YrdXdBcXN1?=
 =?utf-8?B?YUMyWEtUMHdlV0dIcGtFclVLRWpEb3Z6S3h0c1orY2FBMWkvb0RBRW9BWExZ?=
 =?utf-8?B?cEJOVFQycE9hQXdmNDA4N1VFQ05pZXdZU0k5N1hucXE3NTBYUnVmUi9yVk1L?=
 =?utf-8?B?V0ZuM1p6cmRIb0t5c0lKWVY4U0dyUG5IdHcvS2tXZUx1a0MwSW1CdWtpbHpz?=
 =?utf-8?B?SnNmQVg1WUFKTmN4RW04K2xlZkYxYW1mTXNyekJQWnN6RjJFYWZpajl2ZHR4?=
 =?utf-8?B?c0ladEg5cWpwQzlmOEdXQ0d6Rml1aUp6eHJqS25qVUwwckpFc2U4K2k0WnQ5?=
 =?utf-8?B?eEhBUjdzTkUwUEFrM0NMUVpObldHY1dGNlVyVGNMWUdHZUJFV1Z5UGVpWFBY?=
 =?utf-8?B?MVhvNkNGM2hYV1lFbUliMGdQdzBkME1laTA4OU05VmhoZFprazd2b2Z4UXpr?=
 =?utf-8?B?KzZTdU5wcGMxY1NZdDlYUGtvY3RqeFpwSkhlZWFIMnlJOFpoRTJ5aCtXY0kz?=
 =?utf-8?B?MGRrZ0xnbWhJS2FqRnFBeXR2N3dvdElZWWRtOU5sajB5U2VONFk0c24wZlpD?=
 =?utf-8?B?UnI0blIxSmlqNmIySDZCUktPVmg0c1kweVB5b1NEZlVHNHkycUlXV3JSU3dD?=
 =?utf-8?B?Zll2UmwzZU1kMVZjd1ByUVpMQk9HcGZ4THJZMkNxYnlocjFwa25vTCt0cjVm?=
 =?utf-8?B?M1NNMG5MOGcrWHpJYVFLTFBFNkhaMEdEVUxaZU5TK3hvekJpZ09zYTVTVThE?=
 =?utf-8?B?Zk1TajNLQ0R5ZHVwRWhDWFpSNW45ck5lR2xGRmpqQW5iUUlFMlAwQUI4WnI4?=
 =?utf-8?B?aWRVcFJsRXhXQVpvcmZKOGp4VTYwMUhrb2RoZ2t5NDdVL0VQblgwTzBZbXE0?=
 =?utf-8?B?MG9YZ0xpU0VxWkdCaERoZlF4TUtmdzdXaGpKZ2lscUhyVGFHaXZtL0xsb212?=
 =?utf-8?B?RFFYdktUcksxaVNFeVE1VnRuV2hVVm9Cci9hL3lKRkRXViszN0taRnVjaDBz?=
 =?utf-8?B?czdvYzRYTmhJS04yUXZ3anNpMzFzbklMQXNnQTVrci9LNzBxa2pKaGRXdGJs?=
 =?utf-8?B?VklwK2ozTFdnbjJYS21VZE91V1FiRVpYZzBvcGsveTJxZzJlNHFIWWlDUlVL?=
 =?utf-8?B?SXBlemhpMjI1YkNTSitrbGNZU2UwdHRkSGN2YnhVZXRJUHlMRHpGdXBxYjky?=
 =?utf-8?B?OUljVVZRS2hTcm0wSEIrUkF1NUwrYzBWMTBHWWlrYWphVko4b3lncFdUOHVM?=
 =?utf-8?B?VlFWaUhOVjExMkZqd3JFRXlzYzljdkQ0NEoyN1BmZmhNWDJIRUVJWWczTy80?=
 =?utf-8?B?OXh6V29Wa3pSRWdQekEwZUNTOVZuRER5czZWWU5SY2kzSys5Y0RxMzNWTHVC?=
 =?utf-8?B?WXBUZ1U3dWtRQ1VmRTVMMmtZNUZadFp6ZTVrNlVuL3h1WStlQnRmQ2hCRE9N?=
 =?utf-8?B?Rm00MFYvaVhablN5OUtxWmNSZHNQRkZZSzFPUlY2VzErU3BRU0FSVFBsc2x6?=
 =?utf-8?B?OWlyZUl5OEhDNkZ4a0ErT0NyTCtrRG04Zmx0YUVMZTNIVnQzZ05NMWVBb1FE?=
 =?utf-8?B?RnM5VXgvRkVhMjV2TVpXMDJQTDFhRDZ3U3JHNlk2aGxuVzl4Mm5wR3lVUkFj?=
 =?utf-8?B?d3ZrQ2xNbVpYKzZlcnpVSGhUa3FHMEoyZXJreGtBbEJUQnorZWU3dTh2Ykg4?=
 =?utf-8?B?K09EZGxwNExaTDJQV3VSSS9aK1JTanNVdjVENHpGM2lLbGl3bHlVQkdxQS9Z?=
 =?utf-8?B?bSt2ejMrVG14NEdzTFBXTVo0MHJIaFZlRzhSZXF2TnFNRjNVTEJkVnNhN0lu?=
 =?utf-8?Q?fMv49kp2aWU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TThKYXhkbHlKL3IrM3BmZkxWNVV4bjdFU2lKNTZPTHR0NURtVStRNUZqODQz?=
 =?utf-8?B?dUZEazBYUnI4bVcxbkxxTDBTQWE0bStQcTcwOTNNcEVMZTRIcU93WjRKRExu?=
 =?utf-8?B?ZGFnNytxVUVSZUx1em1qZ1pYMHJKTURRK0Qvb0NOUlljekRTOE1aTVB0Uitn?=
 =?utf-8?B?dVhLNHlwQThOM2ViQm5zZERkcmN6YW5MQWVjTE85Y2tTc2VpMmdaN0NkQndT?=
 =?utf-8?B?dC9MVGVrWGVhKzFrUXhoRFBaMU5wM3ptZ2RqcnZQMCtYTE9TL1NzQzQxU0tO?=
 =?utf-8?B?cDJHM3o4VjZrWVJmZ00yVjY4dS9GdXNIakg5Slc3R1NnZityZllVT1J0M0w1?=
 =?utf-8?B?SmlUZ004eDhpamRSaHA4dzBMQmROa0dXbDVBT3B3SU1mN0hJRURrZWdmWkdl?=
 =?utf-8?B?V0crT01qTm04TWQ0MDc0Z2o0eSs1alBpUDVtZFhsRjlLc1o4a0ZTSkhZazI3?=
 =?utf-8?B?a0c1aDZ0V0xySjNmZzJaTUJpbUJGM29iSDUvQkhEaUIzMW1MVmVhcnEwUDJ5?=
 =?utf-8?B?Zkw2bFdDMjVYVEtrTGtWendZT0V0NVRUTk1vNlQ4MkRIYnVLK0J6cVJMeno4?=
 =?utf-8?B?aVdUanBmU0pEQ054VzZyeDd4ZVZuZ2g0M1FsQk9wOXErODdEMnpHcy8zTHlv?=
 =?utf-8?B?TUdNdkN3dzNKN2NzOGNJMTRJUEMrTDc2ZGpsT1F4MzNTTzRKNHhYcnkvb0Zt?=
 =?utf-8?B?RUdvUjhsUVZ3cjBBL251ZWxUaEVtZ2dkenZRemdLcThWbWdicjVwNnRrMnIz?=
 =?utf-8?B?RXhOQ0RxN1BiZXFLeklUOEZsR2NIWndvaVU0ZHhJbi9NbU4zRy81cWh4YjNT?=
 =?utf-8?B?b2N3MENmY1dkSmx3TGE3Y1I5U0VFckhnWlVVa2xxazNodXUwUUJXZGN0c2I5?=
 =?utf-8?B?NFpWNDd2R3d2WEd3TERUVy8yMmVRanAxaGtmSjVFZGtqK2F4TGFsOGxkTk1W?=
 =?utf-8?B?aWZJeHMvMjdFaUQvZ2VBQXFUNm1jeUEybUx2eit2VnRDTExHb2JDV1NWNDJQ?=
 =?utf-8?B?bFgzUzRiblBnN1h5K3B6Nll0OFVUelZoMkpjZU5SZHR5RkZXb3JPamRPMzFD?=
 =?utf-8?B?TkRKblJxRGNrUG1nOVZDVVhnZFdWMUpUMUREd3RGcTA2UCtCM2ZOc21IWGxE?=
 =?utf-8?B?Yk9kK2tGWmF1bVRjSHVXb2I0QW9mZEcwdS9lMXE4WU96N25sODRSeVZVOVZO?=
 =?utf-8?B?eHJQRVRjeGN0WXozazE1TkZNYjJrZlpCL05ZNG4vV2FEdWxOYTBwa1VmdnY3?=
 =?utf-8?B?VEVTWEJhTk5BVWcyUzhpQnErSzVpMHdaRVYrTHgwU2R5OUlXdHF0VDVjbzd2?=
 =?utf-8?B?MGpna1pickFBZ3VYYlZJeWJHZ3NiS3p4L2dZSEozcERTT01XWUdhMzdBWTV5?=
 =?utf-8?B?bldVNlRwaTRSYUZ4dmtlV2VvdGlpeitPTmN6clJJalV4Vnl1ckRLRExwR2c0?=
 =?utf-8?B?b0FOdGYrNVd1cVkyeVV2T1dZcXBGN3hmbGY5Z1JCejVOSEV2TG5KbGNCM2N3?=
 =?utf-8?B?NzFrVDdaMzd5Q0JoRDJSeWtiY25Hc3FLbXREWFVybU9MSnV1MkxLelYycERn?=
 =?utf-8?B?dmZZcDMxYk1QTEtpRUdaNnVVMVNHcGJoSFV6SFpzSlZBbXpSRmI4MnZxVkgx?=
 =?utf-8?B?THRQdFdVYWFnRENHNmw1dnNkUjlFcUNmdmQ5S3BiVXVxUm90UHo4YU9MSWdV?=
 =?utf-8?B?RElrd24wS2NPOHQ5MFFpMk9BR3ptcXhIdlJRRW1CT2VOSVUyV0Jxd1BORjFi?=
 =?utf-8?B?SmhBK28rSmxRMHpSSHhncmoydmRXcHRDZ2VlNE5idUNPTlRSWjZnU0V3UUZF?=
 =?utf-8?B?R0VlTWhXMWd2R1FuSFA3a0swUzk3SmdaNmptemRpeGpoZmFTVGgyOWI5TVIz?=
 =?utf-8?B?ajMyM3hFUE05MVNaSXBhVTVWTVM2NGZiWlZtYjZ6dWlJTE5QRWRNZE5SL0lu?=
 =?utf-8?B?QklmTlNEdm9ILzFMdWxpNlpPc2JIWFFCbHRlMW9IUkJYWnkzL2ZEcG96clow?=
 =?utf-8?B?UU5scDJzVkN4aWlxVzdtT09WWC9HR01rcXJLbExiV0VCNkRGVk1CcmhtTFNT?=
 =?utf-8?B?TUxQRTRwNDg4NGJuTnI0ZnJJT3huckZRM3A1SlVvME9yeTlEUk9qR0NWSXkz?=
 =?utf-8?Q?iiFBmyzfBhGqDSo+OC6xsfU3W?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be4bbddb-09f6-4670-1181-08ddc2f7d0b5
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 16:59:37.2549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cdm7D9Emh4yE/tUUM1bRQJzfdadJyPqe2Gvn9VCYagNSb2Q+fuzFfkleVWu6fkIrEWFTsp+B5zw8GTQnQQW47/AMGePyOoPbqmziVFABuFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752512391; x=1784048391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hAmVHhBiI4UXfjunBaqjC6HSy/QAOkT1eODO6MzZMa0=;
 b=acNUteIq5cSPS2H+1xJdJqn3cDeSBkihA0lbGURHHrTJOibZauybZ+b7
 jj3e5WPk4GS9rse3asFCLkEtMPy4zJT4eesFP7oh/CBtBhNJ6u9lvdsrW
 iG5UQH1/Wpsk1QyTKKSI65zmYsgy3kFGPJce+Hy2E7NCEp7oTm+W/Y3g5
 WhgQ9r3Gjr+DO1dDcS9mGOYlh/Pz0HQx4jpNM0w9gCin94qjZrp/lOLMd
 4WYpxLcGiXVbG+0AqipDp/ZsL99nX8Uz8iKYd4jHiagMknvzgnDPIEkl5
 amU/ieBuuLYidIAj9T2rLjofOnWFjdGHfLF/omtx9F9/LRNy0QVOoVQ11
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=acNUteIq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: demote register and
 ring dumps to debug
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



On 7/7/2025 12:17 PM, Rui Salvaterra wrote:
> This is debug information, upon which the user is not expected to act. Output as
> such. This avoids polluting the dmesg with full register dumps at every link
> down.
> 
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> ---
> 
> This file hasn't been touched in over four years, it's probably from a time when
> the driver was under heavy development (started in 2018). Nevertheless, the
> status quo is positively annoying. :)
> 

Hi Rui,

Thanks for this patch.

However, I don't completely agree with you.
I think that the main idea here was to have enough data to pass for the 
developers in a case where any issue happens without enabling debug 
mode. Especially, for those issues that reproduce rarely.

I compared this function to the corresponding functions in ixgbe and igb 
and I see that they are implemented similarly.

Therefore, in my opinion, I think that it is better to leave the prints 
as they are. Or at least, to push similar changes to the other drivers 
as well.
