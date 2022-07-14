Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C02BF5756C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 23:15:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E58784D1F;
	Thu, 14 Jul 2022 21:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E58784D1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657833334;
	bh=kGJ0USUn3n41a7eDJtjF2ETskRed/DsvbaY+m9VeigA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Hyc+6+ZmtHkVa7HKsGXIP50gMcvEPN6YqNgVCMtaHZrvelaQBmzgUTFZUuWOhK15
	 XLm16bYMCCH2TIEN5aB/t51ULDSi5V8knQ2UkTJ7iGU8c3QIhwV6NE+tJAzDfMo4za
	 fqIw0FWRTo5bgFtlYf4n6VNhowOesvkBkcmT29MsKJ9Jt5Kcw938LafZzBkafAp77J
	 zET7pj+AMNdy2+0fnt7nJX2hMX7iDLmpN+YMo5lahoF6Imhxa7OZVSedaNmDVn/Wh9
	 SEBVS3eFI7OxWS7DK0g4Ypb3w/qMyREM3+TSFdcZhN4nf9MX7PiAJJrgMFeQiMwEK6
	 MfFITRyLeklNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ty9k4gdx3eoH; Thu, 14 Jul 2022 21:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E94384D03;
	Thu, 14 Jul 2022 21:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E94384D03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9F0F1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0408400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0408400BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5eYHftZx2tB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 21:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEA8D40002
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEA8D40002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:15:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="283189703"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="283189703"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 14:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="923233391"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jul 2022 14:15:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 14:15:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 14:15:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 14:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nJZcDZma8STz0IVIK1xHr1nrBDVk9yWRBrFrIuWJMvuiKfNLNm7euZlpupIgDjtxCY7MbAC7SFtpZrmJfbmNbvUdo1vgsTfO9tgssIaFPXd8daAWuUyJ/qvkVONrlos9WrRcUjdF07QnzQnHCNXLL+ALifDuZcXS0ZnMD9Nsv9c9Q5K9FaLlWdafKrktRkJVFjiZ6xivOJ0TTiGTj0P0k/E2KJZBAHc6O5DA+/uobqcbrnDiuP/kF1/qZ24TQGqQtgJ44Qo1b64XHh5MpPB4f0oMoIaa+rx5p4UWLYWb8lJF8SS/PCIbfMRZgaMiE75JbWP7FWnV+jW6buvSeWFang==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0P52hFyy3dWaJIuNntz3QK0hAlqk8wOvGIIllMbmxAU=;
 b=ZEy/BalnJAJa2IZH82b1TeBkcjt2nOX+9q6keBhFl1KT1BMR6M7BCJISxjLm/rYN7Wcr5W17goRxAfoh3XQQnJ01SWK999Lkdiu5xDKu85wZFo3/9ebUrW7NOvrnXXIY0pCEpuIYD4nXMJKO0HdRMJKfhvq3XlHpuE6sGuH9ki0UNw/K4J60opFFQdqMqH90TItCHImmqTzqzG7i8ms3m6fAIQ+cE73+jr1fA/HnpQfO8g/vsEdnkWt3BZc3+MeKfzeU165NaPr121S/ybMGHJkpZiRO3++fBWJj2CHqSA2vfVbaxSOMMMAQkmzbWe3QVxOEjxQMk85uc7HBlOJceA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5557.namprd11.prod.outlook.com (2603:10b6:408:102::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Thu, 14 Jul
 2022 21:15:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 21:15:22 +0000
Message-ID: <830159e1-eb9b-b890-049a-92be37d2c178@intel.com>
Date: Thu, 14 Jul 2022 14:15:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220712151422.50489-1-benjamin.mikailenko@intel.com>
 <da53acfb-b259-757f-4e4f-ff0744bfc2fc@intel.com>
 <73c9f79e-193c-b2e6-2223-5f7677673597@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <73c9f79e-193c-b2e6-2223-5f7677673597@intel.com>
X-ClientProxiedBy: SJ0PR05CA0170.namprd05.prod.outlook.com
 (2603:10b6:a03:339::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0354e97-edcf-4450-5245-08da65ddf684
X-MS-TrafficTypeDiagnostic: BN9PR11MB5557:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Jg2KM8YXkrNWRJsNODtUyRXhT6EPuLtHRWJfjyMgsPXjalebiyMTwONPZTgjEQ7enZWxc9qGmEABCuYNALmyWnMA2ndyYElCw7uDFuFqFky9d4AucdIfZ2v1S8n27RF7wceAR1X8vZqdH3E0P+XTP5R1Q6ZMAIiKu19VtY0lLICaFfszYBmcr4gTZFKR3YwxXrhiYD/pcYIlZI0H7ffw+1ttMGCPbc7T3ffbhG3sXnUymWul9r8Tt53/Cw+NpCaGe1u5eUPLFwyxuhFpHBDn6rAvr5TkPRWoteyyyA5GcsBncdR1l8GzEhMdh3VIIxcJKooSPgIgFdfihQwhVl2ve6UzUlo8hgpKTEYHPZs6jw8fIlxbPzE2YgMwJynV5JomgP0V8nlSP2TTk2agEyAYwM+K1HJQoRLzd3foWKx+HDtICDlOmt5Mn01ZdQKin/neZmBvMKq0V0RPKPhBiXXmzZXwhj7rDY3W7T2Z7DCAKE/xQdasBXF0qcgOnetHbehQGyirN9ECsx9viIgi/Mrxif3z449f+eYyPJJLVKcXMzrdOk7LU6b4cT9gXCZFU+BlyqbRrZK9TUQNTY0XI6b4PksMV+TPRQCz/odIWvwr0EqRGvNwwIalpy2EEpw//XHSI+DMftJE83DnJsDgTLxaHobOK2eSSodD74hy7qT/sm7ARPEchT3y2UkH0DCfZVxR2LB0o4vQ6GqlyeLwbrIipIordebm40+ptQ11nM9HVbrbXM3OS5QS94QdIeRD+gPTnV5Gfv7mCHgclTg79X/akcEvWPmxuPf6QKmvRPKbQDOvq/6SxbYwyn1ij35XeQ/dMWZe8Xbj4Tx15CJ4Ljr3ZigipSneE2M9nAN9OKtkjP1b7kmpX1SoqYiYlp7NMcj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(39860400002)(366004)(136003)(346002)(66476007)(2906002)(8936002)(8676002)(966005)(4744005)(31686004)(6666004)(38100700002)(66556008)(5660300002)(26005)(66946007)(31696002)(6512007)(186003)(478600001)(82960400001)(86362001)(36756003)(53546011)(316002)(6506007)(41300700001)(6486002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjcwKzkzZHkwdm5CWmZXNUdtSDJzS2themw0cm8wcWZHQnpVZXNuM210R1hI?=
 =?utf-8?B?TGIvSkxlYkpuZWV1czBFRiswbXJoSkFtQWdnOVFKaWNYM2pSb1I1emVjcWRX?=
 =?utf-8?B?anhNREEvdGdWZVIzNFdTOTQwMXlBcE8rVFRIK05XZ2VvV0htaFRManRjUTZ0?=
 =?utf-8?B?R2tPRnNmeVpvaVVGTFF5b3A5bUdBdUFzd2VhbmlvOXIwS3VZNkpWQVcxSDVt?=
 =?utf-8?B?RFI2OGtJc2c1dXpOL0dMUFZoTVdYME0vcENqMi8waUVFTEhCM3VYNXE0THRn?=
 =?utf-8?B?WGFEWTkwNUpjKzZXQTVPV3RPblNsd2xuR1lTclpVeis5SU0zQ3N1amdMVXNU?=
 =?utf-8?B?enlFYTNGazhkSzNaWXI4a3VTNW41bVg0Q1NRc2pEMVBOcmZWOTFsNmNnTlp3?=
 =?utf-8?B?L01zak1XcnJZajA3TGNzU0M1eFVYd2xjM2F6ZEVqRnozRmFGb29uQ1JrSzU4?=
 =?utf-8?B?b2h0ekdKKytMTmhpVHYyZEJMNk1IdGxubDRMOFNnNi93ZlcrNUtucW1ZWnBG?=
 =?utf-8?B?TDZrTklzVkNxc1JtMXF3TlRDcG51LzNVZmoyT1I3OTZocVlnMXliaUQ4SU9B?=
 =?utf-8?B?NUJmSFBZQk5UZzdtYjN1ZFdKcnhNS0M1SzFRd3NBaU51UHBtNUpUTTdTcThB?=
 =?utf-8?B?TzRpR2JBZmw4QzNveWxCSnJFdFVKR3Y5TklYTis0bkp0TU9Wd0tmdG5uODl3?=
 =?utf-8?B?UEZhUlVlVXVpcmx6VFhtdUZVTDVMeHpvcVhlYzkvSG5OMVUzbHU3TERWQTUy?=
 =?utf-8?B?ek15L2xaakJZUko0aTJGWFpzVDJsanVlV3hyUG5VMUlLOG9kdG9TUGZHQytI?=
 =?utf-8?B?ZHkxZjlUM0FaUDVVL1VNWEEwK0Y2Q1JwK0xsR3dLYUR2QTBzN28rYmc2UEM1?=
 =?utf-8?B?SkNwZlFCODJXalFyRGUzbCtlVk1DZnhTODJzZkhFNCs2bndIeEE5OWpjZC83?=
 =?utf-8?B?WXRtLyt5WG5YdlFqcHFwTG9Ld2w3Mng2ZVBKcDB1L2k5dE1KcEdXemFGdG8y?=
 =?utf-8?B?aTZ4dkhFYXRkNjNkRW51QUdoTTRPT2dSb20wSU1jYVRzQVR6dU1KU2MxUjhq?=
 =?utf-8?B?a2JaTDEwME9xcDlLdnlWY3BDSVhqRFl4Wis4MDdSeTFBZjc0ZW1zWHFoMmtw?=
 =?utf-8?B?WThoSzd5aDlhemJWVzdUTzBHQ3MxQ3RWaERsMXdlK3FLU2ttTGFQbTBFMDJD?=
 =?utf-8?B?YVQwUjJPWlhVQk4xTlpCUk5RTmhkMkxEQ3kycXNObnEvWThwbEFCUFF2enBZ?=
 =?utf-8?B?OHRuVi9ocmtLbTBUdkt5aGpQTzMvMUNNU1ZiV1lpVzFPNzMzK3VXcHZOQndk?=
 =?utf-8?B?d1BYS090Tlc5YlJxa1g3VHpPc3M0cTR0cTJkSTRkSnhHWnRhUzNnRHNiaTBR?=
 =?utf-8?B?WjhOcnZsOGdRWkZRa0lSUjkzWThiZEFJdWhOczd3VWE5OXMzRE1CSnBselBG?=
 =?utf-8?B?aFh5TGZwTXBma0M1eW0vTzI0WXIraEVCNC9VZ0dGWUpiQVdFc0luRUZBeTRP?=
 =?utf-8?B?N3RTOHNhL0RROHdody9GZEU1dlVmczI2OVpacHFaUmNVc2VoanZUczlFSVFZ?=
 =?utf-8?B?RFk5eWFGZ0xnbGkyT3NBSy96bHlzOEJ6N0N2blc4ZzQvMUtiKzVwbXQwMXdM?=
 =?utf-8?B?U2dSOHNqOEh0TUwxSkdJaC9SRzkwODhXVGhTWnVDciswNkJWVUVTc09CR3ZQ?=
 =?utf-8?B?T1ZBR3k2SzF6M21kVFduYnk3OFVUWitzSzdJZmpTN0M1VkN0RUhOWFMrYm1X?=
 =?utf-8?B?K2dKalhTT09NUTF4bGhFRmpvVzFSdXhaSlA3OE5ZOW5SSG1DUTJMRTRMQVJZ?=
 =?utf-8?B?OEE3em5DcGFubXdZd0dSVzlsTHFqNThFaDhJME5JeUhvZHhYdFR2dFJZUTVJ?=
 =?utf-8?B?dnFWMWVqM3I2aE5XRm5pWk9ZcmlzZVhiM29ERnlqeFRrN3pxYVBYaHAxTG14?=
 =?utf-8?B?cUhaSmNIdm1adHRhUmt0NDd5RFR4TEphVW5leTFDS1lrcnNJV1VrYzEvUGNz?=
 =?utf-8?B?RkUyVkRLalRscUZyaXRDdXBNOUlGem11RUpCQk1ocXB3RzQ1WiswaFZGOTFz?=
 =?utf-8?B?d21KNkVCWG53dDFleVhzdXlVcm1FVS81MFJDR28vMTRackdtRVd5a2trNkhy?=
 =?utf-8?B?cTNzWnRVSWpieFFMNEVrakVlM01uWVQyOFNWdlp6ZVRDUnlPZm9ERmFPTEVJ?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0354e97-edcf-4450-5245-08da65ddf684
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 21:15:22.6109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qBbYTJl/LCBtYHh7vQEhZgQnfzKzbQJQsVUa/S5ql7y9KJJ5gU7wMJyNOySIgB5717Pw3f0mA9HSEj2IQwgdONQOyhnBnR1DuBfURHRo64k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657833326; x=1689369326;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vEkF/T6tyIVJc2+fvR04scXV0JAeY1TPDGnOluDY4EA=;
 b=YEklZdfa0sRi5qWO+Iu9qGgya43l4IyNc0jZvhrBjiJVcTq2qNdeZXu3
 BImCBx+eypVSD3swNGuw6l568EdeWtlCOHEFT1mjizj64IUy7UTcMVRfJ
 ArRBVwiQ2njzOmgK0ywwe1AI8LJdFJRG2z17v99UvCVqFeMQoRjojFK9S
 +oZumTXhzM8Io9lvSXfFtXGaqTLlygaHcUst/BDDsIavboP5tDTHG7GvD
 BNv0XzI1ZOoATv9WWVu/Esjep5NrGrJQDTwk3wB15r+WJ9LZIec5vgZez
 qPGyrIsfZAFwP93xQFeWmr4GumOCPYS8OXRw3btKv/EKVgA+LUnriGcKq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YEklZdfa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Fix VSI configuration for
 non-PF network devices
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2022 2:11 PM, Benjamin Mikailenko wrote:
> 
> 
> On 7/14/2022 1:50 PM, Tony Nguyen wrote:
>>
>>
>> On 7/12/2022 8:14 AM, Benjamin Mikailenko wrote:
>>> This fixes an issue for a failing loopback test
>>> "ethtool -t offline ethx". Do not set Rx mode
>>> and VSI VLAN for non-PF network devices.
>>
>> This sounds very much like this patch/issue [1]. Can you test that and see if it fixes this issue.
> 
> Yes, issue is fixed. Tested on current next-queue dev-queue.

Thanks for the quick check. I'll keep the existing patch and not use 
this one then.

>>
>>> Fixes: c7f2c42b80ed ("ice: Fix a few null pointer dereference issues")
>>> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
>>
>> [1] https://lore.kernel.org/intel-wired-lan/20220707102044.48775-3-maciej.fijalkowski@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
