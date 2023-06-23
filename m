Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D518173AE1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 03:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74B5541C55;
	Fri, 23 Jun 2023 01:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B5541C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687482141;
	bh=K8yEHoS6j60yyRJz0rVfB3K2pLesnM+BnmYGwwA3/rw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=98FKvGxK32KYW+XtoUUmPZQGtg+dPBo3/PqaJ0VmzQTjNLhn1nNqo1EhGEHVnVS5D
	 YJsojLidU+OFebyPhBAbAJWrNsLcAO9yypPcqT1qAYSa6Qk1iijsv1PtJZtzgXTifU
	 EPAXf2KYatgp3FhX+k8TeahuAkSg7D3Cp0cnHWxleT0LT9ALIJV7q39ymO5/FZk3ae
	 PhwG++lOtQlDG3FzBeQoxN9HVyYBwtfPjZ/laSAc5NZ71R7Q1DZSqwFBL/g949W0sJ
	 +AuJPkEkru7GOSrUHNNi1MNR8lKu3MIkyjVbFAFm2tDL9fspR/IqxA6IRUBxoPPDXY
	 zKyL0FJ9wCKJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUPvmLjUn99l; Fri, 23 Jun 2023 01:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 927EB41C48;
	Fri, 23 Jun 2023 01:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 927EB41C48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 219261BF424
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 01:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 019B441C55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 01:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 019B441C55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyY5VVPxfNWP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 01:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F98641B9B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F98641B9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 01:02:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="390538734"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; d="scan'208";a="390538734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 18:02:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="828183124"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; d="scan'208";a="828183124"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2023 18:02:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 18:02:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 18:01:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 18:01:57 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 18:01:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDsC8EuTm3/ESDk0nbdYlE9f67pL6eyILWuShrjJXTje3+2/AOmKlQR2rGm4RNfRJa+PJh5TH6ZaeMIuEjWa8M/XlrXO/EpEfkkObo5b6svvDiDEYd7j5MfE05H/zesRRCNpfBdgtkj/PoyRSnNsXdnEGSTejgXvMQZSIL5JXV5EeBv6MEeF9qNcYv0Qb/6NJVpEkJl52bAcWkuhygdx3tKoBQEfhYnkZTgSTZ80HsgGKW5C47lO/E6vTH6JNQnSU9P1XoTT3fYPQf5syBuAvne+GLDyumulJ2Gl6kd7LVDuiyCp8jdnGfajazUnIyI+eoz1LMcHo11xv5SdGXlFJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DrIcRsvB6BxGVdesTt8O/6edBXB5z5+vM04pzMYe/4g=;
 b=lxUhUNoQmxnuk9K5mRQDE5RNEcfN7MJOCsmeQs512TEnwDW4AsjIc+LulenBWdZqu7k+kd9XoEenm7sN/v3o014RZjXRqYfDxN0OuBPW+kN0y1OL7PI3zTccMe8zweTKJvo3krenHp4c1lNrcXYRrmFSH3k1jIz6/3/CVmrvMrO9PNsx7MWxJvKwv51Rb4PBAdnw85IpkT/t0KhCgFA+OQb98ULhs6d1stlmL4IgAerNikrRhl8GqJEipyoWTqPZBoe5D5GRzsrotI7zoVv1heAGZCylSL+m8Qx9O29xHkSvSIb0NCyMFkCImvm9Ztr7vR6LTKfe0PBkuiHShc+g6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CH3PR11MB7673.namprd11.prod.outlook.com (2603:10b6:610:126::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Fri, 23 Jun
 2023 01:01:51 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6521.024; Fri, 23 Jun 2023
 01:01:51 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v8 04/10] dpll: netlink: Add DPLL framework base
 functions
Thread-Index: AQHZmsz8U3VH1egT4ECXATo1u6TwOK+FffUAgBIo+2A=
Date: Fri, 23 Jun 2023 01:01:50 +0000
Message-ID: <DM6PR11MB4657E4172CD2D6E071C5F2CC9B23A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-5-arkadiusz.kubalewski@intel.com>
 <ZIWzHGt/dbD6kcF0@nanopsycho>
