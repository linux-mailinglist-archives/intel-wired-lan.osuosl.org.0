Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A7D84A12A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 18:44:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9C4E4056D;
	Mon,  5 Feb 2024 17:44:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9C4E4056D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707155092;
	bh=M8/7jlz94BwuzQisdGNTBAzDr35Jg/xxKj58ghe+ZIo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hrQNB1XZFFUYbdOggLz1FWFGaaLg3pZZe1qj+o8eBGqFXCljfQzWo75lIB7qfxWcO
	 3GRwD6yPETUhrfJfXBgVCKsMCdJjsnG96ZCVgFg/CpXDqlnvwpKlLnMq4I41tduJmC
	 0ajPt8e+tzYsMbALZIsGdW9tt/YhnPS0jlnwpNFAel08JkKHD8ZB2KPAHfkft4BFq5
	 O/nAtg/55ZAFgBvHsKLtqkY6UNvLc3hakhlvS6j/ggWMJoMMDIhDncKmvVGrdhuuoi
	 7lkoSUsfitYxgsQuB5L9ulpoL3tgySesIyOVVRU+G/PLdWGp9F7vE7AOZYx1yAKrUD
	 mGaJOZZogpnBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hT0Hui_-k7oJ; Mon,  5 Feb 2024 17:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 704C140135;
	Mon,  5 Feb 2024 17:44:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 704C140135
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A50D1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E00FB4091B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E00FB4091B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KkoYI87dz4do for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 17:44:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3DAC4091A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:44:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3DAC4091A
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="482843"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="482843"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 09:44:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="38204557"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 09:44:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:44:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:44:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 09:44:41 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 09:44:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYH8XW9b+MDZS+ewKWAKVmYcwE08GS10c0zVnvhLfmLBLljNywZkrqI75SWbUGnZYj4pHIODgmZUNMuXN4bHKQVFvo4Ds/sPst9OGsEaLaslSohVwu9uGecttRxdu8Xh0QZL3wA6aiWjil96KvemukCrvHShQb/Yx8CDSf8xnAW17JZnSJ/1X3OO18WhoDL5l7Wt65VuNAd9Wk3sn4/x+RLITZONpnvLg8V0+W6XKtc70gPM6nLUckBfMVtFr+Z+IxDtobQHqgi2qnX/dtIYTiOw1/1ZgpX/RVB/kh+ofOpbELW6IWllcH0zdh5BIJVlN4Qi1eR1b5nIWVNCyoO/bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8/7jlz94BwuzQisdGNTBAzDr35Jg/xxKj58ghe+ZIo=;
 b=NpIQXqFHyKAVCvuo/BwJT4mgiw1bcqhDAEI+E88+PTP71zw4JBJZ7FKoiyJIJJjMyQjkZ5tKOl3Gu2beglPCqUODgPrdFeQ66TNZTlQiXqfqWOp18pmgQPBOUNvISKf11l0t3AIeyMM+niUuwYo7NQrvdeipy+I30kMPkXqFszoqfMZbLX0V5lcESgBvR3GhTXCTLiriNW/N2VRU6oG2qdrBtTP4CTho8PcgHJwkCEuDLwAC3iUHy0AQlt43qpH88/6lsPhtOhbWcjsSCRmu3z8cD2QuZUGEKtVV2VPnGv2SSNDqCik27PJJgEtk0qalaB2zOEWdWIlGaDPmnfRL/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6821.namprd11.prod.outlook.com (2603:10b6:806:29d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 17:44:39 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7249.035; Mon, 5 Feb 2024
 17:44:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] ixgbe: Convert ret val
 type from s32 to int
