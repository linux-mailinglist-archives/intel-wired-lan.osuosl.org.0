Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC206729AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 21:50:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 289D740B9A;
	Wed, 18 Jan 2023 20:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 289D740B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674074999;
	bh=X4ljgbzFDtPoLOOWOKdqUVPfBZsSYgH/9mWJ2tpZiC0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4dFNh25E7BJLN+XBrSRUof8jeTecwEtbS6c33X4ouZVgHKhDfJQauGaxQ8tLz0LsQ
	 b2gUn5Y7FR89trt186FmQYDqUPrXn5iBLvfCWLrdFb2xV8z61inDvq0PYngTB6gy/k
	 j1XC+Mg/yZFimmqOnVIXUidEVPPCX2ryf7WcSkX7Pt9giw6NdpaMe4Bv1s/fklOxbx
	 mu0Hko/pH4FGtMjm6kQyuHHuiJ/dK2yk0pub0vJllmgBsj9S/I5zXM9nhBigVBNOm6
	 pNRQ/769K3CdWki1wky1KrKN0gVBpLoO1hYFHuclz1hMuJF+FPIt6rWji9sFjZFds8
	 4VUFS1F6/2gSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDAOvD7IrsvQ; Wed, 18 Jan 2023 20:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7FDD4023D;
	Wed, 18 Jan 2023 20:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7FDD4023D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 792471BF28B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53A8F4023D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53A8F4023D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKQRwXsyDXnv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 20:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA01E400D2
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA01E400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:49:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="352349106"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="352349106"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:49:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="905265905"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="905265905"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2023 12:49:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 12:49:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 12:49:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 12:49:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 12:49:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fz3w4Aof41RLozl+8w7TWvEFprloYFnimPS2TyxYMEDqqtkRDBgOYcMBq12kwf9RAFR193JtnUgK5s467wlQxE/4zzUpQ7jSDu9sMJerep0ko38p0ssxgI/gVNRTz15DaTUXXRqa53+gNsU+pUybusAB2FVqs+CezOoWHC06R4RRbNf8lESgs8rjL9TRn9hNR+nD6maQmPkU8RO3OGmo8xw8ETC6t25KCr9YGyYNdv1fgCnQrObMFe5uNiigqS1YLZWZCehVT04kn2UZLkHJqmfQwJKm/aP13mofOlqRN3wjxkobKNkXKsXQEFVYuptNxi870seLIxad35LH2dqODA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IukqcoGBXGuKGjmlNA2m3ZTLOGvsxEHC1jFFEJf60Ao=;
 b=CFc52Ab057MY3Z5RFw1mXId0cHEMEwReFyrf8Y3XwWUjiY75HfSttNW7x4cKGT/ndTORXaaMJ0R/lTAAD+J+5Kbttz/Lphdr/CH/uQQ+0ZuNA4J8C2s3/rYwyg1burCHTw/2dkl8soSZGmhlk2NApkIk9JSI/uuYUY4q8i9Iw+PzX/efu32tYhOuLoeqRB0TXnFWfT4U3ufjUepAMLTaRnZO9Ga6/qECuEb86wwrxxJQ9Pxk4SDhuwb/3I3XyeSe+KdkLmDgqj1YkiqvKS8LeRJ75WviXz29KACjnkgURdr0ArXadoMJH4vlCw6x1KD7G4wYBxDt6S2d3vktRc7nQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB5986.namprd11.prod.outlook.com (2603:10b6:208:371::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 20:49:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6002.024; Wed, 18 Jan 2023
 20:49:46 +0000
Message-ID: <4f3cf7b4-bb45-3d99-1376-62510ef214e1@intel.com>
Date: Wed, 18 Jan 2023 12:49:44 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-5-jacob.e.keller@intel.com>
 <Y8UtV5QqESWncLcP@localhost.localdomain>
 <9c960749-d369-4b25-c626-e4ed74163c64@intel.com>
 <Y8eCeAkhm4NC3YiU@localhost.localdomain>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y8eCeAkhm4NC3YiU@localhost.localdomain>
X-ClientProxiedBy: SJ0PR03CA0121.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB5986:EE_
X-MS-Office365-Filtering-Correlation-Id: 567a38b9-29e2-4e32-fe39-08daf995887b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3nLLRN2h8fu54f/E81utqgH6v4Dt+OwGFqxCDuuTIAGBbjbMhIqvAFYYJLmR/BdhoehCm5wholFyZDgmApzFRtaznrs2JkLvx6Shw0TIH7cAGjQzrELi2Eq4HzRroxNhzu4PA39NFcfQ9MvSmXfpBfOclkY4TlKaAbX7mN/aemdDAMy5/AurnHsxosmNf7wz6IAvaxWxTMAK8BYUe4neOEFySssfR0tSXebiJZKcPhPPMdAoYSs/fbg2d6H0+yEHw99m0twys3keloZOjlpPIUz3FLC/O233uLE/6SLSmwP5RlIutx9eznIkw2vBhQEoRhWjLUNl4Rqia48aJG5jecG5n883MaD0X/cS6EjB6QfKrM/dyecE28Ofm9inWTAsNf0MjANq1WDp4BQL0xSYrfWXYaCVijdqAfwGBkfT9X5MafjXIfbsfeVPmpKKJR+MFMQTvwaTxRWiFzkf7+nflaszmAlsSai+M99DnCEboZeTehKhBBDPjtP175RwIbo2tNyga/RYg4qf6kwS9eG7qw/BHeQ6HrYatwJQ45cycyFeCjN2o5zHzaTVnRzjOXRL+bhFRHWIp1wio2cpqWRWyoUwSeVI9IxKQZJONYW6tZLglyqEy37/ezpQ7HvlKd8ipsyunxOpLl5tcHiK35YFCXRijUZ2fwSwypOc6UHDBiwkxArYj+h8KCCaONmMPd5PuhFNweYOx/N0WPFQsq6ZSuW7Ii+041flUQ8jLHjNlCA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(82960400001)(316002)(38100700002)(31696002)(86362001)(5660300002)(66476007)(2906002)(8936002)(66946007)(66556008)(4326008)(8676002)(41300700001)(6916009)(2616005)(26005)(186003)(6512007)(53546011)(54906003)(6486002)(478600001)(36756003)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXRRNHcxbDh4Rmo1WWdZN0pxSHdKNTdEaGtHM0hvbWEyU2c1NTZSZFVScnBH?=
 =?utf-8?B?a292cFVsUG1CTTNYdG41cFRnd2VJcVZiVVdNOHRUcG5lM1Bza1d4WllGaHJ3?=
 =?utf-8?B?SlVlTTNzUEQ3TEJtRDliZVRTWWlRR2VGWVUrckRQaUFqUFgvTStBampFaFoz?=
 =?utf-8?B?aHRzbnpmNTNXYjBTdC93cnJ6TXRnWWFsaDR4ZHl6QW5VQmxZaW43MFF2OFpu?=
 =?utf-8?B?TS9mK3VIUmRLcGpaM0VCU1FUdlVUdE1jeWZTVDhRMTc1UU9xL3YrSFNpR2Vh?=
 =?utf-8?B?aXA3QWIyQTZFVFlWTndTZis1RFlTZFlMTkQ0cXNaTTRVNHRHWEl0a2VTTHNw?=
 =?utf-8?B?L05icWc5eHRqb2JpRXMwZlhPLy9lYmNZWWQvL0NDc00wb1lySFo4b2xreWxW?=
 =?utf-8?B?V1BEMUdPVHJWb2hXRG0yVHlBTFZUUk9yVCtvd2pkd0J2WHhUcmNxemxFUFhs?=
 =?utf-8?B?QTFGYVVueXNhOEFudWp0UzZnQm1uODJ1bnBhRFluUm1JV2pNY01QZUVrWWdF?=
 =?utf-8?B?b2laQmNOQ0MrdVZ3QXpkWUd5Q2hISW9yVWVhTFVxTVFZQnU2aDQydldLL2Z3?=
 =?utf-8?B?cWxJNHdkdEgrZk9CZ29DN0lyWDlHbUJERGtrSzRZbjRhNG92RU94RWtNbHQy?=
 =?utf-8?B?dkovYVphM1dscDhIZGRETk1sUjR1NmRWRHdJQnBFd2pxWlF5TnRpSzB0c2Ev?=
 =?utf-8?B?eGVPZnRTTlBkS0VoZ3JrcERrUVZqdlFWdkhIZm1ScXNEaW1kR05MWS80Z2I5?=
 =?utf-8?B?RlB0bGYzUnNVVk1FVTVUTTN6NlB5OE5DSThaR3hwTG5lNGQyenBoWDd0NjY1?=
 =?utf-8?B?aGJaNnQ0OTk3SlRkTFlRTWxWMWNoRGRyeC9yNXlyRVlETWlidDkreGtMOGN5?=
 =?utf-8?B?VXo1U0ZBWDJLbE5PallKWVlNR21ZZlh4N3hxdGFpbDlKVUt1SjlxVmhCK0Vn?=
 =?utf-8?B?OC9icXMzNjA1OHBNaTh2SkRBaWVOYlV4WVA0dnQvYlZrdGlkalF6TkpJdkpt?=
 =?utf-8?B?T0ZzVkRoWURDd0VRcXh2VDNEV0ZxZjQwWUgva05HSXVrUkdJY2x2QzhtaVF0?=
 =?utf-8?B?R09aT29ZMFNUTndpVEN5N3FmalhidkJLeHNHSWZPbXRDZk9hekRYZWNsRlVa?=
 =?utf-8?B?bzBLSWpEUmFkNUlGdll6Q1RoTlhNR3c1d1ViazdFWVM5Q05uSmEyc3l4M0p6?=
 =?utf-8?B?bU9SODBNRGF3MDkrYUl6Q2h6ZndxUVhlOXlsMVRRY2hkSWF2Z3RLVXEyOEJ2?=
 =?utf-8?B?Tnd0SWladkFEdFZQMmpPWUZkZDFvT0lYcmJjWHhDOXNybEw2b1BxT1ZRY0hP?=
 =?utf-8?B?cEFmUHhKQUN6bkNoaTZhYXdXOXRGNFNWNHdpMUZxLzVkWENPSmN5MXlXalRM?=
 =?utf-8?B?OGpUaUlLNk5icVUwOVV3UGwyYyt2TlZ1azR6amsyaDJSWU83c2FmdW0wNldy?=
 =?utf-8?B?TXJuQmpYMWZadUZPNm5LTHlYckNhUHd2aHF4WTdEMXplT29Xdm5VTGwzNEgr?=
 =?utf-8?B?eGEyM20xbzEyOXYzQWVUSnZtUW95TWVqbXQ5TFV0Y0NudmZZMjBkOUNkeExa?=
 =?utf-8?B?MFFYUUw2bm5veHFoR3VRcGlES29maU5Qbk9JaTdVNUVOeVJsVUxIMGpLN1RS?=
 =?utf-8?B?S1hhTGFxdUpQVUhMSklJSFFqTzF2MmRvTDA4eGcyL1NPNUpERnZWQUQ2ejVh?=
 =?utf-8?B?dUErRy9hMmpveHdoZkc0aTBCcEt6ck11bXU3T0tlc1BNNndHa3B0SzF3aTZs?=
 =?utf-8?B?VWQxdlVrZ08rdDNZcG9KVTJMamdaYWIvTHhjMnRUc0dFbFVsS1dydkFyTkdv?=
 =?utf-8?B?dkxhdm1iWVhlOTlXeEx5Lzdyc1BlUFRZZEM3aldDbWE0NXEyV1VSUk5lSnNr?=
 =?utf-8?B?ME4yZ0lSbllWR0FDMnlaUEZET21oVW9YSW82bW1XQ3RENzhLNzRPb0NYUFRa?=
 =?utf-8?B?cWFHeEcxQm9wYXJ5WUtkdXQ2aEZaNGJpS3VKTTJPLzFiVnNEeEU3a3hvRGlY?=
 =?utf-8?B?emJDR2tFV0k2WURMTmpWckR6ZTR3QkNTYk1IYVpNVVBtaWUyTXdQcnJCRFBJ?=
 =?utf-8?B?UXk4aVJway9ld0N1cDJRb0Q4RlJhUWhBZmlRV2lNQzYydTVlY2JuMXpwNHpF?=
 =?utf-8?B?Y29IZjgwMTZHZWx5a1ErUEFuSGRSell5V1RtVjJReG81Zll1elNOTXZqOWMz?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 567a38b9-29e2-4e32-fe39-08daf995887b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 20:49:46.3179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPps5808UHg53F8eu9KQ6lW3iEkTwLldqVI/kHiUQOO280vH8qis1uUp/x+s3sNfpUaPp9Y70JuCXi6ZMtAb+z5qIyKlgzf12JZKH/x43c0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674074990; x=1705610990;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GZV97bljsrJkw/xF6a7e3J2cg+o/DQI/sWbVjW2QfVs=;
 b=BzBVc2g7S7J9yWPtHhPQyxo5QjxHr5OZmKucXy7gVKnqPMulQ0Qxx9Jr
 InCo4Ma+ZXbatolzACoAX2KVqY/bE4i2eVMG1jXRd2519/YSBtR4AYQVX
 E5NdDdRtNMMzjaN4P9aXDYGjUtpgvDOEu1yaGjwMSgWnie/MDwdZiIGlS
 c5Ah85Ecles/DWYgt3pEUeypDwaSuzftA9M8JjmYHCjpDQ4OvxgkOE6fJ
 DEdfoDafLUCkJVPR7YFSKFPCx5Sak7LAedC0fUi/251+AmUH1f5+4/uOJ
 bhBrpEMlqVGqnhMCd6/ekL8vXHPBPK0uIAMyqDNKiAK3VS7rKTr8hJze9
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BzBVc2g7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/13] ice: add helper
 function for checking VSI VF requirement
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/17/2023 9:24 PM, Michal Swiatkowski wrote:
> On Tue, Jan 17, 2023 at 11:23:00AM -0800, Jacob Keller wrote:
>> On 1/16/2023 2:56 AM, Michal Swiatkowski wrote:
>> I can do that, but the main challenge is the number of patches. We're
>> going to have to send the ice driver implementation as well as the
>> inet_vdcm driver implementation in the VFIO subfolder. This could easily
>> hit 15 patches, so I've been trying to find as many places where we can
>> split patches to other series as possible.
>>
>> It is definitely odd now, and I could refactor this part to not be a
>> switch/case and make it switch/case later with the changes that
>> introduce scalable? But I don't really want the changes that switch to
>> using ice_vsi_requires_vf to be part of that patch...
> 
> Understand, it is fine for me, changing it to switch/case later seems
> like good solution. I think You can also send it as it is right now, it
> isn't big thing. I pointed it out, because I didn't know the reasone.
> 

I dropped it from the v2 of this series and I'll figure out what to do
with it later, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
