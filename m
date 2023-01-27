Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0EF67E7C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 15:08:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2895882FF9;
	Fri, 27 Jan 2023 14:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2895882FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674828493;
	bh=s4XF07eVxldhle+b3zNpEQe/r8ZnHR5zHhdKtGqTTAU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XcWPGEzjHNSiaWdw7K6ACMy4YyMFtBCqP/MqIoj9Pl30SzGmVCavxL4bs/msKrupU
	 cb6YFhBgPbdg3WwDU06WIZBuK/i/hW3fF33TQ5bT3t8LT5CxOqa3l91I5G+fLlQtUn
	 R2pm2Q4sy1hYwEM/X3gaPFN+5qiXMqkCgu6xf3eOXL0y1Uv4kjl/9+7Frf6eQYwupu
	 Bj24aB5EZ6KqKF/g6JBpN+/kG3n506+wmgBa6gwViQUDIO+qHRVY+1yyDp4w38sdw9
	 T4RZ3ykXOWG9EuEGw9bsNWKebfzm6vl/hrOErJAm/7r0uRJT42J6ErP5XNHLbZpKph
	 FWccWIxZsfqWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGFgi6Ix27Hy; Fri, 27 Jan 2023 14:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08EB482FD5;
	Fri, 27 Jan 2023 14:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08EB482FD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4761BF39E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E704140A71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E704140A71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHzITg-0SFwF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 14:08:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F100E408A5
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F100E408A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:08:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="324783470"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="324783470"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:08:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="613198389"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="613198389"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 27 Jan 2023 06:08:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 06:08:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 06:08:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 06:08:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 06:08:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYYX0hBHuANaiiyGL5h9FnexfnjlMK2baxVZ1GbIIKn9810xFPqftc0wWa51PSVvjiLJk0kQ2GibR57FXvdNM/NQ1VQHLpSmLG8jw6JN0S4zfgqbCQ2M8hzrz790bCq+DnXDe33BumJLopyqFLy8yhkOgXLEWRybB0b2v2xZ6rB/qO23QtQk9zTrxooqUYRN5+7A15bi9LYjDt4rGyYm2V0b4O3XgIkx6nFQCrLJLeCsJVkz3QAGcDksTfu3Tj1fxGKVkc535hBUbhllVY44ul46EUE7L2GpjY0/OiPTc4v/9hhxhavrpqk8E/EIxwZ7BCVK+gJFfUuPtbee0xqMGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVPaKMVYADpmz5uXThEuF6hPpfdWZH/otrsyy5dZKpg=;
 b=hkQHPCuGZki9SDLz7eecsiJOco9+Lt69Ds01OcNmRHXHRJ5PJJjKhzQCCEC6pTEa97Po6+MMEZEGGxMVs2/896uthwRmKQj6vCnc+qdr+AXKl7EdjPhAMVcnJqqS5IuJAnluMz8CpMfPoRuluRppd3saFtck7oPjXNO2CAzGEVpNEVLn1/DCHLd2Z8QcAjdWO2UAgGxQQHRJGTah4e/iTW1DJG2OVJwp7wmUSB1cPzxq+10/QFe2Ih5c2NdyOgB7xYuNTe/iMJYK5RnaxNegHIyFR264zViCBtdwRb0JZ05WmqaVLKl2M483hkOVm79Sy9TQDhrmdX5QS3V+AacEtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB8271.namprd11.prod.outlook.com (2603:10b6:a03:47a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.25; Fri, 27 Jan
 2023 14:08:01 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 14:08:01 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] ice: Prevent set_channel from
 changing queues while RDMA active
