Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB486D35EE
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 09:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 389A0817F2;
	Sun,  2 Apr 2023 07:38:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 389A0817F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680421126;
	bh=A80EO0Otp1DU3/8gozxUFHXbku6JH+T0HunG8K4phFo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oMnE7LY+hiPwiwzN4+Kpqm1oCKk/WEk5gOuYFS/kO0wCDPh4CPWlJ2nNvBUUjEGTk
	 w6ey4rH4uLTmGbMVv2TqniZsqLQrzW0OWnfzRxNkFZFyw2YEm11+MBHqLT4BRsExHc
	 ouKBNJKae4AKevvEIcwCirwBKzK5ymHW+RvC47Q/bBo64gQ+uhMVEGkEA3eHERUcoH
	 DTTQiwq/7y858XHSI5/CO2+0JhM4972NPZDNF/c3rti++DkXF5uQFBSilPpME2Focb
	 /649hGp9d+Sdhzk3+ELBPxeRQH8q2WX3nk3Gmv27yyApADSc6OBrdNdkCKPJkOPnaZ
	 SPoHtslg8sCpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBu2yZpwXtmv; Sun,  2 Apr 2023 07:38:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24F9181768;
	Sun,  2 Apr 2023 07:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24F9181768
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 635C01BF580
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 07:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39E1C400FD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 07:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39E1C400FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpVnTjbPv-RB for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 07:38:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01122400AB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01122400AB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 07:38:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="344264818"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="344264818"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 00:38:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="662850578"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="662850578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 02 Apr 2023 00:38:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 2 Apr 2023 00:38:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 2 Apr 2023 00:38:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 2 Apr 2023 00:38:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMFRPvFZfVensfxJVbkMFYpW8Il1wXDfdtb+J2e+Hsh5kuxyoIajdqp2Um71LE7AYcMgRdblmzCkD6uVzhjUzQY7iO2e4vrzAT1wjMAioCJuS2iYGSLTZqAaGerAK1Tn3pc1oiBrltWONe+AAjE9VKBu63/gFfKt99OpLi+nTGO8J3B/LdByo0a2RTJiGorq05NIUkVhu1w4AF/3Cnruksc/d50DNXOQVcf9blGGSr/hMlfdcrDqp4mGhFm8TSDV1p//RVbRn30Nb1mv9pZgmV3SeQLuqSujIp8ZOxV5mB2kQTlvZkJUt8uciIfBFCJPYvCuDY3DiNYxS4VQyDGfkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=naXQBteNQXvLhBVdeTi+SZiUKzXV9syJCJn9obtbq98=;
 b=bqJHkfmsiXCeRWF8GUVCH34OEalM/ZcyQ+k8FnJ/mSdO8fUsrTDeJRQttsbC0RvE+urjWrdkffHEQEGwJHoMn99MXRLFWTUImtPqTytPorTAlwz7Pc9Q4fQNKIsvbF1z6CLvOxrZAHdSpdHCtgyRDsdZoYTcsTS0YIEhb2jQALnq+7k+5arW7QTnRL2LUfW4Q33B7WJqplDd0v2SZT4fzNiRCgkVctBh49IesGJPIEnapDoZ1uPFt3o1dTcgd+WoxpHfmud0mrI9oFQ+oCO4H8Hyo4oYupg+mgAtj/iDw5BYGSXHgxJsGtmVjY2BUVWUBzg8oJJZUdWYZKnrQWxpDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by SJ0PR11MB5150.namprd11.prod.outlook.com (2603:10b6:a03:2d4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.26; Sun, 2 Apr
 2023 07:38:20 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::da3f:5b37:c794:5a46]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::da3f:5b37:c794:5a46%4]) with mapi id 15.20.6254.029; Sun, 2 Apr 2023
 07:38:20 +0000
Message-ID: <a443c61a-5432-6d81-9fc5-c21feff0011e@intel.com>
Date: Sun, 2 Apr 2023 10:38:10 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: Takashi Iwai <tiwai@suse.de>, Jakub Kicinski <kuba@kernel.org>
References: <87jzz13v7i.wl-tiwai@suse.de>
 <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
 <ZCP5jOTNypwG4xK6@debian.me> <87a5zwosd7.wl-tiwai@suse.de>
 <20230329121232.7873ad95@kernel.org> <87wn2yn43q.wl-tiwai@suse.de>
 <87edp6msra.wl-tiwai@suse.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <87edp6msra.wl-tiwai@suse.de>
