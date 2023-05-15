Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CED8702760
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 10:39:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0FF41B77;
	Mon, 15 May 2023 08:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD0FF41B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684139975;
	bh=H0iQCWSo85fTNvyHEKP7GeclUnvbj7A9Be6xoI2EGEc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jmS5AHxoJIPBa86ZoAQh66FJOZbGdqzOriUntwidiFU5/rO6pf6A26PoUGKLTEjPK
	 sCWhahRhNtp+bO6VgZ6MmDXb8xKj+1po9t8iMI7yAot8ucgg7Lvskj3GnI4XCvqxGZ
	 0sTAAGoKMaXkrjIit6J33G06jLIQrPjNeqleLH4N2sM1lwQiLp4AP1X9gvIeTrT7yT
	 /MXQ1qZxs7ucmKhx57rZ4rfYF9D8sM3WenM/m3SvUetb4bVdekdQJbo1IuYa3Z3pvS
	 aJtLwVr+LYghmyHD8Fd7+H6Yh/AilDWHnRjJsElLrUswlHb8DUCKTwIaMJauaYkTVu
	 6HJ3hkbwmEtMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_GV8uYJGs4l; Mon, 15 May 2023 08:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 201C941A42;
	Mon, 15 May 2023 08:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 201C941A42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4FB51BF592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 08:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88A2C60AAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 08:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88A2C60AAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEx1JDTpUN5y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 08:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B192B60750
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B192B60750
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 08:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354303934"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="354303934"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 01:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="651332616"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="651332616"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2023 01:39:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 01:39:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 01:39:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 01:39:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 01:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RW4IOVPf5+Vxb2/MwzVYGMd6On8MCqEeyaHgM4bSpKMZojQ5HsT0qAMHIC65dqPQ/myVLU1RHzBXld4WLjsfFZ6y96OjCvHr+/GUWAKP1TjmZrA9LJ4ZNtmaeG2Yi2SzVyKXW1j6W5vfWgxM1uxG1pmrpMRi4Fuy9H3uNA/jksNiOqcu5oMHnT4q+jGDTlS1Q1bI8dkOJhgEUzuTF4mDIHiwZmOXTK9jNjaHJPfQ3hla5YVqH99P6pPI+pERKyiiQ9zXEDJmJWAGA1e5qQuxFECqu1dkkQUMD46o438Q1BlwPWS8/BnwPrIKdXkTIkCVeS1ft4jslXLjcnWzpdgd+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nXgFma1vdMnE273BQGOd2vA8U4e6986FMKMzXvIfeRY=;
 b=DecPilfyPbbafvab7gFo2RbzejIvmiqf7hv081GUS5JHpITdOTfzQgOKnQIk0JybWY34uZTNtH3dqHfIC0XgX28+qMvjh98ChvKcvKHEfCuxo/nUZZ/gWpipBREuAFkNJ8ORUTSqjNiLqgvRlxAP92FvXUjlzKGBxhrR7fJNh1L6iC65fRTBOeXjdfURhkPTdV0PfhtzxL5sddnQmNTH3lPZLcqj+L3nEVtww2uyO2aK57GxsMWuOkywBOBWHYohh3CT3jUeIt9yGbNJYoVasbw41KWrHuoL3Py6JJFc7NIm214O5Rjv8ZXnhhaEd4p9fR7hcV53AvcE/FxsbseziA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB6238.namprd11.prod.outlook.com (2603:10b6:8:a8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 08:39:20 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Mon, 15 May 2023
 08:39:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Deb, Shekhar" <shekhar.deb@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.40.0
Thread-Index: AQHZgcBi5ru4wlywEUW4abQYZgDkj69bDWUA
Date: Mon, 15 May 2023 08:39:20 +0000
Message-ID: <BL0PR11MB3122052AAF74D212DF5F74CCBD789@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230508060632.636136-1-shekhar.deb@intel.com>
In-Reply-To: <20230508060632.636136-1-shekhar.deb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB6238:EE_
x-ms-office365-filtering-correlation-id: bff4510a-ca98-4880-7072-08db551fe095
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y7iXF39dmeIYHAeES7Cy2I43CORYfQoK2ANyTfTUTeiBjNgsc+C3fvcTXI/f4cxjzZqJWx3TGlAjhZZBNokAOOPkW23JTKUkNqr8nuxcvF5LxtZAlQRIP1DwxiXrUlofGarLDtSr7frPqVdwXtVpBSmFyR1CXUyKqxSY+vNob3djowpxpuy2jCG7HGMnRPv52jhnc4eMgLkv9Kru8SWAwwA2R0RdOGyd00lNCpOTiHsiMNQBYwUkxMBdKS3e1omlylWFEyHcmbUv1WJVe1q4vgibU8jCCrir3aketJXIvqrxXTyAjuvkGepmwuKSZTv7a5v/sZEDzc/rKdRO1JIdAJOkoBuKFE/gZGB1LyXGqZsQJfPaKhW2NClHBUZ//UY0Pz/EMQnsudcdabXXx44c198IEVvE1n7MXxINz0g6mIecGE3ZbcCLDbFjANenMriQp2RK46YbKW/sNytzcmaoo/umLut8A4iFMLStl52zLO9g4oxaQHTTPXCp6aWg+YXG5tQgdpnDEFUEt2dDzrCzKzTRlqg/Z7MaQEtT9bfBZyvR3HVvD2eFiKa7VoSbMsI3G3pakkFbN8OnfcLoWOfq8p++hI2M8wTDC4HllPIVrEb5augWPZU7O4JN/h1Om1OY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(366004)(376002)(396003)(451199021)(33656002)(86362001)(110136005)(316002)(66556008)(66446008)(64756008)(66946007)(66476007)(4326008)(76116006)(478600001)(7696005)(55016003)(8936002)(8676002)(15650500001)(5660300002)(52536014)(2906002)(38070700005)(38100700002)(82960400001)(122000001)(41300700001)(26005)(107886003)(186003)(53546011)(9686003)(6506007)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KGjpun9cOgSrPVmYxXMZCxTPvTkOc3QcmahZ0XyeuzQlou76Ja7E/pnNoUGf?=
 =?us-ascii?Q?ipULWsUWLj/pq8XO5uC0H8wlrDW1LXOYreyZ0qQj+4y4ksbcPIbfv0UDMJPB?=
 =?us-ascii?Q?euPK5TQDyhIfLfDb4WfwxSsl1RyiHjirFTAIIJOXwx4H6d1+mDVhQ+4uKhsN?=
 =?us-ascii?Q?8iylt7KxID2bf3omDK+LgZMPStyofo8l/oM+S5AAV6NcAamSwPQnjuH+QM5S?=
 =?us-ascii?Q?Hn5EPrMIlhmRt/kI3kyv0fIejEmNBH2ZLgmIge6FrgY0ahmc/q9sSz1STI2v?=
 =?us-ascii?Q?PT2NldwVU+dsZyxzWhA550Fk7BVv7Jwp3GDV5lUFLLLJLDw1aZrpJugSgVQ+?=
 =?us-ascii?Q?v+SLwt1Lja+81/rv6au2QnGSTV9KEUYXI1AY5f3BJlS4lpt1eJw1/afcbjxj?=
 =?us-ascii?Q?VFEh1aM4bR+WtEHblcoUKV1PhBjOj6KPFEV4dO0zIbyeOxmINS1EJkQWCEW5?=
 =?us-ascii?Q?GG33Ed2nwcB7PstlS4lEZwy2IlakRAyYoIxulzg2wvElbgaVC0qDKpKYNYti?=
 =?us-ascii?Q?ep6QqxJ68UE/c1kypOGvbeXqP8SXjOnGAra9IBqCw6E6OCO8S+qom1M5hGt1?=
 =?us-ascii?Q?JmHGBegcSA5WFiWGTgRkweOsZSFjAMKczsNR0P9NPwRMKnmXCKA70tbS691C?=
 =?us-ascii?Q?ik0isCPUDH1nBggoF8AqzY1FqVoJSstqptU17VZhMWfLibtJQKuI9D/uou9A?=
 =?us-ascii?Q?T7N/yqznNZc3znbKg3dppfL/vF3tzPmh7tYDOXK2uotjRif4mm4oJ6ieFDNR?=
 =?us-ascii?Q?3/ngDB3VNNPaRpNQV23EgQ6/EMeIoyvv4ooTWWj4ruZ8fsUqwOXeLHagZrfD?=
 =?us-ascii?Q?dm/UzVO1dQ2cXmtobry3deH7CB33BJKctjpMY//3mnUZH6tF8ijk+0dxl0I7?=
 =?us-ascii?Q?AA+avdh1A5ZOgtzEEEbXXLV7NaPqnYn5yXozW6BmtYjEfRS9yQsRnDwp0Yyn?=
 =?us-ascii?Q?63zi9QlZjD2e+PdQhRHbDy14xiccNRsozlB47TI3VG2Ult6niD8J0ZHbwy14?=
 =?us-ascii?Q?mecVLTFvPcGgtkBfhjUkicNKrRqs9GyUwx2ifTzg2u3mIg7LEqNFqV3D9SVt?=
 =?us-ascii?Q?ThHlevWUmyTmffQLXSp3ne9liUSIq/CPCpH5gPGWnHS7O+unyGXgK/T23eFk?=
 =?us-ascii?Q?nm+j6NbT55uTHpY32tIWGEz/G1z9nSFSENoEt7mDdTHSakOvi/ALhtqFFEKn?=
 =?us-ascii?Q?bNvzlwOkQyBg1vWSKwS6ptDbOe9cIHO0EXr3tNp6iTrCtyS7jdyWD/coJ82y?=
 =?us-ascii?Q?3NkAnCjguDOkBNjPbohZ886rM47fZp4A+aiG/hl2uv/aV2jkzTof1xuX8aGW?=
 =?us-ascii?Q?pj1fgThu0LqsEpyXtKr/KH2KH+PzTYsMw0v8MySDfLumsNiNnwdK5KGgpnef?=
 =?us-ascii?Q?M8FIowBkafe/2dBZ6eD1WYNM3H+mbGiiT+HmcTpVbmjWPRsn59GZS5ux7f7D?=
 =?us-ascii?Q?BDKkRsPBG3/OrjSHXO7fjjGEgt7cQHR2RrKh6gc4jt+IR53++lsPVJfr6bzJ?=
 =?us-ascii?Q?UTBNtUsQ3PJJQoLfZ18bCUqOZK/mP19EN3s23V72vLbql/ivS+TgyMKcv+O2?=
 =?us-ascii?Q?wNkeDaj9K07GYPkojCk4fvOITAB51zxtTCzCbL2jg/xcvUrko2zuQcv6ryRf?=
 =?us-ascii?Q?iw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bff4510a-ca98-4880-7072-08db551fe095
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 08:39:20.2692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2b1Gx85uvTD0251s498/XZqIM55BBJkehPxuFMOeXR/8uJ1ShgfXN54NvCXSBOr5Dtc8AIR06bFI6lQcrYJTCvtrP+3uQvPG9sEEFl86WgWrtI/SDDu4qnRQTEXX+4Hx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6238
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684139967; x=1715675967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=exvCc+LLFcYA5Mm+JVJ2T9XBhhUpEgLs3YDyIL8QdQU=;
 b=WbEvbVKhnVMh2JkPkZfTr1NFwaW23yShB58wrHvW8TlCLrS0xK+aKRHW
 VYxHHrOCLh1LixoeyNZ9CDtErWuOgQWt+4eMv3tVEYO989ojnsZNPKPHY
 hSFkTJL8IJqtMnZvr1tEEVWaiLwCMczIxgRsxjUgzlzzMmqjHH6pEZjj8
 ivSviel14XMZJZfdBWE+Y+DruYY1qsSv12yApr4rSvFWEeS2ELN/FNr/4
 rQ/8En9xbgl1kYhU0KKWhZAtDV+N7iSPOYU6B6Svxg28tt8nO7CnfXgAA
 Trq5bY280Nc4YDgeJyZ4tds/BFdQIfZwTOQcYLwQRwfShMoGuXhoyDmis
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WbEvbVKh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.40.0
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
Cc: "Deb, Shekhar" <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Shekhar Deb
> Sent: Monday, May 8, 2023 11:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP comms package to 1.3.40.0
>
> Update ice DDP comms package file to the latest version: 1.3.40.0
>
> Highlight of changes since 1.3.31.0:
>
> - Add support for Security Group Tag(SGT) header
> - Provide Separate IP Fragment Packet Type Groups for Receive Side Scaling(RSS)
> - Add support to allow Receive Side Scaling(RSS) and Flow Director(FD) on Multicast packets
> - Add support for parsing SGT-PPPoE packets
> - Add support for PPPoE version 2
>
> Signed-off-by: Shekhar Deb <shekhar.deb@intel.com>
> ---
> WHENCE                                        |   2 +-
> ...ms-1.3.31.0.pkg => ice_comms-1.3.40.0.pkg} | Bin 717176 -> 725428 bytes
> 2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-comms/{ice_comms-1.3.31.0.pkg => ice_comms-1.3.40.0.pkg} (74%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
