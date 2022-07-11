Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408D6570E2F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 01:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C2E8404F0;
	Mon, 11 Jul 2022 23:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C2E8404F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657581759;
	bh=VAhfquSFl4REGOxPqiA8Lm1dTLOioMcjW1twkdl3tkM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bsH9qj4htG8y+oP4toSKbeLY/2tHCNwsZiP8qXwc63d++S4dlOKp9jhAQYKjNHVyn
	 7881sojXVwEAmYM44dZ+9z+Ibc/M2bZNA6wJ/6xurDA0UFVKg+6HbqQph7sf6VCqiQ
	 UNZOAt8ZfEdvwrLo0oNq+qYP0RdNWMrOs1NYkfRcG6c5Sc3nlQs5WSL/23qvjHfbTr
	 dS6oKR6MhNbeLbNKOVz491cvXtPCO2g6/yGPuI7QmQN8LJqEsVF+G02k/xX8Pxo983
	 fOzfvczqQQLJ+zM+Sxt3x9bQqDmIlLO9y+iShiRC23Jr/gA6I4nsO5nQ8TVJrpzNPU
	 1jH5w9O2mL5kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBj9Masl3q77; Mon, 11 Jul 2022 23:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8917403B7;
	Mon, 11 Jul 2022 23:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8917403B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 406991BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 256E7403B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 256E7403B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RlLKWGURjA5e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 23:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 406C74011D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 406C74011D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:22:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="285536548"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="285536548"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 16:22:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="662734531"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2022 16:22:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 16:22:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 16:22:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 16:22:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaMZjbi7lPlIyhfHZX+A+8xbr/YepnLIyLIT+Lrowm92NhvCj90i01Mi4yshqOrREUOV/5peN60jYP296cA5qJxrvtZw84t36YTPNvD6Rdny6TkTfFXwArMgXxGit1ERNLDBKJUbCz0Uc1I8hTqcijh1oAir/gf7ug7ORtTYr9N8uyJPqshhXvFJdmyZfjRGHE1G5aKzBOwuaP0xxDEL0J3w0dlHIuQ1x9pstJvdlgWx7cfE+F4B2Qn5s8esz/L1ohqwYITAgQFaa0Oqd64KiGBOBqVb+3cJV8+r5YrpyU1CcbMzs65UMiQj+kiBuFdMelhlxcQ6IZfAHAPHiRK26Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ljvgyB+pv/b1IxweyV/m7eWB9Lkl3ybQTXHK1XpUnVQ=;
 b=ImkAJJAhbuwtCBnIE2wBraNLBuL8pIy9TehkBO8Nf6uuScQ/o94rJHSDyi4czN2q1Lg4r7x2nYaKjFKvivbn4LEET9H6C0j/U+Pahau1gWCnVBnoRFSs4lfUgy3GytPaEZxf98ecNomZOTMhhTnSP98iSVHwoM2ay6umPktWgTJmfLlGKz9pfDIyqCJz3sOF1FuNMZCIssRYQOmw5oDCVtcxXLw5r4eLilDaqYR/tD8cV0eXaSkf0N8jvXg6BybTLJbeUH5ZoFPh5RAAYhktr3wZRDjdcOI+fJpYuMMTP4cvj+zhhpOA9blYFza0KmBmD0ypgeGLZ/gyu4l0xjEbDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL0PR11MB3379.namprd11.prod.outlook.com (2603:10b6:208:6c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Mon, 11 Jul
 2022 23:22:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 23:22:22 +0000
Message-ID: <f11b20bd-8bd0-5fbf-adab-d037c0a4c816@intel.com>
Date: Mon, 11 Jul 2022 16:22:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704074359.1221497-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220704074359.1221497-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0192.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1304d742-5728-4c6c-73a1-08da639434df
X-MS-TrafficTypeDiagnostic: BL0PR11MB3379:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7N1lWpPs8wpvt1fIzwKXgLQXoN7/YOJRuRX3Pq2P58e6ufTRlc/DHjaWBQGWcdzE6TtemkWMtoGI7Poagdno9lmExy2r/NRmxxwIyOtJab/ZCLQjhQd/4JSf61oLH5UfqM+otps5XeoGs0aXAHmG2Wps31ALrgAygRvh4iebzIcNgxmqxHCyoCXJoYBJZ7VUCznvCyKR+jZNXk8il56SDRAJJkaCCvDB1fTfsc5HoAQYFTo1EdBRfL55ZWbECOqjsA6+Ok1dAsPV4RNo/G8HjUqSLCoyf4wCXeUodsiSNMXS8Afg/wAM5CTxWQ2AOk2XjykUtZBd0Q1aiJfoiB82AtA3oxlhPSWgDJotxb4yfhMN0QvMTSfoboXShNpX7TzqiaLfLOAyPjMpf3r9JBDM+T77ELt3vcDFUln64uu2JY0YYmJdI0R8WKMh/F4+giz3fKykdkZMxAm37rG7YJB2D+EUjQi6rysNeAZYXKp3aLoXL0VvtEdQppUikeAcCP7JLEX9giojx3wGiOPVRWm740FiNUhK0rMePQ7S+HFeQ+FZt+OPX5JNgYJSHJNUgzshB2UBxWTUIofmZ3E5brZaDLHQNxnYvecaTEyBcY1qLl4TNIncRHVEFtA+WIUEvu8dnfMfYKdFUsr067hEIHfj9ad7EKBR0nxbGo2tCsNZUBekTSNCAF3/D16WYSaanRGsn1lh0uY2z01O75fevUyEkqwPKpJnxbF4uyYC71sg5MF2tY2783OkiMFtw7Nk94Ewz9NOWsV5Hg0OHFAe7mNDmlia3WyDwpheonVILdKMgbYmO8trh4ur6a9bwgf62qRvkeVvqt2zrAGnrHxpTVrcng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(366004)(376002)(396003)(39860400002)(186003)(107886003)(316002)(53546011)(82960400001)(478600001)(54906003)(2906002)(2616005)(41300700001)(6666004)(4326008)(66946007)(66556008)(8676002)(66476007)(8936002)(6506007)(31686004)(86362001)(6512007)(36756003)(38100700002)(26005)(6486002)(31696002)(83380400001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTZ2TDBnaThhYVgydEIwQks2b1lrZGw2SzlHZ2gxZFZZQ1dnWS92MTE3c3ZD?=
 =?utf-8?B?RFRNUldsT2pPeHY3aW05YUdDRW1mVmJ4SndJUE1yYlBzZnhubE5pZmdzY2Nh?=
 =?utf-8?B?M0R0enZYSVhobC9zMUo2R1BIcnhIenUzbVV3aEE3MGJ3MmsvUGd0aWZ4TDV6?=
 =?utf-8?B?N2M0SVBtZFRQc3ZJZS92Y2ZpUWh2U2pFV1hmL3NoNzA1VldFUGR0NGhEVVc1?=
 =?utf-8?B?UGFRaHd1WnFJRytUUE9kRmRRQlVMcmJzZVFEU0hvSFFrZkpkWFU5UjBHWmd3?=
 =?utf-8?B?cnlvKzVjeFV2cGxSNS95T1VPUWZqRzFwWG4wL1l0OTc1ZE1BYmN6OWlGVVhO?=
 =?utf-8?B?NWpQdml3WjlWanJENmJJSUIyWFFTVFFvbWJRRHB5dGJmYWtGMi9lbEQ1bnZW?=
 =?utf-8?B?eXVYTEN2RW4rdVRpdFU1TnNja0pJSWNIYS8zc0x5S3lXMks4ZDlNNE5PU1Zt?=
 =?utf-8?B?RmxCZ0pCOStKZGRBc3lSZ2dmc2I0OVBxSklUTTFKa291TXgvRjZrZGFpanRy?=
 =?utf-8?B?NVpLQms0R21QcStDaHN6NnRJelJwOEJZNHM0K3hsNXBNU0l2NG45N2FlVjd2?=
 =?utf-8?B?Y1FvNE9wRG56d2Q0aUtBelRXQkZYbjJQV21YemVqYU5DalMxVHpTejQ3Ym8w?=
 =?utf-8?B?ajM1TFBuSEpVSDJPaFdNd2wrTEl5dEthRzNscytGZkpkaWlzaTZUOW1YTlJB?=
 =?utf-8?B?VzFET2dGSzBkVkp4SU1DUHJOZnhyK1JMSEQ1RXFOR2c3WStraE9iQ3dQY2o5?=
 =?utf-8?B?a3RBczlTdTJyQnFtUkRTMU5wUU1SeFIwQmtjQUJKdzAvcDNwQUxTOHBpK2w2?=
 =?utf-8?B?VUNSc1drWUNxamgvcy9PekFOaHJSOU9ia1pyWnhRWkR6b1MzT0xod2RWSjVj?=
 =?utf-8?B?UEYxbFo3RjVTbko5QXJuK0R0OU1xTEI0WTBsMVNTelFjSDBkU2p2Q0lJbmFw?=
 =?utf-8?B?bkVqSzdUMnNlV09iVFp0MmpadmRyRDlwd2xXZkpYUkoyM1pNMlNpODlmb25R?=
 =?utf-8?B?ZVJBUkhROVQyVXRTN2Q2V09tL3c5RWpCc2FHdEVnbXBPdG1tYmQ4WXlhd0tl?=
 =?utf-8?B?dXQ3L21HWEd5bDN6RFZEWmpYT1hkMmd4VHFabWJLTFdlQ21pdTZaT3cvLzRz?=
 =?utf-8?B?N2xFRE9pazkrQm5xUkpkNS9WcVVKV1pBaXZERUVKYjM4ZGdBeHhQQmF5MUtk?=
 =?utf-8?B?WmZvRUtFWjhzZzkvWVpiellyNHpXNzEzVHBEVnBTOTNFT1V5T0xOcGI2RmpW?=
 =?utf-8?B?d3dtOFhuQWhCbTArK0MxYlNDeUxnclVLUnpUMHNHQVdDcVNOU2NPdWJ3YW80?=
 =?utf-8?B?M2k3VlZFRHpGV2dRZ054RGJGUUdvUU5CbytyU3JwUFJ5Ni9EdEphMC9hV0JY?=
 =?utf-8?B?UXNMMUlZNmRobFNlQURlRHB1czBEbEhlNmdhVGw0MkpaYy9NYkoxemh0RXlm?=
 =?utf-8?B?U29LbVNqQ29IdFJ0N3JENlpTTGhoVWY4UXhWbW9aM2Qwem8zYWsyQ1lGNDRi?=
 =?utf-8?B?a0czbjR4YUFJaVdTYlRTRjdEcWRjd01DUmk3TEc2ZWxkcXVNT2Fpc1dUZlB4?=
 =?utf-8?B?Z242RGRoWXgyNkE4NkVKVWhVMHZSbVo1VkJBL2FkTWhTd2Yrbng3T0p3VXFm?=
 =?utf-8?B?SmxMZ3lDMi9nMVdFSVZZQ3c0ZVFUK0pKeFBTaEFXQ1EvaWVXaUsveWpWalA2?=
 =?utf-8?B?K2NnSmNOakVHREc3bW5iWlU4TVRiWjVhanNJNzAyWHlQcWNGaGlBT1JFMC9L?=
 =?utf-8?B?ZHF0WDBJdEhKemRkcyt5OW9YdmRtcjNHWmN2QTR0aXNsakZsNEZXWmxibzJF?=
 =?utf-8?B?d0I4bWFUTENyMHpYV1NlQnU2MCt1TEdTV3N2Vmszd1pKSnRGQmxmcW1RU2lM?=
 =?utf-8?B?aVFYem1DNUlpQ3I4OGlUbityRC9UVysrTUNpVG9sSjhVeTh0YXc3SklLYlRv?=
 =?utf-8?B?eFNCUENLTHhhMFpXNkNNMVFseG9iYlQwWkd4YWJURS9GT2JQdjI1TG5GQldQ?=
 =?utf-8?B?TGZ6VEduSDZ2eCt1T2hOTmMwc0k1VThSd3RzdHJvVm1Hd1ZLeHJYNzc0YWtO?=
 =?utf-8?B?dFZSTWdaTzZzQmFyWUltZlNwbm8rRkowVFBTRGZYcnd3OGdtMVhaWlhVbTlL?=
 =?utf-8?B?YTNram9MN1lZaXF2a2V1RlplZ0FxTjlJbmlKNVVydGRFRWtWZ1dSWUNzQ0RF?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1304d742-5728-4c6c-73a1-08da639434df
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 23:22:22.1434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aZeH59ZeSl15miigPf6FTSlT2Xm2N776boZ6+JG9sBKr2SzKzRhufhD4Opg11npo4wI67Ebbwr8jar3yuSuC8+Qc4hxItSpAsP0TgVCUsNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3379
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657581752; x=1689117752;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MLl/AhSbKw4erhIWAXmMwFCYzCUJrlKxYZfEKhqjOtU=;
 b=YJlqCE8rOddfRz3GybhFCrb3ZF9kNgiadO5H46G+I5+mCL+05W88L5p4
 nnYbx9Vt+OJekH7UF39NnF9h9I4Tz40V5kXLeX7xYdK69HnJplbsqzkp5
 Hk36BQZyCkMNs3yt7Hq8JIW9CMuNU8WNJ53C3jfUv0XLUhFAL+JMck8ds
 gHW61mXjXcqeC2H4eK7eZWkuEAyUgv9hDYmBjKFpvKLLkjiAOFU2wo/u7
 vAqqvSYHK52F+Q3oRGhS/0DRGAcl91g/xLsdsPY9wSivgwctFy9els1US
 orVXgWJzb0blBDVIR8L11mUdEd+EdNoz3IDGR9p0Mk1H1vZ+Ia+9ML8Jx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YJlqCE8r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] i40e: Fix ethtool
 rx-flow-hash setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Slawomir Laba <slawomirx.laba@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/4/2022 12:43 AM, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> When enabling flow type for RSS hash via ethtool:
> 
> ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d
> 
> the driver would fail to setup this setting on X722
> device since it was using the mask on the register
> dedicated for X710 devices.
> 
> Implement a bitmap to collect the flow pc types that
> shall be applied on the inset and hena registers.

Isn't this in patch 2 now?

> Apply a different mask on the register when setting the
> RSS hash for the X722 device.
> 
> When displaying the flow types enabled via ethtool:
> 
> ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6
> 
> the driver would print wrong values for X722 device.
> 
> Fix this issue by testing masks for X722 device in
> i40e_get_rss_hash_opts function.
> 
> Fixes: eb0dd6e4a3b3 (i40e: Allow RSS Hash set with less than four parameters)
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---

<snip>

> @@ -3464,7 +3471,9 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
>    *
>    * Returns value of bits to be set per user request
>    **/
> -static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
> +static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
> +				  struct ethtool_rxnfc *nfc,
> +				  u64 i_setc)

kdoc needs to be updated:
drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3477: warning: Function 
parameter or member 'hw' not described in 'i40e_get_rss_hash_bits'



>   {
>   	u64 i_set = i_setc;
>   	u64 src_l3 = 0, dst_l3 = 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
