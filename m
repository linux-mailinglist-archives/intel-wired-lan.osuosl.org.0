Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD536820B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 01:26:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07DB460AE5;
	Tue, 31 Jan 2023 00:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07DB460AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675124807;
	bh=ZhRlDxcls9KBXBWx2ros9Xi2u+gHDc4beWfzHh40zLA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DgA4mcfUeT/lnan0iOb8yjq7AMjxNMvBJTQJr/GoCNFEpXSxN0XYO81Qni3zhldvu
	 8g/FC0FjIz9gD2LMLtToJHDOqQhh1mmTGBR3kf8ekgSedtyhy3M+KII6m5ojwL05Qy
	 FYXZd4HrlUVSFbEzConCOGEu0wOG7858RbSYVurdR7C9bu/ef0Q5AmhIG+yv9hRYSi
	 zK9Apl/nVmAFaHPpltxXaXzwq5Wx3iQp7YdphnfSLkF1Hc/+G24NBKlMwAQApWsY7I
	 TM5/A3nGSU3AEQtM+p+8kB2RRDZ4AiN3LpREdfrzg70ux2X0Mk45Ffd+AWEEzpIVpH
	 5e8h2pTBJWj6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BkN3wTSiDkcA; Tue, 31 Jan 2023 00:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB28960ADC;
	Tue, 31 Jan 2023 00:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB28960ADC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1EF1BF363
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 00:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7476F812D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 00:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7476F812D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CgyxqdQMa5AT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 00:26:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E197C812C9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E197C812C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 00:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308058180"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="308058180"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 16:26:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="806897974"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="806897974"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2023 16:26:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 16:26:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 16:26:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 16:26:36 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 16:26:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SU+DtDYwQhqyiwvzWmc0SBlOrjO1awdNwfnuCnffkL8Lv26CWiK4OmW0BRXbHF4u30vMFIqvQTxINUevQgmruavHRS+gi/Ddf3jPLj40EiOLp5xydP0JPDCHUQfAdzrelfs3PmIIBeTmpxubQL3oW/e5aAbKxH3Uusnyu6CiUlnO+jn3/lABPkbUMC0afZMhO9GT6JziqAAz6i60s7z5v4G8W3HsCVHE4lnMEJuc+IRCQcO3EaJ0qlkAzyMifr7CR17w2HJfm+VVCc9bv1GtcIAsTFeJKKo7kG00xdwiVAQMiVLnDe3CX9YziVMH1fsdtBA4EI8Mod7Mpb0+ZzpchA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8uKfEmuI/55E4rfguoqLkWRasHqx4jxGLgFOyuYfNwA=;
 b=D8G9fvqxVR4Fw8K0T6midkBfzX6vA5F4y8z5Q3gZ5OC3qMttOwXcCwutrTYDvKE9OkE53eCatr4JQ/Xoycm5vT5CCe4IZTXVFKEvtYw6cenX3WfOuoCqTg1Oi/GyR92CGhbFiRjcBT1t9e8uprom+czJDtATfDtB+xsYv+PHcLxaWaDZkEySESJFddRZ5+MGltstcjdA28TT+dle9V33Bvsus7pe215v3Wfvh7ZW4L0I/jj+AQualODzcY4pEMIB/bMwjyiJl4nOCAlmW8vc0LB05oJk2lC1AHNVR+DJJB15gVwRE0sj6C2i1y7dcXFOqrc7OdezwYkTSCIvMIX1XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB5914.namprd11.prod.outlook.com (2603:10b6:510:138::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Tue, 31 Jan
 2023 00:26:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6043.022; Tue, 31 Jan 2023
 00:26:33 +0000
Message-ID: <7f10776f-316d-a2c8-1d7f-9be45b8bc255@intel.com>
Date: Mon, 30 Jan 2023 16:26:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Alexandr"
 <alexandr.lobakin@intel.com>, "Dave.Ertman@intel.com"
 <Dave.Ertman@intel.com>, "Saleem, Shiraz" <shiraz.saleem@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-6-jacob.e.keller@intel.com>
 <83d3f5c1-1f3f-a08e-1632-df8bc7b8ab7b@intel.com>
 <PH0PR11MB5095133D185FFC8E81B06558D6D39@PH0PR11MB5095.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <PH0PR11MB5095133D185FFC8E81B06558D6D39@PH0PR11MB5095.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0065.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::10) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB5914:EE_
