Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983A76784D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 00:02:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C182F42207;
	Fri, 28 Jul 2023 22:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C182F42207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690581724;
	bh=Gb4zzc4+TJ3lcFjGOg/xPbYr+wUnRIq1+ICHmbYHLzM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R428rtkuxfoChu8nLSzJ/UXLfinD2vlrrEWcwd2HPrJQtu0QQYS4hjCdWDjd6UDVv
	 0cywL/mwpZS4evV++6VfJ3nPyt5qQPiVIL7oeqXX/gxk1vZt9gZQvlVYCBTXXdsx0S
	 efI5zAiTtdS9dSSTLh4I5TWrnGzfphDezhWHXzSWk5rwQ4dQTaJFGfiXIcYgkBYSeE
	 VLKk6PajJx1tdiKLQ3b7d3NygCm3mGv90jceCVMdcH+0ncCWk0vwFiVg0dom58VjxI
	 9Rm8r17K4s4tbqhrUNmCN3UiWH3kwiWoxtip/QTFTcO1tKx6EArZumaok6XW0JQZBg
	 chzrCYX/UYteQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZ6gKtSi_Xrq; Fri, 28 Jul 2023 22:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 802D3421F9;
	Fri, 28 Jul 2023 22:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 802D3421F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4A1F1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7166761500
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7166761500
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5rzxHWM6BQzb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 22:01:54 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6442A614F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:01:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6442A614F7
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="371389367"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="371389367"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 15:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="721407428"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="721407428"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 28 Jul 2023 15:01:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 15:01:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 28 Jul 2023 15:01:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 28 Jul 2023 15:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g1GztNwY9RkwVm8fQp45ZduS/8zUIgEO+Y7tJVtqzx6ton5mmY4+R/Ajr+0Kc9EHwmhJWrjCRxsjWRY7PqOW+/PZSN4N9ueclD7SzndthtnCRFRLc/dmcBdIHc34Y3OuIq64JK80ohUfQiZT4gMewFLZP0cT6ynUMnfwyTuCjJSHAZXsz8zEBkXK/KrbaiB41sCX/8Bom+o4D/l7N8W5KzCExzsjEYCo95FQzVQHYCV+qcSwDKhBaTZnhHDYSV/ycwiSsKOdtp5IgLQ/QEDkD5kVcWHJa/YiQWPCrmE8JSjAMHxWIVR2MeWKa90UjzVF+YrR8k4xqgaogJY7yAfK4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ou7s6EUoxcI4TsEFcNea7m6A8CSl0EsYkIvI2kNbrSA=;
 b=V4GPBvD1ll9WZPBoAyF//jpYnPWlCejInKSHOi0qPerNA2uHVwu4Y9pPM0PMf4AhH78m63kQ6cQXs3UJy3FSxzbMFRFuvtL+3eG1jAtcCDRychYajnYwuKVn3C3FlGFL9vxc/yVTB6fENJ1uVo5n1STUkG/2kQKJS5b4JOBZuCEjhN0F6ljb5edlNs5AjQkB47tWDKEY6PCA+8zGpXS4qOzb08y/30Pcx+QE9wyeVdG0CSEXlciAT0ta830cSsp7Lp3uiWLXhKu5i/d8R3fXmvQfitGO/R+0hcgEkc82YhpoQcskF7dCVRhzLFKRgavoCrqJMmBh1EztBZP4OV7EmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA0PR11MB7750.namprd11.prod.outlook.com (2603:10b6:208:442::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Fri, 28 Jul
 2023 22:01:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 22:01:50 +0000
