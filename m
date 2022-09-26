Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B50635EA678
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 14:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A20560F98;
	Mon, 26 Sep 2022 12:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A20560F98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664196478;
	bh=HAynbL7f0b30S7SbCUyOkGQk8x3/vbgxmO79HPJNx/8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=teWW40JCgu55R2OdgASpmqGlg37o2nUZvTXU7G8zQsJMro1ED/OZgathskYlITxah
	 N8ZrTPhoDHa0muOwSDSGvIsLSJxqCkW0dQsHqSkIn7hOiJvTvEoM0HztKNgJvLkCW+
	 5sm4accEm6U5i9BNpA5ICgiIBRSKIAElilGUg4raB3c4CdkwEcJky2foZW3iRWZw/T
	 lo9OmSf0D0AmIdDJUFOdyv5a7nUJArc+mM3r2x/OJL4AGU6DNrFrFr9Hu4FFiqxevy
	 n4GmnMZFdigwR+motXACW9ZAO31YQacH/vMkM0QSklNfX06CuCWNMheG9Uev3kvlcq
	 q0Xn9HJsXwR0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2FtR-AgkHCd; Mon, 26 Sep 2022 12:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52C7C60F6F;
	Mon, 26 Sep 2022 12:47:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52C7C60F6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C305C1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 12:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A969C408DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 12:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A969C408DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mkbqv3VBhFyi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 12:47:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97B11401AD
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97B11401AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 12:47:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="365048969"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="365048969"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 05:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="949836202"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="949836202"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 26 Sep 2022 05:47:49 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 05:47:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 05:47:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 05:47:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GMY82pAJ5SpMn+djhlUGm0UAMPaSfxuC2E3rhFhaOj8bonX0un+05cxw4fqUM9ylklgltbnlURmtYDnswNTyuMrQa3FKLF6T8H8N4DCwjNvCnPBpWN6Sau+1JL0j6lUQ1m3RBJIIX+GZDIjnV79rf/s5ASxmjpCKWtwZways2rsYYCiGk+D2yrU59eOINzTGnK0+YyD4ZD8AfBFmAE0LttYreLsUIs5V7PIfUWe9HqDQ9GMi3gWcowQAB5UI8JxMeEsdqux/mjeXhJzSmpeF9iy+7h1UCdKrQC4R5BL4kqjUGyYiOFhHI/CJ1NfS4AzPFaRwB+FU/OGITT0zP7y5Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hA8Axn70+n5Vrmg0CQlr3qf6cR4IM/4WQv3Jrti6k7w=;
 b=JWIMxD60fD4SNdif7o4F1FojbUItJ6oAoGGgDMwp6rhfjMVcjNN/GtbjPxmrDG9lSfBhi1ZgG6f1lW/EUtXYUldyRozNAcpINtqVMDQQepWt3E/nRnOPb+jS5fPsevLk3mTOx3d4rOPHz+XyW0TlFSok7lPr11LB3v5mW0Byi8lrkwm10zrSConDxk1tHiZ7B7Arkiu05Z0X0Lalb4gj6TO8wnMgvNwjRFqSrBd8z6Km6+oOa4T2RjqJDgm/R3q9KjXND/jZazW+3H/TZMZhRg9nR5mBPn5H7TT6ugoZBMdiDQd1DpwBl6SkMdrP5HVMT6uS3Y1MXqqvmHeXxBZhZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by PH8PR11MB7119.namprd11.prod.outlook.com (2603:10b6:510:215::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:47:46 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::8943:7a27:bfb1:329a]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::8943:7a27:bfb1:329a%7]) with mapi id 15.20.5654.026; Mon, 26 Sep 2022
 12:47:46 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
Thread-Index: AQHYxCabl8MIYzwC30GXvQnEs78SCK3xv3tAgAAB9zA=
Date: Mon, 26 Sep 2022 12:47:46 +0000
Message-ID: <MN2PR11MB40453BB27DE98B5F7A260893EA529@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20220909083326.344027-1-jan.sokolowski@intel.com>
 <PH0PR11MB51446613253DABA09F279AEBE2529@PH0PR11MB5144.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB51446613253DABA09F279AEBE2529@PH0PR11MB5144.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|PH8PR11MB7119:EE_
