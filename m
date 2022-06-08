Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 173D0543F76
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 00:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1804382AF5;
	Wed,  8 Jun 2022 22:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPJ4G1HIksxp; Wed,  8 Jun 2022 22:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D5D082AB6;
	Wed,  8 Jun 2022 22:53:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23B3B1BF873
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B102606EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wRl8sgW2TMhe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 22:52:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 230A6606C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654728774; x=1686264774;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gp6XQJGtG0RZsh/y4GK3X5+p0oxGAjr83E2j1ADJ4KU=;
 b=VjPnXh1nCxg4ZEmobbT74liqKWkBD14JZyeAYRUj77fUjlIDDVwdBuLu
 1c6AiPnlE1bt31/G2iUg1kQc2LIK7m3Z4rCJ3/apHBswKJxY0I23O0eJ0
 qIjBcC7v1OLBdkIyH2NrCkI0PzBQgX/Yh3/IqiX6VU0akCn6OluaYussF
 v+yPFC6wQs0l9A//JAeKbuQSEGFgVio1KVqZ9RKQmuG9JoXFHoGCH0ljC
 20yRZ3KSJZ2UcOLE3SE82QS5V1FZ+5VlynU8UuLYWit1zVyl9IJW80W7m
 ld2L+h7j5xY5zDo4DhaC4apEswslN+j6C0sBCoHsOi6AXPuiCzNfJ7XyL Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="302436760"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="302436760"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 15:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="759699045"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 08 Jun 2022 15:52:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 15:52:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 15:52:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 15:52:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+rari2QOzMwEVLhWuhe+S9cI4ymEHBCLeV5kqeeK0ddv1yjnQ82+hSbgEbhpKDajexJs/P5dydSj+g5/izbjBnHrnKlrdnhox5FUE/9EzOaRB7aQY68WhqjuKSZITdeSHuVK/Bz4tFXBPVyTQINebGFxkOI+lSCGYgUKhgaHpsuX8pK50r6qM1ZUoXAdGlg9HbhiWiLmH9PLVUjai1TCjQtqkEukVSTjeCusDNZMf1Hud3HifdzIP3rZy72Mq8X4wDsqKc2awNE9ojQW6iHA+cPcYpnNxdi7udvkjTgLhGyVQNKnfOpdHAfw/gq8lLUpgpgyDrYRXAAfPrsOT8wtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67/uSr3UD/HhvFTx4An5KBmhBTD2k/M6TGSL+IjPL4I=;
 b=Ob21Tul2PqZjYJo+mKRbvIH3JhktwZH8jxHIEDgwpSFfH9wd2ndMHjpOxrrVnMSlni1PU00kDh8vT1KWrKzH43wqPds17VTOED5wSmbVU82Kf1uqOQqjL7GQ1osLI0u/Snr2R+ICK3jo6NaaGsCFcIGkt7ZyXx1EyzOAFkneOavukOGdcV+Og7jkurHnEf9xcCZG5uAoVvGBKsu1ObRj04ngno9oeUcNOHpfEp2YFb8z2J/3GE144SKPwBysjQaaUrhpxXZWgAQt9r61rtdL5lid2Sgtar9YisQjTBbk5/ZJn5ellXD7agFHqAU1ve9AFbhd9ZZHiv7ye3VoSrobAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3519.namprd11.prod.outlook.com (2603:10b6:805:d0::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 8 Jun
 2022 22:52:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 22:52:48 +0000
Message-ID: <65fc54d7-b7f9-8782-a7dc-44b949e9f185@intel.com>
Date: Wed, 8 Jun 2022 15:52:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220608075358.2983111-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220608075358.2983111-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MWHPR15CA0061.namprd15.prod.outlook.com
 (2603:10b6:301:4c::23) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 088ce975-4499-428d-3be0-08da49a19bf6
X-MS-TrafficTypeDiagnostic: SN6PR11MB3519:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB3519FA704F932AF9A2D1B914C6A49@SN6PR11MB3519.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PrdHGMLMPjmEWzlHmzEWsXYjEOhfF7wFCLZVnFEdgRFX7Eci7/iG47SuXkpFTtaK5svDXXGzHguWG7egb/DQvXuTqtqZSNyV7QcFQzNRvt1dxIS8FVscRaJ+niCQ3eOPhDsyjVO2bGZt2N0npFB4GFW+u3jjDhfXQVnx01KnVbBja5yoaUdFxiZpQwslPSFUTI0JaC8bZOD99XGirDZ5CH+rrsv/MoyYrUUcqzHG0RAhiyCusBJ7noHB2wwMIvGYfH5weSrBU4586gMAWeAZ0Ri1cCYlpqdUG8A4QjG5jLuQC6BSg9K+AkGy5GgHjNgxgOXWVGaoIDrBCWQMO0voOoes0uELOHeGtMpmnGXKQat8fr1WICXqh8JZrJ1qYvgO+EIzHja5XnZp4bvnfdLVmos5CbWztRaXl4P72cq7KNAKtDA5lSUIkzDIGk/WFtRm1mZyqfcye6WjlE8bV+IQeBAljHhRGfR5ESOfwpDn95fmA2BxbSOO0yHCYvDI4uFeAG0BS1E0VkPwq9jCAXm81B5nkOp/xncV0lm4Gjzfwt5L4makel+oLdUSdNyC1e2bCWts8pgxbxZuamQtUDg8vfRfvPD+JP888k2SghKGFYHO4xFKrxfXcObD7rG4yf9NIrIjnR0LWp1BR1a67drypTZfiaFQ5xTuGFqXETfeBFpCov7LtsUUZa8Ip2hN5hU6srGOq8QR+SLulUE1nP3IXSSA0Ffodq+5lrDRVbJ+rnJQVPHLG2aZt0n51ackJ2a1KFw9a8fwLtcpetLPmUn+r2NsLIM1vY9vsQX46hPKgbh8KfTRWksMipZfqcyJDNs0y1COIW4iNDl+V03Q3aeRIt/vDSFLHcD64IhsM/BzyTMDnnUecbnKnJ54BmH498pQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(508600001)(6486002)(966005)(316002)(45080400002)(2906002)(86362001)(31696002)(6666004)(26005)(6506007)(53546011)(82960400001)(186003)(38100700002)(107886003)(2616005)(8936002)(36756003)(5660300002)(31686004)(66476007)(4326008)(8676002)(66946007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVlUMnlvY2dPaUFZNGhPcUJ2VFVzblFOTU9WNVdMUm1kcUJ3Skt4OHUvTUF2?=
 =?utf-8?B?SFZWbGd0RFd6YndFZDRBVjhIcGNDMHpJQmZEK3hhbmRRc0p2aDB4OENjTGkw?=
 =?utf-8?B?WkhlWXhYZ0ZIV1F5MFBrR1RRdWJWaFhFWjNuaVUzcEJOZXlWaEtzZnV5dDRZ?=
 =?utf-8?B?ZS9ySXJSQjJvSmlmSU5aaHBuQy9WSk8xTGVkK3MwUDFTQ3NLVHZBQlk2TVAv?=
 =?utf-8?B?aWRNanAyNmN5aElVZmFXTlFtRzIwZVdsaytCcU1QdmhLWlVkNWh3c2V4S2NP?=
 =?utf-8?B?N1BkbmhJeGtLRGVWQlM4RUVqOHI2Q1B0R3ZTaTZ2UmlEckpPWi8wU05BdFV6?=
 =?utf-8?B?LzFJcngwekl5ZTRBNUZJbVpMRWgwTFQ3VVRUbU9HbXNNbTZ3eDNKTHJxa2ti?=
 =?utf-8?B?UCtqN0MwcG5qbVhMTlVhTWFPL3o5cVp6NFMwaVQvTzBCOC9OVHYrL2tjSHhI?=
 =?utf-8?B?M01MMGZqOWZyRTZ2REhSL296cTFFZldtUmlJSXgyZGNUQlpLUzNVK1RMUk84?=
 =?utf-8?B?VE9ZaFoySW9CMVlnK2F4bytsKzQvMFVMMy9JRlMvMDlmcTVldTc1akoyY2hJ?=
 =?utf-8?B?aEhhdHFaM1JzYklNU1djT3FxOVErdmhSemU5blpkRjVwRndSZ09HUkl2Ulh4?=
 =?utf-8?B?NHp2VzNpYVRTWmRxYWlwb3V4S3hoZlVsN0V6bUVQVmdUY1V1VGFzVyswWmpK?=
 =?utf-8?B?ZE5lWlNYS08wSFk5NVFVWllsUTdxdk9xdXRrR3hqMFJGTHFSNDB4ODVONzRL?=
 =?utf-8?B?OWdoc0hPcUVIYzRjTS9tbjduUURPUmhUM1B1NUM0b0NrdEF4eW9rczlWa1hR?=
 =?utf-8?B?WmdnRDhYakw1aVh4WnFLS3JNUVprRElRUXZrbjRvV3BQUVh5c2ZvRFArNWM0?=
 =?utf-8?B?RVdaNDN2WS9tWHJjNVRtRnIxK28xUmdTRDc1Y1hyYWx6ZGVOdmE0YWxhbmtk?=
 =?utf-8?B?cVU4MGVuOHc1NDBxeTNwaTV5TnJUT28rTk5ZYmNxUzZRNm5NWmkvSk00SEJE?=
 =?utf-8?B?RnM0RklSVEtpN2FES081MjBUbWptODUzM2dSd0JHTXdsNmJITnhnMTMvMkl5?=
 =?utf-8?B?UmJjUVJ1YTBLVnRMYVBINytHa1YwRCtnSUNONWgxZnFQaFROdmJGUHZqaUE0?=
 =?utf-8?B?ZjEzMFlaV3NySkFESjFHYmN2ODB6ZVBpK3ZFOWV0MzI2UzFxbzBBWVpLaGF3?=
 =?utf-8?B?MmE4NkJMSUxoYzUwNkhpajRKZnQxRFdEOVVjNXhja0JoWC82UUNtZHU1eFpQ?=
 =?utf-8?B?OSt2Q0RXMnF6bXdnY2NIU0hYanlkcG9MNmE0QnF1WmNwcWY1NEZZeXNuZkEr?=
 =?utf-8?B?dENRNmlCTzhOUFBWNlY5Tk5kQ0lxMnh6dHVDRzRqdFJTTHZYTlZ1NmVGSEFF?=
 =?utf-8?B?TzZzTGQ5R1VwNTd4MDRRVDB3VUYzWXZSVzdFR3orZm0yZCtuVisvZ29hcitI?=
 =?utf-8?B?N3VQZHRRaVNVcE1LV2lyRitmUjFzeWVuV1pQd1ZwbUpyYlhYdlVlZDZORTlT?=
 =?utf-8?B?S3dnSnhZSXFaNVV4c05QZm14ekllRklYR0xoNE0wL1hvZE9SZlBZaG95UkEz?=
 =?utf-8?B?T1ExaUcyVm5aZkRUMlUwdkE5VTJBVi9HeENjZ0N2VU9kV0FMMk1UL21hbkJx?=
 =?utf-8?B?UWZaZGtSdUVyQUtxU21ML3JvbVlVSTcrVEY3UVV5MndsS2cwSjJxams5a1Rt?=
 =?utf-8?B?am1qdlRnU1JMcUZQOWJ6QkFSb2NieWlDdUpIRlBpK1RhTEZ2T0hzTCtidHRl?=
 =?utf-8?B?T29TcmhMNnJTdktwYU9rUGk4NUR0WHB0eTJ3cmtwRllvNDBWb2NhWHdWTXIw?=
 =?utf-8?B?L0VQRkpmMExUdi9rVEgrc1k0QmRlWkszWnlWa3JqZXI1YUpGNDBnZ2ZNQ1F3?=
 =?utf-8?B?YmRKZHR1emNFQ2hoZ3V0TlFWdGhKMS9VNndjdUJOeU8vQ0M0cXE0ejNNVmxs?=
 =?utf-8?B?bnQ5dThGUW0wcjdVanB4REx1Y3RJTnZVQTZtNW1oUDF6Y2FQQ1hER0FZVlNx?=
 =?utf-8?B?dVhCamxWbmxLTlIzU0NsSllYb20xcXVIZkNHdW9uWkFacDFzWE5XWXo3TXBO?=
 =?utf-8?B?K3VpZElpMEFENElxd2tVeXVvU3VxQ0JnK3cyNkh2d2ZHRVNFZTV1REZmMFEz?=
 =?utf-8?B?WXdlUGE5RmJub3hLT0F6WGVMMXEyeGZsUmp1N0NuZXgrYnlqUDR5Q1F3cUEr?=
 =?utf-8?B?TXg5dFFDWlkrUDg0WmVJVmIyM3k1M0YzWnVkS1FQOUMwM290bUZRd2swcXgx?=
 =?utf-8?B?bk0zQnN4d2Q3S3pCVkdRdlpLOEt2cFJKV1ZxNXBBVE83aktVM2VTSlVrdUU3?=
 =?utf-8?B?WEY3VnJpYm9FUVNuamx6U0xEYXpiMWFRNzJTTXduMDNLcFo3OUIwUktIVFJQ?=
 =?utf-8?Q?7rCEEM+7i0m8wKEw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 088ce975-4499-428d-3be0-08da49a19bf6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 22:52:48.2451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CmCdta3PwPRq7v52BDLYbCn+0Oz2HggP/L4YZUuvV7mV+oQGGYMyvU0JC39E5J2yBmwXS4moK9Jgkh/aPyU3xpM3zvFuyVhIELeqgKU4hIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add helper to check
 if iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/8/2022 12:53 AM, Jedrzej Jagielski wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
> the adapter's crit_section bitmap. This is fine, but if the
> implementation were to ever change, i.e. a mutex was introduced all of
> the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
> would have to change. Fix this by introducing the
> iavf_is_remove_in_progress() helper function.

If you want this to match what you sent in the original series [1], 
please wait until the net patch [2] is applied before sending this. This 
will allow you to change the __iavf_setup_tc() call as well.

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

[1] 
https://lore.kernel.org/intel-wired-lan/DM6PR11MB27315C25DD0EA44B086A5501F0DC9@DM6PR11MB2731.namprd11.prod.outlook.com/T/#mae4f93d5c5fcc6c3ef13f9e1af1938558f1e975f
[2] 
https://lore.kernel.org/intel-wired-lan/20220608095337.2986633-1-jedrzej.jagielski@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
