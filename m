Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40335817E1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 00:28:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDDAE4167D;
	Mon, 18 Dec 2023 23:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDDAE4167D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702942123;
	bh=zs65pN7rWN/qL7Qvn7VZEilSvq04rI/td47axMDXK6c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rsK3hUgUE9PJv2oP/65T/fRtPkIBu+Irx6K1iLG6yKEIPRSCLTKBkwTyJP4caa4Pv
	 9LfStVw+nNwTrPshbIizcsrdPG/hk2B0WO5fvRiUHJCJnnIFhpM984GX9kBmIU6iTC
	 FXKB1bTAhwlBkFQ/P6aOwNe/1SI4UYL4QeHsA8FlS6FodjZqB4cBxpAUX1/dIqy6yY
	 NopeMKf6Xz6q1UYOClUqeDPzaMB+HAr26YeY/9qS2cGq5I0cqHGzdp2bI66RqP494A
	 5tT+hHmTuHTGrcaFUzmppp+MTqz2U0rZW+id2Ah5PzWWB7u66p5QHHRuPbrOuKdV82
	 liS34z1/mhE4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4gE1McyKIZp; Mon, 18 Dec 2023 23:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E0664161A;
	Mon, 18 Dec 2023 23:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E0664161A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03DA41BF31B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB77860BDA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB77860BDA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdzOn7y8-jfs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 23:28:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAB2D60777
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAB2D60777
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17136658"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17136658"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 15:28:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="1107134429"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="1107134429"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 15:28:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 15:28:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 15:28:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 15:28:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqpYTOPLnSkjtzIFHZrjebVN+TPW9s7z059LEYXFzq2mlGeEVRft1GVVcO2LAaQOJJ7xiiDUtlrvIm9vIJ0Udcznhg5S5aYeeN4O5DqznLALbOSxb3YJsLRT8NdCjEDt2sv0QWbKE55+C9yP9AQgtw6ZifFhm1SxOtitPBQGGogx9IHwcEs9iQnw/2CLmhIS5DBAqNRHe7ze4mJrj7U2nNW/AzlDKxh3An9KQO5msbOcOlpmNmdMKIl9bMpiJ/ABy6uwztyTVlO+cQu3p5kLbLKw/khi/iMBl+LaSB3s6kxdFBP+0XVxwgmNyYoaAyMvKtluKW/+6enPl9tTD0JHLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aOyHU6ty672sbNMMrv+rR92nGD4UdrwFPgIBcSApfGY=;
 b=hTjGmvXKa6xP7bSXNcnFXcImD46GxoVXwTTTlek6+kpOK6ciVUwlr5ZARvFBPdtsrQmDeOC8CGlUQANDAqLbDSaLUS810iUVFfV+z/3qyL3Htg1ekv7aJTZSN7d1DhSvsbVAL1jeIEVfoaJNdJsdj20LLqLBVDA7e3aXn/SU0xYU1ltvN/AaIGjxmCjTHsEN3PMqlsF/XVtQJLtQ+hqNpeD9opl9gPgUwawdMXsU3HyynhUgrUvrsay/CWjbB56ofcUwXB8TCQ2l+Ev6LneQKLsHNHUAvyi5KhPFAu6VuOOLi3N2i5IDFfeAfbwygh5T/8Oy98iDvGp0A7QTAMX7HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7287.namprd11.prod.outlook.com (2603:10b6:8:13f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 23:28:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 23:28:28 +0000
Message-ID: <ee4682aa-9161-4a46-b174-14c993a31eae@intel.com>
Date: Mon, 18 Dec 2023 15:28:27 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231218103926.346294-1-jedrzej.jagielski@intel.com>
 <20231218103926.346294-2-jedrzej.jagielski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231218103926.346294-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW4PR03CA0360.namprd03.prod.outlook.com
 (2603:10b6:303:dc::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7287:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fe127d3-3954-44f9-fae9-08dc00210a09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FxgZP/HfiMjaduZ3IYd/EyMehpvwX6eLZhasKKzm42zj6oMSDb10B58n/k4RO9X9YnKz1iuItoaGI7mLMHITdbOpzpD4YhHhK15aOKkNBskkFo2Ij9+IQOGbh+po4lO/zJo7rpk40YNyFkJcEnw0sQ8USbM79pZvwMM3jAdr3D7gZtU9lGMCJqQAaGK5JJ07UJIZ6Eg8ar6Ip+GFspsIcC1Mz+vroACrRmTRhooEa8sW/gwXKaq8Y4g6zRVsqdkoYZv4/rrkiFA+ZpIIzihSWRu1ECMNt3+7SAT2evQNvgLMOcFISEr06bwJdfBH/LBpF+G/X6CtluzrY5od6rhk0b1fiCJF72Bnv61DhRp5ltZfg6MwIBv6YeC/qRoEqbglFJ8yzXFERXLPnHmTfmMA7SGjUgmzEx5qNcOSIXsdOnl8gDt5sMRJytrMPhta+S/mTRBFb0eYmUTI6wEkF/2kYUsBRwqLZvyLJ1F4p194g/qIY+OMvKRj9Z69/IxWeixpUnhTzwyqXWioLGUFSO8ELHe7gDtJ/t2Hd8TOjWcHo+FewT9ejmByC+CZp98DZVrYQYHkgm8zLhKRjxWAqkgVgP6pf4KZa9+usi1I80fCP/C0zEnbnwWRGwCoTwynJb+X+BPDJ6jFRfZigOi2QcUgGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(31686004)(6512007)(107886003)(2616005)(53546011)(26005)(6506007)(38100700002)(82960400001)(31696002)(86362001)(36756003)(8936002)(8676002)(4326008)(478600001)(4744005)(2906002)(5660300002)(41300700001)(966005)(6486002)(66946007)(66556008)(66476007)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0MyMy9hdDhZTWczUWZOdWx1a3grb2luZEpuZW41UUJIWUVmaHpnVEVhMlRP?=
 =?utf-8?B?bEFGWE4wYVlTdEhaRndFdDJmRm0yMmxFYmNWbDZWQVBNZ0dNYlVUMnNtd0JW?=
 =?utf-8?B?Yis4azc4OXlVQld5dktYVDlQSVQvaithTUdSMkZ2OGpwRWFyUm51eElpd3dq?=
 =?utf-8?B?dStzS2lhMUROdHNVclN3M0RDWHBqREhEdG9KUENMZWp1RTlaaTR3RjUwMk80?=
 =?utf-8?B?QWkxMWNXdnBTWHZlYkhHaFZ1c1ByZzczQ2pFa3c5aTZ5OW1EVzFVWkd6azFE?=
 =?utf-8?B?MlhyR2pDZnozeWY4OVpkK0hvaThxODIxVGs0ek85TTNxL1hHMVhYcjRpbWJK?=
 =?utf-8?B?M2xRY213eERNK3N5RGZMVlA2UXcxS0dtbmdHRlg0WGRMZ0lXdTNuL0t1L0xT?=
 =?utf-8?B?RlBkTXJZVlV4em4rWW5maHZqVVRtK09GNEdWVlFZdVArQmdnc3BpZ25nNE5S?=
 =?utf-8?B?cTNSODhtbnlJM2pmcFJRQkJTYnBXZFduTVBzME4yMVBneTY3RnlKR2ZWOU5G?=
 =?utf-8?B?bHFRQmNqTVNra3RkeW10eFlwZ3RkVXVsRnA3RkZoNEpldjl4b3NvVlZHd0Rs?=
 =?utf-8?B?M2NTc0puVC9SQkpESkRQVkpWRWkvSEYrUUpBaHJ1bVZ3anNIdHk2UnR6WXJs?=
 =?utf-8?B?K1hOcVVPcnNRSTZQVlB5ZXAxc0JTTExRdjQ5ZThTalBTNTR4dzQwUFZOMHBi?=
 =?utf-8?B?TFo3d2pBNXdPRyt0dHNiWUY3V2lGNU14enU5YmZDZGJYWWZ1MEFubjByd2U4?=
 =?utf-8?B?dXFLNzVHUURUWjlJbldMdG11NCtVNldKSG05RUV5T3ZHdUp1YnZZbGNmVWRp?=
 =?utf-8?B?cTJxYmhoV0VFMWtyalJ0eW1jWlVaNTB4MFR0OTBrc0l2N3ZZK0I1NUN1R1JV?=
 =?utf-8?B?Z1JWM2tLMmkvWTY5cTJhMWhYVUt2WDlDTjhuS0hJNldqSFlxcE1rSE9BTkdp?=
 =?utf-8?B?aHZJaElpS3k1OTBtSmtMNlh2OURnWnYwZVZnYTdVb3N4TlFob1N0YUl2Wkkv?=
 =?utf-8?B?blhIbzdsaG9kL0VvY1RHVWFPVlRtMU9VU05wWFcvR0FBemtjUzBFTjBFbzRu?=
 =?utf-8?B?MmpyWjlXa1NXN0JjbWUzNG0vVGFJcmZqYURlWThROVRqY09nNmJLT2wyK1BI?=
 =?utf-8?B?QzllQ2hVdlBHWVM0Ris5RlFmZDE5MmV4TjZiSUxFTGk4Q1BqakYzZlk0V3dh?=
 =?utf-8?B?OWZiRVROa3lSV3VZYkV6K1BhR09uSnFVSFg1czFsa3hBalNuUWdUVmp5R3li?=
 =?utf-8?B?Qi9TRzBkMjJMUkRQQlFxWk1DaFRoYWdMS3JCYzlaZXJsNXJiRDVzWjZjci85?=
 =?utf-8?B?UlVPbndyTzVkeXJVRkZWWnNJTStkTFRRNERORlhiZHNwTVpFOWQxWUJnd2tL?=
 =?utf-8?B?bTk5M2FmczZyTk5lbzJLL0FBdGVScmRicHhIK2tGWGN6eDJhMWdMZmZrODFY?=
 =?utf-8?B?YVlpbkYzT0NaS1B0UzRNY3dOZmZ3Lzh4ZmlwS1lvTUQ1NjZaL1A2aDNwVzE3?=
 =?utf-8?B?OExPWUd1NHF0UnJkUlRNSUJuUDJsSldJQ3lXZjRsV05wazBGdHNYS1I1V3d5?=
 =?utf-8?B?SCszK0Zad2ZobjZKN2FYaXJURDdvTGROa1Jra2JVZzAzSFFlVjlVbG96MXJ4?=
 =?utf-8?B?aHQ2ZmhBSEIySXExOW0zQTgydStMU3VIMXJGWEt1Yy8rK1NzenBUZXhneHJF?=
 =?utf-8?B?OG1ieDJUcFJMOEVQM21Ld1R2OHRLVjEyYmlUZlNTT1p0MGRaWmdsZDRuZ3R5?=
 =?utf-8?B?K2xGYnRQS0xGcFY4RU13emRMcHdaZUJyWUEzQUwvbm1EQlBkYnh6QWp6dFBB?=
 =?utf-8?B?U3M4TmV3RjhDNXYrSmhUU2ZrUlJLWVpmMElGOE9nWEdQUEVzTVJoVmhJaXhU?=
 =?utf-8?B?RFJzcEZEOXBndktFRUFXSVB2RkhiWGY4VE1jQ21HTkVXMWNwSWthRWJaU252?=
 =?utf-8?B?N1JXaTZiaU1MNk1LdVVwbEM3ODV0UUNuUTI5andTeng4WXNpVnRsOFN2YVNT?=
 =?utf-8?B?WHVJSmlhTDFIL2dFMjg5SFJMclBpNHBNVHFadEE2Ui8yTGlIYjFZbzlUdDhz?=
 =?utf-8?B?U1JPQnlDVHA1aHRKNUV4UUdZcE4reDE2SDZZaVNBWjFFY2lydlV1MXVMTjlu?=
 =?utf-8?B?eERFVFNVWHF2YWExTmtFaG1kZ3hZRUZKOHl4bE96RmR6V1RsSVZQbTRpUzBv?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fe127d3-3954-44f9-fae9-08dc00210a09
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 23:28:28.3199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: byDjrmXCAyt1QJYsg1MLVfEJ/L09aOJiTn7aVj5pCh6vmgpCcoenADzZBCOQ7n5UOkSSxgRrAt7TXy0kBKPsTPjXZdYy7FP5zKZbGaFk2WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7287
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702942117; x=1734478117;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2roXlhyHioWd0n2NjrbF+rRwmHnSTt90Nbm7vDFnDVk=;
 b=FzJVYpPpaCSJXPlYqjKps9xYMCtezUeLom5342ZTrwtO/VTwHTc2h4bm
 Qd9RrWrM0OMGb88pcpQ94K62e1OrYLA0P5VEfj4plu8d+bS/nxgQwOLbI
 j9Ifp/e4LPpbtPJ01O/pFa7BVoNr76Ye2yoqbHZ5yzoHx1RbTxkPgIVgP
 OPV2/b8c/OilZQTdL/3EH+16yzj4+kFctayOtHZqnbge6ZGIY5+Rwn+fQ
 uQLdPZ+XIU8xdBu8Zu6VpYZ9fxOq3qPj6kUaH2RHenLO8oDCo9sgkDJFQ
 hwTwgpA1jEX1ZKd7YFmC+umsD4oaBmlGHzCRg/WOhyvi0Wz4vvg5ntspK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FzJVYpPp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/18/2023 2:39 AM, Jedrzej Jagielski wrote:
> Currently ixgbe driver is notified of overheating events
> via internal IXGBE_ERR_OVERTEMP error code.
> 
> Change the approach for handle_lasi() to use freshly introduced
> is_overtemp function parameter which set when such event occurs.
> Change check_overtemp() to bool and return true if overtemp
> event occurs.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: change aproach to use additional function parameter to notify when overheat
> v4: change check_overtemp to bool
> v5: adress Simon's comments
> 
> https://lore.kernel.org/netdev/20231217093800.GX6288@kernel.org/


Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
