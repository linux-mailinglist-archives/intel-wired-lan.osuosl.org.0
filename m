Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AAE6A4453
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 15:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3729140A4B;
	Mon, 27 Feb 2023 14:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3729140A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677507940;
	bh=CZ4xhB/LpL5SH9cSfw+nzXxk8PhZ0Do0MXu8ODXsUV0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ER7qpa62Conp5b3TT4c3klg1KgB+FbGyiCiM5JsLlBrCUrByKbJPUD/zqbM4jbzST
	 dQy9iTmpRc2A5CwOQnjUX7RgXFvMuf/hUEzuvxO+zvQs36duUafQg5hNR9AQguzgm7
	 6aBvVdjoj11hzLWWORbEGZ8l7GQ7OjZgHIrVdg8AEJ3bCwhKDpE1q3jVOR+lUJmHl+
	 fDHCKaBxWkmyA5hbYKYfMfS2sBev1DdFSI+lpOsF8KfAxLOylFg88I9xlDRLj2mfb8
	 w7aSs5VvG+AgvMLtoOPFgZ+nOPVTGl+ESB2kGzN/tHv52KT81ZQgh4IS4qpu4VgUUM
	 qgXvV0hOWZQ5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQf4EGLYl8sk; Mon, 27 Feb 2023 14:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C6A7409EE;
	Mon, 27 Feb 2023 14:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C6A7409EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA69E1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 14:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC66781E9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 14:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC66781E9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nNJGVA8rEsLJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 14:25:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2A9081E98
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2A9081E98
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 14:25:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331342308"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="331342308"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 06:25:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="797653000"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="797653000"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 27 Feb 2023 06:25:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 06:25:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 06:25:31 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 06:25:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 06:25:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGn2ODWak/tFRvoeVU7tgmZS4NGBYR12A1g83ecK0AtfSAP+QbWwYkuQvW9X3FVD14E9nhErQAG/ltOKnpbhj2PfdQzNShAI6J2B874vCYFNZHulz5PnN/ibv0SKZinEQEZ2WbBH4XGYri53P8VGGO4w4Myw1ztLk2nfk3oawUM0urBh/fhme5dq5wXu6Rw/eBu2zJx/3SJ6mKPlz65Zmx2WJzJqmRbY1cwNIb5JoQnSSDLZUf8GhdJOeGPoPJFFIcfZz8phfk++dzOKEb2Sj9m14MHzyt8Mn31CA22SNHdBz+Ld2PTKPKShEu6QWgvylsv7giY7rtImosj4RvcIDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sM4Srsx/HLgBvN1kilopRhsghAhYKR1VMx17gQd1UGI=;
 b=BUz2gIGh4OMsiskXxqQ8J3bTkuPFy8BIOmiCLXoLOtAYcbDCgW3G4/iA3wJF5QjS8alcXdQNGh+nA/cVyEnt2n61PTbEZu82EsdMXZcMQD2H9iK6SNEhlLtL9fpVfLNN4545/IrrpQr+JzvFsqkiJvAxBBAzccBqBpIM6RBSk4WoOQTjAsTM4TZ/xvGSNafrz0/dNDmJgcwEpIHOP8oJP1n9eWDMrTmFD/iebNb/KWJ6cyANKuI55czU+4KEHpsj3MocaQMWybuqUbrNhzR4bFLyWfeF6HWDQgFVUIzvMIBgbjHb9KC6jX+4NwnEPpDfOhU+tsrGUJrFzUIcaSpDYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS7PR11MB7950.namprd11.prod.outlook.com (2603:10b6:8:eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 14:25:28 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6134.029; Mon, 27 Feb 2023
 14:25:28 +0000
Message-ID: <2674df91-ec6f-baf7-e2cc-aa0fd807cb2c@intel.com>
Date: Mon, 27 Feb 2023 15:24:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <af69e040-3884-aa73-1241-99207aa577b4@intel.com>
 <fe613404-9d1c-d816-404f-9af4526a42a3@redhat.com>
 <74330cb7-bf54-6aa0-8a07-c9c557037a31@intel.com>
 <59aa33b3-e174-b535-cc9f-1d934204271c@redhat.com>
 <6a7469e1-1db0-2f62-909b-9dcd65c50937@intel.com>
Content-Language: en-US
In-Reply-To: <6a7469e1-1db0-2f62-909b-9dcd65c50937@intel.com>
X-ClientProxiedBy: DB3PR08CA0028.eurprd08.prod.outlook.com (2603:10a6:8::41)
 To DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS7PR11MB7950:EE_
X-MS-Office365-Filtering-Correlation-Id: b45e60fe-1899-4ace-3d0e-08db18ce791c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 858f75aULIG49rrlRTJEsCaqKFs1g218ignHt35/mgRrX30oiL0ayAHut0gOdBGU1lpJKzx667UANwGm7T7u6228R8LYG8w93yfUQhCNi/jK4uzRKvGPbhIdjNq71uwhW5UBhILGpRrGHwVEEfaJ7couqVsD3ZyxXI8b6quji7EvbL73QzCQ1zwuJdvh1K9R78ZPaq/nh34GAoip1zpQHnkT8oej1hGJxcf/82hrs042l60Jf04ZWX3ebJ2YPQAMm9GRwlhsdC54emAkor9MOMX78k/lnjz9QbqgnOT0papsvdCVYF/7tIyZ9FRs9rvUZiN9PNUDEpvBHBRguJ6RrUkLQJsxnBy1UpFGPK02YWPkLltKBERqYmOgRpymas9EeQ8yKOF8yTt9k2tQF2s3ca9AkK7mMIcIUxkVtRplrT3MwduFtu/BH327L4w7O7lKz0bEwr19iUUdfrvtLQijS4busmTnWygHsK0iYThXABmP5hEe/Iw3aHHkyGdRrWQyeRAsINH4G7AQFFmy0JMzz57dXpDUDFUU3qd8Qk+cacbvdf/9MChY6Ig76eNiEAX0aVJNlDyziqOgFRGfDhnDMVtIIB9ZOnh5WAVu4IUWOiCTq5d7UBkMdPi5vEkhT2044zKdpLex7p95SIj8q21dxr68MQgY/eJGJjkiPYJBAnbCdpGTq8F4VYeM6+56U6DaHBS76rN6iV4KSMntqnDKj/Q01YKtA1h/Zn9PNFPEOIE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(136003)(366004)(39860400002)(451199018)(41300700001)(66556008)(66946007)(4326008)(83380400001)(6916009)(8676002)(66476007)(38100700002)(82960400001)(36756003)(86362001)(2906002)(31696002)(4744005)(7416002)(5660300002)(8936002)(2616005)(6486002)(478600001)(107886003)(6506007)(54906003)(31686004)(6512007)(316002)(6666004)(186003)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THVBczEzRjVmR2V2b0JYUUNiK1dLTE4wdzRwRTJac2lTU044Wk0zbk9YSlV6?=
 =?utf-8?B?ZGJIQ3N6Ylh6dEhzMGpySUtiU3FySHpDSTBGOEc5SlduL2dPLzBDd0ZIU2VD?=
 =?utf-8?B?TjFVSmIyd1VQVEhnd3o5cCs0T01oR01tMGNSaHJRR3E0ZjFleElUckdCRmQx?=
 =?utf-8?B?dDZUdkdlK1Z5WW9vNU0rQnJsYXNuVVBSQm5aZGtxUExSU1BDQzdoa2xhTnox?=
 =?utf-8?B?Y1ZpNm96UHladUgrdm42OGwyeU9JZ1lmdytScUt0RTQycUlRcHQyYUhwZndr?=
 =?utf-8?B?Qnp3MGxIVlMrNWE0T2dvQUI3dzZCcUtnb281NWZqbEhCMjExRkVGNmZaYVN4?=
 =?utf-8?B?MFZGQnRBOUw3Ylk1QVNDY09IZFdoem1qTDZuSlpzcjE2NWJRZ1pHcGJVQWJL?=
 =?utf-8?B?anhHSWVSRUh5N0JCR0hPeEZnc0Q0Q2UyUnRnQmxrcmZpSStta2EwVXF2dnQy?=
 =?utf-8?B?cTJKYzc3aDZkb0FUZDh1WTNXS3Eycy84L0hkRVpkYjVXbnpZVDcvaTlGZzRm?=
 =?utf-8?B?eXg5K1dYdmlXZlppRTJXeFY2RmxsbFRVb3NIaFNGOVU1ck94OTdhU0FsSHc2?=
 =?utf-8?B?ZjFQWTJ2TW4rRmxMTXFHRHIzRitpOWRtYnp0R3NMWE5PR1VMY2ZZblp4T2xa?=
 =?utf-8?B?alJmOE9xamRUMElBcGlRb2greCsrQVRJTCtjRzlKcnlpT1VQWHhURjFVMkhU?=
 =?utf-8?B?ZFhxcmZrOEJmT3ViYlNhTi9PcXZONUhjRWZneG5yNFF1YUxtQXdTRlhRYXdN?=
 =?utf-8?B?UnY3NnN1ZjNmOHVaUG5tN2hmc1VyS2h0YWFaNTdTOXVaZ3czajJvZFNZN0tG?=
 =?utf-8?B?cFhnS01ZSGk3N21LNzBJRk5vMmpjaFlNelNKS3d4Z29UNXpMWVZUUFczY25n?=
 =?utf-8?B?b1BoQURXdVZIbkVzVmtxWDk0Y3RBQUZnK3UzdjgyMWhrQTlnZXdQU0tPSDEz?=
 =?utf-8?B?empsOE55SDJuTHg5alVVMmJ2NE5ZcjVxWHM5L3Yra24rY045Vk1ZcDY0bHBB?=
 =?utf-8?B?eWtpN0paWXRTNHRrQnI5cEgrUnZNMDJ3MmYyR0NPbXMwSld0ZnhaVTF5Y1RF?=
 =?utf-8?B?aG9Bd0w0UWRwZGpuWDV0OE9JV3U4bEQ5WTMxTUtxekcreW41M0ZVNFUrek9z?=
 =?utf-8?B?OFRMZG1ObEVRWFZIZnZ0SnhhamRrUk10MTZYVkY0Nzd1bGI5M3J4UWY3YlBW?=
 =?utf-8?B?MG5xWWgrcG9WMFVqVUhiMk9UTUdDSGNjbEkyTkJnUHhBZHpha1ZEck5ZN2pE?=
 =?utf-8?B?ckpEc3NUUkhmRUEwQ0xPZ1NkTEp5UDFUd0tocEM4OEJaYnp1OG42K0VURWVF?=
 =?utf-8?B?VGhPMTcyaGNoSFJoV2hic1IyeDAyN1k5Y3ZuaTZKMkxyeGdVa240WFgrR0RU?=
 =?utf-8?B?NTRtSlUxQXQxRWs0SXBQNy85S0R6N2xHMCtKcHJIeFZRQnI2TThUV2FLZXVV?=
 =?utf-8?B?a3Z0MUxZeUtWSWRoUUhHL21WZ0t0TWtEUnJ3Z3BNVGlsVnczSVdUVHVDWDk3?=
 =?utf-8?B?NnpWV2xiTmJGcEFpc2YzZ0QxRzdCQTcrM1dyV0QwcHZYY1V3blUrTzBpZ1dN?=
 =?utf-8?B?alVMUWRVaUhSY3I3WmFqUHNlRkorUC9SaEc2bmIxRlJXRWk5UEtYYzVsWnRk?=
 =?utf-8?B?WEhkRzAxY3BFaVVzdlVSaXlmZEw4L2o5aFpSYVJ2ZmYyd1JBcjR2UTByRXM2?=
 =?utf-8?B?cFBwOGlxUGh1Kys1VWFxR1RVSFVQMmVlZUFobnpaQUdCSHg0dmx6dE1tMGFK?=
 =?utf-8?B?aWhtTTJGcE1ZYjY3eUxUeWNGN3VyQ2hlZ21BTVBpbERHdkxDZmxVMmJJeitY?=
 =?utf-8?B?SFZlQzFYT1lBaXBUdkppbGJOYW02ZS84ZmtieXYvS0U0V1NISFlhRXdLd1JQ?=
 =?utf-8?B?VGJoT0oreHhVOFRwNkRvMXFhdHZNZWtONzYxOWpOekdkTElCRE1FNVlOMkFp?=
 =?utf-8?B?OXptUE1pNzM4OTVWeHErT3NLSzNHdGhiRkE0b2NyMW1QbUluMzh3RmlqT3c1?=
 =?utf-8?B?UGVJb1FJK1FHQWUwUDZYU3NTNWNOWUFaVmJyVC9ON2lDeUkyWGdHSW1ZRnpa?=
 =?utf-8?B?OW80TW5IK3J5eEI3eG1yWHBjWktHUlNTY3FzZ2J6RjFKbklyKzViVU9nYzlG?=
 =?utf-8?B?UnFvQ0dzd0sxUS9nSDBCVXFoQXRyLzZrQzdpbjZCZC8zNFphWTUydUhGTHBl?=
 =?utf-8?Q?53BDIB4FI2RQ8teZBdQk5uo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b45e60fe-1899-4ace-3d0e-08db18ce791c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2023 14:25:28.1030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WqFA53vK9V0+ILMDljmI0jqd9BCTiUgi84AhUad8V8Agx2YXKjJJWDa6OFHPl88mz5ORfSnUd0wKOooxJ4DygaF8bvWwCXNFsV0zn/NW0Qk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677507933; x=1709043933;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sM4Srsx/HLgBvN1kilopRhsghAhYKR1VMx17gQd1UGI=;
 b=HzpjfS7iGvaOcyWX1FGEQOIY/xNKIh2UpSrZoGfy9mmAVS4TI6B7rRYj
 26ZEqsymvMYA1C5TXK38cOymAOW/tFem7l7FiVG85RqvaC7OLr0i9Pg52
 /UX4Z852oMQm9Q8+bbOssmU5JcD0YweMM5kctJQV+FPzrJFM7c2nHO0Y7
 zJiJ3/wn6hIPLdI6IkGHLhdlCC0Fnmq/in7wdLOyur8lVEQT8uYwGSF8c
 8+ORR/tx/3WWdzuQDxeee8OJnBvKsfm1AGc9jgaqsLphPYeGclURCAJZ1
 gAP9+a3+3+xj1FItt7CgXJ8I2aicISI/I0d/cbO5t3K9qTgJaA3RG4fPz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HzpjfS7i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix RX
 hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+CkRh
dGU6IEZyaSwgMjQgRmViIDIwMjMgMTc6NDE6NTggKzAxMDAKCj4gRnJvbTogSmVzcGVyIERhbmdh
YXJkIEJyb3VlciA8amJyb3VlckByZWRoYXQuY29tPgo+IERhdGU6IFdlZCwgMjIgRmViIDIwMjMg
MTY6MDA6MzAgKzAxMDAKClsuLi5dCgo+Pj4+PiBXaHkgZGVmaW5lIHRob3NlIGVtcHR5IGlmIHlv
dSBjb3VsZCBkbyBhIGJvdW5kIGNoZWNrIGluIHRoZSBjb2RlCj4+Pj4+IGluc3RlYWQ/IEUuZy4g
YGlmICh1bmxpa2VseShiaWdnZXJfdGhhbl85KSkgcmV0dXJuIFBLVF9IQVNIX1RZUEVfTDJgLgo+
Pj4+Cj4+Pj4gSGF2aW5nIGEgYnJhbmNoIGZvciB0aGlzIGlzIGxpa2VseSBzbG93ZXIuwqAgT24g
Z29kYm9sdCBJIHNlZSB0aGF0IHRoaXMKPj4+PiBnZW5lcmF0ZXMgc3Vib3B0aW1hbCBhbmQgbGFy
Z2VyIGNvZGUuCgpCVFcsIGl0J3MgZnVubnkgdGhhdCB3aGVuIEkgcHJvcG9zZWQgYW4gb3B0aW1p
emF0aW9uLCB5b3Ugc2FpZCAiaXQgbWFrZXMKbm8gc2Vuc2Ugb24gMi41RyBOSUNzIiwgYnV0IHdo
ZW4geW91IG9taXQgYm91bmRzIGNoZWNraW5nIGFuZCBqdXN0CmV4dGVuZCB0aGUgYXJyYXkgd2l0
aCB6ZXJvIGZpZWxkcywgaXQgc3VkZGVubHkgc3RhcnRzIG1ha2luZyBzZW5zZSB0bwpzYXZlIGEg
Y291cGxlIGluc3RydWN0aW9ucyA6RAoKKGp1c3QgYW4gb2JzZXJ2YXRpb24pCgo+Pj4KPj4+IEJ1
dCB5b3UgaGF2ZSB0byB2ZXJpZnkgSFcgb3V0cHV0IGFueXdheSwgcmlnaHQ/IE9yIHdvdWxkIGxp
a2UgdG8gcmVseSBvbgo+Pj4gdGhhdCBvbiBzb21lIHdlaXJkIHJldmlzaW9uIGl0IHdvbid0IHNw
aXQgQklUKDY5KSBvbiB5b3U/ClsuLi5dCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
