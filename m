Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B837D46FAA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 07:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41518612A2;
	Fri, 10 Dec 2021 06:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w7e1dDivM4Df; Fri, 10 Dec 2021 06:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 412F461263;
	Fri, 10 Dec 2021 06:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 164CF1BF847
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F312342553
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="JA4RgGcO";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="wAnpIK1d"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pX4_Ts6qZ4ib for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 06:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 211CC42551
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639117913; x=1670653913;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EawA6ggPzh+NHQ3/lXhSDu/Jl4og1Q4PSmcr1MA/9Nw=;
 b=JA4RgGcO4Qzb4cgnYgpVQY4mr+mgsmkmpWUlb+7stsJ6ry51h8rpihmn
 pCKSaA/usPn+5m6YTEhGf/uuXRxKJHfl7yNaw+3dZZRTFYVwyTF3sDq7r
 7lUmGIpnIekmHZpTpiIUpoylUjxqMoLofWX0RVNTKODUayl5JBiz04pdY
 C2MXYqhjJmuhuvBHVIynYEVQhOCyzgnA7ZLfS7L11fIOfBJ+440moZV8P
 phbDQz9QfQmzw2yf3RHeOuu4yjrc3cjkoXofj0upcTVgInHTxojkJ5lhI
 EMOWuvB16GbImvQkxDDhTtwlC/3/SABnuyhJea9G9XLAIPmKm/j95lSZm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238230440"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="238230440"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 22:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="602005122"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Dec 2021 22:31:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 22:31:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 22:31:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 22:31:40 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 22:31:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IeINif7IeGBL3BNq4dZetwium5u+eYFXin0dAZXhKKV78RE5LaxYUrcnaoAdfLl2sgEYHf+P1eCXWcWqOYcS0r1QwZE4Fv2ZPgEyqlP34Y04eQ8cEH4E4IT9v0gyNItCxApcxiAJLaV0RkCq4NKrIR84JxNqWe3G86IL/0YG6w4YIxmPJ/JxUx/7Mf8ryJaG4DS5RW+McgUArduW/2hOg4QNmjum2+jlASLS0btJMGm/L9AMbMrZH9ttnMLk2codI2aSA+BuJeDY2tKu1t5UCO7ZSNi0nf0V8mUYAN+lAkGnPCjnYue/2wXI2vaHjfLhoAS7jMmRbkowBR3F+uGk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71T3VRzLqQFSLPyWvY4YSj0O1JLdITYRgxcj7ErcGRg=;
 b=QMTAkD/gfis2vnua6v2N6/z99KXcWxhZrM/otlYjhVLQ2Ew+mYfXt+/redek0GEvaeWk/yamJApZ1YDO0YqVebYFaJSXdRttcYVQLj3xTD9gUIzjfXEknPug94nSIYpskb7wqoItC3cAgLh4A7MUhrzXl+AFOOtrcqpLdRlupSCgCsrt0vQT1kYvwZ+7KNO2QC+VDZdvmlV1P+/pKf9SCheUNFv/tFWmtULYy/z6Lh/G2CjMq4Ngdxynz33SMVPICkkjiAhAtge1KXQa00FUNnp4eWObqS5oXo/ZjALq3ZgNIEwo/EoSnXfc0+JDHkWnRhLLaZkcWDMep3Y2z3MRpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=71T3VRzLqQFSLPyWvY4YSj0O1JLdITYRgxcj7ErcGRg=;
 b=wAnpIK1dLMAJzMq+dPy28nbsDB9IPmt8fiuKrxa3xVbc8Kehs76FXJA+ym1GfLe/PKmwsqkBINFiS92KKfjjV2tyFsnLuhZF4FBoTJuW8Xu0nkWSfknWfx4TOnLHpd6gZBc7BtugWPwB4w/U5QFh4JzEcK3/pyP/eyCQt36yTIw=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5118.namprd11.prod.outlook.com (2603:10b6:a03:2dd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.14; Fri, 10 Dec
 2021 06:31:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Fri, 10 Dec 2021
 06:31:39 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 03/14] ice: Add new VSI
 VLAN ops
