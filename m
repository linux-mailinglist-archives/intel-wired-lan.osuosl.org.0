Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D5E5963A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 22:20:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 298B4817D3;
	Tue, 16 Aug 2022 20:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 298B4817D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660681216;
	bh=X0xRxVY2t9BEk8Q+y17I23CthQsi2oPfAcb5PaRhg8Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5zrQo77Yq/nH4JwrzCbjDgAxIyPur7gTrZfD+QwBwmZ36P/fBPN8H+pI1JKLpL9TI
	 w/Ro+2l8AJsuB0RvlWrkuoL1YNwuz3tNdey6vKnXqy8qR2LwJuzH7KbWHDVQJdhRJ/
	 3uWxKqukF6wp+moUAtZ0a4crH5cxZacBLvaL/3KmmoGiHXsWTp27rLCdpvpGROfnAc
	 WmlQJsoLdzTcnlR+p1NODs7IpN7uPdx1k9I6huNU8Tn7L80jNtupNk80xmaZOyfGGt
	 5Ki33OHAGF4l5K3qb1Zn1780necs9d3g23fiLH5zRVRUWlD81ETvkmh4V+136h53+O
	 alQifgm1+InwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-btYVvc3FET; Tue, 16 Aug 2022 20:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0534081764;
	Tue, 16 Aug 2022 20:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0534081764
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DBA41BF470
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 20:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1651B60B05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 20:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1651B60B05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JHmdMidNx2tl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 20:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D6A7605BE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D6A7605BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 20:20:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="318321618"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="318321618"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 13:20:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="636046724"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2022 13:20:06 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 13:20:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 13:20:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 13:20:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzCh0oWRcDhKrbRNiVEAlggbT2q4j5o7upg5e4TfJpnCTYUewper1rCvqEp8pLIPNw2xgaP8HOKz2uyjA6tAsTTNGKlyO5ByvHEF12Db5Wrf6datnpjY3GLyw+QQZ7DQpiG/MyxEHglG9wkYqZFq1ci0PRCTWVn3AOZZM8BNP0CimrUB6sCp+1cc2T0dNMzB9aP3yN1ne3t8kSmH0svrW+hivp+vr5+a0j9f/jGfsMxWoO+Eu2T4NZwWkzkad6Y+tPVdnGn0AJkUB5OkDBOk9RX0NjHvu3tfGOmLSYHjS8D8G0QPoss+wgFfIu7ssOeFR7SNaI63NlDRar3usrEBuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ER0McxkTDIrC/p3OgpS72j2VeQzuSPHmoIFMHfSsYU8=;
 b=fzfEBwggTm2YWrd7qmFFFwfmU1zAVHk9FYRaNbEt9I3vDUnhYRi30FURtO5rb582HryZ7nBY2dRm5YF8Pxd0Jd1kkoVMdCCMX22xw5KasQek67upaftYk7AyTS7wtOTkWata4rv4FbqrOuea4Mm0tlrtGfl02PvOZ19d79HcRuncQrNT2YlYlWGMftFSwPHGp0bdlJN1WoyEt4ZrjF8lARD0DAdP7FaOneNT1N0idnleLw7KRYMFg4MdOWh9dxIbsKOf5kckZjgTztMH6et0Y4GiOslq9vy6fv9biHBlR04a1C3mEoQ53Z6KmYV4GsLuHCeQbVuaREy0pQW0NFcTrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Tue, 16 Aug
 2022 20:20:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Tue, 16 Aug 2022
 20:20:03 +0000
