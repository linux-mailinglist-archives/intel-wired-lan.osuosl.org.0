Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5139262F73C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 15:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEAB0812F5;
	Fri, 18 Nov 2022 14:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEAB0812F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668781441;
	bh=V1jLe2PH7AFDLpymrTCv/S7lkcpp11CM70RjpEyZW0I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k/+VfyHt4gCQc3zAjOA8BGwQNDROIFNSd039b1EW4R5hV2rMl8r6m2y2gRmCmpgXf
	 35N04z11KAB3Dmm+XmycSoQS9+qLGlt3R0u40giMoYwMHFWOwOa1+W3pH7n41gnwkp
	 ZMMiYT+Yr6UDIsLYyJMV/Nfg+clBT2SE56utQ5M7pKbK/7T6nsy1BawW88R92PrluP
	 HBYWv3Ufcl/JPXb8mncWp2SJD5fc2RXnTw0yNfIPR4TMNpoHn4I5va+QVXnOSMhdor
	 H3FafT/uDa45jevRL5CgoFmroj2ACH8kwLDCmj1pEgkb6R7MsYgYFrTcUwWZ5T3HAI
	 vmR0Po7mAl9kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2KbsK2f6dsh; Fri, 18 Nov 2022 14:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4C9B81C81;
	Fri, 18 Nov 2022 14:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4C9B81C81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 286861BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 14:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0155E4042B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 14:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0155E4042B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NWuQuGbzliW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 14:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 529B14012D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 529B14012D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 14:23:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="300679845"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="300679845"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 06:23:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="814930190"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="814930190"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 18 Nov 2022 06:23:53 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 06:23:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 06:23:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 06:23:52 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 06:23:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UcoTLgoOnmSxFAvbBbnmDEj0QpchDrZK/ILBf/VqTLL2wvq63S0OdDYjaYWNmBMXTmcapqLj7XCYQsjnGOy3gxiiL8e8XSX+oUK9bCHMXzjSpSfUI0ArjN2rdb92KrxGa1P08Wgpw6MAv85QVYZJCQa2ZRn/orfektl+sXqApobUAT7+a7CeT8IyVQwHGtojsLY0UlfW5xgVSGMMofvV2tdy0YBDe2xDgc6YuW0LJeRybT4E8WKmoTnEkIcDZL8CuhyUyHgLs0DA4l6J9NIrjNMxGvYWErzX4dQvjUyJdkJwnuXIgvbwbNxu6r4Q7SlkhhUB+Xz3DctZMdk4kXbWew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0UxCUvN/xp78LaDVsrbpRQmn927UYmOypwT2sS6mGWc=;
 b=OsztuEySPYxk4KvjjC2pvToLCLt4RC9/t+YNZUlmIOtZf4Y6FO+Vy8oHrIE82fnpH4+GnK8gOjXLuyfmJ0IMRESCkL6f8X/9sE/B66DW63v08YOe9JTTSDzOzlhBzFCwbVjOcWoIfLd7kjHDUtv77dZiTtSASfERKx/ReBjfrRg01InmR/Po8obUpHG7TDmdcWGis6NAms6mbTe4/Z8ZRnG2vYTgWse/J8ZulBPyP8gMaXc7ohmp89dy8wXvUJ0Z75tLEeN7bYlFgQsv9iMAZe1AfoCxjBt/1CGfOLUARt1g8Nscx/SY1SMkG/q4XGmTf+Y0n+rPDYj3J05iTA+51w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB0029.namprd11.prod.outlook.com (2603:10b6:301:67::25)
 by CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Fri, 18 Nov
 2022 14:23:51 +0000
Received: from MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40]) by MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40%3]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 14:23:50 +0000
From: "Saleem, Shiraz" <shiraz.saleem@intel.com>
To: Leon Romanovsky <leon@kernel.org>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next 00/13] resource management using devlink reload
Thread-Index: AQHY+Cqy2uXaK7ACjE+XJ8Oce4DUcq4+aFiAgAAjkYCAABsGAIAA7BUAgAAQSgCAAA79gIAAB6kAgAAMgACAACAyAIAAHt0AgABBhICAAIanAIAARLAAgABkfQCAAGM4gIABH/WAgAAJ2wCAAB/pAIAAQsQAgACm8ACAAC38gIAAbdrw
Date: Fri, 18 Nov 2022 14:23:50 +0000
Message-ID: <MWHPR11MB002998FAA385731E21E20868E9099@MWHPR11MB0029.namprd11.prod.outlook.com>
References: <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com> <Y3R9iAMtkk8zGyaC@unreal>
 <Y3TR1At4In5Q98OG@localhost.localdomain> <Y3UlD499Yxj77vh3@unreal>
 <Y3YWkT/lMmYU5T+3@localhost.localdomain> <Y3Ye4kwmtPrl33VW@unreal>
 <Y3Y5phsWzatdnwok@localhost.localdomain> <Y3ZxqAq3bR7jYc3H@unreal>
 <20221117193618.2cd47268@kernel.org> <Y3ckRWtAtZU1BdXm@unreal>