Thread-Index: AQHZMBgg56QvP9Ldl0KA6bhUozc9Pa6yURpQ
Date: Fri, 27 Jan 2023 14:08:01 +0000
Message-ID: <BYAPR11MB3367475FD293D324C0E8C56BFCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124171943.1625923-1-david.m.ertman@intel.com>
In-Reply-To: <20230124171943.1625923-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ0PR11MB8271:EE_
x-ms-office365-filtering-correlation-id: 590a7284-fb3c-4f39-8020-08db006fe68b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vUU8TuglTokC9BEsYUfM5MMwFNT0XizU+Bq8CcJKVsvnXdRBHQyC42I8/nijxbUM7r/Ya/7yW0zAtclnMOBAHIW3IHrrsm3wXvycHVtAdLbRhMNShjuTC4B7gHmedmJ5PVzBeUU+Nx18wig0EyqwuVUmhy5x14M3XwoMRtiO+4jyRvQWrEE7zkn+uBuYrXRhTPwO8wLFSWMLB8lVPlkEB6T4/oiupR4HBJ6eEyGFNqjvKGpXpzA463EwRzN/8/ylgq51t4C4Anlvn7qQBMx4fxyKakXnq+NEnr0BOLYKUhcW71NBEti356AcdXSRhZ9CpX6Ey84bpnv5wk8YtBX34BvOyqWTcLFGZm6qOWMVCI57l+D8D1Fwjuve+9L+CEL5ek2X/y9eBOCsQfl1b+I0JlEEO6t4/qpX0cgOW8CJ3ttJly2YT76Fj6aeTtfm1AKbAmFwEF12mhDTdtbaPV/Qxny6JovCu5d8BuhD/vuOlNC4NGSNIT5XUqaqy63e8sT4UT0urHd/7ribIt0q4ktLfYCwcjhW0BqXfQJ14m2mW3reVFvW7ym8XNQxHZ0tDBKNt49H/+G2seWgFJXNIyf+st3lgYM52dGP64Zf3utd/rtvOKjReJGlA8qziJXoWxTuYBCU2vlMj+sTCeardIWjkZM19r5X3iLxaAzMUprHvK2imU8s4npxm26drfewDiBh4pkLmdQGTxDsIZWILWmx9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199018)(33656002)(26005)(110136005)(71200400001)(7696005)(38070700005)(316002)(478600001)(2906002)(9686003)(186003)(6506007)(76116006)(66946007)(8676002)(66556008)(66476007)(64756008)(66446008)(38100700002)(82960400001)(122000001)(53546011)(52536014)(55016003)(41300700001)(86362001)(83380400001)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z9BuUaPoDvDjHcAoIDcEIOmJMeYnSKHgyu6PGQZrJQmEFwbqpUf//1Ef54oP?=
 =?us-ascii?Q?rt2Lcyq+Ol156kvXE5D3uo6oWPxxeo4l47Oq5z/c2WLlbn1+eHgk//m7ozwI?=
 =?us-ascii?Q?dtjsazJlH6dPuWoaUriKYHjI+nLkaPtdZYRVY53qBHln4U7fRfLAcYghk7bh?=
 =?us-ascii?Q?fmi6U3hCNIsJu2JXjVoNSY6WgSin8JyOgSqqPkLk2bDBifIqLpvdaijW/3jv?=
 =?us-ascii?Q?2kiTxNePFG2VO10QsTASVpFrspg4Xu0ekMJSD71Ye7DReegUqI++4JQZ7nwz?=
 =?us-ascii?Q?1Fx0V3JVXrrGBJg1n3JV4dfzsODIGPury3hKpw1/KE32VBphQG7TdIW0CDFs?=
 =?us-ascii?Q?BCzKP1+KoubmGYx78Z/kAWfTRC8hYx4sK5uyPDc856PbMbJ0JERKow96x4ZV?=
 =?us-ascii?Q?mus9WUX9jJaijOphGz2PFFSLOE3v5a0+OY5jJEVrlS6Iu50TlB3R9ndZHnte?=
 =?us-ascii?Q?bAdKsT6uWGV1AnJsEsz0Bf7/LoG1k8uwStTAoDW4p7gU0DyFwNsqgZuDDrnn?=
 =?us-ascii?Q?QXEBt+mq0BOyF+qAelGQTPNnnsWilrDH0Z8ZMy9KuX6K59MSsXVBCSIAQkcL?=
 =?us-ascii?Q?0bqAPPTFfaglfvzdPjke2tBMMMUZ4V9wCTJfXXSQBfvMuJRc9WfJiHiQF+Mu?=
 =?us-ascii?Q?lRcYgEZTodggOWGGYxTAPf98VjRfYlatXLPZsmhcUTDMCQPhIKFfsD92daxH?=
 =?us-ascii?Q?QKYnAwcAAGPLqGknr3GQBEpkR4MAIleqtvxc6YUHX0hADJxeXR9LRFC03Vlm?=
 =?us-ascii?Q?TSHvMHzLr0Y7rKfQhMeeialOrHMnZTfxTdrorgKclvyqu2RaQfzR+8QD7VOx?=
 =?us-ascii?Q?VnugPB6chHH+8X2ZDmqfsoMN4b/rwXN4fdIofHV3yuEmJfaWcfD6zdEfoNo+?=
 =?us-ascii?Q?U35PZ7iSlxWa1Quok29VsAs3sTGpnw12mC8KgcXJUYO49Y+70SW52XGz+3b6?=
 =?us-ascii?Q?eUsAEciLDDGQnakWExrQYk2ZTYXCARC+kupx0IUp13O46HzJxeXLtYyD+R3d?=
 =?us-ascii?Q?NvyRvLARcV6vOFmWANY+203VTt0sz4y7cSHL/75Js9+YEjukQxy8ZIQCgUh+?=
 =?us-ascii?Q?OtSEUd3ASxt5YK6ob+1ZaRtcqKr7wH8d7q4Sk8BkqQSb3Vtfwg95WXzUDuvX?=
 =?us-ascii?Q?3vQgrxSrzdmCDgiatrFe6iR81TMKQzwGOXC1zdk2CupZp2Z3r5qpmygxTLzE?=
 =?us-ascii?Q?zklZAxQaOF9v30h2eHk9jolZh64GcCU5PQHzhrxfBXcg3ftdILEdebZSbjMP?=
 =?us-ascii?Q?OujV8yx0M4+g0dpU2Hvmu2xpwvJL1zNTusC9TRqLAt4TUXpAFqORjS3XqsJi?=
 =?us-ascii?Q?OfkfuO0VkT2RHKh8m0qzMmV8Ez1YlUmF1FX3NGdbGXx7Lp3scrxQpRV3ie5+?=
 =?us-ascii?Q?Xh1K4MTY2ED467ecILq75MI/q9Us4sSMuyXwKaUv/TfFt9b7gZbDlxd3KpCR?=
 =?us-ascii?Q?2Mlzo5iEEKwlsLJ8nwDgJZPFdy3W+0LX6owfRpXPCCEdqjjw51zh2Yu/4l5O?=
 =?us-ascii?Q?mkEYfkkkB++eDVd8WzEtwx0TZYY2we7CkBBOSSn4IWstZ5eC7YalMxga2uN2?=
 =?us-ascii?Q?EJLPsvji6YOJ6zFZfyKrQqtt8Uq7ahjyTWuoHkp6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 590a7284-fb3c-4f39-8020-08db006fe68b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 14:08:01.1860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3p9ayjzk+d1v41xoLP6wTTTzVjZ+JbGHvyFgpl4WF/h2l5tUU+ttr1VOE2jAyeCI23XLz6WZvGp5Bc5FTfHveA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8271
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674828485; x=1706364485;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dESInBAQW3knx1qtW/ofc4yTqmRIOf6xCfu5pxvJtM8=;
 b=ho29sBVj9biUsUgYE0m8q63HaMK0Oyi9xTRYgG2VLT6AQUx7WoiHG0YN
 YvN7t5Q11u4Tma5j6I6GAM8uJ3nwawfcs1vkK5j7RVK+ui+NHjBd/74Xa
 fpvlzEVqxTL83LOU7No/vbWBYWsu5xxelC9OWxP6ueox09+wSySnv121L
 1N7eAfOuss/qifrPk87xhFdXmrnkmcS+knxdcA71yZpBm2Cu+nzEkbJrn
 0J8O1DzLqZ9Q1QNV+7WdgA7m3gYJHHc34jVQFJCD1IzwMJbbmfY30vCRX
 gmnteq6VY+PImk4Sj+cFmLUdTiSJ9Lrh+9ix0avAXJy6kdJBgy18UeqA/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ho29sBVj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Prevent set_channel from
 changing queues while RDMA active
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
> Dave Ertman
> Sent: Tuesday, January 24, 2023 10:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v4] ice: Prevent set_channel from
> changing queues while RDMA active
> 
> The PF controls the set of queues that the RDMA auxiliary_driver requests
> resources from.  The set_channel command will alter that pool and trigger a
> reconfiguration of the VSI, which breaks RDMA functionality.
> 
> Prevent set_channel from executing when RDMA driver bound to auxiliary
> device.
> 
> Adding a locked variable to pass down the call chain to avoid double locking
> the device_lock.
> 
> Fixes: 348048e724a0 ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> Changes since v3:
> Protected driver with device_lock.
> sent variable down the call chain to avoid double lock
> 
> Changes since v2:
> Added check for NULL pointer
> 
> Changes since v1:
> Fixed typos and pointer reference
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 23 +++++++++-------
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  4 +--
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 28 +++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 ++--
>  5 files changed, 43 insertions(+), 19 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
