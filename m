Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082A7BC5D8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 09:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7697E83027;
	Sat,  7 Oct 2023 07:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7697E83027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696665357;
	bh=Ffun7ZhSSOyoAY2aqbrAP8DBX0g0SzWC2w7X709EFJQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=olL7jMd2Wq15aBVobFTRvDMAOkNJA2pIj7zKRQCYD3/rVrsm4XxIbsqxHOmQdf+nD
	 bS0lrdolTbV97Vifot7d3Ml/YAOalUUxxY9cHqBR4TxhtQEWc/JPiKlr1aS4uJiE5h
	 JbNgWGfbpX0SgqRNpx1BQLH/oa+E9PumG6ZMDha7PYLd9qwjZT2v00mW5/q6NNvI/R
	 1aq2qbG1zNI6rUjC+9FkU9rg6TZTqbK4N3C/eSXcD6iwP1ffI6mftTu8MYIM9+LktW
	 KyuQE/kL3wEQ/H0LfP7OeJmZOEvhKhvzNY1TKy9/ZVDqUe6MumhQvuRJQBwNDV5EHJ
	 I0xf+HqrC4Uxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tjBxOs7mEGLK; Sat,  7 Oct 2023 07:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 193E682E19;
	Sat,  7 Oct 2023 07:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 193E682E19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99E2B1BF283
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 07:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79CD760EFB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 07:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79CD760EFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6POS-FimhbPC for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Oct 2023 07:55:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6353760D64
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 07:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6353760D64
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="414897610"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="414897610"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2023 00:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="896191971"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="896191971"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2023 00:54:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 7 Oct 2023 00:55:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 7 Oct 2023 00:55:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sat, 7 Oct 2023 00:55:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sat, 7 Oct 2023 00:55:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IHmmIZ08ANiPbpTOj0FKX5G5SyxhFxxV9E73Tr5+AY068rHzK+IIMMWh8iSQlb7LpvIipQ0PdqF2ATtJa6gm/K7XA4FyArFlltGu8eaxSizOZoYeC14GWB65d4w8B2G1HTklCoD+HzNjjdYRRx1JIcFujezfcVFtyUEa2UfxqHrQ01rfmRFLon2IZY/2TSbc+KkNod8kbhDWeWBVfkdkJ3gRLsdIPUD/QL31mNqY9u+Cp73Jvcf8sJ61X7Gpb5VLL0MqvFGclB9GopKJcE4ORJyNIJJANizjub6ydhL3Y777Ruo91EnA6MVSonjAiB6+UfjbcVR0F3bZ9t9QqJ2U5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SBQQHZVmza6NgHvk6q0htTcKAN+2wPM7zGBu9gtAzE8=;
 b=oOnbZdo+VZnQiUzkkQeQJrmTx/y900zR3H8ouaeKyoqHivk45dTvga7toxz2/BxRlTZa9yH6sdDIvuvx1B7rmixl9Z45IM7SwIgQvijW+SMzbX6QUkgwlEjT5LOFshGXg2EOHzjUE7bBggUl2nBQLCrtSsW9z5msLydbo4P04ISvLkiFSO3iVgwjtSIBvDMHcM2HwxfCBi7dP+/49/6PNUhqjRZib4mQ3S9cSqLh4Ma9AxBHWQ6WgUKa+ZfEQEufUsI0qdc5ykGmzqVytCRHNGpUpmRNNJRduQzeOmZQw3ITNzlVeToBCYYMXKfcqs12U+5iDaDZ7X9EHyH8ig2WmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Sat, 7 Oct
 2023 07:55:44 +0000
Received: from IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777]) by IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777%7]) with mapi id 15.20.6838.039; Sat, 7 Oct 2023
 07:55:44 +0000
Message-ID: <50a75755-fa04-83c3-3ad7-14a960683d2c@intel.com>
Date: Sat, 7 Oct 2023 15:55:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
To: Alex Williamson <alex.williamson@redhat.com>, <anthony.l.nguyen@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
 <20230918062546.40419-14-yahui.cao@intel.com>
 <20231003160421.54c57ceb.alex.williamson@redhat.com>
