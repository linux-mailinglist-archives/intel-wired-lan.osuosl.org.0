Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE75810DAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 10:49:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C31C241DA0;
	Wed, 13 Dec 2023 09:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C31C241DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702460975;
	bh=qYZss/2dcfQy3Ms8EZlT7VNykwMHLq53tNcLiLqyE/Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=USkzAUXnqi6vq4ugGpHYxG06A2At2r6MNIzFFWnyv1ViL5SJb+QKoXczNR9Xu6VV/
	 7cgvjCV3jx+4vblVfC+JiI79g1obr4Upi5YEZrmcl1JC/MNCPgZ8kbn15jlbg2H17i
	 jyYUlQvNCstaLsZP//yJpYQMeQo85f3238Mf0MM3ECQeP4xrCpTGklPbiDUZQuftSB
	 zmKeyaGg9U2v9SIYj/z+BiRif/baC25BMubzsgrXSKNIwA9LSg/QXV8Va09+Yc/GYo
	 GGAAVpucu1PAmu/x6LrTbpKjr2+uwU9n82clUgHLZDTznEJFCoI3xTfINFkemfk4w+
	 onqhEark4u/ZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R3UVU6NGyCbX; Wed, 13 Dec 2023 09:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77A1E41D91;
	Wed, 13 Dec 2023 09:49:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77A1E41D91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F6F71BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8FD560A7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8FD560A7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwZ_umk61Qqr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 09:49:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2263360AEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 09:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2263360AEA
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1797176"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="1797176"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:49:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="750057561"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="750057561"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 01:49:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 01:49:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 01:49:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 01:49:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 01:49:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ElOvzamoSQopa0IuipPh3AHScKZ++/xc4V+AeywcTHzqyr6PTHVvZ6wxSObxL7hxKpy2xQy5kVYfST63KhOof2T14bSn4YB5KqRgawJedMvmzQ3am2nX6Z8PHCjNTsei3DUBOVQe5H6dvLjFYX7PThY3ndFeNf+UDrsUCWSh1/xlQYMns3CnzhMWzHKHTQl5bsYvsXDFyeyB41R01BaCij5a93oQnrcFo4LQHwrU3jl49OpEKQcUBvS7tu2mpr+AuApTXBDt8a6ZqhiXEWZ42JfsEbU2fxrcX7sB7+sPIZv/NSpQv9Bq1w2/HuD3pYZTVkuiL026bjpuc7u4QFt47Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TulmZyRFh/7VObXQgbbOF1Lf1ZTH1UmaohdlvRZvtLI=;
 b=AjHhEil949C/g9wn0pPXlgUv5Tt254dZB2MvxJNBZInvw7gRtb1Et1LwY6ByYihI4iQxwlIkLXkPwu4I9Z95WuTU1YYwsyvncWQtYsMRGw5czLOj3gZfpMem7P48UQtkRwYx4V7WMqVb1G+upXPgba6PPK2AG5SAy67ReOxydXPgjjw3fTfIaSwdk9Gc/dwLH4B+eiGpB8jJDZpLXw3jX//KU04U3Rancvkd1nBJIyuUqkFUPSZtw2gjTPx0TPNpPg1n23W3nD3gySx/cG8NKJvSaFRgR6MIM+tnWFCuJNOCZA1hqFYN9T5U0rZhjeZCtO9u2v3neIKTKyrfeQYzhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 09:49:23 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 09:49:22 +0000
Message-ID: <1abd6bcb-6f6c-10a7-9b6f-e5e038233af8@intel.com>
Date: Wed, 13 Dec 2023 10:49:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Kunwu Chan <chentao@kylinos.cn>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <richardcochran@gmail.com>,
 <jacob.e.keller@intel.com>