In-Reply-To: <ZIWzHGt/dbD6kcF0@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CH3PR11MB7673:EE_
x-ms-office365-filtering-correlation-id: c57acdb6-d9d1-4aee-b991-08db73856d95
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DeXFlYvIYCNI7fBJFGnTN6qRaYBF4JOyqRP5f+j5fz4NpexpmI1oMRSHQg/GJ/eHfj+aXc51Wuhix0qEZIMzYDdx3IDQuEO8q8BbGKJmsrtW9iLKSQ3tUAMftHVZEEoHQnS31BZEOVTX6S8cY7pyzCkN4x5/CncSEp+IeRF/O+rXTKjXN27mLOzo12+sm8YvNj2vxXWlHbQ6XYuilPqYz0CAimh7EheH7uyj8w7KfzHvkDpEnIyPWnJhXUWPkmXjQQhhnqRBMo8M7qtKLOWnP0ASJbDlIG90XTTAwiOkLZRm8SEHmDRxeDsWngiWC2BQgy/gsr9WTXCTlzIpf7jqZAMQoZ3JZflUS9qsKE0t7QTWFvN+W8z2iofcKsgT5L6LPX+bmAcCtwj+nSM/1j8x7hFHVuZQBUisZvUQCAi5kcq0EPqfnscd7771bv8NhaqmDkf9e1qhpB+cPTEoMdnzV3AnrCwLUdjNlo4CLlY4e63VrxGVHS9ISiL8hf6b7EhfEavj7Xh2AGPuqWYTbUC8l4xoLU/HN/BLhN31Fo4BCjZyJGAtG2VIF7j/a4xzNPs+4Mfpd6WE4ewj3D/asG1bKGOmTFRo9c3iWobSGLRwB1txAAwZiC0xpXALKfVUdhMl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(346002)(136003)(451199021)(2906002)(30864003)(55016003)(7696005)(38100700002)(9686003)(82960400001)(83380400001)(122000001)(26005)(186003)(71200400001)(54906003)(38070700005)(86362001)(41300700001)(478600001)(316002)(76116006)(66476007)(66946007)(66556008)(66446008)(64756008)(6916009)(4326008)(33656002)(6506007)(52536014)(5660300002)(7406005)(7416002)(8676002)(8936002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bqZUCquRevQv7OHz/w63fHgtMh4gt3wcM7g2ZzJzwXFWpWdUDs5tHWIt/Q5s?=
 =?us-ascii?Q?NPGaA7fpPOQjqxKu+TzsUPTeRknqxYv0N+UuD27vOQGsfAMzTVOcXJCRNIDe?=
 =?us-ascii?Q?wrpdbAcrMIrxRkFc1JghG58LYglfl+sDI3y9/R9MkA5b2W/+5qbQ75MkoPZ/?=
 =?us-ascii?Q?BpWdWOMLOrOZgkDB/WO5nGrixFkT7v6EJJdPzFWBnY09UNPFn88ml6TkoxP5?=
 =?us-ascii?Q?ooqGmnAPHGercsuhffxcJ9uAJjIOgoe5QbUUomf+Cxc/1JStCC539XIJzEYB?=
 =?us-ascii?Q?JFPBBfJ4jGNM3dUdROItLf2y+rYhGSX9nxq3fKZ2MgOlcsT2I9qMdPQqsSmi?=
 =?us-ascii?Q?kD+WYqMli7fZ5KJLEOuTPq9CjZKVM5WfZsXa0JH015tkKhmLxvvANsBHKd7j?=
 =?us-ascii?Q?C8T50jjZ+esN6zs8D00Rhug9gMaYD/F6wX70fqJRhtsOpqSMl1e7vj4s6JZx?=
 =?us-ascii?Q?91yd2D213G4Q7LkRXkeXzJN6AheQrCwqogNj+4kg0C5rhIfn8DqhXPgww88h?=
 =?us-ascii?Q?zr0kVNmKxptdmERPQUR5OuOfRZPxlFrj/EMOZ3DrSip2foVjbUNT8E+O1A7V?=
 =?us-ascii?Q?4W5P8hk3+5Z84I33zA3IJq+msGOc/PycgeOosNs0BgdwULXoahfVvV7Zn5Uu?=
 =?us-ascii?Q?kdnGIdwr4HVk5+/sFnr8yuOO/taTSOHTdoV+BulUvUdSY2JTiH6eP17qs9D8?=
 =?us-ascii?Q?SwFXty/DaV3RSx17guqQxqbBIUTj+Cb3s9ORiON0wg8/ocN/+EYZOcxEBGqT?=
 =?us-ascii?Q?jN+7HyYOIFaiMusihdij4yV8AsaRvIkUvFLQEp1FaQHJlj00/NEHpodElxOM?=
 =?us-ascii?Q?nKBRpCOJlSnAuUQgAwy3jXcJ8whVtFpz+jv4Mt3qwV89PM346LNJlZJLNVNZ?=
 =?us-ascii?Q?iiHnbbNvwCk01H97XTdxmb98fReIwhr/h4/hnlULjp4fdBdaQKXhBzhnCZuP?=
 =?us-ascii?Q?/XDZys4AfBNxVTtkrHxfgJzwEBmqU51o6CDPk9LeXAVHthdZgAkEjnzKIeXw?=
 =?us-ascii?Q?uK6KGKJrraivLWbt5zwT4N6IAhGLezLYoc48Mao+VClfJQmLJDIWbNdQbXYi?=
 =?us-ascii?Q?5FbOanAKZtZbVPucCHOcFafgbnXtBInUVovVa7+9v0ZhPs9HRrony3rXhd2c?=
 =?us-ascii?Q?9UJTapi6hBwrCNir6ksJadsKk1n0P9vWO6Uur53+bYZeE9gYdOCKI23Iap3s?=
 =?us-ascii?Q?lOUughUNTwkaIwP+m6jXCVzQqQ3uarnCBLKUhAaA9SrWgq0XAxop88XBjsYr?=
 =?us-ascii?Q?rcqA86nr324bJEM7/OgqPxLPdN0t+KvV9ObdWKglu2+MbqPUK3+C21RHhkT4?=
 =?us-ascii?Q?saBV7WZHCyQavejtF4OjCkSJyhdy0B+7AgXnskR9+pe9FfKl2bcXXES/o32q?=
 =?us-ascii?Q?gZ9n2RCmhsEITTqGVyM/0m+FkG4sHdKJLkMtKyD74EDihVO/rk+pMBL/oeJH?=
 =?us-ascii?Q?7rYWbEYD/eSdDFve5gY0g9Ndbx1qJzMa5M1s2MDy45jhE9EjGCXwPyEliqoN?=
 =?us-ascii?Q?7WCbdWh5nMTZYdMyCRY+9J8MWxyY5jAnCokYDeHndSkgLuR9QU4yKYVvZ2W2?=
 =?us-ascii?Q?Ais+wPL90ROb1MuaHyqktrueAhASPyxscXogtiUo/tS7nXMlSI162BTH0VDR?=
 =?us-ascii?Q?Gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57acdb6-d9d1-4aee-b991-08db73856d95
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 01:01:50.8876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ER04+eyzAOl2pL/b9scbPYK0z20i63gEEcsJOF5FtIHR7kpbTa4CNwg4Z1KaWNfBtcEyskc5cnh6TT+jHcIhJ2CwtJ45z+WtXqDSF+c/T4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7673
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687482127; x=1719018127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RqmBld507T5IRU9dpxoXlIDXCjhQUQRpCCbCCx3eNAk=;
 b=hnf4nTUei5WZApnFmKg4nPI16DSNJJEdjvluxyFYnWt49E7TwTeR4r3z
 nO3y5EbMF02T9sGsLhA8gktGLcvXsxBiD73rlvM8pq/JxIoJjPK33Av+X
 5vQh3aiF/q98jdlzANS3OuYCRGSdNTaJG9ymQsCfIL/cZqe7TF1eizT+e
 2qWuCnQBFk+dVi6YrTcnziOyLQNlfV1xAaESjOhtb09TUB9scePhinbK8
 km5yzHvtUNHhS2uNFK4R3lYtVSblAYmRylDTq3GcFmCBCu338+5pWllxM
 afqpwaoK0qG6kBSIKFJm4Xj2xYT1lA7hgZ8nAEQUSFIDCvuQnl/5BG3RT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hnf4nTUe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 04/10] dpll: netlink: Add DPLL
 framework base functions
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Sunday, June 11, 2023 1:42 PM
>
>Fri, Jun 09, 2023 at 02:18:47PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>
>Arkadiusz, I think it would be appropriate to change the authorship
>of this and other patches to you. I believe that you did vast majority
>of the lines by now. Vadim, would you mind?
>

Well, Vadim started it, then we did changes. I am just fine with
"Co-developed".

>
>>
>>DPLL framework is used to represent and configure DPLL devices
>>in systems. Each device that has DPLL and can configure inputs
>>and outputs can use this framework.
>>
>>Implement dpll netlink framework functions for enablement of dpll
>>subsytem netlink family.
>>
>>Co-developed-by: Milena Olech <milena.olech@intel.com>
>>Signed-off-by: Milena Olech <milena.olech@intel.com>
>>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> drivers/dpll/dpll_netlink.c | 1183 +++++++++++++++++++++++++++++++++++
>> drivers/dpll/dpll_netlink.h |   44 ++
>
>Overall, this looks very good. I did take couple of comments below.
>Thanks for you work!
>

Thanks for your review! :)

>
>> 2 files changed, 1227 insertions(+)
>> create mode 100644 drivers/dpll/dpll_netlink.c
>> create mode 100644 drivers/dpll/dpll_netlink.h
>>
>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>new file mode 100644
>>index 000000000000..44d9699c9e6c
>>--- /dev/null
>>+++ b/drivers/dpll/dpll_netlink.c
>>@@ -0,0 +1,1183 @@
>>+// SPDX-License-Identifier: GPL-2.0
>>+/*
>>+ * Generic netlink for DPLL management framework
>>+ *
>>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>>+ *  Copyright (c) 2023 Intel and affiliates
>>+ *
>>+ */
>>+#include <linux/module.h>
>>+#include <linux/kernel.h>
>>+#include <net/genetlink.h>
>>+#include "dpll_core.h"
>>+#include "dpll_nl.h"
>>+#include <uapi/linux/dpll.h>
>>+
>>+static int __dpll_pin_change_ntf(struct dpll_pin *pin);
>
>Could you try to reshuffle the code to avoid forward declarations?
>

Fixed.

>
>>+
>>+struct dpll_dump_ctx {
>>+	unsigned long idx;
>>+};
>>+
>>+static struct dpll_dump_ctx *dpll_dump_context(struct netlink_callback
>>*cb)
>>+{
>>+	return (struct dpll_dump_ctx *)cb->ctx;
>>+}
>>+
>>+static int
>>+dpll_msg_add_dev_handle(struct sk_buff *msg, struct dpll_device *dpll)
>
>It is odd to see this helper here and the dpll_msg_add_pin_handle() not.
>Introduce dpll_msg_add_pin_handle() here right away and only export it
>later on in "netdev: expose DPLL pin handle for netdevice".
>

Will do.

