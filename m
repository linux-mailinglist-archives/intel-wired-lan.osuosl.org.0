Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E227C69DA63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Feb 2023 06:30:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAE2B404B4;
	Tue, 21 Feb 2023 05:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAE2B404B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676957453;
	bh=mdVBNyPpYL3vHFI7g5arS+YCUROWIBZf4WEN4mJCBKw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4GySK90umJmF2xmXu+2df2WdqoXf2quXjTofmqWwa3f4Zr5/XIEV/DewyT5I8ofq7
	 /6M/TNQ9KEpUOUdRXNMqfasNgau8J/qbVrDXlLVPWFftU4U3qDqmHxLdfsgWz/wnsz
	 kV4bIZxSu3ezhbWpdCvWsYyNzEGZlvDU3Fx2Da1SnhVnl7Zo4Pnyhr/vx9IC0Js8Qc
	 tQm/NPwVkR8SBGyi1vI99iPJ+c4BR2qAXuFjGbZwNJVGvGdx+4Hfo2/3oFSL0bveKu
	 Zd59xzuPbNU3AK9nE2MaXGf1uQOZuHFuFOJw/sScBrZuOFCCvlTxtD3O7RCWU2N6Fj
	 S8bgssZE9zjUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8B1w90cEdZO; Tue, 21 Feb 2023 05:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D857540201;
	Tue, 21 Feb 2023 05:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D857540201
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC7C1BF280
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 05:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5D2C42B57
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 05:30:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5D2C42B57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBd1yOwdnilu for <intel-wired-lan@osuosl.org>;
 Tue, 21 Feb 2023 05:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E374A42A9B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E374A42A9B
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 05:30:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312919450"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="312919450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 21:30:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="845543054"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="845543054"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 20 Feb 2023 21:30:42 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 21:30:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 21:30:41 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 21:30:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zl3/CKVwHyHMSyhupP9OT6mLVUJyiU67159UmneNiF5/vnGkQpRo188p1VucMWFCrUzut5oZfv3jJQGv7aDihB+t8k8cAluZzYnw9SbhLn3IqGeWcmH5WZyCacl2e0IypHgUTD1CuH5OMr740VqwWvTivE6s7DhoAHjUp9K0hBq8+WigGEA2CYFkvVQi8db5MoF5W/Rcnedp8oYLF+3i9EEQwxBfUW1HgS1ImoBOMlrpfBntb+LjbOoi9zPLYbkObkxcDymWZpAC6fmkjKp+0Doqk+GH6If3ho0VcPSaweI6GEostWCxLqsVVzH8hu83aHMr2T7hk3bnNOwFmMx0Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PX+Ion2yu5G/6/ff6sQEO+5UlionRDPHZGQoj9S3IpA=;
 b=Yw1P6njtlXYmWheAIDkHjaxcSUcFtybgTjvL7XAxR476evDgR4Kq+7ws4UrCq3dkUcSMzD8oY+gnR6Tm3D5ZhwWMDy3dkqO28/ELufCUgdGZRisM5V0lkBhk7VHXK4m8NZMIn3sKQZuHEuChpYkRR8pVibS8xsNPc7Td8+eKG63zq2njHhbpzvEJyd8Ttr/b+7RI2CEcJ8lUvj2sjhlbw3UYN5dC8jm1JgvKSCizEoeqh6xPUNweegogmsCKBB8b5dKf4LhWXqw7L+FvkYNrlHmBCUvt4ONTTaW6LlB/oOGm+utUUZgbLHn696QkywRuSt46qAXXfw9PblBQVv/2+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SJ1PR11MB6106.namprd11.prod.outlook.com (2603:10b6:a03:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 05:30:39 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%5]) with mapi id 15.20.6111.018; Tue, 21 Feb 2023
 05:30:39 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: Intel-wired-lan Digest, Vol 411, Issue 1