Message-ID: <0433cc77-a922-abd7-5cdb-e35c4fb57c76@intel.com>
Date: Fri, 28 Jul 2023 15:01:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230727000643.31093-1-vinicius.gomes@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230727000643.31093-1-vinicius.gomes@intel.com>
X-ClientProxiedBy: MW4PR03CA0138.namprd03.prod.outlook.com
 (2603:10b6:303:8c::23) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA0PR11MB7750:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d93cf49-44f2-44b9-4adc-08db8fb63eb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y1o9WMbCQbjyM7ahWEKamjk0v9mULVj7A6Ox+/2jiBLoNnldjRRJFM6nCB0o6MqT5csDxX9INCdtEnKbCbaWtrBVQ3WxaG3Uz9cS7fwP5kygDIoasBIf0buMQGXKw7RVMhxHj46YiDTmUTP0T3TFf+Bj+nBAlq0vWoXYqydxdOEHs/1V3aipn6k5veT/BXbWiajtLQMeDVIoqurGvms8lYUJ+7GJJajlUZPgKw9GNmCjwJWnbDzzbNWSwvcLOkhw6Sr1TBLXW7CSAy7YrpOo3JnMxMt/7MB981/5NU9bY7BqpmIOARy8BOAne9Ww5Bknzhj3Q1D9MLINmmNWKC+hBMy6vhzTOXQlDwMpj78tT2mY3OxZwD1TWuuRNm6IGDHSr1wCg1ITLOWoGtpfwpm8qRbSOSQbPcBu4PO7fF0z15hXiM/XUHI2QCzMtFBtfKNZiT/GBqixL5VUAFewpoEvH+c8sJudXmDItU7aMVH+gVbfFCAulnOjHELDZFF51JiRbNNYGlqEMPSgbkcgkHmF36u8P1zbeveNvKFmYN+WU8qT2WMut6FuT827X1M8KzkUFJcuB8um1YB0I4XCFDWFH85NeP9BvV9T0SJxjof9HMleZ5fIDH5iUpg/iaWgFPbN9a/b3pD4mr+B79Gd96j/OA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199021)(31686004)(86362001)(82960400001)(31696002)(38100700002)(4326008)(26005)(66946007)(41300700001)(6486002)(8936002)(8676002)(478600001)(6666004)(2906002)(4744005)(66476007)(316002)(186003)(6506007)(6512007)(66556008)(36756003)(53546011)(5660300002)(83380400001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1lGTjdFRk9EUS9SVVZXWjM0MEFqajlXQTNTZG5TY0hyZHNIelNmWUN3cjND?=
 =?utf-8?B?NitoaGZGbytGd1Qva1pUbWhaS2hHbVcyTmw0dkZOdDVIeDlnR3A2RThOamkz?=
 =?utf-8?B?NnhOeDR5Wi94ZVgvenlCUnhEQzdpd05MUzNlZFFiUXo4SjhUbGJQdXlqa2xx?=
 =?utf-8?B?L3N3YkZ0MDZaOWVOQUFaSXlOVG12elFZTnAxZHpRSVMzckJRemlMcms2dGpE?=
 =?utf-8?B?WHA0cC9aaDBVSGNlMmdFWTVYSk5XZFNsdFNpSDZFTVdISE5MYmExZ0FlZnQ2?=
 =?utf-8?B?VUt2QTRkOVR5UDNTWERQOWJlMHVDWHBnT2t0L1BTR04xWENhTnlzSmhwaTBG?=
 =?utf-8?B?dTFPei8rUTA4TGpsVVBQVUNHMVA4MDM0VlZ4QUNVeGU5OEVwY0RIRit3RHM5?=
 =?utf-8?B?Mk9QaW81NDdvYVNNOVpqRVZqTHNxWUVZTGpGS3NtMVROdWVNTFlCRUtOVExp?=
 =?utf-8?B?WlNhRmdXOUVTSmJsM3VRWlBNS0tnWnd0dnQyV0Nod2Qremo0RTlPNmloZyt3?=
 =?utf-8?B?c2hqY2I1dEo3OTJlL3Z3cnJiOWd1NVIzcENSNG1VdjBNSWI1MXJRT2prcW5z?=
 =?utf-8?B?UG5wb3ZnbWF4VjJCRldCMFhlQm8zVG9vMEovdm1ic0crZFdLK1pnR2tkcFNi?=
 =?utf-8?B?aWNPeFFhNkFKTk9jSVZjVVBLK3RMTkVpeU9UbGJ6dVhYNnkvWml1V0dxUG9U?=
 =?utf-8?B?dTRSaCtBOWdHNHYwQlNYeXVuVkRNS1NRbWd3WGthdmZkRHBucE95RE9PVnly?=
 =?utf-8?B?amF2Z2RJSlQ3dFA1NFJxMHhsZk5hdGxPQnZsSHQzTTVCbDE2ZWY0OEZSN2VW?=
 =?utf-8?B?NEVsTmVzTXNpN05DZ1QyaHB5dXJOWVl5cENUZlJFZ1ZNYWk3VWhLcEo2ZEIx?=
 =?utf-8?B?YjJNVEZtbGdQa0twMUJkeVlPT1lvZTczVFhTcG5kLy9tNVllL3hEUU5KOHB2?=
 =?utf-8?B?TnFuWkdUNFNmNEswenYwRlA3T3gwOXdmelJEQk9sWmtFbjE4TnNZT0FzbGkz?=
 =?utf-8?B?TEFMZnBJbFhEMGQyU3ltMGZCRTdRbExUeWwzZmpFY3BENk5VMnZZVW9aYXNB?=
 =?utf-8?B?YXprK0pEdXlnaFdnU1FtbjhHWTBKK0lOWXBTd1dRZU9rNnBmanNMK3kyTUV3?=
 =?utf-8?B?VXRUbEtPUFcxTDQzNUgrdjZlY3BLeUJacUhkc1hlaXAzNm1JS1FjTlZmalRG?=
 =?utf-8?B?dUY2SndzbnN5UzJIZGFDTUVmWDlYNFFPVVFPT21ycUpSOHl2UGxCeUlZMzJu?=
 =?utf-8?B?RFRqSkFKNjJqNEIwNlBYZFZ4QllqSFpqSzF3eFA1NXBna1dzcUJ1NnVJWjNX?=
 =?utf-8?B?b1A1ZlZhaUcvbnMxaFhDVENHdUI4YzZBT2grdHlSUDV4ZUFzT2dRbDRoQ1Jw?=
 =?utf-8?B?YjUvRmQwZU0wSnNuVnE0cEpDd25kNWtMb3VZZHVjTExxZlFJbjBOTEdrM3A3?=
 =?utf-8?B?RnJpRFFpNysyMERMMkloNUZlUmJZSHU3NjFvODUycDFqenBVQVJMTVUzenVL?=
 =?utf-8?B?d3RLNndXTWhidjJpeks4M0NXaStaM015YitYelVBZFI5NDYxKzZBa2VqYzJI?=
 =?utf-8?B?SUdmQTlPQW5ONzRoSGtwV2pwL1BHM3p1MURrZml2M2RSOVZvWGxlVDJHSGln?=
 =?utf-8?B?T3VSZ2o0blN0N3pGSG1Cd3ZIY1hVVXdzeDhYUTRDSnZwNHBJOUJFQUsyNCtk?=
 =?utf-8?B?V2lzN0VoU1JQT29HR3BULzFIK21sZDc3bTQwNElMTWZQQ1IrY043YWJzMTVa?=
 =?utf-8?B?YzI1VU5qU0RWbmt2a3ZoSDJkWXdEOEwzeXNvVWV5SjhWTWlPUmtBdU9hK0J6?=
 =?utf-8?B?SUhrL0NiMGw4NGJqREdaNElSZnVCMFk0Y3dMM3pBbWVlM1JLOCtueHZtOVkx?=
 =?utf-8?B?VXFXeGtTVHpRWG5Odjhnek9HS3E3UjJBTTVFTkVWd0dTZi80UGxQWk9iQVRs?=
 =?utf-8?B?TjZBR1FjK3I1Tmk3R3VCVzBKQ3A5U2ZPVjE1amxQMStoRE9TUzNtaTJaVXdi?=
 =?utf-8?B?QWN1Zno0SEszWTBraXlGWWNsb2JsdVpCeDNFWE1pYmdwTzU0dGZSWkVPeDdz?=
 =?utf-8?B?YlgrWWpmdHFHeVlLUVF6SnlQVFBBa250SlVPL2NJd0hEaUJ4aHhhSmdud2tJ?=
 =?utf-8?B?ZGpSZ2VNN25QQlRsNzFPUzg5VVZBV25sK3hNblhRSHZpMXkrVWRKelZaQVBS?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d93cf49-44f2-44b9-4adc-08db8fb63eb7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 22:01:50.3912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sdfAqTnuUH7r4Q9yzp1QTqobjRDWSC8xlduh694T5egsD5INq9auHf3kJILxDG1Psjx665jIlcf98Mxhb0H66SUgVDPyPhQjvDYVJmrDTNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690581714; x=1722117714;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bg/ymWZbPsscIYddmTLUCKms7el9EyHqgb1Xuo45mRI=;
 b=mcxxtrgteIPH0JWgU2gRxz1s3O1104BAEovKwxHOhrIO1xF7WERhEbe9
 LM+V2ACfhuWc0SBgE7t+XF7NMNWp9m4pYIOFw3lL+A0ZpQ4FsCnWrpnLv
 x87GpZ1wvC6zlwXugKTNkSSxWW4P0mRQXNSZKFHkjlLUi8I5yRPl0Ix4T
 qOtNmj1WLzxM2EQxqkfT8l6wIeHzLmombxpF1dEXAoiZMpqx1ISqn0nIX
 oVM+ExVYRmYb+Ln5hNOIuDZ6DxTqcsnw07fmCoZp5UmbQ7X18PfuHpgFT
 rNjFAh22XuICK9loFR1ENjmEGdTP/zi3t9mP4XfX0zBZdvikhoGr5/dwy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mcxxtrgt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: vladimir.oltean@nxp.com, richardcochran@gmail.com, kurt@linutronix.de,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/26/2023 5:06 PM, Vinicius Costa Gomes wrote:

...

>   /**
>    * igc_ptp_tx_hwtstamp - utility function which checks for TX time stamp
>    * @adapter: Board private structure
> + * @mask: bitmask of which timestamp registers are ready

Probably a remnant of previous work but...

igc_ptp.c:761: warning: Excess function parameter 'mask' description in 
'igc_ptp_tx_hwtstamp'

>    *
> - * If we were asked to do hardware stamping and such a time stamp is
> - * available, then it must have been for this skb here because we only
> - * allow only one such packet into the queue.
> + * Check against the ready mask for which of the timestamp register
> + * sets are ready to be retrieved, then retrieve that and notify the
> + * rest of the stack.
>    *
>    * Context: Expects adapter->ptp_tx_lock to be held by caller.
>    */
>   static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
