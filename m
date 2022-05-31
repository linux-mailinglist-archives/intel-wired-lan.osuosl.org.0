Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0FA539816
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 22:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 746F86101D;
	Tue, 31 May 2022 20:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wVdMYywm9RMC; Tue, 31 May 2022 20:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AC5260EF5;
	Tue, 31 May 2022 20:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15D791BF844
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 20:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E19C833A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 20:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQsB5ZpSi9ia for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 20:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67B8183312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 20:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654029643; x=1685565643;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xbW5FplAQ3WM6EF9WgwFJMdupyP657KtDwvEWydRN8w=;
 b=Mj9AXpJa72HuufixAgSNsnouo7E1PoU2kxzX65nFC76kzvJpgOJGoGhr
 w5xK0HlPfusGs06c2Fwy4JV0QZFFCZlTvWLr5FNR3WCQy+XKwWNNE3J5p
 RsGwJeBrhjjosUNjvyCLwhqgH1TEzRFijdcfFPd45hcvNhYYeuHCxnJYf
 fgt61EGb/mgT9/Ovxy+1Ny0uTDV6SlCoRRmKV5uCyIIHO8+sT7JDjZNlK
 Zmr2huIqSQxobxYV4c0gJVG8R2hQyCvgNyNWIPz1Fn40RurnaH+oGV2B1
 RFQJoikiBKMd9oU9c0OGlZYkuts2yLUPyIE6IVCGeD/ud5yJG5jEZ0bJE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275461463"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275461463"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 13:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="904141759"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 31 May 2022 13:40:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 13:40:42 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 13:40:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 13:40:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 13:40:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CFkFHaDZ5DyVQgSczAr6DDoL59WtHR5owW+qrTMQJ3XLJ6I9kyq7aiUaqwYlsW59OHBLf6TnyV3QhJCRL9e8JVnHkUfuB5jbYzxdwzj6yvyhAApU25NUBM1YhE13Dx6/aw4QJSKawauHTpVIOXbfAllz3ft6fWeY2uLZ0j0wr9fEQCTAqjDnUTk163DlzpQB50A8TMlRDrswXbIFRArLmRIzTYQYUCWSeEhIR6nz5obWLWtQMdkb1dVd3/EDuh7b7/+PYpVIvuO9Yt5nhPFEvJhUtL55zwCRppVUuptdxONmPW9eos8iEVjRXw0XZ3lzXGhfcvy/MYAaBQjdRMzarw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwhcWgIETLw+3C9QS2WyIRCGNTr+1mrpFhTjbSdxuMY=;
 b=heHy2f8aV/1uECJwgzIKRJp9weH+lmizK1FTz2ps88EHkpZCQ6UvDL1EExIOTiG8o0clzgU/g3W1hNKf/8LzENE7denLxATfco+NPtGi2Y5iFMlTbF600cCZhbouwbVvrVrbgzXVSOhhAGqguApOyycNC4HzqgS8jr518/6eWXzpH9fCF8h/Ji1EnLe0pFjx/kV53up5HRYygJD1xwyqGov6aPPtThnK5XEgjv4Rp1gxRRhqJX1PsLzsLiIvKXhOgADcj1p/o0c59X/z4UYIf4R0wk/jrQRp6yBu9yGV0aaoh4PH0FoBAjAdd8ynNMubTX0zPRXbtjIlD0S10WZ3og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Tue, 31 May
 2022 20:40:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 20:40:40 +0000
