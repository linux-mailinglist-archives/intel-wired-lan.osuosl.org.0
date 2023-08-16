Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6369877D717
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 02:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2B0D414CF;
	Wed, 16 Aug 2023 00:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2B0D414CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692145985;
	bh=wgauqeRvYa3HQnOOzBiBcqfJ4oTrizhmexlcmuiPr6Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LbKEBN5F+yjU/8Zb+r6WTyHjBhvEtSyncJlAxZM463KEwyiFnT/CzjuI/LNLdGW7f
	 o6d4R33+FFvfWUeqJ8nj93EiuE7iUKvgt+F0ZrxUZ+/+HJJM5UnGQMiU/ezlUtK47n
	 1W/UqhmFOMBd0tb81b4b+C3qzICWAcPh+rLuvvMeQZ6I7Jv26xIA3rf8ZjO0XW6usk
	 pLhcKCw7EXEOLIIxbXZ8BLgWiZ0nB/iynXQdUC9Y64qKmsnbai2tJ9imKuZWWketMq
	 biWcq6WY2EOhBrCr6bSLmVR3+5lpiTKoMzxVOZmbzsispuOJMVTeNjMBERldREuo2d
	 sQglwpoaJnyMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k788syquuXHQ; Wed, 16 Aug 2023 00:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8834A40105;
	Wed, 16 Aug 2023 00:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8834A40105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67B541BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C3E4820A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C3E4820A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yveFRLX5t5Zm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 00:32:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39DC28208E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39DC28208E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="351993897"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="351993897"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 17:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824042093"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="824042093"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Aug 2023 17:32:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 17:32:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 17:32:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 17:32:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwBvlAbQIwrtBxqYbz4NHEQ37kfMvNw2ZlkFiOFdhs9OIQfsopvvSW4dJivhxrmibHiQ51+Rj2ZycVrsbZS8Gd3kgFowTHIrafn8wtlHgtl9ugym0+X+6GUVQCKBxZtPchomzBCcWKLUR8KmTkfoHOrYicZjY03ERyc7gig3CETDOtBoj15v2arV/P6M+KwSwBvrlxyhCjLMwrK64mBWEv1BQKZO8CpwzWQPVDNj97T0YwIUIcKaHOD7iRfgbL4DKLmq4M7ILex115H2Tz75J45D4GzizNwLIl6tVkXBhqYuJq9iYSqDFU+skkjfWq3B3FshD/sL3JcUY2uI/FDhdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltsd18JdX9BveQ0/8Yo8zgDR1GcIUlOBGWX9nSqZCJ0=;
 b=jjuAimfb8JY+3EvaqJITGBgruMmt7V/JHO10iChDYvmcdL12QDO/TCe+D7E7dD2EHT2o7GNldtkd880G5OryYsdTRQbh4XOKrOI0+1vWsr2Hjxic4pnkk0vMlm7h3oFcaR8nftVYfOZDANLv405l4HmWUWmB3RzorRExlzF9a8niYXZUXaRTvRxdaLNHzKUEUm6rFyBDharBhO4eI0gANDwXktYY0OlcH0k+wPWfqbN3TZfQMF43vFbw6nmTcW2rHQ4/odQujk8URiz9bjQOHU3iGEsEIQrEBOQObpOpiUPJPnCZjzBF7a7TlBxjZnTPu+vLPLTo2ESzZZBlpHQ77A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 00:32:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 00:32:55 +0000
