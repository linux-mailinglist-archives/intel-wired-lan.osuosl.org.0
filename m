Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03017A2657E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 22:21:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C44F81EAB;
	Mon,  3 Feb 2025 21:21:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OMfJ6uCt7LUQ; Mon,  3 Feb 2025 21:21:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C19081EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738617701;
	bh=zPpF3idadb/8F6M5E4oZI0Xi3w26q4CR+XoJywuPWUE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1ejhN2YUzczKW6xSgUZbwS6PxEFRe/c+DEbaNTES/PsfebSkXmorMjB0mizcwcdM4
	 dkSEizK9KohrCOEn8GX9z5VjL3mspia0ppsUX+SzAvvrBSVAehRb+8hLqn1Jd9+kTY
	 XcTpifBkQMMhIqnU7GlBb+fznfc192NtvvOyNDgtZh5QwbvNMstY5grDBiHxnNiIwO
	 CqJIXABrxKwW3A+egADm6XUu5vLqf++uNLDfX6kOfaWfrzDkp5UbEQrMf6gBBWzSty
	 3ultz842ZtWuddCtYNpmKtqCLi5ElPIFPwjx8No/1b0lnZeRsbdFEZc+bCWZclqiqo
	 a8mq0UtjVelOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C19081EB4;
	Mon,  3 Feb 2025 21:21:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CC1012F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 21:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 403C640210
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 21:21:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8G7IhxPT0e0n for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 21:21:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14F9C40099
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14F9C40099
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14F9C40099
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 21:21:37 +0000 (UTC)
X-CSE-ConnectionGUID: jw+Sug1jRdyWSJESp8SNRQ==
X-CSE-MsgGUID: zaxYcsyoQR6vqBAjpsHuhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="41958125"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="41958125"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 13:21:36 -0800
X-CSE-ConnectionGUID: Y/7o5OLrQ72JJyk+2vd/yw==
X-CSE-MsgGUID: xxAzn/d/TGC4vTGfX55Uig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115385953"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 13:21:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 13:21:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 13:21:35 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 13:21:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUGKFabera2srC9w/Z8atU2YP7gtjRWQdB1vnEIyYqIl+/tfO4dsUJV0ldfp8EnUUgSp97lAAga9OS6tL4wwlade+S0gyZc1viHH5Fz44eCa9U4qeqjItvnl/yQdxAaE4J4wkFC+I9bwqV0rm0Nl2T4b4GoUephaLXng3T0qsDpiHuczLKeMs7rAB5RkZvz0wrNU3UMx7q3hViTahfxK6A+Tj3amaAq+aQY4HjkiJCCbaH9t/ZX9u6SUyfRzdqIVLm9L4rHvyIZFTukjkijQsBjfKs5jf+mrggzV9ujG/g8jHQyOH09/Mjc3fEaicMzeKCTxfvlVsajtiVP+bRi5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zPpF3idadb/8F6M5E4oZI0Xi3w26q4CR+XoJywuPWUE=;
 b=uzLzdqMImZKjvF2G1LVxoMRiaLMb40ZaWd0dKkwClNtSlXCEhLQHUTNeSru6UaWAtt2rQGbLBA87reF+arOygf30+ZNHiOYDdOzU/gXhx+VSsGHOrjwHtOtrxAFAh39N3O764ciixZ+B4JKv3AfcHowCOgeLXzuqVCA7xc07XLDgsfPpLnBLfrhtoBiJI0ZXBk+Ymz88y3vw9nhzwf6x8fhyckFv2U9Xu1A6EJAbP3gtt+j3HEKktuneUum/5e2+aRDt46tg7Q+/CHol5z/JSMxfqb8HKPmRoEo+39RiMd2Gn9eW8/lT7eBIWWLU1l+akbc0H9XK2vJP4Q0sVQHmIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 21:21:20 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 21:21:19 +0000
