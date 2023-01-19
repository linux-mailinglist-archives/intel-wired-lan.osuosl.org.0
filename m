Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B01C6734A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 10:44:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CBD34198E;
	Thu, 19 Jan 2023 09:44:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CBD34198E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674121478;
	bh=DVRjZDJ0Ras9WCAZa/WE7Q1E48VWrpqGxgTz8y7MeMM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NZpIEjSstJofzE3VzSTjYp3dcOYHpciESH64dAoMN/RfHXmpuF0GlWKLltG+c7zJM
	 3Vpio3bK3AOO6dnfBftVNR7t+aP2qwmsAe6zeqMKEJE1X49DgGL0ONahYgGm1Uvf+I
	 D9g6BRz+jqjOAJpkI/rivFO5coHDGIfXrCFm9fKY8cAhfDX3UqZPhx5erGnrIdQKhk
	 AOjZf79SmHqUIhEGHQLf6kMuZYH6KXvLfoH+CP8Gd662rvYcZa3+0ul5fdxr2FiDFb
	 yDbLAr+5mJNRWGMXdOrmbv407M1UShUX+QzqoEUhaFOOhp22Y2PQeTbVxH//ndK/wi
	 acbmLUGXYviyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YUIuszAHNhP; Thu, 19 Jan 2023 09:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF71F40342;
	Thu, 19 Jan 2023 09:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF71F40342
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2561BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1785A418C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1785A418C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8fNA2bitfWbC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 09:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1091D40342
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1091D40342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:44:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="322928425"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="322928425"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:44:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="988923217"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="988923217"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2023 01:44:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 01:44:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 01:44:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 01:44:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1zux8FNxZV2AkP3tf4ggyFzjl8Qckxw41bQ03tDK86/CcZTqcxWIrnzK7B/YRk7euuEwgvUgdhbAsg/fhpQSqTD1tZdhkeFqah2UlAbJ461SwSj5aU0HPSJdaPHpl6M9Jy3RDv2O5oqeoXUJN3ayBtcUZ4wcfnjBpR5/PqG/DdJi0XiLnnXGKlfxhzr1veX4/DVHmYHA0fuU3giOYY+tr9vCvArvtpHGy2rfyC7EUot3kE3jaGVtWfmpLDmaVCPC+oFlFLq2vilnyeQMJlgbt8NGqhcXLVsUe8VSitsOfk6LpBsS7jzoJinsm6zRssOty8BLTUKcrqSuvvMdD/59g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCtgy88yYLOFTgx2SOGNyDgh6zwTZiiRFHDe55lZ9DA=;
 b=NXaWU5oVLThzgTfJxLyMoUacefFA3aUsKq7CNsam5ppeqxm+TadhoH1eMFbGflzSXTQzTQBUe7bnsTGyucxB+CnawVvz4v7CjwBL0DKFZ1KF4O/91L2lONq/y1633DPJPnXOi5US5OKm22lOj4Suw+t1OuM6pxr6ApsZcOYlw40BC/m+IG7bfRQbn4JviIAVLkRfe7BPS2EGzWcNPkL0lHgOdNoZfWdfl4udtGMSqY1MYglDpgltKfpHmqtuJphKo7b7UKKlSIMAMD4p12hFdlJSUwP7gG9eszYKx+ytrRHA5UBS6AaesXhO8dDJ3b2UMbH1SejRFKTX6O0SLX243w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5358.namprd11.prod.outlook.com (2603:10b6:5:395::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Thu, 19 Jan
 2023 09:44:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5986.023; Thu, 19 Jan 2023
 09:44:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: double lock on adev_mutex
Thread-Index: AQHZJxdNPm4bJyMaa02TDvRQjUPFZK6lht9Q
Date: Thu, 19 Jan 2023 09:44:27 +0000
Message-ID: <BYAPR11MB336746E0B2B1D71B1BF1F9DCFCC49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230113060519.194217-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230113060519.194217-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5358:EE_
x-ms-office365-filtering-correlation-id: c87949d9-66da-4321-c4ce-08dafa01c176
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z6LT/US77umKj7ceUR2rzEaSjRMeuNF/DoMxiwLixfrZGla0ES4OMiemBrSL2aMoPGmdVJ0eu7DSR6Zo0Foabl6PlGupUCyld6Qj4wNEY+xY17ec3NUMWQwUqFOAgH54nv5Ftv6g8ABA3RPNclikJXDja8ddg7tplAKZ0Dort9AfTriUuYRczvi7pbj73Z+2KdNnsBcgK6uup2xIZ71kRRGY9qKl2IAZr/54WQCslAonVJSYl5SytIRHFPhFkChkC39au9qJuSdmmUgMVzUpE4mny9T2g+8aEEYZeqwMURfoTgR7P4RYumPD8PKh1lY69hL7sG5vuG+dEjwgo46RW5cLW3OJdEUAbFkDvTavKrFouk1L/NhokR87qXZbpcnJDNbuCA74/MMs86Pse0nibnUGsk2yKUdfkYoO14EzGZL3CRZLsRcrOiRSbeYOmdGJsOCmpdcg64HxMcvLgdvoJ+hkgk3mVTrthbj9bJPN3Xau/jPR4viZ0Vooe77NvedQLTQTeZRDi9BVgsTVUwO9+vSPPLGD8OgtUNluf9FlPI00kklaPKpRU5+2XHBsGdQie4aRgKbURcgoLur/O27InnKHss2n5yWPoFz6NUxtnCzoR9jm8ORRyyXehqchKHFvoS5ffGrpccvoJgBx7SIgfDxVtNz0RegxbBrunYyD1tt7Ccg60Wl3mIqZNXcnfb7oW6htxswpevgHVvPRoOpLc/JB/nO/Ydp+TP/IsHRJMtY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199015)(38070700005)(86362001)(41300700001)(5660300002)(8936002)(52536014)(38100700002)(82960400001)(122000001)(33656002)(966005)(7696005)(478600001)(110136005)(71200400001)(83380400001)(6506007)(53546011)(26005)(186003)(9686003)(8676002)(316002)(64756008)(66556008)(66946007)(66446008)(76116006)(66476007)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wkd8lAnw3J515cJxqENYR21IIx3De4X1+k2QGnBD2nhaMtZPjyKPIzq/UlbT?=
 =?us-ascii?Q?Ys+PM2OdQFPXSBBES7mOSuEFr+ClwKfRxrj0qPPBfc2JjSjjRjvOGC2mNABL?=
 =?us-ascii?Q?J1rP6UP2dzi9PD3Matz/hWElESmYMd6dHaKobUqZa3PiR5iaPRaYHmXU26Rk?=
 =?us-ascii?Q?rrfJcOp7WeFmFB2Q/UxJIL81KWtmyEywZLlS1AF9TsB+TJa0Os1UZMVt1O+j?=
 =?us-ascii?Q?TA3uvpq2mXnPa8lKotRXwm0Fceflx1t6aOCzHSJ01CYF/qpZrzpc09hZYGbL?=
 =?us-ascii?Q?/oWpTwMWNoE+AU0b6SH0LjD0WZ2XEWVlOKlGoDkSZzpQKlvKXR1KgaqUoEL2?=
 =?us-ascii?Q?4tDHLLQQ0Fbbh+qfmR6Dmnse5fSvChgX8akJms6NvdBqPT2qt30NywXtIgC4?=
 =?us-ascii?Q?XHLmYT9cmzw+Xag43VGXxx54y5g1h1AtuONU3Z5Yxfdm+WTnjOTt8Oj9NYAv?=
 =?us-ascii?Q?KUylx223c1VcGS+8MK2I8BjsS8ssTJ3WlGuG2EAj752u2hJOHvA4NKIHm9xT?=
 =?us-ascii?Q?WvwWFaULAtFXGwQZ3qiuWY1aDS39BwqBwoMFp+ilZqq39fulHL0NV/zVU2Nh?=
 =?us-ascii?Q?31/JOSKJglyS5hVRFnABHrDNg4k5uhRAYdjG8cH2SSpewmt6TH7giniVQ6Jx?=
 =?us-ascii?Q?JLrIydVfTOuTfnXelqE2sOnUjBSHbNDQYj0mJ4Zi/I+0qDcjYE0oahzliM5y?=
 =?us-ascii?Q?q9Z8dhjaveT9czWVbH2wPuIWjP90vtDJrgUNQ5FtsrSvnALy28Z/QH96CmY8?=
 =?us-ascii?Q?MbKxKB7vd/NFLnO1QjzL2MTePh1GFVTeYrzdPpUwloTixda5eCbqwjC+gZKe?=
 =?us-ascii?Q?PzXbsULaD1XdPjLMCRfn7IvTLKkWvxh5mwa9hOHsUTMZSgkGLEb5cICBh3Ym?=
 =?us-ascii?Q?xDf/diYvv/tarnsP79pGNpS83w/NDnMHtWAdTQo/OjbRrYhVRJ3auRW62BBw?=
 =?us-ascii?Q?NQ99/OgDviqezNgmMQ5WECicsmrpg02IDlD24w++J4NKvvi6unCyz+gJtBGS?=
 =?us-ascii?Q?/kQx0WLWz5gED9Bg8zDJ/ntr2VXLTBJra0GFrN0+t3L1/4szf3lwb8yepmzn?=
 =?us-ascii?Q?S0ayx8c/FS0XGQgG9RHkHWEHFG+Cr+RneG6DLymGl/L4kkl8PyzvE8Jp1qZN?=
 =?us-ascii?Q?+G6J0u87bRcJdwXAfAJv6ITvK43B6Wr9V3nEKoNFdgiU7BKqwWQFziC3e0cR?=
 =?us-ascii?Q?uJlpqwxNMpZaS4mkHziGlb0HNMrP1WL1Atk0m3DD6yYmlN7yM6mjnkAeVcB7?=
 =?us-ascii?Q?p/YOaXWqLjrmQdcGp2FMzdVhhKBkKeBLikoBMBXvRqGzgHSq2xjGuoWwpsdy?=
 =?us-ascii?Q?iz80K1R0ubM8sVWxogQP8qaqVceJ5weHAOpVR5Xoto6c2W0J3iAV9c7Q1ym+?=
 =?us-ascii?Q?7+FakTRcxex06iZgkt1DXcjbtO8cGp7KAC+jK84Z1HxGwD9tN/ZujesxlbKo?=
 =?us-ascii?Q?j1wIYEJaFyoeUaqfHgyQjRi11pD5MKmQKUOF7P/fOGxtVlQPGn3ohj6pGlAB?=
 =?us-ascii?Q?IXplcLr0bCRP3FGEbQ3YlvmxkSwseDOe/8h1MnNxkZGF+iIpZu/ZH4dJxH0f?=
 =?us-ascii?Q?+fJ7FWT+0vHWUlyRzLe3OCpZ9bWY8kV5zYw3yUCE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c87949d9-66da-4321-c4ce-08dafa01c176
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2023 09:44:27.3887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WhOo1A18noiTNtvNqNmHxLgi2AVzWLmUrijmHPt3Mj9M5DFgi50589rz6mc5L31Vg+Wb/J6Su0HGi8QUFXTE8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674121470; x=1705657470;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TgVfcxtGEEArPdJk5QvGGXmyTH8IHw/qXryDkPUnlWQ=;
 b=KDOULoLXvCWuytrZpc01l4QV0fJm7VUEn8yFurP8lgw6L2QhCGiRZiJr
 JHGzqixIcMTKX9eZ9Bd9wDUoCCqy/D1pgUTCBbYz1IG0LHEuoayGm/nAD
 qva2XKxHmHXxfOelXxPlPTbUrMYPHgSf9ggUeYdV/7ShF0HiCOxNd2au+
 Vza69bLUFRI0SXc/XhMqoYIWDWOW7hvCJ6J4l8XwLczuUUSu9gS3umT9T
 BhTMBatDd56V+uEMTTT0+LExMfqGsZQylHLpSsFyTVDeXOX0Kpdv3/su2
 G6Jux1Avcun2XWxO9vuyjqZch2VBbGMgaadPRlIYM5AZJLp2K35jAICn8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KDOULoLX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: double lock on adev_mutex
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, January 13, 2023 11:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: double lock on adev_mutex
> 
> Call trace:
> ice_set_channel() --> mutex_lock(adev_mutex)
> ice_vsi_recfg_qs()
> ice_pf_dcb_recfg()
> ice_send_event_to_aux() --> another mutex_lock(adev_mutex)
> 
> This call trace is reached when user try to change queues amount using
> ethtool:
> $ ethtool -L enp24s0f0np0 tx 64 rx 32
> 
> Avoid double lock by unlocking after checking if RDMA is active.
> 
> Fixes: a49a2713f00e ("ice: Prevent set_channel from changing queues while
> RDMA active")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v1 --> v2:
>  * As mutex_unlock happens before other error handling there is no need  to
> have ret variable, remove it
> 
> To be squash with:
> https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20221219181803.1060129-1-david.m.ertman@intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