Thread-Index: AQHZRZp5+NP0rGkppkiQzluJicvn5K7Y3Jcw
Date: Tue, 21 Feb 2023 05:30:39 +0000
Message-ID: <SJ1PR11MB6180ABE88B0F32A0F4B236C5B8A59@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <mailman.14651.1676933748.134166.intel-wired-lan@osuosl.org>
In-Reply-To: <mailman.14651.1676933748.134166.intel-wired-lan@osuosl.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SJ1PR11MB6106:EE_
x-ms-office365-filtering-correlation-id: 13f2fc3f-ff53-4024-633e-08db13ccc467
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j6j3zvJZdK5Ru1adu0xsKhlyLkWe18tg32I+gUIlTu4FkvnvLbsf8tbfwhBUsH95P0GrVP6UnepnFhpcY63WStHdMsyUNkAMJw4VTSlPWrFsgn5hXvPuTHnRbh8/0UyyCwlEgQlip8uWGT8qQbxPdmPfeVvVLsOatt/RPu5lNwCOSkiU1FPzyprcFieoiOFZu2b2ELVAMblCgSp0xathM0k7v0Thfu4iiSITQpaWBFNpSSfeHa/D0Zrr+W8kk7o9NID4P4Ym2dSTjkTW3jSL2wbJ1JgWNgdLXMDqaD6/j4BLVTc9J1HiGjGvy1Bk8/J+8M4JR3AiW/yWQqIJx/Ya9ehRnlEL/QDy0DWIYXbBcHNcnRLgql675aRuUe8hPoseZX5qonpBc6t0oZwgZPmM8SHEYtKwNYG4p7NzstjvmEkneCqw+yMiLarn+pUgCJpjfftRg4tjUAFp9uT3GX/6HvtEZjlI/H/Sb1AXi+wpQB0+zwQJ6O+qYagMWKIh4J0bgJ1OfTD1QDK63jy6oDZ+qYjqFLhTkyS3dXHRUVw7tCn0V9zndb3IDLqJEn8q9i0tCR38lkDJh8W3w3G91+vvasnIzinIufoQLufQnH7/EA45Nd/UQKpwid1wIthacWm2NytGej378HZwC8IB3kT9Q9kuYbfCSH4xPW5GHrVK8g3vD0Dbq1wfXyRZbtLgVlL50/9DRfuzYr88yc5gUiV+wnS8nwvwC4fe5I1FZI3fOEU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(396003)(136003)(39860400002)(346002)(451199018)(966005)(66899018)(186003)(26005)(9686003)(55016003)(8676002)(6916009)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(83380400001)(5660300002)(8936002)(52536014)(53546011)(6506007)(7696005)(71200400001)(45080400002)(478600001)(41300700001)(316002)(38100700002)(122000001)(86362001)(82960400001)(38070700005)(30864003)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KTrwFTb5kj77Xkz/QY1LYezobCxnAUFN0lMDJE2Y83AzrHyITN1mZKPVwu/s?=
 =?us-ascii?Q?rynKuFQm7c+jJIEBayFe7l9/dKAfVTvxJ1/Rc6Q2xQiccs9t23oVKRn2DSDs?=
 =?us-ascii?Q?0lmD2EyczUarvRSVfxtiesLEGHXSQKpE0OAPpwZXTcG2iPVGQG+DCNEe/I88?=
 =?us-ascii?Q?XU0wO7+H7A0WvNFoQ0LjcyGfJuD290yd/sP+ddrLE+jaE5+p2fGYPkGvvYuL?=
 =?us-ascii?Q?1mrne03RHBsMOnVfM8fBY/jKCgcvRFWnLEbmCdbrvCs2ybUsg1qEoNtZ77tH?=
 =?us-ascii?Q?PU25BXZUC+41BT0gPuAVJhOdqjhkky7QcQ0JrsNAvJjPENmtpBlxHpDcFCUu?=
 =?us-ascii?Q?r3qf2y+Yl3+CW94GUkJeuKmiBtbWgVouYiVFsU4cyqZtAYYv/vnI7iYKCWCW?=
 =?us-ascii?Q?IKrhOI9q6Jc7fWOaHEWJl/7tbeT9VUSStYiCG60yoU8iVZONg7ntECC7SIe1?=
 =?us-ascii?Q?f7v8IDjgUC51p7ldX4iqvq/PfO3tsIMK1/IuCqDNXrdKRvb5OwmM5SShYeiQ?=
 =?us-ascii?Q?k9XMnc6vkNF3mZS58NBohqrZ0bHEXRheO/VK3dalSzZwI5cfUNbns4+cVXuO?=
 =?us-ascii?Q?dqYDVvmdkgYbJuR472rZkm/aDoeBgHFdC6G3LsjQDazRhSh+XvPB4y43LrMw?=
 =?us-ascii?Q?JOfGrNJrsjIA6I8vj+n+BJ3eimqcQFd97eHni1rJBa4QuKPQmIa3PDdgkUpo?=
 =?us-ascii?Q?m7q46tdTzDcYwPsN/t0hqWo9aVbWZWSUyNtTjT0o6GMPoCd9E9DS5Fb5R88b?=
 =?us-ascii?Q?JRTch5IzU4KMhGDog1SoIINvbM0HruKjAYsGFvCeHJdmBuuvWNCl7XV50E0L?=
 =?us-ascii?Q?lvcQtsRVfQ8Eyr+V+E96JPdEOwm/YfwRfdbK0X66Qpl7/UJxq3KAQ5v3EXP0?=
 =?us-ascii?Q?oTTxVR7WXer/gS/qH5ZdBDMcNk5ZOoU8ruFUf7NnnaSDeec4qCvYHWuUC7aX?=
 =?us-ascii?Q?AR177BlWvna9hKXaIvDoKfGcatxGwB55qaFTO9AuZF2xanZ0Tr5A+ySmaJ1r?=
 =?us-ascii?Q?N8bhxXLf8TdzMKdJSFBUC1xbxMTB2g82mk8sCLoPL2h70R2CXW4nxSiH5rFd?=
 =?us-ascii?Q?K2mI5faSzpEthoxhRMiV713JeK2jJ+bcmAIx/qyVSJHTXU1n3NFlfJ5QyHRG?=
 =?us-ascii?Q?K/tCzR47MS8m+WtrEVTe+OQOz2VD2TElbF0CX4CdNk6DbpEBWJE0FzM6Yujq?=
 =?us-ascii?Q?M1+n2TaOKRMlCP0E7EpnPxbmje2Nga8ggrvlskJ/CwKJZHrxjDrdormcd2+G?=
 =?us-ascii?Q?SqPEaF4stXtwwwKNycSsE9SwexsLUppgeo1lHSluSddKSA+BIa69gmyfHoLw?=
 =?us-ascii?Q?UP+mBPhACsNsPJ4gbLV1Q3F2+RRLkrmX0UN9qBkilYlN8zGsVDFn8BN1ejXT?=
 =?us-ascii?Q?D9ReDkwcWR4Y2xrSCXwgmcg35ripJp+a9DQQzd+t3/oMgNYNsfhQ//HFdLgk?=
 =?us-ascii?Q?whuCVt3mC6/8wy3QB8Ulxelqt3/RAvugslJFcPupGddYgPz+4YAbay9Lkh6A?=
 =?us-ascii?Q?+WfIR7zqBKGHUMqwojNVZ5v/oAOjUDUP9YqlPjd2tyrUd0HyAOal/yGbQ3Pj?=
 =?us-ascii?Q?ZXNn5ZkSTIplKXxoUodDi2CRR5zNqZSOQFIYpj5mcbM019kFVaCWztDj5E6N?=
 =?us-ascii?Q?2sW05wF0mB7cnelPqUaTe70=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f2fc3f-ff53-4024-633e-08db13ccc467
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 05:30:39.1954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b/QvwkDBeUihvTboXpuvr6NG+n0cuOuze9nOs8zT2s8eCwmDAPPIJK6FyAJ0PvgD5Jb3dC3NqpMh/XsTTflOffdpINrb9uvkjFivK9EHV1d/Q3MUMn18V/z3dhBiZweq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6106
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676957444; x=1708493444;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EUfD6iwHNJEbo9WPDLaujJjJ8WFkVD2Hv+UgfCZ8Mds=;
 b=IaUVbyVjpongb0GzL4YKsBWyIm4vE6PhT42M9skAK7nWWa9MYzGisnxm
 pVBwz9lSyQ/olLoleih2GuBi5kOwqLCTluPNK9LIXFsRai0rshWgKoswn
 vfuQURWRnJ1oONHdhfGB4PguuP1Pq/Qiy6/DSJiX7wtx7xQMljQdt+7rj
 Lj0835ded1h9UDxJAopXV06VyBVyAoIVS4yA7k5K5VFOnPw9U0zo/lkSf
 OnZpL/WKvsssbiYwvmDw1SAskSyIenusMCrAQ9cqLJUd0ZQxcAmIh7sUY
 i1yGw7rzUnMdPi2LOUyWbLFCZvXdLtxm44J+mQTZ7yKDAEE+GjAPwNE2N
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IaUVbyVj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 411, Issue 1
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

