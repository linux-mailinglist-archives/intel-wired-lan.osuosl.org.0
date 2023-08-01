Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A09376BCF5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C69660AF1;
	Tue,  1 Aug 2023 18:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C69660AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690915848;
	bh=w+6B0ffta+uIrauNgaZFOkEi4NK72oI1f5Ugc41eHKE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oMtc7ydaM8yAjrvaEvJn314T3vn3Nsp1REAgz+MOpSYcNYr2rtBZmyVKRrR+VsYZ9
	 3DeviTtxw0aBCVuGU3k2v0vgC3Z0VfnYeKwdz3osZ+caCWUJmoo9Y/oQgLvEr4RY69
	 Uci8J+J0jHRLk9eToquIhW7TKn3WPrpzjoNT/lMieokohyWsf+qr3g73Tk6g3T3d6B
	 anmM6KNjS/Q73n0f1bJrKDG+Y/oC77tJx5EWLInWn0L3qubnf+opDqrXwNrYxriznL
	 GTPFz8gZ557A3zjmVTEvzxE1bc+2LCquwJPZcUSh0bef2t+daYQpsrFX1DXn8amsB9
	 JmXgn072516AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niySbehNE9SG; Tue,  1 Aug 2023 18:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A06660761;
	Tue,  1 Aug 2023 18:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A06660761
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 958311BF307
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC35740EC1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC35740EC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVhu3XCvNd5o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:50:23 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 01 Aug 2023 18:50:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DBE9400C5
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DBE9400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:50:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="354310105"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="354310105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 11:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="732084188"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="732084188"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 01 Aug 2023 11:43:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 11:43:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 11:43:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 11:43:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 11:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPy13NEy4oYieYxuC5h3d0E7O/eIJccgHvm0+vRyBJxdpknMK/j3xJNFswalc/rmQjs4WgCJ/gQb1GYFfUmEgL73WS/Xj/4UypObuEeSGoiOiFY5b+Q00GQOxnaSy0L6VEkiin+cK/MM/FigWfJuNBmTMxJ/xB9jm/sWGAsmPn2CekR3YhTwjWssccToSrXsupCo/wRNWDLZqElmM+gjY8s6Gxqks4yQ/oah9QPqK//z6JY1u6NAW64X4796s1OzabefyP83RovWlNFch56mTsK4XpkVDTOUED9sKhcIkc6ZiOTriewv7f4fvZMXTooGvzkSpvPEw4E2/QP/6NtVLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ud1zgH/PksW8n27r4f4OT7hoVZF7wehVHjzDfeb2EAI=;
 b=hrWSo+aGBwiE7WMafPaAThfHnvov1XsQyj3GvZ/qH5xIs49T9iHbb9d4bYz1yK2w5Kn6QE3la4n+RjorO5HpkgihhGgbNwN1O8/QlZdEEZRo/0m5AhP3hGrHS0bAyblsJj0xAPgfdN4SAyiXmqD1RrsgWPWidc/2FxRA4s2wdtALeAnDfiMb4ZSxZRa3CgFmXnoKK862PcI1SBNl8vJsJuGX9tadoEAeZkZxlyeEzORNxjR94COpszqYsmqbEL3I0/5SpWGfcjXNLW8b/5nI8Mno8N6XuF+S25gxLBaN2C6/3xl8fYj/xsCU4KzYhDNHcuXMyl2N4gB/MSsUBF2Veg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Tue, 1 Aug
 2023 18:43:12 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4365:3963:1071:8e42]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4365:3963:1071:8e42%4]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 18:43:12 +0000
Message-ID: <a77c3da5-f572-0995-fd34-d14e5f7c746a@intel.com>
Date: Tue, 1 Aug 2023 11:43:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Wenjun Wu
 <wenjun1.wu@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <9449d32b-7e94-71a6-fb62-47625bdf94b1@intel.com>
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <9449d32b-7e94-71a6-fb62-47625bdf94b1@intel.com>
X-ClientProxiedBy: SJ2PR07CA0001.namprd07.prod.outlook.com
 (2603:10b6:a03:505::11) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|PH8PR11MB6974:EE_
