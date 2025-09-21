Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CF0B8D5D5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Sep 2025 08:41:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C26D8431C;
	Sun, 21 Sep 2025 06:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJskYZzV3YHZ; Sun, 21 Sep 2025 06:41:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 746C784305
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758436913;
	bh=Xb2euyGxlYtBSS+hFgVQSMOP/WzhhGzwvC13jA05B1s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a2CdTcCdRyE8x6j40u1OTigliJHr2KBHM4ssi81GAjQ6qGn1JldKpX134JB4H9Jnb
	 B0NFsBaKSU8C3X9WQ4KXssueThZrHmUQr+kwwMcAQGCQPPvAlgjP+I51pxRaRfzu4r
	 jPP0d4beQAz1AEnB0xPpgRynKG/Sl2Yp+QwS0ZTf+etmyCakuqVyXfhQ5uEEHNv+Bv
	 Ohj2a6dyLJ7GmnCSNjcoTXUScBnycjRr1SeQU/WcxMCfrOxhnDanfWISXRMUMma2T2
	 +SWalR9IQz4xqV7Vjlt0LSO9uxtYe1DHGezqUMbw/c2xW3RI+iA/e4np9khGJ3RV/v
	 Pw+u8NEUPtNeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746C784305;
	Sun, 21 Sep 2025 06:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 73EFB1C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Sep 2025 06:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A82740589
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Sep 2025 06:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Td-wyjZAPepZ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Sep 2025 06:41:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 65A5540074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65A5540074
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65A5540074
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Sep 2025 06:41:50 +0000 (UTC)
X-CSE-ConnectionGUID: jjyCSiE/RNWgiAuMBgP5kw==
X-CSE-MsgGUID: rZYosy/OQROZQvDnouCXMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="78339042"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="78339042"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 23:41:50 -0700
X-CSE-ConnectionGUID: CK8fKg5RRf+1FEWjqJyhOg==
X-CSE-MsgGUID: LRdbhj/6SsqY7SoDPykRbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176033303"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 23:41:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 20 Sep 2025 23:41:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 20 Sep 2025 23:41:48 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 20 Sep 2025 23:41:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JwT11ipmjekGVNOG2jwYZjKOQ3VKVVk+fdzSnH8kb/zJ+rAwOR/36l1ls0XISIuHW/lbVSlSB3YHeyh5IEBtRwLVEUclIXfPiBr2O0tbCMGVjO0CtYb8CD4QS8MQUMZmwsKTGgjgv2ViHWj2RPYvgrZQZKhxvvr+/Num2MELKYTvhJvXQsJUeXRwODbMmuNcFFDD2/D6bOXTZ1dpsBqeBfOHbI8ARnaYvpAqPULWgWrFThn1hjvPvFXfx6SYCRWlLBIHjGQFl/hzLN1+uYw6Dxv6IY+BLgoVva4o+qS2dFPfTmJ26GOaZQt+PfWRhtjlOb4hdbcsuJE75ccKLCKd4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xb2euyGxlYtBSS+hFgVQSMOP/WzhhGzwvC13jA05B1s=;
 b=eHzBDlhH5K2kGONfj7MBLedOcF+TOexhoUJTtTufgb/mUx4jqwrudEH9BMQFH/g2u8YXu+jO7qpW5TvjWvOIphSyT2P8vuj+0+06jQDfJskregnYyyuncqAg4Dxg8iTZSMVHDUFQXLN/o5O4GnW25JXoMIkgTGzxAHcCWfz+bYU3bTvlbXxCgf9LQAoRVvPCCzRquxPCgwTQB1Q8kyn9pYAmX5akhN7toUx5vkTppdF9omQFXlRTuZd8r88iU0cVDEE244pULCT2/ixZ5/zTX/9xWiF7P5+LDR9x/us+7oDfqZLhzMUJvn4/4s2wJTFEqRocaSUVmr2X1dFyxHsaAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Sun, 21 Sep
 2025 06:41:46 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9137.018; Sun, 21 Sep 2025
 06:41:46 +0000