Message-ID: <2cceb264-8998-2f81-354b-b1331f71102d@intel.com>
Date: Tue, 31 May 2022 13:40:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220531131835.3614-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220531131835.3614-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: MW4PR04CA0233.namprd04.prod.outlook.com
 (2603:10b6:303:87::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c53ab2cd-0ad3-43c8-c501-08da4345d330
X-MS-TrafficTypeDiagnostic: DM6PR11MB4738:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB47386F93502E7A5024801C61C6DC9@DM6PR11MB4738.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Pitxy4/tLPKoAySY/tnbK5rOaSQJaNs5thF2K88hM5ypuaO4kLBNqVfYluShn6nztsD+PKKgMY+RpN0hIHyj5eT1UARt9yHVRNQNyXQibbbDDjgGiVy4OpOjAxOaa8qRxbf42UCwWI1KY9wt2VDMKgxwrJ1EkKZTy7T+iXb2wutp65YGjS5OABv483lz69BwmuB+1yH4A8PUqOWzyGXU3xsj85QWAzpeTri7psYm0GRbX3/u0biJHi8Yvx5P6vrVQJJuPSOfgBIn9GEIa8VipT2Y+drBAnImW5sR/emUTTrm+bh2LjHDIt7efaKmgSLMezMB0vg7zdT2T1IFfHdnLudA5BCi1iUkVc+mJEs2LTPWiN9GYspvIHWjUNvMx0c+MNnbkONvHSJuD9jv+xhxQIR4qT5j9TUUgOu4I1c5WsaYlnZMnUZf4wUa/+0qvxi8NPDYEzVZal+dWS9yBkGaOc/WUcYCkas8hXPlniYybF92GmxCbS9NzQV7VpaDNYP2Los8sPMI4dXOx1JhR0voA8lhB0aFy6+w99Kz2e4h0DH2mPmSE4opOn8VbF+TBo8cB2BlcWnS41m9Z4uE033DCm28A3lSW7fa9Xsk44qhtd0J8qcnOgP/wn73SVctMYPhZA+sHbZVghv44haAOHDV8sUKfwHHz5S8+KDt/sx+rgn1Vbr3NwlfnXS5YwoRhp4KNLEcWRsXJVNPy/d8ZGezePdDU4Wm2SH0CrL8yF10g/vzJLItdmAjNATurDfnFTV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(186003)(38100700002)(2616005)(86362001)(8936002)(54906003)(107886003)(4326008)(8676002)(316002)(66946007)(66556008)(66476007)(508600001)(2906002)(31686004)(6512007)(53546011)(36756003)(6506007)(26005)(6486002)(31696002)(82960400001)(6666004)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0FDUkVkN25tZlB0b1doVkIwVHd5WmNBd3BLdldnVlFTaDF1RjBDUUNoNDVQ?=
 =?utf-8?B?dXZJRnREOHhzd2tocFZ3dzhaeDQ1SENSWDBOSm90OGhSOE50UmFaNExybS9h?=
 =?utf-8?B?N2hUWHc0WEl2NzNDV3ZkcmNHZ3hXZWdYcnRFeFNoaWdFOGlSazdkdDRuRzVr?=
 =?utf-8?B?NHFMaW1uUGM1b0ZNWVJxYzdDZy8wVDV2Uytna092emtZdGdlZG42RURLbVZ6?=
 =?utf-8?B?WUE4ZDNOVitGY0p4QVpqT2ZuaTBoWWxYM3RYZVNHNWZERStxRjZyNUo2QUF1?=
 =?utf-8?B?a0c3T1hDVHRCWG9uT1dmYnNoN091MWs5aUhJWUJFUDl5TVEzSkx1MHpramF6?=
 =?utf-8?B?anNRcHYxdE5iQkdSTzE1b3MydnlicXpudFFSOFovTGFxMmVlQWZ5QjBSUTd5?=
 =?utf-8?B?aU85L1lIdExJU2xaWVoyVDJkTnA5QkRiL3I0NytxYjJBRFNUSndjSWhkUjNq?=
 =?utf-8?B?ZEVFVExPcDZEWTlhKzFsV2ZFQkxwZVdmUFhIN2g0enlpVTloWVJIbytRTTE0?=
 =?utf-8?B?SE5kUHhkQ2hhZ2laM0xRWU00MFhTSUNNcTNGTE9HcTlIbFJYaDBBdnVZOXZp?=
 =?utf-8?B?OWR1aTlvdU5UQnlEMUdac0h2bWlpSHhwNVQzZzRTMVhETEVCbGF0TEZTaW84?=
 =?utf-8?B?bWFzOUNBMFpiTG96Z3lsdXRadHQvODNNYmQxZndGbVh6QUFBQzMyTXpVUHJO?=
 =?utf-8?B?ZERHN2VmU01qeGdKWlBoWjkxSUdxQjZra0xvcnpkVG9McStCY0l2TEpkU0NT?=
 =?utf-8?B?MVpQQjJ1aHJXOFowaklLUVEwTDNGRWRJSTY1UzVTQUVkMGZ3T3crbkFVczNw?=
 =?utf-8?B?Smh1SkMvdjhYcWdKZkQzTkJpM0p4S3YyTk5qdnRLS2IrTWpzSzlmSlpUY1hV?=
 =?utf-8?B?bk53R2NibTlYNVJ1K0QvMDREYVRtOXVndTRYTEsvRERYZm8yQjVFZ243RTRM?=
 =?utf-8?B?Q1NUSk5LZFlvVVZvWlh0UnFPT3pZU2p4OUFnMUlwQ3ZOVGhKZ3NrZW1zTGlk?=
 =?utf-8?B?blV2L0hidisrMUdndFoxdmMvL2RhSmVvNXNPMFBzWmRScmhNYkZqMFhYSjJ4?=
 =?utf-8?B?KzBpUnFncDJTcjhaMCtrdmxFanJZcEZ0VTFrOE1VcE1GcE9aam9sWlNQcXJW?=
 =?utf-8?B?emNoNHpHTTRGcjRsVGIyaVd6N1lEWWFIWGZ0ZlE3UHFRWEJKK3VjVDFrS1ZE?=
 =?utf-8?B?bkRNRytxczE0UmpzMHZLRXIwYS9XaWRETnR6VFRMMDRuWGRLVmszbVhxcElK?=
 =?utf-8?B?UVdFaHNvU2E4czFCVVhRaDg5a3JtTDdjczd0bmdxdGdwSDJXSFptOG8vVU1x?=
 =?utf-8?B?RDJkRGI5SjZhZTZLUHZXdytSSERzV3AxN2pkRllvNFpLNFltZTV3eVlwcGNl?=
 =?utf-8?B?emhEb1p6TCt3VUFNWUZEb1ZBTmMzMWthVytWZ0ZpL0NHVGdNbmVKcXIvZ1B6?=
 =?utf-8?B?cjJSWFB1cnhkc2RqcGhDRXNVdnM0SEo1eXlVNWp2N29ETnJMQmo4UFlseFQz?=
 =?utf-8?B?RnRWZGRmTVIxVGFvbG1SVU1NY09NVFJWaGpGY0tpMDhVOE95YzJDemFsMXh2?=
 =?utf-8?B?aUtzVEhnWFh2ZUVTYUNXQWRTOUtUWXFUbzV2UVBjTEs0NE83UEV3eGd4OWxX?=
 =?utf-8?B?ai9wVFYzRFhXdnA2Z2RiSnA2RUdQZWVUSEtLZmNNYjNxalR1UHYxc2NNUmpF?=
 =?utf-8?B?UTVRMk1La0VmaGowMzArUUJvanpXMjBVSnRqTzZMblBoSXMrN291c1h1WENK?=
 =?utf-8?B?SHU1bE16RU9iUVlXRm84am5mR1I0N056dXBBQnRFMjZVeXdXRU94N011UTg0?=
 =?utf-8?B?VTc4Z3pDWWEwRVgwblBod2d0N2JPVGpHeUcrcFg3dzlraDVEU1c2K0lyZUdY?=
 =?utf-8?B?SG0xUFROa1VPM2FiTHZvQ3N6QjVsSmc2cWJDNTBrMjd0dkR6N3ZtOXBQL2xM?=
 =?utf-8?B?S25LRk9sZUZVUysxeGwxVUlISWUyeko5K09nZXhQZFlTdHdSdXJEcGxkS0hC?=
 =?utf-8?B?KzZaM1FyWDZwYjlyQU9SSzVISy9aSXFrR3hpU0lMbzJjU1B2N052Q0g0TGhQ?=
 =?utf-8?B?Mnk5UWNZb0gxSXhOQktYU0MwOFVRa3pLQ1VzK2NtL3VGKzN1bXZ6V3dYVndq?=
 =?utf-8?B?VnkwMC83aGFPVGllb2NlVkNhVGpWWFNra2FCMVN1d2NsUHVSTGNXdXVjV0FC?=
 =?utf-8?B?Znh1M1hGeENudjBjL21GczQ5UW1yMzNZSW00eCtQLzdzZzBBWVl4V3pxTDU3?=
 =?utf-8?B?blpvNlUwd25FV0U4QTVUcUU3SXh3ZWJkRmxzbmUrWldKeHlSNkFyZk55YVY3?=
 =?utf-8?B?S0dRNFh0Z2RMU2VqS0RHUlJPK1Z5cjhvVjA3THZyQVMyMmd5eEd5Sk1ONWRR?=
 =?utf-8?Q?7EiGh869AkUV08k8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c53ab2cd-0ad3-43c8-c501-08da4345d330
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 20:40:40.3995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rIxBQHzGOHBy9Bh3G39Owg4wIAhtb6H0TATd+0GKRXlL6KtUd/GwMjKUB3WWOea3ALB/CwUcfQWko8xkn3xHScFoKqIUbaRr0OclLxuut+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling
 for queue config fail
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/31/2022 6:18 AM, Mateusz Palczewski wrote:
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Disable VF's RX/TX queues, when VIRTCHNL_OP_CONFIG_VSI_QUEUES fail.
> Not disabling them might lead to scenario, where PF driver leaves VF
> queues enabled, when VF's VSI failed queue config.
> In this scenario VF should not have RX/TX queues enabled. If PF failed
> to setup VF's queues, VF will reset due to TX timeouts in VF driver.
> 

Patches for net need a Fixes tag.

> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Suggested-by: Slawomir Laba <slawomirx.laba@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
>   1 file changed, 26 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 1d9b84c..4547bc1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1569,35 +1569,27 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
>    */
>   static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   {
> -	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;

This removal seems like a refactor and unrelated to the bug. Please send 
this change via net-next.

Thanks,
Tony

>   	struct virtchnl_vsi_queue_config_info *qci =
>   	    (struct virtchnl_vsi_queue_config_info *)msg;
>   	struct virtchnl_queue_pair_info *qpi;
>   	struct ice_pf *pf = vf->pf;
>   	struct ice_vsi *vsi;
> -	int i, q_idx;
> +	int i = -1, q_idx;
>   
> -	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
>   		goto error_param;
> -	}
>   
> -	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id)) {
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id))
>   		goto error_param;
> -	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
