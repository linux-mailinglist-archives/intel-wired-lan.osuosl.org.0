Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D68143F900
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 10:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7493406D0;
	Fri, 29 Oct 2021 08:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vXFCyHUEuyRz; Fri, 29 Oct 2021 08:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5C28406CB;
	Fri, 29 Oct 2021 08:34:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 611121BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:34:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CA8260B62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Try606PFB7oU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 08:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 918F860B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:34:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="291456761"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="291456761"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="448302647"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 29 Oct 2021 01:34:19 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:34:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:34:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 01:34:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 01:34:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORzIQ8eaCR25ZuG/Fg3gxcw5PZ9q+gbraPocS6/v+/oHYw41brOApWM6YSzh7aQKP0wLwf1VRvqAkVlQM+v6lRWbsGjQD/gYG2JDxO/sitX7ePU9i2U/mocWhfNM6rle2B1H0XzMsHnIEAJU/xH0BgVQF3meKS8fC0PlKVce8l8R4QOkkrTwr/1nf53y6l68+d9+u/Nj0Ugipu7AkkfJFCApOl9o/h7Hq8RDatLVMdW5KxWpe8JUIisn8XCiIz3d/inZslE046O0p+f4m+b3yJMIrGFLZkk990laqRwTmdKJDWNTOUW52SE/0Eo05Dkx2rV+ERByDcMLXZQFJOaj4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7tW736L0Qr9yc+d++WZCp8axIhPRQiff9P6r3Th1R8=;
 b=oTOwDPFLIQeupEbYuEhBNk5J82uImdbMenHpX8qM7zULXUO4WzSKzyYXha3/YRNp9cMy3vSgtXMJFiQF2oMItdlqhjDRVhusR47hzdw566LAqL6dAQiKd81PaYzavC6WLlCBUF/opHltzzIyWKI9ET7eTDAwtaxkML8/ryUxzhxLwslFEPtkL/ngkChJOE4kT3DQtFOcE86gq3O699DpEf/YnLgxLGruWb6EcOplXbhI7T0oyH+ZDpnW/0dIMHOHH7GsIvbfkG9WmDqJbQO4StEqrBig9rDImc4uixtbSvKy8Jbl1ixlbRNfu7vK46FOia5EBpWL6OuVi3OX1d//5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m7tW736L0Qr9yc+d++WZCp8axIhPRQiff9P6r3Th1R8=;
 b=qgBmBFTEFw46XKyJDRG4xIGlYMOQuLxsErzxbFcflOlyR/Ly7slIfqyEYsaCYxZ/SobvpYjcbHpMGeH9W+rwYTouJ12QCHSg4TOWSf1wfgoltCmXnUhOMUkmnhLGdls52RfaNDMb1EAzn0G/4HbczPkVNBunUThHZkyMvkXEPHk=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 08:34:17 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:34:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/7] ice: Remove enum
 ice_status
