Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F288179C6CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 08:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 906C8610E9;
	Tue, 12 Sep 2023 06:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 906C8610E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694499579;
	bh=Lt86JlgTFliFGHXbOEQpUjNg500kRsNDJUOHfvvJfAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fi2J8qBIErTFD94h4of9/jaCNPXD5mEtTbmQfBF7NX6KRhIEQAF0I2KwfC8rSIrSp
	 r201FSrXc08+MJSpCqMyGO4w/acbH4ygfKEPjmM1OFt1Zp4kqwBk5NFkA6L54Kp0Uc
	 S3+7h9LmSzbqnOIpNqDGuhUX9tjpE2b3ka7xE4a/mvc47cnCGBA4nKlAMcdIA+recS
	 vRETNhhF/f+IK8LGKW8ybDjmvfum5ATf664KdBrvvsg5jTMyA/74juaEiizRareigC
	 YoLZwJHOv4WmxD+9uMtZdtadp5s4fUBhU/DQVX1peK6kxCnx5Eao99tskgNY8gP1iZ
	 vEUj0OR7KcF3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ncmxy0uK_YUM; Tue, 12 Sep 2023 06:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C53EB60B0B;
	Tue, 12 Sep 2023 06:19:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C53EB60B0B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34FCC1BF27E
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 06:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09A1C41923
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 06:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09A1C41923
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SA8b8m2SwDau for <intel-wired-lan@osuosl.org>;
 Tue, 12 Sep 2023 06:19:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7F2441929
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 06:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7F2441929
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="380989183"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="380989183"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 23:19:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833789491"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="833789491"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 23:19:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 23:19:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 23:19:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 23:19:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U82z/15mbTFvZxrB2Y/JRKKuDxklE9XczE4UfM4Hk/4zb27+Ng+jM3jP2AtQxKtd/1IPgeDnqc3TKvok3Dls+/TPG/y5Yt1ZTg8N4/M70VdiU6xE4K1txC8ADJmyjlNRsZfPcQIUWGNc0yHpZwG/xYnI574o36SzM4xgS4rTrWWFGwIY7b9L9SKIWEcSbRr5uVzKTixaKFYtPW08G6vFkS1VfShsysQfeiVDAPkcClBkyBolFuddkFD6UDohXdj2vcRw+y5Mu3hgpul6KvQrHP5SuzAZSDQWjiGnHc60ie0NbmC+y7cVa3u6WNBRzi4nEB61wvt0RkTUQ+2sVMRuig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4J6HE/0Wd7V1nzqzq63NCwD5qUnmjsaynJjUZHGroPQ=;
 b=GOHhviLcloeLe58gMOEGICxCfSw3Zi2zblAip7di4rfnYQArnrZpmzPk9PO4Vw1yQfyPfWjAa1/3ZJxN96nmPCnMDIxK0DeAuD62qScRosNlxr6zqENRkZUkqdnSmsepyCxAuXKcGQO269582EJHx4jGY6AIRH+WSONIsmYgBwMLMaZ/7dfiU31zuUVQKLD0MIgmKcep76QFpUQEmUyUhuNiiabxHRF5cj8oLYQj74LzO8WdcmxC14EpizeDkVHT6Gdbq6L/w32MdrSDAgBpX/dM5RBHL8pCqdf4VW78GCAN9p9Qdtb4rGSm+WOewW5WUYQq5OiCltrMt0tYtKQl2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.38; Tue, 12 Sep
 2023 06:19:20 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::b8a7:a98d:5dbf:2bb9]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::b8a7:a98d:5dbf:2bb9%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 06:19:20 +0000