Message-ID: <2c5b4dfd-64ff-9afd-1b9b-910152c9dd1d@intel.com>
Date: Tue, 15 Aug 2023 17:32:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-5-jacob.e.keller@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230815223551.1238091-5-jacob.e.keller@intel.com>
X-ClientProxiedBy: MW4PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:303:8c::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6824:EE_
X-MS-Office365-Filtering-Correlation-Id: d3a41dd1-9f36-4086-c366-08db9df05523
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fG5/9QPd+6g1f0qFU5f+8uoCV3bMriLipYMPEirQSuKJXDhTidnKmp1jaXkwGSUrxZv0kU/JnUwvhYxOz+c+aqJBc8I3YtxtGzu/HeIVdGlAhuZIrnvaWFk1rae3I3CNNDYQzH1aMDlHEEAUJSSTP65MxAagoSMKDb+nmfr6SVS1ANARaZhUujzblJ48Ad8Om7P3BUA5Fgx19/1vz5glbTNyu+3p0SzZRxLXaddCN4eMckAm0qyZugyOnYVk1aaeCF5+nhcn7UO7GuIId2cfiiEmeT5u2OjiEvVPUI2kUOP3YBuDzSI0f+W5KG97efLYgJXXgx+RLLLrw4aayL9F2aU5Olzrm0xdeh02hG7Qj4A1J+iCQzXMbCvHSMdc5S7qXGSazAchL3gZvvrQMH3IOqU5BPlvPvETE6u7I7lYwa/wlzCmFx8WxuGIe/4aj0s+71k3ds78C0nGQPN8xCp4PNEAjIR+OG2Wwnme+3iXdUYf0OktQUVLEk8696INnQf9OHeI49TvvMRqc9zPKxN784aCXslriszW5if43aACkb3+FYv6s8K0/dii5ozoAxf7l3VUKrKYpAWRHHcYICyprVkCWoG96cBWTgIR7ZH/EVxsAQxOoDlUD85DdB5fwT2lLVGfKjmGROYMjoAV3j4Ecw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199024)(186009)(1800799009)(2906002)(83380400001)(316002)(6636002)(478600001)(6506007)(26005)(41300700001)(36756003)(38100700002)(53546011)(5660300002)(31686004)(4326008)(66946007)(8676002)(66476007)(54906003)(66556008)(8936002)(86362001)(110136005)(6512007)(2616005)(31696002)(6486002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlNRWjRRNnY0cUlwK0k0QTl4SVBabnNiUjMzZDh3Z1RXeUZJNU1ZQmFTaWdG?=
 =?utf-8?B?b1pkSzIzb1lHSktGYU1SaWhzeTdHUk9yQm9zU01UYWNYa0JHR0hZYkczcStC?=
 =?utf-8?B?SThMQjR2WGwwUEV1UjRPOUJBUmUrd05uTU83UENEMEwyc0cvaUl1RkU2a05p?=
 =?utf-8?B?VEZ0dCs3d1VFTVJaU3E1OE5iMFJIelhITWdtejJyRWtsK0wxT2g2SUxVQkxK?=
 =?utf-8?B?VVVUaVRTL25ZTlFxZHBvclZsbG13WmlkSFUrYlE1amRYUU1wTnF4M0FIcm1u?=
 =?utf-8?B?bEEwQnhjbGFDeElTbzZ6RUpMbEVHRzgyRkNTSXI1UGU4Ty9tWUkwcjN0QTRS?=
 =?utf-8?B?VEw0UWZBMEhrZmtxaVppZE9jYk5lczBJd2dqalBVTzJuZkpxRHZEOUJZd1pj?=
 =?utf-8?B?M1VoUDl0Y2lPdHdDdEFJTnM0bkZDZkxQai9BTDlhN2N4MG9yOWRuWVhPdEFr?=
 =?utf-8?B?YmtRRzY4SFB6YXhKak5LOW1zeG5sMHJoMzBITUNpVCsxcEFlaHZDR0R1amUx?=
 =?utf-8?B?amptOU1yb2dGQS80SG1UVW80R0dORjVzU0dKV1B4SENxSEM4L2txMUc5bFE4?=
 =?utf-8?B?UGxTTUlLUGkwTzdNWVZ4QXFOdS9vbnYveC9NSlIvWm9NRm9nRXNzZ3JOQS9C?=
 =?utf-8?B?aEYvalRpeklyWFFFMTdSSXFNdkcrUGRKQTNqYVlLZjlKZVhaSG9xbVdyQVd2?=
 =?utf-8?B?QVpLMnh1VzhIVER3MDdFeWFXdWt1eTBRaU5yZlZmM094anlZT2h3R1hhQmM4?=
 =?utf-8?B?a211Y0dZTG9ELy9KU2NiSWdlOUtwM25SZS9pN251Uml6eFE0TXEvY1ZqckNi?=
 =?utf-8?B?b1JGUERhL24zaU5vY1lHUHBJbjYwUksrVWNhMVVwaXhIaFBpUUhZS3JGU3Ez?=
 =?utf-8?B?bTdJMDdNZitreVVQSnp0ZVY1OGQ1eDNtbUwxSWJtQzhvMTNnUkFJS2NDdW9J?=
 =?utf-8?B?MU95N3Z6OXRCb2I0eVpVeG9ua203MHF3U0pncDkwTGJVck5BazRRTzBnelBE?=
 =?utf-8?B?SDRybVA2NGM3amt1dGpJOWc3UGdFdHhiVVVlajZvS0ZWUGRVRHBtYkVzMytB?=
 =?utf-8?B?ZWJSbUhySjNOV0lzSGY3UVpXVmZEUmFOVkwrdkVyekNaOTVpdVNGTXJrREkv?=
 =?utf-8?B?b2hBdWF1QXhVZnZtUjhxa25zS3J6WVR4bmF1cnpGQ1RkaEF3bW03RTMvd1ZI?=
 =?utf-8?B?ZHoyMU8vaFlQTisrQVpoTjUxeEowMFM3OW5XS3F1cWZibjkzaHA5VnZqMXBH?=
 =?utf-8?B?aVEvUEx3ditXeW1KdGVxSXJJYm5zY2xYWXpIeVRtMXdWK1BUdUw5eHRHbGNX?=
 =?utf-8?B?MysvQy9sc2Q2RFRENWhzaXFFTkJmYUZadWUxY1FXak5SY2ZoM2RDYXNaMmUv?=
 =?utf-8?B?Ry9ZU1hXUXBhZ1NpZnN2UVRIdGtGL0ZMWDRTNnludDFpbHI1R3U2bm9FZFFU?=
 =?utf-8?B?VVM2UHdRNDNVV2xZQUtjc0pMZVNjaXI2YmU5MEtkUDRkeWphdnVBYWNOY2dm?=
 =?utf-8?B?YUowM1MrMVMyY25xQmZIK3VUdktqQWkvUXNGWlllUXZQVzhoZC93bU53a01W?=
 =?utf-8?B?QTNSb216UXYweWQ4NElpNnVUVC9FRHRxNEtRV1lFRXQ3dVE2bVc2Njg1WlRX?=
 =?utf-8?B?bUgraG9nMVloMVlmcmozc0JxbGo5R0xMeVQyU0E2elFNYXZEQ3NjQjJPcGE0?=
 =?utf-8?B?TUVaMlZyZEFLZHpNWUJ2djNNWDhzTzNaUG8rdFJ6cGtnTGFrOUZycXV1bHRL?=
 =?utf-8?B?TXgrVG91Vi9KUU0vWVJXYUlPTkxvL2N5WGRuT282NVV3Z3pTUTg3YWZ0VkNn?=
 =?utf-8?B?ZmE0VmEzYTJsVnMycHNMRExpd1hxWEN4RG9OYUdhTlhiL1BmaVd4REhJbzEy?=
 =?utf-8?B?bDZ1Y3hSN1FUbXEya29ZRFprUnBPVHVDZWZ0alh4NUgxdGFLMG9qY2NGcmJw?=
 =?utf-8?B?MCtZZVhXa3ZITjYwRkN1di9zMVpCU204VG5KbzV3QU9VVVRoa3ZDdjJvZjRi?=
 =?utf-8?B?VVQzcCtOQXl4WTFwZVB6L0xWbGtjcjJra3c4NmxRYmxvQ1JDb0Zia1lMVGFi?=
 =?utf-8?B?TFJCZGtPaDNIVHpaQWZMYk1SMG15YTJGM2dobmI3RHZLNmNZZ2FxNXFWSlRp?=
 =?utf-8?B?QWNBNzVBNjNHd0Q4V1AvdklPcnU3Vld6MWtycEJmdHZuVEJ4c2xOOFVpandC?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3a41dd1-9f36-4086-c366-08db9df05523
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 00:32:55.0442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AiM3rlchkXPC4Le0VCdtio9LgJYI0eN541drkw/b2Sm2tfYjOeweIEz/wkANAGUzoiyveuJD8DcOpCWE6sX+RI6tF7Ip3XpPkrY7Z5c972Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692145978; x=1723681978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kywzpklt0JCjkbnDyRqHsZT5h27dSQKpPyULmmy8S9g=;
 b=QImMPqLHhi8V0MXZhm0RltC+J0I0HIR8f9VWRRq2/QT+BD7c5Qfkj5p4
 I6/XLf4gaS+3U+6ssdrkm7722I9C32EfTE9YDGvxg3FL+vwvofUvFqCdj
 /7/qnWVn2FB2VAf9DSDGE2ZbwWaq6nUmKzAGfoH6cfASEFZKpZnY8O6IB
 IfyNT6WU323Na1ZfsdynO1lKKl2ywaIQsY4U54dB6ApUildwchMdX9pPQ
 9xn2GCLRjJlD+V8xZddNmBcOLr3ZxWpzk3XrrVT8wlfS89SKjk08DDjNx
 QWP9PTdu64iQPwte3VgfMek+PrFd+AM3O5kFFTUe0WDqa2TsvZMkhvdDT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QImMPqLH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: check netlist
 before enabling ICE_F_GNSS
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/15/2023 3:35 PM, Jacob Keller wrote:
> Similar to the change made for ICE_F_SMA_CTRL, check the netlist before
> enabling support for ICE_F_GNSS. This ensures that the driver only enables
> the GNSS feature on devices which actually have the feature enabled in the
> firmware device configuration.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  2 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c        |  7 +++----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c     | 15 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h     |  1 +
>  4 files changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 82c4daf0a825..2f0d4bffe210 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1368,6 +1368,7 @@ struct ice_aqc_link_topo_params {
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
> +#define ICE_AQC_LINK_TOPO_NODE_TYPE_GPS		11
>  #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
>  #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
>  				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
> @@ -1407,6 +1408,7 @@ struct ice_aqc_get_link_topo {
>  #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
>  #define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
>  #define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
> +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_GPS			0x48
>  	u8 rsvd[9];
>  };
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 4ac8998cb964..24a30b55c7ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3991,10 +3991,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>  			break;
>  		if (ice_is_clock_mux_present_e810t(&pf->hw))
>  			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
> -		if (ice_is_e810t(&pf->hw)) {
> -			if (ice_gnss_is_gps_present(&pf->hw))
> -				ice_set_feature_support(pf, ICE_F_GNSS);
> -		}
> +		if (ice_is_gps_present_e810t(&pf->hw) &&
> +		    ice_gnss_is_gps_present(&pf->hw))
> +			ice_set_feature_support(pf, ICE_F_GNSS);

The names for these two functions are incredibly similar, and I'm not
sure if I have a better name. @Karol, this is what we have in our
sourceforge driver now, but I'm not sure I like it.

I think I'll drop this patch from the series and we can investigate this
and sort things out a bit?

Thanks,
Jake

>  		break;
>  	default:
>  		break;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index bd3f32bfbc78..455d7a15de26 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3034,6 +3034,21 @@ bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
>  	return true;
>  }
>  
> +/**
> + * ice_is_gps_present_e810t
> + * @hw: pointer to the hw struct
> + *
> + * Check if the GPS generic device is present in the netlist
> + */
> +bool ice_is_gps_present_e810t(struct ice_hw *hw)
> +{
> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_GPS,
> +				  ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_GPS, NULL))
> +		return false;
> +
> +	return true;
> +}
> +
>  /**
>   * ice_read_sma_ctrl_e810t
>   * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 3768e7a01920..4399338b7347 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -196,6 +196,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
>  
>  /* E810 family functions */
>  bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
> +bool ice_is_gps_present_e810t(struct ice_hw *hw);
>  int ice_ptp_init_phy_e810(struct ice_hw *hw);
>  int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>  int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