Message-ID: <625ae122-7cfc-4297-9b98-8495c3d0f237@intel.com>
Date: Sun, 21 Sep 2025 09:41:43 +0300
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <aleksandr.loktionov@intel.com>, <kohei.enju@gmail.com>
References: <20250920063923.31468-1-enjuk@amazon.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250920063923.31468-1-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|IA1PR11MB6219:EE_
X-MS-Office365-Filtering-Correlation-Id: a58329a4-0741-438c-ac49-08ddf8d9ef22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkNYM0c1c2VDWERJc0dFdjQrMEhWcndrMG8vNWRIc2MwSkdHcFk3bExXSnhm?=
 =?utf-8?B?L1VjTm4wR2NPVWN6YjNiTkRaV2QzbFJsNnAyY2V3elBjdnduY0VMZ21JUTVZ?=
 =?utf-8?B?emhJNWhVa2FkeFl0TkJpV1I2QTlIWnlwbWNTKzZidUtlVGZTQmdWRWF0NkpJ?=
 =?utf-8?B?UEhSSC9pY1lxTUt6L3VlR1daUWhRMTAxZ1Y3WWhGQnBPaVU3L1ZDbWRQZkt4?=
 =?utf-8?B?WnZYd0RQdjdEdTR5MDdkMTFLaEhvaFFDV2twYWVRbHBicWRHdXdkcVJUV3VZ?=
 =?utf-8?B?MlA4QldyZUtzOTNQRVJFemp0ZGlZWDhKeE8vbDVkQ1p5QzdrMHN3M2RDTEUz?=
 =?utf-8?B?aElaYVhQSW9iKzhtOE83anBBY3JHZStBOFRwdDBLUFZlSC9ZZEFqcko0Y2NK?=
 =?utf-8?B?cEZuYXRxQjJnZjBqVUxYbEZETXkydHltWHRzUUZyZ3JYUVRSUEEwNENOODdQ?=
 =?utf-8?B?WmFKb3JvOXJuQ0NndE5aVUlScHhhSmpxK20rRWZZNDJ4eHJGZ3lydkorSDdo?=
 =?utf-8?B?VTRycUQ1WC8rb3RPTUVNQWVyb0s5MFltS2tBNFF1bFY1ZmR3eGw1dEtpdGY0?=
 =?utf-8?B?K3FVUFF5NkZIclBIWEptQjM4MWhWYUpjOWR2OXJWWkU4WkFyNEY4RDl6eTYz?=
 =?utf-8?B?UEVsNmdPKzIxcEJhR1Y1ckJRRytYOE9oODliR05OTU5jbkFrR2dxTnVOZE1j?=
 =?utf-8?B?dCtmZjlXYzd1N3dXVG8yMjl2VHdQTVdXbHkwRXZpbktNL250aWFDZ3N0WDc4?=
 =?utf-8?B?YVBBcE90YysvVjNxN20zK1NrQTFmNVlNclorN01DZ0RxN1BzRVEzcTRmVWF3?=
 =?utf-8?B?blJ3anNhSVd4b2lHVmJLNzlRZmkrdjlMRFRiWU9ONFdEajdrUlhPRkVlcGdO?=
 =?utf-8?B?aHdQMXZWVDBtMVhsRjJhZ08yUEgvVnUxSzA5MXhsSFJvWVRCOURJN2ZJR3dE?=
 =?utf-8?B?U0F6L3JIb21WVmNmcldkVmtXc2RnbHA0RTNXcjJ2dEJmN0pRVjVCVXd3elpu?=
 =?utf-8?B?dmVYR0lMU3lrVVhrMHNzSTkrOXN5NE1PMENVTThMS1I5c3RONDV2S2h6SGVP?=
 =?utf-8?B?aTk2SjdVbEQvVkZXWmN0ZXVBcmU0cGh1WDRTMUd2S3BZZExGWFNJOUJ4c3kw?=
 =?utf-8?B?SE9QSjFkTjk2ZzJhSFcwZUJhTlY2TmlGS1JwN252UFg4L2JZbnJFMUFHN2My?=
 =?utf-8?B?dVRQV2dsK1JxQWxQaHdZc1NWYjlXK25xQ2hRcHBtei94MVJwRytVZno4U0JI?=
 =?utf-8?B?QmkwUnBwaUlTWDV6Q0t2VTI4ZitzRm04Q3lXUE1SdFVjVWZSZC9WS0IvV0tW?=
 =?utf-8?B?Nk1PaERiVTRPNGhyemY4L2hpY2d2ZyticTV6NGFadXVMcW5QZ25TOEJFWFhs?=
 =?utf-8?B?UXFScTNRbmVYbFl0eVY3bzNYRlNHbDhXZStTdUZ1QnVaSFg4WUFCYkJHR3Jx?=
 =?utf-8?B?aGFSRjErRFduUkZ2aHNrL0NUcUpvOHgwajhJYzdTRXRiczQzNlExdU5HV1BW?=
 =?utf-8?B?dURpZ1ZRTWtOcnpEKzdJajl4T0FYSUtaSmZyb1FJMkFzNExuQ3cxWURGaE1R?=
 =?utf-8?B?Ni83WjZIbHNNSi8yS0RzK0NuelAwSnNQQjlvclJNN01pWU5Ja1MxUUFWTkxu?=
 =?utf-8?B?K3pUcnZFajRINUpsZzBubm8ybzBJTEJTcVgwbkdUU0p5V1lWMTlrT2FsMWVs?=
 =?utf-8?B?QjZJOHQ5Q0Z1MEZyVDRSZlZvZVJrVkJvRUVTRXhCLys1T1lLVFAzMFE2RUll?=
 =?utf-8?B?R2JsSy8zdWZZcDA1ZjdQc2pxdGxyM2c0eEF0QkhPUUVOckw3MzI3Mk1vT1JT?=
 =?utf-8?B?bjQ4U1M2L0RMZHgxZ1hLMG93TVN4d1I0M2NETEVoTGtYZW9LQ0dJTU1mQXhJ?=
 =?utf-8?B?MW1NRnBManY0eWpCcXdpbWx3VE5qREhNYjVEWnVZNkZPdTk0S1d3VWNuOGpY?=
 =?utf-8?Q?2qa4jCuaCE0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azl5U1JkVDhSSTVPMWlpYlk5bDIxUXk4cjMvN28rbzhqUUlqeThXV1FvcWdk?=
 =?utf-8?B?NEV4a294WUFnMWpnOURZanNlQnhjd2xrUWNySmI3NXlFSXkyWXl3d2Zka2RL?=
 =?utf-8?B?OGNQY0l3dGlVUHZ5R0s4MEs5bGl4QVUwMnJKQk5KTGppQVNrV0t5YnpQM0kv?=
 =?utf-8?B?emp3c2FmZld6M2gxam5FV1VQaS95bU5ZZ3BObDVuR0tBR2cwbGJIZUxRN0M0?=
 =?utf-8?B?SU0wbkVnUUMvajZtN0lDMDlDOFIrYk1YMnplKzgrczZhNmwraHF0bk9oTGow?=
 =?utf-8?B?T1hZWm50YnBJMHpHK2VUU0ZNbWNPektSYWs0c2d3YUpuZWdFYTJmeFh4YTJs?=
 =?utf-8?B?MDU1MDY2VVRJWm1HUFFLRHVGU1Z5TVU0S05jY1QyRUdrMkZ3NitTb0VxeVRR?=
 =?utf-8?B?d0UzU2FJeGlYTjNCZll3NU1CdUxoVXdpeTdVWFI2WXZ6R0JsQ3QxcC9mYmpY?=
 =?utf-8?B?SVZGcHJ2V1p4Z0FEeGo3M0hDM2xXc1VldE1haVBNL21iV2o1WGV3NDhrRzNG?=
 =?utf-8?B?YVZ2MzlNbnlLbksydFJOMTB6WXVTUUE1czBZM0xpZ0ZOZ0Zpa0hNNGlrL2ZD?=
 =?utf-8?B?OG9DdUYzaG9DT3BmUHYyYUk2SWRhN1ZXa0hLcVB5OUsvREtlNXpFeXVYM1Nq?=
 =?utf-8?B?bnJqOEpKYnFtOHA5blZLd01IZVNUQ1dta21NakUwMlFxOVdDSlRoVU43cGJt?=
 =?utf-8?B?MVBMYWxVQ1pVd1UzVHA0bk1NSWVKQTgyMWVOcFgxSWN0Y2xNWVdtWE80SHBT?=
 =?utf-8?B?dFZBN0VKZGROWWFhc2VmL3QxQkJaSEJYQWtRdDBaVmtmd2FsaTFmNjlQMy9X?=
 =?utf-8?B?ZXJvWmRyYjk4R1pKdWI2SXVqUE4wWjZLV3JxMThEVzBGN3U4ck1FUWNkTWFy?=
 =?utf-8?B?bklvMll6ZHhxNEQ1bzc3Y0hrRkNnNnU1cm1DYjR2NGlTb1ZJZnNUN1MwZllR?=
 =?utf-8?B?cXh6ZU55SHQ0N1JnOVFUdU1iOXpLYU1aUWZYK1YraHpIOEpvb3YrUEYzNDNy?=
 =?utf-8?B?L3hpYzRKMnVaNmhPUFk1V204V2pTMkd6VmhRV0tQMmZLRHZYZGZoQ3VwSHBx?=
 =?utf-8?B?NzVpeUR4TmVIZWx2TFFGZ3hHeUMzc2VkV2JlL2RQT09JWmRxYTJkREMwYU1S?=
 =?utf-8?B?aUZtTFE5ZHBvVUIvRjFsaHJlaThCbmYvS00zRHFIZTh2a2drUDhJNm9XM2Ju?=
 =?utf-8?B?L3A5NVU3SFQ5VlVzOEtBMGl4WjI3cW5uZUU1bXZENCtVSG5pK01DdVB2VlMw?=
 =?utf-8?B?YzhVYzJsS1Y4Q2duS2dLZU95TUN1VDU5YVdQQ2dpa1IyR1Z1RnVNaW9qWGZY?=
 =?utf-8?B?aE9lczEyZXMrWHRkRXVOdjc2aVlqT2l1VnBZVjNXUjNQZWZUL3lBOEhQZFV4?=
 =?utf-8?B?eGVOLzFndUVwZC9zYmROZzZYbGRHdGx3N0RLeU9zNUN2NTFVWnJtR08xcUF6?=
 =?utf-8?B?bERNc3h0LzlZSXlUeW13ZlM2cUE4VkFsalBRdHhUY3JpTzlpMldGRjJFQWw5?=
 =?utf-8?B?eTRUVHJWKzZ4bVZrM2szWFFmMitXb3AxUE1TUGVlMGljRXdlVnVBeCt5R1Mw?=
 =?utf-8?B?MW1BRmVhZVB6VXhQTWh4ZkN1Mkh6VmcvN2FWMVFTWXU0RzZ3czZkMHM3OU5L?=
 =?utf-8?B?R3ZlbktsNllGTFgxb0I5MEFySEc3NVNBUld1QXI3Z1VNczBKZWUxV3haWUFj?=
 =?utf-8?B?T2JXWGlYTjZTUExmTjJCV3M5UzgzMkJTWlVPV2NRNk5kTFhTZHdYT2ZXWWY3?=
 =?utf-8?B?U3BtQnliYzdGcnA0RmNGVEdZSFFlTVFrL21KRWg2Qk95WGZnb3IwUUxlYkFC?=
 =?utf-8?B?enlKTDcwMEhGSTA0dnhVaGlIOFhZQjVzcVlEcElaNWZDRFVyWVlJY1lhay83?=
 =?utf-8?B?TjZCVzl5TnRCTXBEVjBCc3ZhZDFhZWsvNXVZUXdhczRyeXVQMEFxWk1XZDNH?=
 =?utf-8?B?YS93a1dQVHphRklWNEs1Q25YM2VTM245OUJtTTVNTlN4NHlXWkZNVUkwbE1m?=
 =?utf-8?B?RVNMMnllUDFMcHNkaEc1MGlUSGladi9IZ05WNUFySHRlc09QWVM3UGJ0VlJV?=
 =?utf-8?B?RnVLVE52ZzZKQmpQdHo0QzBNQVFEelUxZGZ5MUt5NnBRTlFCMnZRN21uU3hU?=
 =?utf-8?B?T1F6VWY3RCtMbDRaQUI4M3g5MExwbjVMejBYWDJ0MDhsKzgvVGN1WEpRL3lX?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a58329a4-0741-438c-ac49-08ddf8d9ef22
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2025 06:41:46.2148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jC+v4oPD0Lu4Hxmb4yHNtlFxd6PJeaIB6eyKAuEzeFSpvHP9dF+pkc43QkC+eefzI+hGI5ACKT5G6rD5qgNHCgKv1wyT/hjQbMbrtjU2uGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758436911; x=1789972911;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/FDPdRQ+BZoRrxov/6WxVYp/mI8hScP8LVKoeiMpByE=;
 b=XO2XDjnjYOKxKW4nyOWrOq+ZSPHBsECzSw4FYul+GS5mFhDOKc1cQA2h
 yRsGnFMhZNPx6/gFQqhJw3vAmlxCUH0QlNvyXEXW3bj/H17NpTh4Vvzu8
 Ze5FaYp9a5qpWam7WiQCP+HQnnL0W5F9UXRxl8oGmpLjn4JH6Dx3Ulfme
 rNCnN+R+Kyjk3CS6A5CTBFuoX9Pf0IhtiKe/ts3CrSLCUS2BXD5qM/PVJ
 8Try3B89UE0nr68e3Eir9/qF9YohBoRJrq+RCWCh6RHojgMvk6vC7R+Mp
 YG7m/JE87uQprZ+Gw+yIGptbTaQrbIlblCrmAephI1MDUw1DKTz8TcZmz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XO2XDjnj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: power up the PHY
 before the link test
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