Message-ID: <d0ce14ad-e3d9-4007-a1cd-83883ee69d6d@intel.com>
Date: Tue, 12 Sep 2023 09:19:13 +0300
User-Agent: Mozilla Thunderbird
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230912021122.7952-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230912021122.7952-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR4P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::15) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|SJ0PR11MB4894:EE_
X-MS-Office365-Filtering-Correlation-Id: d56dd63e-9e66-4041-0cd9-08dbb3583357
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: czuR/gK5Fsk2aeNgTQAi+DJ3P2AZd+V9k8rdRZmjRFif6VeJA5KBlHrDqu8GvwsylWePb9MZHN7qGbTP035N8wFUIEkFbpU++HNoaZUcHNucUlgyPUlT4kEB7bdYOh8AVK8LaJeHglJyc2+Ve5bY5sZoKL23MIHHVlgjegThoRMItZ1ORYU5V8DFbrW/Q24HoUZah/JdzVI//lIx2XRVK38p3sTm/VhxXcNUXupekg64uQJpZagwxjiKxjf8n3QfqRXLGAeoVao2zOGk1IDRQZsjYsGbicHAuuSHoA3uVTI41dGVhIW0iXC0dXP2ncXv2ATrg6pbtWuSNrkWu13G6bJMZNYGF7x1gq4V4HQm7BPi+XZvaA2k4VWLoJZ8SLV/p5RRe2LwySM+knai8izIvMCBn9BwfF7Fq3keENXBSiM/sSDd8cgNrWGz7Ir/ZHQSRRAtoau1QM3g2/NgKFZDbaDI64vo1eEg4WgFb/ZqeFGOJFu+i02WCfX2r7P0J0CUP7utgIlVCB5I9j5FMjYzTe62xo+7qZYz4IstVkfkg7rXLfhE4K8Q8eX0YmJkQxU4LUJkjeU5KlrowPMgrSepY6k0BTr38tNysA6znHFRob+9thVZ9LZPq70JJ62AVyarZ+0kImJ4ykbdxVreI4GAdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199024)(1800799009)(186009)(82960400001)(36756003)(38100700002)(86362001)(31696002)(31686004)(6506007)(6486002)(53546011)(478600001)(66556008)(66476007)(66946007)(5660300002)(2906002)(8936002)(8676002)(6666004)(4326008)(6512007)(83380400001)(41300700001)(316002)(2616005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RG02R1hCRzd2QldRR2R3d2ZlSzdOMUhPNDBhblBtZXNoeU0rb0JlK0U0K3hQ?=
 =?utf-8?B?SGpkSnd6SnBGSnp3T0V4OStWNTBJYm5WOFdIanhrc1o4bHNSSE84Mm92bjhw?=
 =?utf-8?B?YlVacTRZckt1c3hDeWdHdzZ0K3U4Q296ODZjZnBTVmdCWHBkc0IrVmY0RzBt?=
 =?utf-8?B?V1lWNzFKVWU3dnozYUdzNlVialJyM1FwcWhGZ3NkNDNxb3NreEttTkhJV1ZO?=
 =?utf-8?B?ZGlxWWNucTBnRXVYRzVNVktJaDBOSWVhU2FET0JYYnlRUENielpYcnZBZ0Vq?=
 =?utf-8?B?M200NnlNeGZ1K1QxWk53NkJoMm1Hejl5Y3kyTHl3YXhRMkRZb2ZGaFpRZklZ?=
 =?utf-8?B?aHBRZ1o3TFRFL1ZFTE5sdU1sdExza2k1VmhGTXAwYjF5cFZWcVZReFVicmN6?=
 =?utf-8?B?eEZFekNJdURpT0FNL215bitDK2dXZURMRlY2cHc0VTdoTTFBbmwya2RCcVJh?=
 =?utf-8?B?b1FmalVzNWxKb0JVMGxtUmg2QWdIcUlFQVVVemEzbDZheDRCUHdmZUlOU1k5?=
 =?utf-8?B?ZDZMaThnQlFVSlF2czZ5Ukhrcy9KUW9EQk04T20wdC9HM295N3R6L2RVV2dx?=
 =?utf-8?B?MFJIZksyNWphTzcyNUtUWmhMbmZVakdndGlRWjNLQ2hnMDE5ZG9UUkNJMEkr?=
 =?utf-8?B?cTQvdThXSHFQRzRCUndLellVTmxqQUJMUklUbVBPMTlJN3pzclF6dXo5cGtW?=
 =?utf-8?B?ZmY1Z0dWWU1jSUtRVHJFbzF5eWpyRFBEN0p0N2NseXZSTVk1OHROenl1VTNo?=
 =?utf-8?B?bGxuOWxXaWNTVGVuZ0tLbklIVnRNVkJ2WC9XTENOdlRhc24xY0I1dVNORGpG?=
 =?utf-8?B?VFNKbzNhV0JKa3lGbHcwZjlzMlUzenlvTW5La2dsQlN3KzdiQmFiNkxCUGZu?=
 =?utf-8?B?cFFMNWZLS0M5M25aS2pMbE13THZSWnp2NnV1MVE5elpmU2RxMkNKMytkRHBO?=
 =?utf-8?B?RStxRjJWMzM1RjBJREhwSm5adkRaMGUxZFZEdTdocXV5SjZsME92WE9yRDlP?=
 =?utf-8?B?Q0pxclhwb3N3RTZCNEpZMzBVZFU4Wm0vM1lUeGlqczFrV3hWU0xDdTZEVjNz?=
 =?utf-8?B?MkJLVEpSck12VEdLc25YRitSOHJ3WTRLVHI0bEFQM040MURqRHQ0U2NaK3hD?=
 =?utf-8?B?S1dGRDBIY3hyc1FQYXpaNTg0STg2NGkxdjU3clF2V3I1eWFqTmVCWFp6b2dm?=
 =?utf-8?B?VFhJTUZaV3YydmdHZTUrTFZUYUVYSHk0b0xQRk5NWVhSWUNMclRCaDc3VkJq?=
 =?utf-8?B?Z1BnVk4ySTdMRW5PclN0eGlCZXZzYXJYdlBvUi9mN2RrSkJxKytyT2NYWG9p?=
 =?utf-8?B?TEJ5aTZFUS9idE5xMzl5VzY0TFo3OXZSd0VXQVRraVp0Yis2UlN1UGNSZklF?=
 =?utf-8?B?NE5kL3preDIvWng3RVRBY2lKbTllSmgzSWZvV0FvZWV2TDJOUkZjdjViMkFH?=
 =?utf-8?B?MUpQdmNINW5ET0xicldlQ2psWDNNd21MV3llMFFWY3VQVG1nNFkwK08yU3By?=
 =?utf-8?B?S3U0WlFzVEsvdXcyVVlxS20xdEgrZE5CYndBSXRWdUdkSlM2WmNGd2xQWmcv?=
 =?utf-8?B?c3lGVTRvVi81dnBoTHV1OHlWYjU1SjhoVkhLZ3hIWXdvM0MrVVN0bnJJbDB6?=
 =?utf-8?B?cCtBZUVnWmlQaFduSklqY3g2QkluWkg0Q3gzTnc1Wlp4WmF2QVkzU2JueDhM?=
 =?utf-8?B?TzllM3FUUXFXRlp0Z3FDUDN6T21ZTDJHSGRjSU1rLzVaNVM1NmZFMEZQbjBt?=
 =?utf-8?B?MXZpS1hmSCtuZXljOGtIUVVaVktJVG9lRXF0SWk4T0kxTWVBN2ZCM1plcDhi?=
 =?utf-8?B?V0F6SzErT01aRW9HaGw0ZWc0ZjhNeTE5TTRRZHpIWTJ4ODJQVlFIbUpDc3Rp?=
 =?utf-8?B?MzZaK09MVGtGRDdhL2xhUnBUSGRQYktuaVlGMXUxZnBxb1FERlk2aytXZW1P?=
 =?utf-8?B?UWlDMFl4UHhYVzl5WlIxM1NiUzEzcGJzN2svM2Y2STFkNS9yMWF5OFFYckRv?=
 =?utf-8?B?Qm9ta1Z2dGdCU3hhRS95RTNLTVpkTTU5OGtEdzFvOFowQTM1NXRFSHhvK1Q3?=
 =?utf-8?B?N2VyQ0hHSWwvQzU5Ymc2Lzd6WjFha29iamJpcnY2aWk1VlI4ZUF1SFlSSTNy?=
 =?utf-8?B?Mm9pMy9QVmJ0VTJSSGhJbFVnREthSWlFcTQyQUhvajhoL043ZHY3NTR2Zm1l?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d56dd63e-9e66-4041-0cd9-08dbb3583357
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 06:19:20.5655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tyBdqHtDuYIF0jBYb9G8bdHy4F6gP6uHSryAmkI/m9bW2UdGdbszJkJvoNlqzh1+aCdnjnkhKBYOWwnY/weRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4894
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694499570; x=1726035570;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CuOjcziqeTmiv54Hwu2wnsBh5aN6ez3QGZelG60swfU=;
 b=PezKOb3Oyo+mxFeinksZy0QK7VoPc+xZ8w2lpLO/gB/ZD9iwyXtBDXkR
 feyqfKb2HkCOTpOex36eKA6xqrbH7WAwhQ0/rH3jXREWH7o2Jd0xZ6rZu
 3bNnA5jIqXxMZZvpgVp9dXWR/SgIWrSCVKey4fDOEcCw7MQtzxSVCzzbF
 +7p3cWcJj+664IUyHI0NBlv2sPUUg1xntkIbB+UsAMW3OgqXOpXiDT0aK
 bnXJF9rW94SQhe7Pt2HAstzZ96ApPD3I2Tp383mLSZJditedqwtOTgiZF
 ZJ0mN1uRfM7DkK1FpLSzDMXdvkDyqLnmdeR+HEbeOCExMA4iOLBCZMS3b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PezKOb3O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add support for
 receiving error frames
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
Cc: husainizulkifli@gmail.com, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/09/2023 5:11, Muhammad Husaini Zulkifli wrote:
> This patch enables the NIC to (optionally, via ethtool) receives
> the errored packet frames as it was not provided to user before.
> 
> According to Software User Manual Chapter 8.9.1, once Bit(2) is set
> in Receive Control Register - RCTL, bad packets will be received and
> and sent to host memory. Receive descriptor error field (RDESC.ERRORS)
> shall have the corresponding bit to signal the driver that packets
> is errored.
> 
> By turning on NETIF_F_RXALL as well, all broadcast packets will be
> received, and any flow control packets that aren't recognised will
> be sent to the host.
> 
> How to test:
> User can set to receive all frames using ethtool command.
> 
> Example command:
> ethtool -K <interface> rx-all on
> 
> Previous output:
> 
> ethtool -K enp1s0 rx-all on
> Actual changes:
> rx-all: off [requested on]
> Could not change any device features
> 
> New output:
> 
> ethtool -K enp1s0 rx-all on
> ethtool -k enp1s0 | grep rx-all
> rx-all: on
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 98de34d0ce07..e3f4b3e95cd0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6850,6 +6850,7 @@ static int igc_probe(struct pci_dev *pdev,
>   	netdev->hw_features |= NETIF_F_NTUPLE;
>   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
>   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
> +	netdev->hw_features |= NETIF_F_RXALL;
>   	netdev->hw_features |= netdev->features;
>   
>   	netdev->features |= NETIF_F_HIGHDMA;
Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
