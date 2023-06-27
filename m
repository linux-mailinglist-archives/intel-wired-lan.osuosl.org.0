Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C31B73F67C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 10:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 981098196E;
	Tue, 27 Jun 2023 08:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 981098196E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687853370;
	bh=uDcXCWP64JwfR3/6iQR53tlkhUt/7hkXHUF69uCVJnI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aazARYz6ZpaN9SALRXKAWtoS7B3w9Qq5QsN+uvbHhRdynSXGmhnFZVrRy4jArgMmE
	 YwjfKJXGktu5MSPO8pfjtLQPHFDDzF41LCk/djBX1S+Foie0bCPSorHd+eiDuI0u6V
	 /wkheRfo/G6VE+/PFoaf4YtRaSs+mrwWUYdtI6E7iorM+di3db82taFccz8A1Hnupp
	 nrSXl1DK5Bp4W5GAUZYF2yGqu/lF6FU1lh0zc79qxbAmT8xCwzWB+k2EKNi3v1jD3I
	 iH/kiy6AyIJprwIjK3qZ8JTfAUMbrCSQ+E8rOBPPaGR+3/b1eix+YMXJWhPsgjIu+o
	 +O89mSXRPclow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUXXu2iOzMYN; Tue, 27 Jun 2023 08:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3893481959;
	Tue, 27 Jun 2023 08:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3893481959
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 379A51BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EA9E607A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EA9E607A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzXfDLN9T0po for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 08:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D271C60797
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D271C60797
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="425175636"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="425175636"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 01:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="693755740"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="693755740"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 27 Jun 2023 01:09:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 01:09:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 01:09:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 01:09:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 27 Jun 2023 01:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=am6fb5b2QTK2gJQSC5gas/v6WgPrF8rBVLOVUeRsnD/npLPQEAismTDCHHIoFkiHxuejdrHBIO4PQuffpfT6aL+ljP7sXW7h49VUg8g5pa2Z89UrVJvG8yqlRc+BO+Q7aC6nyle6GtsuRQduPH+rf8IYjPEz8Uzdt37mmSo0npAx+4Zi1TFo8Dh0SuDOfvxsBfbjhko9wrpg5zLN7lvuowVIJBEGVFzFZs4AMXvsUVEm8dnEFyqIckdcPdPocLaF633VtnbpGdmat4tMVJkZ1GZmsjKisEiVUzUVT0qxGEWzPwEdWNdhuJyrpJwh1DOgP1YDjOnJc9gn82NYRTawug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvsMuarxVfXVnv+SlbUsLAtUZipcA61z1J63wdDgsds=;
 b=YlLBTyY94qzvtp3XHy6wtl6bXyli45h2PGDbLRbWsuNHfDZJ8zOD+lZ6Devjln/2922AiZ9RvLgGdZOalYEyw+05TCxDYUH34hUkicMkiHaUoiJPELgeMzN40aQGo20m+WfLA/WWUsoA394oJr/0h1ObLp3fTUgxf/MRFfLG6Xgei3WMugfknIDnoHuGlgpE85j2OoW8kTN8oCNoU5Bol9ek1CJFTBijktwsacqYgp1UmsXG06I+G2/muzzR8um5pj5VwmHZJz9bqPrBtFK8WktBiFECezTp62iOffacc5W3KL2Ue+5tT48+Jly9hw7xbsaXkTB55nvcs1DILZBh0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) by
 DS0PR11MB7877.namprd11.prod.outlook.com (2603:10b6:8:f4::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.26; Tue, 27 Jun 2023 08:09:18 +0000
Received: from DS7PR11MB7836.namprd11.prod.outlook.com
 ([fe80::d48c:5581:131e:93c7]) by DS7PR11MB7836.namprd11.prod.outlook.com
 ([fe80::d48c:5581:131e:93c7%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 08:09:18 +0000
Message-ID: <742ac578-7c39-f586-e4af-d7ccc8745914@intel.com>
Date: Tue, 27 Jun 2023 16:09:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@ziepe.ca>, Lingyu Liu <lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-16-lingyu.liu@intel.com> <ZJMLwXt88vWmI4XX@ziepe.ca>
From: "Cao, Yahui" <yahui.cao@intel.com>
In-Reply-To: <ZJMLwXt88vWmI4XX@ziepe.ca>
X-ClientProxiedBy: SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26)
 To DS7PR11MB7836.namprd11.prod.outlook.com
 (2603:10b6:8:e3::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7836:EE_|DS0PR11MB7877:EE_
X-MS-Office365-Filtering-Correlation-Id: 607a2d6d-8af0-4499-dfc0-08db76e5cda6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N8EuUp2ObV3HM6orgM6cD04sOOZHqLzyEJfugKvhP7LHG519n6CITwxTmWsDHIBsOPeSIKDryYKp0ng21XeRmXHT9nCPwK9X/2U86LrxNabTmXr5L8AgzS8/+DnpmQ+Smsgk1o2DgyNBd1FcivcMjC1lo9L22rRn2US1eTTi2obeBIVu4+nG5PJ09qf+Kndlb2CJiZWi6QPR2uXLR4t0RgNTEaavIjCZRN9fW6LQKcz3wGulF0ztuCqzVNfqSUO88gikmyM5mTS9YyE7MRLzWXZ6AvWMPxq9voxBTiI/b7pUQv16hrnCzG2vYpnU8Qui6Lv30MFufvYVjbO+Q6tETBxIiYQXx+83cruiJndnecIAe+zhc0APcOGTuiZIYZuaEcIZ9nnhntOQKK/Gi/iVU4lm2t2D9dkIvC/NSpTcvPuvszIiQ/Umk3aImtISe3RfI5VUbh7NZqj/7o+90eggokEYeupjtDx54IdoSSMBwK0m2g4SoQ4nC7WysucAFeUT40mh+Lcx6O4Mzh4fkgVsAmSVCV3xzz4as2qJA1NJHJYrxnxRVCshN1Xtb9sJyJHKWete+SfiujbQK1d0XIkmt9IN2bVSoHFbxS4usKHbFS48ZK/XxIvUbD3llq9h9Uy8QN5owARbvP2aDZTTR9KaLw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7836.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(31686004)(5660300002)(66946007)(66556008)(4326008)(66476007)(478600001)(36756003)(316002)(6636002)(8676002)(8936002)(2906002)(110136005)(86362001)(31696002)(41300700001)(6486002)(186003)(6506007)(6512007)(53546011)(26005)(6666004)(2616005)(82960400001)(38100700002)(107886003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWRWUmoyUTliRXc1Vm1lQkhnTUFCWHBaeVU5TE1TdzNMTTEzUENwRmx1b3NI?=
 =?utf-8?B?d1RWZzJrS202UEpJWHJCSmwrc1JyRytDZk90L0k1WEhYZWhhOE1pWjFGa2xv?=
 =?utf-8?B?djBDK25uVC9LMHNFTzNOa1k2b2xBL0tjbmVwVFdUM3hURW52cFkvOCtGNk9V?=
 =?utf-8?B?NE9vc3hOa2QrbVBPQmNDVVdWdko5aUN6aTYwZTRTZm0zK2xlRG95ekhCRlJR?=
 =?utf-8?B?ZTBuenpvN1dNZk5oalVLYlN0WmFCcm00blNHVkhxWG1kamxyd3pGTnJjeHpL?=
 =?utf-8?B?WnEyazhsUlZvZUlYRitsRmN1OHUweUh0bTVYajZlOGl6c2xNYVlIRXJpQVlJ?=
 =?utf-8?B?WXZUa2lWR3lGb0FNN05CMkFEVGc0RG5jeTEvanB2SXQxbUdDdWkzdlhKbXd2?=
 =?utf-8?B?bXNLNmhvb0p0YlhRbWhLUGQ2QUVjYjRzbHF3dlk0cW9IdUhNU0xqczAvOUhu?=
 =?utf-8?B?Um14MGdXbDdJVzFndjlPc1NwNUx2OHBGcmJkSFJNb2lNOWFqWmtXdkVxYUhl?=
 =?utf-8?B?UDVST1p1bElJcEFFa0ZHcC9COW4rRVh0TGIyVHRGVzJMT1l6dXpiZWlsb2JB?=
 =?utf-8?B?eDVJYTBTUHFIYTFBZ2swSFFyUUFRb3Awb1FETFBxQXlRVEUvVGNoT3ZMbG11?=
 =?utf-8?B?NmNhVkxxVGwrdHdTUGpYT0QrdDNuTldVS0kzcHUrcmk5eFF6MVlYb0hDMDRO?=
 =?utf-8?B?YUJkQ0x2aUJNamQrajdWeFFFSkpHTGZmenpJWHc0dFlCQU5yemRmUC94eHY2?=
 =?utf-8?B?UnE4ajVLODkwZ1paWXQvZnNEQldRTllvaUNTMCs3VTlJaWlOTGVNK216UU9q?=
 =?utf-8?B?WnB2WERERHEwZERSOVRjMFdSL1pRZXEvWDlFaEF5NDl1Q0k2Y1Y4U2dyVEsx?=
 =?utf-8?B?MExWODRXN1dlWEVja2JubnBJWTZQWEx5WXIzT01zNmV1bVhGdmV3SkI5STBl?=
 =?utf-8?B?TmtLZGFweENtVWFTclZySGY3QzlIK1RPd1p6VnJYMmIxZXFyM0NoTlRrR0Nm?=
 =?utf-8?B?NnZyUEtQWDIwTUFUNUhhY0drY2xkMGh5eUFiMG15a0w4TzlsZ0djM0xRVkJj?=
 =?utf-8?B?SGwweTkzRFlSc1p5aXBPd2p3TE0yUDkzcnBzbjJMZU5peFdFaDRwYU54SnNN?=
 =?utf-8?B?UHJKWlJ2SkdRMWRFcEQzbjNLRGQ3RURlN3FxYUQ5WlZzVGRCcm1GZktYYVA1?=
 =?utf-8?B?YWJ3d01ZSDlIbjY5UVcvTmhvaU9LZkhIS0RzYStzbzNoK0hxcDZueUNVM3M4?=
 =?utf-8?B?QlpNamxFbkZ4Q3IxK0U1SXRmS1A0Z1dqcTg5UERwWHJZMkxGcTRiSGZneTBM?=
 =?utf-8?B?UG9JUERzTjhuaHpWRm9rVmVKUlFIQnF6ZHpYQ0x4K1VEUjh3R0dBL2VtdlhV?=
 =?utf-8?B?YnVXbmo2ZnNRN2k5N1crVkYwRktxT3VtbWlKK09XVGdRUjdKR0Q3K3FQdERy?=
 =?utf-8?B?MmlTNlh2L0tGNVZ2SWowU2pUS2FrZnVadVZYUWRDdEh3aFd1QkZMazVUNG1W?=
 =?utf-8?B?RFpSdW8ybkNGa1FFL2N5UFNkeGNVWmN0OXZ4M29INlRlc0VzV2lMczJZTzdI?=
 =?utf-8?B?T0U3Y21ZVXpFMGtpYVd5Slk5cmVCM0VQejJDcFNsSUxNTU1DL1ppbHlsYVFs?=
 =?utf-8?B?VUlWZHN2RlBxWkkvTTdRb3pKeE9GN3Z4TEJCeVNzUUVkcGNiWDMvNUM1ZW0z?=
 =?utf-8?B?RUdoZ0V1ODdzNXk1eUI5eTZzaTV6eC85dEs3TThGU2sxVlVwWEorTkJXNFhN?=
 =?utf-8?B?Q0VZVmlReDkyT09UMjc3ZjV6ckg4Y1MvVGlUbmdZRDVxZ2kxVDBQamxGMnpo?=
 =?utf-8?B?R0ZjWHZGaHp3OGJtekxxR1VLY0Y3NHlrTmdLUnRVRXZ1VUJiRlZBM2g0WnN4?=
 =?utf-8?B?SjBDQVlVc2ZwSm1nMDJqRXU2dEVKOGdNejhBUlExK0lRdzZ6bFJydkdBU0pX?=
 =?utf-8?B?QUI5djduUDhub2FlVFVoZDlqVFF4ZTJLb1B4QStYRU8rR1crY3hka0RUbkFK?=
 =?utf-8?B?YUxEVlBtUkljamhzSnpEbDVuekhOUmZzT0wvQ21vdlR3cmNxaFVMSEFUOHdH?=
 =?utf-8?B?WWNXSVRqSVF5am9udFEyNDgwWCsvblpLVUpSTnNRd3NpN1E1UHpVK3F6M0hs?=
 =?utf-8?Q?x7N5CQKUc0eSDNDeEijbknJP9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 607a2d6d-8af0-4499-dfc0-08db76e5cda6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7836.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 08:09:17.6092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eH7177SrqCqe1NdYUSfxqua9wGqqn6ZO2Id13SNd+CtbD5UJ/O23sgFgqo+Od+LrOITZBKjOuUmc0IyBn9GB3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7877
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687853362; x=1719389362;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rSAIVMPiVW3HLIObVb9DRzC3hTklOij5TrmVKKCL+8o=;
 b=T0iY+2u31zk+DsWGTJ24/RO3LCtCAaFAnOOf04Ui/VzLEIWfnNMBzJ3Z
 j07S8PFsB9cVHZg/qgfIflscFmCUeaoc0Hhv+uhts5Kcglf+8OhuNdivX
 dcaaScC1hsKAjhKvh0/RMN5FyPtY8ik299swtniXUpfblNm2g1PfRvkKQ
 0TVRu/0AD3kpxk5JdNCi09T8UvfEKNsYYXJFCptxYDpEs3SkqZZrH/Id9
 Q/+9eR0nvRbetXri4ecVIOIjmrAOq1cIomfqyN1j6mXHVJ3Jpw0p/Dq6N
 EWNg9MYWxiBqY3ikozoUtXqB8k5OYUEdzzn0pTtzzri7i8OXja+LZnJKn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T0iY+2u3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 15/15] vfio/ice: support
 iommufd vfio compat mode
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jason,

On 6/21/2023 10:40 PM, Jason Gunthorpe wrote:
> On Wed, Jun 21, 2023 at 09:11:12AM +0000, Lingyu Liu wrote:
>> From: Yahui Cao <yahui.cao@intel.com>
>>
>> In iommufd vfio compat mode, vfio_dma_rw() will return failure, since
>> vfio_device_has_container() returns false and device->iommufd_access is
>> NULL.
>>
>> Currently device->iommufd_access will not be created if vfio device is
>> backed by pci device. To support IOVA access, manually create
>> iommufd_access context by iommufd_access_create/attach() and access IOVA
>> by iommufd_access_rw(). And in order to minimize the iommufd_access's
>> impact, store the iommufd_access context in driver data, create it only
>> before loading the device state and destroy it once finishing loading
>> the device state.
>>
>> To be compatible with legacy vfio, use vfio_device_has_container() to
>> check the vfio uAPI. If in legacy vfio mode, call vfio_dma_rw()
>> directly, otherwise call iommufd_access_rw().
> This is not the right approach, you should create your access by
> overloading the iommufd ops. Nak on exposing vfio_device_has_container
Could you explain a little bit more about "create your access by 
overloading the iommufd ops." ?

>> +/**
>> + * ice_vfio_pci_emulated_unmap - callback to unmap IOVA
>> + * @data: function handler data
>> + * @iova: I/O virtuall address
>> + * @len: IOVA length
>> + *
>> + * This function is called when application are doing DMA unmap and in some
>> + * cases driver needs to explicitly do some unmap ops if this device does not
>> + * have backed iommu. Nothing is required here since this is pci baseed vfio
>> + * device, which has backed iommu.
>> + */
>> +static void
>> +ice_vfio_pci_emulated_unmap(void *data, unsigned long iova, unsigned long len)
>> +{
>> +}
>> +
>> +static const struct iommufd_access_ops ice_vfio_user_ops = {
>> +	.needs_pin_pages = 1,
>> +	.unmap = ice_vfio_pci_emulated_unmap,
>> +};
> If you don't call pin pages then you shouldn't set needs_pin_pages?
>
> An empty unmap op is unconditionally wrong.
Will change in next version.
>
>> + * ice_vfio_dma_rw - read/write function for device IOVA address space
>> + * @data: function handler data
>> + * @iova: I/O virtuall address
>> + * @buf: buffer for read/write access
>> + * @len: buffer length
>> + * @write: true for write, false for read
>> + *
>> + * Read/write function for device IOVA access. Since vfio_dma_rw() may fail
>> + * at iommufd vfio compatiable mode, we need runtime check what uAPI it is
>> + * using and use corresponding access method for IOVA access.
>> + *
>> + * Return 0 for success, negative value for failure.
>> + */
>> +static int ice_vfio_dma_rw(void *data, dma_addr_t iova,
>> +			   void *buf, size_t len, bool write)
>> +{
>> +	struct ice_vfio_pci_core_device *ice_vdev =
>> +			(struct ice_vfio_pci_core_device *)data;
>> +	struct vfio_device *vdev = &ice_vdev->core_device.vdev;
>> +	unsigned int flags = 0;
>> +
>> +	if (vfio_device_has_container(vdev))
>> +		return vfio_dma_rw(vdev, iova, buf, len, write);
>> +
>> +	if (!current->mm)
>> +		flags |= IOMMUFD_ACCESS_RW_KTHREAD;
> No, you need to know your own calling context, you can't guess like this.
>
> I suppose this is always called from an ioctl?
Yes. This is always called from ioctl. Will remove this calling context 
check.
>> @@ -19,7 +21,7 @@ void ice_migration_uninit_vf(void *opaque);
>>   int ice_migration_suspend_vf(void *opaque, bool mig_dst);
>>   int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
>>   int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
>> -				   struct vfio_device *vdev);
>> +				   dma_rw_handler_t handler, void *data);
> Please remove all the wild function pointers and void * opaques I see
> in this driver. Use proper types and get your layering right so you
> dont't have to fake up improper cross-layer calls like this.
>
> Jason

Will refactor the API with proper types.

Thanks.
Yahui.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
