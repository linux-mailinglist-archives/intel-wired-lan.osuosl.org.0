Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FE24D5138
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 19:14:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 683B840B74;
	Thu, 10 Mar 2022 18:14:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMh2jqYDYUHE; Thu, 10 Mar 2022 18:14:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FEEB40B73;
	Thu, 10 Mar 2022 18:14:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 956501BF3BE
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 908CF415D6
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ch4Gbg4qiv_z for <intel-wired-lan@osuosl.org>;
 Thu, 10 Mar 2022 18:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51B58415AE
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646936056; x=1678472056;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+7xDWbVjXwLMEuhQw/tVv+Znts6IJOZQmyVJVheXWnU=;
 b=CyfeftsMZvyuhJLrUXiKytIz+ELxTdO5yCwyJOQozxGoZmGekCvst2yZ
 TJZI03feX0KHZWLeJoZ8rMgtiXBhc2Ud2V6fhXNzCpzITUE+fzD/5UJev
 kqnvdlYHQFtSN8abvdrtELqOBDZ6d2hqk52wYh7b8TPotunOO1a2T4xmO
 aTL5nm68xLeDlrAY+Rf3Xa2gFjwQudorL1CCgFAgH/GP7cy2t+VhA73To
 36ilQxEUu9Cl5QkVi5pTtH1UrS6sHhTYudhWZ+0gwhnesocDAnBTnxrpb
 s8KHGLQbBOlcrdxXLpHEVD7cNPYKxne0wi7KVZ7Fhrzl5U/dMqUP4e23R A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="237499365"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="237499365"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 10:14:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="554771352"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2022 10:14:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 10:14:14 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 10:14:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 10:14:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 10:14:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0uwvoM33/2x6XWSyaxUQBMbkOYcWhgO+/pLILfUyfWrCxvpbjwilzPBZcXJmwfzywGNu3fPm9qm2ANwk7FSSIbJg/4kO47EBitikIavULYWICcQub0G3tdGkU/3ygb/qjEp4hmOQceVoAduEr8is3O5OdvJRjDV5nSzbkFBB6d4crN3GQKmiE1WRbn5QQstJVHUjv5TWqNvlGx8RXHJIkiCz6Xj6diZA5LAnhZxjE3fKFPjc3W5I1g5PLnaVs2bc67EAtJEUsXvdbCuRG+sy0cqauyr9WwWxojR8885VXWuiLaXtN5t+QQUn45DCFOLkuf62AIbfrO6HLI60HTYJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zwsDhfkze2TKDov8VpdyYO3VdsfOWU8jIrlXKNhv0Y=;
 b=DXoeZvpa5vcRAg1OP7phYw/py0EmRlKi3DIcRLxaMBe41gIPlsowWfOEmcLufpz9ZiL8I3hgHRCSdbOrM5CqsZ6RYCY0u10XtyvI9MBQ1adsNdU4DWsTDgGWPPNjaUOrt/q8zdBoECR6aEg+E9N5It9DZ/AMSs+QkXkn3LSxnZJUVizN6Lxa2asDwP6Jnf+a+qB1jqgp+rdAsgTNnEARkMxr9fZPdJrBibIjmiQA1l6VmDtxI58TR3gtMfNC6awDNzPEL9ytvmn1OiUUF+kGF9cOpbtPHhVe0wyLHrfmr1xXaK4VKRalrZeTtQy0Yk3AM3nlxzgVVmKOQznEME4bCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MWHPR1101MB2238.namprd11.prod.outlook.com (2603:10b6:301:55::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Thu, 10 Mar
 2022 18:14:11 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177%5]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 18:14:11 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Add inline flow
 director support for channels
Thread-Index: AQHYNGt/ibhQ7xMIwkWEi5TCL6vqd6y4610g
Date: Thu, 10 Mar 2022 18:14:11 +0000
Message-ID: <MN2PR11MB3614BDF434FF5770804A67F58E0B9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220310103959.369773-1-sudheer.mogilappagari@intel.com>
 <20220310103959.369773-3-sudheer.mogilappagari@intel.com>
