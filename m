Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5D445C2A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 23:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F4A44061F;
	Thu,  4 Nov 2021 22:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JdgzNUEJ0kSN; Thu,  4 Nov 2021 22:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BF6B4061C;
	Thu,  4 Nov 2021 22:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D43CB1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2CC981AEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2pPtMJuK2Mk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 22:37:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 380E681AD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="212552144"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212552144"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:37:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="498156757"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2021 15:37:25 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 15:37:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IF8zhpGSg/ysQL9VWvsu1k7BRMU1nQeacMVku3A49xFBudONPPKipiZVsssOj5wzrmFQJH7BrCoYXfElB35f79AJMxCsteXj4BkVl/BWuHg81OrdqTioGFYSBQmBoNpm9eylB9buYfVsCM22bDik3fmKCuBVvPbUi4vE5kn1OyGP7nFL4i4OtcodG5wVi1Q3T0cemEsBjcFElUIfaylH/4+dCtK939xBj9h0cFWmpd50wxmopXP5ktzSfwO+ToN3fv3s1Wy9dCL8x0jb79V5myqfgMV09tT2IB0DMY2W3DvJSxBDI8+KeaMIZBw25SkVBcT+443JI9jKFKlMzFOQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m2pciKW9zzcXmnt4FW8lXv6fevBakoBDK70oX5oI4zI=;
 b=l8nl8N3YsTkthDZH80kNTBKQWzMpjrG8DLlvMeQ8VfnZYo3tEaQDHLtf0CxM/vpjrCRiUdVUYhUTT0aSwD/euF9FUkWx/69RWYjmAApRycvWsByOzl/BKChcVCwcDmfC0QDMQJlrRi4Nn05X6KYtOcwvg/w6lCEnmmFakERhozUXlvcvSnPjItFMV+xSETd+15eYHX+ibNzRlKIC1jTC0gloU5TDm3vlxINK16YOCBp2c2HjAGzbf4vZC9lfTr71ttZ/YhZ7/8uZ2xRnWSqAuZkXxg8oVHi/01sEPDlj8f/CSTbOIaD+HZDN22IYaXzcf8I9zOzE4cfi9kcO0h4p6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m2pciKW9zzcXmnt4FW8lXv6fevBakoBDK70oX5oI4zI=;
 b=v9KByRYApanCQMuDmnieaqIudZZnZXhUHkzztV/EH8YE0Pvy7Teizv1uZ9CM7eCoUynpJgSHM8/R9deXQc9kNxsbgu+yG2HSbYsZLTjX8gcOTE3NoLB5+j2MYHS2yp5ho9RyVGoOvJQdJhJEpU9vjQjSnLiyVXbQ3lK9kdmOhjQ=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 4 Nov
 2021 22:37:23 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 22:37:23 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/5] ixgbevf: Improve error handling
 in mailbox
Thread-Index: AQHXbYiFMT/8hp09E0uk5s3hoOjaQqv0vfFw
Date: Thu, 4 Nov 2021 22:37:23 +0000
Message-ID: <MN2PR11MB4224FAD77329C20834B807FC828D9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
 <20210630081532.3069914-3-radoslawx.tyl@intel.com>
