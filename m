Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6C80C079
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 05:55:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9097C81A18;
	Mon, 11 Dec 2023 04:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9097C81A18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702270541;
	bh=kwhDnn1tYjS09vwH3ojGzZEe12bOUMaWfEJreCVj+xM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C2CRXU5GMq53cFAQs38174iRBSUK510u0sF2mZB/zKD3Khim6LoDcyTAgsMB9SPh4
	 x4uyHLoef8YHpNqp+LhViwWJeXl/YA8B/esdYQj2nKOrMM/WrYTtfP0yPcRiIljZwP
	 JMIJRSldnq4yC1Ct+VimyYC7PFvdBQJV0qoNS2Plu8StorFj6ae4fPyBdZQ2shMHTN
	 eH6rS13FZHW+4vXsziXZoZ+yjQPL2LJG2WVOXxRgoaW5embnEbKN2vW/Nx3x7nV/qp
	 sKJPf50jmSwefEhWI+uijYSEB1tR5gPnxv4aLIIAl59m5Ta34OVDKUGcu/A7NAuWKW
	 /HSMgOPVuFtCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7UNOSK18dwlt; Mon, 11 Dec 2023 04:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F60B8195D;
	Mon, 11 Dec 2023 04:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F60B8195D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02EBD1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D55AF81852
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D55AF81852
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4JEy-zkIoCOO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 04:55:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E8EF817F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E8EF817F5
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="1666891"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="scan'208";a="1666891"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 20:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="946159829"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="946159829"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2023 20:55:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:55:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:55:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 10 Dec 2023 20:55:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 10 Dec 2023 20:55:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bYzZxb8StozwuKtbVMJA6nvDog5fFJm2g+zuY52TgU405rzFPKPr1XmfX1+6aqzhNKsnLMFRX5xwC/LLhzxb0s0/V5Omp/VOW2qlRED2vSDgvxMVj0bmItWh5CJw6B430Ss6MxwQYuTFbqSlMeB2C4ZFbnpz7gtcena9vRtCgKdHFmZL3a1/3W5BC90mGh54FazYeqTpwaDGMejfHpTS5EA6XYdo5vp4/N7YZexX+ET7lwaJ/uiBHloR6LiqaVb3XqtmnHftIH9Wum7PTXjBIuSNAQ39N8DevaZH37w0/IqBK2rZppocf96yOW/sq+4GqXJsofgLO2Gqg9xNTcNDpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4YFGKoc+TPIOoCrtgxPlfYmiDgZVvh7nN8/hsX10KI=;
 b=Z++ug1pQroS07VDs7b8mYFAXjwdVqTpQHlK24mUppSDFsmJTI+WiofKOc3oxgmHwexTx/3lo9NrmKMMdfvoCcUFfbJSPt3Z1jSZLdm5U5ecFLhwfJBS0ieOi6l2ozygY/NDVtXCUIZjnNpoSdvEzvBCrV13d/uis1nDEN29+GSfoYK7z73FzEFILMpohYxmFXOddurRtb8Akg8EftsfDAE8JRhVD7R2JRaGE8X+zAa47F8dfFl0cXFVuS+04vMbBqsSGNPMQ1h5cVdEImws5lVpmAEorldNh5jp4+Y9ocHN3r5sZxSqJJ6UnusCEMvxmPY6Sf/NC05ZIvORTCDzXbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB6653.namprd11.prod.outlook.com (2603:10b6:806:26f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 04:55:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 04:55:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix theoretical out-of-bounds
 access in ethtool link modes
Thread-Index: AQHaI66D8bVBU2eaCEWK/h1KRtI3NbCjlMWw
Date: Mon, 11 Dec 2023 04:55:27 +0000
Message-ID: <BL0PR11MB3122C204A8FD85F7FFF839CFBD8FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231130165806.135668-1-mschmidt@redhat.com>
In-Reply-To: <20231130165806.135668-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB6653:EE_
x-ms-office365-filtering-correlation-id: 09dc8b6c-8ca3-40d8-67df-08dbfa0564b8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SjRNQAVWLMTjbYpISIdqlEBFYMoH+sOnRZ34y9RSwiqkYY1ozHroPbRUi7DVAf9168khVLOR+Bly7nVUgpZL8B2pK1O+Xbv8v+D4y07Qv7ndhzgWTYngaT9IuaT5Zlz7fGfy6tNSbY02eHqD3lKxDfUKh4ueGGWKt8CwVlkuEG2iSGSZmuEBNtYHa+qc6WYQzbG3fps/xqNHOgfJaCCm9/xgUjekSZdWRCoVSFuO/65NsEPYaazXYP2+50ViCQ8TgJl0CL4Y3yQFTXonrmSlXAXOx2vZ7BLEjTftKBeG2FbkG/5LUTojP8GfQA8xUGWXnML+7EVDjjQnS9zwGi+sro2TJ/oDVRdJpnKefUfy68BIK9vpUfpciQIYLBuRevmMjt+IeFfocBgyw6uWJzGJhw1L2glWa3UwXiC4apvThuNQCtpVnAXaamW3tZZwoQUb17xzEqcc+O56R3sbrbWIEBjSYr3r4JmIN0MqICLb5sOplC3fZcUxrL6k6ApOZSzg6wB9jO2z22Ona4JMdIlLPczWi++okEyWGYULKG8eMHDcVKgECoi1qgJmrcOB9G1LYWSYR6ONgZP8PbLmlAQwzR9Z12OwUZ9ZFVdG26eDjodHb6HuYbmjj+aB22LjE3Fy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(136003)(366004)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(2906002)(41300700001)(38100700002)(122000001)(33656002)(110136005)(86362001)(82960400001)(9686003)(107886003)(26005)(478600001)(71200400001)(53546011)(6506007)(7696005)(83380400001)(4326008)(52536014)(5660300002)(316002)(76116006)(66556008)(66476007)(66446008)(64756008)(54906003)(66946007)(38070700009)(8936002)(8676002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UploBdBVDDsvUlGjkHxQPx+ZAzrstVojxFqdjsSmsEnfpD0nta20tjCTsKCc?=
 =?us-ascii?Q?Xz3cpmnEiZb/UO4ZkKct9h/L660wOBGoKQRLOzXlJHQAxyaf6tbeZm0Cch8b?=
 =?us-ascii?Q?4JzZ8To0OW8xipZzG8YuDDLM88Sjziu4ulAlUABoloRdAULwoIYKapZTmIEO?=
 =?us-ascii?Q?YRLCCp0uQSlostAMG3LLuXxpec7CMb7P+hrXPqPfA+NUVGtvDQR3PszO1lKu?=
 =?us-ascii?Q?e91nRQl+WCob9U+Z+nOqwhv4BHeENOtQQafHwJtfegYSDBt4wzRVVIBy1iZK?=
 =?us-ascii?Q?6OWmJ9UDnXvwEp9+V37XklCxstp5XGGCdfbCy8s6HAHgNB9x/EJP/Qy3DEkO?=
 =?us-ascii?Q?H2UxYe71eFcB3t33obJMa1VRnxSfguihAP5jzjctP4ShCsxyAGJ4tqueL1NV?=
 =?us-ascii?Q?fTxhcq+hKWRfgn4CLy0ttuOSDtDq3UyUie/Szgiwlz7BgJfJ5kzrfEb2z22c?=
 =?us-ascii?Q?mNSiwfXsXuHWJxb2BC9vibo38VIdSwGNti7oaCJNUo43hNbE3Qfhi1Ap7w6f?=
 =?us-ascii?Q?Kh3qQobUtZpAsKgiM7NORcu6Qudw34i0yM/JZfK1fRb4GqFA8XBDiwoowkEG?=
 =?us-ascii?Q?bnnG7HgSdhyPCieNkKE83ixxbouTK4WuL4WcOMSYSTlKzURJtdAsdgeVhdUm?=
 =?us-ascii?Q?2dP65XQOeVIUJE6ZH5mE2KOJ+M+yRlJz07snglHQEnW4tNmN8uUu/+RdQZVN?=
 =?us-ascii?Q?IHDKNGRHf8bFosAgdEupuu4H5EkM2mXelMjlA2wVOPTPpsok2EoBLTjRftTF?=
 =?us-ascii?Q?SGwyMoKvOtrhccbsexb8bSFPh2TXB0ZSZVNymD55c6KFNTY5QToZxyProPyc?=
 =?us-ascii?Q?PoR1oe0CtGq8Zn06zyZin3ScEvmeBPYtocXZxXmuCuSl6vREk0YzlnElst9r?=
 =?us-ascii?Q?Q0t4EuoCus5V6hOqqq6hWXLARBM05l7marfho3kk1PPmN822Mpwqt7uptwtn?=
 =?us-ascii?Q?Gus/X9tE4jmjWj3KUW6eotfT6YxoqazIlyzI0gLpIn1L/k0HEoloOQUyqhgI?=
 =?us-ascii?Q?rglX8DgFk950FFvLryqY0KJrFG+ausjPL+JZFBYgI5PnKcG68udALg+0lemf?=
 =?us-ascii?Q?eVhDsjEdLulzrAjWrBvHHm4oqYFUEH5Fhg0xcDVdy9+lrVeabh6PDdZ2YWpy?=
 =?us-ascii?Q?Ojc10uPYD6AgnXcuGCf0NVUN6UaNPiOquBXwHFVJl2Kt5j2ULdXFyWXXHjEP?=
 =?us-ascii?Q?X+dMHbkzPtJ6othz3wq5fH1weXiyCPipvicQadwjG/8iUdtHfK2ejdde4R9l?=
 =?us-ascii?Q?JUc2BiEQ11evYuwzxRLbl0L+v25scwMo6RWV4f7HQuUC98sVg554l+QOLyDm?=
 =?us-ascii?Q?kz/m+QkAe/psSf/UauBEKzvc9UAuzsKbLhdoJ0vwfQpagX2Ly8UUwDW8L5qg?=
 =?us-ascii?Q?h7xynaYEcCpT6rAhxOLonsr1vVyu4iKwmuvH8fYb7Yq224L3XRIYlbPEqeOa?=
 =?us-ascii?Q?Rk4uxWdb+hBj8QpJMH2lisixV1ptmRdGKbnVHf0pMDrL5iGlohU7uHvKuEia?=
 =?us-ascii?Q?3PmODUridq8MtH8WV6OS2poPP6agwlumACVkysIDZis9MtOlZYrfWozpVCWq?=
 =?us-ascii?Q?qz/U9OEf3m+BzKhh1EoxC5WvZJGRyqb2edEo6sPntw9PFPv/4Gd2K6fF9HQh?=
 =?us-ascii?Q?8Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09dc8b6c-8ca3-40d8-67df-08dbfa0564b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 04:55:27.4167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RZwwFDCBZzN5DZS5wiqBbE6lFXT21im/3OnQusQoWYP4mngRwpjs/9M+CuF1WRd+YjsrUsNQHT8+a4cl7+u7UUjkJ2X3RyVsQeEsfnxD6LWQQ3YUvln6hUfJksq7V+Wo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6653
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702270533; x=1733806533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mu/PM2TGRlY87mB2lNk+bDY2qKQsbZF9Plpq5Fcg9nc=;
 b=MsxoV26sFw3Mx0LTI9gTaNwpF3Pn9KmnKI5WKfJ5gwdo/RgIXleyF5st
 NkamCriIjOZwKu9niwAffORHZhzYGBnwVKFNt7NqKUuExUBj663Q3bI6O
 mfBhT7osjXLIBjkm4uVY/OMXWYdLcqFy3Yw6N8+G/ecuZxOKEUgExCleh
 wSHSH6hkwkxPTxlE1ZALV8bpqNE8RZvL/nr1TObkBgKqREVLlmmzAUmoJ
 hrDVV5ecxvumeAZB/DTrOFhhGMWE3HBKtvC7mIklmfbMGyUg52yE9Lxzk
 9rR0h1+uMNytHkURvSQxacKikMne/XbtOiDnftaW+OqlWxi+8v/5Q9uQ0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MsxoV26s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix theoretical
 out-of-bounds access in ethtool link modes
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
Cc: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Schmidt
> Sent: Thursday, November 30, 2023 10:28 PM
> To: netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Greenwalt, Paul <paul.greenwalt@intel.com>; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix theoretical out-of-bounds access in ethtool link modes
>
> To map phy types reported by the hardware to ethtool link mode bits,
> ice uses two lookup tables (phy_type_low_lkup, phy_type_high_lkup).
> The "low" table has 64 elements to cover every possible bit the hardware
> may report, but the "high" table has only 13. If the hardware reports a
> higher bit in phy_types_high, the driver would access memory beyond the
> lookup table's end.
>
> Instead of iterating through all 64 bits of phy_types_{low,high}, use
> the sizes of the respective lookup tables.
>
> Fixes: 9136e1f1e5c3 ("ice: refactor PHY type to ethtool link mode")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