Content-Language: en-US
From: "Cao, Yahui" <yahui.cao@intel.com>
In-Reply-To: <20231003160421.54c57ceb.alex.williamson@redhat.com>
X-ClientProxiedBy: SI2PR02CA0009.apcprd02.prod.outlook.com
 (2603:1096:4:194::11) To IA0PR11MB7838.namprd11.prod.outlook.com
 (2603:10b6:208:402::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7838:EE_|IA0PR11MB7696:EE_
X-MS-Office365-Filtering-Correlation-Id: d1f522c8-5250-4ab3-a429-08dbc70ace6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sd7b/63a3oyWJvNwW0Us17cQhHO2b5B2vrqk9kyr7QN8ccXhAQYuZcq+C8c459fzcx5qo1BWjkXtDVqTyywwKJPdYRMoxMTNAmv0+5rcyml5BPo3hu/zKFJk25qaJ6QBUmdywkHhSttVSp24X4Ii8pdlfDjDoYfcv2Kk4v12ARD8dwlAa/jk/Aknkh7v2Yj0ZGFqL5R7+0JlPTnK6d8nE0MLJfrsPg00U62Ckw317nJq5Ni80FHHSDlGCrROQq+slmK+30+irweo0Y0K5RsxHEJ6PX7EJP+5wFIMfiwGFiW6dVcK1sADQ4g4EqbGNGElqYVzCLTPFrNxDjk6lG5OK2Etp1/qoTSaoxm19tung9+Rj0mZVnT4mr3CRHmU2IHKrkHv63VUm9XueXbWuayqjqwXHfEvcdycHX2OwXOqNzO8DxtcBU5Tcay+eYNQDJPRAMAPg0jdFXj9/3WBv76IZkXmO8tzRBQa8egW4C/AZz4xIrtC+O9vKPiKPcXSQLvUty/ijm9uVYoZxSnYUpkGX3usSJzHvApa55EVHYmXJeRc17gTVbADuWOTpkFC+n6FTLgVxveGowrNfS4uWorFmBlhkZMXKeQuQ/KxdYdUbzwe4/zSYX0MJJDjhqdeANLO3Xp7C2TgP9kqavn26yw9QQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7838.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(396003)(136003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(8676002)(41300700001)(316002)(6636002)(66946007)(31686004)(4326008)(8936002)(66476007)(66556008)(6486002)(66899024)(478600001)(5660300002)(6666004)(6506007)(86362001)(31696002)(53546011)(7416002)(6512007)(2616005)(36756003)(2906002)(26005)(107886003)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmg3dVRCZmtjUUE1eWFUZDZVK1NZdGUxNWdwZDVvYnhhcDJvc2pBL0Q0RlQv?=
 =?utf-8?B?ZXY5Y0ZrUU9UTll6M2VJbG5rVnkvZ2huR2dxQjBkSk1QVm5sWnBoNkFoOXcz?=
 =?utf-8?B?VnY3c2VsaUcwbWE4Mi9meUJ6aGZ3VTU5dXhJK2IzZWFsbWh5UTRoUW03K2Nu?=
 =?utf-8?B?bW9QOTBVWmV2Zk91ZjErMWhnb3lqM0VVRjdKa241VEFvNVRIaElRbStVRG1o?=
 =?utf-8?B?bVhTa0VDUnArcmx2d0l3eWNzRk1YTlNhd1Z1QVhpd21PcTRwSGhkUm9ERnlF?=
 =?utf-8?B?cG1VcDlxMHJOMTJkSkluYjhHOUIxMlRmcVFjV2pJQTZtMEdUWmd3Y29xdytD?=
 =?utf-8?B?NWFxSG9BZEhrSkMvS3cvVEJtK1E1dDc1SXdtVE1ZZmJHWE9uSVRVVmFzYXRJ?=
 =?utf-8?B?ZTRqN3J1cHRqUWpMRHUwRHJHM0liZzBCMUQzdW9selduRmhyQXgzOTRaK2FO?=
 =?utf-8?B?d3diM095djM2WjZ0SFFmb1dZRzhNMitxRG8vMGduTHZVK1dBNXBmQVVnSUc3?=
 =?utf-8?B?OWpnQklhYmJDOURhV1NSbXI0VjNtL1lvRks0MTdPczR4KzBKY00yVTRFNXdB?=
 =?utf-8?B?TFNQdDZpUjRnUlRsc1FyTnRjVlhPMHhhNzBZNTB1OVhTMDhBMDdvUHpqYzQ3?=
 =?utf-8?B?SlZxVTltUmtLS2diNGlhUGU0WGdJU2h1dURIWis2bjBDeUZuS0t0enIrb3FD?=
 =?utf-8?B?Z1g1VnlXWGNkSldaTk1iZ2ZvMnpUZTFNT1JWNFViQS9VcU1mSG82cFNUMFVX?=
 =?utf-8?B?ekdoRmlxWmZBUGNHWThrUTlncXlvbGdXMUZQVEtvZjduSHQ1VUxQTkhJdGFY?=
 =?utf-8?B?RnV0RVRjcS9CT1E3WTRwMDd0S3pHcW5pZHp4K3FTZ1c1YVVzYURHZFNhUjAv?=
 =?utf-8?B?RFNWSnlZaWM0VUpQdWNvdHB0ampHaUgvYWpPM3Y2MFFkTDVjclc1Q2tJR0to?=
 =?utf-8?B?dXFJcVVrc0swaXlPRjFTK3VrSVJWYnZ2UjF0RlMxNlBISzgrUlVZdmxlcTEy?=
 =?utf-8?B?ZkVOeFBWaTdUcWpLeTgvM3Q0N2xPWUNWbjduMTlNblUwZHFmOHM0dWY1YXND?=
 =?utf-8?B?KzRyN1RnNzdSZTVmbDI2QzZDSzZVL01xOEpNVjJmNjZuRlFKZjFON2lGQm5y?=
 =?utf-8?B?cnBjVGZtZGI2L091aTFMWkZnZDYvamE3aE9jR2RwMUZXMHBCRTdlNG5pekVk?=
 =?utf-8?B?YW9PK1NlUjRZbHdqZXJzZzBSVlBYM3lGZDVGNVRHNUlzS0I2SkNmaS9PTGgx?=
 =?utf-8?B?cTR2SHBLUG51bWhyZjBRUlZpRm4zeng3TWorbTlpa0VNbWUwb1hMVS9DMy9X?=
 =?utf-8?B?N3A5NjRhemdxZEVKdk85Y05JLzlPeVpMN2tUY0txRTFEeFE1dVY2TkNtdHN1?=
 =?utf-8?B?T0xnc3pKWVRVWGEySU1xZ20xQ1VvaSswdW5lNEV3emZqZGRTbVpSZ1p0QTA3?=
 =?utf-8?B?ak5henoxdWNkQzQyTmxmOTEvbTU5eWlxMHlaUUVxNGRNM0hYWDE0bElPT0tD?=
 =?utf-8?B?eVJSclQzbHJHeGNvc2FUbHRrMHV1QzZaOXhTbnV4YnFFd1JySlVWSVRKVStU?=
 =?utf-8?B?d0tIMjZZTklpcjIxb3dhSmk2WGRlSE1TZS9VeVN0NVN5clMwQVdhU3JUcUlK?=
 =?utf-8?B?a1A1TjdxdklURzRVQmorQ21xSlFSUll6dndaQ1R4bEtCbEhlTHJmZE83YUow?=
 =?utf-8?B?NkczVVBMdGw0TlBNRkp3b2g0djJUWFdxQ3EweEdxdkw3cm9hYkNXNjlsYjd6?=
 =?utf-8?B?ZDJ0UmRBS2IvbkN1dUVTek9qeXV2K052RjdDZ2JjbXc4SWdybm13U2M1M2FW?=
 =?utf-8?B?cEFWUlM1Z2ZqdlpWbVZCOXJ1RldESmNsK3B0SWo1am1HazA1cGllNndZQ2NH?=
 =?utf-8?B?cllJZHN1OVVUKzNBMDNXd2dwNUdnL29icVZQYUpJakZneFJLS2NwQ2wzZFE4?=
 =?utf-8?B?cXVTQXJRbkQyMC96ODl4YnpGU3R4NksvTFY3Rzc0aksxMWNTdnBnZFBUYkNv?=
 =?utf-8?B?RFdSbGVNbU9JUzRxbDRTUkwvOHFzTDJZWUFSME5kNTJJK2pmaWFpMnVLVG5z?=
 =?utf-8?B?T3ZVMTVZSFVMcnArOHkyc1JtOTBHK3dVYnVSYXpTZVBQajlJZU9yVjNQUzI1?=
 =?utf-8?Q?52n9UvinW2XUd9S+kOeoG8yoR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1f522c8-5250-4ab3-a429-08dbc70ace6f
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7838.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2023 07:55:43.3621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r+i/aj92Dv9l81f83Y3I8uCPFwh+LVsF4WcYC7IDZtqQ7D5o/G0YflpMYvcNshi/atGVTmh74oKuBglp1nbllg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696665350; x=1728201350;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UZN1kG0SQ8tRSnS8fpdz8mNQtIZuC+2+ZH/YBjMpG4w=;
 b=Pn9fZHJQsx6DopHbYOjqug6xDtSvuY6hwy2dXAefRAC5kdbNYzUIWwU/
 1JS3cRT0WHdtiIA3F5fKt23fz6yW0Q3rTdP8SOhSIRWgrnpoEjvIh6GI5
 lRixCdjGN1mjsh8XES0EkfilBq3ld6rZzIfdroKV/RWMQD0oECUfPTFNx
 nmNR4Ro89yXwxG9jwZHY7FUhAvhkRXJud+0FZhlDxAyDTJrPsfeQdwuh3
 ySD2ZE9Y+DPW1KyCcqdFYcCH4XLboVR71jjQsEbdRd2DAENCX5aIyR0hU
 NvOK4r5fEHodLS1gbpCj2YJIm4JBftF4CN2JsO87i8n0Nhv8As3XizXEY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pn9fZHJQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/13] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 shameerali.kolothum.thodi@huawei.com, edumazet@google.com,
 madhu.chittim@intel.com, intel-wired-lan@lists.osuosl.org, jgg@nvidia.com,
 sridhar.samudrala@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 10/4/2023 6:04 AM, Alex Williamson wrote:
> On Mon, 18 Sep 2023 06:25:46 +0000
> Yahui Cao <yahui.cao@intel.com> wrote:
>
>> From: Lingyu Liu <lingyu.liu@intel.com>
>>
>> Add a vendor-specific vfio_pci driver for E800 devices.
>>
>> It uses vfio_pci_core to register to the VFIO subsystem and then
>> implements the E800 specific logic to support VF live migration.
>>
>> It implements the device state transition flow for live
>> migration.
>>
>> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
>> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
>> ---
>>   MAINTAINERS                         |   7 +
>>   drivers/vfio/pci/Kconfig            |   2 +
>>   drivers/vfio/pci/Makefile           |   2 +
>>   drivers/vfio/pci/ice/Kconfig        |  10 +
>>   drivers/vfio/pci/ice/Makefile       |   4 +
>>   drivers/vfio/pci/ice/ice_vfio_pci.c | 707 ++++++++++++++++++++++++++++
>>   6 files changed, 732 insertions(+)
>>   create mode 100644 drivers/vfio/pci/ice/Kconfig
>>   create mode 100644 drivers/vfio/pci/ice/Makefile
>>   create mode 100644 drivers/vfio/pci/ice/ice_vfio_pci.c
> The prerequisite ice core driver support (ie. patches 1-12) should be
> supplied as a branch to allow this variant driver to be merged through
> the vfio tree.


Tony, are you the right one who can help on deal with ice driver and 
variant driver merging dependency ?

>
>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 389fe9e38884..09ea8454219a 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -22608,6 +22608,13 @@ L:	kvm@vger.kernel.org
>>   S:	Maintained
>>   F:	drivers/vfio/pci/mlx5/
>>   
>> +VFIO ICE PCI DRIVER
>> +M:	Yahui Cao <yahui.cao@intel.com>
>> +M:	Lingyu Liu <lingyu.liu@intel.com>
>> +L:	kvm@vger.kernel.org
>> +S:	Maintained
>> +F:	drivers/vfio/pci/ice/
>> +
>>   VFIO PCI DEVICE SPECIFIC DRIVERS
>>   R:	Jason Gunthorpe <jgg@nvidia.com>
>>   R:	Yishai Hadas <yishaih@nvidia.com>
>> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
>> index 8125e5f37832..6618208947af 100644
>> --- a/drivers/vfio/pci/Kconfig
>> +++ b/drivers/vfio/pci/Kconfig
>> @@ -65,4 +65,6 @@ source "drivers/vfio/pci/hisilicon/Kconfig"
>>   
>>   source "drivers/vfio/pci/pds/Kconfig"
>>   
>> +source "drivers/vfio/pci/ice/Kconfig"
>> +
>>   endmenu
>> diff --git a/drivers/vfio/pci/Makefile b/drivers/vfio/pci/Makefile
>> index 45167be462d8..fc1df82df3ac 100644
>> --- a/drivers/vfio/pci/Makefile
>> +++ b/drivers/vfio/pci/Makefile
>> @@ -13,3 +13,5 @@ obj-$(CONFIG_MLX5_VFIO_PCI)           += mlx5/
>>   obj-$(CONFIG_HISI_ACC_VFIO_PCI) += hisilicon/
>>   
>>   obj-$(CONFIG_PDS_VFIO_PCI) += pds/
>> +
>> +obj-$(CONFIG_ICE_VFIO_PCI) += ice/
>> diff --git a/drivers/vfio/pci/ice/Kconfig b/drivers/vfio/pci/ice/Kconfig
>> new file mode 100644
>> index 000000000000..4c6f348d3062
>> --- /dev/null
>> +++ b/drivers/vfio/pci/ice/Kconfig
>> @@ -0,0 +1,10 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +config ICE_VFIO_PCI
>> +	tristate "VFIO support for Intel(R) Ethernet Connection E800 Series"
>> +	depends on ICE
>> +	depends on VFIO_PCI_CORE
> s/depends on/select/


Sure. Will change to select VFIO_PCI_CORE

>
>> +	help
>> +	  This provides migration support for Intel(R) Ethernet connection E800
>> +	  series devices using the VFIO framework.
>> +
>> +	  If you don't know what to do here, say N.
>> diff --git a/drivers/vfio/pci/ice/Makefile b/drivers/vfio/pci/ice/Makefile
>> new file mode 100644
>> index 000000000000..259d4ab89105
>> --- /dev/null
>> +++ b/drivers/vfio/pci/ice/Makefile
>> @@ -0,0 +1,4 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +obj-$(CONFIG_ICE_VFIO_PCI) += ice-vfio-pci.o
>> +ice-vfio-pci-y := ice_vfio_pci.o
>> +
>> diff --git a/drivers/vfio/pci/ice/ice_vfio_pci.c b/drivers/vfio/pci/ice/ice_vfio_pci.c
>> new file mode 100644
>> index 000000000000..60a0582d7932
>> --- /dev/null
>> +++ b/drivers/vfio/pci/ice/ice_vfio_pci.c
> Suggest renaming this to main.c


If changing this to drivers/vfio/pci/ice/main.c, it may cause some 
naming conflict with networking driver file 
drivers/net/ethernet/intel/ice/ice_main.c and confusion.

Could we still use ice_vfio_pci.c ? Since this variant driver only has 
single c source file( like hisilicon variant driver )


Thanks.
Yahui.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