On 9/20/2025 9:39 AM, Kohei Enju wrote:
> The current implementation of the igc driver doesn't power up the PHY
> before the link test in igc_ethtool_diag_test(), causing the link test
> to always report FAIL when admin state is down and the PHY is
> consequently powered down.
> 
> To test the link state regardless of admin state, power up the PHY
> before the link test in the offline test path. After the link test, the
> original PHY state is restored by igc_reset(), so additional code which
> explicitly restores the original state is not necessary.
> 
> Note that this change is applied only for the offline test path. This is
> because in the online path we shouldn't interrupt normal networking
> operation and powering up the PHY and restoring the original state would
> interrupt that.
> 
> This implementation also uses igc_power_up_phy_copper() without checking
> the media type, since igc devices are currently only copper devices and
> the function is called in other places without checking the media type.
> 
> Furthermore, the powering up is on a best-effort basis, that is, we
> don't handle failures of powering up (e.g. bus error) and just let the
> test report FAIL.
> 
> Tested on Intel Corporation Ethernet Controller I226-V (rev 04) with
> cable connected and link available.
> 
> Set device down and do ethtool test.
>    # ip link set dev enp0s5 down
> 
> Without patch:
>    # ethtool --test enp0s5
>    The test result is FAIL
>    The test extra info:
>    Register test  (offline)         0
>    Eeprom test    (offline)         0
>    Interrupt test (offline)         0
>    Loopback test  (offline)         0
>    Link test   (on/offline)         1
> 
> With patch:
>    # ethtool --test enp0s5
>    The test result is PASS
>    The test extra info:
>    Register test  (offline)         0
>    Eeprom test    (offline)         0
>    Interrupt test (offline)         0
>    Loopback test  (offline)         0
>    Link test   (on/offline)         0
> 
> Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link self-tests")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
> v1->v2:
>    - rephrase commit message to clarify:
>      - applied only for offline test path
>      - original power state is restored by igc_reset()
>      - powering up the PHY is on a best-effort basis
> v1: https://lore.kernel.org/intel-wired-lan/20250830170656.61496-1-enjuk@amazon.com/
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index f3e7218ba6f3..ca93629b1d3a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>   		netdev_info(adapter->netdev, "Offline testing starting");
>   		set_bit(__IGC_TESTING, &adapter->state);
>   
> +		/* power up PHY for link test */
> +		igc_power_up_phy_copper(&adapter->hw);
> +
>   		/* Link test performed before hardware reset so autoneg doesn't
>   		 * interfere with test result
>   		 */

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
