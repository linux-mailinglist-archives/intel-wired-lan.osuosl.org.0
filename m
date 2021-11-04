Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 369B4445C29
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 23:37:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF23A4061C;
	Thu,  4 Nov 2021 22:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1f-MQOqH8Edk; Thu,  4 Nov 2021 22:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0838540613;
	Thu,  4 Nov 2021 22:37:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781521BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7362F60BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJlPU3jr2TiC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 22:37:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D36E660B9E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="218706856"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="218706856"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="561735246"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 04 Nov 2021 15:37:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 15:37:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2dI2xsHJVN5KZwmxvasTK5V/O3GZrC43Demr0xuNodBlo3rZemkvQ8q01xq9/pIqvvkkrFdeSJBH5rP/mtbLuTAn0OXL6sNjx9X5COoE3CEKgqa+zoqnAH70PgbHK3qZWweH+RWBkPAGvR2Lf+UFJ1X7+F6gG3dVtujn760JL3ugmsIwVpEIvpVwJghZko1ZfCEKesPcLNKrpp2oQJXuM/Jc5vJz6UxjOlreaU9K/GyNEoyp1gZSEgbW8oz6lTM6jEThM/qXpuTO7hV/CseIptOMyuB2G8Th3kKcGeul1/j43SFU45NVHk0pE+lsWtvKOPng6Fup6oRIi6PP0kR2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UrHAqQOotxeT07z3VPsdcqWj4+Rfg1elIM3aLrcNBU8=;
 b=kCc/CBqStEf733VNxY9Q1B3Dfhcn8wc6qz0yK3FFDXEgyShsTavBhY0Um4XVC+X44/ebKetzzGbdvVj/24hOeQoR9lB3dLgM18k+atWsjjFC7uU9tUSjiYvat8ZCXkcuCRPywms6FkVS/oAKIZrC+SeGIM3YbJFRNI4W6AWwwwvIcWdp3jL/O80NTXvEFzA9+X3vubKShava6FL0JNyMg3ApvHDqht2IaAWcoz4zMt2Uf6zPlbGVSrHjkiKYLUUuL3ZO8KB5K//BGgtFaaBaFQUzZvY42OtX3zlNOLh49NylQMPppKtRykHTH19Ob+KQUFuqPT+1QTni/h54BatHPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UrHAqQOotxeT07z3VPsdcqWj4+Rfg1elIM3aLrcNBU8=;
 b=QweDELhRvLJ7vqDwH57a2dVa53hNUMsNRziMhf8pKP+A7rM7iayT/mPSsUjb7YonehcXH+f6Pp/cL7WFw0eNj93bHXPUmgx6qgiGQSqxtBzqGM4Vsdvir2A1LkaxD+YvrfjnWcDo8MrNxfKx/DOu1c0qslAKgPOLV5gobJ7LglY=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 4 Nov
 2021 22:37:06 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 22:37:06 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 3/5] ixgbevf: Add legacy suffix to
 old API mailbox functions
Thread-Index: AQHXbYiHoC7j/Mm/Sk+eDQKhZL8Czqv0vdwA
Date: Thu, 4 Nov 2021 22:37:06 +0000
Message-ID: <MN2PR11MB4224D43B7CDCCC1DEDF6C9DC828D9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
 <20210630081532.3069914-4-radoslawx.tyl@intel.com>
