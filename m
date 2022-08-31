Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA55A876D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 22:17:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAF4E8193E;
	Wed, 31 Aug 2022 20:17:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAF4E8193E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661977045;
	bh=obXZ6wExbS0yoAAjyLwko4OZyP3087TljA8E5MGLGXc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7YJNYyuIBIYycdllzfaFj8i74PwAbCkqK/3DmboMbJEKc3D9gVjs/+AO0v8UOJ1VY
	 4+TeXzU70nM7AKIcvFDM3M4JQl+WuZIRtMUnU3L6QMBmbzMYPKuMuZS4yd8ymKash9
	 T49ty5VOVbZWTnzf1uLUJMlnFqUJPh94DjEmcaCTjyKEnhRZCgsJ/seVgc02KqTtyP
	 LQTJpL3Jw+QAvJVzIPbMLq18QKBlB9SEU45z7qTcd7LnM1goyqY6ugH6Odcr0O4MXw
	 rimYVg+syTz679Q8Svj+IK6XZ7c+wT66TFkj1R4+dbu0mUzuDVnebE2xxczp5gsaP5
	 bzRbWFHLOfVHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbyEOZ0A5idJ; Wed, 31 Aug 2022 20:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A270B81C2F;
	Wed, 31 Aug 2022 20:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A270B81C2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B37FB1BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AB8C41928
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AB8C41928
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rySUV34vxw4J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 20:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3700141913
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3700141913
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:17:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359493970"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="359493970"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 13:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="673504019"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 31 Aug 2022 13:17:17 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 13:17:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 13:17:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 13:17:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 13:17:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XbMgjfIEFat5f6NnhL/0GN2hynqulzN+/JdyYjH3IonMcZLh732x+5tbmnfnJVZhEdu/k26z1uUngXBIg5v2xsYRv2iLnAPtxANWBRSBZ2Ry6FGsFQbqFFH/5J+VP/vAo7Go4BwQFMXolbawqrsQS+QJRfJ1520rcUJ7QWWYRKbWUyJXidCYkQ1owDlmJISfcq7h1sAYOJeRcUX1jVHjiwRoKaLQME2vY7U9NJ2UbZMB1bRBLOJuTJ7v/suftuIrslOV3bnP2ssP5xbRY1aOkmJ2XU59PVpnuZmkmCAAjapM8iWk2WwG7um1JYMazeDJ0e1nidPSXBmeeuqMu+cCqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbLABIEmu9Z9lx5ksBfl340oE8DfFiIwSg1D4leadA8=;
 b=TudFmr/Kfmg+gGRwV6mCpR+uT1CJcE7zdg8npfBkI102nCucB+HtItTN+brlpNMvXKcUzskD+CLS8v5xMnuBHuXm1mom2fJjWY1bYomqj7ciwclLsUQGH5G6J70WeusnQwzRhif9d2bOb7kNT9lH5n113RcvkeM46Fa3vdRmNGTWSuJ8cjXq1OELfhY4MtBwKD3qwysn+Inrn0PRLCsHkZ1Qnu80eKpC9dA5ZN0N6NTm3JdZlUwq6cozEG+PiyS8AF00QN1r0o8ttHrKf96hMirPcF0ChuBHHgF61lrlVl+Z3YdVmCGQgP+sYkYCds2dWMugKpgJ3j9+i7YSOEI49g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB3307.namprd11.prod.outlook.com (2603:10b6:5:9::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Wed, 31 Aug 2022 20:17:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5588.010; Wed, 31 Aug 2022
 20:17:13 +0000
Message-ID: <a4c72688-8b11-3ec5-7e11-ecb0145d1695@intel.com>
Date: Wed, 31 Aug 2022 13:17:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220831134915.7053-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220831134915.7053-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BYAPR08CA0038.namprd08.prod.outlook.com
 (2603:10b6:a03:117::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99530e30-ed74-4bbb-a4b7-08da8b8dc9c4
X-MS-TrafficTypeDiagnostic: DM6PR11MB3307:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ICIf0MdwOVEK89BSq9rTVTCDShW60jhyVFMqYnHAyW3Ne7bxlwv4SF+IuHoLHOCIpYoTZTE/RMprFr5ubGQDFAdk51KDRJScPsR+qbaCd+OgCff4eDwBEDIUF8oyVqAs1iB95wwT4G24IRYitJ/B0JiP/s90ODfoIUjloeboB6kj4uGPZo262scq8mY/IZXR70qVBmdnqI/XFswQh2+L/DNBgT+SLM9Nwabr/PeXvogL+QgLdc9G5rmk3ByN4mDMDn0+rs5elGjSWTIzDUN0Vo3oiD0kFXycKhTwJJfMlvdTUlgL5Er6WXCXykCtqI8JP3N7Dt1n0+fF38jumCA/FfGBYoqdISMTnfvmUdk67B3JewYmApSabMMtDcc+tkooFRaqILdJYiFmVsG3GAb6UIkmEAKYXKEnmNgvQ875LqlRVFvOVglFnXCH5ZYZROBczzS3Wo7k5QV32cbX9C0e1EtY9sd1D6+zxfYs6aln6eB9UMAgoyGljhcTm+3/JKzXENdtZ1szVWYbr1DTyKM2MfJw9UHQ8HSciIjHcJxpIqi2GI4orYx+bfZ+rQDsJgBbILpHILwHlN4ZfIcIKTJnNM/8dMl9NDnCzRRcN4R6GQSsSu5mfyTnrjGz+KOV4KznPKG0EUi3bu6RwMDp64iUwkm9iH1UyM+4XyP5A8g+aOEN57EHKJ5TrfuhZEVu+8klXL8Ohko5cH+aOVfp/kDWVQ1BNjk6KManBCw7ACY1KaFpeCdyTf1jojfU83vFOYs2F3W8GNADU6bLdeTKFS5VvB1TGQqtyAqI1QJ+UpNo+6Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(366004)(346002)(396003)(186003)(66946007)(2616005)(316002)(31686004)(36756003)(6512007)(83380400001)(6666004)(26005)(107886003)(53546011)(6506007)(66476007)(4744005)(2906002)(82960400001)(6486002)(4326008)(8936002)(54906003)(5660300002)(478600001)(31696002)(41300700001)(66556008)(86362001)(38100700002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDRLMnJ5MmF2MElBMExmV2NtTUNuZDc0STdLTG5RdDNjbnhCV3gxN2FEK1ZL?=
 =?utf-8?B?Q1ZkS1ZNZEVxZDQwaExyL2FkZERUYzZZV3pGR3JteURiWXpYSzd0bkFKSzEx?=
 =?utf-8?B?WUVCamxienk1OUx4ZVUySzYzRXB6aU52UWs0OVVEVjROdnB5aGN5bmtUSHEw?=
 =?utf-8?B?U0dPaDgxbWZYSkpnQlF2UUx0NzBEK252UVpCY01GSzI0U0ljNStpbGJSK1pa?=
 =?utf-8?B?endvWllsb3lnVEgyRS9QZkVraEtxdStqMmJ5dlhCVURYU0JnMmRxVVdrZjJ4?=
 =?utf-8?B?c2FtdTdaMjA0R2FMSk5ZMGdYbXJ0aUs1QWFKRldMbzRFdDFPekxKbkNQeU5v?=
 =?utf-8?B?bVhxQ3Vqd0U0bm5zelBGRzZJR1Fjbm9aeHVGbTZvVUdnalAzbVZyS1R5akJj?=
 =?utf-8?B?SUVpRnRCOFZtZzU4NDZnVkJVd1JRYmViZXMrcTVoZERtcENpaHVRd091L3dn?=
 =?utf-8?B?K0J0cnljek9nMi9RNHBjNGdDTVlsM09sRDlTYUVPVDJWUkFxSWJkRmx5WHA0?=
 =?utf-8?B?b3R3andjMG5uN1E2N05NSWxUU1pWU0JNMnBqdDZhSUFXenArZ0RjWklReVlM?=
 =?utf-8?B?L0tpeUVBeUMwcG5vdDdnRkM5S1Vmdm80RVJ6K3hnYzg5S3VnWXd5M3BMUGsr?=
 =?utf-8?B?bW9nRXZ2VUVlNFljd2tCWVdTY2hVRE1PSGx1RURRYkg1NmY0NW1HNE55UmlC?=
 =?utf-8?B?K3pLcS9DK3dsekRwbGs5YjUvai9PTDBMenBhMzhOS0lyQmh2ckwySlROOWhV?=
 =?utf-8?B?YWk5UksvRWdDekNtd25BRFpsaEpZcGZrcVBEVEd1NFFYSHl0bExJQXhvd1k0?=
 =?utf-8?B?OUErTGxjNHZCR3d6dzQyZnN0ZUJUM2FzWENYcUlLWkZ4anFOdGxTSkZNK1J5?=
 =?utf-8?B?OHdweG9BLzdtM3EvdGFvckd1UUo1aE9oQjhkUGZndEVyLytDejg4NGVaQTB1?=
 =?utf-8?B?MXB5TFZ5ZitPR1VESW9rTXhlbG1ZRitJWGdNZEZWa3M0dXpYbjdiQ3JQdEln?=
 =?utf-8?B?NVFwV1FvQ2JQYm1meENTdVBVeEJrU3VFVlNrWFY4bFdUcWdOZThoOHdGeDBh?=
 =?utf-8?B?TW1jcXk3OHdleGZyNitabzU3SjVIVThzci9rZ1dwNjVsdGlkV2xQMkN0MGp6?=
 =?utf-8?B?L1dpQzdwcjA2QXY3Ukdrc3paLzViQ3ZOK3hlOXFicEJnTWNPRmloODdPak42?=
 =?utf-8?B?NXZKUmVGcFQ5UU53dEplWUxBdDdITm5Fb2RwOVVCTG00Q1czZVZMdUFPdWVE?=
 =?utf-8?B?MDY1WkVNY1JLQlE1MzJDUGhrTEFvczh2RHlTTDFSRmphWjhmSXVXalYxd2xp?=
 =?utf-8?B?OUo1VmhIaWlqckhMSTNhNXRnOTRMZ1pJZHZyOVB4MDZKRlR1cU9PL3RPbHc3?=
 =?utf-8?B?ZXozdTFjY2xlUDZZQ0pVNjM3aDQ5NDhibWowTStNV1F4M2ltaGxBK2YvVFlr?=
 =?utf-8?B?elo3dFd1d3dobjFucHFrc21rdENKN2M1V0Z4blVFVmhxYldCSVltSlpNb2Zx?=
 =?utf-8?B?NjNqK2JiVHVUam5TV3dTT3RRTUgrQU1qZmdQbmFtaXRqNmMrbTBiZGFsbnVa?=
 =?utf-8?B?Ui8vbjFhRFZqd3pobm01cDY3aEthSHo0WnF1TTRYTHRxdmxaampuR3VMNTl2?=
 =?utf-8?B?bjFWNnJDSUFFTjAvNGdCQStGbmI5eGhuMGl2b1pZVGwzcVZiRWk2OUdYdmJs?=
 =?utf-8?B?NWxkMEM0N05LQzhaMjNvYUdESitsS3BRbnBXckt4ckR0R2E2d2Y0VU9QdVJL?=
 =?utf-8?B?OFZXNnZneDVEdm5oMFZ2QnRiT3F1MDRjRHQzZlB3eEVQbVBYZGZtbno1WTBJ?=
 =?utf-8?B?cEQxNU1CSjhJUGJnMmtsdjE2dlZKVHltMW1XRXV5RFBCSy9tR2N3aHp2elZY?=
 =?utf-8?B?T3RvU08rWnpQK2RoSjJYUUZXZWl6WCtZdjNpZEZGcWRNZDNjdC9PL09FbmpN?=
 =?utf-8?B?MHhSaU5hdTJRNjhpVUhUazFHZytVZVB0d08yOXFFaFc2NUNCR1lqem1wUzQ1?=
 =?utf-8?B?M3RnU0VCVXQ3T05HY2tjaXVkWVdYVUs4SExZYklaaUJKd1JaQlBTNmFqQlBt?=
 =?utf-8?B?K21mZ3dHZ2xYMURZdjBDK0ZWd3hwNFdNcnVwMUZIMTBaR1htUFBRaEdIRDlU?=
 =?utf-8?B?WU1EL01VSjFyWkNNRUhpcmFoY3kzaFRobWhHei9PT1pGcE9rMm1ZRlp2eENS?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99530e30-ed74-4bbb-a4b7-08da8b8dc9c4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 20:17:12.1697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v3ZmYxZG/hV/JHjrY1yyvrgCVDAJHyyUEqGWgcTO5mOgJcstNLnKVotcmmWtJYAxJF1jXMfvSbAFhgiORjkLrycnYc0rQP30ZyRrXtnfty0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3307
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661977038; x=1693513038;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jn/v0W4+2ms6r78+ofbyn4RfAhBSwVPdmeZg4T/ZQ14=;
 b=XeE5BCTmLYw0cIzXYWSEv/k+UZ20wcrHlBcyZJ5ae5t0nn09lEWPno5K
 GHUx+GiEsfYn1eGLz+P2hxLQa3qJJeqKAMARK1Wtn9iVBCCxQYpZ2/Fhp
 XrLleMPN1iJLne43MH6uWDyhKjmlCxQPu0kFqr058jVteQltoFoqwVZBc
 uCNyhET4P8G1H6869EtZB5BiBej4g46tudDPlnDSTYMiGHic4rKPdQRdh
 ECvPi2u2Dz2bOOHYYGjVyZ21nOJmBLm5QgSToRDwnk6M/HyaSSzVV02yn
 UIb0p0Dupny0MRrmbJPubGZsmnOjagc9XmKjD7BE4SmuaAMvBymqQt4wV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XeE5BCTm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix cached head and tail
 value for iavf_get_tx_pending
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/31/2022 6:49 AM, Mateusz Palczewski wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The underlying hardware may or may not allow reading of the head or tail
> registers and it really makes no difference if we use the software
> cached values. So, always used the software cached values.
> 
> Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic moved to service_task from tx_timeout")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>

Co-developed needs Sign-off of co-developer directly following it.

> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