Message-ID: <0f0a5e36-1a50-6ca9-aad3-321454ac28ac@intel.com>
Date: Tue, 16 Aug 2022 13:20:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220816094344.3500-1-andrii.staikov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220816094344.3500-1-andrii.staikov@intel.com>
X-ClientProxiedBy: BYAPR07CA0085.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df5fd343-72b2-4b58-7908-08da7fc4b3d4
X-MS-TrafficTypeDiagnostic: MN2PR11MB4712:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XjeN+ef2VGZz7FZytSggar6wjc7PqL7Gk+wNWxTIwwLWtHSmtaHkDss1id+4AtGkzRrmA5arFDWNE2q8Qjs2lmk+fxGfFyRFEQYGqxSEhwX3LpdYArQ37ynhvzmYLv0zQQDeVLDSKWt2eEMCLgyu0VZSzd+h+CEAlL3O+gq3FDr2W/7QrSc7FhKP8hZQ6UEzfCzvWZzMY98DvQMkNfQ7KJJrCmDcmXj9bbekU3RYJJLi+xd7Ez2vAL2Y3rPJ3h0sB2d+7tBGF+npSf30Wxi8Z4kzwuIczuRXVUbv3dwiF3rPgl+wY+gw0/ZKH6NpUEwL7OTGLalzcuciRA098fHlONz8GG8Fp0cpQsSBmQobFDbLn4m9L+OjgfI1sWpNv+IlpbVKNR5eYHoZZ7Nc7pXeWfGbkoLqqBwrK588EXQGFeziJ8RRv2jg20lDopKRx1Rjj84v8AjwsAIcsWgt7UqTQn3XubADZmx+4iwhjbvyastoXXBfDxltNlcciai0RwsQfy6YYX2x/08wl6RMt4J/y5H+j2ItI7v5E9h+d7vK4bpZHXzqD0W6GjCCRkukh5NwtfLvT/NRfgFkTtvHkv6lha/JMxnHSO2e6Dt3xVIigfn0meXxWrp+oh1f+bkE6U7R1kLLi8fv6kUBoTBFZSLMrWWjKOkY7kSfLHvLDYZo9nh20cZCJ2OK6xIzboJTwqzsFtnkW7EYC/wUuYIhqCHpn4Ip8GjQf5f65WnlReZsk3y3NzcnOc1NrTBlgTOIsGFjdzLUpBZUjNf44AtRENoF3QLv2Laob9fI8woQcn6ZmcoEzeHBYEEOudp3M9+zg9r16kUbqis6SCvuS1INfU35taUksE3Nvm8uz9xgN1518vI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(366004)(346002)(396003)(136003)(2616005)(26005)(31696002)(86362001)(478600001)(6486002)(107886003)(41300700001)(82960400001)(83380400001)(36756003)(53546011)(6506007)(6512007)(31686004)(8676002)(316002)(66946007)(66476007)(66556008)(4326008)(186003)(5660300002)(2906002)(8936002)(38100700002)(20673002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTd5aTFCYzF4eU94S1Q5QXlNZUNKdWZCZ0cyaVRHc2RoMTJiQTlhVmtLNXpW?=
 =?utf-8?B?QnRIVkd3bi91WnhRbUhKTGtBdTdXWEhpcWFxVFl6Y2RaaHc3cHFPYkM1Z3Uz?=
 =?utf-8?B?WVBYTlZyZmY4RUpiL3VaRDBqbkR2U2VMY0RQZjhWWGt4RjRRTXJsN1pSWnpa?=
 =?utf-8?B?SXdNRDZvNXB6bHl6VzNneUR0aEI2a01OQmVIV2NtTWIwdTU1eGd5RnFwQmZ0?=
 =?utf-8?B?NDRiS05WckdRN0ZZaCt5M3FrZXBxRmIrU0FXS2prUjdoMWpzNitTd2Z5cXRT?=
 =?utf-8?B?aE5uRHAwVmFsZ1BhbldIMENaOERRcEdOUElZM0NqSVZOdzEvdmticXBHdEVT?=
 =?utf-8?B?aVp5eGhtbWlaSE9qSG1GVGJIYk5zMEhjeHhadC90ZFdGM2lLS1docVRjc3dx?=
 =?utf-8?B?dVFlRTE5cXBCRzJubDF0czhUMGxJRGp1dmY4RnpzWWgwZGJiUEhpa2xnTjJU?=
 =?utf-8?B?aTVQL1lkd0hGYWlpMmVhdTF4OHVmQm9mVVJOMUhEbDMzMkRuOXRNWm9leDgw?=
 =?utf-8?B?dDk1d2pBSFNwYUIrcC94c1FLY2FIcUlya3hhK2U1WEZHdWNPK3p4ZmNiNEJV?=
 =?utf-8?B?ajgyRGgvRCtUbVFnR040cXRKZFNWYUpMRFdYd0M5T25yb2I3UU9zQ2haRlMz?=
 =?utf-8?B?SnIvbmN4cWozTFBIWGFXMGVySStNNFZ4OGlQWTZseTFWMHNWUU1NRVpBSzV0?=
 =?utf-8?B?a1BaWjRqVmpWZDRtM3lOSW5UY3k0KzAvRCt0T05MZmowcE5FSktoc3B5Q1VW?=
 =?utf-8?B?UHRySW5YMVYxZ09nT05PTDdnOFFkczRvRU1Ya2xpTFdXeGNnbnBja3J2VWYv?=
 =?utf-8?B?bzAzTzdqNHlVMWxHWGFXOGpINldocjNqcFE0eHlQYTVXYWZGaW1udFFxaklX?=
 =?utf-8?B?cGlZei9tS3VqeHJ2M3gzWDJpWDZKRkw4QkRoalNMV3EveENLT05VVG13YU1w?=
 =?utf-8?B?T1Jmd1J4YUpTRVhubnNMOXBwVFM0RSt1dDl2ZEtXaE1KcEEvaXgwRWlvcnY3?=
 =?utf-8?B?VVFqRWpSSWp1S1Z2Q3piWWpUZldXcVB3Zk5keXNzYVp3ZFNzbG16TllzekJu?=
 =?utf-8?B?NW9LRk1IT2YyQnE1R1ZuL0VaN3VFOGRLejFwaHFUM1QxU3BPUXJZVFQwS0pJ?=
 =?utf-8?B?THVqYVRmeHRCU0M2eVZqdTJsTUFGeEtSVnRXQXdoWEtBaXdPZnk5Skt0WURi?=
 =?utf-8?B?akRWcm0vRVVidmtqRS94OU9TUk1GaEIzVGtTR0dkcmtzWWU0SHhtZDRTSFRS?=
 =?utf-8?B?U0dTVmJHYTIxb1hIaHdLeC93TlZES0NUa0FZR2xkM2ZIbTIrSG0wazdrZkFK?=
 =?utf-8?B?WjcvbHFPdEpGVm5lRWRHWkJoV2g0NEphbm4ydllQejI5SVBwOXcxZW5OQ21k?=
 =?utf-8?B?STNodHZnYndXQXJSNWtxcUdjVXVTQUt4VmRaQmJTSGtFQzZuc21aZ29JRzdF?=
 =?utf-8?B?UXBycXZXdjBoQXZZMWFUWUUzazl0bDRyOUVQTXVRbjUvcjIxUTRBTENqN1ZJ?=
 =?utf-8?B?bGtaeEpzaDNNbTZYYTBVakR3WFhMRHVlM1ROdCszdGdXSGY3U2oyTHN1NEhM?=
 =?utf-8?B?NHNzK3o1ejJzcjVYTDZhRGo0YWYxRWI2c01RUjRKNjl4UEMvVDVQT0QxbmF0?=
 =?utf-8?B?WGlUUHpjUnhHelJWWUJMVWloNXF6eXRNaXJsZE9qRklBei9CTjJPYm5zZk9H?=
 =?utf-8?B?U1ZXWG5TeVhtdWZRSkRmdlk2amdnbTlMb3pnYjFJVXczZXVxZnM0c0ZmY3RW?=
 =?utf-8?B?cFB0VEl6NmM3QjBpN2dCbUdpU0h3RGZSL2RFMDV3ZWRMS2ZqMHBORVJzaVdv?=
 =?utf-8?B?MFo0ckE5Ty96TUNXZklya3ZyRS9EK0hSZzgzS053MFJIMVhvQ2FveWExbHpp?=
 =?utf-8?B?WkhOM0hsaHJHNlBzMkY3dk1HUENlKzFVOURWYzd2N3VJQk1Yd3JTMTV5Y3Z6?=
 =?utf-8?B?N1d1UDMraHZQQ3lYbmVLRUt4eHEzYXB4TWxVb1R0NFVNRERHdjdqcGNTbDNZ?=
 =?utf-8?B?UWRramh3WXY5MlZYTTgrNFBOdHNDZGFaR1FxQ012RzhEc0M5bC9Yem8xTkFN?=
 =?utf-8?B?bzJ5UjJxeGI2VXBrQ1RmV1AySDZaT2FqRmttVXYwcU1xWnNpMVBoTlNKeWNS?=
 =?utf-8?B?anl3VXpPTFBzMnZrMnlVbHVVY2RDWE1nNDNRKzVEZ0h2YXZFeUlhMlNzZUYy?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df5fd343-72b2-4b58-7908-08da7fc4b3d4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 20:20:03.5116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zFlZF9vCw36gky2VZMHGDe5fAw6G8a3QoRHHUA5o9i53FtmxgFreEFuEZesID4IWRmsva8k2RlSl/Ai/2Ss1SNILcf5lL8Q4yFvg+OCSl3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660681208; x=1692217208;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nqBHXGLBAu2nfuitP3AH4BQ7Rnt455R67Zy1xrtIgaw=;
 b=kDGx88cB4nsyY54Cg18unzyn4lY14jCOeKUZdERFy98cqqYDrDcDZ0zz
 VI+hY1jRVR1zmYkTQfBAB5Piq3W6QfGJvo1XZEEMToTXvX8F/DgY8NQl3
 l2U4ZOLPjq6EE5tJUAT95R1XkRF3p7qKNsIdW2HRx+s03UZmZFhV3aAS8
 NL99eVRblq26fm+jmdINF6SzuX5AdtPsToidvCwTq0zbM+ITD9joRoaXT
 R08H3pYhUgLB90zNMoIQkkuDQ/f/lj8ANaESv3KN4Pqfq4uSczKXTQU8N
 05QY+zGlvw3ZcpWib6BQpCXEBxb9LrV7RJNCMORg7lB5S0B2HpXQnuYd7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kDGx88cB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Fix set max_tx_rate
 when it is lower than 1 Mbps
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/16/2022 2:43 AM, Andrii Staikov wrote:
> Value max_tx_rate is converted from bytes to Mbps.
> When max_tx_rate was set to lower than 125000 bytes (1 Mbps)
> it was cut to 0 because of this conversion.

It would be nice to include what the visible behavior of this is.

> Add a check that if max_tx_rate is lower than 1 Mbps
> set this to minimum usable value of 50 Mbps.
> Add defined constants.
> 
> bats=yes
> 
> Title: i40e: Fix set max_tx_rate when it is lower than 1 Mbps
> Change-type: DefectResolution
> HSDES-Number: 16013332829
> HSDES-Tenant: server_platf_lan.bug

These should not included.

Since you use 'Fix', I presume this should go to net (with Fixes:), 
otherwise, it would be preferable to avoid using 'Fix' for patches going 
to net-next.

> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>

I believe Michal is the author? In which case, you should modify the 
patch author to reflect that.

> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 32 +++++++++++++++++----
>   1 file changed, 26 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 10c1e1ea83a1..e3d9804aeb25 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5908,6 +5908,26 @@ static int i40e_get_link_speed(struct i40e_vsi *vsi)
>   	}
>   }
>   
> +/**
> + * i40e_bw_bytes_to_mbits - Convert max_tx_rate from bytes to mbits
> + * @vsi: Pointer to vsi structure
> + * @max_tx_rate: max TX rate in bytes to be converted into Mbits
> + *
> + * Helper function to convert units before send to set BW limit
> + **/
> +static u64 i40e_bw_bytes_to_mbits(struct i40e_vsi *vsi, u64 max_tx_rate)
> +{
> +	if (max_tx_rate < I40E_BW_MBPS_DIVISOR) {
> +		dev_warn(&vsi->back->pdev->dev,
> +			 "Setting max tx rate to minimum usable value of 50Mbps.\n");
> +		max_tx_rate = I40E_BW_CREDIT_DIVISOR;

Should the print use the define vs magic number?

> +	} else {
> +		do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
> +	}
> +
> +	return max_tx_rate;
> +}
> +
>   /**
>    * i40e_set_bw_limit - setup BW limit for Tx traffic based on max_tx_rate
>    * @vsi: VSI to be configured
> @@ -5930,10 +5950,10 @@ int i40e_set_bw_limit(struct i40e_vsi *vsi, u16 seid, u64 max_tx_rate)
>   			max_tx_rate, seid);
>   		return -EINVAL;
>   	}
> -	if (max_tx_rate && max_tx_rate < 50) {
> +	if (max_tx_rate && max_tx_rate < I40E_BW_CREDIT_DIVISOR) {
>   		dev_warn(&pf->pdev->dev,
>   			 "Setting max tx rate to minimum usable value of 50Mbps.\n");
> -		max_tx_rate = 50;
> +		max_tx_rate = I40E_BW_CREDIT_DIVISOR;

Same comment here.

>   	}
>   
>   	/* Tx rate credits are in values of 50Mbps, 0 is disabled */
> @@ -8224,9 +8244,9 @@ static int i40e_setup_tc(struct net_device *netdev, void *type_data)
>   
>   	if (i40e_is_tc_mqprio_enabled(pf)) {
>   		if (vsi->mqprio_qopt.max_rate[0]) {
> -			u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
> +			u64 max_tx_rate = i40e_bw_bytes_to_mbits(vsi,
> +						  vsi->mqprio_qopt.max_rate[0]);
>   
> -			do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
>   			ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
>   			if (!ret) {
>   				u64 credits = max_tx_rate;
> @@ -10971,10 +10991,10 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   	}
>   
>   	if (vsi->mqprio_qopt.max_rate[0]) {
> -		u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
> +		u64 max_tx_rate = i40e_bw_bytes_to_mbits(vsi,
> +						  vsi->mqprio_qopt.max_rate[0]);
>   		u64 credits = 0;
>   
> -		do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
>   		ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
>   		if (ret)
>   			goto end_unlock;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
