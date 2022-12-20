Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A933B6524F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 17:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 933174174C;
	Tue, 20 Dec 2022 16:52:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 933174174C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671555128;
	bh=JVjhAmXBFKYO1LOnaLEJchWB1W2cHG27R1vz5e6kf6k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ck0XtgqnImjadZrZnzjr7uEa6iu7V2mSUpeLSn8OW8mpcsfjUCQQT9Ub+Tk4mCa0f
	 SYzNcIC+Jnbgm/jd65bItk1QlsHQTt21P+KXMJGNtlPby+TyGr8c369n36UDjskaGq
	 f9vWF4vUTiOnIRkiV/Kr5/yvlOP3DBhvCgbk8qm1wVSrKNLzYrFCOMaTTlSTFHgE5Y
	 E+SdEHh+4hyWY4cfVncn0zg82rxDAD+Liyeacc0FABtsDn2TD6iBvfGDqPZDZ1WjyP
	 TY/ePJRoDDFrG/H1/IkJ1KdIfAVkA5535uhXOrFtgH0V4OzWcEGHSgTfQgB9X62q6g
	 P9na+UPSh5BKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTB7soNFom1n; Tue, 20 Dec 2022 16:52:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1520B41724;
	Tue, 20 Dec 2022 16:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1520B41724
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BF731BF378
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EA4660F49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EA4660F49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAoixLxM5e3X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 16:52:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CC3860E2E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CC3860E2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:51:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="384003539"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="384003539"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:51:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="601164793"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="601164793"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 20 Dec 2022 08:51:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 08:51:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 08:51:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 08:51:57 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 20 Dec 2022 08:51:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dubruDf+qxhXpQqiasZwqx370pRCpqzuxFX64wG3lrBOOZZS3I5XpQziDve9zB2rIiWrxVomnHZlnHVOXkOtE6HRmMityRDgRH6OVK/5bqwxvf+Nks/5cHLMIl3yP3ApJDLX3v9l/dOgeLbCq/M/DrigRPTD7s7S1PmYA5frRifI+e1E0QO3ycC+mP1ZbR8ZYslLzFceayttr+adWZ8CvjbOnrQceBDsEjRtQBr2MXdO7MhidmWKDtSe87xxZYcKCVcfmkNvElsok5SY0peHkTQoM5o9ylsLvvEN3Pz/zEQs+4sa/rZyVv9/9FiBWNJLP+fvzu0CvSKDYBkq7G3hSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7bYjB5RG1Adu3Y4HPYGiPiGbr5I/wgo1Qzc8rvSFfgU=;
 b=RiwZfTAJ46kmsI5CRIBGrWIivaI3U6/FKwlzszd26rHWMlVyIIicNqckkliyABSYtG4mAk3/OsM6f6avAdrNYTjfd80QrrKenZjzA3+w42Uggug8TXTMTLXzn/AK/4gZ1rQTTkiLYK6+fn4LuNYbk9xSi3S9BP+p5xMBPpdwWmnmeQTKJNgLKZ2RO8M7f1KEBWGjpAuP7xtdq+Xf4tUZLGZ6UedmFz+rHh2fyr72H7DZo6ju/WXV8u8RqD8IbFKV36LtmGr7kGRx/NsAp6WSmnnv7EQSf5NjZDBGbdQOY/amRZakV4NmWVYSQdHx4wGNcQKspEBLBXdTSuE9wo8N6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6770.namprd11.prod.outlook.com (2603:10b6:510:1b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 16:51:55 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 16:51:55 +0000
Message-ID: <b193badb-9324-5004-1d3c-6c47b8a27c85@intel.com>
Date: Tue, 20 Dec 2022 08:51:51 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: BYAPR11CA0102.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::43) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB6770:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b7566bf-920b-4deb-6652-08dae2aa7fc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uMlRjJ5GYlk+rVht9OZO0DmTGb1pkx3fUYyvcUGqBfPyVy5VrQE8XK4Z/GjMsPJ51b746lgKtX9G7pMKkjyPWlOFLZje2k9vQM3REa7ydLTFr1zIodbu14y84uHrMzK7E3Z1U15/Z5+qpSHRpCozlngR02Ex4yBtB0/tPDA66amYJT2mpn+OMprXjzqJSLu6t56+kZRgkuPHQyJ0wU81AQqYhii3+xQvcu1VL6i3kxI7+6lWmU1Q0pKDinhoB/+qRjvMlLwkV3LzvvbqsOfumA57w40g1/lOlt5NvLEXgJK2dvP/G6yFYz4DUm+4y8X5oJOOv8lCydQseAmTNOrh7Xn8zjBWrFLrzanEb/oWeLvExc9O9EMzbXONFtXECvyg0o7wz4Y5LdB53dMIKRK+w7DAtHhOaKb9BJbP4hjcx0EyEQiqu/MfNuKCPdczCf/yd2xQ2bBRLN6D7ghXaPbYYbCMYQuzVeUnSqnCC5dz+uuEJcF705o/9nQqKX/aiLiymwcIszV+2Z0FXD32Qz4oWh98Ol8EVf86f3YRFWBSNIBtpfXojPTpgvqUWjTZui9UOYpIHZ7vf+Dmx/2L+qmTPPOBTRr1/CJgknZFyYY0bMVgQhcSfzrgQhjx2U0LTJrozkMxfV6Td4ko35/jtgr8aDdx+AbNVW/xjY7jO41mJiM/A9w//tkQLMHRfUORia754xNGZmUT2Ty8K11OrkUk/LVrRn+msy028vZg+sixmNGO6UMTbYMGZTuFyo1+yvQl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199015)(31686004)(8676002)(4326008)(5660300002)(66556008)(66946007)(2906002)(66476007)(966005)(478600001)(6486002)(45080400002)(6506007)(41300700001)(186003)(53546011)(6512007)(26005)(6666004)(86362001)(31696002)(2616005)(82960400001)(36756003)(83380400001)(316002)(38100700002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmZwUkxoWnJuNStXMW1MOEp0M2M5TUxDU2tReXRPdjhCWFNWUVBHN2duWExL?=
 =?utf-8?B?UlFMTHVmVEh3MGYrZm9oRXpGeHJ0a3FXT1dmVzdZd2FmMXAySTJNbnRaQ1lL?=
 =?utf-8?B?T1pEeDVnQnlnN1FZdEpvdkMyM1lBd0JpaHNlVzFYYWVONVpqOU9sR2ljOWxQ?=
 =?utf-8?B?ZThXL2ZEajhDZ3d1dUcwOGZGMFh3amd4dEVCeVIvRHJJSVZ6TDBhNG1ZdURX?=
 =?utf-8?B?OE56RUEzOUFudkJJUmFld21CYmNtQmRTb2RmSGtWZTZrTVRhcnVFRjVnZG1G?=
 =?utf-8?B?OC9wUCs3Qy9vM0hKQWV1NVhlSDlGQnBJYy9SQjBvR1diTEN0VEt3M2ppMlgz?=
 =?utf-8?B?RGpYdTEyVDhHOU9IdVR3SHBOdnFVMkswcGpOcE1JaDdlN1k4M2RSSHdkNXBP?=
 =?utf-8?B?S0Y1bG1ISHVzdnVjNkRvbkc2a3dqU1Z3b1oydHFsY1U5YnY3anNIRS84ZFVF?=
 =?utf-8?B?ZFV5UGFsUjZIbDhEVGt3aE1WYlpYY05SZXZoRk1YbSsva2plNUNYbG5pVmFP?=
 =?utf-8?B?L1lua3M0ZE5MOU5kT2toRDB0SXVRVUJpTTFxNkJLeGpzUHBoRk0vaVJtZG0v?=
 =?utf-8?B?alhCamlwcFVMeTQwVU44czJvdkZHSnJqc2d1Nmk4RnVhamM5eHNuYXNPb2pW?=
 =?utf-8?B?bFQ1ckhhcnpvN3grQ3J4OE12QXVhU3h2d2NTaGFQekVOemd4VEhrcXRldjBq?=
 =?utf-8?B?SkQ5OEh0L3UrSlBnK0M2RkZSMlFsOEwrL1FCS3ZNcFpNM3RoYnJkRDc4K2RJ?=
 =?utf-8?B?ajI2QXQ5Um0xRWtJdWNWSkVoVGtUMitvWUEyazVuT09OMThWUFY4S2NxR3g4?=
 =?utf-8?B?OGl0cE5QUDRZL1IrTXIzVWlyVy9rbWJLMEliL1RvUFJhUXR1c0pzb01Ub1FC?=
 =?utf-8?B?OGdlalVwbGRDMVJDem9hd1RGWWwxd0lUa3BKdlBxNGI5MkJsK2dRRTduMjFu?=
 =?utf-8?B?bWhsUTF1aTJxbEZ2WkhPSDhTTGFuMXJhOWVDM1hWZlk4Um9QUURCQkIzSDkw?=
 =?utf-8?B?ZkM3K1ZCTll2RlJlbEdmQ1V3TDUwcll3TGpvNE1ZUG9aM1VTVCtuNGlEQy9a?=
 =?utf-8?B?TnB2dWk0ejVXWDczZGNGSG9zQWJkZ2h6Y0dWdzZsWTRjb1hRdFhVajhwSGdG?=
 =?utf-8?B?UmNuc2hMQ3BXNUszNHJBd2FzNDkvZ3BwWmtQZW03VGlLQ3IyNERRazQ4ZW1S?=
 =?utf-8?B?TUFUbjNPRjI3M2U3dmVhZ0dUWmFyaDd4cWVGTjVHVDE0T1VqM1R4VktIZ0JD?=
 =?utf-8?B?RUdCRUZxUzA0aVY2NFZTZzNOUHQ3aTg3Y3Z2ams5bXV5bmFQQWxYbnlZMWxO?=
 =?utf-8?B?OXpVY1gyaEFHY2p2WStxd0ZPUDNUeGJCVk9HaUZRUHFmemNXMnFIT3ZSM05h?=
 =?utf-8?B?RVFkOStRb3ZjbkpMYlhYR3FkU0JkVnV1RUlMNUJScUtCVm9FeVBtWUpjclF0?=
 =?utf-8?B?Vy8zWDV5d09rQ3d3Q0I5Y2cyNVRwR3VuYWlFT3ZoSFh4Szk3RFB3d1cwajlN?=
 =?utf-8?B?TWVvOFpqWGh6eU5RaElJU0VndVNOWGkwRndIaFFzYnhkSjIxV2FZa0dzVWNV?=
 =?utf-8?B?aDRQbHJoRjBreGE1cDJ3YjFadllxdnp0aFVXS3ROQ0FSZXBPVzJCWkswaDF4?=
 =?utf-8?B?a2JkSlJub0NDZWRMMWRaOHZEUWNvTEVBK3dic3RwTlNreDViOFZKdEhsS21h?=
 =?utf-8?B?Tkk2WmJmYVl5eE1LeG9Qb0N1bnFhYnR4dDFGMkNPNUtFZVVqQzNtNVdSZFUw?=
 =?utf-8?B?TTdod3M2OGJodFJETlUzOGloSlRlMmFsWVF0TG5TazFBd09BOVVoSC9McWFY?=
 =?utf-8?B?cXZMb0tHc0piamY4SHU5dGNzeHJoQW9wQTZ5Uklyb1dZcDZUZXR6aGVvWGRi?=
 =?utf-8?B?TWQ2NHYzcXJoQVoxVEdIV2FHL3hKLzE3a1lkdUtuMU45SU8vM0NUUkhlRkx4?=
 =?utf-8?B?c3Q3RVJKbHNJWXJHSkVRaFlpaFp5UGp6YUhiMFVicEl1TWxnQkk2ODhNUSt5?=
 =?utf-8?B?U0JCbVFqRjZTam9LczEySTFNY1psV2RTRVZoOWszTVV5eEhxaDdzUnZGaGt0?=
 =?utf-8?B?Q201NHBGUk9LL2UyOXVjbGd4U0x5OS9PaHoyS1MwUSsrazdUNlNhSmppUEt3?=
 =?utf-8?B?dGl3d1R1YzBCNTBQbnhYc0NIcGNKcGRHZUZOZ2pHeWdkVXU5cm5GQ2hIUDJB?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7566bf-920b-4deb-6652-08dae2aa7fc1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2022 16:51:55.3919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7fLHOKrF4iw5V3HC7Cbav+kA30Efs+7p3/Ieet1nic/b/lnMPcAu+HrM02cJ1WjC9NeE6EatPaWEp/lLeA1JU9vN5Pmcsyy7KTCa7s65nUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671555121; x=1703091121;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sj38geW0d7taohgHiUm4Sr9zwhhTC8bBTJ/exCNJChY=;
 b=OoEqr2OXdhB7g1/DJ6lGsiaS8N9V16hUHhDMy3Pq8RQRPpHB5Lu1Lm3K
 atiOz1PNEn+cFnZVMJNpxE8VbrnURTwD3nr8SbWwtxN/tLQdAlB4m7RnM
 SrjKwj63fE8Wsv5TZbl2DjxxSAKJJSNrbyxQmtlUZ7O1s6Xp3KGd4IqK2
 5OpQr9sIXLQgf5vJTaDiubhIJeTf5JgODg9ZokvKTbS47Uu63dHlBR7HK
 QVEKlYIFlR1ciTT6YPM6obuf1stuMdZXnbRZl9BipG5PKfQ6/TebuyI9t
 Y0v5U5S3JwCdGTIInwVlEpVPVqq9JxJEjIXaFZXLIkjZ+e3Gs7a+oewOM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OoEqr2OX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] implement devlink
 reload in ice
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
Cc: mustafa.ismail@intel.com, przemyslaw.kitszel@intel.com,
 benjamin.mikailenko@intel.com, jesse.brandeburg@intel.com,
 leszek.kaliszczuk@intel.com, shiraz.saleem@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/16/2022 12:43 AM, Michal Swiatkowski wrote:
