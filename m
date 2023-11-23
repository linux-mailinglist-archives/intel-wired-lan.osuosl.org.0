Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110787F6554
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 18:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC67241633;
	Thu, 23 Nov 2023 17:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC67241633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700760183;
	bh=qEKTiO2NeHUS4J/9sll4LcDDn1NTUotkkMz/jKGIWXQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eFLXwHq8/bHRFQqe3ih0/xWWKO65i7rqVOHFkbgR8605NiBF5ps9bBhin/qi6ZHiS
	 aFmOcULEjm7KLnkYOymhAU3Z2hHz+bMHi+uYsXF75T/v5totq3ySJaS3pWnfZfb4nP
	 f2W54IBZH0rtj2hYAdWRI3bvRi+wHEwEEAmwOfV/ST+Y2bZueGiIqACBXaKwRbFIDg
	 hnA/Ft775r0voM0ZFNiAxpbBD+Z6Bo29mCKft+iPXWWgwfBWtO36xmP2W/GqIj5duO
	 JEVS1iFs4qJKQFMgYVIpwZr73JQwS0rEY805svV8HuFguv33OqXQXeVX0eGV31R9ja
	 x0fcV0uguVd8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1J2nb_Ry5bOv; Thu, 23 Nov 2023 17:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4993340156;
	Thu, 23 Nov 2023 17:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4993340156
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BA171BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 17:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E9FF6135C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 17:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E9FF6135C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5o5i-PW5Skde for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 17:22:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3A99607F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 17:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3A99607F5
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="372466145"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="372466145"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 09:22:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="1098869932"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="1098869932"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Nov 2023 09:22:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 09:22:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 09:22:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 23 Nov 2023 09:22:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 23 Nov 2023 09:22:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8VQe6jzTuFe8N5XnXiPX8EtmsINGtE5L11OCElkn2ljMBxZbdz4/WDv4RDfSX7HB3R488p1ynWhmKdFiCC7trb9ICL9nP12RF3tyPth7ICOILLnE/9XHXXcd0Kj8zfRRqFYPi+tT5t70zwTAoGLb4gLdTFCUY2NdRUXGtVv37c06z/qHUIgkq0usbqS/0TQ5OBOVoIjN8WkynwFQOPBZPeHdrHERTNrzU45R2dibQJqLuYPvhmKl5ocGnOXmi3F/EoTqDXuZkSCu3C/GqXWc/VgR1Lth40dI/7ipmHbhXq8mGxht9UVh7BVDiyUb4WSZP0DcgfMwCnAg9zdYlB3ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgbUg3i0AidA7V3PzFXg1dkeh7Qsfoy/vvHabkfz8t0=;
 b=DPBOO8rgH3dwXzpdPxta5/jgWaQFRFdfzOtUtkRGqtLVozs7JWZE0PaeGPfGPfSnhrucR4Y3q4XfvSju8yfec9ddZjuqQiEgLLoyXUc5EXS5fJz26L7Dc5WUZCdpnRKIvxOcBUvmw5fInVzVHpkUMhDKWa+FE9KpyUBjeuLHFr/uPLTFBUpiSsX3gOwPfodC3X6yc+WdmplQcnMZvj60BpYY9khgbJ0wxMU5d/xP41hdWDYP8EzrK9KRFkacwEcfbMvBioz2dAWnDC3R9PBBaFrq6LvZ4stpwGrB0dm9ed6Uj2pPqKqL9mvDtVz7lSqGHXgv2jA5knTVdfOekxC4Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH3PR11MB7202.namprd11.prod.outlook.com (2603:10b6:610:142::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 17:22:46 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%6]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 17:22:46 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X using resource
 tracking
Thread-Index: AQHZn6NdbWVfUm0zz0i6FrXhqi/DsrCJI/qA
Date: Thu, 23 Nov 2023 17:22:46 +0000
Message-ID: <BL0PR11MB35211950BCAC4646FAB7851B8FB9A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
 <20230615123830.155927-5-michal.swiatkowski@linux.intel.com>
 <CO1PR11MB5089B50AB69E2EA953E07FEFD65BA@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB5089B50AB69E2EA953E07FEFD65BA@CO1PR11MB5089.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH3PR11MB7202:EE_
