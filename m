Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27B643209
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48511817A6;
	Mon,  5 Dec 2022 19:23:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48511817A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670268234;
	bh=gE4pfz6x9Fkc9EMhMMBHWzQXRu5dN6/2ZVJWrGSEPbQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mXTmFsyq65ZAXC/hP2M1n7e26fON2TU4JCWrjIftWLogB9LNizy1nT6WgenLEG4pr
	 Whru9rIrlESqzJR4K6Wv5Ore9e5jZVl9Cao6SbCNi6caC+KJvmkz5l+QuT9jnBvIel
	 gs3nSjtSvGF7BSr53+vwmzNUn4AGzUqcTXKCHFlEmGhKzEGSEaWnxVGshBB7Xx8CSm
	 97GT01tNNRt0GkvBo5GLginevCS3+wWNO3vR4ZgJvuM1f5/EfioVOMH65HoaAL3iCO
	 ipinyWMS5a5jPKUMpX7KNHNVmMBMmfcRx8L22x+mjHC0VFFEUIDCYH+s92LOfuWpeH
	 LGt3wAacaKIwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJ23KCE7ikXI; Mon,  5 Dec 2022 19:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28D50814B3;
	Mon,  5 Dec 2022 19:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28D50814B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7256E1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58F7C40199
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58F7C40199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36da-FfyZ-6o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08AA240193
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08AA240193
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:23:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="343458205"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="343458205"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:23:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="678473698"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="678473698"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 05 Dec 2022 11:23:45 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 11:23:45 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 11:23:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 11:23:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 11:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCUluxKAHfGwt/3ZCf92gd9I17yORxiYaRlUrqre8kpVKenogV5W5MRSphFqo+ussnmMPhIxfQ59PkltJOINLAaGluO4PNwIX9XY19oeeFVeLozECRki5Tcvu1vtire9sZ7pcrhYp91ElgWmFEO/5KFIlTHWJKAB5hxTK6DbM5/gidd47pkipryD5QMU1FFOqtodn43/fx1cLlRxIJv4nqmHcCWaus2rbHZ+JmJqq2jyNGNgqvMFYtaQOKOu6jyDsfcUvZoAkc9WexrgU1h7t/AQwDIjY06ieT3t2t9ncTGZXZwS/0A50Z0UUPGPPt3w/3ANXtxvCzCH3ktVByzj+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcwIWmL1+/22nZFxK8/RGpfcW1gizkHLFl4i87hEWwM=;
 b=WkqYUrHnlETCwDel98uVY9gGKg9uowBT6z0sQKh+KJp/KufvsV3bQ3THiVwV282Fnf5Sarpt1MsxqcODnZFHaUMUeQKdCd7RJp55DjVhL2DPJv1xVScLwIbpvRHQKY7OaUM3qYzLSQR7sdbCaMPXdnk4nX47EKic4vNebZjKSoWtaJdQ7gMVIldTXUaA220NxW/UPyICzjBmlhp60zJ4x/pwNTaTcAtlnI8AhkgUqVIybhH6zBdQWAKoAoJxtCCmIJqCrh0svorN4Uhgjq3L0C0J+YXKq0jspR+xnO3GjHfGpMpn/d8Yg4+nwj7SabAkyGjPVkbJzFXRK1fBSLixdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Mon, 5 Dec
 2022 19:23:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 19:23:43 +0000
Message-ID: <a565fa22-60e4-b3d3-0ebd-7cb4b91bf55b@intel.com>
Date: Mon, 5 Dec 2022 11:23:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: <intel-wired-lan@lists.osuosl.org>, Akihiko Odaki
 <akihiko.odaki@daynix.com>
References: <20221205173721.2601589-1-anthony.l.nguyen@intel.com>
 <9af50fda-36b4-483a-4a0e-21bcc6d25ae9@intel.com>
