Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A3484E600
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 18:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5143F6FC45;
	Thu,  8 Feb 2024 17:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QX6H505WCxog; Thu,  8 Feb 2024 17:04:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 732B46FC47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707411874;
	bh=DYmQoGEjfHGhzkBWqS15CBSrirSAeepvUO8j+zaPwb4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8apVeWJ39vdWHfi6mO1B4kOiYNUQ3f7x/sl3+/ZozS60yQ+XIMy6LJuPaFOgHRwUe
	 r4V8Xc/mpYcf2hwG62gLf11XKHYP1oGbQ+GDqBK82LiYIUDZIddVo2cZDwMrr5/e37
	 kSNOe+Lyow4PpKt8G0zuHkxl7x8lVyl0fkFtakFQsC6zkBrp0/RoiWMiRUGkxpGSL6
	 p9qaCFPmq1n0onh63Uhq/bbXUO/7YqvJl8DZYp0SJgVpbhRPMj2vUqjUg5mldyvKF/
	 je4KMpBL1rl1n9SHfxlWdEQt7QprElVCjhlClt/XV0TDS813KHVVGK3hI7ZtCXvfP+
	 KPt6oEMNmTcdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 732B46FC47;
	Thu,  8 Feb 2024 17:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CC341BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45CA86FC3A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vPvG5Oigr3Qf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 17:04:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 401A86FC1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 401A86FC1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 401A86FC1E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:04:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1560611"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1560611"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 09:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="934188028"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="934188028"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 09:03:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 09:03:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 09:03:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 09:03:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 09:03:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LwxV36zKBfHtnZwIzPdWObaKoVCYobqD0XCBcb/b0ziruAELVGucE2rKOov9ULSstc1ynAKxESoWVb+qLUib/hVZG2FCW0DQOVviWOYx9Vrt2CAhMWF3H8GY80KZI2I9NvE8pyqZR2dBTzhtKRxGTNlsqiygBh8AO0YNB7s3hQHWolPKtOEfJctq8yInmaGeQV2eCk/HLgpG2hQP+7J2KMZ7jITubX09N4e2kGcjLblvBtdoC2+L1HB3cQsWGvhNJg37dD5vJa9oTCR0bwm0vBLmXwM1XODg0FaV5+iH8EcQU0D9oGJpdeDIbgIoNKKGtSxMysKJKoR6KP5d5X2/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYmQoGEjfHGhzkBWqS15CBSrirSAeepvUO8j+zaPwb4=;
 b=kT0FUxNE/86mL9+nmathlp6hbtr6okwdP/xm6HpOI2C8zludJg2XxjwhsEc0M+Fn1oPIkwzXDWisLAzJUix1Yp4qte+PhW5hZcUyKY+6BR2ayW+peYR51CGYM4DOzk9HvxfV5kU2UIS0Dg+us6XwTVOwJzObItX7fG92AHpAEKkd8BblLEYSo+P2SNF92/KYSjBtDvg377UN83iASSjfd5zRtUMflvXlKvqrnLu4iC0cxVKpv9r5IXVUqNB9KfDPQMRGWKzEEJcghzM5qaBSkGdCdr5qWNBB9fod+PmU/bCWajeDGKmKsTWY+lmHEZffNq6xBK8pdyzaf1PPuK+BEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW3PR11MB4683.namprd11.prod.outlook.com (2603:10b6:303:5c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Thu, 8 Feb
 2024 17:03:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7249.038; Thu, 8 Feb 2024
 17:03:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ice: Remove and readd
 netdev during devlink reload
Thread-Index: AQHaWDUrR1JBePm1cU+MgzOwA/V3KbEAsI9Q
Date: Thu, 8 Feb 2024 17:03:53 +0000
Message-ID: <CYYPR11MB84290FB36866D0AB7C7C2A6FBD442@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
 <20240205130357.106665-2-wojciech.drewek@intel.com>
In-Reply-To: <20240205130357.106665-2-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW3PR11MB4683:EE_
x-ms-office365-filtering-correlation-id: a7ebe24c-2072-4fd5-dfbc-08dc28c7edb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1hLtyjTXfTqowzLGHmQRCZUr+qXg4UYZMSpTD1yAPnK46MY1OX6EsRZKKy5v8dVKLSkJF4aujubVzFDDIG+akHZnsMWBIqW4GnbTHkMkj/F212yD02Zb2eUyE6NNRW2dgQaUsPTOtuoDJorrdjXlCgL9hlPpxNwvgNHoj/9dd2NkWIzO5iTUTm06sA1o3lSLRfmfdQ2dHXbuYFi7G5mkHQ5yjIFDy8xfeRQ7KAJCW2OPPr+ySQ/dmNBtwueZ9DbvlXBDE4roFA1ulYvtw/48txS7rAJ8N1uBt/xHhsj4zwcurUF0XzQufxpybKGvSQXvEweSCCCbTuwTwP9p7XDK2+kncJDfrJ+UenrCFagntU59tOASA7DrTdfc4SH4kyxKC8TJ5evpW7Ab0YKOk6GQrA1UDx/gV5uahgP+JRmL/DTfmWIoe0lR4XaRj/ERu+JwWC3UeiUV9jAsF32Gvp+7GnzFSRmW6H1IbEQhAXLEjI2T22tW3rr8Kmsf6CCWZv6n9xx4mSCP8EZ4qiEJWWk9XEDBIPynPkXcOExvnM+1S4+HyxvbRFIsJkC1kXOtnlA0WQb1VAcEFcKxMIjp11gJnWUYbp9YRTbGs7IAdAw+jcG/i9Hb7fKcRWQ4P3jmTCka
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(396003)(366004)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(38070700009)(55016003)(41300700001)(52536014)(66556008)(4326008)(54906003)(66446008)(76116006)(66946007)(110136005)(64756008)(316002)(66476007)(5660300002)(8676002)(8936002)(478600001)(82960400001)(86362001)(33656002)(38100700002)(2906002)(83380400001)(6506007)(7696005)(71200400001)(53546011)(26005)(122000001)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Mj+X1hvU0AIOv6XCCx8d8iBjI5B4HheoPjDpG4o2vfQcm6tDZGsbkXpnSxqr?=
 =?us-ascii?Q?WhR3hmznrHFFZTSiWVBQDxdLzFltjgWkZhhwWNiaESEF8k8XlXvyXhc+W8pm?=
 =?us-ascii?Q?lH1NLnWIwBLqZ+aY39whRJtpxM5SccfTcodG8VZFySL2mJd43BQdBLVTDmtg?=
 =?us-ascii?Q?4faobPkmcc+msiP1sajK/4/+qKhHAHVFvmjszV7XTGKzi4FvxIw/jNgCjaBv?=
 =?us-ascii?Q?aznC90rxs9U53JQ8UhkHVIfCkKRGC6ScxRhMqnLlFHPAZ/rDB6lQgJa0aMXA?=
 =?us-ascii?Q?knV12WBupT16p/gVN8xIH1EKu+0Krm1c7GIN+aNcUBMkyPx0DJvNJDyzsTWV?=
 =?us-ascii?Q?VABIF7G0NjOMyra3L490fpCbWbBc2/0FSFnuQlQmhVlG4iR8S9I0ons7nqZe?=
 =?us-ascii?Q?3CW0ZXP13xR1mat759ZeVd/NpYm/lUix+winn5NqxN0s3v4V49nhufNQHRFk?=
 =?us-ascii?Q?R1Ilz2X31DyoeCs/1Kh/Hh4f+Cc8QAG2yjhUj2x/63trIjEoAvqWAj9DuQd9?=
 =?us-ascii?Q?dnX+V92wt5wtFlyyW9kEbeHx/8G9rseOmvoAsr5f6L3aT0OLXr5Ausr2Rkl6?=
 =?us-ascii?Q?dvXbjPs2t+cr30P2EXobBj0cpJSowXbMQhGC//kD4rU981tEXrrOLKk2k/S4?=
 =?us-ascii?Q?VGyjpkIWOKQb8ujAFQ2xam2qZCakVuBVZue1XPZ5qKtDwJR9mifRcybfZCIA?=
 =?us-ascii?Q?IWi30P9nLuA4iFQ7dHs6LbjEjGjiLIMS8eQm7IlwoCQyqB7FYe/nUSUsRH9e?=
 =?us-ascii?Q?/KyWPagwGSbKn8tKgRfmSHCXX3umHBQPtzmH7a3tnWV2s0lEXD90DOpXPR86?=
 =?us-ascii?Q?blvPv50Bztfz68bjPLDJNow15TRAx298jzgjqma5UwuFziTzQEtoEK5fL0oA?=
 =?us-ascii?Q?jLMd7AdgL15Cj5zasfFThEGxjpqgDAkiOlnqQ5RZEwPvZns64XfrBM4da0eA?=
 =?us-ascii?Q?B/PyNfuNtfbf73KC6nI8e/2YWIBu7y/7gRrmi5XeLDoXjhvXv9k0kSngbYnV?=
 =?us-ascii?Q?xXpzJBHE3gXqWd2KqIaogooLAsJM6WfhLezzp27SkknAcfT9zUUTf/YmrnpU?=
 =?us-ascii?Q?MyCcSJIo9nFURZ5u46WTTMeFBbp3+EHx5CObCNsB9+j4hZ8JGqWgVA6MrLjh?=
 =?us-ascii?Q?9g2ETdths6cvwkGTzG+r3D7Sk8pw57irJ0ZrllYWzWQ1uhadbke8qg6T6jL3?=
 =?us-ascii?Q?uOlK0dTcVJrWjHMyLuV6HnihHXIZMJ25FjmD2C2+7SrFE7A4AYk0xELbxv2c?=
 =?us-ascii?Q?yyOp36g773DyPEmU08NKEjQL2qcLV04mhvqNVtZJ0kC3VhklegPcTuD99ww1?=
 =?us-ascii?Q?9TDFJx8eGhnWxvaDbMONrfM5yQqwifveI+R4d8TcfMhSBeHnF17UlR7h9mxs?=
 =?us-ascii?Q?zEG1mPES4OJHcoPQ6Vqz1IwTGvrSulGRemNrmTzN8XWqt0ABJX2mOXvlZ07+?=
 =?us-ascii?Q?fDI7si1ndEl3MaQBFBQfW0H2sFUlyBKvIGccFyTYpNF6NE7xn5y9GVGyt8/O?=
 =?us-ascii?Q?xFevBT4pjIQ+3PfSf8qj7MWF6ClgGrMb8W1LpymQnrjZHXjh1xejg/Eg2wc7?=
 =?us-ascii?Q?Nais5DSSywNcgPyhDWo7cbH26CIijZzWZBCdwkIfNHcbQJxT7rcSrH9xt1cP?=
 =?us-ascii?Q?DQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ebe24c-2072-4fd5-dfbc-08dc28c7edb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2024 17:03:53.1105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zZqISH/j/fFSk1Wosyq6DiXuYwSaqI3GqzCpXOvNws/Qv1mck8mMrHgDnZenscoOuR53nIBvfrGjB/i1uApcfzLmbphnKrp+ruAlFXViwo+UoXwgLT0Ts4Ra1Vu1uvDo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4683
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707411871; x=1738947871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uq3rReFc33n5N9aXStsDDplz3OcdLB70fG/cAyovBqY=;
 b=jdAKB9yXuJw3D+J2/kfSXhMNVPvPTtw4/tVF4RD4bCx2B4FIGJQ+INhD
 w4THuBzV9OT20pJrN4p3a9W1scuP7g/q4Yup/cI2a77x6z8Xxzku/1jFT
 k6L8hyBVBveA459nXpqPvK9ZL40nMwxfs3Qcn/RPmRZXTNTCDatsZ4SKy
 3y0tcUgTSX6l/eziOUeWKNdUeStrEtsPfgTxJ1qeeMRgR9F0ByTuOtigo
 E+nH17EU3LcZsUMgNskIHJDIoD0JlKwjn4Wht+BhvckGWgvMi6fS/Zh/A
 J9W/Q5Gs3V7bUcDBifrpQ6uHgaVBLgdWSmMJGIYx151WMyN1+xQm4RPjq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jdAKB9yX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ice: Remove and readd
 netdev during devlink reload
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "bcreeley@amd.com" <bcreeley@amd.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Stillwell Jr,
 Paul M" <paul.m.stillwell.jr@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Monday, February 5, 2024 6:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: vadim.fedorenko@linux.dev; bcreeley@amd.com; netdev@vger.kernel.org; =
Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; jiri@resnulli.us
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ice: Remove and readd =
netdev during devlink reload
>
> Recent changes to the devlink reload (commit 9b2348e2d6c9
> ("devlink: warn about existing entities during reload-reinit"))
> force the drivers to destroy devlink ports during reinit.
> Adjust ice driver to this requirement, unregister netdvice, destroy
> devlink port. ice_init_eth() was removed and all the common code
> between probe and reload was moved to ice_load().
>
> During devlink reload we can't take devl_lock (it's already taken)
> and in ice_probe() we have to lock it. Use devl_* variant of the API
> which does not acquire and release devl_lock. Guard ice_load()
> with devl_lock only in case of probe.
>
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: empty init removed in ice_devlink_reinit_up
> v3: refactor locking pattern as Brett suggested
> v4: fix wrong function name in commit message
> v5: move debugfs changes to separate commit
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   2 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 186 ++++++-------------
>  3 files changed, 125 insertions(+), 131 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