Thread-Index: AQHX55t6b5g2jcRNoUqx1+JQLLHL6qwrT7PA
Date: Fri, 10 Dec 2021 06:31:39 +0000
Message-ID: <BYAPR11MB3367EE1F0CF6F96F9A01D3D3FC719@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-3-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f7c0fc8-afe8-4779-d077-08d9bba6b946
x-ms-traffictypediagnostic: SJ0PR11MB5118:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB5118354F097591F27ABE4EF5FC719@SJ0PR11MB5118.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qfezz0gNCPcz+TvvnHIyopyLSW96EMk9u94YzhPEiTBLbl1vlsq1BUy5ciTeE7PZxOBSWQ/W+Zr6/DXBGHBG9OK+aEaR/wwPtFcu9tPk7dz1SkVZLuhrJTzgj9bqbDLPKK2HyYcDQE6mgw5O+LoD2DQ4LgEyPqCtJVbk+32T7OtHgca4oz8U/c8TcKE3HLxStt86tq4BlI+/qDMTGMS8VPABfdYWiA+fy7BV7OlaPD99eLcRBa26tceVOWR9QEkm1xh5qgt8/QtC9XxGC6qm+rnsYVhELHSxE7BtxLPkdh2zlCiJlws2FHRPb7NcPIXAxLCswuIlJb6o0WTxuXFTBVMknjwJNpbekmMTIWgnxaRxtIOCYn5SCrfaRFZadTuwaUMCkVOhtecjPSvJiGmKNuVreH2XDy43SE65yhjrx1qLGiN8Q6X1znRFAy6/1wZ1hQoy0ppzEXoNdC01xj8/seA4QKFP37pKANAkFPLfMHGKgqKwUyc4oUn7R7ymegdhIqIi2YnEx18+YwQoUq9fzuG0MvjwlNtqLN0TCQMgf9qPk2Xof2qYRS8sjvnpNwOz6EAOG5fK1c4abhpNdmMKroYoA+zzuj39kKV09mvNwFWb+5IL5/j6LqfS8qfkqfET+1BYLCB0o3pj3jeo3kGrQgPieH4XDsub0/LvtnBTbQmr00y5qQizfLsBtJ27gDbN5bNzezMcuKwdYDIss6XRvg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(122000001)(38070700005)(38100700002)(82960400001)(33656002)(5660300002)(508600001)(83380400001)(86362001)(8936002)(55016003)(9686003)(8676002)(186003)(52536014)(53546011)(26005)(316002)(7696005)(64756008)(66946007)(66476007)(6506007)(71200400001)(66556008)(66446008)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hbfM3o+ObOZvTQH/AdJX1cIv0YvnbsPCQnikwvWP/WKIg28sh1JMF0mblQ0K?=
 =?us-ascii?Q?YT3FXNBtVvWTcNkrXAxzxPeOGh71GLYdraayWsnZn4WgSIGdeC3p9bACftyF?=
 =?us-ascii?Q?EbIyGNjx6dyQVGvGdFEvUpwHUQDiy77va1SOrVC860oH+Ddii1QI/2XWDQ4W?=
 =?us-ascii?Q?N7SEJokvILjR7xr8JrecZaPi6yfcyDUqwUjOPlO26V9m0IcAp26ORA0b4e8r?=
 =?us-ascii?Q?xNctX4VtHbFR2KIneNtmml/aLAZyJkEdttnHGgt4OnYy1OOR4a2A58fSumwN?=
 =?us-ascii?Q?WhbKQUXxwotmkvASEhzC1GtafRsNqcOTKzESvJOgmqNMVggs2x3aCNy3960Z?=
 =?us-ascii?Q?INcwqu9Mhemq/AlygdjMD72+ORXcZgfZ+85QAIMHRxEN6Uu+G1VL6O/Ymfzy?=
 =?us-ascii?Q?26ETddO397pgfC8mEE9adJ0dUNDZnbIEHriJucBZkVrvqs9G8K+4GnZw2J8k?=
 =?us-ascii?Q?zch699E2FrShEfDH9AFMEVWSDWMFyIzdeP53z6XRB+BqvcXknfWaS28uQVLN?=
 =?us-ascii?Q?RmgMB6v9gSOY1UnpZiz1OhmvCQAipLOfUKXsDfXzHBwIAtcC7S0gYY9nz8wc?=
 =?us-ascii?Q?m+P1jmlwWAoRxw2+aA3woRyxi4KzN+M2QDNqDYFN3+vsZSLbT8XzgcfKBeIW?=
 =?us-ascii?Q?3LCqbkvXc9WlxXNAtN8CvCBiTcTNr+SbyzafqvQcGgHRemPvdYnZe4UL2NJR?=
 =?us-ascii?Q?pubdOQc98icyc48KB+b1h1VTT6Qz5CvBa86rfkpAGxoLAj4ivQt6mpohFD+G?=
 =?us-ascii?Q?/eCIRu0D5ZKqUisyVIYo8WIIgsAaOCHEJf6W924I5bxUBDr3xYILSrte0HQv?=
 =?us-ascii?Q?37+VMfDqKcJRgh4J/sLzWvN8NR+2TBycFsNcSoa6wfHZRvugdBaobvd+A2hL?=
 =?us-ascii?Q?p1kfCRjFS0Rm0zmeUpmU0oCAZ98CvvNVZG44rjx1sBTKDC+Xl9zpBataQxJk?=
 =?us-ascii?Q?QNrdaovkVHlavbfAwrIG9H4RIUehlzMWi4UJLxdMGJmSnHfvk2xTL4qy5Frc?=
 =?us-ascii?Q?ySv5tgu1HcZeDrkO/ik/9zsaQC9mM4LCzQ+POiYhxRyf22RaOn2742BSfdN+?=
 =?us-ascii?Q?oaahsiMocZmHHh1NKyP6eeItGGaHUcFrHCSdqGJsTF3LTXbXLNdcrRDvhQnw?=
 =?us-ascii?Q?6TH4otRjbxNXWO4Y4e4T839Ws42Ri3seXff0g4CAvdwL2RwRxNAjYbm0djKt?=
 =?us-ascii?Q?7ti1fJs9QA3azvAxBYLoD+scc+67niZMQiaWeLv1+NT0VBG1y1lZglSdWqcA?=
 =?us-ascii?Q?yuqhUeK6vo5ArkvkayWbb4PfTFALrE4ERK/HvuPNjcL7ilrE9yi0dyfCiz4x?=
 =?us-ascii?Q?iU6wxQQ9trn3n9CydJvZka2lgk/kZHmpODgllqyS2M+uP+4kx/o235TfGT8q?=
 =?us-ascii?Q?0YHgUnzylM3jvETQ2LkST2fxxUSqAwRDHPZxJXlHlbhOK41zZwKQ8Iqk38I8?=
 =?us-ascii?Q?ThjyUGZ1KgyNjssnIjzz0X84GHcfvGaKPYONlsovfVQ4b3A5J2fZM5eCG6HT?=
 =?us-ascii?Q?+AEfmDLmGDGgZUdwXL7uo//ENn2jiFh+2uTZ7eoa1tNuIpjt8A+cIAqdmG4F?=
 =?us-ascii?Q?9QZo9ta3bKUGPRtW0kq98btWVF0ydhYlbhzIxHzKRZu0DmtmaWPCDC26CCud?=
 =?us-ascii?Q?0Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f7c0fc8-afe8-4779-d077-08d9bba6b946
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2021 06:31:39.6245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OLe3ogVY98bYZHugzoQvlv/ZIBUDWoMun6iZyJJHAjplMTaYFqODrOh9WI6iiaqeC7gMO8VRzvTys4hcKDFzeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/14] ice: Add new VSI
 VLAN ops
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
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 03/14] ice: Add new VSI VLAN ops
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Incoming changes to support 802.1Q and/or 802.1ad VLAN filtering and
> offloads require more flexibility when configuring VLANs. The VSI VLAN
> interface will allow flexibility for configuring VLANs for all VSI types. Add new
> files to separate the VSI VLAN ops and move functions to make the code more
> organized.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 207 +----------
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  11 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  30 +-
>  drivers/net/ethernet/intel/ice/ice_osdep.h    |   1 +
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   9 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 111 +-----
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 326 ++++++++++++++++++
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  27 ++
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |  20 ++
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  28 ++
>  14 files changed, 450 insertions(+), 335 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
