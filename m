Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE5E60406E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 11:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D196341B45;
	Wed, 19 Oct 2022 09:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D196341B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666173350;
	bh=lSVvLu3y7FJvDDidwJknqCFi55XUCoRwMQkEdXBp+do=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rQ/Czc7RZC1X/WCy2giZNDzrChnx33iNhTN14Z8UeQF5RoPUqnnCFFZHtwqRC2q7Z
	 b4rFbzfTuweiWGizeduXnIy6vCtW85iMhVevPGmJhjmikyAe51k+my367dKVOa0ezf
	 BTgbv5eQJaoeh6qPXUX3c1xGzzFaIBidWugFJBec++6+EMXGHPnNbVcInCz3kA/adR
	 IOTk2qnu/zYr3TJzxqcqcsdvo72kv+ZzT6Y5ghM2L9xzySp+jJ2sef84iAE0bevR5o
	 /9aQfmEfZ1A8YJfzadS+5PaBA5PAxoG+uF3Qf/ASdEag+YsxMMJkTeUn2naNokYNYA
	 lVeCEiscoEg1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cYm03_sUb6pr; Wed, 19 Oct 2022 09:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5224D41B3F;
	Wed, 19 Oct 2022 09:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5224D41B3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D49CC1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B815741B3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B815741B3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IjhI5IGZHArk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Oct 2022 09:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CB8341B3D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CB8341B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="293760589"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="293760589"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="607014694"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="607014694"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 19 Oct 2022 02:55:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 02:55:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 02:55:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 02:55:36 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 02:55:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFjjc6WLsAufrt55ZhS7RD9me8baTtPlslYp8jPQqQeeEkQ+L/LC5bfCioxzlUeuUoX7uZSCdiyqzp3hDPNqvdbsan4bfga+2+xUUoLsv9o4x2A5ioUzu5wO6sq7JYbWiRWz8PohAAT2py48/qDI2BKbT0A8HbxgHbfZZ090MzwSw7wSaAPSO33E5K5hYe90AnEheZdq1DmW+5PB1LJLyUNavkYMkk/PsphAJcaejonoHp1icpVenmtts/o8gDR43CPYs+ysvrcmxc8ogVO06Ku8qBxf7mM9FxkdAbN+MBdMkBSoUXlnrATOZRavl5LCkFXZtrUMdFIbZTI3gtI56w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfmayNXVxMcYvSg2DCGertyRPI7HlH7T41XDnrN4reg=;
 b=i8zPw9t53suJpbnQHxQQARnEBfF+EDqpqU1S0Y6P2IOBUBq1IziH4I5+7c8Wd8kiMF+UMvhs7kl3MHxmjOdvgvjZS5KsxqqaZBvWTCmkdPbf7DKLU6/X135PoEfzB+YD0EYZ+0M7CkDFGqU6CA7uwadwNuQ821EpYoFH7yCoXDcqJBflD4xNkmXveARCuOROptFSADPYLsvijbx73GYOvYWwfWvNu+SokeMdRF9gdQo45SxbHqMV4OBDUMTbiX4e1DEe82BVFdBxhq2mGhmpTZJ3GmVkxD2vSLZNp4ngB9TBowjw9gZ2oD3+05CCs2oI/tULbHbamyZRJsesyxjpAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH0PR11MB5952.namprd11.prod.outlook.com (2603:10b6:510:147::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Wed, 19 Oct
 2022 09:55:32 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 09:55:32 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: Add additional CSR
 registers
Thread-Index: AQHY36pNMPncc9MckkGhSZ1oz/7VHa4VgmMA
Date: Wed, 19 Oct 2022 09:55:32 +0000
Message-ID: <BYAPR11MB33671514F8C67505008367C7FC2B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221014085008.383570-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221014085008.383570-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH0PR11MB5952:EE_
x-ms-office365-filtering-correlation-id: 28101b23-6e6b-4ecf-82b9-08dab1b80fc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U7TKyucTybbnopzgOy//sbFVYSLecyrEAF0ikOrnnsxLUEmfwqhNjuQcSlIpA8Dl+LAYRkNJhA3dmrMT2YwYng+U7b43u62uXZ3ePaU5SJteig9MZv7H5FKAB4u639K0UqPKSjjoMNKz+R0KG5GOnDNARLZfP8qWxyDB6/95wTAkkV//Oj4C5keATvV3qgqnF2dLDVZZUiB97s5XLKk0GKTsva37X3S6/tw+o5Kdv+cAuD40kbU6EEkSGGRi71vNK5FzzXKAe6EPWkA+D1IwikIk70Q3jw+pXC43xevc6bltoicfzcyAgGIJvKfqmMbOwnUZBg5jUUPKWQmUExbl/bJjHLK5OdurYn1jquUCklYwbAhHJugakzVtb6Ph93gFoID30yDPQmos9fTp2gw5OwKqr23iNJXXsOTHGJ7fKcLeCzqxZbiV8DD23iDFjlkXEQf3VI5oVrzABabshKwDVQ7p/sLYSe+mpjh/aJdYIOM79hHYubokbD4IOKI8YZZZ0genLPEvrSsmFzL78YrTEzDCofbaCD+5McvB2XG0bIupAXpiloC1OLGGXCxdcZVxn/6UaLNGI6f6CKQn0e/t27sR+Gesa97PVHatulIp1w1hKth3zuBEp0EFqiX23NpQ55fEnJfIoaAiu9tPg/e5xCR9MQf80h7IL5Tax/zB455t5nkpuc84EgFm69Pg24+3lH6ggAiyG0fbk9QacRJ5nHdXBlJvpXDdlVwkrNVJFZNB9usfKmihMbUdLNGwn1f1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199015)(71200400001)(186003)(83380400001)(26005)(38070700005)(86362001)(82960400001)(4744005)(5660300002)(2906002)(38100700002)(8936002)(52536014)(55016003)(8676002)(64756008)(478600001)(9686003)(110136005)(6506007)(7696005)(53546011)(316002)(41300700001)(66946007)(122000001)(76116006)(66476007)(66446008)(66556008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lWOiywrG+cq2Fokn2XIadgDU86Gv5YCfxO5pYMHX2Iz5Eq+RUmUPQzPrBmgo?=
 =?us-ascii?Q?ZpCGt8CuRNVH7QLNzhVvRJ9UhBnCH0uZ7VowxiFcLI1KleebttDiV9bv0Myq?=
 =?us-ascii?Q?Ln7L0YQMr3imldGs+adOPcwzSIc7XUGB/p/H5JAmY4cCnp+Qyo9Dv2r9eGTm?=
 =?us-ascii?Q?gOOh4mmWvtD7zFjGipRFuXeMam6kxbX6uGIH7JxhIgwv3Bjb34vVXUU2Fgq1?=
 =?us-ascii?Q?hRmCYqidL/5xjGr/ASKV+ehq5G1Xxr4X2vSyDn7yrl39C28xEVdy44i294IX?=
 =?us-ascii?Q?1g4g9tkdJTzwf0VNeRJvcJHGuHPvy5NOht9V1R+TJlW80DaZhjk6dZGLPsJZ?=
 =?us-ascii?Q?Pg/AdgQKuZzq/LmF+HY+xGm6hwlNN2a6itwb01HuDqkhAE4ZqeGMEcmUBhX+?=
 =?us-ascii?Q?zhNIpEM9b+1pmR20hWzYIS9yOjT8lP/05N6zdkvUVgl+zInL0nwEvuopkJ5m?=
 =?us-ascii?Q?jPK9jVBf9G7ZyVms8kWk4u6mkdgSLFLQ+Idh55p7d728mfm0gyBY31UJ31Vg?=
 =?us-ascii?Q?o+nfAjKUPrsbpilnQQqjRD0/Wjo8yDN8MTGsgesCQrQK2QXWJIqyn9u8F4Jz?=
 =?us-ascii?Q?nyii0F3V+HW6skgIBhc3OIDYcb6XBlL0Ine4glL7Y6ylWtzjM9Trt7fYcDk6?=
 =?us-ascii?Q?EMeqriAZMuQkEdHuPZ500JBKw6w3WAv/fZSpxkrXpiMCM4Nr4drPTDmiRtqD?=
 =?us-ascii?Q?HJITAkA7qldh0IS6rjJU0HTeCDhtXVHxjlnW2/XV7OMXmmPH6VHEzz8YcR27?=
 =?us-ascii?Q?ORy+CNLFfcCSIv202yK6TVvu3IFVc6nn3QGz7MhBsmatJ8QDJwNnx0zpOx4R?=
 =?us-ascii?Q?lUqJQoz8rcVBjOALw/UDltOHirlAygyYxQEG8xsP8ma5aUAAGyqmqM4C0Uya?=
 =?us-ascii?Q?KH4e4XRX5uTr8mD7IKK1cJQXe6PjfId6KkGneFRTSoMUfT1BQitsRpnEVFTn?=
 =?us-ascii?Q?t9fR9qdNZacrZsnpVWWpy8KEuTawg+DawBa+Lo4kmAeO/ol1jqAuQr+m04z4?=
 =?us-ascii?Q?8eVcLirDTxmTWLB1fGwGh2xuCoKJI8lK23KyodVFz0shxdGl/gZ8EdNVtR04?=
 =?us-ascii?Q?pBiGW0yBPRALCIbEuXUsu86bk3YfivtmPooeO2kjfzILLNW+tRMxuclUVK/S?=
 =?us-ascii?Q?HvzwsMWPHwPT+wgRoVV12nUJuNWwnzwK0VyFKvGt2ddSs1se0XBPc9rqRVTS?=
 =?us-ascii?Q?OGIY5y2cLGtv3IEqgKH2sXueRFWrUeEbYi8dosKdF8ONrXBV/HJj1mbzj2oi?=
 =?us-ascii?Q?43c3T76OM8VLmzxFfzxnOH0kewBrOZ0q88GnZ4MFvY/xkI6MNiThpYe2p3R3?=
 =?us-ascii?Q?PwXEvtWKcF6qXAgRPNH2UMAQKZWTEUb5PVpArYByMz9rTjebJyg2hgeyEIKH?=
 =?us-ascii?Q?uQc6yHAnWV+o6dF4AuYs8KJzd034wp7ptrflvMQOrYDmWxEqEjGBKlkJlXTu?=
 =?us-ascii?Q?5ky5S/oC2g66NztcEguQIKBnothEDgYQCsApH1zBVTGlsMghLSs6iOC9knAw?=
 =?us-ascii?Q?RQPGV/pPe6sSjqb+ZVGdw9wtwsK3qNJIFhGcSoAjhL3/S1VWRtZo1DxqcWMD?=
 =?us-ascii?Q?T76as4nIszjkvZOHrh2uKPHO80/LPbEa5t12VTi4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28101b23-6e6b-4ecf-82b9-08dab1b80fc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 09:55:32.2760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1aBYs+0cNfW8kBYW9IvTnKG9eh5VXkgSO6HT7aSTwemtqgtIGe5rnq7U8v6VdCwXSdokCcyyv/MLAhQPjgNYdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666173342; x=1697709342;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eAOmoPAycB2CzWuFx9O/giz7DZVloquB+prbq9qN3Fk=;
 b=UgwAfuQlyUilqYP0GRczAeqxeBgL6B5LJVX6QyNPquze+Rv35u0UUNM3
 Rm6GpfaMZA29pXsGFEphjxzSqK0LQEBdgFphqs66vdK79krZO4ABAvGuw
 IS0wQ967riWtFO1QP8QQmJIXJTCbiR6ixyCyReLdRy0qOINJdPfhMfqRA
 PJG8TIVKSWUMRQw6iqF5h+qg9rQjbOcTMS8kn2CkY35XlnQhwoAHUZvOE
 wGBC/Uw+R9WtiFAaKB1/k/9jYObJuha0fI4s2XatfePIZCtq2EeW16wBu
 xBrs3qSt0aAk+EGOYWzlugcxbpOXjpuLqzRiRiG5GkkSEyBIx8vKdilkV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UgwAfuQl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Add additional CSR
 registers
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
> Mateusz Palczewski
> Sent: Friday, October 14, 2022 2:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Add additional CSR
> registers
> 
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Add additional CSR registers that will provide more information in the dump
> that occurs after Tx hang.
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 169 +++++++++++++++++++
>  1 file changed, 169 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