x-ms-office365-filtering-correlation-id: 32128b09-5a8a-4ff9-a070-08da9fbd5017
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kpweuqkU/A+5c3L7VYCTH8zSJhuv4UU5he/KSgD1hy553MAKFk9hcN2iOMcE7nDfqwI6U2fOUeTHwkDCn+pCOy3GGGlb5tT+8OM/DsZpiVizl0I6tCQnsALk1RAnxsa8+g2Aht2udTXe1wsmqUtscwdLruPxmyuwj5LLFS9c9K01qmf0QiQkbDy4TP4HwuYUAuU/KW12Doy3dKEmwmIORqdKPGsXynnVe6JNH97IOP9TFo/X8Mx41c1p1h3O1DNPWRjL2LROeSENGzptHiWEbOvxjltXiYk6X3D4eP49ZzBu7sz+pKPYoJmoV7PpreB7iqTMRfljt2HtgZamvMAkiahDcYtsg+IS0hgljw76Fk8lvpGa8ASIHTzXH2Dd9VCdR/hX4BHsHA/OspLHpuzKSu91xf4eJB1wN4jsB4EibrAFyvYw61DG24q+6DTk+aQkavvGG/YW5POqNsXkCJeO5W8dAWc2GpvUsi5lMteM5v9u4IB+BPSA+FuTp4OUwAzrkq0ryw+FRYXV13WnoCkhVtV356aSN01mDVGt8FKr3z/NTWX+8pV2/JedS0igE3CxYXcNgsa23yZH+EIBtNoucMIpRtBcep5KU5Cl0yX/Rrld69+RS1WoQ7nsqMD0Yt8eNUr/VNEQovW+5R/s5I0fxvIbY0Q1Z5tjYDx3aRXWTH+5vZkkYjD8+gcjQdRfNTZPrbwOFmImaIQnX/Jrb6n1W5GOhFY5egyUJtoZqzKM1vhhP/33Y1RYiFg7bUdHDswXyn8DBxALlyy9x/1A9kR2/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199015)(5660300002)(41300700001)(2906002)(52536014)(8936002)(122000001)(33656002)(38070700005)(38100700002)(66476007)(66446008)(76116006)(66946007)(110136005)(4326008)(8676002)(71200400001)(64756008)(54906003)(478600001)(55016003)(316002)(6636002)(66556008)(186003)(107886003)(82960400001)(86362001)(6506007)(9686003)(7696005)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/EtvC7PN1kGSVs5Wx7Q+dwoLfZW4Ez+j7Pv2DccssOd/Sd/mUjS+soVFTX3V?=
 =?us-ascii?Q?Iyo4p2o5+6cG+UuKhEeYneHONAZy/fCwpQAafbMniroI7YB2WCrODh4gJOaL?=
 =?us-ascii?Q?rhN/3ILtu3GeKYoa22f3/Sf1cOVZj+KzAzZUXDPhoq5ao6DuRqBnO00LAAr7?=
 =?us-ascii?Q?G5MN6YDbqQqDQKdmLnjQkmDJ7fGIxbjlAMhG0yl63r4/o2vgkzhEc/9W7OTO?=
 =?us-ascii?Q?B+Xo7grAt90sOjU59FlxpxfDzOJDG5BRZGtOv1yE4BdMehyVUxOX0rQ46eq0?=
 =?us-ascii?Q?tRbZZBMBFsbbKO+DFnNsTRa3Az3djLefJzkETgqEq7e63TIhUiZ3XXuyNazz?=
 =?us-ascii?Q?62fShCRSMyDjERa0krvVFJja5FUFSn7Dy5RmjjVgvKVHD3SWYpSjE485XwE8?=
 =?us-ascii?Q?HmccsJk2A7WJ1KBJDZUFeIw3K6Q8uJ/E2NSkaqit04VEsyllHfJ35H60nFEZ?=
 =?us-ascii?Q?1q1/96kLNZrnDGEA1JK647baCzb+Za4V5hGLJOLDSbXmhm5TofLJ+3MRXZfy?=
 =?us-ascii?Q?nfX+7tkEYwZP2U67My96TfCFfxX3OXE7R8QWuRWMaG+xdLCCyX/hFeKA58gn?=
 =?us-ascii?Q?ShlzIgcH1Jij9CvFQNDLzew4Mn6fzRYmEZlTkzmKsFMkdD6f2jJbaOWiyqxO?=
 =?us-ascii?Q?Qr1cbGWV+B4WGSRxXcJ8/eDhk80wqlFLQPYFy4kXx3ZtiiU74BXhK0enVdO5?=
 =?us-ascii?Q?G2FefeYhaAje7iFl7iSwRQpogDg5TPTO4q0X4hjzKx+e0WPYCJLGROwBYHO/?=
 =?us-ascii?Q?8NXYVDbhNyhAqyr1tfozJnUbi61FTQuk6YnuZqfaoF9pGsYuDpoIOElSd23W?=
 =?us-ascii?Q?0fJUIvpMKUFx6mn7glhllJ67d5VMJ5y3H7zVpl0fTfJRxKtTD1IbGKQQO3sK?=
 =?us-ascii?Q?vN+jonrUA5xdq0n5N5+oJshkM+zjvyNvTlIBJrTXJO2nH/RkEN7L2vhRcI1E?=
 =?us-ascii?Q?1tI6zvfwYsty0cKxzugBQ6+mgdQvZ0NIUKlRTZgauQc48Ecfp3ouNuFd32ri?=
 =?us-ascii?Q?i+zQleUGTmnf/u7GX8zmmK7sQ/9f6UVUGjcz9r0XrX5fekcR1Z6vCW/gQA87?=
 =?us-ascii?Q?SIMqvZVyb7MULhn7vloXT5AlybSAia19M/kCQYUsJOIZbnucqtp4Sa1hyg5d?=
 =?us-ascii?Q?jx5p66zSaTn36DUZRWPOTNISQYIVJKFfJRKGnLBVrqir0EjTPYImvS2wlU3O?=
 =?us-ascii?Q?vcreGsHaEYVAXP4bUCWnLFvayoff5AKw6rB2J4BghO3mHDYyjQ51CdUNjGZr?=
 =?us-ascii?Q?4jNmVsmycTp++Y6cYu8SYS3nxjRBZUm3gC3tg/WL2epedYa7klwCfpkCTmsV?=
 =?us-ascii?Q?eIZjKdp+qseIXBKGLcUgBv0qx0hwkR+prQHUL8lwXp2QSXQXPKWzhXT/Aq2l?=
 =?us-ascii?Q?wAijQVaIynX7EgV1CAhqn2gEI9R4AVlzPHndtm+C20Yvutz6d0VJLxaZ9vhV?=
 =?us-ascii?Q?Op/DHx0mwjudhyteOCOmJtLa2yUe3kvZViO8Q9IpPU9PCNi9ECNCcStwTCoT?=
 =?us-ascii?Q?OveizQErw9WLWCOmHH8Y5vUjLodQbGZKqBSjMKOags7ZRMtnmJNEYidrLryh?=
 =?us-ascii?Q?G9/73zdC53vSj5aHbE8nJ0eJeIqNmYaCZ8L5Vr0A?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32128b09-5a8a-4ff9-a070-08da9fbd5017
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 12:47:46.7082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bCgmiDYCiwC5Vq/GoklIi7LoJ2DNHosAm7bvIRFhAtqBkvNymUqj32HzDzXwjV29i1noqRc2XrG1N6DOE6Sp3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7119
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664196470; x=1695732470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=57PY3/G9mnXEPY+d79itm3Am2WJMtoG5TevuNtv6mnU=;
 b=BYeNtIr+DvwPDuWYvrx4gQwfxfZxnKnNvLS/D1f+/lDwMBTg0UKIEztB
 9FPlZavFBDg3gv+ADVSjDzAA4VzlJkoljTyglSGRnpdNe4omOh/VoVN87
 6P2aGFyQF/cAsBWoGLoqQo/gyoPsOESE8W5YpCHah1w+egiiCYGf5KY5D
 9OguOCpz0iKpeSEWBzvIexFpTwAl+8BvCFaKMcamQ7xwGeWVtni9EfFCd
 J4yoUFkVPKxdJ6vpmBgMBgpO2xS67oW6pOyclZt0WfSYs2Jb7hZYugBUS
 38oZ2AcIJMRWyczgSg7vYJ2WKlOLQMCpU6BRnpdYpbKTh1XN7V6lUFMNC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BYeNtIr+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

	