References: <20231212024015.11595-1-chentao@kylinos.cn>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231212024015.11595-1-chentao@kylinos.cn>
X-ClientProxiedBy: FR4P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::14) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB8427:EE_
X-MS-Office365-Filtering-Correlation-Id: 810c45cc-d015-4132-ff16-08dbfbc0c82c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u9Zbbhlpinztdtjz8dQMeXUI504vNaAMZBvkD0UPYoimZYlcYRzKZM+X8/o6Cmnt94q/1jsRwhUTMZMnLgAyd1g2b2VhS4xT/KLzyIxSWkfVyuPpm5dh+TlCfD4CIzgai3tKhYbjzUDEOGZYXcRnUpkH1TRy852WLvzqBv947gYitkKMsTmitTfjvnLd2476bqcFOPUAkVPUgZfkhu3JAsmxCQJdGYJnR0NfvgbcLAnTUxoeTJJh+n5AgIKFCFbaqH6/xgwyhaxzOLEkT89lADDwvhSnQbE6n2HU+TTEjJ4bQ626gR7MySvnORlgVcp+BYZrkL6y8AQ2JxQib+/7aHjH7svtGtwCMiOn/d4XThggK//ZqZZgLdplI/wsaCgRxV1S9WO9EzhfHqvM4D0NrE5TzOeD2aaeHbayV7GW760jBcYiTjFoYoHOlEGYCLXYIYaIOfGbNGF4RctbhtPcI4V+jv0Hc0eTuzN1sY4zW0ByP+tc/6FdT2QN16dG3M/CMFk1+M5/9QmPaMLwIsA5D/L4oUZy1TZMneSZkTGQMDnZL4Y8XHC4czTLa8mAa8Xz8TWiuPenN7DH7up7YsWp+Aqbjusgw9Q+oJxGaM5d3BYOmoAxVRXOe57hnqP9ZTpr9ZL0Bewf5TGkjxA8G27NYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(31686004)(66899024)(2616005)(26005)(6666004)(6512007)(6506007)(82960400001)(31696002)(86362001)(36756003)(38100700002)(5660300002)(45080400002)(8676002)(8936002)(7416002)(4326008)(53546011)(83380400001)(66476007)(6636002)(66556008)(66946007)(41300700001)(2906002)(316002)(6486002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzRHYldiaVBwaDg0OE1VTVNGL3JvNUtjREZPN2FVZlE4S1FUdVp0dHNCT3FL?=
 =?utf-8?B?S1IzOVFKcU1IdEJtbmU0RmhFZlN1eWpOUXFXaEJWL1hPYXowdzFqblpwS2RI?=
 =?utf-8?B?a1JLeWVCVG1OQ2hDMk0wa3dCSXhUSW1IaFFYOThQL3F0N2FLNWRGc2NOQ240?=
 =?utf-8?B?RHJoY3NCT2NEWjJteXduRDM4c1l1aXoxdWoxRzhKSWJvZDNqVUxUbjFYTC9p?=
 =?utf-8?B?aVZHTzNjckV1VmxDQWQ4QzE3UlNSeWtFUUlSc1FYV1MwenpSenFnQzMzQzJT?=
 =?utf-8?B?UHpCbEhRN3lJeDFqTk12T1BzZklnNHFlMkVWR3FjMXdPZnFlWnI0Umk5bUZz?=
 =?utf-8?B?MnNWcGxkVGlRRnNxNGdKWUhGN01US2ZjQURzOEJHc2FldDZBWm93OCtmMDEv?=
 =?utf-8?B?b3l1VFNZejgxN2ttekRTUGd6MU1tTkEreUZYZGJoQXpEMXNhN3hKNXRCeTVS?=
 =?utf-8?B?d3JYb2gxUHBMUUVYYlI4WHhBeUtSeDd4QSsyWlIzdVBXN0J0UzcybTNYUWd1?=
 =?utf-8?B?bVN3RStRS3dhc1lCa1ZhdHZnUWh1OXMzbkZWcGtDVXFhTFFrcjdhQy9lTUtl?=
 =?utf-8?B?UC9WSlpVajQ5Qzk2VTlmekVyd1V6WXBRaDE0ZnBFMUl6aEVqVm11T25oNnhG?=
 =?utf-8?B?U1l4ZVNybkNtOWtQa3BjWTd2VHVkeUtLY0pPbDBQR3JrRHFPTGFuYkFWbitJ?=
 =?utf-8?B?c3hIZ0cveU5QMWwzVWllVDlOUFhLd3Z3Q05HU3JMeWdUd0pZS2VUenJWbWRJ?=
 =?utf-8?B?alZmT2JGRmx3ak5yTWFwazJQY1lFNE5WQzdURXVxcjIwRWRsamRzYUFCdjFh?=
 =?utf-8?B?YVVnZUdjUUhCOVB1Vm9wT2duQTVxbEJWdDNOTWp4TGtyeVFRamRMOGZFY2Fu?=
 =?utf-8?B?VTNxU2g0b2RQcUsydHhCYVcwbWNjTmJxazBnSnRNZnNnUzZQTEpnNjRwaElE?=
 =?utf-8?B?dXRhTHNrRmVHQ1lvbEI1aWRPREtsRTcxNnNDZUhxaFQ0WUk3TURaa1VacDg0?=
 =?utf-8?B?VEk0emdqU0I5bmdjbExDS1JLUjBtNHBmOW9rdFBZdW1MOUpLbUprempLaTha?=
 =?utf-8?B?QzViZGxGdFJZelluZVN1WVBOcElpcnlpZDF1NFE4N1Y4d2xJV2xJNFB1d0VY?=
 =?utf-8?B?c0RVZmxmVnMya3gvTTZFVWY0d3VoUGZRTkZxcFJVS1hMdnozaXhseGhzMEMv?=
 =?utf-8?B?am5JODFKdUdzVjRaaC9aa0Q0MkdUQjZlME84OWZRRk9hRjBmMnQ4RWgwM3pl?=
 =?utf-8?B?VlhiaU54YmJTQ2VyVlo2RlFqVTg4OG1FWFFKVzVOd3d0N1JxUGU1N0IvWFd3?=
 =?utf-8?B?REcvbEtmdEEzTVVqNnpnQjFCMFpnZnl3VXdZaHlrMHhxZFphaUJkZjNkOVhp?=
 =?utf-8?B?ZVZldVJnd09VYmt2RWdORlg2ZWVTK1lJU3FRY0dnT0lkRCtEblJ4NTR1TzBD?=
 =?utf-8?B?S3FKblJxVUZibFhaZkx4UjNlckJCYUNCSk9EUXJXZnQzRWx5VHY3N1NFU0lC?=
 =?utf-8?B?Vm9nd0ZYSURtaTFPOXdjSzZLbTJVSFN2VjZzS2dHZlkyNERKOTlGU003V2tH?=
 =?utf-8?B?cFZLWG1Rbzd4YUdDSVp4bUtySjRBTjRiNnNQMlVaNmZML0xtZ0J3TjVSWTFJ?=
 =?utf-8?B?bHBVSisyd1Q3Q2t4TEQyZjlmT1pqUWhXb0JMSlMxQUt3WUhCenlkUFJGSWVt?=
 =?utf-8?B?ZWtScWkyMzFDdFhUOVFmRkl5WXk0S0hDVTZvYVdlcEJWa2hoNFBpdStJMC96?=
 =?utf-8?B?MDJ4NHhNblljY0U0NkdBUDVVeEtrOUNYZ3VvRmNuMXFCRmovWlF5UU5oeXZr?=
 =?utf-8?B?RkNWOUtzSzJpQ0ZISGg1K1JVT2xUL1p6Zy9IQVJsTURmZWVYZ2JqREt0UDB4?=
 =?utf-8?B?RktHMThtVGhiT1AxMXZuaUFYSGN2OHJFQkQwalF0WHJwSm13VElnSk5sSWNR?=
 =?utf-8?B?eG9BN2VUMldEcEVCMlBiSlUrclhwTUZDelFIUHgweHdGUmppU3M4Tk1oZVZo?=
 =?utf-8?B?dkVHWG9ZVE4wTERzVWR2cm5uUzZCYVBVanU1cGdPb1B4YkV2QW9oRjhzRTdH?=
 =?utf-8?B?Y1NQb29kOGRrU0dMRkF3dkZNWmRQMWlKb0tSdUVYL2tpWUVnYzJDcExPbW5y?=
 =?utf-8?B?SGZPM2cxVGNWVDJORzZUVjQ2aVY4ekJiVVRjR0d2R2ZjSi9kV0NWYllRaGU3?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 810c45cc-d015-4132-ff16-08dbfbc0c82c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 09:49:22.4571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YCifLmbOVtz4dXXr/WNGyhWpCPOf9HI63NrMOG/ksh75lLqr0Ajwb+GUuseH5NiNHSSjzjvmL1PgWEBNbTQFKFlt+Me/+UC89jjtNojH9VM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702460968; x=1733996968;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/BE4cI8nyAieZmYdL41ExEy2b/slFRRpAViTi2mAXFo=;
 b=kksXQ0iAzvC8ERQ/wlcrEKGVDQZqHFDauA0zGD9+egi0NA3pZdGPJtzX
 9pX9mPR1fgs7CHY1oWIFgnUqt+/H8dwgbFJgD8RkxSdw/b4I5av2PohgQ
 M3qqKltOjpyhgVPOkM0fnCR1UG9IxcBfxn3WGIsitzt1aTGaLlG2tlJiQ
 Q//tnXBGcJO7fPvBkV9ISf86qGTh0qR/fQ37vWWeFjwNi4d+P+M4F8TGI
 oXNCcRUvm5zZqf3sXwn+mhtTj0GaoYX+NoiQI7SkutSs6r2j13IdLN4VL
 Jw9nxPbtiXuB7G5HGzreiR3LZztIe3HA3N7UmDAu2yfgtwoYk/75EC4Es
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kksXQ0iA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: Fix some null
 pointer dereference issues in ice_ptp.c
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
Cc: michal.michalik@intel.com, Kunwu Chan <kunwu.chan@hotmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 karol.kolacinski@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/12/23 03:40, Kunwu Chan wrote:
> devm_kasprintf() returns a pointer to dynamically allocated memory
> which can be NULL upon failure.
> 
> Fixes: d938a8cca88a ("ice: Auxbus devices & driver for E822 TS")
> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

You found the bug (or some some static analysis tool in that case);
there is no need to add Suggested-by for every person that suggests
something during review - the tag is for "person/s that suggested
making such change in the repo".

Subject line would be better if less generic, eg:
ice: avoid null deref of ptp auxbus name

> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index e9e59f4b5580..848e3e063e64 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2743,6 +2743,8 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
>   	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
>   			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
>   			      ice_get_ptp_src_clock_index(&pf->hw));
> +	if (!name)
> +		return -ENOMEM;
>   
>   	aux_driver->name = name;
>   	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
> @@ -2989,6 +2991,8 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
>   	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
>   			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
>   			      ice_get_ptp_src_clock_index(&pf->hw));
> +	if (!name)
> +		return -ENOMEM;
>   
>   	aux_dev->name = name;
>   	aux_dev->id = id;

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Regarding iwl-next vs iwl-net: this bug is really unlikely to manifest,
as we take care of both earlier and future mem allocs for ptp auxbus,
and auxiliary_device_init() checks for null name, so no big deal,
so: -next is fine
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