In-Reply-To: <9af50fda-36b4-483a-4a0e-21bcc6d25ae9@intel.com>
X-ClientProxiedBy: BYAPR08CA0042.namprd08.prod.outlook.com
 (2603:10b6:a03:117::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL3PR11MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: 96974b85-cdca-4b86-c4a9-08dad6f638be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qTdAfh4mc8OfueCQoeEd7a9o01Qvn+Pd2jjvMiSzYTc+xhWNzJ/demNV5cJ+quwG4qmu+dKp2/TXi2bGYBLaj6YxRGmMciOhGEjC6DN2NOVtRjoPsrDDZCGGRQT2+jgX4YRgfdZDFkl7Nr1d5TNpP9dq1EAxGnUOIRMomtcmf+sLC/U9E1FStPMHZWSiju2BwKBn395F/OKUHdP8i+QLx3HoxMwqiN6zqRH/w9PnLHByjf5F5xqISwCtvCyILA3B0G/pMontfwzrGFGT3+zfujX6cRq81mo4/R/5Gqd4yup+O9yvvXXfJexN4yb0wrDxbhTrVM1kW39/QDmPa+nN5GwRKs0Hqkv5bl3ptfjYefJIW8EHBpwx0sBjMDhw+fC2jvqOKvs331ulPJxoYpfUpoxPz+SG9yhXtLO2oUO07It/8y7jlz3G/n/+Jd31mtG1zk0umqnJa1nepRNEXL1VFjkkUdq4DFzoCFpzqHNpZkVB0Pg6zK06Vo35/Idwe9+4SaB8DmRYImzCKgUbROk0mYCLLSnNEdyqpPRT/GKPV/2Y6jSl3qgtVrD8ufkcq/pUWNRK1/E6M1rQnEstx655aOez37tH2SoojaJkRjVkKzMXzIJ4ttNfY9h+gnQ32+AW/xvwoHL+14ApoQss4EpFOx+5Q+vTwU1ZYAZ2TVilxFmVcRrDIQFXt7q4f65Lw32WSevgizN62EgTuz1ca3iR5LRe9uBSOwC6mirlN4r/y5GuEr8jQZr4XoINgSU3B/toSCnxdxdb2eqaU6FDhk4CpKmqnmwFQMieK7+B2gqSOcs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199015)(2906002)(966005)(6486002)(316002)(478600001)(53546011)(6506007)(6916009)(36756003)(31696002)(86362001)(66476007)(66556008)(8676002)(66946007)(31686004)(83380400001)(26005)(186003)(6512007)(2616005)(38100700002)(82960400001)(5660300002)(41300700001)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUtsRnRpTmg4TzkraTFMSmdMUFdidnVmTTAwU05xazVBa1g0WU1XS0RuYUJo?=
 =?utf-8?B?WlprKzhDS2dOVUt3QXlzalNNSXN4TFVEVThFQ1dxMDJ1Zk1FZ2dBM25GRU1v?=
 =?utf-8?B?cEJJcFdaVlJjUFQ5UEtNajNuR3h2MW5jRlNtYmt5S1c1aVdwWUFNL3h5ZkJ0?=
 =?utf-8?B?MnVpekZxSkRPUGVmRFhwWkZiWXZyMUs3RndOWWRNSy9qaFpPK0hhdlJFNnhK?=
 =?utf-8?B?U1RjbHdpNmFsSVJINWlIRTFtZnRIQU9GbW5uTUxFZGZOTGRob1pISVB5bVFZ?=
 =?utf-8?B?czJQaHhLSm1Ucys3aGdEbDIzMmdYVlB5dm5UZnlTWGxqYWJvN0J4YkIzTStl?=
 =?utf-8?B?VlJBODdUN1BsWUg3WTlVTmgwYW9iUXJGVmowODdwL1kxaEJGb0NtZ0JCNGFZ?=
 =?utf-8?B?WDFsVURGMWJUL0lzUDRrRVZSeGN5OHFoeGNVMTU5cHMxeG5EMmRjYmV0K0Ux?=
 =?utf-8?B?TnpFZXZNT3ROUVNoTzB2SHRQTUJIQ2J4NS9BemZYSWphMXVBK2RNNGw5cW5l?=
 =?utf-8?B?ek1uMDdEcDhaMUcyb2EzMVQ3UnJtRGg1WlR0dzFtQXZPNHFhdEJFd0Y1UzU5?=
 =?utf-8?B?eHA0MGhjWG1rMWVCNXIwc3I0YW4yVFFqckFVYzUyaGpUa3c0TkpMSGVNNzRW?=
 =?utf-8?B?aGRKTks1RzBLVGpQRCtOYUxMZDVjRmRjdG5nRGZzQ1RUZllyR2NuUytTT1ND?=
 =?utf-8?B?bHk4akVIQlRTdHV5T1JjNS9mNjFNUEc5NzlQdXFvd0FQR0tXVWN4TUZtaHN0?=
 =?utf-8?B?c2k2TnlCdkRaTVBqRmJBcXpnYWFMM1lnMTdvc0tmdzUzYzRTV05vV1hDODBq?=
 =?utf-8?B?RjU1MVJLWTNjRWtJRE9sNDRTUkMybU5rbEtoVzV5OUxCalB0REVKWWNlS290?=
 =?utf-8?B?L2FpSHJwUSt5MFJtL3JhS3cyZHJzTDhtRzhtdElYZ1V4WjRpVTl6WWtVcElv?=
 =?utf-8?B?ZkdOYlFqNVRDYmJPT0ZWS2hGM3FXUnVtbXdXWlp6Z0toaXpYNjJGeE1QWHo4?=
 =?utf-8?B?WmlIWFM1MHZDbWlueURsdzI3b3VRaDVsVmtVNmNsbzFqSG1kcjRHbUdxN01u?=
 =?utf-8?B?N1EwaGprSTRrQkRXT3dsK1B5M0c4azhHejNPeVNHWnVIcFVCM3VKditwbWVG?=
 =?utf-8?B?VG4vcG1QMmpidGFiY0VxWXM1UkxKZW1Fb2d0dTNiWDJCNEFYcTBia0NmRjEx?=
 =?utf-8?B?d1hES2pSa2hhV0NxQzJoRzQ2bURkamhQT3ZueGhhUFpYQ3VvZkJnaFpPK2JN?=
 =?utf-8?B?U2hGYkhqMXZsdFovMldTamlOMTRkR0JpdHdrdU9PNTljbVJUS3JCaVJpekVo?=
 =?utf-8?B?Y3BkdDc5T3lzMC9rT3JUd3oyU3o0UzR3eS9WRjVTQjl2SFhlR3A0c3o2SzlH?=
 =?utf-8?B?K0xWaVZmU2pPRG9zQWtnMzVaMjU4czAyelJXVXByenovdC9xUFp0YStmS2lZ?=
 =?utf-8?B?bGVyU0w4bjY0ZDlHdHZVSzFFSlhheWMrcmlxRGJwajRTNHlGUjh1NjF2QTlG?=
 =?utf-8?B?L2dHd25ucEc5amE0cTVPbWp2M2JOTXd0dzVwKzhySmk1U1VoTlVwNWs5WW01?=
 =?utf-8?B?QUJ0UWl0RStQRFRXb1pUTlFYaW5Ub2p2SmsyVS9NRXZkZE5xOFh0L2ZZN1RF?=
 =?utf-8?B?SXUvSGRFcjV5UVA5M25YTWYydEN0Slg5YXVFdW5vMyt2RUdGK2RZU3dtNFJB?=
 =?utf-8?B?azNNY0RhdGV5Q2xNWXNCQ1FVaE4vcDA5YktwWXNLVmpEaVNVWkdyK2VxWmJs?=
 =?utf-8?B?VC8vVnZma3JsTTQrdEJRL3l5dmFmck1RQmRqR0w1bEhWK1BxVnFyT0ZrbFBB?=
 =?utf-8?B?VVFLTG1MR2FVQ3pZRXdOemdhbXR1a3MxSEUvc2M0T20vTW1JNjV2eGJUMVFD?=
 =?utf-8?B?WVNjcldyYi9ZanhabjdtSWd6MVZTUzRaa2RYaHNaRkMycUZQUkxMd3dyZTdI?=
 =?utf-8?B?M0NKVVNtRUZxb2dIYmxJUGs4eHBJbnUzd3JXaGpmOTRWSG81VTR4emxzVHlx?=
 =?utf-8?B?cWVBUUxRVkRjN0hpcEdDVWVubm8zZ0twQTN1UHpCMlNINzFYMDZON09aQmhm?=
 =?utf-8?B?Z05Td296ejUyUVUrNGVFeFk1am5zWHQ4ZEh3VnpXazg5M1RBKzhDeHkxa2Ix?=
 =?utf-8?B?VGtZM2lBZ0Q3RHBmYnpiNXpwSmx2Nng5NXcwVXR1Y1VFQXplTUpvUVZWSlpX?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96974b85-cdca-4b86-c4a9-08dad6f638be
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 19:23:43.0546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pDh3IPLczeL+w+BWPDeOf2H71OvX2JygYTTKa25L+cd/f5gB8Kc3BWeb22AsErkl2zvivZ/0fm1JGn8F3Kz1/4aJNQS4HQ2zxaFnD/d8i+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670268227; x=1701804227;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UyjXDoCacSu/eQEOFv3Q+Nckvc1ZmqHNq9hr/SYQoDg=;
 b=OyhhVSxeHjwjtlY6QncxbzZ054fNNUHzpInUkEsehro8f5gSC7rjZrz8
 KewNgtrOy+vRHRL9uB4jtQoOnudgdN9hA9lYtjoonfFjSOWWgRUsHfb5m
 MTfxcdDGeiDtPtgpiN5rsTfOEX7B60Hm2SRs1QhWMDLE1G6l10Uqo5cNX
 AfUPgRG8R3WciDbJvLtQ4ND0MFlpuudOraKYn/4uEdeQIoe6GgAJQ3DB0
 ogVpl87zTokOVy0sGLSIli0dp6HdrvUQ9LucXUQeNFwah3qJeiTt95cD0
 jwbDXCnfPZLP5Vk4bTlFSyqGrGhEgGzqX9b1DOXwLo4HpNWpmX9bKbjY7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OyhhVSxe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Patch net-queue] igb: Correct vf reset
 response size
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U3BlY2lmaWNhbGx5IGFkZGluZyBBa2loaWtvIHRvIHJlc3BvbnNlLgoKT24gMTIvNS8yMDIyIDEx
OjExIEFNLCBUb255IE5ndXllbiB3cm90ZToKPiBPbiAxMi81LzIwMjIgOTozNyBBTSwgVG9ueSBO
Z3V5ZW4gd3JvdGU6Cj4+IEZyb206IEFraWhpa28gT2Rha2kgPGFraWhpa28ub2Rha2lAZGF5bml4
LmNvbT4KPj4KPj4gV2hlbiBhbiBhZGRyZXNzIGlzIG5vdCBhc3NpZ25lZCB0byBhIFZGLCBzZW5k
aW5nIEUxMDAwX1ZGX1JFU0VUIG1lc3NhZ2UKPj4gZnJvbSB0aGUgVkYgdG8gdGhlIFBGIGNhdXNl
cyB0aGUga2VybmVsIHRvIGxlYWsgNjQgYml0cyBvbiB0aGUgc3RhY2sgdG8KPj4gaXRzIHJlc3Bv
bnNlLCBwb3RlbnRpYWxseSBjcm9zc2luZyB0aGUgc2VjdXJpdHkgYm91bmRhcnkgcmVseWluZyBv
bgo+PiB2aXJ0dWFsaXphdGlvbi4KPj4KPj4gQ29ycmVjdCB2ZiByZXNldCByZXNwb25zZSBzaXpl
IHNvIHRoYXQgaXQgZG9lcyBub3QgbGVhayBkYXRhLgo+Pgo+PiBGaXhlczogNmRkYmM0Y2YxZjRk
ICgiaWdiOiBJbmRpY2F0ZSBmYWlsdXJlIG9uIHZmIHJlc2V0IGZvciBlbXB0eSBtYWMgCj4+IGFk
ZHJlc3MiKQo+PiBTaWduZWQtb2ZmLWJ5OiBBa2loaWtvIE9kYWtpIDxha2loaWtvLm9kYWtpQGRh
eW5peC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdi
X21haW4uYyB8IDMgKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2Jf
bWFpbi5jCj4+IGluZGV4IGE1MDQ5ZTM0MmY3ZC4uNzQ2OTRhMjdlMzVkIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+PiBAQCAtNzU3NywxMCArNzU3
NywxMSBAQCBzdGF0aWMgdm9pZCBpZ2JfdmZfcmVzZXRfbXNnKHN0cnVjdCAKPj4gaWdiX2FkYXB0
ZXIgKmFkYXB0ZXIsIHUzMiB2ZikKPj4gwqDCoMKgwqDCoCBpZiAoIWlzX3plcm9fZXRoZXJfYWRk
cih2Zl9tYWMpKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtc2didWZbMF0gPSBFMTAwMF9WRl9S
RVNFVCB8IEUxMDAwX1ZUX01TR1RZUEVfQUNLOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWVtY3B5
KGFkZHIsIHZmX21hYywgRVRIX0FMRU4pOwo+PiArwqDCoMKgwqDCoMKgwqAgaWdiX3dyaXRlX21i
eChodywgbXNnYnVmLCAzLCB2Zik7Cj4+IMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIG1zZ2J1ZlswXSA9IEUxMDAwX1ZGX1JFU0VUIHwgRTEwMDBfVlRfTVNHVFlQRV9O
QUNLOwo+PiArwqDCoMKgwqDCoMKgwqAgaWdiX3dyaXRlX21ieChodywgbXNnYnVmLCAxLCB2Zik7
Cj4gCj4gSSBqdXN0IG5vdGljZWQgdGhpcywgYnV0IEkgYmVsaWV2ZSB0aGUgbWFpbGJveCByZXNw
b25zZSBuZWVkcyB0byBzdGF5IGEgCj4gY29uc2lzdGVudCBzaXplIGFzIHRoZSBWRiBpcyByZWFk
aW5nIGEgc2V0IHNpemUgb2YgM1sxXSBmb3IgdGhlIG9wLiBXZSAKPiBjb3VsZCBwcm9iYWJseSB6
ZXJvIGluaXQgaW5zdGVhZCB0byBwcmV2ZW50IGFueSBsZWFraW5nLgo+IAo+IFRoYW5rcywKPiBU
b255Cj4gCj4gWzFdIAo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9z
b3VyY2UvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdidmYvdmYuYyNMMTMyCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