X-MS-Office365-Filtering-Correlation-Id: f6de290f-84c4-4de0-a4d9-08db92bf28b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2TOFygaQKSfgIesOPcdyjkjOSbGQ7/wFDoAME6rKfGNHiWDcqMVMsishg/AEMf6N/wfegOG8gujGu0kqTUlGoOL9wwlPlCKeszap59KF1r/12I7uzXhsPsaCba9WogA3HxXkoDEglTIGf8Ws88jRoSenymDGM/dfbYmRnjxM+rRvTcz9Ymm5giWUbt65H3TMRjg9DWcnWftTRSgIACIMTs+bv7W88ymoM9Y7hssm9UT306y0Hf68VaZi2zYLM6cq7tP6nMNTJJKtTxxdTWDSw0igkM0AHRYuRD9QtoRF4C1mDZqQV7+Aqegv1UHDBsu5KzNfSAFbSRKgGelDJCS/PDRJ1KBJv27Vhgcxy/v3IcIj4YKTEegACC5+a6l3m6zhjqFc9cBFsd4KIN0tVk6T4ewdxsjmBn3NNW80Y5KLSSuJF2cA6Qo36p0ql5+Y1oGGDVUbIE3YAM5Le65j8msCCY8nCrefRQcmajDi4KsczcTgDdo5eTyyhn8F7+0uRXvII4DsozVsYsK7MIhv/aHnOFFe09d8y2wsdJb4jneAvr3w7NAkqIN1c01nTol+uABoG4NGGHfANmXvZJh1TFxiveo78CDk8ZhPNAtpqTpiTVcS2cWPs5uOwojUA/I1ANQOuYCPOiCq7JlHpjYZvq6RANJP3yyQLo7wEaXvfzD+t4JDGQk6Nk7tWPjXbj02mv+BzLJ3ku46agQrHh24C+0GF1cMaEsJ77Ko6tEKWJUWCfg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199021)(2616005)(5660300002)(6506007)(53546011)(8936002)(8676002)(186003)(83380400001)(478600001)(26005)(110136005)(4326008)(66946007)(66556008)(66476007)(316002)(107886003)(41300700001)(6486002)(966005)(6512007)(31696002)(86362001)(36756003)(2906002)(82960400001)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NElMWDJvbVZOWW1NYXZPaFFhWUxBS3RVZWQ5ZHNYMUVjYXdVZCs3aGhMNVFw?=
 =?utf-8?B?N2NLeEtON2ZCeVpaMXdZMUVFWU5oVjlFOVh1cE1LRWtWclBqYTI5YXhpWElR?=
 =?utf-8?B?VWZFcmdOQWluVFZuYTFPTnNmZkM5WWJOdzRYcHBIQktpMEI4RmdzYnlKc3hp?=
 =?utf-8?B?aU9MV2ViLzZDR2grb0lRamV1aTdRcWt3Z1FYM1FGV0Z5d1M5aHQzNzBSM0Rr?=
 =?utf-8?B?a3U0YzVNaWJRVXVaSmhBSlVXeWdnTUp5enJIc0RJcmpqQ0d1R0ZycHJ4N2x1?=
 =?utf-8?B?dHI0VWVQNEpJQjhFd0RBTStzcVA5R0J6ZUYrcUd2VWU2eW5VTi9pOFNCRjRM?=
 =?utf-8?B?NHFWNDZxZEFsSzlaQlg4Zjh5V203azNrUERzZ1ZzR3NTaGR5eE85dDFEN1VU?=
 =?utf-8?B?SjYzQ2ptZ2Fid0xrQmtLWlduQWhTN0VGRlJPRDdjZjJaR2REMy9UVEFQekpr?=
 =?utf-8?B?QzBvWkEvZ3YzQ0JYaEQ4RU8wME1ZMHl4bnJnOGMyNDIvd2NhRk0vK0FBQ3N2?=
 =?utf-8?B?dW1qNkJhNHNHOE1hUDZTcUs1Q0wwNGk3MkpYcjkwbHRjVWtvWkprUUFxUzF2?=
 =?utf-8?B?dHYzVEUxWkFHclNtdUM4bEkwRS9VZFNLS1lrMWJRcE8wcXNLZmVORGlTNVBI?=
 =?utf-8?B?bjZTbE5KNUFaR1lGdUVQTlJ6VDJBdHRhdmtBMDQ5TURqS2dEcjBEYXh1S01m?=
 =?utf-8?B?TElha3luZWN1NFhxcDQ4MHpjbFhOSXZRRkNsK0V3VGdqeEdncGpONHpJWC9j?=
 =?utf-8?B?RmM0elVvcmUyTGZKKzhML05qWWw5RGVZNzN1L29KNW1ZNzJsdG54WFB0NWJw?=
 =?utf-8?B?VUk3RXcvUG5xTXh2OFZNYTFBeHJ0blp4RlR0a2d6eGJXamVKWUMyZG8yR0h3?=
 =?utf-8?B?OXpCOU9XZ3daWkpodXlYdmhIOWdhTmdJaTB5ZEsraUVjQlN5VFV1UUN5YVBU?=
 =?utf-8?B?bmx6WGFSTmNqM25pSFNVcFpoUnhoaDh1cWZhK0szOGl2dFJoakdtcHROalFu?=
 =?utf-8?B?S3o4dEZjMWR1RGQvWEFib3J0U21ZcDJ3clFubE1BNm1EcUdLeGJFUnNBWFkx?=
 =?utf-8?B?eCtJSnROWjltWnF5VzJZcGdMaEZSWG1qbTk3QXN6dk9KVi84Wk9Qd2Fsallp?=
 =?utf-8?B?clNjR1QwaGNCaDhSV2pCc0ZOSTc4OEU0NVBKSEU1MEVxa0FUVHRVVHJ6T1Na?=
 =?utf-8?B?bXpNV0QzUlFyM2k5RTJhS3U1UGdlS0haOWp0SG4vVXVURHZqdWlZMXhjOVpW?=
 =?utf-8?B?aUJlMDgwZGJEbkdyUjdIb3ZlSGFpWGtHTmZmVlJDT1pBUmx5ajZoV2ZQRnNG?=
 =?utf-8?B?ZFc5NzFCMFl0dWV3WVZOcDROa01iVDVsdHhYRzVPdForNXdkUWVVRS9JQmdR?=
 =?utf-8?B?LzVtNUFwVmRUUDZqNHJoRmc3RmxwNGtlaFVER3lvNTJMT2JmQ3FHMFQwZXZx?=
 =?utf-8?B?N00vS3crOFJhbk1xR2k1MGpDWmVEa2lhZGdPaW5TM2pFZ3l4YmQwbGozQlFO?=
 =?utf-8?B?RUpqWTc2R2JsWTc4U0VKVWJ6N256NjhZcWdqTFpzUzAyWUluVXBRc09GcmNJ?=
 =?utf-8?B?bjBCaW5VYmJwV21saDRITU4zK0NOV1hJN2VlNVNvVlcyQklDdWJuVEN1NVE2?=
 =?utf-8?B?bTROalV0RGVYeHhyRnNLQXpTQXlZT1dxZU94amNrZWtLMy9FSEN5TUFsNUhR?=
 =?utf-8?B?ODhxeXFEeGIybjJrc2lURFhWdVF1VWRhNlV4TEMyVWZrSTJhcExkWmd4MTdJ?=
 =?utf-8?B?MU13UnQwVElENXJ2d0JPQVNSVXJkVFNyajI1Q1ZvRzY5eDBLNmMrdGR6R1FL?=
 =?utf-8?B?dGZ1N0w1VUZ3N0RackZwMGVxSGFZc3ZtYVFlZ0hCdUVxbjd2SmVNa3JKSk5B?=
 =?utf-8?B?OElhNkFMcE9tMzBab2dBLzVHNVZxczkrd3dKM3A4UkZDVlIzQkF5b3pmUStR?=
 =?utf-8?B?VGpCTnpKREFzZDlNQU9pYkk5d2ViMDVvSWMrSk5WOUd6VXB6M2U1c3hkNXY4?=
 =?utf-8?B?VlNQcmJCV0ZJMlRmeGJkMXZuZGFuOFIrMVRZNXdiSVBiK202Rksxa1ZCRnZP?=
 =?utf-8?B?MkFLTEdmOXlDR2VDRGNyYTJsVElPV3JxT3Zlb0hZMG9TTS9BYlFNSDRmc0pv?=
 =?utf-8?Q?IOMpC4fjiAPj1LhFh5NsP7K2/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6de290f-84c4-4de0-a4d9-08db92bf28b3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:43:12.3720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g1RLpbWuVtrT0DZ0QvJ8Ch3yqzT1mJXIfJN4fu0xzXq1kbMkvN5xXUuIDQepPk41oBe/OcVOgwrzzdceGcKlrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690915823; x=1722451823;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oHx1dbIZFahO7KgwTyq5O/90vUKV3g8exQDIYl4kK38=;
 b=bpuydSoqOg/FQxyTYVv84wZwO+OcttaBQlzT3M6JhvYgQcMpQtnxsjSd
 ZLaZQnw5tZ5ekhelHDMBFnbnzOAWCwxINtj7Ce/pRgTgTWqeVlcw5Bwkf
 UPSRQVsUutSEJrWXxQWnmrjndcuJOcMQPUpKHQUS8zmD+RZ/oTST5o43e
 0y3VTAfJe9mWNlNnPWBZnwTtW/h3QzjFDojsjMgMtdPc9StMr6X++Scg2
 1zxffcaRXAx3fw6VmLvBxKI/StmHnFL23o0j2/pplYmCzwepJskZvsisy
 /YCu+CH6xaKLHlob903bfMcgvZJccM1FWRo8XRPRrF0gDS+RlsMztCqA6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bpuydSoq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/5] iavf: Add devlink and
 devlink rate support
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
Cc: mitu.aggarwal@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDcvMzEvMjAyMyAzOjIxIFBNLCBUb255IE5ndXllbiB3cm90ZToKPgo+Cj4gT24gNy8yNi8y
MDIzIDc6MTAgUE0sIFdlbmp1biBXdSB3cm90ZToKPj4gVG8gYWxsb3cgdXNlciB0byBjb25maWd1
cmUgcXVldWUgYmFuZHdpZHRoLCBkZXZsaW5rIHBvcnQgc3VwcG9ydAo+PiBpcyBhZGRlZCB0byBz
dXBwb3J0IGRldmxpbmsgcG9ydCByYXRlIEFQSS4gWzFdCj4+Cj4+IEFkZCBkZXZsaW5rIGZyYW1l
d29yayByZWdpc3RyYXRpb24vdW5yZWdpc3RyYXRpb24gb24gaWF2ZiBkcml2ZXIKPj4gaW5pdGlh
bGl6YXRpb24gYW5kIHJlbW92ZSwgYW5kIGRldmxpbmsgcG9ydCBvZiAKPj4gREVWTElOS19QT1JU
X0ZMQVZPVVJfVklSVFVBTAo+PiBpcyBjcmVhdGVkIHRvIGJlIGFzc29jaWF0ZWQgaWF2ZiBuZXRk
ZXZpY2UuCj4+Cj4+IGlhdmYgcmF0ZSB0cmVlIHdpdGggcm9vdCBub2RlLCBxdWV1ZSBub2Rlcywg
YW5kIGxlYWYgbm9kZSBpcyBjcmVhdGVkCj4+IGFuZCByZWdpc3RlcmVkIHdpdGggZGV2bGluayBy
YXRlIHdoZW4gaWF2ZiBhZGFwdGVyIGlzIGNvbmZpZ3VyZWQsIGFuZAo+PiBpZiBQRiBpbmRpY2F0
ZXMgc3VwcG9ydCBvZiBWSVJUQ0hOTF9WRl9PRkZMT0FEX1FPUyB0aHJvdWdoIFZGIFJlc291cmNl
IC8KPj4gQ2FwYWJpbGl0eSBFeGNoYW5nZS4KPj4KPj4gW3Jvb3RAbG9jYWxob3N0IH5dIyBkZXZs
aW5rIHBvcnQgZnVuY3Rpb24gcmF0ZSBzaG93Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzE1OiB0
eXBlIG5vZGUgcGFyZW50IGlhdmZfcm9vdAo+PiBwY2kvMDAwMDphZjowMS4wL3R4cV8xNDogdHlw
ZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMTM6IHR5cGUg
bm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzEyOiB0eXBlIG5v
ZGUgcGFyZW50IGlhdmZfcm9vdAo+PiBwY2kvMDAwMDphZjowMS4wL3R4cV8xMTogdHlwZSBub2Rl
IHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMTA6IHR5cGUgbm9kZSBw
YXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzk6IHR5cGUgbm9kZSBwYXJl
bnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzg6IHR5cGUgbm9kZSBwYXJlbnQg
aWF2Zl9yb290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzc6IHR5cGUgbm9kZSBwYXJlbnQgaWF2
Zl9yb290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzY6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9y
b290Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzU6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290
Cj4+IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzQ6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+
IHBjaS8wMDAwOmFmOjAxLjAvdHhxXzM6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBj
aS8wMDAwOmFmOjAxLjAvdHhxXzI6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8w
MDAwOmFmOjAxLjAvdHhxXzE6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAw
OmFmOjAxLjAvdHhxXzA6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAwOmFm
OjAxLjAvaWF2Zl9yb290OiB0eXBlIG5vZGUKPj4KPj4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKy0tLS0tLS0tLSsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgcm9vdMKgIHwKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKy0tLS0r
LS0tLSsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwtLS0tLS0tLS0tLS0t
LS0tLXwtLS0tLS0tLS0tLS0tLS0tLXwKPj4gwqDCoMKgwqDCoMKgwqAgKy0tLS12LS0tLSvCoMKg
wqDCoMKgwqAgKy0tLS12LS0tLSvCoMKgwqDCoMKgwqAgKy0tLS12LS0tLSsKPj4gwqDCoMKgwqDC
oMKgwqAgfMKgIHR4cV8wwqAgfMKgwqDCoMKgwqDCoCB8wqAgdHhxXzHCoCB8wqDCoMKgwqDCoMKg
IHzCoCB0eHFfeMKgIHwKPj4gwqDCoMKgwqDCoMKgwqAgKy0tLS0rLS0tLSvCoMKgwqDCoMKgwqAg
Ky0tLS0rLS0tLSvCoMKgwqDCoMKgwqAgKy0tLS0rLS0tLSsKPj4KPj4gVXNlciBjYW4gY29uZmln
dXJlIHRoZSB0eF9tYXggYW5kIHR4X3NoYXJlIG9mIGVhY2ggcXVldWUuIE9uY2UgYW55IAo+PiBv
bmUgb2YgdGhlCj4+IHF1ZXVlcyBhcmUgZnVsbHkgY29uZmlndXJlZCwgVklSVENITkwgb3Bjb2Rl
cyBvZiAKPj4gVklSVENITkxfT1BfQ09ORklHX1FVRVVFX0JXCj4+IGFuZCBWSVJUQ0hOTF9PUF9D
T05GSUdfUVVBTlRBIHdpbGwgYmUgc2VudCB0byBQRiB0byBjb25maWd1cmUgcXVldWVzIAo+PiBh
bGxvY2F0ZWQKPj4gdG8gVkYKPj4KPj4gRXhhbXBsZToKPj4KPj4gMS5UbyBTZXQgdGhlIHF1ZXVl
IHR4X3NoYXJlOgo+PiBkZXZsaW5rIHBvcnQgZnVuY3Rpb24gcmF0ZSBzZXQgcGNpLzAwMDA6YWY6
MDEuMCB0eHFfMCB0eF9zaGFyZSAxMDAgTUJwcwo+Pgo+PiAyLlRvIFNldCB0aGUgcXVldWUgdHhf
bWF4Ogo+PiBkZXZsaW5rIHBvcnQgZnVuY3Rpb24gcmF0ZSBzZXQgcGNpLzAwMDA6YWY6MDEuMCB0
eHFfMCB0eF9tYXggMjAwIE1CcHMKPj4KPj4gMy5UbyBTaG93IEN1cnJlbnQgZGV2bGluayBwb3J0
IHJhdGUgaW5mbzoKPj4gZGV2bGluayBwb3J0IGZ1bmN0aW9uIHJhdGUgZnVuY3Rpb24gc2hvdwo+
PiBbcm9vdEBsb2NhbGhvc3Qgfl0jIGRldmxpbmsgcG9ydCBmdW5jdGlvbiByYXRlIHNob3cKPj4g
cGNpLzAwMDA6YWY6MDEuMC90eHFfMTU6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBj
aS8wMDAwOmFmOjAxLjAvdHhxXzE0OiB0eXBlIG5vZGUgcGFyZW50IGlhdmZfcm9vdAo+PiBwY2kv
MDAwMDphZjowMS4wL3R4cV8xMzogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAw
MDA6YWY6MDEuMC90eHFfMTI6IHR5cGUgbm9kZSBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8wMDAw
OmFmOjAxLjAvdHhxXzExOiB0eXBlIG5vZGUgcGFyZW50IGlhdmZfcm9vdAo+PiBwY2kvMDAwMDph
ZjowMS4wL3R4cV8xMDogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6
MDEuMC90eHFfOTogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEu
MC90eHFfODogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90
eHFfNzogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFf
NjogdHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfNTog
dHlwZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfNDogdHlw
ZSBub2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMzogdHlwZSBu
b2RlIHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMjogdHlwZSBub2Rl
IHBhcmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMTogdHlwZSBub2RlIHBh
cmVudCBpYXZmX3Jvb3QKPj4gcGNpLzAwMDA6YWY6MDEuMC90eHFfMDogdHlwZSBub2RlIHR4X3No
YXJlIDgwME1iaXQgdHhfbWF4IDE2MDBNYml0IAo+PiBwYXJlbnQgaWF2Zl9yb290Cj4+IHBjaS8w
MDAwOmFmOjAxLjAvaWF2Zl9yb290OiB0eXBlIG5vZGUKPj4KPj4KPj4gWzFdaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjIxMTE1MTA0ODI1LjE3MjY2OC0xLW1pY2hhbC53aWxjenlu
c2tpQGludGVsLmNvbS8gCj4+Cj4+Cj4+Cj4+IEp1biBaaGFuZyAoMyk6Cj4+IMKgwqAgaWF2Zjog
QWRkIGRldmxpbmsgYW5kIGRldmxpbmsgcG9ydCBzdXBwb3J0Cj4+IMKgwqAgaWF2ZjogQWRkIGRl
dmxpbmsgcG9ydCBmdW5jdGlvbiByYXRlIEFQSSBzdXBwb3J0Cj4+IMKgwqAgaWF2ZjogQWRkIFZJ
UlRDSE5MIE9wY29kZXMgU3VwcG9ydCBmb3IgUXVldWUgYncgU2V0dGluZwo+Pgo+PiBXZW5qdW4g
V3UgKDIpOgo+PiDCoMKgIHZpcnRjaG5sOiBzdXBwb3J0IHF1ZXVlIHJhdGUgbGltaXQgYW5kIHF1
YW50YSBzaXplIGNvbmZpZ3VyYXRpb24KPj4gwqDCoCBpY2U6IFN1cHBvcnQgVkYgcXVldWUgcmF0
ZSBsaW1pdCBhbmQgcXVhbnRhIHNpemUgY29uZmlndXJhdGlvbgo+Cj4KPiBUaGlzIHNlcmllcyBk
b2VzIG5vdCBhcHBseS4KTmljZSBmaW5kLiBXaWxsIGRvIGEgcmViYXNlIG9uIFYyCj4KPj4gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqAgMSArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvTWFrZWZpbGXCoMKg
wqDCoMKgIHzCoMKgIDIgKy0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmLmjCoMKgwqDCoMKgwqDCoCB8wqAgMjAgKwo+PiDCoCAuLi4vbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl9kZXZsaW5rLmPCoMKgwqAgfCAzODggKysrKysrKysrKysrKysrKysrCj4+IMKg
IC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2RldmxpbmsuaMKgwqDCoCB8wqAgMzkg
KysKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uY8KgwqAg
fMKgIDYwICsrLQo+PiDCoCAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hu
bC5jwqDCoCB8IDIyOCArKysrKysrKystCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2UuaMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICsKPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmPCoMKgwqDCoCB8wqDCoCAyICsKPj4gwqAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uY8KgwqAgfMKgIDE5ICsKPj4g
wqAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2h3X2F1dG9nZW4uaMKgwqAgfMKgwqAg
OCArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5owqDCoMKg
wqAgfMKgwqAgMiArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlw
ZS5owqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdmZfbGliLmjCoMKgIHzCoMKgIDkgKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgfCAzMTcgKysrKysrKysrKysrKysKPj4gwqAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubC5oIHzCoCAxMSArCj4+IMKgIC4u
Li9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2FsbG93bGlzdC5jwqDCoMKgwqDCoMKgwqAgfMKgwqAg
NiArCj4+IMKgIGluY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHwgMTEzICsrKysrCj4+IMKgIDE4IGZpbGVzIGNoYW5nZWQsIDEyMjUg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9kZXZsaW5rLmMKPj4gwqAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9kZXZsaW5r
LmgKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
Zwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
