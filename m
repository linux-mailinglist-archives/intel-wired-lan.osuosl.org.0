Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868246C3306
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:36:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29D0740BCC;
	Tue, 21 Mar 2023 13:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29D0740BCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679405783;
	bh=H3Ue+kVD+qTAfE7u/sX4ZNB+JITunIa4/6nu8AtCEWc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zMkz1TtqMlqGWU3TkmZRpQbqlGt6nzpL5IZsh0c3I+CXYCl8lulxzyxIJeuUCW9JO
	 RMBc6ygiup93T8nq4mFfbTTNXj3EMvDv0BOG5JFqZCjJJ9ZHACn719ahARb1Taf67I
	 GuFOkZa3Y0jU5PfEVJprDjWB2KyWVOkv85Ie5B9RuRl3NCnP/TYNllnpONBjYTzVu3
	 s3pAF7NV06xNAYo5BaqbCiDewJfJz6Gb0vR6ztYJP5DHwnjjYdq+n6sE4Qr+/jzxWq
	 1Vo4l80UYacEAFaOgkPffihBlJCrNEaFTfYTTI2qXQaJB2QqmCt7CJEid3iEXlF/RZ
	 82nosW4gZe13A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCVkgYRgGPwy; Tue, 21 Mar 2023 13:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5653140BA4;
	Tue, 21 Mar 2023 13:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5653140BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9D3E1BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91D664186B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91D664186B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYX2kQQ_JDFc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:36:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3A9A4091F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3A9A4091F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:36:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="337659070"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="337659070"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 06:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="770632859"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="770632859"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Mar 2023 06:36:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 06:36:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 06:36:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 06:36:14 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 06:36:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCUdQmjva1wvDAQ2Vu9CDrzhGwz30zi8ULWDv5NaMBIZWdPclEMUcylWmvRPqiJ3jN+PcY4DtwekVj1q+djC1biq9lLzfaO5OKFd/NAfXkKLdhr64He4cXHRxZ88zCUH7xuIko3p1GalsVYyfDXqQ6h635XT43Z60dR70/tTZ4IHCy5EezrV+WtTXaf1jqjaGDTresRmbJAsJ5YnQbC7BHjC6KaW71rQ7b5eIUuVpYNlaC3hjO+OP0H6TISzIqjkpPLbHaKh6CBRqs+bic+HrJHNrYm8ILH2Y7Hy7ArVSyDGqtxf4/p585d8k6jWAZ1XWS8XipCYdygXsg/FOzjQtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=en9nZ9DSQY8nNhMchOpm8G884i8QpOfdAgN1skW+eT0=;
 b=Nlu/xx51D3c8uxxvKM8sRPHNQvuKFJ4BrfJGu0+wQZA+IGkVNWCpd/0giceioHG1ycjhvkCBCOoeFkbG15GtgViyqqFDiP94jlJEq8OwC1Os2ZR0NT6sY6SC5JJ41DoZoDfYkTCvieOYT1/Y75QSwI4ytKc8HiL5KTilao6fsHvJipwNHt41P4iU/zW+udw0TNLjauwKWnQsYZmAUtHC/029RLJdZenZWhHJ5SY63E6K2OPQDbGRoWZBMZUK0xdzEgGnKsxrdTU5fdBpAIR5dmJby3T3peErSKNRNS75hEwl4RTK13iQSZwzf0zFJ7o7J0vv2mycEs6O2JkX1GZAcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by SJ2PR11MB7520.namprd11.prod.outlook.com (2603:10b6:a03:4c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 13:36:11 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb%8]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 13:36:11 +0000
Message-ID: <b922b4cb-cb5a-2f05-41df-5337391df468@intel.com>
Date: Tue, 21 Mar 2023 14:36:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-6-michal.wilczynski@intel.com>
 <f53c8a8a-1c59-cc98-0243-a135dab0a71b@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <f53c8a8a-1c59-cc98-0243-a135dab0a71b@intel.com>
