Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFB4616FE0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 22:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 695DF41704;
	Wed,  2 Nov 2022 21:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 695DF41704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667424850;
	bh=WcN1gaHo+qcInoOf8JTLv8Tbhtgbyc8wm57gkBWRwrU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QMskKrVxrlGv4qEpcz8WUXciDr5kGF4MH/ViZYQE4jb7yf8q8/ZWfKAKbQLdpWvj4
	 8Gw+HTETIsupoISPsEhNZLpavp6+UDUc7184DZyP+gAIpUI+9kPhAobVSqGhWtS9Mo
	 tCyx8JEcYF10e7NQdQg3g52ilbdWVhqRzl/4O3I+w9M+Z2y/NFmwAjlN+ZgqkQfiVy
	 tq1KiEi3Ic/jpp6nly5HQJhjiHdgsbRE+0hDWQnY0fsYZT7T1cTrflgSpmTaTLLuFJ
	 Ar+4taQnGm7pA+GfNFnmXfmHC2wzPDTqHEJ5JgZ5OsvC6eF4yko02N18uEIBHf4bjI
	 8r+TsG9bhOR7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ayzm_Vnlbyuk; Wed,  2 Nov 2022 21:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29FB4416E5;
	Wed,  2 Nov 2022 21:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29FB4416E5
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38A651BF2FA
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 080A840A92
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 080A840A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUgRMGdvEWk9 for <intel-wired-lan@osuosl.org>;
 Wed,  2 Nov 2022 21:34:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E574E408F0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E574E408F0
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:34:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="307140230"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="307140230"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 14:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777053459"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777053459"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2022 14:34:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 14:34:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 14:34:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 14:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NqghwZ0twyd/g2kyw+poDQeJeLFW2+yJQgJ07U/haZRZymd4ljjTwdOC6lMVWC+o/0OZ9Dx7jMysiqV3TTj8O+po1j8FCpCXoQwc3eKa+CbuE3SJ33eo+BqC9l3WmqA3VpvVZMYCjxqCuqF72Fn+8GVrNl5qjUROWrg9dcUQveMVnFXcQ69Sc93NikRXqEjUHuuxkNdU4eDKq6PJFPudCruNBU8tj2Dsaen+7pOvmjtxUUM2Akg3HeZd/cKDDaV2rFsNAJJvQGofCCVO0JqLhu03k8ssCwcX3zixc1uywYncR+urFylNOdV1IOjdcqTuISV+UaXtuuZZDmwkWdrRfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0nTn223wHxvI/aGl82lTsAMxY+yF3xZP1bv6yec4P9I=;
 b=ld3kLnht1pRt9xGSb/rBU0k9vdqXY0YATOvGnVRa0KcEj0jz/axhYRpIlkDhkj6fgCyOQlS80jdgHh5XL53p1CTGH97Cs+1J2IVMYcjHHbeD8Wn7KZG7d0P5NlYjttG7D8yzv+cRQ8hhX8MmJbF3TsT9hpF92w/QI2DtS8ttJgCXgVTN38zDoJxZyBBCHiRB1ZHwdAfRIBbxob6AXzDqUmIfZXTmsCh0FkB/5+DYbZ8jsamJuHclg/EJrwrzTZDyEauGmmKJnEK90MgIClRarysA9LLGxUPdUYOX/YekJBP8Rbqt56o123MDMseDBeN5R0a3DFS4NPkABqze95aOhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 21:33:58 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 21:33:58 +0000
Message-ID: <109b3730-7936-d7ed-1693-84c65c92f2d0@intel.com>
Date: Wed, 2 Nov 2022 14:33:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0063.namprd03.prod.outlook.com
 (2603:10b6:a03:331::8) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:EE_|DM6PR11MB4609:EE_