In-Reply-To: <20220310103959.369773-3-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14279e3a-c9dc-48bb-dedb-08da02c1c6ed
x-ms-traffictypediagnostic: MWHPR1101MB2238:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB2238F4BCA3F7E28ACF731CEB8E0B9@MWHPR1101MB2238.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D63G4OVHpnY2jgjdQJk/gdjsBOOtFxOSC7ug2nj+QeZThdrE4njZqAO+lpdZdkFcz7TA4vLODQPV03Hq4GlQEmwfwpQtalaX5sd3QiETSXzfFcA+p0tG8I2Biu+qaf5LFjhSWR8rKmuwJneGjLMukcBj6BBRg5d2zBItE1YL01QGO8Ce2ehqMx8AXEovEWrkfDSEOmsCzmFCcCGjnkXUXdF7G5dhbNBm/0TI+2nqNqxJ/vxASl2M3DwR8YXstS/DNddxNRVAazkAUGoh7lYarRKYhJps92x2BNkJMKANUlwS2Js1P2Q1zZEamgsWnlrS+i2llOywntExzeHRBXOwb4VDGxsPSGTj9Z1GRK8Lt/3jUg5ERlLvJ+IXNpF/78PbvMzMxg9KrGjTneg2QHyRVSmdU7DTK2l3pjsA0iRMeXe9Comlx7+cSljBMTXfzfvIfypQUocm7EVjl2C4iOMbRYT8Lm1cVAXb6v5qLv55uzlCuDRNoThyzJTra15iuv5ip/WIptryeSeiAEAD1krp4kixSqW7qifBclKulrZUfh75IAsTQSmGDjmZvDvKEoDEWLwoa2CIRjH7IAxbpXTqyPyvq2U1uw7SfgFeBfqcrS51Lf6s71T1yfvkoNDikQ5wJajDAkbDoITIz2yltyO2A/ulClLq3MO3to6Do2ak92fUej6DF/s8W8yYkUNZqgXtCIyfiloQfEGRjl2rGle4hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(64756008)(6506007)(7696005)(76116006)(66946007)(9686003)(55236004)(66446008)(508600001)(5660300002)(8676002)(66476007)(66556008)(86362001)(316002)(53546011)(82960400001)(6916009)(83380400001)(122000001)(38100700002)(186003)(38070700005)(26005)(8936002)(52536014)(55016003)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i7fDxXvTDSbQAEWxWDOyGoAw/EwUxInWkPzmwbQTWo2uOF3I8vZOxTONXwak?=
 =?us-ascii?Q?t/YPTc+asSV/JokCkCmq6PyjP4eFu8dP8HnK64Y5VjtyiZTLE8DFyUTMJCHK?=
 =?us-ascii?Q?wDfnVrD67tQf/dplek+sJupfLSYDtwCjJ0/cJx5jMn3n3DvwSmq5kQ0zSKKP?=
 =?us-ascii?Q?gzSHoTwLHFDXlKTPtLm0pTGj/GWPWQitmdAG0KA8G298FBvNTe8+XsyqHIZZ?=
 =?us-ascii?Q?agB9R1HUrmgWgZGoPAZwT3qhaQ6YCX0HEuRzWOFTIAmfzoJX1yq3MtZp2gJN?=
 =?us-ascii?Q?97E4M9wK+M1oXQoewkbpGN4pgzotAXRgNdC/befl7HGOPWw1gEDFsasvKirJ?=
 =?us-ascii?Q?0sSM02SeEhTChXFuDFye3XqnEEdaawwq38LljUiz1Loe51W8YJdED7cbJAm7?=
 =?us-ascii?Q?I0gKH+dqbAZzSRaEoGfuJKtyacaaS0BppGYRtcH3TT/w7LwXOqknoz6UuiYU?=
 =?us-ascii?Q?8haisYTgoityIlPCKHQdWwo0dgfRdVKQ3HF4zySwNBni3+eKZqNkiiQpbCoO?=
 =?us-ascii?Q?+nYE0A78oEAhe+YU5QQL2i6ciFlNawitRk+ftnwgKMOskG5u/NkxOjAi2lLw?=
 =?us-ascii?Q?G1UH+S+3fIqUOTFSVHOcFSuo+oDSUbvsgGPHuqmd+U4zhcD7BAX84u8UFJ/u?=
 =?us-ascii?Q?sA6hxB8T/bu2OPMps5dVHtWfWup/WTlzt4/6BeA8wOq/0L/q1ImqKb4+JlYa?=
 =?us-ascii?Q?sB6B5PGS/pgKYXycJTvNENUpqtXhabpZh/zUkKLsr/HSelQe3k6hyahl0sDE?=
 =?us-ascii?Q?rBCgsU8SqA9OFg90gkS2FpYDBbriaPfXCRhyXhIBFBGsxUY7GeYjM27AuqgJ?=
 =?us-ascii?Q?n4RkUbAKGoxtfHXOKnGCaHNR/MIkguZ6hGi25dUSC71YEpJ3aEQTdXjexZvx?=
 =?us-ascii?Q?7AnGTOQ+OqsvenFq67XIqSaEO8qvyJLv/bkvWkYijm7K0Xhda9LesRnH+vY9?=
 =?us-ascii?Q?QibCE72gwUtz3HLxCOrFNJsnnAoYAKtU3J7Cef0q1xr6Ds623Awx0YCR2HmZ?=
 =?us-ascii?Q?W+qEff2+ik+OsgO/50fQHhAxhtdKT+5eSHfy9ENB/HnUdjmRfr1CFld5Iayf?=
 =?us-ascii?Q?re1kRDGdxvu8PZR6Lk/dM1vWkZLPf6NvTtrAC1DzS2IHUETQfSs4kJHawUhy?=
 =?us-ascii?Q?Q6g53wqj1IlfybciJQuT+7HuQXhhJHH/Fg46GEP+yYOJLZj41/mh/R0XSg33?=
 =?us-ascii?Q?JJi1VctGE7SuHKOBBn3dP/JfBwkr6j1ZHwJTjIGa1nnWvVs7trQyWGpg6uHQ?=
 =?us-ascii?Q?Era1mb4zGSWpitOtXuIQDCGM3T7Obv/JHlQzjMZ93fMJwMlBqOmuZoWbpxZl?=
 =?us-ascii?Q?wPw+1s8m1IcbHg12WyJmTiyUUqS5c7X/tULuR3WQGF3BKFnva5mAH0/PAB1/?=
 =?us-ascii?Q?z2/S/xhxDl5OupGQrkA+qAJJOtoFLahv8AB+tqkYQuXxz/rkO0mGsVgSpDLx?=
 =?us-ascii?Q?oYAXjj6AG6pIatq5Mnqpi/xQjqNRyWz/DhF90AeBmlyFfXHilsHPXw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14279e3a-c9dc-48bb-dedb-08da02c1c6ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 18:14:11.4674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8edVOXX5arasMkmjUS/ujxk25J0HZa7u9xuwZaaO/lDYDXEPWbMh+KW1xTEfZPXvrO17Z9Zm8L64e/gVYZKiXT0A1QP1javTJaAO6Fakqfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2238
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Add inline flow
 director support for channels
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
> Sudheer Mogilappagari
> Sent: Thursday, March 10, 2022 4:10 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Add inline flow
> director support for channels
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Inline flow director allows uniform distribution of flows among a queue
> group (TC). At first, a queue is chosen at random from the group of queues
> for the first flow and subsequent queue is used for next flow and wrapping
> around as needed.
> 
> Inline flow director can be configured for each TC via devlink params based
> interface.
> 
> /* Create 4 TCs */
> tc qdisc add dev enp175s0f0 root mqprio num_tc 4 map 0 1 2 3 \
>              queues 2@0 8@2 8@10 8@18 hw 1 mode channel
> 
> /* Enable inline flow director for TC1 and TC2 */ devlink dev param set
> pci/0000:af:00.0 \
>         name tc_inline_fd value 6 cmode runtime
> 
> /* Dump inline flow director setting */
> devlink dev param show  pci/0000:af:00.0 name tc_inline_fd
> pci/0000:af:00.0:
>   name tc2_inline_fd type driver-specific
>     values:
>       cmode runtime value 6
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  82 +++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 130 ++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 +
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  25 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 173 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 294 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   8 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  13 files changed, 729 insertions(+), 7 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