X-ClientProxiedBy: LNXP265CA0006.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::18) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|SJ2PR11MB7520:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a24870d-ecb1-4dd5-2f13-08db2a113bfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mmyn34LvK4Hf9UU9Z+FbCn3M/qVnYC2iB62hxrkzyT1E0feDEq+w1XHRp5JOg/rX5T6B8YZd6VbfrK8LxaBW9yKrHfq4+2ijtaqwNek2npdlf/ZwtxnGXlwN2aMaDEEiR4dLtZwqopeZ/TydtQmdzlXTkFN+LM85W0YgkP8hh4/0nvCn3fRN21Pzy+ZOB4XKVb3tb2Vee+gnmF9x8z0QZb0JTyl0d9NnJPL9P9StXyLOsI7qwnojjDklJaLNgM1zFbNWtH3sC7uOjV84P8kaObRllsLLUtxN+CpNoI2eMdHutXHBUi/YCoNoSvIUAP1P28ozNuAjtTdxT0WQPUNZWdAYGC1xGNV3pyreAJmraOYYOdFSB9Z72+LRZMWAwg3+CDPK0Rq7aMlq3jRhpKCZ3bc+d/xxWRCc9fds5nCoC1TXJjB778cJHSICeOmlwkF1v1xCFTIZMGLspsqb+/qroo17iIIHEzTQeJD49vMmdn2cbleal0qhxHBOGBJfvfGp+8O3tmdJLLElG2ijCH8Rv5Ur0PTjreOWM6oEb0WNsi8brdc92eD2MtyFcJ3CqcFRhpC8FKDdUPO2KY7hBeaOgHc7KLi54DI6XNGSUKmJI3y9R89IW+d8ar++YYT0PwV5P0pDYunZIulHrkSh2R2/FmMGJHwZcL1xwUHxtwfHGi/nY+A0GeKrvBCEpHUl5gAjJvd+8a08/DY/CmRc6NlElbr8baPJeRVRLj2s4iKhPsI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(396003)(376002)(136003)(346002)(451199018)(6666004)(2616005)(6506007)(186003)(6486002)(478600001)(316002)(6512007)(8676002)(66476007)(66946007)(66556008)(26005)(31686004)(53546011)(41300700001)(8936002)(5660300002)(82960400001)(38100700002)(2906002)(36756003)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHdxdklqbWRBNlowTDlzc0ZEcjZwY295Y21rcW5wZy85Y040NzJXNmErNFoz?=
 =?utf-8?B?dFRHU0dEMVA2MlFML3lFY0h3cFNZQTJOQnhYZzhsRk1iRGh6ZHJtQmRBZU9I?=
 =?utf-8?B?WFJzM092NGFaZk5DdU5iQ2VMODlFY2xVSjJ6ODJTQXVNbnR4MWxDOEF1TmpL?=
 =?utf-8?B?MEdJK2lNcit6aFNtZWhLcmt1aFNFc2p5U3lMWGNKaTZBYkt5OS9GWDdVNUxq?=
 =?utf-8?B?NENRYjJCNUhmN1dwY3lNTDdkcGRiN3RCSC9RUnpqbVFvYkRkT2lpbWFYQWVo?=
 =?utf-8?B?ajVESlVnWlhnSjl2SlczYnhydU91a3k3V2tqdEpKbCtadHI2azhnWmM3d0tS?=
 =?utf-8?B?NzNNSTdOM0kwTmh6N3paM1MvT2NsZDZFcUI3SkF0d21iUE9jZW0vNnpXZ1Vj?=
 =?utf-8?B?d2RyUjNvMnRPc2gwTnVwZ3IyMmhmNERFbjlIbXMyTjVqYmp2Q3dvTjJPbTlI?=
 =?utf-8?B?bDcvZWNYWEdDMmpTT2VpK0R1dTBockR5Z3IvS2Z0R0RWbVZqbHBLTWZGSTFs?=
 =?utf-8?B?NXFoZEx1R2E1UkV5R0pZY0RObjhyVk40WGgxU1YySkMydUN3cmhwcjBFUk5V?=
 =?utf-8?B?eWlLZmtNVzdLSkJtcHdCK3FjM3Q1UnIyL1FSZEF5YnhwWGt3WlFTSFRsNURR?=
 =?utf-8?B?T1VBdU5PUGozenUrRmJhVXAwWWFLdnluMjBGOXpxTHUwam9zbkY1Ky9mY0VM?=
 =?utf-8?B?enlLRjhuMHRVcTYveGJqSjJDSlUzbGZNUGJiUEt2MVRVZUp5djAwNTJ0bEtU?=
 =?utf-8?B?Y3RpWFNsVDZQM21SV0ZEUWZmK0trZzRRN2ZWRGJRczFRSlR3ZDVSdzF5MHdN?=
 =?utf-8?B?V0JWdy9tS0ZneWdYcGFaVjNvMW92dTJmSVEwRElxaGU0RmdkdUpUNXFjcFhn?=
 =?utf-8?B?WE42K21tUmFjMEx3dnA3SExVSWVPaC8xSkRvUEhLSkhxM0F6SXd6U09yT2pI?=
 =?utf-8?B?WGJ3eTV5NzBsbDViNlhod0dGekF5QWpUb3NIVk9oTGZwbXdOa0s3UW45ZURE?=
 =?utf-8?B?U0RUNmRQUE53ems3VXhnemZHdUhlckUzeHBlRGFqU05UY3liWWcyUHhWcWgr?=
 =?utf-8?B?SE9zMHJDeDJ2VDNtcjd5L0dMYk55L3NneU0vcVFtbUtSOHM5cS9kUW5wZzNj?=
 =?utf-8?B?ODBqbjJVaEZ1S2VablBXZHArOFBESHZZQWdvTFZrY3JwRGhFclc0MnIwempv?=
 =?utf-8?B?YVhzbjBBTzZ6L29jWW9xNWEvREgzWjE4ZE81R2pYcmpXYzgyWE1kS1owK3VQ?=
 =?utf-8?B?VmJyNGs2eENSNEZWODNPNlpHMmtLZ29vcnFCN09ZYndsS1dKSFExdjFwY0sv?=
 =?utf-8?B?SzlMa3haSmpIRTVlZVRQNVZLQ0dJMWlUVG56LzJoa1ROdmZUcFVmTzJBa3Zt?=
 =?utf-8?B?LzIwZjNYRWRSclZSeVI1SXVPSE4ycFUzYnpvNW5sSStjRUpTK3dmbERSSi9N?=
 =?utf-8?B?REdJOE16c2RYOXBGVGJpTU1nU2VjRVJoSmdoR2dyaGRBNnhOeDNncnprTk11?=
 =?utf-8?B?bDFtZHpQeGFwR3hGUE1ZQVN4NGFUTFNVRUxJTk5mNng1S1VOZXFNdnlwamJS?=
 =?utf-8?B?cng5TGZFTmZBWGNOWm9GWnVSSlZvUit3SnhVODZwREVycTViNFMyL3dZaGlx?=
 =?utf-8?B?eG4vNjJpakZ3ZGJiOUo0Vkhvc0hqSUV0U0lBMXFwaGViZ2VhL1FTbHUxWFU4?=
 =?utf-8?B?ZFlWbjhINWRZMjN6UFp6N0VwcysrbS9SQm9ZaHNvWU9RcWN6U3p6aXplM3JJ?=
 =?utf-8?B?T3lDZHpDUUNadG1aU0grTERZWk9CTjh5Y2wvK2lodHJPbFJlcGh3eko1Wncv?=
 =?utf-8?B?bGU0S0tnRVVBSHM0ejlUblk3UFhyeHBoVE00dzl2dnZCejBMQ3A5Nlo5Mkd6?=
 =?utf-8?B?ZVh6dGVxM3Z5V0dtazhHenZnU1FnbGJtaEdOc2w5ZktBWUdmd2NkYTBhRC90?=
 =?utf-8?B?WVdIUjFWdVJBQlZzR2hlMXllRWVpeVpqekhxWUZyS0JQN3BSeUp0NzVrMFNi?=
 =?utf-8?B?dHo4S3VoanpoVld3dCtBMlU2T2ovV3FmeE1meTFacTgzYUlJNUlvd0pncVFk?=
 =?utf-8?B?SlJkcGIxNFJEYUZ5TXhmQlUyY0lpVHB5QzF6VEU5S2RtZDAvNFFjMDVRTExH?=
 =?utf-8?B?VFNGVFJPM2l0ZEx2SHcrNUl0R0p1emMwbkNUR1lEK0VoMHJmZFNEcGFobWRJ?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a24870d-ecb1-4dd5-2f13-08db2a113bfe
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 13:36:11.5675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8msbTuzRuyz8UIpQKSX7DYFFkVEvCK1u/kbdSJDweY/CePg6JjKBzl2X3xPlcrJSEBbE06dzASxKPv9BB5uISpi+frQNnxS4kgfOI0xOT4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679405775; x=1710941775;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FwNgSqehTfwut2iNZVQkYEjzsYtslMH48NeJmiz/u1c=;
 b=j0+DOSXzLzqNXEooOKmcgjFPL2RkPp5UvdZrTxHZ7DdSPaj+vtT1xnlZ
 JvJMVlnS+uiNCA09E6k0k/3S+9DJylQZ9+caFQa6etPuXTAlo2mJag4+3
 2E+HU0eYVM4fyVuRJ2gHkT6oQnR8VXUQzhDI55/1nYfl2+i95vGQTjzCs
 vYFgl5o8mznUwB/2f/poW1BQBJ/7491BC8r1mjF2K0js7d/EeyTdYk042
 VGBl2oEKOI/3aD/an+UypUDqiJ/1rHzkIGV5Oix9GjQkeAS5m6sNNbuoG
 KilkQU3VWNmE37n7fSl61M0VAO2N2u+Prp6SZRBNddVGzeIeZTIHJNgF1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j0+DOSXz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 5/5] ice: Document
 txbalancing parameter
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