>
>>+{
>>+	if (nla_put_u32(msg, DPLL_A_ID, dpll->id))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_mode(struct sk_buff *msg, struct dpll_device *dpll,
>>+		  struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>+	enum dpll_mode mode;
>>+
>>+	if (WARN_ON(!ops->mode_get))
>>+		return -EOPNOTSUPP;
>>+	if (ops->mode_get(dpll, dpll_priv(dpll), &mode, extack))
>>+		return -EFAULT;
>
>I'm pretty sure I commented this before. But again, please get the
>value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_u8(msg, DPLL_A_MODE, mode))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
>>+			 struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>+	enum dpll_lock_status status;
>>+
>>+	if (WARN_ON(!ops->lock_status_get))
>>+		return -EOPNOTSUPP;
>>+	if (ops->lock_status_get(dpll, dpll_priv(dpll), &status, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_u8(msg, DPLL_A_LOCK_STATUS, status))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_temp(struct sk_buff *msg, struct dpll_device *dpll,
>>+		  struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>+	s32 temp;
>>+
>>+	if (!ops->temp_get)
>>+		return -EOPNOTSUPP;
>>+	if (ops->temp_get(dpll, dpll_priv(dpll), &temp, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_s32(msg, DPLL_A_TEMP, temp))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_prio(struct sk_buff *msg, struct dpll_pin *pin,
>>+		      struct dpll_pin_ref *ref,
>>+		      struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+	struct dpll_device *dpll = ref->dpll;
>>+	u32 prio;
>>+
>>+	if (!ops->prio_get)
>>+		return -EOPNOTSUPP;
>>+	if (ops->prio_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			  dpll_priv(dpll), &prio, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_u32(msg, DPLL_A_PIN_PRIO, prio))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_on_dpll_state(struct sk_buff *msg, struct dpll_pin *pin,
>>+			       struct dpll_pin_ref *ref,
>>+			       struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+	struct dpll_device *dpll = ref->dpll;
>>+	enum dpll_pin_state state;
>>+
>>+	if (!ops->state_on_dpll_get)
>>+		return -EOPNOTSUPP;
>>+	if (ops->state_on_dpll_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>>dpll,
>>+				   dpll_priv(dpll), &state, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_u8(msg, DPLL_A_PIN_STATE, state))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_direction(struct sk_buff *msg, struct dpll_pin *pin,
>>+			   struct dpll_pin_ref *ref,
>>+			   struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+	struct dpll_device *dpll = ref->dpll;
>>+	enum dpll_pin_direction direction;
>>+
>>+	if (!ops->direction_get)
>>+		return -EOPNOTSUPP;
>>+	if (ops->direction_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			       dpll_priv(dpll), &direction, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_u8(msg, DPLL_A_PIN_DIRECTION, direction))
>>+		return -EMSGSIZE;
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
>>+		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack,
>>+		      bool dump_freq_supported)
>>+{
>>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+	struct dpll_device *dpll = ref->dpll;
>>+	struct nlattr *nest;
>>+	u64 freq;
>>+	int fs;
>>+
>>+	if (!ops->frequency_get)
>>+		return -EOPNOTSUPP;
>
>Return 0 and avoid the check of -EOPNOTSUPP in the caller.
>

Fixed.

>
>>+	if (ops->frequency_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			       dpll_priv(dpll), &freq, extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY, sizeof(freq), &freq, 0))
>>+		return -EMSGSIZE;
>>+	if (!dump_freq_supported)
>>+		return 0;
>>+	for (fs = 0; fs < pin->prop->freq_supported_num; fs++) {
>>+		nest = nla_nest_start(msg, DPLL_A_PIN_FREQUENCY_SUPPORTED);
>>+		if (!nest)
>>+			return -EMSGSIZE;
>>+		freq = pin->prop->freq_supported[fs].min;
>>+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN, sizeof(freq),
>>+				   &freq, 0)) {
>>+			nla_nest_cancel(msg, nest);
>>+			return -EMSGSIZE;
>>+		}
>>+		freq = pin->prop->freq_supported[fs].max;
>>+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX, sizeof(freq),
>>+				   &freq, 0)) {
>>+			nla_nest_cancel(msg, nest);
>>+			return -EMSGSIZE;
>>+		}
>>+		nla_nest_end(msg, nest);
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_parents(struct sk_buff *msg, struct dpll_pin *pin,
>>+			 struct dpll_pin_ref *dpll_ref,
>>+			 struct netlink_ext_ack *extack)
>>+{
>>+	enum dpll_pin_state state;
>>+	struct dpll_pin_ref *ref;
>>+	struct dpll_pin *ppin;
>>+	struct nlattr *nest;
>>+	unsigned long index;
>>+	int ret;
>>+
>>+	xa_for_each(&pin->parent_refs, index, ref) {
>>+		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+		void *parent_priv;
>>+
>>+		ppin = ref->pin;
>>+		parent_priv = dpll_pin_on_dpll_priv(dpll_ref->dpll, ppin);
>>+		if (WARN_ON(!ops->state_on_pin_get))
>
>Wait, so you WARN during user comment on something that driver didn't
>fill up? Plese move the check and WARN to the registration function.
>

Fixed.

>
>>+			return -EFAULT;
>>+		ret = ops->state_on_pin_get(pin,
>>+					    dpll_pin_on_pin_priv(ppin, pin),
>>+					    ppin, parent_priv, &state, extack);
>>+		if (ret)
>>+			return -EFAULT;
>
>Return ret please.
>

Fixed.

>
>>+		nest = nla_nest_start(msg, DPLL_A_PIN_PARENT);
>>+		if (!nest)
>>+			return -EMSGSIZE;
>>+		if (nla_put_u32(msg, DPLL_A_PIN_ID, ppin->id)) {
>>+			ret = -EMSGSIZE;
>>+			goto nest_cancel;
>>+		}
>>+		if (nla_put_u8(msg, DPLL_A_PIN_STATE, state)) {
>>+			ret = -EMSGSIZE;
>>+			goto nest_cancel;
>>+		}
>>+		nla_nest_end(msg, nest);
>>+	}
>>+
>>+	return 0;
>>+
>>+nest_cancel:
>>+	nla_nest_cancel(msg, nest);
>>+	return ret;
>>+}
>>+
>>+static int
>>+dpll_msg_add_pin_dplls(struct sk_buff *msg, struct dpll_pin *pin,
>>+		       struct netlink_ext_ack *extack)
>>+{
>>+	struct dpll_pin_ref *ref;
>>+	struct nlattr *attr;
>>+	unsigned long index;
>>+	int ret;
>>+
>>+	xa_for_each(&pin->dpll_refs, index, ref) {
>>+		attr = nla_nest_start(msg, DPLL_A_PIN_PARENT);
>>+		if (!attr)
>>+			return -EMSGSIZE;
>>+		ret = dpll_msg_add_dev_handle(msg, ref->dpll);
>>+		if (ret)
>>+			goto nest_cancel;
>>+		ret = dpll_msg_add_pin_on_dpll_state(msg, pin, ref, extack);
>>+		if (ret && ret != -EOPNOTSUPP)
>>+			goto nest_cancel;
>>+		ret = dpll_msg_add_pin_prio(msg, pin, ref, extack);
>>+		if (ret && ret != -EOPNOTSUPP)
>>+			goto nest_cancel;
>>+		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
>>+		if (ret)
>>+			goto nest_cancel;
>>+		nla_nest_end(msg, attr);
>>+	}
>>+
>>+	return 0;
>>+
>>+nest_cancel:
>>+	nla_nest_end(msg, attr);
>>+	return ret;
>>+}
>>+
>>+static int
>>+dpll_cmd_pin_fill_details(struct sk_buff *msg, struct dpll_pin *pin,
>
>"details"? Sound odd. I don't think that "DPLL_A_PIN_ID" is a detail
>for example. Why don't you inline this in the __dpll_cmd_pin_dump_one()
>function below?
>

Fixed.

>
>>+			  struct dpll_pin_ref *ref, struct netlink_ext_ack
>>*extack)
>>+{
>>+	const struct dpll_pin_properties *prop = pin->prop;
>>+	int ret;
>>+
>>+	if (nla_put_u32(msg, DPLL_A_PIN_ID, pin->id))
>>+		return -EMSGSIZE;
>>+	if (nla_put_string(msg, DPLL_A_MODULE_NAME, module_name(pin-
>>module)))
>>+		return -EMSGSIZE;
>>+	if (nla_put_64bit(msg, DPLL_A_CLOCK_ID, sizeof(pin->clock_id),
>>+			  &pin->clock_id, 0))
>>+		return -EMSGSIZE;
>>+	if (prop->board_label &&
>>+	    nla_put_string(msg, DPLL_A_PIN_BOARD_LABEL, prop->board_label))
>>+		return -EMSGSIZE;
>>+	if (prop->panel_label &&
>>+	    nla_put_string(msg, DPLL_A_PIN_PANEL_LABEL, prop->panel_label))
>>+		return -EMSGSIZE;
>>+	if (prop->package_label &&
>>+	    nla_put_string(msg, DPLL_A_PIN_PACKAGE_LABEL,
>>+			   prop->package_label))
>>+		return -EMSGSIZE;
>>+	if (nla_put_u8(msg, DPLL_A_PIN_TYPE, prop->type))
>>+		return -EMSGSIZE;
>>+	if (nla_put_u32(msg, DPLL_A_PIN_DPLL_CAPS, prop->capabilities))
>>+		return -EMSGSIZE;
>>+	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack, true);
>>+	if (ret && ret != -EOPNOTSUPP)
>>+		return ret;
>>+	return 0;
>>+}
>>+
>>+static int
>>+__dpll_cmd_pin_dump_one(struct sk_buff *msg, struct dpll_pin *pin,
>>+			struct netlink_ext_ack *extack)
>
>To be consistent with dpll_device_get_one(), call this function
>dpll_pin_get_one() please.
>

Fixed.

>
>>+{
>>+	struct dpll_pin_ref *ref;
>>+	int ret;
>>+
>>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>>+	if (!ref)
>>+		return -EFAULT;
>
>-EINVAL. But it should never happen anyway. Perhaps better to avoid the
>check entirely.
>

To me, it feels pretty strange to look for it and then use it without
validating, as the function designed to return NULL.
Will try to fix it and make it consistent.

>
>>+	ret = dpll_cmd_pin_fill_details(msg, pin, ref, extack);
>>+	if (ret)
>>+		return ret;
>>+	ret = dpll_msg_add_pin_parents(msg, pin, ref, extack);
>>+	if (ret)
>>+		return ret;
>>+	if (!xa_empty(&pin->dpll_refs)) {
>
>Drop this check, not needed.
>

Fixed.

>
>>+		ret = dpll_msg_add_pin_dplls(msg, pin, extack);
>>+		if (ret)
>>+			return ret;
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
>>+		    struct netlink_ext_ack *extack)
>>+{
>>+	enum dpll_mode mode;
>>+	int ret;
>>+
>>+	ret = dpll_msg_add_dev_handle(msg, dpll);
>>+	if (ret)
>>+		return ret;
>>+	if (nla_put_string(msg, DPLL_A_MODULE_NAME, module_name(dpll-
>>module)))
>>+		return -EMSGSIZE;
>>+	if (nla_put_64bit(msg, DPLL_A_CLOCK_ID, sizeof(dpll->clock_id),
>>+			  &dpll->clock_id, 0))
>>+		return -EMSGSIZE;
>>+	ret = dpll_msg_add_temp(msg, dpll, extack);
>>+	if (ret && ret != -EOPNOTSUPP)
>>+		return ret;
>>+	ret = dpll_msg_add_lock_status(msg, dpll, extack);
>>+	if (ret)
>>+		return ret;
>>+	ret = dpll_msg_add_mode(msg, dpll, extack);
>>+	if (ret)
>>+		return ret;
>>+	for (mode = DPLL_MODE_MANUAL; mode <= DPLL_MODE_MAX; mode++)
>>+		if (test_bit(mode, &dpll->mode_supported_mask))
>>+			if (nla_put_s32(msg, DPLL_A_MODE_SUPPORTED, mode))
>>+				return -EMSGSIZE;
>>+	if (nla_put_u8(msg, DPLL_A_TYPE, dpll->type))
>>+		return -EMSGSIZE;
>>+
>>+	return ret;
>>+}
>>+
>>+static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
>>+{
>>+	int fs;
>>+
>>+	for (fs = 0; fs < pin->prop->freq_supported_num; fs++)
>>+		if (freq >=  pin->prop->freq_supported[fs].min &&
>
>Avoid double space here    ^^
>

Fixed.

>
>>+		    freq <=  pin->prop->freq_supported[fs].max)
>
>Avoid double space here    ^^
>

Fixed.

>
>>+			return true;
>>+	return false;
>>+}
>>+
>>+static int
>>+dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
>>+		  struct netlink_ext_ack *extack)
>>+{
>>+	u64 freq = nla_get_u64(a);
>>+	struct dpll_pin_ref *ref;
>>+	unsigned long i;
>>+	int ret;
>>+
>>+	if (!dpll_pin_is_freq_supported(pin, freq))
>
>Fill a proper extack telling the user what's wrong please.
>Could you please check the rest of the cmd attr checks and make sure
>the extack is always filled with meaningful message?
>

Fixed.

>
>>+		return -EINVAL;
>>+
>>+	xa_for_each(&pin->dpll_refs, i, ref) {
>>+		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>+		struct dpll_device *dpll = ref->dpll;
>>+
>>+		if (!ops->frequency_set)
>>+			return -EOPNOTSUPP;
>>+		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>>+					 dpll, dpll_priv(dpll), freq, extack);
>>+		if (ret)
>>+			return -EFAULT;
>
>return "ret"
>

Fixed.

>
>>+		__dpll_pin_change_ntf(pin);
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
>>+			  enum dpll_pin_state state,
>>+			  struct netlink_ext_ack *extack)
>>+{
>>+	struct dpll_pin_ref *parent_ref;
>>+	const struct dpll_pin_ops *ops;
>>+	struct dpll_pin_ref *dpll_ref;
>>+	struct dpll_pin *parent;
>>+	unsigned long i;
>>+
>>+	if (!(DPLL_PIN_CAPS_STATE_CAN_CHANGE & pin->prop->capabilities))
>>+		return -EOPNOTSUPP;
>>+	parent = xa_load(&dpll_pin_xa, parent_idx);
>>+	if (!parent)
>>+		return -EINVAL;
>>+	parent_ref = xa_load(&pin->parent_refs, parent->pin_idx);
>>+	if (!parent_ref)
>>+		return -EINVAL;
>>+	xa_for_each(&parent->dpll_refs, i, dpll_ref) {
>>+		ops = dpll_pin_ops(parent_ref);
>>+		if (!ops->state_on_pin_set)
>>+			return -EOPNOTSUPP;
>>+		if (ops->state_on_pin_set(pin,
>>+					  dpll_pin_on_pin_priv(parent, pin),
>>+					  parent,
>>+					  dpll_pin_on_dpll_priv(dpll_ref->dpll,
>>+								parent),
>>+					  state, extack))
>>+			return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	}
>>+	__dpll_pin_change_ntf(pin);
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_state_set(struct dpll_device *dpll, struct dpll_pin *pin,
>>+		   enum dpll_pin_state state,
>>+		   struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops;
>>+	struct dpll_pin_ref *ref;
>>+
>>+	if (!(DPLL_PIN_CAPS_STATE_CAN_CHANGE & pin->prop->capabilities))
>>+		return -EOPNOTSUPP;
>>+	ref = xa_load(&pin->dpll_refs, dpll->device_idx);
>>+	if (!ref)
>>+		return -EFAULT;
>
>-EINVAL. But looks like this should never happen. Perhaps just
>WARN_ON(!ref) and don't check-return.
>

Fixed.

>
>>+	ops = dpll_pin_ops(ref);
>>+	if (!ops->state_on_dpll_set)
>>+		return -EOPNOTSUPP;
>>+	if (ops->state_on_dpll_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>>dpll,
>>+				   dpll_priv(dpll), state, extack))
>>+		return -EINVAL;
>>+	__dpll_pin_change_ntf(pin);
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_prio_set(struct dpll_device *dpll, struct dpll_pin *pin,
>>+		  u32 prio, struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops;
>>+	struct dpll_pin_ref *ref;
>>+
>>+	if (!(DPLL_PIN_CAPS_PRIORITY_CAN_CHANGE & pin->prop->capabilities))
>>+		return -EOPNOTSUPP;
>>+	ref = xa_load(&pin->dpll_refs, dpll->device_idx);
>>+	if (!ref)
>>+		return -EFAULT;
>
>Same here.
>

Fixed.

>
>>+	ops = dpll_pin_ops(ref);
>>+	if (!ops->prio_set)
>>+		return -EOPNOTSUPP;
>>+	if (ops->prio_set(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			  dpll_priv(dpll), prio, extack))
>>+		return -EINVAL;
>>+	__dpll_pin_change_ntf(pin);
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_direction_set(struct dpll_pin *pin, struct dpll_device *dpll,
>>+		       enum dpll_pin_direction direction,
>>+		       struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops;
>>+	struct dpll_pin_ref *ref;
>>+
>>+	if (!(DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE & pin->prop->capabilities))
>>+		return -EOPNOTSUPP;
>>+
>>+	ref = xa_load(&pin->dpll_refs, dpll->device_idx);
>>+	if (!ref)
>>+		return -EFAULT;
>
>Same here. This calls for a helper :)
>

Fixed.

>
>>+	ops = dpll_pin_ops(ref);
>>+	if (!ops->direction_set)
>>+		return -EOPNOTSUPP;
>>+	if (ops->direction_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>>+			       dpll, dpll_priv(dpll), direction,
>>+			       extack))
>>+		return -EFAULT;
>
>please get the value the driver op returned and return it.
>

Fixed.

>
>>+	__dpll_pin_change_ntf(pin);
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_parent_set(struct dpll_pin *pin, struct nlattr *parent_nest,
>>+		    struct netlink_ext_ack *extack)
>>+{
>>+	struct nlattr *tb[DPLL_A_MAX + 1];
>>+	enum dpll_pin_direction direction;
>>+	u32 ppin_idx, pdpll_idx, prio;
>>+	enum dpll_pin_state state;
>>+	struct dpll_pin_ref *ref;
>>+	struct dpll_device *dpll;
>>+	int ret;
>>+
>>+	nla_parse_nested(tb, DPLL_A_MAX, parent_nest,
>>+			 NULL, extack);
>>+	if ((tb[DPLL_A_ID] && tb[DPLL_A_PIN_ID]) ||
>>+	    !(tb[DPLL_A_ID] || tb[DPLL_A_PIN_ID])) {
>>+		NL_SET_ERR_MSG(extack, "one parent id expected");
>>+		return -EINVAL;
>>+	}
>>+	if (tb[DPLL_A_ID]) {
>>+		pdpll_idx = nla_get_u32(tb[DPLL_A_ID]);
>>+		dpll = xa_load(&dpll_device_xa, pdpll_idx);
>>+		if (!dpll)
>>+			return -EINVAL;
>>+		ref = xa_load(&pin->dpll_refs, dpll->device_idx);
>>+		if (!ref)
>>+			return -EINVAL;
>>+		if (tb[DPLL_A_PIN_STATE]) {
>>+			state = nla_get_u8(tb[DPLL_A_PIN_STATE]);
>>+			ret = dpll_pin_state_set(dpll, pin, state, extack);
>>+			if (ret)
>>+				return ret;
>>+		}
>>+		if (tb[DPLL_A_PIN_PRIO]) {
>>+			prio = nla_get_u8(tb[DPLL_A_PIN_PRIO]);
>>+			ret = dpll_pin_prio_set(dpll, pin, prio, extack);
>>+			if (ret)
>>+				return ret;
>>+		}
>>+		if (tb[DPLL_A_PIN_DIRECTION]) {
>>+			direction = nla_get_u8(tb[DPLL_A_PIN_DIRECTION]);
>>+			ret = dpll_pin_direction_set(pin, dpll, direction,
>>+						     extack);
>>+			if (ret)
>>+				return ret;
>>+		}
>>+	} else if (tb[DPLL_A_PIN_ID]) {
>>+		ppin_idx = nla_get_u32(tb[DPLL_A_PIN_ID]);
>>+		state = nla_get_u8(tb[DPLL_A_PIN_STATE]);
>>+		ret = dpll_pin_on_pin_state_set(pin, ppin_idx, state, extack);
>>+		if (ret)
>>+			return ret;
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
>>+{
>>+	int rem, ret = -EINVAL;
>>+	struct nlattr *a;
>>+
>>+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
>>+			  genlmsg_len(info->genlhdr), rem) {
>>+		switch (nla_type(a)) {
>>+		case DPLL_A_PIN_FREQUENCY:
>>+			ret = dpll_pin_freq_set(pin, a, info->extack);
>>+			if (ret)
>>+				return ret;
>>+			break;
>>+		case DPLL_A_PIN_PARENT:
>>+			ret = dpll_pin_parent_set(pin, a, info->extack);
>>+			if (ret)
>>+				return ret;
>>+			break;
>>+		case DPLL_A_PIN_ID:
>>+		case DPLL_A_ID:
>>+			break;
>>+		default:
>>+			NL_SET_ERR_MSG_FMT(info->extack,
>>+					   "unsupported attribute (%d)",
>>+					   nla_type(a));
>>+			return -EINVAL;
>>+		}
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+static struct dpll_pin *
>>+dpll_pin_find(u64 clock_id, struct nlattr *mod_name_attr,
>>+	      enum dpll_pin_type type, struct nlattr *board_label,
>>+	      struct nlattr *panel_label, struct nlattr *package_label)
>>+{
>>+	bool board_match, panel_match, package_match;
>>+	struct dpll_pin *pin_match = NULL, *pin;
>>+	const struct dpll_pin_properties *prop;
>>+	bool cid_match, mod_match, type_match;
>>+	unsigned long i;
>>+
>>+	xa_for_each(&dpll_pin_xa, i, pin) {
>>+		if (xa_empty(&pin->dpll_refs))
>
>This filters out unregistered, right? Could you please introduce a
>"REGISTERED" mark and iterate only over list of registered? Similar to
>what you have for device.
>

Yes it does. Will do.

>
>>+			continue;
>>+		prop = pin->prop;
>>+		cid_match = clock_id ? pin->clock_id == clock_id : true;
>>+		mod_match = mod_name_attr && module_name(pin->module) ?
>>+			!nla_strcmp(mod_name_attr,
>>+				    module_name(pin->module)) : true;
>>+		type_match = type ? prop->type == type : true;
>>+		board_match = board_label && prop->board_label ?
>>+			!nla_strcmp(board_label, prop->board_label) : true;
>>+		panel_match = panel_label && prop->panel_label ?
>>+			!nla_strcmp(panel_label, prop->panel_label) : true;
>>+		package_match = package_label && prop->package_label ?
>>+			!nla_strcmp(package_label,
>>+				    prop->package_label) : true;
>>+		if (cid_match && mod_match && type_match && board_match &&
>>+		    panel_match && package_match) {
>>+			if (pin_match)
>
>Double match, rigth? Fillup the extack telling the user what happened.
>

Fixed.

>
>>+				return NULL;
>>+			pin_match = pin;
>>+		};
>>+	}
>>+
>>+	return pin_match;
>>+}
>>+
>>+static int
>>+dpll_pin_find_from_nlattr(struct genl_info *info, struct sk_buff *skb)
>>+{
>>+	struct nlattr *attr, *mod_name_attr = NULL, *board_label_attr = NULL,
>>+		*panel_label_attr = NULL, *package_label_attr = NULL;
>>+	struct dpll_pin *pin = NULL;
>>+	enum dpll_pin_type type = 0;
>>+	u64 clock_id = 0;
>>+	int rem = 0;
>>+
>>+	nla_for_each_attr(attr, genlmsg_data(info->genlhdr),
>>+			  genlmsg_len(info->genlhdr), rem) {
>>+		switch (nla_type(attr)) {
>>+		case DPLL_A_CLOCK_ID:
>>+			if (clock_id)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			clock_id = nla_get_u64(attr);
>>+			break;
>>+		case DPLL_A_MODULE_NAME:
>>+			if (mod_name_attr)
>>+				return -EINVAL;
>
>Extack

Fixed.

>
>
>>+			mod_name_attr = attr;
>>+			break;
>>+		case DPLL_A_PIN_TYPE:
>>+			if (type)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			type = nla_get_u8(attr);
>>+			break;
>>+		case DPLL_A_PIN_BOARD_LABEL:
>>+			if (board_label_attr)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			board_label_attr = attr;
>>+			break;
>>+		case DPLL_A_PIN_PANEL_LABEL:
>>+			if (panel_label_attr)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			panel_label_attr = attr;
>>+			break;
>>+		case DPLL_A_PIN_PACKAGE_LABEL:
>>+			if (package_label_attr)
>>+				return -EINVAL;
>
>Extack
>
>You can use goto with one "duplicate attribute" message.
>

Fixed.

>
>>+			package_label_attr = attr;
>>+			break;
>>+		default:
>>+			break;
>>+		}
>>+	}
>>+	if (!(clock_id  || mod_name_attr || board_label_attr ||
>>+	      panel_label_attr || package_label_attr))
>>+		return -EINVAL;
>>+	pin = dpll_pin_find(clock_id, mod_name_attr, type, board_label_attr,
>>+			    panel_label_attr, package_label_attr);
>
>Error is either "notfound" of "duplicate match". Have the function
>dpll_pin_find() return ERR_PTR with -ENODEV / -EINVAL and let
>the function dpll_pin_find() also fill-up the proper extack inside.
>

Fixed.

>
>>+	if (!pin)
>>+		return -EINVAL;
>>+	if (nla_put_u32(skb, DPLL_A_PIN_ID, pin->id))
>
>Please move this call to the caller. This function should return ERR_PTR
>or dpll_pin pointer.
>

Fixed.

>
>>+		return -EMSGSIZE;
>>+	return 0;
>>+}
>>+
>>+int dpll_nl_pin_id_get_doit(struct sk_buff *skb, struct genl_info *info)
>>+{
>>+	struct sk_buff *msg;
>>+	struct nlattr *hdr;
>>+	int ret;
>>+
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
>>+				DPLL_CMD_PIN_ID_GET);
>>+	if (!hdr)
>>+		return -EMSGSIZE;
>>+
>>+	ret = dpll_pin_find_from_nlattr(info, msg);
>>+	if (ret) {
>>+		nlmsg_free(msg);
>>+		return ret;
>>+	}
>>+	genlmsg_end(msg, hdr);
>
>
>This does not seem to be working:
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml
>--do device-id-get --json '{"module-name": "mlx5_dpll"}'
>{'id': 0}
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml
>--do pin-id-get --json '{"module-name": "mlx5_dpll"}'
>Traceback (most recent call last):
>  File "/mnt/share156/jiri/net-next/./tools/net/ynl/cli.py", line 52, in
><module>
>    main()
>  File "/mnt/share156/jiri/net-next/./tools/net/ynl/cli.py", line 40, in
>main
>    reply = ynl.do(args.do, attrs)
>  File "/mnt/share156/jiri/net-next/tools/net/ynl/lib/ynl.py", line 596, in
>do
>    return self._op(method, vals)
>  File "/mnt/share156/jiri/net-next/tools/net/ynl/lib/ynl.py", line 567, in
>_op
>    raise NlError(nl_msg)
>lib.ynl.NlError: Netlink error: Invalid argument
>nl_len = 36 (20) nl_flags = 0x100 nl_type = 2
>	error: -22
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml
>--do device-id-get --json '{"clock-id": "630763432553410540"}'
>{'id': 0}
>$ sudo ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml
>--do pin-id-get --json '{"clock-id": "630763432553410540"}'
>Traceback (most recent call last):
>  File "/mnt/share156/jiri/net-next/./tools/net/ynl/cli.py", line 52, in
><module>
>    main()
>  File "/mnt/share156/jiri/net-next/./tools/net/ynl/cli.py", line 40, in
>main
>    reply = ynl.do(args.do, attrs)
>  File "/mnt/share156/jiri/net-next/tools/net/ynl/lib/ynl.py", line 596, in
>do
>    return self._op(method, vals)
>  File "/mnt/share156/jiri/net-next/tools/net/ynl/lib/ynl.py", line 567, in
>_op
>    raise NlError(nl_msg)
>lib.ynl.NlError: Netlink error: Invalid argument
>nl_len = 36 (20) nl_flags = 0x100 nl_type = 2
>	error: -22
>

Wasn't that multiple matches of a pins with the same clock_id?
If you had multiple matches it seems it was fine.

Now, with the changes to find behavior this won't be an error but the reply
with extack, please try on new patchset.

>
>
>>+
>>+	return genlmsg_reply(msg, info);
>>+}
>>+
>>+int dpll_nl_pin_get_doit(struct sk_buff *skb, struct genl_info *info)
>>+{
>>+	struct dpll_pin *pin = info->user_ptr[0];
>>+	struct sk_buff *msg;
>>+	struct nlattr *hdr;
>>+	int ret;
>>+
>>+	if (!pin)
>>+		return -ENODEV;
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
>>+				DPLL_CMD_PIN_GET);
>>+	if (!hdr)
>>+		return -EMSGSIZE;
>>+	ret = __dpll_cmd_pin_dump_one(msg, pin, info->extack);
>>+	if (ret) {
>>+		nlmsg_free(msg);
>>+		return ret;
>>+	}
>>+	genlmsg_end(msg, hdr);
>>+
>>+	return genlmsg_reply(msg, info);
>>+}
>>+
>>+int dpll_nl_pin_get_dumpit(struct sk_buff *skb, struct netlink_callback
>*cb)
>>+{
>>+	struct dpll_dump_ctx *ctx = dpll_dump_context(cb);
>>+	struct dpll_pin *pin;
>>+	struct nlattr *hdr;
>>+	unsigned long i;
>>+	int ret = 0;
>>+
>>+	xa_for_each_start(&dpll_pin_xa, i, pin, ctx->idx) {
>>+		if (xa_empty(&pin->dpll_refs))
>
>Same here, also use REGISTERED mark and iterate over them.
>

As said below, we need new macro for it.

>
>>+			continue;
>>+		hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).portid,
>>+				  cb->nlh->nlmsg_seq,
>>+				  &dpll_nl_family, NLM_F_MULTI,
>>+				  DPLL_CMD_PIN_GET);
>>+		if (!hdr) {
>>+			ret = -EMSGSIZE;
>>+			break;
>>+		}
>>+		ret = __dpll_cmd_pin_dump_one(skb, pin, cb->extack);
>>+		if (ret) {
>>+			genlmsg_cancel(skb, hdr);
>>+			break;
>>+		}
>>+		genlmsg_end(skb, hdr);
>>+	}
>>+	if (ret == -EMSGSIZE) {
>>+		ctx->idx = i;
>>+		return skb->len;
>>+	}
>>+	return ret;
>>+}
>>+
>>+int dpll_nl_pin_set_doit(struct sk_buff *skb, struct genl_info *info)
>>+{
>>+	struct dpll_pin *pin = info->user_ptr[0];
>>+
>>+	return dpll_pin_set_from_nlattr(pin, info);
>>+}
>>+
>>+static struct dpll_device *
>>+dpll_device_find(u64 clock_id, struct nlattr *mod_name_attr,
>>+		 enum dpll_type type)
>>+{
>>+	struct dpll_device *dpll_match = NULL, *dpll;
>>+	bool cid_match, mod_match, type_match;
>>+	unsigned long i;
>>+
>>+	xa_for_each_marked(&dpll_device_xa, i, dpll, DPLL_REGISTERED) {
>>+		cid_match = clock_id ? dpll->clock_id == clock_id : true;
>>+		mod_match = mod_name_attr && module_name(dpll->module) ?
>>+			!nla_strcmp(mod_name_attr,
>>+				    module_name(dpll->module)) : true;
>>+		type_match = type ? dpll->type == type : true;
>>+		if (cid_match && mod_match && type_match) {
>>+			if (dpll_match)
>
>Double match, rigth? Fillup the extack telling the user what happened.
>

Fixed.

>
>>+				return NULL;
>>+			dpll_match = dpll;
>>+		}
>>+	}
>>+
>>+	return dpll_match;
>>+}
>>+
>>+static int
>>+dpll_device_find_from_nlattr(struct genl_info *info, struct sk_buff *skb)
>>+{
>>+	struct nlattr *attr, *mod_name_attr = NULL;
>>+	struct dpll_device *dpll = NULL;
>>+	enum dpll_type type = 0;
>>+	u64 clock_id = 0;
>>+	int rem = 0;
>>+
>>+	nla_for_each_attr(attr, genlmsg_data(info->genlhdr),
>>+			  genlmsg_len(info->genlhdr), rem) {
>>+		switch (nla_type(attr)) {
>>+		case DPLL_A_CLOCK_ID:
>>+			if (clock_id)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			clock_id = nla_get_u64(attr);
>>+			break;
>>+		case DPLL_A_MODULE_NAME:
>>+			if (mod_name_attr)
>>+				return -EINVAL;
>
>Extack
>

Fixed.

>
>>+			mod_name_attr = attr;
>>+			break;
>>+		case DPLL_A_TYPE:
>>+			if (type)
>>+				return -EINVAL;
>
>Extack
>
>You can use goto with one "duplicate attribute" message.
>

Fixed.

>
>>+			type = nla_get_u8(attr);
>>+			break;
>>+		default:
>>+			break;
>>+		}
>>+	}
>>+
>>+	if (!clock_id && !mod_name_attr && !type)
>>+		return -EINVAL;
>>+	dpll = dpll_device_find(clock_id, mod_name_attr, type);
>
>Error is either "notfound" of "duplicate match". Have the function
>dpll_device_find() return ERR_PTR with -ENODEV / -EINVAL and let
>the function dpll_device_find() also fill-up the proper extack inside.
>

Fixed.

>
>>+	if (!dpll)
>>+		return -EINVAL;
>>+
>>+	return dpll_msg_add_dev_handle(skb, dpll);
>
>Please move this call to the caller. This function should return ERR_PTR
>or dpll_device pointer.
>

Fixed.

>
>>+}
>>+
>>+static int
>>+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
>
>Nit: Please move this function above dpll_device_find() to maintain the
>same functions ordering as there is for similar pin functions above.
>

Fixed.

>
>>+{
>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>+	struct nlattr *tb[DPLL_A_MAX + 1];
>>+	int ret = 0;
>
>Drop pointless init.
>

Fixed.

>
>>+
>>+	nla_parse(tb, DPLL_A_MAX, genlmsg_data(info->genlhdr),
>>+		  genlmsg_len(info->genlhdr), NULL, info->extack);
>>+	if (tb[DPLL_A_MODE]) {
>>+		ret = ops->mode_set(dpll, dpll_priv(dpll),
>>+				    nla_get_u8(tb[DPLL_A_MODE]), info->extack);
>>+		if (ret)
>>+			return ret;
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>>+int dpll_nl_device_id_get_doit(struct sk_buff *skb, struct genl_info
>>*info)
>>+{
>>+	struct sk_buff *msg;
>>+	struct nlattr *hdr;
>>+	int ret;
>>+
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
>>+				DPLL_CMD_DEVICE_ID_GET);
>>+	if (!hdr)
>>+		return -EMSGSIZE;
>>+
>>+	ret = dpll_device_find_from_nlattr(info, msg);
>>+	if (ret) {
>>+		nlmsg_free(msg);
>>+		return ret;
>>+	}
>>+	genlmsg_end(msg, hdr);
>>+
>>+	return genlmsg_reply(msg, info);
>>+}
>>+
>>+int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
>>+{
>>+	struct dpll_device *dpll = info->user_ptr[0];
>>+	struct sk_buff *msg;
>>+	struct nlattr *hdr;
>>+	int ret;
>>+
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
>>+				DPLL_CMD_DEVICE_GET);
>>+	if (!hdr)
>>+		return -EMSGSIZE;
>>+
>>+	ret = dpll_device_get_one(dpll, msg, info->extack);
>>+	if (ret) {
>>+		nlmsg_free(msg);
>>+		return ret;
>>+	}
>>+	genlmsg_end(msg, hdr);
>>+
>>+	return genlmsg_reply(msg, info);
>>+}
>>+
>>+int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info)
>>+{
>>+	struct dpll_device *dpll = info->user_ptr[0];
>>+
>>+	return dpll_set_from_nlattr(dpll, info);
>>+}
>>+
>>+int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct
>>netlink_callback *cb)
>>+{
>>+	struct dpll_dump_ctx *ctx = dpll_dump_context(cb);
>>+	struct dpll_device *dpll;
>>+	struct nlattr *hdr;
>>+	unsigned long i;
>>+	int ret = 0;
>>+
>>+	xa_for_each_start(&dpll_device_xa, i, dpll, ctx->idx) {
>>+		if (!xa_get_mark(&dpll_device_xa, i, DPLL_REGISTERED))
>
>Hmm, did you consider adding xa_for_each_marked_start?
>

Sure, can add some helper macro here, altough we probably need to add it to
xarray lib.

>
>>+			continue;
>>+		hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).portid,
>>+				  cb->nlh->nlmsg_seq, &dpll_nl_family,
>>+				  NLM_F_MULTI, DPLL_CMD_DEVICE_GET);
>>+		if (!hdr) {
>>+			ret = -EMSGSIZE;
>>+			break;
>>+		}
>>+		ret = dpll_device_get_one(dpll, skb, cb->extack);
>>+		if (ret) {
>>+			genlmsg_cancel(skb, hdr);
>>+			break;
>>+		}
>>+		genlmsg_end(skb, hdr);
>>+	}
>>+	if (ret == -EMSGSIZE) {
>>+		ctx->idx = i;
>>+		return skb->len;
>>+	}
>>+	return ret;
>>+}
>>+
>>+int dpll_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
>>+		  struct genl_info *info)
>>+{
>>+	struct dpll_device *dpll_id = NULL;
>>+	u32 id;
>>+
>>+	if (!info->attrs[DPLL_A_ID])
>>+		return -EINVAL;
>>+
>>+	mutex_lock(&dpll_lock);
>>+	id = nla_get_u32(info->attrs[DPLL_A_ID]);
>>+
>>+	dpll_id = dpll_device_get_by_id(id);
>>+	if (!dpll_id)
>>+		goto unlock;
>>+	info->user_ptr[0] = dpll_id;
>>+	return 0;
>>+unlock:
>>+	mutex_unlock(&dpll_lock);
>>+	return -ENODEV;
>>+}
>>+
>>+void dpll_post_doit(const struct genl_split_ops *ops, struct sk_buff
>>*skb,
>>+		    struct genl_info *info)
>>+{
>>+	mutex_unlock(&dpll_lock);
>>+}
>>+
>>+int
>>+dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
>>+		     struct genl_info *info)
>>+{
>>+	mutex_lock(&dpll_lock);
>>+
>>+	return 0;
>>+}
>>+
>>+void
>>+dpll_unlock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
>>+		   struct genl_info *info)
>>+{
>>+	mutex_unlock(&dpll_lock);
>>+}
>>+
>>+int dpll_lock_dumpit(struct netlink_callback *cb)
>>+{
>>+	mutex_lock(&dpll_lock);
>>+
>>+	return 0;
>>+}
>>+
>>+int dpll_unlock_dumpit(struct netlink_callback *cb)
>>+{
>>+	mutex_unlock(&dpll_lock);
>>+
>>+	return 0;
>>+}
>>+
>>+int dpll_pin_pre_doit(const struct genl_split_ops *ops, struct sk_buff
>>*skb,
>>+		      struct genl_info *info)
>>+{
>>+	int ret;
>>+
>>+	mutex_lock(&dpll_lock);
>>+	if (!info->attrs[DPLL_A_PIN_ID]) {
>
>Use GENL_REQ_ATTR_CHECK(info, DPLL_A_PIN_ID);
>If fills-up the extack info about missing attr giving the user info
>about what went wrong.
>

Fixed.

>
>>+		ret = -EINVAL;
>>+		goto unlock_dev;
>>+	}
>>+	info->user_ptr[0] = xa_load(&dpll_pin_xa,
>>+				    nla_get_u32(info->attrs[DPLL_A_PIN_ID]));
>>+	if (!info->user_ptr[0]) {
>
>Fill-up the extack message please.
>

Fixed.

>
>>+		ret = -ENODEV;
>>+		goto unlock_dev;
>>+	}
>>+
>>+	return 0;
>>+
>>+unlock_dev:
>>+	mutex_unlock(&dpll_lock);
>>+	return ret;
>>+}
>>+
>>+void dpll_pin_post_doit(const struct genl_split_ops *ops, struct sk_buff
>>*skb,
>>+			struct genl_info *info)
>>+{
>>+	mutex_unlock(&dpll_lock);
>>+}
>>+
>>+static int
>>+dpll_device_event_send(enum dpll_cmd event, struct dpll_device *dpll)
>>+{
>>+	struct sk_buff *msg;
>>+	int ret = -EMSGSIZE;
>
>Drop the pointless init.
>

Fixed.

>
>>+	void *hdr;
>>+
>>+	if (!xa_get_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED))
>
>WARN_ON? The driver is buggy when he calls this.
>