X-MS-Office365-Filtering-Correlation-Id: 021e8d8a-2dbc-4154-74b6-08dabd19f345
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HlTCtDWpQgTNvZR/Y6dXHMmSx1IXvDwcVysA3A1oykcMFTTd1hZdDx9wG4Ey9Ho4jleX9iXbzWVtzfhpmgtQ1JmWLs8o58k5tFKno1B9FE9YweDXU+rM9Qbcyq49WoLP54dVZ46EQDUfPyEkQN280LgJEZzqkrOwfkW2rsvJbhaNPJ4mIPUBN/q5Q3Md2lxyMvsWVQyoTgwxOAhsAXajk5pUifwBJwtWmBsEZWFT5x1Pte582m08sbqr01S4APIqYtMA5ci7RFe5aXkqEacklK/waqNs+wNEl+pwUMAm1mkiBTyEbKxmInaqHp9vs7T+2kfZxz/lPCmOXhYFOZBKF38n87m3Zp33m8LClkWxL+gz0ZM2IETW3y5eNKCyf55hl88ZhU3ijo2ew2Ey6tONgP2AsWMgliB8N0GoYhtb5FSA/O7+owg8bJCD5GtWM9M+KML8X9BoZ81oeDmzwCakvYfRlJ6gpntPP/Dcay/VMlLTKtPiZLE1BBXZhKeg4+UYKqxItpCU0hbCeeLjUcGckLDvZQfCSdWs4JC1jYJXzjaHykPwcIK5YhllF6xvwEmCRzIy9BSl4xWAPTk8iGjpvE4A39L4aQFJaBDQRsfX4TDYz48+hJOmdDLOGfgdh8Zp+UjQYfg05chiqpzO+5xhCK3zGUBNRpz/wbeSp//8b/pXb4a0F/mrmZAIn6mtNseq93LdZVV/9OrJngxp7+oVnjNKq5qEmRyRsaXX8TExfRr/Uhh7WeFSJ0K8982FCbVRui6xlHQIywE7U9LCNMlvwzJQA0rcZ9fHsJ66EMuTdb/C96Thk6NRyEUyWK/4yF8qqAyJNLGAQqPHxpj3my4JUA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(396003)(136003)(346002)(451199015)(86362001)(31696002)(82960400001)(36756003)(6486002)(966005)(2906002)(107886003)(4326008)(66556008)(5660300002)(66946007)(66476007)(478600001)(8936002)(41300700001)(38100700002)(186003)(6512007)(26005)(316002)(53546011)(8676002)(6506007)(2616005)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bC81SVBVVlJxMWlpdzhLdnBOam04NVdTV2JLZjFjTEtVbGlYN3QzYjdyZVIy?=
 =?utf-8?B?M0dFeUpJeHVmbS9nbnY2S3JFZUJlcGpLYlVWR05nSytEUU5vK2tXZlI2Qk5Z?=
 =?utf-8?B?dGJMMkZFTi94dHNYMFFBT1pxL3NKejRIUDhrUXpRNng2VHZiSkpVSzVpOStS?=
 =?utf-8?B?WjcvdlNoWEhyVHFmUFBjeTVjcWVIbFFlR2N1aHlOTlVyYVpkbUNGczYvQWVx?=
 =?utf-8?B?VXh6M2NxRllpZFVTa0NiaGQyamNucDNHQUk4UFVtaFVKQlNGSEJpUFFSa05k?=
 =?utf-8?B?RkV6cHIwaXlWaGR5RVZrclExVDQ0Qkd4TnFocit6d2tNT0wvczQzVWpxc1A1?=
 =?utf-8?B?NGxFOGJJYzRsZ3VwbmF6cE5NU2dYcnNmcTduUitoOXVBSFNvUHlROG5sUHly?=
 =?utf-8?B?WmUrWi9oTDlMWGxCWW1vRno4WkcyanYrZVlKUTBncnhPdVpTcTZSY0N5UjhC?=
 =?utf-8?B?WnhtN0tzN0M4OE92T3daMkFvb3FoUUxiTzlheEhxcnVLUTdrcmFqTU5JMXpq?=
 =?utf-8?B?bkJtWStCaWV5MWJkNjBjRVMwbDRaeFd5NzhRL1RSWHp5SjRkaVJ3Tk9aWEtM?=
 =?utf-8?B?NlJHZUdBTlFobTR1MlBXS2o2Mk96dWp2ZUN1Yi84elBtWFBZRDVhSmYyck56?=
 =?utf-8?B?c2hkZWQwenNreFdDVVNlbGhNT0xvNVVuQUwwZzhuL1JITHRRdVMyS2xmcmxz?=
 =?utf-8?B?QUh0TFp3WlFFYzdic2NKNEJxV0VmenUvUFFkZGtQeXZUdzBpa0FYZVFodEky?=
 =?utf-8?B?L1hPQlNuenJrSmNMK29PSGdnNkxESWN1d1h5L29jdzBCTThHNmZsVlR3L1A5?=
 =?utf-8?B?dDRGdWZEN1NMSjBGM2dCQUpqdHY5RWMwR2hhUXZ3dEFkRHlPQys0bXhrbGo3?=
 =?utf-8?B?VmxCRDVtWmdNRFd5NE1lUTRnT2crZ3JUNEppNC93OTNxV2I0OXkvVjNLV2RL?=
 =?utf-8?B?OFlVekVrUWNTdTBNRXJkQk1SaExjbmZQMHloTG5nTjk2NThRWDBpc2lnVGFZ?=
 =?utf-8?B?OVdWcVo2TjdPWnE4OSs0b2NZa3ZjejAvL3k0czRyY1VhU3ZPNjIyMmZFTHNu?=
 =?utf-8?B?Rk9SYkEyeGlkbVpKbllzSHdTME1uMW5WNkdCbFZIOWxXeG1QQkE5TmVlS0FI?=
 =?utf-8?B?Nk9KZzdBNHhDQjZsQjVmbnZaLzRIQnFvU0JWcEVVSmd4cWU5elVBenhYUGYy?=
 =?utf-8?B?bjZlQkJMZlFOK2preXVwaHRQTmpvSHpUaE11R2g0Sng3TzY0bnMydzgvNzNn?=
 =?utf-8?B?Q2lzb2o0bzBheU1Gbm1yNnVGTyt6dHZENXFsUk1SaTRSVm5aTElHcTJtd0R4?=
 =?utf-8?B?OUdndUF3YnFZQ09Id2FIOXphTTkxVHJjbDN5djlXU1Z3Z3RXazRINmhadTM0?=
 =?utf-8?B?dkJlbTZ4aVNraGQyMXdLRkhQS2thM3dxamJYeFRtQW5XRW93dFFoVFpWU2pz?=
 =?utf-8?B?ZUl1WTcwRmphSDVqZVdGdUJhcjNXY3M5a3pEOUhMbTI5SnI0UkZPTkZBTVVC?=
 =?utf-8?B?T3kvWE9PUXJkOStxNlEwTGdWbDA2U0NCR3FlUDdkUTJ1OThMVTJOM3ZzcmVD?=
 =?utf-8?B?ajVqS3AwZFNaVnF1L05CMFh4NGNpSXNiTzAvU2NPcHVaRVEwZy9zd3drVTdD?=
 =?utf-8?B?MjVGN0cyaGpFeVBGd0hSNUN2ZHQvd1QwRHVBK1dCOGRwOUlYaS9MWklnR1Bq?=
 =?utf-8?B?MjdQYStHdCt3WHd4dWtMOVhZaHZqOW5zWlFLRTYrcFVhbWV4bUkyS2QxZWV5?=
 =?utf-8?B?NUk4Q1JtUkpGaUR1aDFXTWdYMkIrZUppZGV2YkpUZStQMSsvQzdDaUhscDA1?=
 =?utf-8?B?ZHo2YTVRc0dweUZkWTJpbTd1emIwbTNxT0xmYTlhbSt4NldPNk1JOUIvZmUx?=
 =?utf-8?B?aU8xeElEZHNYQmFLbERITWtnKzJyWWx1VGJlQnJFeGF0SDVWZ2VPRENNMm1P?=
 =?utf-8?B?aytmNjdqancxYUo0YnYvVVFuWTlxakRBbDBzdzNNaVV4OStDVVNMOTlMK3hq?=
 =?utf-8?B?ZFJVOU11YUdtOXVnR1dBcDdnMTJSZTZVb3JPdDl2OUFyMThpMVFhZHdkV1Bz?=
 =?utf-8?B?OEt2K2ZWdGtab0RTcEhlK0lyOHE2OEgvTDlleGVsMGhKZGRNWDVWdHNqSDN0?=
 =?utf-8?B?M1hndTBDUG1CeXpxWnFZRjdaOXhIcHRMZHJMa1QrdmhuS2RPcGZlUVJobVVj?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 021e8d8a-2dbc-4154-74b6-08dabd19f345
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 21:33:58.1000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mt+dMiO4o914syVf2E/up0j6tCEjipWZHc+rKu4ilEz/wYP5Cd3BoTdZcOmrJg9+hHqfQuSwofTKOOIjXWleMcATcrjRMqA6q/VsAB76NC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667424841; x=1698960841;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MPaUQ7Z8TCJiBu0bhJFFnprj1ZiyjNJtx5o/7QRYl7Y=;
 b=U/TYWR7/yiB9DrS76HyvFTqYSwXU4qcHdA0E4kbBgO8HOPrRQacfBbmb
 zIVbLodJIJ0n/RKBeRUuXqfOgCWbFUcC+1Yc7ZmnBmvQzSHjkvW6kKYOv
 rTSMBNwoZ+1Q08xKxFdlDxZNtd0rTsGcYwNbs0enE5TZm8z8ZmgYBXVee
 ICgNXapFXp7yXQh89I1Qy9CIituQrqbRaD0qGy19V6uveAXchWvIurq+u
 6z0etl1iFEkMmNChzPaNEvoXFDZzWKE1EGUdL1K4ii2EngUNlIHCJNxur
 ja4yBTSmCeVm/l1RzOr2YSza5Sh8U360ZWMRc4t+OeVkW8jTPybRK2cDM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U/TYWR7/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: pmenzel@molgen.mpg.de, mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/25/2022 7:03 AM, Muhammad Husaini Zulkifli wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> The I225 hardware has a limitation that packets can only be scheduled
> in the [0, cycle-time] interval. So, scheduling a packet to the start
> of the next cycle doesn't usually work.
> 
> To overcome this, we use the Transmit Descriptor first flag to indicates
> that a packet should be the first packet (from a queue) in a cycle
> according to the section 7.5.2.9.3.4 The First Packet on Each QBV Cycle
> in Intel Discrete I225/6 User Manual.
> 
> But this only works if there was any packet from that queue during the
> current cycle, to avoid this issue, we issue an empty packet if that's
> not the case. Also require one more descriptor to be available, to take
> into account the empty packet that might be issued.

<snip>

> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> 
> ---
> V1 -> V2: Fix error when compile with W=1 and rename the title/summary

Sorry, missed the v2 but looks like most the same comments on v1 apply.
https://lore.kernel.org/intel-wired-lan/c665240a-3cfa-4eb8-4308-63fd98492faf@intel.com/

Also, the Reported-by lkp can be removed. If the patch was created due 
to an lkp report, the reported-by is needed, however, if you are fixing 
issues on your in-process patch that were reported by lkp, then it is not.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