Thread-Index: AQHaVF+r6vL0o95p0UCheuR4x5ybaLD8DGTQ
Date: Mon, 5 Feb 2024 17:44:38 +0000
Message-ID: <CYYPR11MB8429DCE5B51372E9914F4326BD472@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240131110419.29161-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20240131110419.29161-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6821:EE_
x-ms-office365-filtering-correlation-id: 1aec648e-950d-47c4-5ecb-08dc26722058
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RgZg78NiFGUL/RyYXqa7VPk3Uis1sQQxgDoLM75+h4Kkt34jeu/t3euny5wrcWALNYQ+Zhci914F8HshKVvvpdVJg5Z47bba+e1mn1g6H5CIYT1EVNeIIUNt+N0+JfdtBdfv90/AnX/ySbaZLeoDYerZsIT38jr6WDr4jl7VdFcP88ze9YCHCsB/vXj61X5dG8Vz5Nuqqdl4/P+KGrykSELo3rR8VPA556dlrViD1vKw6319suAWdanaAbBoXdeSC1xCtTW34l5Cfeq52tAm0m5T5V9AnhOtJAjPJ20mZToTMMJu1GGJGfwiV6LWq6rysxTsXheBUkRtoLgUg35st9k2/IDR+J2taR4HUR5eqJcz0MUSGvyEFc/YLtUsM/vH4wfbrnOmaxzxIb2vl7fwZbpZLWz9GoMFSDiU2IQYS9jkJ7B69LkR533kiCvU7Aov/oLKbi8px5/OOa2c3JRRyhgE4YRef0aCaVF6T4MYa7xlkPZaUNOrTcSQtQ7Zqb+7IsYfFB1T7jJtjhWbqUa5JrExEH139iFc6RY3JvyA+xJkOJmTWf3EfylhjAJ23WLSNyvsS56uiGKiQT3B6Kt6Kawl4lSp42NUfkjANrf4RF47+iJGtjPd6VdSj970IUla
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(376002)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(83380400001)(107886003)(82960400001)(26005)(8936002)(38100700002)(76116006)(8676002)(4326008)(66946007)(122000001)(54906003)(66476007)(110136005)(2906002)(7696005)(66446008)(64756008)(5660300002)(316002)(6506007)(66556008)(52536014)(71200400001)(9686003)(53546011)(86362001)(38070700009)(478600001)(41300700001)(33656002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tsmZ8StuvC0Xc3B/M/GF/LI1fhsgIw8m71ZWL6UVOEhrZAUDUMw+rbskpevC?=
 =?us-ascii?Q?7I9sQH/VQJ7RW4Ydq1JzQ3kd4FO6VbV3JZzXDtnvx6pWer6XCqsXfL0RDZJa?=
 =?us-ascii?Q?7F9PSziSHp6KsUKwwTDr0OhCrOMQ9E6a76uRVXonbinXo8BN36ig/83CUiS2?=
 =?us-ascii?Q?r7ZrcirZUFLdePgr8Nr+g7PT1VYoyIKA2z/kzlzCvjETGwR5B1ZSeNYaXn97?=
 =?us-ascii?Q?OrXJQ/Tgjk3+o+Tjk8zYuZCD+gt6LKCVGImr7VPbHIMoGgTS2eNhXxoRHj0y?=
 =?us-ascii?Q?OwCSkWNDaBx4VKVlU7XR23V6c2B+ONIAzCXXh/g4+Cu8SLPFaLYeV7FAUIqr?=
 =?us-ascii?Q?qGwTfp3loUcZn0FtvGYo2cIHmSicc3O0h9VqirEjBbuAGjLK5wWUNk3XeKa0?=
 =?us-ascii?Q?/d2Bc4W0b8ppknStl8KtStEGKFVP9Pqr4/LCudLudqjqvJPBp1/5TyvBNW2O?=
 =?us-ascii?Q?ueKy8tUbvRVE6DY+xStOD6iNvmnVFKnfW1Nfr6ZAmvXxpT31SC32mxPfPdds?=
 =?us-ascii?Q?mpZ5lJxBeHjQLzOAQob4GzpNyd9f4o57fW7l0vTq6IRlb8ZcYy1IaPoy/N4+?=
 =?us-ascii?Q?gt9A51Vm19aL63yX33qyBlcZOqSzSgC0/5JFu/Y1lQz3dMsCUxuIvuW7EjQ0?=
 =?us-ascii?Q?bA9A8fLJPc0hEMlw8V7/tH482bRsDs9uHDw8xjurBjoFSVlIqT1wRIiin2MP?=
 =?us-ascii?Q?oHEnojIc9wUpOAvrcY7BQIlUsIwCMtcOp7srhZePR6HpIYhF+8DCrSNbNkAH?=
 =?us-ascii?Q?bvXex4yEleF04OR0pRn5jyEYUJFih9yRFZB3fQquP8A67d2Lc43XBQ9AcyXd?=
 =?us-ascii?Q?DL72GyosuIiOm+55gmlcsuh/lE72GCMAHAQYFZ68U/Dmbkhh0mVgH82Oxv1k?=
 =?us-ascii?Q?h+SZ8+Nk/ysBMeHMsaJYsSTVT9veLRp66J+3W5zsh+i20FvQeAzDV3APHEil?=
 =?us-ascii?Q?cjroZGiL/VmrNH+XDAPIH2wqH2QByUWkNmA5f5mJed1cNQWlz/UEjV45YUzQ?=
 =?us-ascii?Q?ocNYwWyz2jAZSBysivMZp2TA0EsCeRxZROZBH+CrEkZxtMif91KuFG5kPseO?=
 =?us-ascii?Q?rqtPWcmgermwbFakphm6xDA5PECgQYgEYvctgAaAuQI65C6z09qxlV5qDxOj?=
 =?us-ascii?Q?ryypnCxio/bS8LXtTGeI84oNfx5hc9uLZtpuHodK5CmIlrM7bKRfdR+kuUNV?=
 =?us-ascii?Q?lGuoTHvFswfH2C+LLz0slnnxADHaZhjy24ZSsMeQIlVCDdSMFKKOwOFGNUV7?=
 =?us-ascii?Q?gp0gexUt+4xUTwZxzRQcG+FoTCVTNDvR/lss3CwiKotCNQikw5IQm9rjZQiU?=
 =?us-ascii?Q?xP301XFjj+g01RMMVEefzcbKndFwYWcGOYmmxNo2cFVCGc37lBkkQRQCJKQF?=
 =?us-ascii?Q?aVOr09gFiJr6W+lyKmzSkU4h6doW4c3OflhMwfUbTAXK7dBsME4wQbpaFwde?=
 =?us-ascii?Q?Z4WbSV1sNctaGodxKhNUSf022xFkBtkdgyUsV7Iq/cwjW52b+INZh76f0exL?=
 =?us-ascii?Q?6UAXmIsXt/ZGcyZhJ8E0wvpkJPR2TYi6iYE0NAmkdPS6kJEa6nxPs/e5Exem?=
 =?us-ascii?Q?f4RP3g+T2GsZeX3RuwQ19EawHwmymI70CoUYEUwejK6dyeAvNK+7d0W8uGuO?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aec648e-950d-47c4-5ecb-08dc26722058
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 17:44:39.0429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rMoowjQwVs6ep2fZtPtPROxDbMRUatLKG2r2LqCcVKc2TkxAE4S6s2vqLVakOll5ZsDXVoLH82gGXAVw6GLYjve42YZfS0bxC2BoHjajT2pl2E2Usex2iePfMFSQc9Cf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6821
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707155085; x=1738691085;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RXkET1pYEF4osuthBR5oOsv2GuASm8P3JhU28YRL08s=;
 b=P3UQ5gKr4XlhlLTmcYRbPsiu/nA+lRWGguf3+0NAwq6rqjyolHMl8x1U
 wiy7qoZzj5B4zcBHTNM9eE09ipLGPygRuh+MXlDcLpL4yXAHYguS0cEhc
 gpxN7Xf4FlX6wBbhcNdCbNdqsdviALE+Ja29fz1+gEpimao0iu21dgyls
 8AQubvvqSVzVY+YMBwsNzImFRQ9O8YD2UJM/h4HoSgbM0ryYq3PWw+ala
 /PkGYgouVlq/QyY9AXV1wcS1fuxbYCV5eaP3hynUVbdvVKhKVVJVHZPK8
 j59j01fZR/W1N4IPl2OAI3cv5FOU5/D/lwWAJqvKJeNB/zs3Jm/B9MTXz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P3UQ5gKr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ixgbe: Convert ret val
 type from s32 to int
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: Wednesday, January 31, 2024 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; N=
guyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.o=
rg>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5] ixgbe: Convert ret val typ=
e from s32 to int
>
> Currently big amount of the functions returning standard error codes
> are of type s32. Convert them to regular ints as typdefs here are not
> necessary to return standard error codes.
>
> Fix incorrect args alignment in touched functions.
>
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  16 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  64 ++---
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    | 124 ++++----
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 226 +++++++--------
>  .../net/ethernet/intel/ixgbe/ixgbe_common.h   | 112 ++++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c  |  12 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h  |  10 +-
>  .../ethernet/intel/ixgbe/ixgbe_dcb_82598.c    |  26 +-
>  .../ethernet/intel/ixgbe/ixgbe_dcb_82598.h    |  30 +-
>  .../ethernet/intel/ixgbe/ixgbe_dcb_82599.c    |  12 +-
>  .../ethernet/intel/ixgbe/ixgbe_dcb_82599.h    |  35 +--
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  10 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  46 +--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  10 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 180 ++++++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  52 ++--
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   8 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 186 ++++++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  62 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |  18 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 270 +++++++++---------
>  22 files changed, 744 insertions(+), 769 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

