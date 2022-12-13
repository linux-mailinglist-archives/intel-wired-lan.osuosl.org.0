Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3521B64BF76
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 23:37:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE01981F0A;
	Tue, 13 Dec 2022 22:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE01981F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670971058;
	bh=G7/NuR6ySdKPV53/nS++a7CTqPKJTvHEg8MiH6aRUpw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bki3O39cTHQtb9bxhtYsu6YbUiEc9syMIUg1V5338+K4s11TJTOCk1bA+GWWn7uLn
	 lFPbpBoBCqN15QJq6y2kwvvq0wyjLAFX1vL6GrdCvOKIc1ba4FCOtbNZrhDc2cp9N2
	 oFxo6fhx//EoynYnbbltGdqa97KMnjLhz8I5I8ZNMP2bcoilXL2FzZv+f8KU1fN9BV
	 wLn37R/c+4q6gXO6hqJcETm+QyCFyNzaDURIm5QJryUBvFk8SBjBbfl+Z5ThNnn874
	 Ujco7EKSxgczxvh/UGxJur3nz0EpTUO9yNajkveNN+xWWXCRVJ/OBbcq8Jsx1ttEIL
	 g9pbCrpf+fUYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwVSH5vCM3vK; Tue, 13 Dec 2022 22:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A91A81F02;
	Tue, 13 Dec 2022 22:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A91A81F02
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED7BB1BF405
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6B6460AA7
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6B6460AA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-r8BvdpCQwx for <intel-wired-lan@osuosl.org>;
 Tue, 13 Dec 2022 22:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D37796000A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D37796000A
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:37:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="345323457"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="345323457"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 14:37:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="648727258"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="648727258"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 13 Dec 2022 14:37:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:37:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 14:37:30 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 14:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mB/8oxZRg/ARcpM7rhwKCP35jLn0phpbQl8sURbyNLBhvQzVWYWuhGFf/bsKmJ+oxA1TJZO+RsLiw6gpwoENoiE6eUXHK4SHHuUgs2XsDfNxUuUSqGbQ1dxiH+t1ef4HqpbaT0ffbeIteCq2iyGxO7e1pMuvdcVd3RmTEDb89WVL+tKUXb34q0nccrC57t9jXgJNe+9pin2fs+9OTIHkv/0heR/vy75+Wjp282bimzXZlVm70i2xloMvXkWQeqqJ/3xcCFPZXQPCY9dam7Ki4QUdhJsMy6Txs1v45Sx0hU/Ckv1hsvXWDpgnCVIVcvkS4kayaSPClcHNQ4AyOmicOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nEffj64JU/4Zw8BcVj9zJnMdxFhmltgxIte4e9Cotsc=;
 b=EqcZpoa2OSwOIVN12uTaqMUP+4+NveV5n1rvfYoQSU/YIW0LoP5xkHWrrgRhlJJRN4gsqfH7yFRF9aYovuYctBzSpDtaaMQb3S8eMRLAcbSY+IFPbBeHk5i7GDheASsBu24EezRqKA0uFYVDDl2O1mYPMlOoC5Vsccc96jDW9acAXlnqzGMooqoEIIccg/ByLoOliLfHqVYg5EIzIpS0OIgOaNsNBzjVuiYzpYSZYu3IhJjCKjUxGnzMZZ0u7InMcSLVRHQ7MA/EIRCi93iXa0ih/Zp6ZCloeU1Pew4ClGsHa7QB4DcQlgG6RuAt5FIGiIrT9Ondq+0109kA1UZ1xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB4976.namprd11.prod.outlook.com (2603:10b6:a03:2d7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 22:37:27 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 22:37:27 +0000
Message-ID: <6e464647-1f4b-8f5b-9955-fd9ebf8f6ca5@intel.com>
Date: Tue, 13 Dec 2022 14:37:24 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
 <20221212023706.13384-4-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221212023706.13384-4-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR05CA0158.namprd05.prod.outlook.com
 (2603:10b6:a03:339::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB4976:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c3597fd-c296-4c99-aecd-08dadd5a9cb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: igzyFVawpIT0A+HriZajU4mTdeDDH3b7uhjgFJueiz8Qmz2UFxwf2KWJFV6xepVIfEwjBUgLCrMBj0tW1VhDznSKiI1c7iESij1MSgJyPq6VyyLJNCpebUb3TtgjqhBn2bBTGceTmwpQSdPPfoQLbv2kjG8lNKWXDUhbLP4MAfEYK9HnFnAd9UlCc4n+ANDEs2ZlWsf0NyKNCxcQ4ERyTsJ6QqSV8AHR5L2RpB9BomtZGvuJw8y+QPc2q3lUJ1vec4FCX5K4kl1cSYMUXRLlMobwZQl60GUHYVD0ojV6fkGuECobt/cLmAo54t2K6WPLz8DYNg9a2YX41paBl9l/MNJvXh3MjW7WIPeMXfUqX2MHfiZvgUTuZwz3Or+/Ezq8DU/cRw510p0NQUqxBMA8WxlBhW+XwBiUGYLI+VtiBHQhxA4T66bXYc5RVL5U9vpBkvbGbQzHdwEI34OaEbnzaBK4t1WVk1gzpnfybTTCfTcgtSX82u8oTy/kvoe9WffYnUw87RSxMgT0pldENgYxhCBZzxr1aY8DAALFYmXyTLWn4QVShY2u3U+gXjxdsgEHGAE6iTpsmwnT2mv5wCvZgabq0zJlGaY3ImFO9Aa7G9e3mmQPFgfVxMkm6RulbJQS2C37erUdMVgb1v2X80mqREIt90M+qNFD/cq7HkariC3ixHZ+oD7cbA/uvS4fzHdDOdtFr/JUclwP8ZDIeygzRWZrWzetoAar6DYhumYgPr0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(36756003)(86362001)(31696002)(5660300002)(6506007)(6666004)(53546011)(2906002)(41300700001)(83380400001)(6636002)(4326008)(316002)(66946007)(8676002)(66556008)(66476007)(8936002)(186003)(26005)(6512007)(82960400001)(38100700002)(2616005)(31686004)(478600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REQ5RzFPUmNFV3FEYjZPM2FRejRqWXptanpQRm9IS3JQRVdKdEt3R1UxWjJE?=
 =?utf-8?B?NXlMSVlHNXlrYXBVUDl6MWtxNThxdEZ3ZWNudUNiV0lHeTMrOGNXZk9xVXlW?=
 =?utf-8?B?a3IvVytTTDRxdFRwcm4yZHhpc1Y3dVpiR3FUNGNPY0FHSEtqSGY0dW95QXpH?=
 =?utf-8?B?Qkd5SGJJY3F2N1NwVTVKYWVKR0dULyt2QURwcFVvWFdLVVB3bUFNaGVZdTJS?=
 =?utf-8?B?ZTduYkxwSnNYak5yMHRWTXNhRmJCNXVCTGZPRVRQTWJDWVB4MDNMWjEyT3d6?=
 =?utf-8?B?Q3JaQUxDK3NzK0xvZHRrd1FsTEJFS0VPNXoyQVhUNk9qTDhjazlyQnY2RVRp?=
 =?utf-8?B?bkpqRkZ1NEhsTXpnbnFJUlFYb08xc2RlSGUwaGRSYnZkeENmQWlrY01pREho?=
 =?utf-8?B?SUVGT1NRMHFia3BROFdJbTlQVzhxTlV2bzloZERTdjNyT2xRVmJ4cmx5eklT?=
 =?utf-8?B?UWdVR0x0UDU3djBtcDRheUszSUd5Z0E0bmNuRDRsTnBPZ1EvYS84blJ4Tk5u?=
 =?utf-8?B?UmJjdXo2TjlEMjhDNlhlamgzMG1KSDM4dTRnd0tiVVVhZlFwN2w4V0QxdStt?=
 =?utf-8?B?N2pFazBaUWhTQ05zQlk0SWZqb0pBNlNTMExGd2FFOVpsREtlcjJoSm42a0NM?=
 =?utf-8?B?Sm9PUUplQ2JWNEtpKyttQTJSbXY4VjdMcUcxOUdPZEZhNjZ5R0JxNlNkQUx6?=
 =?utf-8?B?QUR6aXhhSkpwZVYzbTVzR25hbVpndk5acVhXUUF4MVNJTnJGWlRPRXlsQ2dB?=
 =?utf-8?B?dlQzWUR3Zk5NYnIyZ1hVMXR0QWhxdVA1SFpycFBYWDRCeitBSHdIMEwxOVFu?=
 =?utf-8?B?RmIvUm9uSVMrb0NZZG1kQ2xwQjFlR3RWcDkrTi9KUUtjZXZJNXBoUEZDcHdt?=
 =?utf-8?B?eXlsOExxTTF0RFF1V1FmSDk2VXhNb1B3NWtLODZuSEZ3blo0S0JUOGNWYVpj?=
 =?utf-8?B?WVB5QjFqVEJOQWsvbzdMY1Y4Z1pSdnQxZWNrSHFmNTNldG9ta3VxTHJDOWU2?=
 =?utf-8?B?N09BSXJPK01Pd0pRZlVhcmovc3ZsZkJvMXBYcnV5bmU4SmtXb2lsUzVnRTQ1?=
 =?utf-8?B?RVByUkI0Q01XdzZzMWZIMzNDbUJkNWY1K0lyWGtuZThUdThqYlh4dmg3aG12?=
 =?utf-8?B?WjZhWlljbTJpTlJQSmR1QThsVGxmZTJwYXpFNjRVOEtLTTY5RnFVckJwM1NX?=
 =?utf-8?B?VEZQZE1QUWtCSEFGdVNlNlhSYUUzMVp0cnJ4amI2U3BVUWFxNnJxQkRhRmhi?=
 =?utf-8?B?bTc0T3FUdEFTVkJ5US90TVBrWnFXKzZocTU3TVVnZDRnWkxIdXJwZmlxdk82?=
 =?utf-8?B?eUV0QnVVcFhSeXJSOU9UR0NrNzQrdlVFWU5WQmxnMWlQRFIyQlc4dm9iaGlI?=
 =?utf-8?B?QkRPSDJVOEMwR3didVMvL29BRm9BTXBxbDNDWHJHZ2V3M2lMS2VoSkx6cDVp?=
 =?utf-8?B?bGZsNXFJWWhWKzFwNGp6RW9VbHdVdS9ONWJYL2lmMzZsOHcvWXhQRGg2Mk0x?=
 =?utf-8?B?aTY1MW42dk1idTU1dUFGbDRxS0hIaktNVjhLZ0dlMFU2SWxhVUEzR0NoSnph?=
 =?utf-8?B?STF6dDdNWWtFN0xFNzk0R1JWN01BeFVxUW5mQ1V4Y1o3dzd1UW81aHlqVXVX?=
 =?utf-8?B?SEZSeTV0aW53ZGJBbDZLbnNmZkJtVGxQK2ZKYXBxd0VpenZibmZiR1dDcE5x?=
 =?utf-8?B?ZDVrZ1hXQlByU0MyRWRDWkdzdGliSkpKMzdBTHU1dEJXRjIrWXo4VFBnaWtr?=
 =?utf-8?B?aGFzT0lWa2cyai9QQ2tVMDlnNHA1bDg3eHZqYllDZVNoL0FiQk1SNkJEUWRu?=
 =?utf-8?B?dFlCb3I5bE53MWlaOXVNRkVFVG9HME9aTWFVckc1ZkxTMXZLWmgrcklQT3JP?=
 =?utf-8?B?M2RjanpFcDg3UEdTT1FvdUtSR25vUk55U2NEelZHWTdsb1dYbzhxQ2g4dE1T?=
 =?utf-8?B?MWNLN2VneE1XNjkrSnlxeHFKbmR6UHlzT0xIcDVKR09RUU9EZEdmRHFWNFZs?=
 =?utf-8?B?cnVzUXJ3aGFrZHhVWXBFbXY0VFJwQVN0aiswb1I5Q2YvYTVyeWI2MWQ1YW84?=
 =?utf-8?B?eW1VeTVOOEV3bDZNcldwemxvYnFDWTFwdDNzMWx3azRmU0V6Y0RHSDEyMFJU?=
 =?utf-8?B?eHNGTGlrQ3RoM3h5dVBXM2xDNVB1Wm83WHhIK1c5TFBoMXMzcGYxdU1aQ0FX?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3597fd-c296-4c99-aecd-08dadd5a9cb2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2022 22:37:27.5378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vi/ulmw9R3n87ZPe4HQLL69JWDZg+Gysa3q2WNcyr7vMqyp2BkMAEFOUUyu5kIaHBbToZVeq3Nsr/aARwA6LWwZ2dR8zShiGd9geY052nI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670971051; x=1702507051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sFQZbh7rMZxOy0+Rz6ivANBvdqcGoBCX2BCsG4AqdpA=;
 b=OMG41dj1P7eCKDzLogYCuhnbkldQO9eqW8QZJ8XMfT1e2ktli9h285Q2
 8sAyMJ7yR7lh4PidOog8ifJ3i03DjpdqDNTzllQNiQukzFpVUJtq35+ei
 BuKo+BylxwI+JpiV8AfbjEvrhovKbRxQU3vGEej5coYvIITECCcasy7RY
 FxlHz3S/jD1j5AwkE1BgLOfLmJcRTwt4tBvX+oIKPcTboc+3uRYe+hUlz
 kh6YcJHdJfikV120XFal5guLX1DxdTrU64qDbjJLGQ0oGR6S8kYPdCCvf
 yMc39il5NRkHKfkEAEIDztgEdYg1uGWR6KwHPv4NkqoFdYk1WMIjSw6tS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OMG41dj1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/3] igc: Remove reset
 adapter task for i226 during disable tsn config
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/11/2022 6:37 PM, Muhammad Husaini Zulkifli wrote:
> I225 have limitation when programming the BaseTime register which required
> a power cycle of the controller. This limitation already lifted in I226.
> This patch removes the restriction so that when user configure/remove any
> TSN mode, it would not go into power cycle reset adapter.

This patch is mostly undoing changes made in patch 2. Is there a reason 
you don't squash the two and mention the net change in the previous patch?

> How to test:
> 
> Schedule any gate control list configuration or delete it.
> 
> Example:
> 
> 1)
> 
> BASE_TIME=$(date +%s%N)
> tc qdisc replace dev $interface_name parent root handle 100 taprio \
>      num_tc 4 \
>      map 3 1 0 2 3 3 3 3 3 3 3 3 3 3 3 3 \
>      queues 1@0 1@1 1@2 1@3 \
>      base-time $BASE_TIME \
>      sched-entry S 0F 1000000 \
>      flags 0x2
> 
> 2) tc qdisc del dev $intername_name root
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c |  6 +++---
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 11 +++--------
>   drivers/net/ethernet/intel/igc/igc_tsn.h  |  2 +-
>   3 files changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index bf66395a59bb..fdb7f0b26ed0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6003,7 +6003,7 @@ static int igc_tsn_enable_launchtime(struct igc_adapter *adapter,
>   	if (err)
>   		return err;
>   
> -	return igc_tsn_offload_apply(adapter, qopt->enable);
> +	return igc_tsn_offload_apply(adapter);
>   }
>   
>   static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
> @@ -6117,7 +6117,7 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
>   	if (err)
>   		return err;
>   
> -	return igc_tsn_offload_apply(adapter, qopt->enable);
> +	return igc_tsn_offload_apply(adapter);
>   }
>   
>   static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
> @@ -6185,7 +6185,7 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
>   	if (err)
>   		return err;
>   
> -	return igc_tsn_offload_apply(adapter, qopt->enable);
> +	return igc_tsn_offload_apply(adapter);
>   }
>   
>   static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index c2cc5d406213..b03c6168bd23 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -289,21 +289,16 @@ int igc_tsn_reset(struct igc_adapter *adapter)
>   	return err;
>   }
>   
> -int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable)
> +int igc_tsn_offload_apply(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> -	int err;
>   
> -	if (netif_running(adapter->netdev) &&
> -	    (igc_is_device_id_i225(hw) || !enable)) {
> +	if (netif_running(adapter->netdev) && igc_is_device_id_i225(hw)) {
>   		schedule_work(&adapter->reset_task);
>   		return 0;
>   	}
>   
> -	err = igc_tsn_enable_offload(adapter);
> -	if (err < 0)
> -		return err;
> +	igc_tsn_reset(adapter);
>   
> -	adapter->flags = igc_tsn_new_flags(adapter);
>   	return 0;
>   }
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
> index 631222bb6eb5..b53e6af560b7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -4,7 +4,7 @@
>   #ifndef _IGC_TSN_H_
>   #define _IGC_TSN_H_
>   
> -int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable);
> +int igc_tsn_offload_apply(struct igc_adapter *adapter);
>   int igc_tsn_reset(struct igc_adapter *adapter);
>   void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