>-----Original Message-----
>From: Kuruvinakunnel, George <george.kuruvinakunnel@intel.com>
>Sent: Monday, September 26, 2022 6:02 PM
>To: Rout, ChandanX <chandanx.rout@intel.com>
>Subject: FW: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
>
>FYI:
>
>George
>
>++++++++++++++++++++++++++++++++++++++++++++++++
>
>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Sokolowski, Jan
>Sent: Friday, September 9, 2022 2:03 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
>
>From: Jan Sokolowski <jan.sokolowski@intel.com>
>
>During reallocation of RX buffers, new DMA mappings are created for those
>buffers. New buffers with different RX ring count should substitute older
>ones, but those buffers were freed in i40e_configure_rx_ring and reallocated
>again with i40e_alloc_rx_bi, thus kfree on rx_bi caused leak of already
>mapped DMA.
>
>In case of non XDP ring, do not free rx_bi and reuse already existing buffer,
>move kfree to XDP rings only, remove unused i40e_alloc_rx_bi function.
>
>steps for reproduction:
>while :
>do
>for ((i=0; i<=8160; i=i+32))
>do
>ethtool -G enp130s0f0 rx $i tx $i
>sleep 0.5
>ethtool -g enp130s0f0
>done
>done
>
>v2: Fixed improper kerneldoc that resulted in a warning
>v3: Applied commit msg fixes reported during a review
>
>Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP
>rings")
>Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
>---
> .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
> drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
> drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
> drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 70 ++++++++++++++++---
> drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
> 6 files changed, 74 insertions(+), 29 deletions(-)

Tested-by: Chandan <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