X-ClientProxiedBy: FRYP281CA0008.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::18)
 To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|SJ0PR11MB5150:EE_
X-MS-Office365-Filtering-Correlation-Id: f34421d2-d65a-4d79-df0d-08db334d3af6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4IjPmh/GFix8StqE3fmpLmQN76VO5Zoe4R05fL4UUJ+/aeVdB6IOfe6vqCeMufnufs3oHveXr5U0rV4fIXGrgdmqGVgOJosNkf+KE+9peOlqbRsQVSzV5UVd9FvPluNdQ76ynwc5wINTklHC0sE2nNlvnPLt1l0lhcsmwZgX5C7/4bBUeG6xfhc9i3R0FkrYCuJ4UkjfYa/83Ee4RAkk7PKCw7t1wktZO2CsqC3qkN/6Id2mEob8Z1bv3Patvn3UjYCRKRaRHENpLaMyzVJ4j7suKT0/xDyMES2tWnO5fdNiV3R7LWbqCAjA0VjfkDUaFETgRTyC6lnmGckxfEEp7yrJh0h5Y7x5Yi8Xdc7La6VVq0RatoG0cWcAmEipC6bLgBDt4WTk3t3vj2LMEFdldKcxgo48rN4Cz+cn9pPG7sti4WM8cCT59rgcZTx32kDC53EVfNLn2ApQLipzwP10bh0VVk9bsp0IvFWjLm5Iws4JFF0ix4UdQgSdgy7meGULNFOluQqE+1TREbyoD0MTC868DfBdlDPIo+/7oIRFHiQfdFdV8JsEVzWU+WoqWRmJqtpv0TtPW0d7ZePZNdSpu+1XtZdVhdpB0zXevTaBuicqMRamt3+LQEsK0qlSyzVbCH350+9kL3GzZ4+ZocWWdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(366004)(396003)(39860400002)(451199021)(26005)(31686004)(4326008)(66946007)(6486002)(110136005)(316002)(8676002)(66476007)(66556008)(54906003)(36756003)(6506007)(53546011)(6666004)(107886003)(6512007)(38100700002)(2616005)(186003)(83380400001)(41300700001)(5660300002)(8936002)(478600001)(86362001)(31696002)(2906002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmVkcVVXdFVrMWF1T2I5dFA4WGU4YnBCZkFvRWZ6Z2IyTUgwSCs2YWdYeEpM?=
 =?utf-8?B?THNWVjhHMG1sZmVLTXRhV2ZkTFpVelczaHdFRk5Oc1RzVDJhWmFsZkR6U2hx?=
 =?utf-8?B?dDRFbU1MSGZ3SUROOFpadGlZRHJvYjI5OFZ2cENnWDhLTzJaWkJiL3Flek01?=
 =?utf-8?B?QmR4UUZqeTVPZUswWHFBZFVHNXI5V0lpdTQwN0dlR1l0YXpyRzc2Q1hmTnJY?=
 =?utf-8?B?bTNYanFTcUwybXlidVlSb3lXeUV3dlhhaDNVYTBEd3BubHVaNFEvVmkyekh3?=
 =?utf-8?B?SlhiL0pyQmZVbEhIOWVSQno2NmgvSG05dVNaMzJPNFhkYXRsdEh5NGZZS05V?=
 =?utf-8?B?bWZpbjVvQVNpS3JMNDNuNkhLd0pTR2ZLcXJJbkwrYlJQMndVMFp1U3lvd2J6?=
 =?utf-8?B?ZklCdHMwYWtyZ2NpL2J2WnV3UGxsY3BIa3MvLzVnNzBkVnlBbXNMOWlZUzFr?=
 =?utf-8?B?M2pMekNBY01qYkUvdUFzU0hNTmFKZW1rM1VXaVBHekhnQkJKdGpRTHYrb1V5?=
 =?utf-8?B?YXFzbmR0OWovclZsS01ZOHBFNjFsMWlZVHJSQVhBVCtqcDBzQnp3cm04Y3VW?=
 =?utf-8?B?cURPVGY0aytrM0kwN3FSSUtwS3NDOVBVT3NrUFByTGJ4a3RHdS8wL0psYndM?=
 =?utf-8?B?Vytta3htOFhST2s3bWwvT3hralVIOW9xU2ordkp2NTcwN2EvRjR3TkhUcUVI?=
 =?utf-8?B?VTh0VGs2S2tod3VpdXJnTmNBUlNpWXFFcTN6ZEMvY2tPVmlVT2xqR1FpNUJp?=
 =?utf-8?B?Q0owQ1N4R3BOZ2FzZ0JWc3Y0TlZXcmNjWEVXZlBmbE95bFB5ZGZQSFlab3BO?=
 =?utf-8?B?ODh6OEN0YkQ2N2NJVUNuS0IrdVR0TTNLT0luV3ByNUxwTnZhYW54T09QTWJ5?=
 =?utf-8?B?WmR3RHpiR2VWZVF3ckNQRnQvTnp4eTMvQmllWG1TRHpTbTJJWElzNG8zWisy?=
 =?utf-8?B?UEZMWUhDa082Y3lKRFYrWkZDTjFwQ2ZVcXMwc3FJa284b2VRbDRJcGVLZDlD?=
 =?utf-8?B?Uk1iSEJFRURvWC85MDJBVDBjanJPSEwwQ3J3VUdYZnZaeE9Qck0xWFlXTDFh?=
 =?utf-8?B?YS9QZHU3RkxzaCtGL2JzRHorZTByOU41UTBHQ0FrZEN2U0tPZ1N2YlRURDQy?=
 =?utf-8?B?a1cya3pCRmFnVWw1R2pzTVhkUXE4bmdoeGFVQjRpUmhmNTI0L28vUVBZR01x?=
 =?utf-8?B?OGNVYUhxWHl1aE1ZRVdIOGNyaVdkN2dNYkJvV0tjdGNkVXEwMHVPRjR3WVdT?=
 =?utf-8?B?MDN5bnEwZmlLSit4bnJEclMxWDJ5ZHFIL2ZiUXU2TXRuRjdwOFVjR09xMlRw?=
 =?utf-8?B?Y3praElYWWRYTmZPQWtLTkE5eDB0d0cyb0tsTUFHMTd2cEJXTU1kSXRucDV4?=
 =?utf-8?B?WVBuRFUwdEpmeTlpTk5lejN0VFdxYjV4TjNTK0l2VnorMzU5MjdYOXcybm1q?=
 =?utf-8?B?M2ovcXliQi82azRLU2huOUF1WG5GQXJqN2pkSnFFQlBWbW1mMlJpaXkwRTl4?=
 =?utf-8?B?UVRoWEJjQUU4VldFdWM2R1JVZWk4dlZ2K205VnN6clMwZ0g5WDRLTnpQQ0Zm?=
 =?utf-8?B?V1paTTlycVBzZkZGaDhwN1BmUSsvUE8yKzRVL0JKdzFPOEpFS1VrRDBUYUVx?=
 =?utf-8?B?MG8wWUQ5aVBQTUpja3NoWW1rd1Z6MEVkekh1Z1BwVFBRbldCZ1pYZWxvYmNJ?=
 =?utf-8?B?ZVJnM2xqUjZtVVgyRnV6MXI0YWsvbGtYRWtXckFETVJZOU13S2NVTy9PM3dB?=
 =?utf-8?B?VXNOWXBaWjlFTmVadVNscE42YmxkT3JTZWJ5ODhRWDR4WWpMdVJuUnl1NXFZ?=
 =?utf-8?B?UVZxMGErbXBCalB2YTA5YzNKUFJmdE9aempMenFIQXFZeEkvQW9oTGFPbVA4?=
 =?utf-8?B?K1BsL09wTnZLem5QUUhrbmNzNHgrU2V0TUozVThaY2xMRSszMnRFY2l1MDBr?=
 =?utf-8?B?RlpucHptcXBPOFN3OS9ody9ubXlQZ3hmOWE0OVlLbi83T1FENWxqd2J0QzFt?=
 =?utf-8?B?SjB6cm8vU0krc2U1dkdUd3A0UERhbzZmdzVrK2pEbFo3T0wrM1FGUnVxcVBl?=
 =?utf-8?B?SzRudTRSSzFCUjJFOE9yV0UzMlhIc28wUkYybzd0MWNhUTU2UWRFaFFScksr?=
 =?utf-8?B?d1YwSVUvdkR3bWNycXhHaC8yNDN2cHBIOXNFdVgvbXRFVjVUVXFyZmErY1dG?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f34421d2-d65a-4d79-df0d-08db334d3af6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2023 07:38:20.3511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oSbfX1Fc4bpHLd/aL6IicltnJ+UVdug+8udDYH9mdjyROXKAR2Cg5pGdeUkAEc+I6U+zofz8Jw/oEcbh+OP/Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5150
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680421119; x=1711957119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UjI7VnggVFkIbkR3kPEgyB9DCsGOgKi5dXahw8aPuvs=;
 b=IWatOjRLfD10nTL5ElmOtoZKOeW2Ahp6MyF1nU3yKwAF7Kou75RwsprL
 wUl8CI/fyQyO5WN8lEYkvt3a4yLxeOWgXdEwXq5edjNn4vsa2NFm3yoVi
 LYqkfCXLJS2qK9ylUvab8CdLC1Jqs326+Ksx/bUGxMxnC4f3zWgEEnzId
 eJNvjzVBkZqFtRWGPgK9eErhRU1QMQ6bm6zATDfXE5lYJ2Jcq9N2/XIKk
 gBZGtPqy0ptk8nW3uxJVJ7a4XVwBuVqlzIIXClEAY1HOVf+VV9noMcVxC
 INNxQ6wjNM9AhlhTwgICfc4985sueakRrEwLSHio73Yq3obYV7BCJ5myl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IWatOjRL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e probe/link detection
 fails since 6.2 kernel
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, regressions@lists.linux.dev,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Bagas Sanjaya <bagasdotme@gmail.com>, "Meir, NaamaX" <naamax.meir@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zMC8yMDIzIDEzOjM1LCBUYWthc2hpIEl3YWkgd3JvdGU6Cj4gT24gVGh1LCAzMCBNYXIg
MjAyMyAwODozMDoxNyArMDIwMCwKPiBUYWthc2hpIEl3YWkgd3JvdGU6Cj4+Cj4+IE9uIFdlZCwg
MjkgTWFyIDIwMjMgMjE6MTI6MzIgKzAyMDAsCj4+IEpha3ViIEtpY2luc2tpIHdyb3RlOgo+Pj4K
Pj4+IE9uIFdlZCwgMjkgTWFyIDIwMjMgMTA6NDg6MzYgKzAyMDAgVGFrYXNoaSBJd2FpIHdyb3Rl
Ogo+Pj4+IE9uIFdlZCwgMjkgTWFyIDIwMjMgMTA6NDA6NDQgKzAyMDAsCj4+Pj4gQmFnYXMgU2Fu
amF5YSB3cm90ZToKPj4+Pj4KPj4+Pj4gT24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMDQ6Mzk6MDFQ
TSArMDIwMCwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4+Pj4+PiBEb2VzIG9wZW5TVVNFIFR1bWJsZXdl
ZWQgbWFrZSBpdCBlYXN5IHRvIGJpc2VjdCB0aGUgcmVncmVzc2lvbiBhdCBsZWFzdCBvbgo+Pj4+
Pj4g4oCccmMgbGV2ZWzigJ0/IEl0IGJlIGdyZWF0IGlmIG5hcnJvdyBpdCBtb3JlIGRvd24sIHNv
IHdlIGtub3cgaXQgZm9yIGV4YW1wbGUKPj4+Pj4+IHJlZ3Jlc3NlZCBpbiA2LjItcmM3Lgo+Pj4+
Pj4gICAgCj4+Pj4+Cj4+Pj4+IEFsdGVybmF0aXZlbHksIGNhbiB5b3UgZG8gYmlzZWN0aW9uIHVz
aW5nIGtlcm5lbCBzb3VyY2VzIGZyb20gTGludXMncwo+Pj4+PiB0cmVlIChnaXQgcmVxdWlyZWQp
Pwo+Pj4+Cj4+Pj4gVGhhdCdsbCBiZSBhIGxhc3QgcmVzb3J0LCBpZiBubyBvbmUgaGFzIGlkZWEg
YXQgYWxsIDopCj4+Pgo+Pj4gSSBoYWQgYSBxdWljayBsb29rIHllc3RlcmRheSwgdGhlcmUncyBv
bmx5IH42IG9yIHNvIGNvbW1pdHMgdG8gZTEwMDBlLgo+Pj4gU2hvdWxkIGJlIGEgZmFpcmx5IHF1
aWNrIGJpc2VjdGlvbiwgaG9wZWZ1bGx5Pwo+Pgo+PiAqSUZGKiBpdCdzIGFuIGUxMDAwZS1zcGVj
aWZpYyBidWcsIHJpZ2h0Pwo+Pgo+PiBUaHJvdWdoIGEgcXVpY2sgZ2xhbmNlLCB0aGUgb25seSBz
aWduaWZpY2FudCBjaGFuZ2UgaW4gZTEwMDBlIGlzIHRoZQo+PiBjb21taXQgMTA2MDcwN2UzODA5
Cj4+ICAgICAgcHRwOiBpbnRyb2R1Y2UgaGVscGVycyB0byBhZGp1c3QgYnkgc2NhbGVkIHBhcnRz
IHBlciBtaWxsaW9uCj4+Cj4+IE90aGVycyBhcmUgb25seSBmb3IgTVRQL0FEUCBhbmQgbmV3IGRl
dmljZXMsIHdoaWNoIG11c3QgYmUgaXJyZWxldmFudC4KPj4gVGhlIHRyYWNpbmcgbXVzdCBiZSBp
cnJlbGV2YW50LCBhbmQgdGhlIGttYXAgY2hhbmdlIG11c3QgYmUgT0suCj4+Cj4+IENhbiAxMDYw
NzA3ZTM4MDkgYmUgdGhlIGNhdXNlIG9mIHN1Y2ggYSBidWc/Cj4gCj4gVGhlIGJ1ZyByZXBvcnRl
ciB1cGRhdGVkIHRoZSBlbnRyeSBhbmQgaW5mb3JtZWQgdGhhdCB0aGlzIGNhbiBiZQo+IGZhbHNl
LXBvc2l0aXZlOyB0aGUgcHJvYmxlbSBjb3VsZCBiZSB0cmlnZ2VyZWQgd2l0aCB0aGUgb2xkZXIg
a2VybmVsCj4gb3V0IG9mIHN1ZGRlbi4gIFNvIGhlIGNsb3NlZCB0aGUgYnVnIGFzIFdPUktTRk9S
TUUuCj4gCj4gI3JlZ3pib3QgaW52YWxpZDogUHJvYmxlbXMgbGlrZWx5IG5vdCBpbiBrZXJuZWwg
Y2hhbmdlcwpJIGRvIG5vdCB0aGluayB0aGUgcHJvYmxlbSBpcyB3aXRoIHRoZSBrZXJuZWwvU1cv
ZHJpdmVyIGNvZGUuICJGYWlsZWQgdG8gCmRpc2FibGUgVUxQIiAodWx0cmEtbG93IHBvd2VyIGRp
c2FibGluZylsaW5lIGluIGEgZG1lc2cgbG9nIGNhbiBpbmRpY2F0ZSAKdGhhdCB0aGUgUEhZIG9m
IHRoZSBMQU4gY29udHJvbGxlciBpcyBpbmFjY2Vzc2libGUuIFByb2JhYmx5IHlvdXIgbGFwdG9w
IApoYXMgYW4gX0xNIFNLVSAoQ1NNRS9BTVQpb2YgTEFOIGNvbnRyb2xsZXIgKHdpdGggbWFuYWdl
YWJpbGl0eSkuClVuZm9ydHVuYXRlbHksIHdlIGhhdmVuJ3QgaGFkIHRoZSByZWxpYWJsZSBvcHBv
cnR1bml0eSB0byBpbnRlcmFjdCB3aXRoIAp0aGUgQ1NNRS9BTVQuIE1vcmVvdmVyLCBhY2Nlc3Mg
dG8gdGhlIFBIWSB3aGVuIENTTUUvQU1UIGNvbnRyb2xzIGl0IApjb3VsZCBwdXQgdGhlIExBTiBj
b250cm9sbGVyIGluIGFuIHVua25vd24gc3RhdGUuClRoaXMgbW9kZWwgb2YgdGhlIGxhcHRvcCBp
cyBubyBsb25nZXIgc3VwcG9ydGVkIHRob3VnaHQuIFdvcnRoIGNoZWNraW5nIAp0aGUgb3B0aW9u
IHRvIGRpc2FibGUgQ1NNRS9BTVQgdmlhIEJJT1MuCgpTbywgc29tZWhvdyBpdCB3b3JrZWQgcHJl
dmlvdXNseS4gX1YgU0tVIHNob3VsZCBub3QgaGl0IG9uIHN1Y2ggYSBwcm9ibGVtLgo+IAo+IAo+
IHRoYW5rcywKPiAKPiBUYWthc2hpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
