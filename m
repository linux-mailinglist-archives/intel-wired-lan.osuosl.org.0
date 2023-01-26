Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D2B67D49F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 19:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EB7F41591;
	Thu, 26 Jan 2023 18:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EB7F41591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674758963;
	bh=ueNPLu4rLPwAJV8bQK7gjWkhgs6V2VHNB5vLD1qyxng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=emkRmQVv4s4xbuTBy8jG4tFiel/qPyidpMD+IU1VcawnIcQGQETBewW01tJfabnmh
	 y975PklgLf8ilmUUaO/R6LW6Xvu/o0uosjXs7ve30Mx2y95tFJUY4AJCsaiQLngLT2
	 OKzYUFlkveVNVkQzS4UpirC9Y+Ep91b9yEzUlFA5DS1S/r+p8XlFgwNWaT5gHbpHWR
	 E4278jm92jZ9IzpBu+tSOCJIWIgkrEXd8KAdkhDuLZtsvtupLpCetZ909LfQ9tI5na
	 wctUAjq8eGBD4xAIAwLw1GEJ13BOK/uYU+e02ORtEI0O9VSOVohxQpWziibpE+dIY4
	 xG4bLKFKeQImQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q5L6HjlpMEUy; Thu, 26 Jan 2023 18:49:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49EBC41678;
	Thu, 26 Jan 2023 18:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49EBC41678
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A11B1BF487
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 216DD40A81
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 216DD40A81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xZzRcbFyWMj for <intel-wired-lan@osuosl.org>;
 Thu, 26 Jan 2023 18:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6C8740140
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6C8740140
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:49:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="391435746"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="391435746"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 10:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="771252073"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="771252073"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2023 10:49:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:49:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 10:49:14 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 10:49:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPVH36Djt88P2B27wyW80wsIGCBtjoH4bJBNSVhrJmQTBI0sY0aM7zmy/GQY2H/QM16qUZb6vRjtt3nLTjyOC/iH0TQB98miGj2KmjE1v5OAfj3ooDnfUIE+rz38aMEvnqzMEKhgR1H/p/3NyIjpj7XVEfNfCyNDDYAeUK5Ft0gHIpkZH62tCl+Aw9yTqeTY4TuV3A4XHhvjQtnHLqNccKIKpfkMe76QslFt20reWVfMi9nptGOTlSPpfPrbFfpAP5nQ08DnZ8UvyvGFiufkVOZbMcACNBF+2HhItDZ9WLvoNje7izkAenT/HWEpgn/eclpC8WMmV9eNN5ILvwCYyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nJVg/E0EysIA6JATI9Bb+BCc9Hg8GU8ptkBkP2d9jU=;
 b=MkshzFzZVi328PjsnE5tndhrHiHH1yTyVSJ4jvxMxL9RALCp4JR5Ll7UHUtyzdB7rkWKoKN08driDDXjeFR7zVNTPVPa+mmvJ6Rs20WuslPOeATJAd0c26hGnF7DOfSokx9O76NBHz1f/0hjFwvHqYmQnB7BrptJgf+jdPJpevTQ3Nmdd7gnlbZ7jWusmoy7WDAGE9Nr3JAMVw1Zg1m2fDOq77gVD0Yjsp3yxeidCEdWCJ5smBoi/WZ54KgiR36h7c9BsiK74YNvK8myWI2WbwvgCdwUm81ytdvBYNrMov2MOVdo3qvbYxnP9MphDILUi5W+Vw/28cuafLpDOYmgJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4617.namprd11.prod.outlook.com (2603:10b6:303:59::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.17; Thu, 26 Jan
 2023 18:49:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 18:49:12 +0000
Message-ID: <a03bd398-7355-98fc-3674-90d4cfecff2a@intel.com>
Date: Thu, 26 Jan 2023 10:49:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <intel-wired-lan@osuosl.org>
References: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
 <Y9Kl+OFJRbDWYxoy@boxer>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y9Kl+OFJRbDWYxoy@boxer>
X-ClientProxiedBy: MW4P222CA0020.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4617:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a26c396-d325-43c2-838d-08daffce03c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K2GWCpsIusqE9E4CMrFRsGW2OVdUP/jYdims0IbyT5o0JsWFm4dsJFH04EQiP3x985shfV6JROv8yJRWdbuVFFZNPROCzSot9hLWRgj1WFCE8CR2Bs9QXX2FaFyfo+d2z8zRIL2G9zIoc0/bzwWcGeE/U1rU/MULHJ35yLEuW8IXU484/+j/7+e9VOz4CNhsiRYQ8ljwiJnuZJNoLtJLRrNDEz0TPrwQlaRDtoICWJE2pnRPpAptU0gWOgrQq5rkUk5i/5f28rAHa5k+jYqmSbTDDvQ5keFy7OjJSd926nMafxt5bu/31cr0M8ubJdsQ2DzeLTDeHc9+ojwJqL0eM/nrW6l6488h4ozWAUrM+x3DqaPa+rNylWYoY6aa9EX9f8Q04/zRqRn++ODvmSBi9bvGmQpzIIGCqWX7RP/d7sSHTrilieBkMCpx1bTVoip/1jNaFNivJEBOv1j6OQUqdzb6yyAgzQ6KbkVIFaTTHGe4Bewjdc9kt7Z63Sa2pOGlMAIOeN2bJfunKeEL7BCVtgmBYAs9L492xwiTc3qvKoGrxnstbMAOuO6lEyOJ2in3NqUVlTpy0j0q+3aBSM7hHRacINLGpnUS9n2t3wNPvZtjvsO83Ao7xF6eXsgKhWLIBL8ondkkUsS8mxI+sQpKZ+Tn+Y196/59mMiFt0CCTToMrNqznqTEWiD5Li0hjSrwWGkmproV/sxjtlVonvA31F3l1HtcXIofKrkkTGH4y7Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(376002)(39860400002)(366004)(346002)(451199018)(86362001)(38100700002)(36756003)(31696002)(316002)(82960400001)(478600001)(2906002)(41300700001)(8676002)(31686004)(66476007)(66946007)(6916009)(66556008)(5660300002)(8936002)(6512007)(53546011)(2616005)(26005)(6486002)(186003)(83380400001)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3BVTTNvaDJ2TkFDV3BaNTZRU3NmbDMxMG9XaE5iTlZIZHorZFMvcUdKdEt1?=
 =?utf-8?B?WjQ4eHhzZkZINnFLclowVDF0RzVBOGpiRCtRb3diaXRubWRsVmZMSFdZRG1M?=
 =?utf-8?B?REF6R0taeGZQeWs4YzFhdWh3YWJoOEx0WGVJUUZWWmcxWU1jRzhsNFc3TTRL?=
 =?utf-8?B?YnBQaFNTQXRncDl5VXBkVTlNdEV3d3VUdW1HNitoZEF6YkxQMFlEOTEzZmhl?=
 =?utf-8?B?ZzYrSHBKWUVnOTRkay9FSUN4QkVVVVZkV3B2M3VZeU5IeldTbTdaa0xJSitP?=
 =?utf-8?B?T3hZR0ZMY3F0NkMwczZWWlUrNzNlQ3Q2b21pcENaTXFnNU5JNUNVSU5PeUEr?=
 =?utf-8?B?cWJEYUtlS2lTdGNGdHV1b2xTNnhYWUp5TXFFMi9ZbGk0R2krck45WlhqTUw2?=
 =?utf-8?B?Y3R5aVZoR1lwZ2hEM01JYUJ2OXZTRlJQbWhRRVNKelNnRjZKQzNtTmNuNHdX?=
 =?utf-8?B?d0wvMmc3SWExbEdDNlYreFY4cmZsL2JKcmF6cVhjWlZReUhJRThJMm1YVG5K?=
 =?utf-8?B?SnpuM2F3cE5SWVh1V3VLZXlDOWRwVEJGd2U0KzNRT2FDVHVaclhrQ1V2K3hk?=
 =?utf-8?B?T2srQk1tZUk3N0VpcjZFekJsMlFhMk01MC84YXkzNTVqUTZhL3NsaWtYQ240?=
 =?utf-8?B?Vng4NFIyazdMVE1nSWdMYXVveWlnS2J2b0g3ZU5UckdkRnA2by9yTUdlY00z?=
 =?utf-8?B?K3NiRzBRTDZpTjdQZmRlWThyN2grNnNxaU1jMythQThvdTdGclJOTzVxem9y?=
 =?utf-8?B?MTZYWXZYdm5YTnVrRTgzV3pTci94VE9udEFnVFptemhvbXh3aHRpRFY3ZHRN?=
 =?utf-8?B?WkVmaVNJTTkyTXdoT3VOckV3M0lwaXI2NW9PNXRIWERjSjBodm5FWTN4R0tw?=
 =?utf-8?B?VFNwTkxXTzMrMXZEcW1LeDNPN2ltbW1ENXRHYW5VOU9JbFNHc2w1a0pPb3Zj?=
 =?utf-8?B?VkJ5Tzd1TFhYOFZFT21sQ3R6b3ZnK3Z4WTd2YkZnU2dDR3hJSDQrMXMrUTlT?=
 =?utf-8?B?UTY2bG1SOFh3L2lIc1pIS3BqNTdWNlY2M2VIeWNWSW83ekhwdk90bTdrOGpt?=
 =?utf-8?B?MElhVWtlR0V2eVV5dnVsNS9qQlZGcGZqV0tTUW02OFpJVDBuRUV5WG82ZnpW?=
 =?utf-8?B?cEtBVmpqaWJqR0M4YWFFTzVOUnlCN2NvU1hQWGppamFQTjh0WUhLai9DT3pB?=
 =?utf-8?B?WmVJbThJc29UNzB0V3M3dHZDT2ZYSmh6RHhHRnlqNW5SSGswZGtqZ3VGRXl0?=
 =?utf-8?B?QWUyWlFYNTh3M3pNZ0VhUHYzWnNLeHhrWFdxaFRlcEo1cm5aWTh4Q25SV2k3?=
 =?utf-8?B?MFhBZUhsTzVQR1Z5cHFHVUtLSy9nejBHOXdPSUh5aGZJNGZkUHVGZGJhbks0?=
 =?utf-8?B?YktGaWNLNGh6WU0zelJCWVJINGMyOWhaYU92cjJibytaeUNQOGVhUWcvMmJv?=
 =?utf-8?B?RmxCemxOaFBiRVNhb0ppUXRWRWNUSTRLdEhQRldxZjlITElGdHAvSlJFRE5C?=
 =?utf-8?B?UzZMOUJtN3hvbDN2Q0k4amYvRHZXdlkxWmx6RWswR3JOazB0QVB6VzU5M2dp?=
 =?utf-8?B?bmJuSmZmNlI2cGJhckhEaW1yTXh2VFFKS25wdlF6THQ0MW9kQ2VMeDYrSnNI?=
 =?utf-8?B?RTJNQnJJYUhMZHUrMzV0cEFsODFsMzk5dFRJV0d5VXp3UThZNzQyUGV5dXBY?=
 =?utf-8?B?LzVTTGVIMW4xemc2ZytiSEVPNWZ3dUdzQzBPNjJSRHU3eGhmRXZxRk5VZWxm?=
 =?utf-8?B?YThLRGJXYWFJQjVYdVFqbW9BQ1E0cnpPU2d3UkxWTlV0TUdWYThVcmpNK1Ux?=
 =?utf-8?B?cHpqSHRrSUxtbkRVWW4vVzZxRStJQmM4NFd2TS84Qzc2ZzFaZFAzVTdtejBK?=
 =?utf-8?B?WnI4R29CbHJ5a1F3YUxUYWlWL05LM2Z1c3REdXgxWXVPeGpwZkIyWS9TMWZy?=
 =?utf-8?B?VnVVa2N6dVFuWjlmSkhzaUJRc29sL1g2NFZMMEd6N3Y1dUZYM2JwaFdmZ1Ft?=
 =?utf-8?B?NmQ5MUZ2b2k0Zk5IVjhaazdBaklKMTJDUTFIcDZOQmlZaUcvOWVHalZQVjZz?=
 =?utf-8?B?ZzdpOFcyZENNcHk1THZmTWFnZzEzcE5VcTU5QjhwOU95RmlPVDhkOCtzNk1G?=
 =?utf-8?B?c3IwYktzSG5rOTE5WE9jYXRXS1JrVzJoTXprdnpDNXVSQnE1djlGamdYT0o1?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a26c396-d325-43c2-838d-08daffce03c7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 18:49:11.9361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p/TveqWS88h0K9Os79OkfVr24rWn9m6ddOVvKfT49O+9DnWGyWYYRJRcKxdt0MR+gZUJufLJ+GBtYGMnHS6fS1ppvjrBJ/HaZyZ+qIAujYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4617
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674758955; x=1706294955;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7W1vaopLN851HIEJQYhrXAOLb6LZegFLFlZPLa599CA=;
 b=NEohCa1LgoTauEtTcU+l4X32YAyNZ4J70wN0vmfPT2Q8VawxTn7dZq9Z
 alrKe2Y+iHI48EQZmYQW38saf+v28XhZQ3OJhvU7VrI2ljq9+w3Ljg7pn
 e654NcZMXUoEFf/fkeG7lgicMu2Arej/LSwEUKbGfKiSIEJve7EAHUPsF
 1bBk8oqyVv1NVFZaGgqCMaoI/XCnkEfrDAYUf0zjfCEVRxChR5XtUMP/I
 I6mQZRHk4cJjRYtIEI2cJhdqEu6hFH9Y3RYpaBCe//5Qp2m5aoRxzutWu
 iKfdvOYhsIQEFMuIr8rMHsRQcKyQK0cFdamuKk/4sSqZtraRUwAJ1ChIj
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NEohCa1L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxLzI2LzIwMjMgODoxMCBBTSwgTWFjaWVqIEZpamFsa293c2tpIHdyb3RlOgo+IE9uIFRo
dSwgSmFuIDE5LCAyMDIzIGF0IDAxOjE2OjA4UE0gLTA4MDAsIFRvbnkgTmd1eWVuIHdyb3RlOgo+
PiBGcm9tOiBBbmlydWRoIFZlbmthdGFyYW1hbmFuIDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGlu
dGVsLmNvbT4KPj4KPj4gV2hlbiBib3RoIGljZSBhbmQgdGhlIGlyZG1hIGRyaXZlciBhcmUgbG9h
ZGVkLCBhIHdhcm5pbmcKPj4gaW4gY2hlY2tfZmx1c2hfZGVwZW5kZW5jeSBpcyBiZWluZyB0cmln
Z2VyZWQuIFRoaXMgc2VlbXMKPj4gdG8gYmUgYmVjYXVzZSBvZiB0aGUgaWNlIGRyaXZlciB3b3Jr
cXVldWUgaXMgYWxsb2NhdGVkIHdpdGgKPj4gdGhlIFdRX01FTV9SRUNMQUlNIGZsYWcsIGFuZCB0
aGUgaXJkbWEgb25lIGlzIG5vdC4KPj4KPj4gTG9va2luZyBhdCB0aGUga2VybmVsIGRvY3VtZW50
YXRpb24sIGl0IGRvZXNuJ3Qgc2VlbSBsaWtlCj4+IHRoZSBpY2UgZHJpdmVyIG5lZWRzIHRvIHVz
ZSBXUV9NRU1fUkVDTEFJTS4gUmVtb3ZlIGl0Lgo+IAo+IENhbiB3ZSBoYXZlIGEgYmV0dGVyIHJl
YXNvbmluZyByYXRoZXIgdGhhbiAnaXQgZG9lc24ndCBzZWVtIGxpa2UgaWNlCj4gZHJpdmVyIG5l
ZWRzLi4uJyA/Cj4gCj4gQWxzbywgd2h5IHdhcyByZWNsYWltIGZsYWcgYWRkZWQgaW4gdGhlIGZp
cnN0IHBsYWNlPwo+IAoKWWVzLiBTbyB0aGlzIGlzIGNhdXNlZCBieSBoaXN0b3JpY2FsIGRlY2lz
aW9uL2FjY2lkZW50LiBXYXkgYmFjayBpbiB0aGUKZGF5IHdlIHVzZWQgdG8gdXNlIGNyZWF0ZV9z
aW5nbGV0aHJlYWRfd29ya3F1ZXVlLCB3aGljaCBnb3QgY29udmVydGVkIHRvCmFsbG9jX3dvcmtx
dWV1ZSBieSA2OTkyYTZjOWM0MzUgKCJpNDBlOiB1c2UgYWxsb2Nfd29ya3F1ZXVlIGluc3RlYWQg
b2YKY3JlYXRlX3NpbmdsZXRocmVhZF93b3JrcXVldWUiKS4gVGhpcyBjb252ZXJzaW9uIGNvcGll
ZCBob3cKY3JlYXRlX3NpbmdsZXRocmVhZF93b3JrcXVldWUgc2V0IGZsYWdzIGF0IHRoZSB0aW1l
OgoKCj4gZWU2NGU3ZjY5N2FkIFRlanVuIEhlbyAgICAgICAgICAyMDEyLTA4LTIxIDEzOjE4IC0w
NzAwIDQxOeKUgiAjZGVmaW5lIGNyZWF0ZV9zaW5nbGV0aHJlYWRfd29ya3F1ZXVlKG5hbWUpICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gMjNkMTFhNThhOWE2IFRlanVuIEhlbyAgICAg
ICAgICAyMDE2LTAxLTI5IDA1OjU5IC0wNTAwIDQyMOKUgiAgICAgICAgIGFsbG9jX29yZGVyZWRf
d29ya3F1ZXVlKCIlcyIsIF9fV1FfTEVHQUNZIHwgV1FfTUVNX1JFQ0xBSU0sIG5hbWUpCgpTaW5j
ZSB0aGlzIHdhcyBpbiBpNDBlLCB3aGVuIHRoZSBkZXZlbG9wbWVudCBiZWdhbiBvbiBpY2UsIGl0
IHNlZW1zIHRvCmhhdmUgc2ltcGx5IGNvcGllZCB3aGF0IGk0MGUgZGlkIHdpdGhvdXQgcmVnYXJk
IGZvciB3aHkgdGhlIGZsYWcgd2FzIHNldC4KCkkgc3VzcGVjdCBjcmVhdGVfc2luZ2xldGhyZWFk
X3dvcmtxdWV1ZSBzZXQgaXQgYmVjYXVzZSBpdCB3YXMgZGVzaWduZWQKdG8gYmUgYSBzaW1wbGUg
QVBJIHRoYXQgZGlkbid0IGV4cG9zZSBmbGFncyBzbyB0aGV5IGFkZGVkIHRoZSByZWNsYWltCmZs
YWcgYmVjYXVzZSB0aGUgd29ya3F1ZXVlICJtaWdodCIgbmVlZCBpdC4KCk15IHVuZGVyc3RhbmRp
bmcgb2YgV1FfTUVNX1JFQ0xBSU0gaXMgdGhhdCBzdWNoIHdvcmsgcXVldWVzIHdpbGwgc3RpbGwK
ZXhlY3V0ZSB3aGVuIHRoZSBzeXN0ZW0gbWVtb3J5IGlzIGxvdy4gT25seSB3b3JrIHF1ZXVlcyB0
aGF0IG11c3QKZXhlY3V0ZSBpbiBvcmRlciB0byBmcmVlIHJlc291cmNlcyBvdWdodCB0byBzZXQg
aXQuIChvdGhlcndpc2UsIGlmIGV2ZXJ5CndvcmsgcXVldWUgc2V0cyBpdCwgaXQgaXMgYmFzaWNh
bGx5IHRoZSBzYW1lIGFzIG5vIHdvcmsgcXVldWUgc2V0dGluZyBpdC4uLikKCkhvcGUgdGhpcyBl
eHBsYW5hdGlvbiBoZWxwcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
