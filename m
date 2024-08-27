Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C78079619FE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 00:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74451405C4;
	Tue, 27 Aug 2024 22:23:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2cNgxFelDSwg; Tue, 27 Aug 2024 22:23:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2F184061C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724797436;
	bh=Co0J9V8ay3NE9BxYxWtbogPyRjr/cIOwlhAEfv7qHe8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1kXooc4SoQgq+zY77FRqAXbDZ7cGAFR4WThQ9WEr4MxO6/ZSb2NiI/Ui2sRz1Gry8
	 FP+DSTBx5etWNyd8gEwq0Zgx5KuoPYcaBp8RbjKiYdWR9TGda5Hxl5K9oX2SqH/IMO
	 +h+C4JhV9X9af86k4ImBDX7zQmfh3l/Gy4arKptVfpIoyOpeOKHspekI2okWVzY9Kv
	 VpEtbAW7xGROGps6ykCzJdmT4b1uRh8+uqyh1nKgyIBpl8FUujq9DlmcVk0Lsknxc8
	 RZeyJHgkDg2JzyPnsO/brgsZGBOt1+huEzJESIJRn7Q3w3eR/u39rfdsyThMGZm8sS
	 CX/iKl2CgjfWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2F184061C;
	Tue, 27 Aug 2024 22:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0570E1BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5C3A401AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jpPmomgXd1g2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 22:23:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9AFD940184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AFD940184
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AFD940184
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:23:52 +0000 (UTC)
X-CSE-ConnectionGUID: pouqRADfStqywAdrCjbgRA==
X-CSE-MsgGUID: kt2KyJ/6QWKpTNNOuZogwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23108529"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="23108529"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 15:23:51 -0700
X-CSE-ConnectionGUID: bUYgjz1OQKGO0C6vXW+TJA==
X-CSE-MsgGUID: TgyjulqqTs28GrQo0EvH8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63528893"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 15:23:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 15:23:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 15:23:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 15:23:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 15:23:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fGyMBUIjFPHYI8H8GlG2zjoTW4vRYKlpXiyFJXWyY0Er1hs5MkqPfLpJVSOdoiTtfYw87gnsmfq7xdXwFsDpO4pR68aUOeMTdXnzcq1M7jOrOVkFuTZfXsXNz4jE2h1JKXBo5u1QBLzwHwwZ11z3oRCT6P5UflTVnA7QEblFk/AKvIwiY1qfvxM84Pl9z/VIjGkodsa6Bpb+EU9eTLfsc7Mkfr04FlpgDPgViKqWIF4oocc0ZOzzzLXoH6quqxgMQhG8pTR/8ZnJPZStEKC7Bjqt9cBqt+Y4XbdgwMG2QlQmc3FqiRmxAePEWhbk3Uegsw+dR3+00ankm6pw4yd6Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Co0J9V8ay3NE9BxYxWtbogPyRjr/cIOwlhAEfv7qHe8=;
 b=EjuWcTN691QDloFvYZBjFvPIozXui5KyFKkpC+A5rK5tGewax85moTlJWpKsl/fqGetlLC3vl1qMU24bcX9fSD89aTOLyFtm/WE22FBoypoHP5ZiMcefZ5UDAdrMnvvnobAWgtlg+hRLo2q0m1lHbj2bY49kis6uPZ9zaYJqqzLcwNB2UVxrXt64HoisXRQaWgPdnntVm0dscacTti98BP/YUr5cD6tO3qkmpWlFPxcnEs6TMzvRtR2X+LwZxwvh5ueKhfcRUBGjUE9RsjI215PzdfT1bS4RkEIJjJ3DM3iEv0a9U2/OX+I8Fw9o/cgNqGbixUpEytKPbaI+ORL0CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 22:23:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 22:23:48 +0000
Message-ID: <efc5d9a4-7ba6-4d19-8fdb-56e38baf6d72@intel.com>
Date: Tue, 27 Aug 2024 15:23:45 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Vladimir Oltean
 <olteanv@gmail.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
