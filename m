Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B91A817A5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:31:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A9FA40521;
	Tue,  8 Apr 2025 21:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id St89YKiJKVlG; Tue,  8 Apr 2025 21:31:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5F4641246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147872;
	bh=MwR67bJIchDdA8F9j+mPTLqwGLyCpIpJfL8XTjh80RY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jumAZmxwv0My6NMgT93DK+mrEpUz21CB+oXSYicTlWvR+uIjh9olxr6U4fr5Gdccd
	 xBwxs5EyT10b7k4JaLhCTSTwaXuv8MeLEQuOUR5pfbpKaIx3tE5dJjakPdBxrSwwyj
	 nRKFG9ZZk/8otUoquCvTHtQqGHRCCJckiduWqjGoXDS81YlOrOxENL/bEynfDy1E/N
	 LfYdMy3C8932Fxkhx79aYcgzQ033n1zTzR9Wfk0LWBf+pWWH8DC2mP8HLEsBAboEBw
	 /vQJL7NRwcfbPG5+8z7o8kBHankFGYfKs3qEjS+U/JrZGgo2yDrSQXDxYsW1MBZ/Bb
	 ClFSa7vunVH3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5F4641246;
	Tue,  8 Apr 2025 21:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 61E70DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4859A4051E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:31:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kt5UIy7w60OA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:31:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C0D041751
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C0D041751
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C0D041751
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:31:10 +0000 (UTC)
X-CSE-ConnectionGUID: 92ZIiY1LQCqOXX5c+BIV5Q==
X-CSE-MsgGUID: fpovrQNxSHGbZ6holkKSuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="48310776"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="48310776"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:31:10 -0700
X-CSE-ConnectionGUID: JBgAob+ETq+ptU/xP+OpMg==
X-CSE-MsgGUID: VJgQAHsiTFOLQZrqR2rHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128887066"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:31:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:31:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:31:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:31:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zW76B5mjK/637rp+oJLsccXgqnCYGccXrt4GWiNnghvTcZ+UI3JWm6FB9+chzxj0SySL7i3xO8BpYJ3OrTssSEQWejdAymXRMOtwgZXMyk8fySvQmkC3KXMSbcJkoH4tf+qqLmnnFpKQuxY3D/ztXw0oDbTPnObVydI0wm8dsWmy0YovhXub9MoAhgW8aHRND53UIMkNDa3hyLhuVWrtVkc+lTwg9koQLraq9TpTZTw8xaga6Icehx01mPZUH3V4ug8D0FVcW8RNKBS5pavtY2/8/rtwNslOGlLh0bQ1exEwaC0ZWCI2icuyJ6qVcxdIfYD5zRH0DdpzSM7yOrHhtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MwR67bJIchDdA8F9j+mPTLqwGLyCpIpJfL8XTjh80RY=;
 b=WXxempgFv5bKj5OWfxofcKogK7rocG0UYnNzSSrQ8GYuC64cZ1zQ/uLqOSn1M4Tp7Gq4HDYEAn+npDLZwNxh/iZKEUKqN6epJVo42X7z9GnwUMXtWKmwNnfdx4yiBn32L4ZVoiOXXpq4bdhdUpw93UUONdRfLM8MR26iduWlHm8iiaY2O3KqhM9UkOjJc2EV3FeB8bNaAB4zTKfmhqohzXVs6KZ7C2isBnxddGJ6bvjtkTU/C/htHwhdaVEmwdcIEZBBi5ruc15/OxPoepDi23JvTx2YBAXYpoYmWQVLoXmSiloOfyrs/cEojBmrzTABBif1bBN7/epPMvLPH4HbAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5816.namprd11.prod.outlook.com (2603:10b6:a03:427::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Tue, 8 Apr
 2025 21:31:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:31:04 +0000
Message-ID: <2fa01052-a090-42e2-8815-1a5fad2939fc@intel.com>
Date: Tue, 8 Apr 2025 14:31:02 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Josh Hay <joshua.a.hay@intel.com>, "Samuel
 Salin" <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-23-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-23-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0023.namprd16.prod.outlook.com (2603:10b6:907::36)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5816:EE_
X-MS-Office365-Filtering-Correlation-Id: e6be835f-f334-4f3f-0e95-08dd76e4aa5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czhHakhoUUdIMDdDT09VQmJRcXVzZUt3cWVTTEtmZW5HSDlJTTNqbnRQOHd0?=
 =?utf-8?B?RWtrOTdrQ1V3WWE2SlVoRFN1OWJSZnBZVlk0NXlLaXBLaG5ITlo0Q0w3cUV1?=
 =?utf-8?B?OFIzazFvUGF6eGZCRnBraFdrbWMvTEhKSXlzRG42MnlhV2tjZ0JwTWkrbWJl?=
 =?utf-8?B?SUZWbkx2YXduM3BNZ09sZlNKc0l3eUZkelNZZFFWaGF5cE9sVU52NG5ZdU9O?=
 =?utf-8?B?YU1PenhTNzhBb2hnTW9ta2FtS2VaRHp0ZnhleTZlMXFGanJTT0RRK1FZWSth?=
 =?utf-8?B?UmxCYlNrRlI0VEV3RllQSEQ2YS9xeWJHNGFTV3BkdTFxMFMyTFRXZEhhM2ll?=
 =?utf-8?B?SFJnUm1CRDR2bGN2TTIwVFhHWjE1b1gxMXkybFFjd1o1WmF4dWRidmloOUk2?=
 =?utf-8?B?TEl0Rm1KNlA0bDVaZlVueTNzdHJwWUtmc01PQXd5MmJtRTJ2WDNvdXdRY2kv?=
 =?utf-8?B?U2RIU0lQYjl1aU9FeisxOVlBTXZmbnFDRWM1SU02YXFTeEhadHFVTWZIUVR0?=
 =?utf-8?B?ZXVJTWN2dnY2b0lZaC85UlBGVFFQQU1XcThoMnNHS1N2dEJSR0JpNTVmZ1VJ?=
 =?utf-8?B?Uk4vNEVhOWU1dDNON0lrRmR0N2F2TFIvSnM3UitDWHdFSkozOSt6Y2ZsdkZo?=
 =?utf-8?B?N2hlTHAvSWx6ZjBRSS96THM1Y1MxSzB4TnRlUUpISWRadzF6RmdoRGhNSmJ0?=
 =?utf-8?B?aEQ2RnJFMmFrbFZGV0N6QVlzbnUrWDhXR2trMG5tOE5BdUJ5ZnJBcEVjd0I3?=
 =?utf-8?B?cVV5RlgyNVliRTVsNWpjUkZyTTZuMmJCVnlhSGkvRlRZMUNkbjNKTWJHbFBy?=
 =?utf-8?B?Q2VhK0N6ZGlFUnArTzJJdTdHUkxGZkZ5YU1VdFI1ekRRdVZFajJ5Z2lYZS9R?=
 =?utf-8?B?dGEwdTdWY3lrMENhQ1pxSzEvblFkVkc1WG9Yb3RzaHhnV0hKLzZLcnJxOVZU?=
 =?utf-8?B?d3ZmUUE4S2twK2NOMHVzRFVnaHVKSVl1OGgzV2VlZWcwaEJTWVZjRHByRzhu?=
 =?utf-8?B?TGdMOEVxckU5Qmo2QXJObmJkelJrM01BQnJrNk56RWsvcWU4KzZKZnluaFJM?=
 =?utf-8?B?NlIvY1l4VklTZGJrK2tka3NMMlJ4cWJuZHBMUlc2c3VhWkIraFg4clMvUloz?=
 =?utf-8?B?U0ZUMXBTKzFvRGptaUJqYTJyTGx3eFJWK05nTkFFV2hjU3FndlIxV0hrcnl6?=
 =?utf-8?B?azVPREl6ZUMxQnByZmMvTmV5Q09DY294MFQxd0l4M3k4ekkzbWRDV0lmZGlF?=
 =?utf-8?B?Z3ZaeDNjRGljMTU5NzNpa1ZvSVpGM2I3NVZ3NnY5YlpaR1ZpNkc5cnM4VWpQ?=
 =?utf-8?B?bTB0ZlhkVE84RnlqVHZqRlVRcVNwR0xtNU5Nek9tNG9BUXRRQzRycUh5a3Vj?=
 =?utf-8?B?c0xRcmJJVzE2Q2NyQXJ6SWpuTGFCZXFZOXd1T201bVowc20reEhkNFNHcHBG?=
 =?utf-8?B?Mks4SVJPVXprMXZQQVdOMm1rNExrYmFMUkMwakdTZTcxSkI0ekFRSC8yT0NC?=
 =?utf-8?B?TU11K0pYSE9jalIzaXZWNTdFbGl0ZitZV2ZMZk9kU2JtRjJITE9aWU1WcnhO?=
 =?utf-8?B?MUUyMFJDbFl6TFUyKzhvdHlEVHhZaUZCczNGTkdPZGp5a0ZtRTdqbm1vQlJV?=
 =?utf-8?B?UXoyY05FKy90VE1NOUk2aCtYV0c0ZVEzMWVCUEVxYXVxdFRFOG5MUXU4bi9S?=
 =?utf-8?B?bU1CRGdEbTZlbnE1L0VoMzNWU2sxNGhXSmpIeTVCWXVtbjMwQ1ZsendUVjVa?=
 =?utf-8?B?bDdIU1Y1SGM5cEJjb3loRUFYanN0RDlJYnhJRTdLNStNSFUySEVZYzFGOTV4?=
 =?utf-8?B?M0NFdExSV1l0WXRpQzZ6djYzZjU1SmMwYmU1ckVvV2VjRjNXNjUzVWkrNEZW?=
 =?utf-8?B?Tzc3aWlOQ25rV0J2MVAyQ2c2Vm9rcnVBWGxwR2pSa0VUbWlIVWJWVkFhNnRC?=
 =?utf-8?Q?F/a05dNLqRk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VStFcmc4NGlGdkM1QS96YW1nU3plWVZxTGUra3JWWk9zTUx4U1NEck9vcjg0?=
 =?utf-8?B?WCtSOVpvb0ZpVWU1ZXluRFpma3Zac2VPZjREcmRTQTlWNmh4eFFML05IYkFB?=
 =?utf-8?B?QlVlUkRDK09GU05IcmJYT0NTZk1DdUp3MXhyVkY0TTlmbDI2alhOa0RkZmFu?=
 =?utf-8?B?OFJySzV6RzJzK243ejZIWjg1V3A0dzlpeCtLUTc5ZFV5dElIRk5sRjhCb2xE?=
 =?utf-8?B?OGt6NEVmbUI1ajB3ZG1VdTk5RjNpVWg2SVNrbVRqRzNONGxLbkVSVW1GRSt3?=
 =?utf-8?B?UTk2UlRBcEJvZ3hvNWVCTzN2S3JSdjFpaGJScGk2SzhmMUI2SHpybEcvRTBx?=
 =?utf-8?B?UUxiT0lNT2pnU0pwbCtLWHJJNFFZa2hOR2ROdmJvZmhwcW5lYko3VVNWUzhS?=
 =?utf-8?B?NlU3SE80a0ZZN3hJazFMWEZYN3hGcDdYa3B2WFE3Y2VvV1BWMzhRd0N6WFlK?=
 =?utf-8?B?RkI0Z2V4UTk0QnhEWlU2SGtVemNHQzloSCtNdU1HcTZzblFIZnpGRWRxQ2Fo?=
 =?utf-8?B?cENCZ2N3d1R4ZzRHZTFDVmtpSlJKVGNZNGIwQ1RLNHhneW1OcHRvejhrV1RF?=
 =?utf-8?B?TTRoOS9zSGNBOEZUMjM2anRjTnlPU1ZDaUpQSEF1T2FWaHRXL1YyMWw0WnNB?=
 =?utf-8?B?S2xPUUQ0MDN6ZjltOGo1cVhoQnQyT2VQZVArT0cvUUdhY3lpbEs1Y29acEhz?=
 =?utf-8?B?bXJON2VXS1VVdlZ6UkJXalAwNjRndVVRVjdkRWtON0VkY25KcFVZTGM1N0ln?=
 =?utf-8?B?RzE3bndEZmVVNHhqK1JYTFNWL2d6TUhSdjJxREdsZHYrUkFQM3JobWo5VGtB?=
 =?utf-8?B?Mnhmd0o4VHZEQVVsRlNaZll1QWpTVzZiNTdzRnRHZmJRL3VBRnpkL0kzbUZ4?=
 =?utf-8?B?K1QvNlk2Yy9VR0QvSDIySkNNS1BQcERzWk1Zc0dUVkx0MUV4SVU5VXh3V3hR?=
 =?utf-8?B?SFhZSjYyVTJpT3lCTG1CWjVDWFhaL01qazBWd3diMU9LNDJ5M2gwQTlzTkxI?=
 =?utf-8?B?bzQ4aG1TODFFNGtwd0doZE9oVks0bUtVaUdzTGV2Z25GUXpSbFJGQ0RXVklk?=
 =?utf-8?B?QVY5a0ZRN0tnQmIyNTFFdXZ5aXk5M05wOGlLYnV3ZjNZQTRxRmFIQ0FLZ05E?=
 =?utf-8?B?VitiK1RZeHZIWWlJL05lWUdWb1RGRVhEdmtYM0ZpN1lSWDRpMzhUWm1MM0ZI?=
 =?utf-8?B?OVhISG4xazhSNkhQVDVQRmxpQ0c3UGdXWm9CRHh5WER5VW81cm8xc1JKUENI?=
 =?utf-8?B?b0Q1bk1jNHVvSXdGUWpoc1kzTjN6Nzg3dXBaMzJwZXZEWVh1OWdmdzUreXU1?=
 =?utf-8?B?bVNzZnFRNGcyc0V0aDBlcGw1YWhiMFJFcWFreVl0a3l5TDdYY241Vml5NVBM?=
 =?utf-8?B?WG56cFhrVkt3MGcramNyL3ptSWJGM01xWTBzaUdacXAyR084QWVHcGIvampv?=
 =?utf-8?B?UUE4eUw2Y1FHRXpObjljY01qR3lxRnVxYlp1TEpBSG9vaTlSQkRmdUZiVUZx?=
 =?utf-8?B?dnlVdmQzWlliYzBPa25JblJVQkN4eDhYZk80K3VUV1NEamYyNThBRTBSWi9z?=
 =?utf-8?B?SW10TVlSL0pqeG8zdzFlRStYVkF2cmR4ZUp1blhsOWdyc1ViTnJmUnhuQWE1?=
 =?utf-8?B?TStnK08rUTZyVFUvQlV1WUFzV2E2bmtVellaYmRIMWlFbGFjck14bUszV0lu?=
 =?utf-8?B?NDI1MVhod2VRd0ZKdytGeW1jR2hQK0ZEeUxVWXVQdVpJTEQ1WjNiMWRQMlNk?=
 =?utf-8?B?WVlXTEdVOEVUZnU0N1EyUXI1VENIYk5PbGlwSi93UytZLzQwdk9QcUc5OHZ1?=
 =?utf-8?B?T3hMQVQ3VkN3M1pySU12ZFBMK0lNQmJoaWRuTzVuOUxZRzZQZFJpWndzL0pZ?=
 =?utf-8?B?bE5PSUYzTVg2NXhiTFNWREpmZkR5THVlMUF2T2oxdjRtRmpMSklwWkZDS2Mx?=
 =?utf-8?B?UXQ3MFUrQ0RXTXV1eDZBaGpXcEVnVk1QaFNEeEE4L2lobms2UWJWQ1BOZlpy?=
 =?utf-8?B?U1VYVzdQdHdYOFJ6bTgwSkV0c0FFakdFT0JkNGlHeFowRHg5bEFoN25GYy8v?=
 =?utf-8?B?OVgvVFczSzFYNVFBdHNQUzFWVkJ5K2RJekJrdHdveU1ZZGJTdC9HeUNlME8w?=
 =?utf-8?B?Z3k4eWlhVVBtbEZBbXpneDR4NE81MmR0c25ubjJyS0x1MDdzRElUaFJoWnVG?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6be835f-f334-4f3f-0e95-08dd76e4aa5d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:31:04.0615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y45UbCQdCbqxlZWcaf/6STcpbioHPOjo4sMAKgiI9c5SopPnnZXR+l3l3+925CUPcw7fxTFVYYFqL1jgJ4IxwdWBP7zJ0dJvyTVzW3/d9RI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147870; x=1775683870;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fyo0UtcVJakSODWNWi4dZ4Hm3VBe6nj+s3EbFmC+q64=;
 b=i1L1erQbzOoW6BsZb6WEagDnZ5HFSvohvQc/sNY7AK5IzYwA3sM/DmyN
 oMqFrHQBPVbpPQA1vVMRABMzWao2MArHyhPfCuv3HpRmnfRT5NNozj0py
 +PhYxzXxcQJXnKH3YTXjwekcivAWqn2/UnLhoK6gdQ38zA6R0tVHbPNGn
 iM+GW0W+w/FkctdHFOZmHR2dVxK7v0A/WDJG/sYWahfjRKFSrdHcWfdZp
 0n0BbafcT+Jp2h6q/SNk8dwZcykDWtoOvyHysyQMXltmFfi+eyKlFtfOA
 oYQP2xITeTFk/A4EbTMSOxnPd/juyfeCpS21d2zR5gdxORBVn9vvST0oV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i1L1erQb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 10/11] idpf: add Tx
 timestamp flows
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