Fixed.

>
>>+		return -ENODEV;
>>+
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+	hdr = genlmsg_put(msg, 0, 0, &dpll_nl_family, 0, event);
>>+	if (!hdr)
>>+		goto out_free_msg;
>
>"err_free_msg" so that is clear is an error path.
>

Fixed.

>
>>+	ret = dpll_device_get_one(dpll, msg, NULL);
>>+	if (ret)
>>+		goto out_cancel_msg;
>
>Same here, "err_cancel_msg"
>

Fixed.

>
>>+	genlmsg_end(msg, hdr);
>>+	genlmsg_multicast(&dpll_nl_family, msg, 0, 0, GFP_KERNEL);
>>+
>>+	return 0;
>>+
>>+out_cancel_msg:
>>+	genlmsg_cancel(msg, hdr);
>>+out_free_msg:
>>+	nlmsg_free(msg);
>>+
>>+	return ret;
>>+}
>>+
>>+int dpll_device_create_ntf(struct dpll_device *dpll)
>>+{
>>+	return dpll_device_event_send(DPLL_CMD_DEVICE_CREATE_NTF, dpll);
>>+}
>>+
>>+int dpll_device_delete_ntf(struct dpll_device *dpll)
>>+{
>>+	return dpll_device_event_send(DPLL_CMD_DEVICE_DELETE_NTF, dpll);
>>+}
>>+
>
>This is an exported function, documentation commentary perhaps?
>I mean, you sometimes have it for static functions, here you don't. Very
>odd.
>
>Let's have that for all exported functions please.
>