CgpPbiAzLzE3LzIwMjMgNjoxOCBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4KPgo+IE9uIDMvMTQv
MjAyMyAzOjI1IEFNLCBNaWNoYWwgV2lsY3p5bnNraSB3cm90ZToKPj4gTmV3IGRyaXZlciBzcGVj
aWZpYyBwYXJhbWV0ZXIgJ3R4YmFsYW5jaW5nJyB3YXMgaW50cm9kdWNlZC4KPj4gRGVzY3JpYmUg
cGFyYW1ldGVyIGluIHRoZSBkb2N1bWVudGF0aW9uLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWwgV2lsY3p5bnNraSA8bWljaGFsLndpbGN6eW5za2lAaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAg
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmxpbmsvaWNlLnJzdCB8IDE3ICsrKysrKysrKysr
KysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2bGluay9pY2UucnN0IGIvRG9jdW1l
bnRhdGlvbi9uZXR3b3JraW5nL2RldmxpbmsvaWNlLnJzdAo+PiBpbmRleCAxMGYyODJjMjExN2Mu
LjZmZmUyMzBmNzFhNSAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2Rl
dmxpbmsvaWNlLnJzdAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2bGluay9p
Y2UucnN0Cj4+IEBAIC03LDYgKzcsMjMgQEAgaWNlIGRldmxpbmsgc3VwcG9ydAo+PiDCoCBUaGlz
IGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgZGV2bGluayBmZWF0dXJlcyBpbXBsZW1lbnRlZCBieSB0
aGUgYGBpY2VgYAo+PiDCoCBkZXZpY2UgZHJpdmVyLgo+PiDCoCArUGFyYW1ldGVycwo+PiArPT09
PT09PT09PT09PQo+PiArCj4+ICsuLiBsaXN0LXRhYmxlOjogRHJpdmVyLXNwZWNpZmljIHBhcmFt
ZXRlcnMgaW1wbGVtZW50ZWQKPj4gK8KgwqAgOndpZHRoczogNSA1IDUgODUKPj4gKwo+PiArwqDC
oCAqIC0gTmFtZQo+PiArwqDCoMKgwqAgLSBUeXBlCj4+ICvCoMKgwqDCoCAtIE1vZGUKPj4gK8Kg
wqDCoMKgIC0gRGVzY3JpcHRpb24KPj4gK8KgwqAgKiAtIGBgdHhiYWxhbmNpbmdgYAo+PiArwqDC
oMKgwqAgLSBCb29sZWFuCj4+ICvCoMKgwqDCoCAtIHBlcm1hbmVudAo+PiArwqDCoMKgwqAgLSBU
aGlzIHBhcmFtZXRlciBnaXZlcyB1c2VyIGZsZXhpYmlsaXR5IHRvIGNob29zZSB0aGUgNS1sYXll
cgo+PiArwqDCoMKgwqDCoMKgIHRyYW5zbWl0IHNjaGVkdWxlciB0b3BvbG9neSB3aGljaCBoZWxw
cyB0byBzbW9vdGggb3V0IHRoZSB0cmFuc21pdAo+PiArwqDCoMKgwqDCoMKgIHBlcmZvcm1hbmNl
Lgo+Cj4gSSBmZWVsIGxpa2UgdGhlcmUgc2hvdWxkIGJlIHNvbWUgZXhwbGFuYXRpb24gKGhlcmUg
b3IgaW4gdGhlIGRyaXZlciBkb2N1bWVudGF0aW9uKSBvZiB0aGUgZGlmZmVyZW5jZS90cmFkZS1v
ZmYgYmV0d2VlbiA5IGFuZCA1IGxheWVyLiBXaHkgd291bGQgSSBldmVyIHdhbnQgOSBsYXllcj8K
ClN1cmUsIHdpbGwgZGlnIHNvbWUgZGV0YWlscyBhbmQgcHV0IGEgbW9yZSB1c2VmdWwgaW5mbyBo
ZXJlLgoKT3ZlcmFsbCB0aGFua3MgZm9yIHJldmlld2luZyBUb255ICEKCkJSLApNaWNoYcWCCgo+
Cj4+ICsKPj4gwqAgSW5mbyB2ZXJzaW9ucwo+PiDCoCA9PT09PT09PT09PT09Cj4+IMKgIAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