In-Reply-To: <Y3ckRWtAtZU1BdXm@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB0029:EE_|CY5PR11MB6464:EE_
x-ms-office365-filtering-correlation-id: 67f9e40a-3626-4564-beb3-08dac970839b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zWHou61y7IQ6gIM/XO758EdZjKtcib6X3Kaq2WDBIixjHYKUh7H12IZVrh3J6RIsZALx02sqYh+pfFolIJEVTjvIl9U7s0OnPCinS5Xo7eyWtnxtCZoQHGtTDea+FKUzlrg8Ut7WIkIRhpT8hDretHJVHVt+yRuBB7vNRIE4ch9hNeNq5Mc/eklWeC+FKEWOnsbxWmkO0WBqezDaj6Xbdzsyi5TJHa5a9SKn5D5Vvy2koS7SyIF7Szsm3PrugKVCtsSDCROrSZI+7Y5+8snd3I/pbzTKXjJ+Z3ZAnP7XWa+OasbAny6JeuOM5jWL26f1csWE3uyJt1h7iMuHB/okTBPVHcW1lP8xHsVhVHKjR65lPocCuIrj/I1JVbNvcnVLJ39nkBDgGploQvI7KRT3mBvtl4eAoHUAC4nUH3DXuQzcPzenE9we56R8mCrjuRmuvVXP3NNsejLI0i/VoqSkpwUI1xjw8qABqxH5W+iAqwHOHBBowz5ls9Cw0JRBHLCWMgWES2dQGzBQB4SG5vSHSsyxGp+gvbFlWs3UD2Iqk1+nMqQOnlf57oaM0smP8FrTYXiPotpfB0NKds0F23woaBPeIwIqo2sHa8u+4WA3VGNSK/3t4OCh4m3k0mxcRQ05TxWA+g5R4oVCoHEWKygIH68pT5nsAo/AAUC2eBUXJi9ZOXu9FnSRoH2HrIsVkSImKrXFOqEnEiQ1H6JqbanKxOr111Cxoz0WRVZsP5hlhGI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0029.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(346002)(396003)(136003)(451199015)(186003)(26005)(71200400001)(966005)(9686003)(6506007)(86362001)(7696005)(66946007)(66446008)(8676002)(41300700001)(66556008)(64756008)(66476007)(54906003)(316002)(76116006)(33656002)(4326008)(110136005)(82960400001)(478600001)(38100700002)(38070700005)(2906002)(52536014)(122000001)(55016003)(5660300002)(8936002)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Xj32Xk05eZVsvWzo7gbid2vmfsvkyxsUEP4DPC22hwiykR7s7SgsB/UzBwRT?=
 =?us-ascii?Q?zz02pQys+33UCRmhqNHBg0BpHXo/cBYSeP4C5aoxgKd2mnOC7EGMmOw/SzoK?=
 =?us-ascii?Q?8emP4YagWKIfOuZqQZvAxly84TpWKMwrwx/0U8kc7NrtmnzGNXRcdMzVPbiM?=
 =?us-ascii?Q?pcHOBhQXt0EAC7VvHs5tCYDvf0vtqDck1NAGiq5WAQEXzNTw11Jtbm9hkfdA?=
 =?us-ascii?Q?4qqUhZEF16yOt8FbNAMiqaaTqrATIEmlO+jwsZ8C0MlBn+dxIKd7vsn7auib?=
 =?us-ascii?Q?+kjGCaNplhak+/CSvUjsATq7XSH2RfPxTrjVm8gtChhqjpW4wLHU6WQR02lC?=
 =?us-ascii?Q?3ZUf8QKc5nb0nwlSH06da2HSxs2E7E5VC+FUMZEznvExfiE2E46zyxOgYNn6?=
 =?us-ascii?Q?PZY+p6p37Nbe3rWXbTKeWVMjleaKa+CbovbvKLaH37VRwxHTDa6cHempg87G?=
 =?us-ascii?Q?NKm6L/lIxgp+o2RYe5Fi/cuXEHnjZcCfCEjKsi4aIvHAwLtotOXfe1xlsT0G?=
 =?us-ascii?Q?Eo6iFFVTu8BEy2fIUw+sA02W0AtTKrq3zoDyTA+ma4XaYXaNSPD5UnSMz8Kw?=
 =?us-ascii?Q?9FEgRtwFRg20mpi3VaA21PpfpOH/86wiHY6QS/0ZqNk2jXNraUz/2xxrqcXP?=
 =?us-ascii?Q?aAQw5HOFaVXBOr8YBXvWQS3lDjr9A6GzGIB+e70nS5UovmGfedWE/GhBv3Gv?=
 =?us-ascii?Q?Pv7rMk4LKCHk/wkMa3KAc0zlk9G3my0mWAqgEbzCOMckIjyiuGRCEg8fsSyI?=
 =?us-ascii?Q?uwsdyyDnL/8o5xYK8flxs7h0vgVyn3ej9sPGR6q6QmC56nSsvwSITq5hK1rA?=
 =?us-ascii?Q?wNEtodmJaHe4aAjBxINIVqIFT5k7Wg/OW3tLN7eX93ZiV33wRDTmHttozPlx?=
 =?us-ascii?Q?qbfFJ2lvDY1/fXL0jBBIKlSP4BkpE8OFEK2Z5WFgjjpAVwT006SzcBh2RSW4?=
 =?us-ascii?Q?Rv5S2VMTFrh5sfh9JRyjSQAu2VxTL6/8wWzbQEHagbkBiY0jyY0mWePsWszX?=
 =?us-ascii?Q?VSx+rQp6cQIFZTAfmtApoX/PaEirF2dzeqCqnB2YnRFzC9mIQnL/Vp+ej/nz?=
 =?us-ascii?Q?xG2Jq0SC2Lr5FGyZB0lbg2REs2Xojn2U1nPqP9RHSZ9Oo+KReOOfoUF1+F91?=
 =?us-ascii?Q?TgRSEbO6XW7zZQEtEtVPsyGMpPERoEpVnd8yceNKjcQhIYpZYgCe7WVOnzSi?=
 =?us-ascii?Q?JUktJNUafrcrHBCFHxVn+SJVt6E7M5+rWUMqMRbZLHepz2F4fC9cdYGRJ81v?=
 =?us-ascii?Q?PPj/DCZPvnqea+PCZ8Q8XPV525g6h9bB8CQ1g710x8faRZNHvnfKRSyJ/0I6?=
 =?us-ascii?Q?k+zVhc9wKlek1BOnpHqyM0iyBxfMKfyGq6T8+wscsCSMPTQNn6Mbr9XbedhT?=
 =?us-ascii?Q?tw5SHTtCptSSOhX+C7sWRTIaYd8YascGO9szK3QrU6uot3wisdSfUkiVDED4?=
 =?us-ascii?Q?DCp3JNewtguDL/ROW5jkyQyMPkPIsa1NyvpgypfWluWM6mb/4hkEdb+bAlit?=
 =?us-ascii?Q?xxEZXSx5qEv8c8v3gG5sRxJR+fLsHHNph67hcHyvFLl9X3Qjwy5TS9dtDinW?=
 =?us-ascii?Q?EZZyPm3pTT/3zGxZoKgY8eXVFBZ89TUKygXtPTzH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0029.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f9e40a-3626-4564-beb3-08dac970839b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 14:23:50.7576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ufCp7puCnXhfDWpBpyQceitb7ji/iOZKGrwrzLkOLwukPA3jAJjwhhykQBhBxqwh2DqGgslYZv2Hr8T2J+UFSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668781434; x=1700317434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0UxCUvN/xp78LaDVsrbpRQmn927UYmOypwT2sS6mGWc=;
 b=fK/pr1S4U9xOCB63AHRfLiAKmSF0/dke9IAxEq9MMoTHlkFyobsGFZMw
 CqQWb+wbh5sDWulo9fM7qtE7JgWPaedkui5ibvo6aHO2+W/J//mWpa77q
 IpHEdtQ3tC8WuE70KZ2ADsVM3KiDlVXLEUatVRDkKsAjcx/lV/t9XyJjr
 14rdWoc8SLaaaIwi6L8Luh2xGLWpiOzP9nXTtRPA4IO9UNkd9IBb35IuS
 +PZydG8TSOIxqU3NbTd40RdICPiKxxAt9xT9LdB3nf6uzI67ZDeNy3bOr
 Hz9HPq3cbJFzd45R3MFTiMnTF1ZpCCnsh90AZvcVtOTws4iPaVTA94pvB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fK/pr1S4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Ismail,
 Mustafa" <mustafa.ismail@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: Re: [PATCH net-next 00/13] resource management using devlink reload
> 
> On Thu, Nov 17, 2022 at 07:36:18PM -0800, Jakub Kicinski wrote:
> > On Thu, 17 Nov 2022 19:38:48 +0200 Leon Romanovsky wrote:
> > > I don't think that management of PCI specific parameters in devlink
> > > is right idea. PCI has his own subsystem with rules and assumptions,
> > > netdev shouldn't mangle them.
> >
> > Not netdev, devlink, which covers netdev, RDMA and others.
> 
> devlink is located in net/*, it is netdev.
> Regarding RDMA, it is not fully accurate. We use devlink to convey information to
> FW through pci device located in netdev. Some of such parameters are RDMA
> related. However, we don't configure RDMA properties through devlink, there is a
> special tool for that (rdmatool).

rdmatool though is usable only once the rdma driver probe() completes and the ib_device is registered.
And cannot be used for any configurations at driver init time.

Don't we already have PCI specific parameters managed through devlink today?

https://docs.kernel.org/networking/devlink/devlink-params.html
enable_sriov
ignore_ari
msix_vec_per_pf_max
msix_vec_per_pf_min

How are these in a different bracket from what Michal is trying to do? Or were these ones a bad idea in hindsight?

Shiraz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