Hi Jakub,

Thanks for the feedback. Replied inline.

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> intel-wired-lan-request@osuosl.org
> Sent: Tuesday, 21 February, 2023 6:56 AM
> To: intel-wired-lan@osuosl.org
> Subject: Intel-wired-lan Digest, Vol 411, Issue 1
> 
> Send Intel-wired-lan mailing list submissions to
> 	intel-wired-lan@osuosl.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> or, via email, send a message with subject or body 'help' to
> 	intel-wired-lan-request@osuosl.org
> 
> You can reach the person managing the list at
> 	intel-wired-lan-owner@osuosl.org
> 
> When replying, please edit your Subject line so it is more specific than "Re:
> Contents of Intel-wired-lan digest..."
> 
> 
> Today's Topics:
> 
>    1. Re: [PATCH bpf-next V2] igc: enable and fix RX hash usage by
>       netstack (Jesper Dangaard Brouer)
>    2. Re: [PATCH bpf-next V1] igc: enable and fix RX hash usage by
>       netstack (Alexander Lobakin)
>    3. Re: [PATCH net-next v1] igc: Add transmission overrun counter
>       (Jakub Kicinski)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Sat, 18 Feb 2023 20:51:40 +0100
> From: Jesper Dangaard Brouer <jbrouer@redhat.com>
> To: Daniel Borkmann <daniel@iogearbox.net>, bpf@vger.kernel.org
> Cc: brouer@redhat.com, netdev@vger.kernel.org, Stanislav Fomichev
> 	<sdf@google.com>, martin.lau@kernel.org, ast@kernel.org,
> 	alexandr.lobakin@intel.com, yoong.siang.song@intel.com,
> 	anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, Jakub
> 	Kicinski <kuba@kernel.org>, pmenzel@molgen.mpg.de, Jakub
> Kicinski
> 	<kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric
> 	Dumazet <edumazet@google.com>, Paolo Abeni
> <pabeni@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2] igc: enable and fix
> 	RX hash usage by netstack
> Message-ID: <3bf858ee-d1d1-0ae1-7673-9f9e11e7ca9e@redhat.com>
> Content-Type: text/plain; charset=UTF-8; format=flowed
> 
> 
> On 17/02/2023 21.59, Daniel Borkmann wrote:
> > On 2/16/23 5:52 PM, Jesper Dangaard Brouer wrote:
> >> When function igc_rx_hash() was introduced in v4.20 via commit
> >> 0507ef8a0372
> >> ("igc: Add transmit and receive fastpath and interrupt handlers"),
> >> the hardware wasn't configured to provide RSS hash, thus it made
> >> sense to not enable net_device NETIF_F_RXHASH feature bit.
> >>
> >> The NIC hardware was configured to enable RSS hash info in v5.2 via
> >> commit
> >> 2121c2712f82 ("igc: Add multiple receive queues control supporting"),
> >> but forgot to set the NETIF_F_RXHASH feature bit.
> >>
> >> The original implementation of igc_rx_hash() didn't extract the
> >> associated pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The
> >> largest portions of this patch are about extracting the RSS Type from
> >> the hardware and mapping this to enum pkt_hash_types. This was based
> >> on Foxville i225 software user manual rev-1.3.1 and tested on Intel
> Ethernet Controller I225-LM (rev 03).
> >>
> >> For UDP it's worth noting that RSS (type) hashing have been disabled
> >> both for
> >> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP +
> >> IGC_MRQC_RSS_FIELD_IPV6_UDP) because hardware RSS doesn't handle
> >> fragmented pkts well when enabled (can cause out-of-order). This
> >> results in PKT_HASH_TYPE_L3 for UDP packets, and hash value doesn't
> >> include UDP port numbers. Not being PKT_HASH_TYPE_L4, have the
> effect
> >> that netstack will do a software based hash calc calling into
> >> flow_dissect, but only when code calls skb_get_hash(), which doesn't
> necessary happen for local delivery.
> >>
> >> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control
> >> supporting")
> >> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> >
> > I presume this should go via net-next, not bpf-next? (Didn't find
> > specific dependencies, so moved to patchwork netdev bucket..)
> 
> Thanks for letting me/us know.
> 
> I posted against bpf-next, because I have patches (for kfunc XDP-hints) that
> depend on this patch.  As we are at rc8, netdev maintainers feel free to
> simply drop the patch as the patch isn't critical.  I will just include this patch
> as part of my kfunc XDP-hints series later.
> 
> --Jesper
> 
> 
> 
> 
> 
> 
> 
> ------------------------------
> 
> Message: 2
> Date: Mon, 20 Feb 2023 16:39:52 +0100
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> To: Jesper Dangaard Brouer <jbrouer@redhat.com>
> Cc: <brouer@redhat.com>, <bpf@vger.kernel.org>,
> 	<netdev@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
> 	<martin.lau@kernel.org>, <ast@kernel.org>,
> <daniel@iogearbox.net>,
> 	<yoong.siang.song@intel.com>, <anthony.l.nguyen@intel.com>,
> 	<intel-wired-lan@lists.osuosl.org>, <xdp-hints@xdp-project.net>
> Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix
> 	RX hash usage by netstack
> Message-ID: <74330cb7-bf54-6aa0-8a07-c9c557037a31@intel.com>
> Content-Type: text/plain; charset="UTF-8"
> 
> From: Jesper Dangaard Brouer <jbrouer@redhat.com>
> Date: Thu, 16 Feb 2023 17:46:53 +0100
> 
> >
> > On 14/02/2023 14.21, Alexander Lobakin wrote:
> >> From: Jesper Dangaard Brouer <brouer@redhat.com>
> >> Date: Fri, 10 Feb 2023 16:07:59 +0100
> >>
> >>> When function igc_rx_hash() was introduced in v4.20 via commit
> >>> 0507ef8a0372
> >>> ("igc: Add transmit and receive fastpath and interrupt handlers"),
> >>> the hardware wasn't configured to provide RSS hash, thus it made
> >>> sense to not enable net_device NETIF_F_RXHASH feature bit.
> >>
> >> [...]
> >>
> >>> @@ -311,6 +311,58 @@ extern char igc_driver_name[]; ? #define
> >>> IGC_MRQC_RSS_FIELD_IPV4_UDP??? 0x00400000 ? #define
> >>> IGC_MRQC_RSS_FIELD_IPV6_UDP??? 0x00800000 ? +/* RX-desc Write-
> Back
> >>> format RSS Type's */
> >>> +enum igc_rss_type_num {
> >>> +??? IGC_RSS_TYPE_NO_HASH??????? = 0, ???
> >>> +IGC_RSS_TYPE_HASH_TCP_IPV4??? = 1, ???
> >>> +IGC_RSS_TYPE_HASH_IPV4??????? = 2, ???
> >>> +IGC_RSS_TYPE_HASH_TCP_IPV6??? = 3, ???
> IGC_RSS_TYPE_HASH_IPV6_EX???
> >>> += 4, ??? IGC_RSS_TYPE_HASH_IPV6??????? = 5, ???
> >>> +IGC_RSS_TYPE_HASH_TCP_IPV6_EX??? = 6, ???
> >>> +IGC_RSS_TYPE_HASH_UDP_IPV4??? = 7, ???
> >>> +IGC_RSS_TYPE_HASH_UDP_IPV6??? = 8, ???
> >>> +IGC_RSS_TYPE_HASH_UDP_IPV6_EX??? = 9, ???
> IGC_RSS_TYPE_MAX??????? =
> >>> +10, }; #define IGC_RSS_TYPE_MAX_TABLE??????? 16 #define
> >>> +IGC_RSS_TYPE_MASK??????? 0xF
> >>
> >> GENMASK()?
> >>
> >
> > hmm... GENMASK(3,0) looks more confusing to me. The mask we need
> here
> > is so simple that I prefer not to complicate this with GENMASK.
> >
> >>> +
> >>> +/* igc_rss_type - Rx descriptor RSS type field */ static inline u8
> >>> +igc_rss_type(union igc_adv_rx_desc *rx_desc)
> >>
> >> Why use types shorter than u32 on the stack?
> >
> > Changing to u32 in V2
> >
> >> Why this union is not const here, since there are no modifications?
> >
> > Sure
> >
> >>> +{
> >>> +??? /* RSS Type 4-bit number: 0-9 (above 9 is reserved) */ ???
> >>> +return rx_desc->wb.lower.lo_dword.hs_rss.pkt_info &
> >>> IGC_RSS_TYPE_MASK;
> >>
> >> The most important I wanted to mention: doesn't this function make
> >> the CPU read the uncached field again, while you could just read it
> >> once onto the stack and then extract all such data from there?
> >
> > I really don't think this is an issues here. The igc_adv_rx_desc is
> > only
> > 16 bytes and it should be hot in CPU cache by now.
> 
> Rx descriptors are located in the DMA coherent zone (allocated via
> dma_alloc_coherent()), I am missing something? Because I was (I am) sure
> CPU doesn't cache anything from it (and doesn't reorder reads/writes
> from/to). I thought that's the point of coherent zones -- you may talk to
> hardware without needing for syncing...
> 
> >
> > To avoid the movzx I have changed this to do a u32 read instead.
> >
> >>> +}
> >>> +
> >>> +/* Packet header type identified by hardware (when BIT(11) is zero).
> >>> + * Even when UDP ports are not part of RSS hash HW still parse and
> >>> mark UDP bits
> >>> + */
> >>> +enum igc_pkt_type_bits {
> >>> +??? IGC_PKT_TYPE_HDR_IPV4??? =??? BIT(0), ???
> >>> +IGC_PKT_TYPE_HDR_IPV4_WITH_OPT=??? BIT(1), /* IPv4 Hdr includes
> >>> IP options */
> >>> +??? IGC_PKT_TYPE_HDR_IPV6??? =??? BIT(2), ???
> >>> +IGC_PKT_TYPE_HDR_IPV6_WITH_EXT=??? BIT(3), /* IPv6 Hdr includes
> >>> extensions */
> >>> +??? IGC_PKT_TYPE_HDR_L4_TCP??? =??? BIT(4), ???
> >>> +IGC_PKT_TYPE_HDR_L4_UDP??? =??? BIT(5), ???
> >>> +IGC_PKT_TYPE_HDR_L4_SCTP=??? BIT(6), ???
> IGC_PKT_TYPE_HDR_NFS???
> >>> +=??? BIT(7), ??? /* Above only valid when BIT(11) is zero */ ???
> >>> +IGC_PKT_TYPE_L2??????? =??? BIT(11), ??? IGC_PKT_TYPE_VLAN???
> =???
> >>> +BIT(12), ??? IGC_PKT_TYPE_MASK??? =??? 0x1FFF, /* 13-bits */
> >>
> >> Also GENMASK().
> >
> > GENMASK would make more sense here.
> >
> >>> +};
> >>> +
> >>> +/* igc_pkt_type - Rx descriptor Packet type field */ static inline
> >>> +u16 igc_pkt_type(union igc_adv_rx_desc *rx_desc)
> >>
> >> Also short types and consts.
> >>
> >
> > Fixed in V2
> >
> >>> +{
> >>> +??? u32 data = le32_to_cpu(rx_desc->wb.lower.lo_dword.data);
> >>> +??? /* Packet type is 13-bits - as bits (16:4) in lower.lo_dword*/
> >>> +??? u16 pkt_type = (data >> 4) & IGC_PKT_TYPE_MASK;
> >>
> >> Perfect candidate for FIELD_GET(). No, even for le32_get_bits().
> >
> > I adjusted this, but I could not find a central define for FIELD_GET
> > (but many drivers open code this).
> 
> <linux/bitfield.h>. It has FIELD_{GET,PREP}() and also builds
> {u,__le,__be}{8,16,32}_{encode,get,replace}_bits() via macro (the latter
> doesn't get indexed by Elixir, as it doesn't parse functions built via macros).
> 
> >
> >> Also my note above about excessive expensive reads.
> >>
> >>> +
> >>> +??? return pkt_type;
> >>> +}
> >>> +
> >>> ? /* Interrupt defines */
> >>> ? #define IGC_START_ITR??????????? 648 /* ~6000 ints/sec */ ?
> >>> #define IGC_4K_ITR??????????? 980 diff --git
> >>> a/drivers/net/ethernet/intel/igc/igc_main.c
> >>> b/drivers/net/ethernet/intel/igc/igc_main.c
> >>> index 8b572cd2c350..42a072509d2a 100644
> >>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> >>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >>> @@ -1677,14 +1677,40 @@ static void igc_rx_checksum(struct igc_ring
> >>> *ring, ???????????? le32_to_cpu(rx_desc->wb.upper.status_error));
> >>> ? }
> >>> ? +/* Mapping HW RSS Type to enum pkt_hash_types */
> >>> +struct igc_rss_type {
> >>> +??? u8 hash_type; /* can contain enum pkt_hash_types */
> >>
> >> Why make a struct for one field? + short type note
> >>
> >>> +} igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = { ???
> >>> +[IGC_RSS_TYPE_NO_HASH].hash_type????? = PKT_HASH_TYPE_L2,
> ???
> >>> +[IGC_RSS_TYPE_HASH_TCP_IPV4].hash_type????? =
> PKT_HASH_TYPE_L4, ???
> >>> +[IGC_RSS_TYPE_HASH_IPV4].hash_type????? = PKT_HASH_TYPE_L3,
> ???
> >>> +[IGC_RSS_TYPE_HASH_TCP_IPV6].hash_type????? =
> PKT_HASH_TYPE_L4, ???
> >>> +[IGC_RSS_TYPE_HASH_IPV6_EX].hash_type????? =
> PKT_HASH_TYPE_L3, ???
> >>> +[IGC_RSS_TYPE_HASH_IPV6].hash_type????? = PKT_HASH_TYPE_L3,
> ???
> >>> +[IGC_RSS_TYPE_HASH_TCP_IPV6_EX].hash_type =
> PKT_HASH_TYPE_L4, ???
> >>> +[IGC_RSS_TYPE_HASH_UDP_IPV4].hash_type????? =
> PKT_HASH_TYPE_L4, ???
> >>> +[IGC_RSS_TYPE_HASH_UDP_IPV6].hash_type????? =
> PKT_HASH_TYPE_L4, ???
> >>> +[IGC_RSS_TYPE_HASH_UDP_IPV6_EX].hash_type =
> PKT_HASH_TYPE_L4, ???
> >>> +[10].hash_type = PKT_HASH_TYPE_L2, /* RSS Type above 9
> >>> "Reserved" by HW */
> >>> +??? [11].hash_type = PKT_HASH_TYPE_L2, ??? [12].hash_type =
> >>> +PKT_HASH_TYPE_L2, ??? [13].hash_type = PKT_HASH_TYPE_L2, ???
> >>> +[14].hash_type = PKT_HASH_TYPE_L2, ??? [15].hash_type =
> >>> +PKT_HASH_TYPE_L2,
> >>
> >> Why define those empty if you could do a bound check in the code
> >> instead? E.g. `if (unlikely(bigger_than_9)) return PKT_HASH_TYPE_L2`.
> >
> > Having a branch for this is likely slower.? On godbolt I see that this
> > generates suboptimal and larger code.
> 
> But you have to verify HW output anyway, right? Or would like to rely on
> that on some weird revision it won't spit BIT(69) on you?
> 
> >
> >
> >>> +};
> >>> +
> >>> ? static inline void igc_rx_hash(struct igc_ring *ring,
> >>> ???????????????????? union igc_adv_rx_desc *rx_desc,
> >>> ???????????????????? struct sk_buff *skb) ? { -??? if
> >>> (ring->netdev->features & NETIF_F_RXHASH) -???????
> skb_set_hash(skb,
> >>> -???????????????? le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> >>> -???????????????? PKT_HASH_TYPE_L3);
> >>> +??? if (ring->netdev->features & NETIF_F_RXHASH) {
> >>
> >> ????if (!(feature & HASH))
> >> ??????? return;
> >>
> >> and -1 indent level?
> >
> > Usually, yes, I also prefer early return style code.
> > For one I just followed the existing style.
> 
> I'd not recommend "keep the existing style" of Intel drivers -- not something
> I'd like to keep as is :D
> 
> >
> > Second, I tried to code it up, but it looks ugly in this case, as the
> > variable defines need to get moved outside the if statement.
> >
> >>> +??????? u32 rss_hash = le32_to_cpu(rx_desc-
> >wb.lower.hi_dword.rss);
> >>> +??????? u8? rss_type = igc_rss_type(rx_desc); ??????? enum
> >>> +pkt_hash_types hash_type;
> >>> +
> >>> +??????? hash_type = igc_rss_type_table[rss_type].hash_type;
> >>> +??????? skb_set_hash(skb, rss_hash, hash_type); ??? }
> >>> ? }
> >>
> >> [...]
> >>
> >> Thanks,
> >> Olek
> >>
> >
> 
> Thanks,
> Olek
> 
> 
> ------------------------------
> 
> Message: 3
> Date: Mon, 20 Feb 2023 14:20:17 -0800
> From: Jakub Kicinski <kuba@kernel.org>
> To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
> Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
> 	"intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
> "Gomes,
> 	Vinicius" <vinicius.gomes@intel.com>, "Neftin, Sasha"
> 	<sasha.neftin@intel.com>, "naamax.meir@linux.intel.com"
> 	<naamax.meir@linux.intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add
> 	transmission overrun counter
> Message-ID: <20230220142017.1c0b57be@kernel.org>
> Content-Type: text/plain; charset=US-ASCII
> 
> On Sat, 18 Feb 2023 06:19:31 +0000 Zulkifli, Muhammad Husaini wrote:
> > Hi Jakub and Vinicius,
> >
> > I would appreciate any early feedback or thoughts on this patch
> submission.
> >
> > History of the discussion:
> > https://lore.kernel.org/intel-wired-
> lan/SJ1PR11MB6180D0D59EB01AD1E8FE4
> >
> 991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b40
> 067d23
> > 15def91d41c9695454d6c9f
> 
> Tony asks very good questions. Driver specific counter always reported as 0
> would be odd for Linux. The counter is of no practical importance.
> 

I understand your concern. The counter will currently always report a value of zero.
If we removed the strict end bit in the future, this counter might increase. 
We must somehow create a new counter statistics that the equipment can use for a 
certain test scenario. That is the reason I didn't try to update any code on the 
network stack(ethtool) and instead simply changed the driver code.

> ------------------------------
> 
> Subject: Digest Footer
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> 
> ------------------------------
> 
> End of Intel-wired-lan Digest, Vol 411, Issue 1
> ***********************************************
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