Fixed.

>
>>+int dpll_device_change_ntf(struct dpll_device *dpll)
>>+{
>>+	int ret = -EINVAL;
>>+
>>+	if (WARN_ON(!dpll))
>>+		return ret;
>
>Rely on basic driver sanity and drop this check. don't forget to remove
>the ret initialization.
>

Fixed.

>
>>+
>>+	mutex_lock(&dpll_lock);
>>+	ret = dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
>>+	mutex_unlock(&dpll_lock);
>>+
>>+	return ret;
>>+}
>>+EXPORT_SYMBOL_GPL(dpll_device_change_ntf);
>>+
>>+static int
>>+dpll_pin_event_send(enum dpll_cmd event, struct dpll_pin *pin)
>>+{
>>+	struct dpll_pin *pin_verify;
>>+	struct sk_buff *msg;
>>+	int ret = -EMSGSIZE;
>
>Drop the pointless init.
>

Fixed.

>
>>+	void *hdr;
>>+
>>+	pin_verify = xa_load(&dpll_pin_xa, pin->id);
>>+	if (pin != pin_verify)
>
>I don't follow. What is the purpose for this check? Once you have
>REGISTERED mark for pin, you can check it here and be consistent with
>dpll_device_event_send()
>

Fixed.

>
>>+		return -ENODEV;
>>+
>>+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
>>+	if (!msg)
>>+		return -ENOMEM;
>>+
>>+	hdr = genlmsg_put(msg, 0, 0, &dpll_nl_family, 0, event);
>>+	if (!hdr)
>>+		goto out_free_msg;
>
>"err_free_msg" so that is clear is an error path.
>

Fixed.

>
>>+	ret = __dpll_cmd_pin_dump_one(msg, pin, NULL);
>>+	if (ret)
>>+		goto out_cancel_msg;
>
>Same here, "err_cancel_msg"
>

Fixed.

>
>>+	genlmsg_end(msg, hdr);
>>+	genlmsg_multicast(&dpll_nl_family, msg, 0, 0, GFP_KERNEL);
>>+
>>+	return 0;
>>+
>>+out_cancel_msg:
>>+	genlmsg_cancel(msg, hdr);
>>+out_free_msg:
>>+	nlmsg_free(msg);
>>+
>>+	return ret;
>>+}
>>+
>>+int dpll_pin_create_ntf(struct dpll_pin *pin)
>>+{
>>+	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
>>+}
>>+
>>+int dpll_pin_delete_ntf(struct dpll_pin *pin)
>>+{
>>+	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
>>+}
>>+
>>+static int __dpll_pin_change_ntf(struct dpll_pin *pin)
>>+{
>>+	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
>>+}
>>+
>>+int dpll_pin_change_ntf(struct dpll_pin *pin)
>>+{
>>+	int ret = -EINVAL;
>>+
>>+	if (WARN_ON(!pin))
>>+		return ret;
>
>Remove this check and expect basic sanity from driver. Also, don't
>forget to drop the "ret" initialization.
>

Fixed.

>
>>+
>>+	mutex_lock(&dpll_lock);
>>+	ret = __dpll_pin_change_ntf(pin);
>>+	mutex_unlock(&dpll_lock);
>>+
>>+	return ret;
>>+}
>>+EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
>>+
>>+int __init dpll_netlink_init(void)
>>+{
>>+	return genl_register_family(&dpll_nl_family);
>>+}
>>+
>>+void dpll_netlink_finish(void)
>>+{
>>+	genl_unregister_family(&dpll_nl_family);
>>+}
>>+
>>+void __exit dpll_netlink_fini(void)
>>+{
>>+	dpll_netlink_finish();
>>+}
>>diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
>>new file mode 100644
>>index 000000000000..b5f9bfc88c9e
>>--- /dev/null
>>+++ b/drivers/dpll/dpll_netlink.h
>>@@ -0,0 +1,44 @@
>>+/* SPDX-License-Identifier: GPL-2.0 */
>>+/*
>>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>>+ *  Copyright (c) 2023 Intel and affiliates
>>+ */
>>+
>>+/**
>>+ * dpll_device_create_ntf - notify that the device has been created
>>+ * @dpll: registered dpll pointer
>>+ *
>>+ * Context: caller shall hold dpll_xa_lock.
>>+ * Return: 0 if succeeds, error code otherwise.
>>+ */
>>+int dpll_device_create_ntf(struct dpll_device *dpll);
>>+
>>+/**
>>+ * dpll_device_delete_ntf - notify that the device has been deleted
>>+ * @dpll: registered dpll pointer
>>+ *
>>+ * Context: caller shall hold dpll_xa_lock.
>>+ * Return: 0 if succeeds, error code otherwise.
>>+ */
>
>Again, I'm going to repeat myself. Please have this kdoc comments once,
>in the .c file. Header should not contain this.
>

Fixed.

Thank you!
Arkadiusz

>
>
>>+int dpll_device_delete_ntf(struct dpll_device *dpll);
>>+
>>+/**
>>+ * dpll_pin_create_ntf - notify that the pin has been created
>>+ * @pin: registered pin pointer
>>+ *
>>+ * Context: caller shall hold dpll_xa_lock.
>>+ * Return: 0 if succeeds, error code otherwise.
>>+ */
>>+int dpll_pin_create_ntf(struct dpll_pin *pin);
>>+
>>+/**
>>+ * dpll_pin_delete_ntf - notify that the pin has been deleted
>>+ * @pin: registered pin pointer
>>+ *
>>+ * Context: caller shall hold dpll_xa_lock.
>>+ * Return: 0 if succeeds, error code otherwise.
>>+ */
>>+int dpll_pin_delete_ntf(struct dpll_pin *pin);
>>+
>>+int __init dpll_netlink_init(void);
>>+void dpll_netlink_finish(void);
>>--
>>2.37.3
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