Message-ID: <dfece958-166e-4e3d-936e-5f2d11b81865@intel.com>
Date: Mon, 3 Feb 2025 13:21:16 -0800
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <dan.carpenter@linaro.org>,
 <yuehaibing@huawei.com>, <maciej.fijalkowski@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0010.prod.exchangelabs.com (2603:10b6:a02:80::23)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: e429ac7d-280a-4ffe-7b10-08dd4498b31a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UC94d3dPSkx0ODVYWUxrb1N6a2FnYVdyK0VlRWJNWm9sWFIxTWN3eUJ5TnRx?=
 =?utf-8?B?KysrOXY3d2JFcTR2TkpXcDJJV08xSGg2R0l5ZXpJeERlMzhJQmlkbWxaV3NE?=
 =?utf-8?B?TDFITVZCdjQ2VUJXOWNibGJIQ2ZIaXRrWDN0SVJRN3RUNTdJOWY1dklrbEZY?=
 =?utf-8?B?SWhiTXJrdXhpRFA3Q3lYYWJ0VFRSTWpiTUlVeWxiS2NtZGVhclIwYXI5RDgw?=
 =?utf-8?B?U2RQL3h6d0xtaDVoc1huNXE3L0N2UThmMVdXdFhKZkpGZ2ZuMkRKRUVQYXlC?=
 =?utf-8?B?TW10aVg0T2dWczBoR1E2bGxocWxoSjFZcy9QdG9ZZXpKZHRmWG53aTcrMTVh?=
 =?utf-8?B?Z1ZXdDdYNkxqUU9ZeWpHYktCa3ExR28wRUd3eGh1RVZSNFduSll0ZlNTTWpt?=
 =?utf-8?B?RTNhQ05KNWJoS2VKMkNpdzlFNlc0YU15Vm4ramcycWs1UGx1WGQ2WS9OaXo1?=
 =?utf-8?B?RUJpZWxiOXdvOUs1WjVyTm1mTDFYYml6WGpnMHBKekVsZ21KM0ZLajI3TWUx?=
 =?utf-8?B?YS8wcFdnc252NE9MUWFtcEVYWVMrUjRJYWhYalI4N0hac2lwSi9idTdzT25V?=
 =?utf-8?B?bENwNytQdXE4M2JySVp2bzJLMElXSTAzQTJxRk1OSUtmVXdUdWRKcDQyaU8r?=
 =?utf-8?B?RWtiNGhOY25kdklna1RtWlhsUTJkUFZTaVFYYUVBcjM1eVZKMjF2SFZOOHhQ?=
 =?utf-8?B?eWw3UmlWL1cvTnV4Q2E3YUc5M3NJR0NpSWNNd3BQYU10SWFHUTVTU1Mvdjc3?=
 =?utf-8?B?Z3B5QnB0akUzU1dPWVY0SWNZaW5YQ0FMWnljRDhlRkFndmxVRXBSOWMvUFZs?=
 =?utf-8?B?aENkUE0yVDRXUitsbUxkYklJOURhZmFUZDAraDllR01JSmYwZG56SUtCQmZH?=
 =?utf-8?B?Z093eE5oRk90enl6YUs2ZVJuVzQzVGtST1hVNllJN2tnUXJWbXZlbmM1ejhx?=
 =?utf-8?B?VG1UdXQrUWloQmQ3b0RldzN5VWRBVDZxREdtU1B3NXZZUmlkeldkK2ZNRmlW?=
 =?utf-8?B?ZHhhUEJZWkE2RWFZcEVCcFR6ZVVKZFRVeHZONjBOck9WVENOcDVtdUJvTmhp?=
 =?utf-8?B?a0pSanZzcDcvYVRIQS9YTHJickIzT2twN3VPL2FvVnVCQWVmQkFvVUt0TDB4?=
 =?utf-8?B?Wi9xM1ZuS3AwdnpPZlZ4SmsrVTQzSDRhaksrVzUvY0lBT09KS0lZYVR4Y1Qr?=
 =?utf-8?B?S2xEaDc4b3g5OGE1RWkzQlBNQm9NdFFycWNnT3Q2QjgrYmQ4RnlUdmdFYTdN?=
 =?utf-8?B?ak9IMHlBc2tZdUh2NG9BbDVSdTZQblVNSFdZTGk5c2VEcU1iQlUxUEdtSS9t?=
 =?utf-8?B?R2FwZzJHVlRLZThuUjF2dStsdWc1NjIvczczV21ucHd2WTVvc1kxUERNR25C?=
 =?utf-8?B?Qm1jSkp4UGRNVGdsQmtpTGdwallhY01vU2Y1MDhOTzEwSEVMalhQYWU5WTU2?=
 =?utf-8?B?ZnUwY1lqN3luT3didXc1eDZMa1ZIaXNnM1NicFV5YlRPbjBOb1BwV2tSV1ZK?=
 =?utf-8?B?SEdMTEhscVQwdmlLQkxrNk9SNEZNTm95NFhlYzFBSU4xL0k1NjZDZGUzSklD?=
 =?utf-8?B?LzZqM2p5VHE4QjJKSWpYSGFYNlRCcHFLTHJMbmF2M0VMenhxNjZNV0VETFlp?=
 =?utf-8?B?M1E4bW5UaVF1NFR3a1F3VnFMdTEvSjFld3pZcWZlRi9qbTBMSkJwUFYrYWlw?=
 =?utf-8?B?WVVBT3Vjb0kxY1U2S0hKeU9VSERrdFBiSDY0RUEvTHdVUEpqUnhnVUgwVDlp?=
 =?utf-8?B?UzlZWS8wMjJoNUJyM2RteEZiWnRKM1pmbmNSMWhPM05YallKWWRsYVlkY01T?=
 =?utf-8?B?cDk1NE4wNTUycExsMlVkMGRiU3FrZkIvZXdydHhxc3FlZ1VFWWpzUXE5eHZh?=
 =?utf-8?Q?iYEIvPcg9NjMJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qjhmc1JHUWN5VkxWNHlEYlpHOUd2ZUFKZXdLT25RL0VrdU92YjZaT3dQdmdG?=
 =?utf-8?B?YjVzbjhnS29ZdFIwdjAzdDBLNkQzZHhHZ1BOVFdRTFEwOThhQ0pWY0lRakpw?=
 =?utf-8?B?cndmdENwMzVzTW12SzEvYnhRbnY4SnRWWk91cjByMGVFMjdidnhXbkhYT09F?=
 =?utf-8?B?WkdXanBHNGc3UDMxNVJsV2V0LzBSRmF0MnN2c01mamtzTUZhSmJZTVhlWUFl?=
 =?utf-8?B?dmpXMVVwTU0yQWY5SGR4bGJDY3hqT0YzNjZBRitKYUlJSXZ5Rm4vQmxYM1o3?=
 =?utf-8?B?MkUxWldVWVFqMWFJWFJNQUJGTXIzWWRKczl4R0QveUZyUmZITUU0d2pkOUdV?=
 =?utf-8?B?dXZ6dWZERWM4RkN2dUI5eVRjM0U0U3RaM21Bb2djd3RmcTd5YW80YVZrNk4y?=
 =?utf-8?B?bHArWFRzci9ybEZwZUhBekNhUDE2V3VuRW5UbjhYdjFNTWc0TFlXaWZncDEy?=
 =?utf-8?B?RHY5KzEzTXZaSFE0Uks1QXZ0ZEhabU1pMjR6L0NzVVplTm1jenNJa3R0T0dQ?=
 =?utf-8?B?eTVaMmczY0JuY3Zoa1NFWk9uMUdqbEFiYS9mTzVaRnh4Q20vTE02cGJjeGJv?=
 =?utf-8?B?OWlqWG1NeXdCYUZkRVc1b1BxL3pteWhYQ0dzcVBkSEc2V2ZWUEJuNFRrUHM5?=
 =?utf-8?B?bXA2dmcwVFYrTXdGQWRMaldrMnZYOXd5MmgwMzhQejFoNHpidENLMGVHT1Jw?=
 =?utf-8?B?S3Y4bVZsQ1JNcXVjZDZsdzBUemV3c3NwWVovS2hjL0FsdDcveTIzbEdWQ3BG?=
 =?utf-8?B?QWZ0ay9BYjRwRG1nMW5rdXYzMytDTC92VnVQVW5OVXRZSzZQZkZFR1I3Uldn?=
 =?utf-8?B?SEFlRXlESG1RMUtmcXZWQllnR2k5WVBTSzJ0TS9uNVNJamdWRkxMTERTNDlJ?=
 =?utf-8?B?RWtRYk84VnRwbGtsRmV4d2JZNmNhcmx2RldYRUVBU1phVHdjRXZXTUtzSU1H?=
 =?utf-8?B?NjVMOTB4Tmo5WnFRdjBjRFhXNkZaRXhiZEtWaGdXU1ludVo4bkFtQWtEb0xt?=
 =?utf-8?B?cys1dUZvS1ZiNytIaStvdjZwYStNUFJJV0xNV3BNNUFvV0I5WkNFa3pYeVJt?=
 =?utf-8?B?V3IybGVQWnUrekkwRWszSlIzUzNqMjZSUG8zb1dGRUQ1V3czNkVHS1hTKzBK?=
 =?utf-8?B?M2FUblV2d20xV09xYVJhMytLaHU2Z0h2SWxCdXdrMXlIOC9Bb2tyL0ZRTFdM?=
 =?utf-8?B?dkhrTU1XeGRVYTUvclF4bVFXdCtlU2NXNUE0V2VXbFprNHFmRDRBbWV5ZkN6?=
 =?utf-8?B?cGM4RE5sQXBwWHBtczdqMDlMTVU4VW56OVdzUTZCeUtPaXdDc1pnMVoxYmZR?=
 =?utf-8?B?S2JLY0dkdjJqSkJYNUVHVnE4Qk9XQ21SNm45Vk1kZkNvbmpoK0Jya1huamxB?=
 =?utf-8?B?NEkvMHVWS2ZBUmtSNmtiVGJIWEp5VDMwNnRnRFZmYi9scndRQktkSTZnT1JK?=
 =?utf-8?B?Wk9WZExpUm1ycXBIR2hhT3JSek4xVW5mb3VTL2NRWDdXSmRmWjJIVEFKV3Uw?=
 =?utf-8?B?dlJUZVBnV3ZtOFU5dXV1VnloZG5XVlRxSmE0K3plQ3N5VTZZVDNOcnBQWnIy?=
 =?utf-8?B?SCtqUzMraHliclk2Wm5CQ0w5Zk5qem9Nbjg1dHNlSEFHWHYzS0VTK1JVdkFB?=
 =?utf-8?B?cVJIeGh0ZFU0eDZUbjU3TVFWcU95ay80WVVlcU10Z21VNVBjT0M3bksrYmdJ?=
 =?utf-8?B?VnBRandEbjNFQk5CZDRHUm9FdjNONE54ZlJWMUxhV2VqUCsvbCtDeHE4STNj?=
 =?utf-8?B?V09BT2hvWkdJUTM1NzVUcHl0b1ZJVGtGc3g5cEoxZVpkT0k3cTBtV3V2T3hs?=
 =?utf-8?B?OEkwZjA0ODBDM3BLQnprem15TWZBN0dCQ3NabmJWaHhXYkl1WVU1ZUJ4TXRn?=
 =?utf-8?B?YzRVSXF3ZWlvSTJBYTRYczFLeWU3SzY0YlNjOFEvMXlDNE5zbW9EZlVSRS93?=
 =?utf-8?B?VVpEVlpXWjlxc1RkRGNlSGRQQ1F4L1o0SXFCK0dVdFhIb3dvLzdNMm8xdlM2?=
 =?utf-8?B?UFdnclhDOGxsQ25yemVDYXMzUjRkN1A4aVliQmhZMWFYVXRmNTB6VTRaNVJ4?=
 =?utf-8?B?aTd6RElQdzJJQll5Mk1aU2svRVZycDRGTWRqSmR5RytuUzg1Vlcvcm5GQXE1?=
 =?utf-8?B?ZTJUQWJ6WndxVHc5WXQ1RWhoWU1VYVl5MlRKemdmN1lWYnc0c1B6V0hnYXUy?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e429ac7d-280a-4ffe-7b10-08dd4498b31a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 21:21:18.9107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: puKvgdsg7P9jcHwJ8iNRQo+/Mn6bJbYTLjt4NgmdTxuiC3fHJ+ArNG0YlhGJ8GMaAIZzSR53T5za4eo5aWiYQbQdNy+rigiUOmpyyJBrkzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738617698; x=1770153698;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BUdMbi8yQ47bRcLCSHiB60NCUZSJPQJEEZpt6bdUtkE=;
 b=maxonloGjmF4mZl10acWLmCuCXqDChkGmcnx0WX7tYZIsf2Rl0Jl+HUl
 rAwFBLq2lfzlqsWsYdbeSn8sQDE+s6I2DHb1Oq81olEIcfgKuBwCkeFpt
 GTcy06OSatTMrREyqWACyOCqwOT1B/EBlw/rbr/DmdojCuOinZBoO+ymT
 wRs6HTUM12okB89SAuUKbrFEkqKH/tTT9TcEwlv/5QPYwabBEEQDnUZgd
 o3ebsa2OUqV7D0bhtCjTM8g+fe6go4/W+26t94tFZOzm1IAYiYzyvDhYj
 +nuzFTQkA8AapS/2Wg3ZoOtjuzWuJ6Kl9kpuo7kG46Ohl3AYzBZQ61R3s
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=maxonloG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb
 NULL pointer dereference
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



On 1/31/2025 4:14 AM, Piotr Kwapulinski wrote:
> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status
> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
> 
> The commit also relaxed the skb NULL pointer check - caught by Smatch.
> Restore this check.
> 
> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>    Provide extra details in commit message for motivation of this patch
> v2 -> v3
>    Simplify the check condition
> v3 -> v4
>    Rebase to net-queue

Applied to net-queue; the target tree should have been updated as well 
(iwl-net).

I'm also adding in the Closes: for the report.

Closes: 
https://lore.kernel.org/intel-wired-lan/2c7d6c31-192a-4047-bd90-9566d0e14cc0@stanley.mountain/

Thanks,
Tony

> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7236f20..467f812 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2105,7 +2105,7 @@ static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>   		/* hand second half of page back to the ring */
>   		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>   	} else {
> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
> +		if (skb && IXGBE_CB(skb)->dma == rx_buffer->dma) {
>   			/* the page has been released from the ring */
>   			IXGBE_CB(skb)->page_released = true;
>   		} else {