> Hi,
> 
> This is a part of changes done in patchset [0]. Resource management is
> kind of controversial part, so I split it into two patchsets.
> 
> It is the first one, covering refactor and implement reload API call.
> The refactor will unblock some of the patches needed by SIOV or
> subfunction.
> 
> Most of this patchset is about implementing driver reload mechanism.
> Part of code from probe and rebuild is used to not duplicate code.
> To allow this reuse probe and rebuild path are split into smaller
> functions.
> 
> Patch "ice: split ice_vsi_setup into smaller functions" changes
> boolean variable in function call to integer and adds define
> for it. Instead of having the function called with true/false now it
> can be called with readable defines ICE_VSI_FLAG_INIT or
> ICE_VSI_FLAG_NO_INIT. It was suggested by Jacob Keller and probably this
> mechanism will be implemented across ice driver in follow up patchset.
> 
> Previously the code was reviewed here [0].
> 
> [0] https://lore.kernel.org/netdev/Y3ckRWtAtZU1BdXm@unreal/T/#m3bb8feba0a62f9b4cd54cd94917b7e2143fc2ecd
> 
> v1 --> v2:
>   * fix crash caused by merger error with VSI statistic

I'm seeing a crash on unload of the driver

[  599.769412] ------------[ cut here ]------------
[  599.769413] kernel BUG at lib/list_debug.c:53!
[  599.769438] invalid opcode: 0000 [#1] PREEMPT SMP PTI
[  599.769454] CPU: 87 PID: 1803 Comm: rmmod Not tainted 6.1.0+ #13
[  599.769469] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS 
SE5C620.86B.00.01.0014.070920180847 07/09/2018
[  599.769486] RIP: 0010:__list_del_entry_valid.cold+0x5c/0x6f
[  599.769507] Code: e8 ad 7a fd ff 0f 0b 48 89 fe 48 89 ca 48 c7 c7 68 
8b 68 ad e8 99 7a fd ff 0f 0b 48 89 fe 48 c7 c7 30 8b 68 ad e8 88 7a fd 
ff <0f> 0b 48 89 fe 48 c7 c7 00 8b 68 ad e8 77 7a fd ff 0f 0b 41 0f b6
[  599.769539] RSP: 0018:ffffa9bb8cf83d90 EFLAGS: 00010286
[  599.769552] RAX: 000000000000004e RBX: ffff9cb73e835bc8 RCX: 
0000000000000000
[  599.769567] RDX: 0000000000000001 RSI: ffffffffad66efcd RDI: 
00000000ffffffff
[  599.769581] RBP: ffff9cb73e835b80 R08: 0000000000000000 R09: 
00000000ffff7fff
[  599.769595] R10: ffffa9bb8cf83c60 R11: ffff9ce5dfdfffe8 R12: 
ffff9cb73e835bc8
[  599.769609] R13: ffff9cb7340694f8 R14: ffff9cb734068f5c R15: 
0000000000000bf8
[  599.769623] FS:  00007ff3f03fd740(0000) GS:ffff9ce5dfcc0000(0000) 
knlGS:0000000000000000
[  599.769638] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  599.769651] CR2: 0000563a8b9ec378 CR3: 0000001858ba4003 CR4: 
00000000007706e0
[  599.769665] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
[  599.769679] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400
[  599.769693] PKRU: 55555554
[  599.769701] Call Trace:
[  599.769711]  <TASK>
[  599.769718]  devl_region_destroy+0x38/0x80
[  599.769737]  devlink_region_destroy+0x25/0x30
[  599.769751]  ice_devlink_destroy_regions+0x17/0x40 [ice]
[  599.769797]  ice_remove+0x22c/0x2b0 [ice]
[  599.769822]  pci_device_remove+0x33/0xa0
[  599.769837]  device_release_driver_internal+0x1aa/0x230
[  599.769856]  driver_detach+0x44/0x90
[  599.769867]  bus_remove_driver+0x55/0xe0
[  599.769877]  pci_unregister_driver+0x2a/0xb0
[  599.769889]  ice_module_exit+0xc/0x510 [ice]
[  599.769919]  __do_sys_delete_module.constprop.0+0x177/0x2e0
[  599.769935]  ? exit_to_user_mode_prepare+0x155/0x200
[  599.769948]  do_syscall_64+0x38/0x90
[  599.769962]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  599.769977] RIP: 0033:0x7ff3f011283b
[  599.769989] Code: 73 01 c3 48 8b 0d ed 75 0e 00 f7 d8 64 89 01 48 83 
c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 
05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d bd 75 0e 00 f7 d8 64 89 01 48
[  599.770019] RSP: 002b:00007ffe91fbce38 EFLAGS: 00000206 ORIG_RAX: 
00000000000000b0
[  599.770036] RAX: ffffffffffffffda RBX: 0000563a8b9e1750 RCX: 
00007ff3f011283b
[  599.770052] RDX: 000000000000000a RSI: 0000000000000800 RDI: 
0000563a8b9e17b8
[  599.770067] RBP: 0000000000000000 R08: 0000000000000000 R09: 
0000000000000000
[  599.770080] R10: 00007ff3f01a3ac0 R11: 0000000000000206 R12: 
00007ffe91fbd0b0
[  599.770095] R13: 00007ffe91fbd6d4 R14: 0000563a8b9e12a0 R15: 
0000563a8b9e1750
[  599.770528]  </TASK>
[  599.770824] Modules linked in: rpcrdma sunrpc rdma_ucm ib_srpt 
ib_isert iscsi_target_mod target_core_mod ib_iser libiscsi 
scsi_transport_iscsi rdma_cm iw_cm ib_cm rfkill intel_rapl_msr 
intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common 
isst_if_common skx_edac nfit libnvdimm ib_uverbs vfat 
x86_pkg_temp_thermal ib_core fat intel_powerclamp iTCO_wdt intel_pmc_bxt 
coretemp iTCO_vendor_support rapl ipmi_ssif intel_cstate ice(-) 
intel_uncore i40e i2c_i801 mei_me joydev pcspkr gnss i2c_smbus lpc_ich 
ioatdma mei acpi_ipmi intel_pch_thermal dca ipmi_si acpi_power_meter 
acpi_pad fuse zram ip_tables ast drm_kms_helper i2c_algo_bit 
drm_shmem_helper drm crct10dif_pclmul crc32_pclmul crc32c_intel 
ghash_clmulni_intel sha512_ssse3 wmi ipmi_devintf ipmi_msghandler [last 
unloaded: irdma]
[  599.772846] ---[ end trace 0000000000000000 ]---

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