Thread-Index: AQHXu8kzNAeuqHAN5EmsD00lT5XgH6vpx0wA
Date: Fri, 29 Oct 2021 08:34:17 +0000
Message-ID: <BYAPR11MB33678FF494E6B27A064F118CFC879@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-5-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9319f9fc-5697-4c45-ac69-08d99ab6e580
x-ms-traffictypediagnostic: SJ0PR11MB5199:
x-microsoft-antispam-prvs: <SJ0PR11MB51991649F20883ADCDAE630CFC879@SJ0PR11MB5199.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:194;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ed5KnISX7nGnu+UlXut9FX7omFdpcqHRKpb4Mq+ewFSeYrPBSuZiVIfa7NnBlSHbmE9FeZ+748F+76gF+eN65mGfM31Hy7gYnacOW76N/Lxk3rfYmXAUEvPy/HJC1UX7pwkKTasWkrqvq00I5qBYkpjucPafn7PHQye/Fr2fV29ekFEOTXD0iDF/3f8wHhp8LTB610Jh9StvJQReipUeRMGgm+RmbW2z/aTnYuLgqilpwEoi5Xyx7bSAEYj1UJZ5Rd2uxElOVxELbwrvdddPeSjcUhYed5Ui8/0pkTMW24yRH4yg1xpdgXPwdSJ+QXFyunMo+HacAonoqsm5Qx8F7K8lXy4HrxaC0sPwDk5vjEB7C2vd6jANpyyArCne9+FLMg2dAiZlivH9sKDdG0g6YVfzW62/JpZA30af5D5sstMRfbOpfbSO2jdwA6rlnyK0gr+YXafHN6m+tOllRvmDqHu11yiEXqAF1gZjnzLKIXgpPKPI7mEnCFjrWDsiLUPnlKLr43pE9ouDRSTBt/bIMxLmwx17uZUwvHyr4eMJUJ8AtdHtpIdFpxyLJYAFGrGCWaml1uZtgHQlBZLr2QJEPn9ehqNdksGWOPHU5yGz+eClrNZ2C0JQhFadPhrXvGZz6F27gMEPczvE7ah5u6WQNhbmDrU6vDL0l7g36FVJ0bCcCN8Hirnh32RTqAcW48+JYfCoPyr3s0uZnHcMfmagOQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(86362001)(76116006)(71200400001)(122000001)(38100700002)(33656002)(82960400001)(9686003)(7696005)(110136005)(26005)(66946007)(66476007)(2906002)(66556008)(64756008)(55016002)(508600001)(53546011)(66446008)(186003)(8936002)(52536014)(6506007)(8676002)(38070700005)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XbqrRHlh4e5UYot2WD3fiO4iqL2BWGsnNbTJoGTe5WP9uBMBWqe6YRsG/r2Y?=
 =?us-ascii?Q?jo2o8l5++Lfae7YuEeq828aEZ+I+a6+sy9NF3btyBmAmqua3JUzmwEmf5HNM?=
 =?us-ascii?Q?4B+cjrJIO/HnUMAUeAjuLi5ya4TA0PcTRQ122skldJT5CX763LT+5C1o/w/C?=
 =?us-ascii?Q?7AH11fLw5B0SY2mMoB6NMHfnr26XE51Vh7esABa9nawa1PECnLdYK4tx0Jum?=
 =?us-ascii?Q?RUjISo1MlhsRhskVvFA96u0fpZM8xE2+hdCfBjmIemvy4lY0Ps9xXW2uPPpZ?=
 =?us-ascii?Q?clBMxd2NJVv76kZQigV/nF2yxMWMq+7z7D9elmhe/q8JZcRtdhfToqveTdlH?=
 =?us-ascii?Q?1Cu6t5QDbJiOc0gUbW52S8/p4FEJIsslGIooLyWqgmjJ4tV5IboMPjFa9fkr?=
 =?us-ascii?Q?s4zr3Q+eEHY7Txoplyz/HCWDFdTMM1kewa3yk0JSYwqL654IXU2LA1IyMcpp?=
 =?us-ascii?Q?sU+8pjnjq9j6cNZOl7OtySDJ8hLqIkv9sA9kpmu+q3BBsB03dzcbpp80IohZ?=
 =?us-ascii?Q?E/uchVchoj5W95/h6/6z64OyDQKw/NecUF6hLKIEY0ybj/jbhmK2YS5Wquju?=
 =?us-ascii?Q?txe+uHaEiuH5NsCz6IUZUNG7ED5PGt9T2H10JgYigHa1NSwe39IEl72HvuJD?=
 =?us-ascii?Q?OJhuvVrWv0gf8uibAy9gvSKG/uXCdaLIyu2R2c/n8gZPPnVtHaJDQvcSkkNI?=
 =?us-ascii?Q?M/lBIxeRHsvXc6kFy54CZs3Vre7uu0pYSXBk9YLvz3nvBxha6zVF3o2PHOgZ?=
 =?us-ascii?Q?8sf4jtSd7myFME+3n2Wxxz9C9Crv6ZLXx4ttR1j/5W4zfDmIl+Wt7c4pu/6S?=
 =?us-ascii?Q?d3jxn0LhdWVRHD5fWbMhVnKPAZONu//1eupSWy6i5XPALpYZZeEM2vS9KqR+?=
 =?us-ascii?Q?oxam9IDSPSqCnMzg5XywqbvVFa7TYZ689VcoqzqHP5gxj9pFwjXU2jgrk4Kh?=
 =?us-ascii?Q?unZeAroe9dOsl5mCRstrVAIkoAq0qKXfBiUDYF1ggWz+BRi+hbBelMEciq8T?=
 =?us-ascii?Q?pBeLExMLgLtPG83TNWxHP4DzgVidYiNM9Rd0plG04fDjiq+Oa1PqaX3gIzh0?=
 =?us-ascii?Q?ZqjTUlNSqDEzrmDV7Z6dGX014L3WIGNzBxWXDc3khABdiXM9xnp3eb+g1Xtp?=
 =?us-ascii?Q?vmh7W7gVsSbyT+3WLcq5t67osLKdEQqgC2QZe/lf3GGkqz4K7udzLfYnN/Yl?=
 =?us-ascii?Q?fKLSnzSx5dii2aRcouGYLwKNnGab3MVsl4Imqo0dz04vkMzvX07InshEMa7G?=
 =?us-ascii?Q?hYarmVpq7Ln5oh/BUwKnHBS4zUCKDpA9/QMUUwusYUpft9LyaoJCH7yb5UNH?=
 =?us-ascii?Q?+rDKTRJjDc3doRaaGcd5XjWjbUQCy52qITtRbgrAdE2Hu3MsTJfGLVvctWC2?=
 =?us-ascii?Q?gLa6VTGhs7vQ7jJSeHdROU3RQEgjU/RraLd82AD9htcz7Npqx2oZwNw+5MIc?=
 =?us-ascii?Q?6mDYLu5NnzQ059fqbLf2sITWtcExdERewoZJMldHVBWXdmtbQn0kACOI5U2e?=
 =?us-ascii?Q?xqOB6AqeKE8XIahSjNpifqoKvzChgzUJhJX8XM9UDbgZ6NVjbKGvmJ85JU4q?=
 =?us-ascii?Q?l9ls5ZLgzrrH35o/6Y6ZJxpOuvac7+YgL1kKKClyJNsLgpkK+wgVJqE2IqhX?=
 =?us-ascii?Q?KQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9319f9fc-5697-4c45-ac69-08d99ab6e580
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 08:34:17.3317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LF+aEpzIc32nRcv3dKwY4+m5ZwMYSpvWgVpWhY4lWL8MNxg0sR4D4UEWZYhO36OIf4PJCgBV8PwmQ9g9tRIW3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/7] ice: Remove enum
 ice_status
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 4/7] ice: Remove enum ice_status
> 
> Replace uses of ice_status to, as equivalent as possible, error codes.
> Remove enum ice_status and its helper conversion function as they are no
> longer needed.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 192 +++++++-------
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  62 ++---
>  drivers/net/ethernet/intel/ice/ice_dcb.c      |  31 ++-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  10 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |   8 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 194 +++++++--------
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  74 +++---
>  drivers/net/ethernet/intel/ice/ice_fltr.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     |   4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  37 +--
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +--
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   8 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 186 +++++++-------
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  26 +-
>  drivers/net/ethernet/intel/ice/ice_status.h   |  44 ----
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 234 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   8 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  24 +-
>  24 files changed, 568 insertions(+), 654 deletions(-)
>  delete mode 100644 drivers/net/ethernet/intel/ice/ice_status.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
