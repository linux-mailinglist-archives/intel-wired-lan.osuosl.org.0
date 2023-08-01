Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 716DB76A9EB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 09:25:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C05881E7C;
	Tue,  1 Aug 2023 07:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C05881E7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690874756;
	bh=vvCw8xo3GvMdxqUr6vyAr9GXiOT4suJwZeOsKgWBtvw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NMZniwPx3MAc0QZa3CIZqYAv1wvjP81m0FS3VmlOykKxTa9x1kZPBClZL5+V7uHHk
	 yW1XNxOM7CQzT/C/gxmTCDXizhhNAqbqQ9nlXRDlXRXYQqTKzuCZ++pRL/qOcFTF1N
	 mE0AXSL/z7iS6qncjNtHcUJAUUj49/84nnC/QyGiSH1yNCemwJldjHMyu94py5R8Kv
	 4xOP0uCtVb4aI2NG8eytgV/Ek4Xf7m9nsIwg6Sa/YvJbSk1gXHaJdhSF4M0kULbZkd
	 XYljsrO2Dn5OzoBlU1heSvAPyelsTbAe/tLZDpHuoI0mY5Iv5nXjlRQsDPTyjsIUtZ
	 u2V+S8MNb5V0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id phbFFsmvgA4t; Tue,  1 Aug 2023 07:25:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E58ED81A5C;
	Tue,  1 Aug 2023 07:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E58ED81A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 836641BF308
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 07:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B223C401C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 07:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B223C401C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxgDVJwrTkwO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 07:25:45 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DBE1408D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 07:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBE1408D0
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="372850144"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="372850144"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="842616295"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="842616295"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2023 00:25:44 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 00:25:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 00:25:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 00:25:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YidLwXviy6BpCJORvHPLDRRKJDTvFvh1IMdolFoZBRLZbMNzYa4Y/tVRaxFjSq4dk1kDXcJhouVVpI1Oj+MWGGTNBawv4sOZqbEeICSAJmq1S0P+I/ZQUi5pOcY1yRWBSsIk1Yhd4Y1B4rwFKpRvY7SZRFpCo/RIy6amtU74B4Q7otJ7JawOGhaXjevdl9sTVK/D/FdpMsiIIRBkj3efXWaZycMb9Z2erxCLdjPiF0+sVXYTSUAs84NMlZDTl1So+9zKno6pxWA4UVU9Oi425EDt4kllZLUUQGGk14MQcAcv+evQ5Bk+90BU0loEhcjY27Pr/BjClWM3wMD8WrNMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dpTlG91JqAikVBdziBUSHaWDOmE/B5vtlr1vJbeq7ns=;
 b=YLcWqUefOrPV59ZuARSv9QC61X6SBziI9EnFxjrKFQnK88YJxBShZK/McSuxnahMIBqjwjfSn/j7zTdyUG6/8wow/OMcblx8dES9cMZSs3MO7FbK+fN8OgLWkd97DJjqWR/9YNyeh/YeDDg0kiG1WzZhw/4cYDN7vL2EL4sCskXgU0gnOMp5WXYzJAGrja+0rYTegI9mCODWQVpSl373DVgWe8B2+fo0pIaYIoDtI31NpvCkeWfcQy+ArDuiTuF+mqoh6WhmgaIOwbATcLYwB9pQ5WzvTafXFhIJRTQKlBcEYpdIonyyT3Uc2Wy0WqcPxRfz2rMLJKSnZ22cjSm/8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN7PR11MB7705.namprd11.prod.outlook.com (2603:10b6:806:32f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 07:25:42 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6631.042; Tue, 1 Aug 2023
 07:25:42 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
 bridge offloads
Thread-Index: AQHZwGcddnl2iNGOxECDZJ9ZqqrHjq/VEYnw
Date: Tue, 1 Aug 2023 07:25:41 +0000
Message-ID: <PH0PR11MB50134A5F5449B1ED4E2A722C960AA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230727083539.8219-1-wojciech.drewek@intel.com>
In-Reply-To: <20230727083539.8219-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SN7PR11MB7705:EE_
x-ms-office365-filtering-correlation-id: 71b2f507-410d-4bbd-5b48-08db92608346
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ojduHEx34VDBBdkcKJMp6nlCtWHfOiwNMHg/8BUh0DGvjAlSWjqhyCoZn3IVYcp6mEYoUv0philLagGtyza5W/VU+YP1afzne/hvUbtvbjesai3qF5KQlK7cIBN3Z97o2Bx9HQ4NjL074Cc8gBhxpUEdJVcxSW3Yw/TS8sv3kqBmgFn3pH/bHUa+8huVc8JlmifPUWdLpI4hdRLqGtWNVR3BhJZC0ppRXr9CXCe9GdDOutssLy72L79cZFSYRb90UGYIKl7JcU++LlU6OmyAQjXmchb9Gi6CYqASl86ESwg09/iooD320bal4egOYhhg/9k2Dc3U9aV25iqJrUDc3g2eVgspLycdV+SOnfkyyUL4Mk4xpJSUzevlB1J+zD33tTBmYhuG3D9ZCgqCh0cOd1yTB40JeRAJBt9S6kWQfCLOk6KDzVCD1JpsWObZ4eCjU49loLFXXA47NQ8+92bkyTqeyqE+ZVEalMKxCwTFd+qB7FLTWGFURqgk1wikPt00IXlRhGOFR3gUUmdCrne1nSD+mLJZ2mEFQ3FLzhr2Ra7zdpXmJTZdvCeP3RK58JppVffrB4Vkz/tPLnkOJCkLy0tFszYbL2rlcGemoCs5BvP5F9HohVpljlp9djKZHre0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(376002)(366004)(396003)(451199021)(52536014)(82960400001)(110136005)(122000001)(9686003)(26005)(33656002)(6506007)(7696005)(8936002)(8676002)(5660300002)(55016003)(71200400001)(76116006)(66946007)(64756008)(66556008)(66476007)(66446008)(53546011)(2906002)(4744005)(83380400001)(38070700005)(478600001)(41300700001)(38100700002)(186003)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+kxFnzK/dsP88cFxPJ4UpG5TOzDYjMt2jycgSye0TWqTjOZTj+wQh3CK61W0?=
 =?us-ascii?Q?Oqtf7iSqlZpgWPxH+nfOSnosRunwfHxuEXWeh2WLEbJt0/3JWocJ6OPYj3O3?=
 =?us-ascii?Q?UghXef4T/eThUtwkx+oMCpmxAHQZwfdzDOi7ZVI179qt8kBZSgrUQY+Nf9kT?=
 =?us-ascii?Q?WtdpYfdHymywz9px4GvIzWtefYNd6yIxjzoQ2KugbJvjvh7sBY8zHWTM2zyb?=
 =?us-ascii?Q?QO8mqcee2Oz6nGYQwO6LQMtl9juX7UjshozqLiYBkbldred8KQjvyFkYATAU?=
 =?us-ascii?Q?0IP40J3Udg3R5eS9FhwfR8tDUdnJyzadz3Uwij0Cjx0sxEqepWiyI3SkZPSs?=
 =?us-ascii?Q?VKdX4A9P8enlD1L/fFwy3zw7m3GCCZdPd/KKyP6xFyYitFEB8HJGDssUbLks?=
 =?us-ascii?Q?yKw+y9APSRT9US5EBwOvBL6rBrtCXbuKzRvyQCMEF9uEeB7b9x6ZqBudLpNt?=
 =?us-ascii?Q?2YgT/YtdpZYHAEMJ3bwwnyvQK09dIFJFKUGz2i7CNToBbl66CPk1Xow8hlFf?=
 =?us-ascii?Q?jb0eRS5gG0MU9z8DjDTBrFrpdtpLFLNB1BiNcQX2jJHrbOiSZ+l87fnGZGVL?=
 =?us-ascii?Q?SBd/lsgVqkVEL+yVZKMNrt8wwrKIyUFqp2P1ot/U+lLrkfI/VIJkAHCCd9bl?=
 =?us-ascii?Q?KAu+SlG91ZBYRpxKcrE6lhkgANekowIBIj53jp4nHX1cKbbiGi4KpROiUcko?=
 =?us-ascii?Q?cKAcXkNU/1Vda/1LUmQBeqKJQ10jnQm6SrcegiQDuSrA8RC9zm5yTPXk2yfm?=
 =?us-ascii?Q?i8wZFs0eMoL2ug3F4ScgZ1Zg6ZLoL0VR1JqOMjZVSGZ8LTmT2V1IeNsAmzM4?=
 =?us-ascii?Q?XtRAm4luU7J3quqmPPPHQcDZkqRhfKxKwgSZUBu4MM1xQzWljpdChLihuQB9?=
 =?us-ascii?Q?EEcbV+7HNgmH700nv34DIxXU66QRvPPPjLykcXrjXw9YGtoKRz17f9VlGK7u?=
 =?us-ascii?Q?jrHuKkNcB8bLFOQpy/TWXsyApoK505E5Rq3B0qX0pQPgwCjwNavK7fcD25vw?=
 =?us-ascii?Q?qoBIRU+oDcqWNe1j5w3Pql5XaxaO7Q0+5Ims0TOw/KLtrQYVKXdZV86pOdMb?=
 =?us-ascii?Q?DTbjODl0XvQvSM/imjbDsMFWckSSQI6uQo2GvkFFqGiHB12EuC+ZLfigLErs?=
 =?us-ascii?Q?yqCU0QgAa/sUiRpxg58gFguYGz+COnRVdLvrotIN4Ac068bvAnOAoLWsURyJ?=
 =?us-ascii?Q?zY/gb4L5KGyxXfoYU8/a8gZt0S3Ialv3vCPn/cVdRLAGfJ8tl4bntDztFXw3?=
 =?us-ascii?Q?apoWhVtWDyQU8VEzuTsJPHMveEPW58m0MLVXO7DN4gwBL4cCFMpnFegIMqBg?=
 =?us-ascii?Q?kruZWZDFDgsoJbCi/HqzgW9mt+w+jwQEMZAJ51uQxZefvYryAmU7K6yjhlZE?=
 =?us-ascii?Q?nLYpZsRmJOh2ZzhDNorTcr4gRBdLr8J5M1/ZXAYwu6CfuZZUqzKmALDaqNGe?=
 =?us-ascii?Q?0YUvhFywyzLTkx8x9mXJkZBptBs1Q50xUb7CTd9C/yVxQe/lobJxoD3/aJnX?=
 =?us-ascii?Q?HembUiGsbajM1k1ntBJgk/tB3dmHP97fVcFYwTu14kX/YeqsZx8pQ6cR8PK6?=
 =?us-ascii?Q?A0/qMCUCrf3shfIDb9mLVZqvoTADt1gY08/Gxb1ouxw4ttlrgptDs+UaThEI?=
 =?us-ascii?Q?XA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b2f507-410d-4bbd-5b48-08db92608346
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 07:25:41.9837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dy88lq9rclduyAZl10Z7LcUY51ThTq7NhW7QEb3N6olpB2PfLkWYkbPWOseZDaFmyPPjt0HScg202sjd5xsUHvT+YrvL5uhFJQsqYfOFEXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7705
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690874745; x=1722410745;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3jxEkL9fpyx4kzoAxO+5f8MbQ0EXQP5te4Fe3e9vyZw=;
 b=KsgPbB0FKKMaAewsaO/Ut4QVYhkZEhTWBckT2rLhZWOy8e3kO0FfxCsK
 drd0hrSdueNHQ2HMRC17t0RjfR1RroIQASEDYYJMwNPEYid/MXVAj95Er
 fo2S3oL9jjokiuIDSfgmxWciznoNG9YNr4k++BDSTGQ4Y9UqE1GnKmxg/
 T5lFTCYzTXI7JwRMYCFasg1T/CY3uLDwrzZLrFMXk62aRHpRAY15h7LRq
 7Mw+fbN5q4IsLkqLNpPiQ1YWce6pAQpeqS3x+Ub/GcpIXjIgWTm0bCzyA
 8dxN8E0F8Kqbe3bsmJIbIDBq/CxHmrkwASJTWe+UcXX1FmC4T+Nm7Ejjh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KsgPbB0F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs
 in bridge offloads
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
> Wojciech Drewek
> Sent: Thursday, July 27, 2023 2:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
> bridge offloads
> 
> Allow LAG interfaces to be used in bridge offload using netif_is_lag_master.
> In this case, search for ice netdev in the list of LAG's lower devices.
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: no changes, just resend
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
>  1 file changed, 42 insertions(+), 5 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