x-ms-office365-filtering-correlation-id: 06da2d4b-cf84-4eff-a9dd-08dbec48cf42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z7XEQdaB+gy7sNZAATmKDHFqvtGyuPksM3ostpOzro2nQ4iTrC53k8gdEC4P9S1ZBpsh9A14C7nViF/Xuh6SNj1TqiqS7WiB6MoNOrInzN6rXNm+zMILOGQA4Anb206MT0RhyZcGYsQJ29zNsC1SACHVySUh118BbMZEIOkmxba1O+herd1lDqZGsOZ/vyaK3uai4rmtJ1e31+94gnP6ENrvZHsB9KVhREi3bDyx6UROC+/8Kx37QUgexmnb4mHIoHDS6tM5T+VTXxa13rTurwNyy3XUY8L/iWM9G3CIRqYt3en1ek+m2HgU+Zaj062+uDlN948dvUyqyX/u0HZwKrJxNMHU+SJ1+DftJHijecCy4Heu5YewnHPSNpZDUkWFdAHSgYwrRvZMNaNrS6n8CLJLTpID4748HqKhum30phSsuFQd3OwiAbtcw7d//6TRFkGrntx3eCFiYM0RmHksFswCvlVDBQwMDdd9HXHn93UuDWP6OL9LunshXMAm6Z5wA89JIUhTV5/QWRi/Haw6EpHmZGmQ9Bb9Fd+aEFYKmynISWk9EpJPIaJnj0GwA2BcAaSfAObQtzU2c7R8DaOU4flcceoeyE7qvLwF87ZgfGh1+AkSvPUIerqxZMJlJk2l
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(396003)(39860400002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(83380400001)(6506007)(7696005)(478600001)(53546011)(9686003)(71200400001)(8676002)(41300700001)(52536014)(4326008)(26005)(8936002)(5660300002)(2906002)(316002)(64756008)(110136005)(66476007)(66556008)(54906003)(66446008)(76116006)(66946007)(86362001)(33656002)(82960400001)(38100700002)(122000001)(55016003)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9gbOjyJJJPLlds1CuAajQUxWFRMjVslyr3D73ikVTxjWtdnkw/r0aGZSvDyN?=
 =?us-ascii?Q?uNAA0oA+85pswHGzb96j3pShx4w2ZjLqzqG16jt23quvorkhMEyxqlgEUnub?=
 =?us-ascii?Q?Me9H8ddeXQlXxfKJ0IBtV4IQyXwq3OrM+R+f8IuqgcbNXa5LLS8+YX0qNVfo?=
 =?us-ascii?Q?+ArDrh2GyvDUNUTGIo/ofrxme+ZN+7F8PfhiMUR0dZxvbbguQZ8712LW7ye6?=
 =?us-ascii?Q?yIpGHIZdEmq3CxPJtq5kAgE94Cu43aeT3KSEiZpfWqsLx6sShJdlUEvaLBNc?=
 =?us-ascii?Q?kvyNoPfEEkohkuIslC1HnzXcdP/1yRixBnpmUWFHtH7TikYnwo4yjmJXMsO4?=
 =?us-ascii?Q?b57AoiMzRYyxJR5q6+gNkL70sP16Ql3Zq52VO9mekMYUAUJMmFARfPidVEeI?=
 =?us-ascii?Q?RxVK2IWGuI0rjhe88a8AO0DyzKfA36F+5ilFifEJNFiPkYqfQdEP4GO/coyj?=
 =?us-ascii?Q?cASsl6ncmyVCmGY6cWg68sr6VpFp0g2Wz097MLGFzGZp7lKMxvpx5qJG4teb?=
 =?us-ascii?Q?SUHvJR+8k0PEMyrdKPcvNSSJM/73BpPfHBmstU+V0OmO3052HIaNRSY99uNp?=
 =?us-ascii?Q?YeJFlho0B2hDsHEX+S6mB/eukiLckKg3uNNPvP1pZAxTOEC8gqL79JCGJt/2?=
 =?us-ascii?Q?DqUnsZet7I5C1+lHhRHQlu07PfWFdMrPseHt3MAEGcrvC7J68pkSO3rVypt2?=
 =?us-ascii?Q?uLVHwon0sBVKx6SSC9hBY2hvrjaBBJNNst4U+t9gvdkKeLqzXgX60Q/P6E0W?=
 =?us-ascii?Q?YR8c0G5HgQonRYBcAn6VUt/AIJThIRVIzQJEvglzIpqrtheSmFr6NqZa2Z9x?=
 =?us-ascii?Q?Ev6Q5SE91mBHsUhuCiKnudRb5ei8PsFgKYj5SsWMTmdNUy7XH32L5miIMUUF?=
 =?us-ascii?Q?V/vs5acq4bmhw1kJcTEPXaYY9nkyO2DvL4o95Pw4j6enXOyWGR8b07enDs8v?=
 =?us-ascii?Q?rpP+jgn/tP318z/Meq3myusn3OhaEPI/8LR+3RCqD0IkTRB0wemqf9CdNHAn?=
 =?us-ascii?Q?3iVnqwAVhEsUpvvVf69JYZ2oySRc7YFZ/b2V0AtWl9dsj5C0K/3Jj40772Hl?=
 =?us-ascii?Q?34SQACmzKMFl3vhES66p3AFQ0wH0DzjnkU4nloF/etia2AbD0kmsmidw8iZ2?=
 =?us-ascii?Q?LQ+0YJy4WQoj9sqXeYhtBUnxvUoxmWUX6kbIis3hg2ybamYywyVYOURrojTd?=
 =?us-ascii?Q?MYzk6DOZc1c/4V9fk8ELqEBKJu4lGsvH1VV92qmiFN8bKT7jl2Rf5X9bN5yY?=
 =?us-ascii?Q?j4KXSUBg4f66yTHMS96InHzNb/2rzE4lWDo5GZu9LKFCZg75Vuh+Y2Nz4bDL?=
 =?us-ascii?Q?mEeKUbrmcKwrBZQ1kjCZSilftICoS8QTxKVSzlMmSGEJM0b8IwYMgDdCn1OM?=
 =?us-ascii?Q?5kzI7t9wbcQpvmT/AJNlGY+rqgT+LVBcWP3DEHsSI8Di12fP1u0/167kBsNC?=
 =?us-ascii?Q?euAVysFzd7fl4HXrakU5xyNsmJ1Pq9/6HhEC+dasrb7OOh9aosKTyoGGHk8H?=
 =?us-ascii?Q?xhkuX+uuIZu3kYXlyIn3Op1fguqtXoMtIh16If71mEYwwc2WJAR4NWBMZxM5?=
 =?us-ascii?Q?ZRRKwIWcx4IjESCazuNhRtiQzQzYUgKm9/H0si9QXXBMAek28NkSBnDMYDEO?=
 =?us-ascii?Q?0w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06da2d4b-cf84-4eff-a9dd-08dbec48cf42
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 17:22:46.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /HdO5+odY/ob1EHJHo6NBC2RRODxlY23zSX2oia3+QfJDnS8rNHvWJYsqe2grS1d2t+6D1hiFNa4pDrTf5breFJISU1MqnAOe5RLip0MS0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700760176; x=1732296176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pp04mNWSz5Q0DVRUvLse5+S3XRlyxwZa1z+ZJxw1UZE=;
 b=YFVWtqkzH8/7cF7E91zsyfLwcJGo9DsHJsAubqI26GXeVE0tj9SapAxS
 LF8Gi8UdidyYcUbAy/gn86GPELELaG7KkCocbXsl4dnULa0/KVItzUV20
 RViAJiGD+F7t/vfUK9ULyLnGvk5QZioW2bO9TD+xuIdUza4Rwqjlt39jq
 mK/Pxl8IN3VoDF46xm3jLw3BAkfpjgTBAIab6NI38h8CfMenJAjmBm6Fo
 k49vOIHUCslJFlmsViBT9EYfsq5Oy0ZfdzRlx1pFru3frYlArQv3eX7k4
 lYJxbctf+FNYwZ36OuHbxHviavoAOLBJXiEYpM1xt+VN65OvhQkPlu/GI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YFVWtqkz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X
 using resource tracking
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Keller, Jacob E
> Sent: Thursday, June 15, 2023 5:58 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X
> using resource tracking
> 
> 
> 
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Sent: Thursday, June 15, 2023 5:39 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X using resource
> > tracking
> >
> > Track MSI-X for VFs using bitmap, by setting and clearing bitmap
> > during allocation and freeing.
> >
> > Try to linearize irqs usage for VFs, by freeing them and allocating
> > once again. Do it only for VFs that aren't currently running.
> >
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_sriov.c | 170
> > ++++++++++++++++++---
> >  1 file changed, 151 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > index e20ef1924fae..78a41163755b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