X-MS-Office365-Filtering-Correlation-Id: a9de11f1-d85d-4147-00bc-08db0321ce70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L9QBtP5jlDt0VytNS9w+3v1WIpAYkeAEX9DEpBSAjNlGAnyYF8TdbzvqLzB40sdakF5mWyOkrvgPbXY+e2gRahdU4AEgl2ZdWQNhEMr1dZ+1VgTRCIRm5uVidk9G5FR0lFr/YeVdRnFwckSfanhebaxx5bU3yzgFqx9xvxnF/hiMm6wNL3M/YVKpYrk3b4wnUXpdDnlM9NPjZARkxlTn7Mw0h+ikKqkGENwwa4WllJGlqsuKL4tBcc/HdBDCb7lr0qZQa0XgvB3//6b5LStu7Dph8ShJVz9vAEIgLgVAblrcCaLC47V+YLOp961CeRVdIyUWvEIg4/9jDQa5k/Ijfz9YaHLKNCbnbVkOBx7HClEdcKaOQjNZifn/6mRY7eOdgR7Kv1SiJJEanAguX9x0KuArPZQ9i7hu69ajDrAu3scEcLOR7HHZvRhyjWLM9SR8UIfcA5WvU4YemkRmZvTfc2v6XUMQFKp1dYNgzPxASjaO+pMEmywyQ/P59fUneKeppTsRFDZH8c0QUWErJNKx2ChBjQJM7jG5yOZK5x2WOb4YwqF/WwMs15VFGOI9/5M5ZLiWUAiCiGXVUYEloMb7wSEdCLugzCJxsuJk8ZgHrRxQOvni3d7ameT01Tva7/kd4HQDAvQr/Mjq4Zqa/CbauMgA+woV68LDfvdhWTtzUEwrOKd9OgPneKX/XcIKtLICtZD4Mqp6kchantXM1l9Ep/fdAx+5Gj7CK+S0fm4vybY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(366004)(346002)(396003)(451199018)(31686004)(36756003)(558084003)(478600001)(41300700001)(6486002)(6666004)(6636002)(54906003)(110136005)(2906002)(38100700002)(86362001)(31696002)(82960400001)(2616005)(6506007)(53546011)(316002)(8676002)(4326008)(66946007)(8936002)(26005)(5660300002)(66476007)(6512007)(66556008)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG9yeTNxYkZ2WlFqRjNneTNoSS9jZ3QzVjBoVmgrclJrUENveVdOSGgzWHJj?=
 =?utf-8?B?c1FiRDkwNXJBUDhOeFEvZEpMY3A2U2x1azhEL3RpdG5mQzV3bElwWmtSMTBM?=
 =?utf-8?B?dWFVOVU2NFc1M3czcWRFbTB0R0o3MklyYi8ybllqdHNuK2pNcnIvS1ptQVcv?=
 =?utf-8?B?cWpHTWhPT0F0VVhKakRCMUI1QnRLajJTWTJwZHNnajNvTXdNcTFQL25Eb2dN?=
 =?utf-8?B?RDhCQlF0YVZDcDVZSlBnM1pLYVVNNTdVVjRycS9RbTNkMTBCZzNYb3NYRmdh?=
 =?utf-8?B?K1pOSWxCVmNRcStRRGc1WUxOMlFaeVVzOTUyVUZsMCtHSFllZStkNVBQMEhr?=
 =?utf-8?B?em5TcWQyQmlacFFVRFdDK3RmUlhQa1BiR0doazZTUHZjcWV6WDRkSmVRaUR1?=
 =?utf-8?B?T0d6SmJJZ3NaVkpZdXBMM1UzdGlFTDVtZGVleUpHbGRweXVDOTZsYlpsYU9B?=
 =?utf-8?B?ZXFBMVM4L1ZDQ0VzbG41VW43MytXS0wza2V4Z3dCMGFoWGJscjRmMkYrUGlJ?=
 =?utf-8?B?N3pXc0VjcHNYWDR2angwQnFVcVA3UkY5aExQQ0Z1NWpxUnF5S2R2VGRyNHhm?=
 =?utf-8?B?OXN2aFJhc0JieFYyZWNTWUY3RFBZZTloSlBBYmgvTnArNGhaeUZXQ0Z2WlZT?=
 =?utf-8?B?ZXJFYThRWjJxMUw3ak1vdnlCZm50TUZYbDZQS3g3MWJNa3FzdndUSCtuZDlL?=
 =?utf-8?B?OVhDUElyeERhSzBwK0lMc1NGNTZxLzlKNXdQS2FPdG1MT3dwZCttVmUyR3pR?=
 =?utf-8?B?ZmRPbEp2Y3B3MFVDSmJ2YW4xc3ZsR1ZoV0pCWFR2OVlOTG1yeUl5N2RybzRF?=
 =?utf-8?B?WjllV0EwdFdJVEczd29wNVBoUTVFQnpmSWRDSlM0eGt5QnArNjYyeitqRDJT?=
 =?utf-8?B?NjJnVlAyZ3JFSm5HamU4WXV5Yy9IMFpJbUVad0JhU2xWNmVSUkcyY2NwUHpS?=
 =?utf-8?B?bGlPZ01RaVJWSmhJR2xVSXNQa2RQdGJuMXZidW1KaktBSlZ6Y0tJaTVEc0dL?=
 =?utf-8?B?V3QvL2p3c0xid1BabS9UQ01TNzBrM2JSc3ZzZTZpUlJYaFlXaWJtVVRZQTJL?=
 =?utf-8?B?UGM3ZENSUHpGV045QjFzVHhFQ0NVYlRsTHpDeFNtL000TmFtcGxERGVESTB2?=
 =?utf-8?B?ZTR3T0ZUSlVjV2dxZktzLzRKd0lNRjRCMFBicFBVSmErMkxJdnR5Z2xHWXND?=
 =?utf-8?B?SXVWSWU3Y1V6V2E1UStUQlpZdFlmak0zSnM4SUZXWFkrZmlVaEZrQ29PVmI5?=
 =?utf-8?B?dzlscm5ndW9acUxsZmJaUXdOVjFobkRLTnYzWXJpNEdKQ0hPMG1jWStJb3U0?=
 =?utf-8?B?QlIxcTZZUmEwTWk4V2xLbDNoZWZNdTJqUGo2NDJsMm1QWkZibkxMTWpOSDVx?=
 =?utf-8?B?ZDhjaDFkbC9Ua2htdUxHRXEwV1pIdlh3RGZPQ3VwRmYzdjltRzZBSGZuYmg4?=
 =?utf-8?B?bVN3UWNHYXJqUUFDY1BRQW0xRnRSenIvcDdQQXZNVEQyY3VnaExUeVh1WXl6?=
 =?utf-8?B?ODNzQTNWQ0IvcnhkL1M3TkZWakVONmg0T0lLMHVyU1pXQmM5UHpTZGNFNUNF?=
 =?utf-8?B?NTNzdEpYeXFyandBRHp5Y1V4ZXVJa05FUnBEMVNjbXNEbFk1RTZCS2ZabTZy?=
 =?utf-8?B?MHpQZjQvK1hBVTdJVkI3dER5bTJZUUlRc3FXbm1IcVFxWUFIbi9zN3JwQ0wx?=
 =?utf-8?B?QnpxcDBUWEkxTU9VbkhHcmYydTV2emd0bTJ0Y3A2UFpxaEFWa1NWWW9VU205?=
 =?utf-8?B?ZTYvWm05NkNrT0NLN3FYbmh0dzUvNTFpdzZCQ2wwbXRZTmNqOHY2L2w0b3hD?=
 =?utf-8?B?UU4ycHRjTW5UZXlJbnpUenhnQUVYcnBPNndSbU13Qm1KOUxWWi9HeGtUQ2Fl?=
 =?utf-8?B?dlVFNUZZNk9GMkl6c2NObE1HZWFvS2ErSENnUGJvNUFEUHB1ckNSblZkL2Yx?=
 =?utf-8?B?T0VvRmgzdnk0WTBpa1pYWHc2dXY4UUY5MkEvYjdSSExJd0xIUWF4VFF6ZWtp?=
 =?utf-8?B?UkRFQ3lBN2ZmZGtVdWlxSnVXU3pBN2RPRjNoM1c4U0I4aXRPVTNya2JVTEV0?=
 =?utf-8?B?Tk1YOEJZTDgzUkY3SFNaSWIzZTZnTTZjYjI3ckd6YjJGN2tGYTIwZ0NTL2Jy?=
 =?utf-8?B?NVEraEloUFo4UU1FS1kwMzJxN2gzU3lWNUxzekoza1Nzd2phVTUwcEtJc2pZ?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9de11f1-d85d-4147-00bc-08db0321ce70
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 00:26:33.7495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7n2b73ms38rTeQ7amGtxP8pnF+enUxZfWl/gvxaO4J2sZXLw32aS91hGvIYJEbty4k5wRCpbU5buZnH7fQ8ORY7L51/onL/gn6Dqn0vkU6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5914
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675124798; x=1706660798;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ueAqOSKMOI3FkJXVpzlBSnATYcRstNcXiU/f+mfZ48I=;
 b=ST/IB1ZUhn9qKhzoymeruyXwPY/jYAkFBpUZiCSRSIkhJJjtvdUzmd73
 yVmiADGjbZsBpzHFjoC2FWuh6eY9RunRt8Fz1TA4ZizQdXVlT/6kpksww
 aOyGwaR7j3Oa7pc/ZrTvtwm0bm2rPV8Q7mWz0VtzahbKCINDG4lcrsN7t
 xqvRirODosvFQvDsQbBMdrsH8nwXjKdYQGGaakWDyicgjyo/tx8wU1lCo
 PLxGRvg+8R39SZ1wbat6UtgPDoK0mYqMX3dYAyF8o0h0kHNQhb3ZLyirC
 nVTZcQHFHkHBfl7C60l1fW+w2FBn+kLlb973mnySg1jJuDyfzCVxEvPuW
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ST/IB1ZU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/30/2023 3:34 PM, Keller, Jacob E wrote:
>
> @Nguyen, Anthony L Can you drop this patch from the series on IWL or should I send a v3?

It looks like it cleanly drops out of the series; I can take care of it, 
no need for v3.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