On 4/8/2025 3:31 AM, Milena Olech wrote:
> +/**
> + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx or Rx
> + *				       timestamp value to 64b.
> + * @cached_phc_time: recently cached copy of PHC time
> + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> + *
> + * Hardware captures timestamps which contain only 32 bits of nominal
> + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> + *
> + * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
> + */
> +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
> +{
> +	s64 delta;
> +
> +	delta = in_timestamp - lower_32_bits(cached_phc_time);
> +
> +	return cached_phc_time + delta;
> +}


This logic looks quite different from what we did in ice and iavf, which
was based on the math from timecounters. It looks like you do check if
the value is too old which is good to verify. Perhaps I'm just
misunderstanding the math.

For clarity, here's what we have in ice:

> static u64 ice_ptp_extend_32b_ts(u64 cached_phc_time, u32 in_tstamp)
> {
>         u32 delta, phc_time_lo;
>         u64 ns;
> 
>         /* Extract the lower 32 bits of the PHC time */
>         phc_time_lo = (u32)cached_phc_time;
> 
>         /* Calculate the delta between the lower 32bits of the cached PHC
>          * time and the in_tstamp value
>          */
>         delta = (in_tstamp - phc_time_lo);
> 
>         /* Do not assume that the in_tstamp is always more recent than the
>          * cached PHC time. If the delta is large, it indicates that the
>          * in_tstamp was taken in the past, and should be converted
>          * forward.
>          */
>         if (delta > (U32_MAX / 2)) {
>                 /* reverse the delta calculation here */
>                 delta = (phc_time_lo - in_tstamp);
>                 ns = cached_phc_time - delta;
>         } else {
>                 ns = cached_phc_time + delta;
>         }
> 
>         return ns;
> }


In particular, this ensures that we correctly handle the case where a
timestamp is captured just before an update to the cached PHC time.
Without that check, you can't guarantee that the timestamp is updated
correctly with lockess PHC updating.

With these checks, as long as the timestamp is recent, we can extend it
safely without worrying about whether the cached PHC time we are using
is slightly old or not. (As long as its no more than 2 seconds old).

Could you explain why this was changed for idpf?

Bonus points if we extracted this method into libie/libeth and shared it
across ice, idpf, and iavf, which I believe recently gained support for
timestamping as well.