In-Reply-To: <20210630081532.3069914-4-radoslawx.tyl@intel.com>
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
x-ms-office365-filtering-correlation-id: 27d45113-d835-482e-5d34-08d99fe3a189
x-ms-traffictypediagnostic: MN2PR11MB4710:
x-microsoft-antispam-prvs: <MN2PR11MB4710F002ADDB89A55B69D67B828D9@MN2PR11MB4710.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4vZRjyb548BffUvSAafyGVvQCPjp/AQqla+yN8ZjUnONm/yrPWkO107UXvjf+jG9KdaHH90MdOVnOCSNrWQWnmS048GuTnxitvk+bPrXu1eRp8Gca57EEJM1NsRCYzqTiEDLQOHELQhnYmQl1J6O5iImpx5QecKzyI3sZ5pxxjxKnUUX87vIWhUnRnaEHgNm2FKP8LuCfV8WHKolQ9ngnyhKQTH/odHVOYuDlOp7o6JQiWMmJWG7oEkD2OJz4gcbpo+BWEqXl3d4lMKQAmnIW454gBZklUaN1neJEmvo6Zr6iV7XcE6XPv2IkMojc+MnkOdOm6WFOBYrBnGfyVE31c+28OZdAU0FQsckpoI4SfnmWDGacKNpm58F4Z2RM1sLOV5V0Ex/plffQbBjddzWR9BbttC7ggIObNCrjJcYBvQepCpGUt9tr/N8E17+EQKwFkKWZ8XgRTwF8Z8ufn6x98UHgR6IhZ1/amsgNx6CONvijTMANAhQpwA5svnCv11lPJN4RtUrs47okjos5A+RNfjdBMbG4I85ps1/mpQmLH4IVscM0sSRJuCogbQIQ+YyZd1aeAirZqLpnVMc+wMZYeUsJuFc6SU1mzisz1U/0wxZ8w01H5lYhJshb2KVLhO28MHWwEpn2o+mA+10dsBUFIPRw1SZeFb0IS2zF3jBAqMn4HxJtBQST5Vt6mVKTPWrxFhRo9IBCTnl2vai6HA0dg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(66446008)(66476007)(8936002)(66946007)(64756008)(86362001)(4326008)(83380400001)(33656002)(2906002)(8676002)(52536014)(15650500001)(186003)(38070700005)(110136005)(5660300002)(76116006)(7696005)(107886003)(53546011)(6506007)(26005)(508600001)(4744005)(9686003)(55016002)(122000001)(82960400001)(316002)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1ghW9oXIq5gSTIBMAYGiQkFMHRATUKdGMSHQmt5wmN8jp7n5ZfHxNKfDTROc?=
 =?us-ascii?Q?e7I3/WnOoG25LWUDlo8IYMUsExQafKk24q9eZNEfuhwJpaRojKtPMvEQS26V?=
 =?us-ascii?Q?cMa6A2JTiU0IkKKDAa0wnXYiKBAF2mfe1FTBePduzayy0Hep+mtuAQcEhtfE?=
 =?us-ascii?Q?0Q2Kn4u2y6LD2YwYTaUEZZ55yyI9Uh0J+y4DmyPXYlozMiInDvcnMIJ0e2Qa?=
 =?us-ascii?Q?mjWJYOoJRp9RlFjZeVA39g9LItHcdKjo8jwnCduCTs/CEmK6n/rN6bkxic0P?=
 =?us-ascii?Q?x4D4yRtg2Ywx0/3YDDdo/jv6rswzs/fPZVfrNNxfQ4lBuh/WLDq5bW679J6N?=
 =?us-ascii?Q?Z0PNaUCZ8qQ21EQiqfvBO2bFieqcfx+sy7btPhTHhOvKcIvH5gOWbg1KIMNR?=
 =?us-ascii?Q?mb5tkEVlqDSIM4WKrXsw+k657PQgZerT+9ugwSfqEix1auUuHSywWvsbVDKJ?=
 =?us-ascii?Q?1obgKmXAAiR5eTgF2XUOY0Vg6DYhJXo4iVOZjdx7LQZ8ASYoaI+Zp6SSX/23?=
 =?us-ascii?Q?gPkmohVfQlc6joIIhRExBJFtRYbxqxvnRCDI5tghTGpzyJIL10jMrB0u0UDT?=
 =?us-ascii?Q?lUTTo5jJFmbJsbVE9ms9fUlVTEjcGwILnRrPrCk0mNkOXr2wASynXASC8yaI?=
 =?us-ascii?Q?yrLrimJJa+9PsaJifpA66tWtKhhDTeXliXJpbvIRf9P9Ci49qsb2zPG2OBzp?=
 =?us-ascii?Q?KAdbUu8o/4MWwcU2m0zmLNAEMnUgbCtbw0769N7V2qWY3qIxYDi5IKDkDnkl?=
 =?us-ascii?Q?KjTT1k3NybvxMWFEG3tIzvugE1tzq3Iub/D+9FDtNWlV9ZVNyhTra04sTDAJ?=
 =?us-ascii?Q?dxFMmuaysITjvWOem4EtGfk1MTpIZWsHEuaOVC+nx4cdLUpIM6cXQW3rdyNp?=
 =?us-ascii?Q?zgaGVOUdTG1am7ltz4jq1KSCU3Vl7ANX1r+qac5CraiAMhH1GKzfkfERXOBE?=
 =?us-ascii?Q?mG0k2pjTK9QUr6PyMt+y2waBU2q3SrVMIAnIKTalcFy8aBFNZyYZ7K/tGqxG?=
 =?us-ascii?Q?bNrVfhNeY4tIsmXHZdHVCzrTvIthRlw/W3dhub9qif6LdlH3A/lIopAwP+Nc?=
 =?us-ascii?Q?gcRFw9XKjXerC/Uq3gw61fFeEmztSuOKrpTCOuZUyoH5QL98li901euKG/3v?=
 =?us-ascii?Q?NTG7qTFY66Lhps31eNu7OCn+eoXGxlJ58aKMJ6iK7gdSAZ+6zmyz8jcy24ie?=
 =?us-ascii?Q?MRkvW8GhXEzjlSpXXUIrtRXLh+PxCY9udL6khJg8+b8+887isGO1CwZZ02yY?=
 =?us-ascii?Q?dA4S9LA+gEs9AuRlSnIwexnxMMT8sgnRA0dVnCjyuJRHfW3ayVj7YlabMWXo?=
 =?us-ascii?Q?O0FpeS5pj2nbUab6zhtMmy3yPbR5ITPeMMtiLFw6fxvSkhJvjQUkOMhWPBxo?=
 =?us-ascii?Q?oY4g9RcVqnIAkU9K+qaMASOAENvfcDllCInLVS1ok+HnUUhYYVAwuyXu3Awc?=
 =?us-ascii?Q?W0QnzBMwYMNnfaH1zg+8avJM4/oN+ayv4r6IWmonFi+R2hETrr68j1IXVZ2h?=
 =?us-ascii?Q?iK7sTKFVmjWcw5wiz+HJ6my33+eRowsyLkSHruTI45keBqkry3kD4zXVZdS9?=
 =?us-ascii?Q?WQ1BWlbrIYoqSP96Du8TCKFBt6X++13yckHey30DmcWrfZV2FDy7DTWo4q+k?=
 =?us-ascii?Q?R0R9oinIv0fDjZIJQr+E231xkfq+fI3aLcxJPzp39p5MDrUilBaMQ/x2WSuv?=
 =?us-ascii?Q?3cUTAg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d45113-d835-482e-5d34-08d99fe3a189
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 22:37:06.4763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: esFbOQLvl/8xBvzFwzBXimJsQaM3sxfhgr7LxsrfFjr7IYoihHWPDOlw7QavKfId8itplwR79pmlpdSONZeG8L5d5ne4VTKIh/sWuS/cGXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 3/5] ixgbevf: Add legacy suffix to
 old API mailbox functions
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
> Sent: Wednesday, June 30, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 3/5] ixgbevf: Add legacy suffix to old API
> mailbox functions
> 
> Add legacy suffix to mailbox functions which should be backwards
> compatible with older PF drivers. Communication during API negotiation
> always has to be done using the earlier implementation.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h      |  2 +-
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
>  drivers/net/ethernet/intel/ixgbevf/mbx.c          | 14 +++++++-------
>  3 files changed, 9 insertions(+), 9 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