In-Reply-To: <20210630081532.3069914-3-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9416a486-f85d-4da9-3086-08d99fe3abda
x-ms-traffictypediagnostic: MN2PR11MB4710:
x-microsoft-antispam-prvs: <MN2PR11MB4710EEE1AB127DBBB643E3E8828D9@MN2PR11MB4710.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Zi8L9MTvEqstc7r5hz0MSfKLeU+4j5xvn4qG872sCWZVz7YWbEVqaqr0UaOLeuEzp2Tu3r6RQR1DlSy2z7+i0R1sfb8HP/KjjoDNPjjMwSawqe1QPtcgtjO0a4zNJmzOL1lVg+pjkI/gpwIc5/rCV5yzZ6cKibg7ApG2loSXZ9EtDP4byFvFCysaVsCPjFhORww/u9dIFROIgcVa6q2EIonLkjrtVD267a5DQhU8zF5H5jmjhP/sgz+FIN49EKuHjV7WLnGXVXXiDLlaZ/bO4Yn8+tHQ6Ft263jMM2bOOAe2yeXpnLiEFjNm7uOGRmtfoQCY2ufwV/j4SQdQQN40x1lqvc6L1ZMV0sdomMPwu6PWzpOwqrYyvmm4Bhw6IFCktnjcdfrWcxu42XXk0Bzp5izOTip6A8sWkXHKI136P3+0Dae0FnuktBkpBAL1kfGwI+Zas6uBSotJJPHZ6C1+sdLiwcUWRFiIAZzNLqsJ1V7hZVDnjWDFHsdA5jcubC5Y2iKn/MppIkdroFRuYFqL2lZGrckwTmRviyotuRmk1XkHGH937WViRHbGgWDZa5lih2yNvKnZ1ogHWWTBWa+dbMgvfTs+U5y9LSlWawK+MIojzH/KJMvOPbvQ+wnNFYMigEozS4JZWIcyg1WAyEaI2owzRzEHVpVldkimt5O10S5BZFRDrNkKUN8WfjjQ+dwoapW9Xov5eEmxBe6pOKnXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(66446008)(66476007)(8936002)(66946007)(64756008)(86362001)(4326008)(83380400001)(33656002)(2906002)(8676002)(52536014)(15650500001)(186003)(38070700005)(110136005)(5660300002)(76116006)(7696005)(107886003)(53546011)(6506007)(26005)(508600001)(4744005)(9686003)(55016002)(122000001)(82960400001)(316002)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?se8wmlBOTfr2zJak2fBTz9I/1IvtBdxmWBt2Cr6nXL2P2lumIM8SbEBK6n6q?=
 =?us-ascii?Q?ik5W0OHU4YwN6rleKdsDZjwSxHpS/Ayl4iprWaeAovjKW0Hw2jVH7G9ZTn9m?=
 =?us-ascii?Q?xFi1etf37xtqVkMod7heKrIfD27whH7BmVx4DrLoQ5Yk/KasS0gawqD2wD8J?=
 =?us-ascii?Q?+iO4D7QIxE6i7opor24sd/cO/Az+CKYp0jLYC+2GbJCdEiyv85DnPdxJgXKa?=
 =?us-ascii?Q?VxO1c59L8bf/Dmgs/y91oTlA7RHzC1pqTrCFqefCkgUrlgtObqyVNdc/8FIN?=
 =?us-ascii?Q?zZ3vlzIWA/7pELpSDcpgrO2bCt9H+STFy2S2p/3ga0+XUdgVtiOgxBiG6frw?=
 =?us-ascii?Q?qgG/Jj5xuFPfbPNjykV7oE/MFlVD9MwwUAa2kwTVBg97FeCwAax2bdXAAH8N?=
 =?us-ascii?Q?eTTVj3UYSWyXCT7K/G3PPGctg3gECjjlsWPcOJV7Zn8+kEULiTTKKyRVtiY9?=
 =?us-ascii?Q?KVlZsU74w25YHxE5LkwPJvYr73MG1iMrVYptbLl8kvWgzRIS9qGZ8ZI3rZTV?=
 =?us-ascii?Q?DkjQHWSnH482Ufatv22iA2hQn8NmZsksG130DtTydpQY3o8WjBnEEb4ZTaup?=
 =?us-ascii?Q?AbtWk/+IJOpV0bJhmetwZwP7Zo5ScbDVfrtV7duY1s2HSGSQTCJAWfh6UuLC?=
 =?us-ascii?Q?fCatSgHFFGVCzfvZ/kSuwqAsKFQrhmtz2lPnrDc1/2sdQ7bmtEnR/RsRWII0?=
 =?us-ascii?Q?T1tyAfk8+0A6LNpVeavm0wQX/77Wl5PTx1/GcEWuyImEc9qo6W4IzzZNGsV6?=
 =?us-ascii?Q?zbdkMWFHK92EV+GbuEsxg9u+uvuxUCjVq4B7jTdtvOY8KNtVMU0qlH1afC2z?=
 =?us-ascii?Q?N7jqOq912w5CIZk9hm5RtyYHfqaEf1/9tVkDuNLaGdHOD9e80/ZlQOwJ7gYY?=
 =?us-ascii?Q?6F16DFscYIFt5nbh+Ne35RMFNvOK85AegQrxtxErMX7NN+zIAJm9nEX800+U?=
 =?us-ascii?Q?lhg7Y664oZ46UzM+dKmG2GbMc4zhnbLYDukngnqCMcKY+9XyiHYbFF1j9CO4?=
 =?us-ascii?Q?Zk2KBsgbNgLAlL1HfwX0g6m4HIIgkN4CbLikc+I24lS7Cr9JSu0wdZI0uI3N?=
 =?us-ascii?Q?ZJ7Y4O9WHHexQnZhJqXMEZLDZghPOgsr0Qc5QP6POVK8w/MGOUF1aWAK22xl?=
 =?us-ascii?Q?ZtdUpL8tlOTm5pxHBUIMhxhQjV12xAMXc7RozbtHaiZJMXz5DpLnwqyCrkNN?=
 =?us-ascii?Q?+99WfBt+GWxL2Glbx4hJxtUp96HFOOu/N9Y1sS10c2CR+FViXUf1zdXbhLU4?=
 =?us-ascii?Q?C942+z85Yt9UnxNIon+S7ZsFOlawpVlGREuyYq2O+Wy4JD3O1Lhfs4kfrbAN?=
 =?us-ascii?Q?lDIk7/jIQiuXRRiJZhMAffzUDKVNKxjAd/024hAhnZRubDmNffHp1VnHI47M?=
 =?us-ascii?Q?nafZnecoExrHRozsfd+xeb9o4f32pWTVLQ4R5mAQ2WqpWdnnL25YqjLxRJ9J?=
 =?us-ascii?Q?ebmid2X/a83zE+qUAxqiJVsB3dEvbrrdQ6QVsHIyM8MuKjiuqwohvhkeokxG?=
 =?us-ascii?Q?0nLJYvSzMdD48jVhg+YJox3dirX0LN2SNSa+bf68+UbXJ9q6hKqVoACUEtOf?=
 =?us-ascii?Q?Qu3vc5Sri9e4jKYJtzrIz0HQz6f33+PxcpqcdTWAnM7GuA/Ke8PProEdfi1W?=
 =?us-ascii?Q?ZxL2t+ZgiWCyqYEmOiMzN43lxACb43JIKS9RQliD8jJVQMwDaLD8JRix/JoZ?=
 =?us-ascii?Q?utdm0w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9416a486-f85d-4da9-3086-08d99fe3abda
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 22:37:23.7572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XqGpRFXTC1I5NyjNZfMl/AeZtStIy0OcJghX35yZhBloyAQm0RBXsLPC8ew7C7vSh8ZUYhPOiDPS9ilzSPJGtstgV7U9AhSgc1Oh0FXb84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/5] ixgbevf: Improve error
 handling in mailbox
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tyl, RadoslawX
> Sent: Wednesday, June 30, 2021 1:15 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 2/5] ixgbevf: Improve error handling in
> mailbox
> 
> Add new handling for error codes:
>  IXGBE_ERR_CONFIG - ixgbe_mbx_operations is not correctly set
> IXGBE_ERR_TIMEOUT - mailbox operation, e.g. poll for message, timeout
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/defines.h |  3 +++
>  drivers/net/ethernet/intel/ixgbevf/mbx.c     | 14 ++++++++++----
>  drivers/net/ethernet/intel/ixgbevf/mbx.h     |  1 -
>  3 files changed, 13 insertions(+), 5 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
