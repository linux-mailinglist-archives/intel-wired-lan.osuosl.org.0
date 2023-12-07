Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0155E809692
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 00:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F2CB42246;
	Thu,  7 Dec 2023 23:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F2CB42246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701991631;
	bh=INioBMqktJSJhCYDh9H7UkKCRhtkmLaQysqn1zdZiZ4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7c0B9fjGlcAny5GBsg5G1d268YaCjtWbF/5pq8X5+GWi21XHoCo/R1EgdQ6RZ0kZu
	 vFeOBGyRtwBjgTbtpGm2KJ9Jyej2Apv9VFq085OI1atqJkbeL00PwGZgsdoryapR20
	 fYawx74uPLqjzKhiGkhjdxXh1t9A4a2vp2bhM+PuXcpO2q+2YxxcI72yDXYT8a68ID
	 taTVzFoe+yBwmFDVIICpdpTpb/Fx1EasjBhtYJDMKZ9YNNsVTAnHNdyrPM+4nEvShr
	 dXl1BnxQfnysQwnih33mwlAWq2Jg3A3Pcr+k41rllQpduFYsgU3dwf7+uIRUu3jDmE
	 30HtSsKL4ipBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q_JOAAnTOJig; Thu,  7 Dec 2023 23:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B78542241;
	Thu,  7 Dec 2023 23:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B78542241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 199A31BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEE5740147
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEE5740147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nplgopnVoMt7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 23:27:04 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Dec 2023 23:27:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D199B40018
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D199B40018
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:27:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1403850"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; 
   d="scan'208";a="1403850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 15:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="862661039"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="862661039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 15:19:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 15:19:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 15:19:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 15:19:53 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 15:19:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5gi/FO+on6reu51niZVZtR09XleZyFOJYVNEjnPbBzB2vDUGmkOFbcDWyrHb4ALB4SLHyDZV3QufvJm/KDLPEZlXKYs+X34lkUtZPtwnIQItcJ7asxzFqEEel/dlfXFlf5pa7D6Aq6NwKOu6YOtCemUzAGgKcF5v7nTcA2GpHh5uCjGjoWHc+b2b1wVOx6W7whqd2Kf+wwXmcul4yaHG8IgahOTOuRtQcnz9FRu5QDXBAzgKnVLCeNj3FuNFIZONrl4c+ZeOv+xpVwSVQ9QFrRuk6yGaAF6VlKo2hzkSY2uRw9QNGEuY7EakpjYJVbRxiuKU8MEk3HRtG30f0jsiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0BfILugU0IDAOsmPG/TOwobmlsCjut4uhv87eSsXAM=;
 b=FqP+tz9yQTmqk8n5BvLq2QD0TZv0/P97bbHDpO7JFj8m4BZIhssbaPeGADhU5UKYC+Y1ytMD1S53LRGQA+ZlW8b+6eIJQv5KGoefvGmoI+1uH09gLeRNefaoJguqZHWqWNoEavgEMJcXHeYzXyQHXp9D1ekFF5rE0qm+/Fl0gOj8S+PchkTGAmIdt7TCdIjkdnXnnqKMpqTCHGlCJcFvYXitix5wRdYpA2y9CyrfjDcQNY7VNecpyxzh2lgF3tDK9TpUAUixBvOaILgD6ZRIGuWW3R+tftZvpTerpciQBciEWywDA6uTH7e9K8+HbFa3wZcqS/RdeAdYG5gZlBKGCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM6PR11MB4547.namprd11.prod.outlook.com (2603:10b6:5:2a1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 23:19:51 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 23:19:51 +0000
Message-ID: <14130a24-ec38-cdab-6dfc-8073c9335166@intel.com>
Date: Thu, 7 Dec 2023 15:19:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
 <20231205112840.149813-3-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231205112840.149813-3-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW2PR16CA0014.namprd16.prod.outlook.com (2603:10b6:907::27)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM6PR11MB4547:EE_
X-MS-Office365-Filtering-Correlation-Id: ffd67911-f8aa-4ea1-541b-08dbf77b02e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PEBcOof/F5ZeYtX5rcMEf8NOWKKcilKY9dMXIiL+7RQ/WJ+YBdmS27Lo348n344S7RXUpskrDnGsAjeAdsjDNt6noIwFdrr0caAe7PRD2A1S5vT3SmUi1bPCJCEDdG6o5wk1QsjczzE2T2OFQSpleW6VCJHtcf0dy42FCs3jzZbQ/eI18iMUuy5hQzLIe3pqMLTORo+n/P0j+8T07RxlRGNOArd+6Un+/FilMNrV1impW45x+IwRUrhYhhG+d/2BlnBFDgTwn4J/usX9aEwmsZnC8iF58AmkQwH768SquzwURld0/1ac1HK6S70/8B/OBMT+87+4fJf98MtzAe9VgRBUtEuY59HgwUL7v247flAUKfhyEotndCUQoc4KupdrWfTR0YZpQ/DwaY6JIXbeyjJwMVvrtMlXEzZp2iYYfWREC6IB53fDMaQkvPo7kxhsJkcQs4ePSDwOon7pAM2ylsvPzu30aOROMUEFZnFEiWG75B3pENl1isjfAlZ8OWlOleIChZTX1CueMgt+jbRDrGnThzIR4Y7bdoffQjxP3k1N2NszJ69oAVoVaCvCA9Mg4dFWjjjFjmvvoH+fjw63J83YVfRzmz6AP7cTsYfcacArftWecG/1HTu2oegYwjVdDl5Ba3C2iPkhNK46Q0H3sitNrMCGMwUi2sv/2jqwi0dhS2scURWJKzLc+4BD6bXg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(396003)(376002)(346002)(230273577357003)(230922051799003)(230173577357003)(451199024)(64100799003)(1800799012)(186009)(6506007)(8936002)(53546011)(82960400001)(26005)(6512007)(6666004)(107886003)(54906003)(316002)(2616005)(4326008)(66476007)(66556008)(478600001)(6486002)(66946007)(8676002)(31686004)(83380400001)(38100700002)(41300700001)(36756003)(5660300002)(86362001)(31696002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QytyL0VDUjE0MjVMb2VrNk9VejhTbEVuck9qVHc5aFR0bDR2TkNJQklmTDNs?=
 =?utf-8?B?QWFjYlVBQ0tKMit3OXhGd3JGVGZNQ1hzNURvZmNIcWNLUjQ3bmpqcDhMaW9w?=
 =?utf-8?B?RWZyN3BLMGNMbnJxMG5yUmdmYi84b0VVVkJWZThCZzNJbTZjS25GbXFRRzEz?=
 =?utf-8?B?aWszWGxQdG9QQjdEYkczY3phdWo0eTgzOHhQQ3k3TGRHU3ZXVHFpVm9SOURl?=
 =?utf-8?B?R3ROV1ZjRXk2Zkp6bWNNcXhQOFpDL3JVMmlyMUhOMVZtS0taTWlHTDBrSlh1?=
 =?utf-8?B?VU91Z2dnYlVEM1ZPaXgzbi9hWTcxclcwcW9ZUElPd2M5cnM5c1NWNkhoTzZ4?=
 =?utf-8?B?ZDM0SGR4VUsyU1JSbStEYnJCdFdBblJMc1pCZEFWYmtSV1c0MmY4bWdmSjF5?=
 =?utf-8?B?blYyd0ZBRkZuTXhSZ2hjMlhwZkZiY1NQOFVybzgzejE3d1Q1N2NDY1JLblFI?=
 =?utf-8?B?VzBoMW80Ym55cXlWTjAza3BBOThvTElLZWZwb2V5MDQwWFpqRDgrN0hoYkZK?=
 =?utf-8?B?UkZRcW9GK1ZPalc3VzdGbmxoT09vaVlyZlgwRkVyUUlicUJ0dTdmRU8wY1hm?=
 =?utf-8?B?aE5HVTNXQ3d6OVZPakVmQXEzN2daOUdsQ2xzYjUyc2RGQzVuTnBOODVaR1Yv?=
 =?utf-8?B?NkN0Y3UxRUdTTEl1UEs2bEVpV2xGZUxGVmxzR0QrTUhRSUhIUXFOQXFReTJJ?=
 =?utf-8?B?UHBndmxSRUF6Z3V3MVlWV0JxaGhkVWxTbDZ2V2NmbU5lLy90RXl0TURNZTBF?=
 =?utf-8?B?QlJldEhmaXdCQzdYOEtZNVZZbDlvSGh2UW93dWJRYXNVWm5UMnE3eVBtRWFH?=
 =?utf-8?B?Qm5hUjNaQWpmdE40R2hnc2pQL0hkOFlydzc2TTZLdkduWUU5ZkZjQlZPOE1m?=
 =?utf-8?B?U1Z4WFoyQ0ljVGZpLzkzaGxyVDE2WnNEbWNiKzZPMEg4bDJ1VUV1OWMxWlZL?=
 =?utf-8?B?Mm1hQzMvaHVqRXFKREdXMGZ3Ukd5Y0NkcS9ubHNtdEx2MlVzL3BrQUVvYk00?=
 =?utf-8?B?eVlJdUJYVkVhaFV5R2xJeGswUlUwRmNDblQxK1JaMVNIZlRwd2ZJZmcxYS9Z?=
 =?utf-8?B?aWtiajVSYndrQU1JaEJLRzZGeHpVbll0Uml6U3dISCt6WENnOHhIWUxFSXJZ?=
 =?utf-8?B?Y0FHRXpOYVFJRXgzdFJ6MzBZdGZ3MFRnUjB2R0NXRGVUdEt6QkorbURrcFNU?=
 =?utf-8?B?a1UvT1pOVy9IWWpUbkJSKy85cXZhejVBdFhrUVhmYzFTMVoweENkZkVUWjZV?=
 =?utf-8?B?cFMxL1lDdERralloR2hKWEtySnJCbmFnVmlmWWJIMiszaU02RTVuUG51aWRP?=
 =?utf-8?B?M2ovdEJTSU8yZXgzL1A5NDBick41T3c5RWk2NHZPaDdEd2VVQVRvU0d0V2ti?=
 =?utf-8?B?Zk9qUS9EVkNrV0I5emtwT2lPQlVSbDdhY0V4Vzl0R0YrVEI0cEl1YmtRWmpX?=
 =?utf-8?B?ZFNGbTJLaWFVLzBla0RIaEwwMlNPd1c2cVVIMTdzUDJrbTdKNUk1VjY3V1Rp?=
 =?utf-8?B?VGtRRURIMko4VEtxdjd4Vll0NG1VZzc3aDlpMkppM2dROTVLdXBPM3JYdzhE?=
 =?utf-8?B?ZDI5c2V1YmJEQ2FvY1JGMUc4T3NLTEZ1WW41RFU5MlRCL3R6TzVQVGR0QTla?=
 =?utf-8?B?bU9pZUlMUkl3WTMyeEFXbUNFdTN4Q2d1bWdUWk9qUENidEQrMDdlQ0tHNE83?=
 =?utf-8?B?SWcyRjBxTFlrVFlnYXJyMmJmUkJuanlwMTNFMDMzbzM1ZXljOVMxZ1ZQb0xU?=
 =?utf-8?B?Sll1TFNhdzhGU0c2SjBVa3A2UDVRV3Ixa1FwcStyN0RQbWx6L1BqdnhHanJG?=
 =?utf-8?B?b09tQ3NMSGxwbnJRYUxCNWlpY3E4UjRKeDgyOGIwa1VYekRlNnhTd0lMMklC?=
 =?utf-8?B?TUhac2VpTGVFelRLOE1ZOFVxQ205K1lwbS85UXZaTkZDVnZTSExEaVJFSWx2?=
 =?utf-8?B?eFhGR3RSUkd4L0lISHhSUU54KzFKc2pQamR1cjVxNVZGNlNsaEFFUGJubE0y?=
 =?utf-8?B?bDhQeHh6cEMwbEcrZ1dFdUlqeUlLbTV1bUpheVd5Vm1hdUpTWG5nVEdhV1k5?=
 =?utf-8?B?MldIRllSN002QUs3SUtHdk4wSzBkK3V2NnhQYm5lcGlJemxCcU5zOCtZMEpn?=
 =?utf-8?B?YnRBNjFTME5MVGZuMGtUTEswdUZiZjFCWUxUMGRvc0NqcEZuYWljcUtGT3JV?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffd67911-f8aa-4ea1-541b-08dbf77b02e6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 23:19:50.6691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZMd4CVtCMMB4skjOloQLC1t85clJ+ycJi2jgntxqbzkdebIYpxfF3/L8MCRYsKAGajRDwM3zpN6MCCf3JracAtHSt2gM79R5xbf+jnx+l+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701991623; x=1733527623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=msYTavUjToC9KOB78tkubDOV4LbtNX7o0H9DN+9ivvQ=;
 b=J3pb6HX/kXZanFstvUHX+27OwMbl2vbvKcMqfUKfz1DQY34zTnbsgFzc
 7Nh5ixNId1YiXTy3DPwaw2ePMKMXshlpZxBT6IcmAAPMs3USHbmRUO43p
 cXIpvQWJz/b8jKKZO2VpKop7Tn3XNBA7fUeGxxrYjlRC1l0x0worPZvjK
 0oVXogs3M+MtXwX9QciC8pACtAElONbTuDBFuceyLOBsSOVk0+m8FHci7
 +0AMK77XhxLt2mRdBtvI8JgeGF8+nX3dp2FF+uFGkuisx2XzpsP4U0RVo
 PwTy5ysctsWOrcQ9PnMyhJZeziznM01keIeaWwNcRppAusbDSaLm01A3b
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J3pb6HX/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: Refactor
 returning internal error codes
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/5/2023 3:28 AM, Jedrzej Jagielski wrote:
> Change returning codes to the kernel ones instead of
> the internal ones for the entire ixgbe driver.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---

...

> @@ -3897,14 +3886,14 @@ static s32 ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
>   		return status;
>   
>   	if ((*ets_offset == 0x0000) || (*ets_offset == 0xFFFF))
> -		return IXGBE_NOT_IMPLEMENTED;
> +		return -ENOSYS;

Based on checkpatch, this doesn't look like a value we can use.

WARNING: ENOSYS means 'invalid syscall nr' and nothing else

>   	status = hw->eeprom.ops.read(hw, *ets_offset, ets_cfg);
>   	if (status)
>   		return status;
>   
>   	if ((*ets_cfg & IXGBE_ETS_TYPE_MASK) != IXGBE_ETS_TYPE_EMC_SHIFTED)
> -		return IXGBE_NOT_IMPLEMENTED;
> +		return -ENOSYS;
>   
>   	return 0;
>   }
> @@ -3927,7 +3916,7 @@ s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
>   
>   	/* Only support thermal sensors attached to physical port 0 */
>   	if ((IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1))
> -		return IXGBE_NOT_IMPLEMENTED;
> +		return -ENOSYS;
>   
>   	status = ixgbe_get_ets_data(hw, &ets_cfg, &ets_offset);
>   	if (status)
> @@ -3987,7 +3976,7 @@ s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
>   
>   	/* Only support thermal sensors attached to physical port 0 */
>   	if ((IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1))
> -		return IXGBE_NOT_IMPLEMENTED;
> +		return -ENOSYS;
>   
>   	status = ixgbe_get_ets_data(hw, &ets_cfg, &ets_offset);
>   	if (status)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