Content-Language: en-US
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0123.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5027:EE_
X-MS-Office365-Filtering-Correlation-Id: d307e1fb-a8c7-4aac-3fcc-08dcc6e6ec1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K1VpWGdjSStQbi8wcHRObG94eGkxWElDSHJUVGRlemFIZ2NGS1A5NkZQeU9N?=
 =?utf-8?B?WFBjdWVBd2hqaFhkci9KSUN2V09LUzI2bzkwYklFV0FzSUNLTGdIQUFyOXpj?=
 =?utf-8?B?YU5wbFhZVm5oRld5dSttR0ZHZmN1TW1PZlFQREhPRS9GMHdIazFVZGVnczl1?=
 =?utf-8?B?T0NJV2xMYlZhUUZlNks2dHBBVDBFR0pzVXdibXpBbzBsc0JST0lkY2doajM2?=
 =?utf-8?B?VVZTT2pUa3RkbFMyTFhwZXRwWFNPOXVmUmhKSHBnU29iaUFNRHRZTlp5L2Rn?=
 =?utf-8?B?K1dmMnZjSUtmMm5ibEVEWnl5UUpIYzBMRVlrTDRqbWlIUGh5VVFidDdaV1NH?=
 =?utf-8?B?dFV0MjZ6YzI5TmtFRm5BM1lCZHpTNXRDTnVjNW0rSjV2ckpQbUx5V0k5SkhG?=
 =?utf-8?B?NGRFaWJmemo1MkJBOElxcGR1N0p2SkN4a3F1b0xmTUMwRm01U1Bub2tmTzND?=
 =?utf-8?B?NU1jUjU4bzZIK3ZLWFYwQ3V1ZUNPVG5yZ0JNSlNtS2lSY1MwRlZZMEVQZ1My?=
 =?utf-8?B?NHdEcThpeG9SYTZhUThNT2ZacGtrWHF1M1oySkt0T1FZVk1KS3YrTk0xOXBx?=
 =?utf-8?B?dmVHR3pUR2JuVXpGc1VqWlpzWmU4ZCtBQTV2dVhTbWFGNm9weTZueEo4c0hz?=
 =?utf-8?B?OVpadUhPbDB5cVE4cDhZdTZRMVkxUmZraWpJeUJ6UmU3YklLUzlpM0Y3a01D?=
 =?utf-8?B?WEFlQmJkaDMwdzBYTXptbk1Cdi9rZXFOelpnZjU5N2tlYTIxeGJWcFVjYVNv?=
 =?utf-8?B?eUI5Zm9wUzErT1E1L0wvbDBRc2NkTzhXRjFDa0szd3drQmsvWi9wTWhESE8z?=
 =?utf-8?B?VFlsTlhkQjVJR3kvSEJ0SW52b0dYVzJEelY4SzQzYVczcjByQ0h0WU11cy9C?=
 =?utf-8?B?a0Jib0ZJNUlUM0gvUGkzS1NERUpqeFdjKzZOSVdGdDVkT3F5UXJhM2dmNCsz?=
 =?utf-8?B?Nkx6MVNzMU1xbVB0cUxyaWJnYldLQlBZa1BHYXlmbklSTXFwYmMrTFpJcjRK?=
 =?utf-8?B?QUNDQWNqd0VZZVNXOEp3YWFMSUtFdG5XWkJpRDBtUy9udHJLWEI4VnNVTndo?=
 =?utf-8?B?dVdzUStHbWJGTHg2Snc2OW4vS2h4WkQwZjBnYlBjNHpIdVg3MHkvT1A4elB2?=
 =?utf-8?B?VXJqRFRUU04va28zQmFNUk51NFU0RXIrMjhBa3hGM0xyUHNBREJObVlJajZy?=
 =?utf-8?B?SkpKbm5ZUkZqVDYwcXdFbzZvNnJZQURmN3lzWHdqbGVEN3ROMisvTFM5ODhy?=
 =?utf-8?B?VHBKSWFwWURVbk5XWnhDUTZmWURmK2lwN0w1T1hFa2JJOHh6VWU2YTFjU0RD?=
 =?utf-8?B?UExUY0tuT1kwL2NSMXN0ZlozbVZnYktBRzZ2ZCtlUlMzSGFCN0tvNy9BbWV2?=
 =?utf-8?B?K0FRbUgwOVpreTdsbUdiZ2FuWHJrNFFiY3dGWFdleE5xR0hUWmxDQlJTQUpU?=
 =?utf-8?B?YzhwRXlNcmxYWW5jaUxoSEgra3g5eUxzeHNwam9tV29Rd3lSTDdFUm85OFBy?=
 =?utf-8?B?K1F2bGtzVXRhbkptbWJEU1RaZlQ0eXBBTkNjc1R4N0NNME1jL1BoZ1dOYWNv?=
 =?utf-8?B?VEdNQVJQeWljRlVLUmZrUmI4M3k4MWUvZDAzR1l4ZUIxWTlSMnpQWXAyWEEv?=
 =?utf-8?B?Vlh2cWJaSjRUeHlZZ2FHTCtraDIwRDZPYUpnVkNSczRBbXpxVE8yWjVrUFF4?=
 =?utf-8?B?cHJhczdmbFpXQUQ2MVJ4WURHSEo3VjBMSUh6aDF1SEttaGlLWGhpSHpuYkt4?=
 =?utf-8?B?UDlLSDBwVEIwd3dPRmNZaFdLTmUvaTVxWDhvb0pLR2lWSlBPbVpJc3ZHUC9E?=
 =?utf-8?B?WlZBcWg3RWFDSEp5WWE0dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am1zSWtzOUQzZlE5NGVlU2RNMERWS3JKVFd5SDJGNE5TWDVNOURSdE9TUHNT?=
 =?utf-8?B?U0lJc2lvNVgyVnE2Mm1PcE9mcUJCR2JUZUtBcTFNMksrdXI4SGxNVWpSelIy?=
 =?utf-8?B?L044MUVjOEI5Z1MweXBreDNrMkw0Ti9OVkRZUllSYXRmQWNKTC81Y3RkU1N5?=
 =?utf-8?B?TzhhMnFpL0hXaGtxekYydmt4M0hpT3BpbFAzM1BYK3BvaWdTa3RtcXpSY1FK?=
 =?utf-8?B?RmQ3ZlRIOFFQQ1RjejFsYWhNN3RKTkhmTEZrc3lTL3RDdmpwTU53VlFDMmg0?=
 =?utf-8?B?MkU5UlFaNEtzZTBtUUdSbmVWbVFoN3ZIUHVrbW5xZ2ZlcExncENGczJuNk9y?=
 =?utf-8?B?VWM1OUcyeEpDRnpMSGxrYzMrS2xzaFk1VkViTTVPdHhpbENrL2d2NEFUSW5D?=
 =?utf-8?B?cGU5MDBMUElBZTYxUWE2NS92QWlTRmFVYXNOOUVyMXYwMUdtT0NxYzJRZHhD?=
 =?utf-8?B?aXFLVGF4dHJXcjkvckwyNU5xY1ZLNlN3bkVpWUZTQjZEQjdSMEJ5bnVBMnp1?=
 =?utf-8?B?T29PK2pMWFBuMWtnY0VTaHJUL3FURWNnOVIwdlErVTJFbHNoSmowQ2s0SWJ6?=
 =?utf-8?B?dmw1d1ZtaXcxRWlVOWVXT0RtazlESVZvZWxQZ2Z1aCs2NkJNOCtzOW92aDRK?=
 =?utf-8?B?Y0hCWERpWkt0L3BMMDEyRTBwaHErWlV2V0h4eUpydTA4cm96YkNxOGhYUEJX?=
 =?utf-8?B?bk5CTjczMFZlWVVxbEQrWHFQeEV3L29EbjRldkk2OGY3cG9qL0pYSTYwcmJW?=
 =?utf-8?B?bTUrUHh0enppQUYyeGdtSXBCNUFwU25WNzgvRHVmaUkvT2ZUTjg4Z2h4RFZX?=
 =?utf-8?B?ZU1MOFBrbUk4aHJwazVoY3FlaVlsM3JVV2Z6WlhIT0lWVjBWQy9Rc3BWdzdF?=
 =?utf-8?B?ZkdZWTliL3FXRzI2U1ZkdDN1dkVBblQ2MTlDeE1RTjBVRkxyWmpwQXJ5bUI2?=
 =?utf-8?B?TXQ5N0lNeDhtS1ZUdFQ0cTVBNExuc3VBblRtbGVPV2hyalZlR1p3MmpDcFhP?=
 =?utf-8?B?YlpnSkM3c0U2dFBwN2pqbHBVditaaWRjSlp3VndPTW16RGRGL2ExZ3V0eUwy?=
 =?utf-8?B?WjNFWkZqeUxMOUxHSE5yem43bTI5UWI4QjlCZkxXdE0rbjQrbFF3WHJERER1?=
 =?utf-8?B?eGlDTnZOT0wvRmZ0VHFweUVlNGdZQWVsWXI2OTZOZTBPVjU5Yk5mSkNxU3Z1?=
 =?utf-8?B?RFVqUUxQY3hYNWk5SGN3Qy8zM2xheml6OUsxNm9pY0NFa242SUZxRjMrNVh2?=
 =?utf-8?B?WTRtS0VhMlJJRXkwNzdGc0NPVk5tS3NKYWtoWDFvZUphcFc2WmRveWxSNGw5?=
 =?utf-8?B?bHpYL0dyOWk4RXZFVTdTZm1pTUZYRm1PSWFaNzJrL2NNYkROZTA4QUNQay9W?=
 =?utf-8?B?bmFMTjlBVzhkRjlhbzhlTU1RSTkxc1UxTFZSS1d6NlBjWExsY1lFNGUrdHVo?=
 =?utf-8?B?dDEraytQYkpmT3RWWG80ckY2N0RlRk1INGNYcFBkTVpWYU5EOVFvZSttYlE1?=
 =?utf-8?B?TExXWExjY3p6VW5YMHpSdS9sUXAzOVRmTDhOdzhDRTVZSUM0NjdkdDBVRDky?=
 =?utf-8?B?SCtCTjU0b3VUTDlYMEdvck4vQnFYTmcrTnpJSzFQS1BLSVJLSFpHOGJBZFBs?=
 =?utf-8?B?NFgza0VOMDNONi8yK0VReFlBZDNZd205UFRwSmlaY2pOUjVwMzN1VURtOTY1?=
 =?utf-8?B?MG5YQk9TUlkzZ252dHFlVjBHZk9SdlVYb2xuYzVCTUFlaGhYVEFhS1ptSkRE?=
 =?utf-8?B?ZUd3c3ZxM3BYMTU4eTVpTDQ0NWtUeGZrYWI5MllLM3ZRZjdGUDNhTEYwWDlL?=
 =?utf-8?B?L2ppYXJCWDlYdEF5M0RBME1SWDA0cVZUcjMyRkVVYm1rcS94WFVjVlVoMGl6?=
 =?utf-8?B?Y2g0Qy9GUklxenFPZWdXVnE1bmVTSXNUWTVoMUI1QzJ5MXFpYlNpTmVPMmhn?=
 =?utf-8?B?bGxicThxUDEza0pLbC9QZkZsbTIwRHhGQmEvdFhYbm9IdTlGbVZBK3hpL0cx?=
 =?utf-8?B?eWtFbjVjKzV2cTFCSEtJdkxMYlY1V3Y3Zmk4UTFtV0tLeXBubGlaSnlJdUx1?=
 =?utf-8?B?bjZFOHNZY1hoODAwNkF4UW1OWE9naERUZ3hnL0VtUGxTaWhGWUM5Q3luR1FK?=
 =?utf-8?B?bklVNDJNWFpSWS9hV2VkeDBvV0c1dldpSnpsT0JDL2hOQWIxMlJJSktaanJv?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d307e1fb-a8c7-4aac-3fcc-08dcc6e6ec1b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 22:23:48.6810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mMV/R+xv6eJJrXI9seRqcWe/PUA5vmjpIxwKVAcUUMMnioEbEIKU5XnrMThLP11uXmb3Va0o0c/R9m0GArPJd7jxqVJxsddpqxE/Oeo4YJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724797432; x=1756333432;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Co0J9V8ay3NE9BxYxWtbogPyRjr/cIOwlhAEfv7qHe8=;
 b=nChtOw9EDhM1uhCgYeBbpt3wD/vffCHjhqjDHR4JSuaDK/CNvAJP1+sy
 P3j7GscCt0CChoB5hH/MIONEAICxNCfaTxWtpTNSeSs+VpZbp/lPQvhx3
 6zUFRtFPK8EmI6QYjoHY1c0Ol2uN6DXa9AbzexJYn3/ZNF+lSgvIDs2P2
 iQyGPl5fH+87aDS6THLKtz6yGVz88gMqkT2wKjR0JP1gid6H0AwseJpwF
 cEoj+YclafsxQcJhB2LJR6/a3MmKwoGLtDHr9aCznQjM6woehGZUFHvJ0
 LINztHLNxc2i8QNf2cXi43LYulmOUxq1+tYpILmUdeuTTn+CRU0iPzYHM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nChtOw9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 00/13] ice: use
 <linux/packing.h> for Tx and Rx queue context data
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/27/2024 2:52 PM, Jacob Keller wrote:
> The copy_rxq_ctx_to_hw() and ice_write_rxq_ctx() are updated to align with
> modern kernel style guidelines. This includes removing an unnecessary NULL
> check, updating the kdoc descriptions to align with the check-kdoc, and
> making ice_copy_rxq_ctx_to_hw() void. This ensures the style for these
> functions will match the style for the similar functions needed to enable
> live migration in a future series.


Ugh, I accidentally typo'd the netdev address. I'll wait to resend until
tomorrow, but in the meantime..

Przemek, I did add two additional patches I saw I had on my live
migration branch to cleanup the Rx queue functions, which weren't part
of the e1000 series. I would appreciate if you could review those as
well before I resend.

Thanks,
Jake
