Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85116EAE95
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 18:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7829E41DD9;
	Fri, 21 Apr 2023 16:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7829E41DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682092879;
	bh=0haXarblAcFnlX0ZBKN2uiVatdkHj5CFgSGl8vct/Vo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFAYjtk7rwEZnZ7L5r/Eqn6pVg+8gWAO2vxUaIcLXh48mu/0DCqOeSR5u6EqS15y/
	 hYlDwqUmj8+n6RPTw54kGLs/wNjBScgqlj52cWLpxpPXo9GxTbper34uIeuRi4AObz
	 5nqohjTpIpcpxRPOAcYfilNiDjzoQ/QN+V0WCdoQN1m+qMKi4uq1xWYIIJckQgKJ3U
	 b5ZLRd5S9L0Nec3ORWl6xWdLeuvbMdI0DXktJErxlT9XM+vorSWNuBXgV+SOPtMhnh
	 DgOyvYyEkh2eEwhnVJFrG1UMtMM6+rVmdSulS/98myARNF1PChWH29Ws0POxhgZDaw
	 EOrRLWk2mKAtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zB_MxRaZshvb; Fri, 21 Apr 2023 16:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EAFC4179B;
	Fri, 21 Apr 2023 16:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EAFC4179B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8399B1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 676AA40217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 676AA40217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9dIjkcU8-gTK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 05:45:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3479D40101
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3479D40101
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:45:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="325523074"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="325523074"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 22:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816301458"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="816301458"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 22:45:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 22:45:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 22:45:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 22:45:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 22:45:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWct3g64hyf+o0UofoFq0foEVbE5yZQeK+ImepxrAmzTIxDiLEsBBb39JzrpD1GylKpUZyppNamB88QBYulmw43ZSQQCS3zBCubI/6nBJLsYkH/jDVhktidbRktpiGETLNHKxlRWT4VQWnc1SYinN/by7aYkh1xSzLNACTBJ+7s4ZqOeyoD4xm9jd/6S3mzvKSywrFvbzCIUgpN+skRuGasvMnmTTtYOx4bQZgZS8JZg7nWYqjOXju91JYTYdNuXPqAmNuicxDfFbC5ZrZKIdsAMDYrIjQ9/4qz6SRuPz9UPy7/tP0du9TTJnx1blyAS0gj8CRFXQOHOyIEKJbA+lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6JjpDUw9jDh7i4V/9qdEICRHRyNqmyPAZigFYBPwwY8=;
 b=jo31iOXg9LSqsn09MYeu3vqvCUf0ctFT/fENbzYdXyIgmtjFBv1WjJcgYZ0/LxJEHyt6oGcVxmkfSC77ukY5xAU5rYYd1RbKRaPAwAoATiaFN3PBr5VIuhy446zkw3l/DcANESHtRatxn1Wqpaj6Ya0emaDEeTreoTr9dBJY3lXHM9DI07ze2JCcnhg713jXJ6IoY/KloRo0wC1Y4VC2tTbrdKUWObwCzOJTF6W+0J8SbnnMbCnn943cYV7iNSFoNOy8w0cq66Xtn/FDEqaSMUxnyO2YsZkwQGsP871CeAdSshISrUl+Z3oE39Fa4joNDw/lq6v7TOP3IRsnBpM0GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 05:45:03 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%6]) with mapi id 15.20.6298.045; Fri, 21 Apr 2023
 05:45:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Raczynski, Piotr" <piotr.raczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 3/8] ice: use preferred
 MSIX allocation api
Thread-Index: AQHZXYKWiV63SLFnI0eyfL0ZgopyE681bRKQ
Date: Fri, 21 Apr 2023 05:45:02 +0000
Message-ID: <BL0PR11MB312260ACA86543D5C5ED1AB1BD609@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-4-piotr.raczynski@intel.com>
In-Reply-To: <20230323122440.3419214-4-piotr.raczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA3PR11MB7556:EE_
x-ms-office365-filtering-correlation-id: 40027c9d-9cf2-4024-daaf-08db422b8d8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: haTtB0qrazLPNy4gzhDJ2CtPA1qVzPcnUpC89gmdxxASSz65ItJSTuaQtUD+Cc96ujLFoqZXcyE8eoUowwvI28HHOxd/l4vco0YqoV9bpJZnlVj+l5hCcuqx1AzN4voebh7ztJnUv4hPSIdtev8tWvLZSxmJDb9Dy4B4UwFmMPAMhQi6AU23IqueVkC6sxU+k4Z3GA0xM4C2K+cjwFH4LxtUnbDzIaKth4U+D2FKnOIofkMbNyd5c1j783XVQ5T7LM+jdLAJ8dppe44eO+kGlxfkSPpJPLKk2bpy0ZHAMAzNbzEyravKedVd3mWvtxiwnn00ZpCD4Hh8uBUpRlf7bfsiJl1oH2c21rK6+5eT6TR7od2sO9XWxI7gtl2mULJG9YSIkP86KSIGLauCXWRbzCDxjqJZRxXLVjkqDtafNxp2QPPMIoS8kS6+xNqrKZVx5+wqvE+yn1BVuUOB79CD1nyYYwwQ94IV52BNkiBkD54+eh2R55oXoyReABlGdnc7+1e9nNt2wYJIg6dLMJb6oC4PofqZc8yrZqI1RykL9MHTYfu+QX5jQ3F6ypm+SiMBpsC7yk4odLNngGuQVgiyI0f+QkphUsq1vHV51ozr4Kq77fI/YFmdM0A5JLmBUnRj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199021)(38070700005)(8936002)(2906002)(38100700002)(8676002)(52536014)(5660300002)(33656002)(86362001)(9686003)(6506007)(7696005)(55016003)(71200400001)(107886003)(26005)(110136005)(54906003)(478600001)(83380400001)(4326008)(53546011)(186003)(316002)(82960400001)(66556008)(64756008)(66446008)(76116006)(66476007)(66946007)(122000001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W/5O1J9ZonhntilxhBkeBkf4UMHCmJZQEBzDx02k24CtK4Rv8N1CbMSLXQot?=
 =?us-ascii?Q?nFXl3WDEAo9e6IjhZ8gbiQz2iB5pp2GuBClD1avPJUIb+8PkEPkCwMS+kBI3?=
 =?us-ascii?Q?vbwabQd5uDJaCPNNLvT5URLuSkKSlyIER8Q9oApG6IdC3TMaO5GXkQpRs4kj?=
 =?us-ascii?Q?m+MqOSglB/FR/E5HfIVo0caWWKl+k9l+XRIocgKLOJUOe2/7vMQkop8Xugfv?=
 =?us-ascii?Q?Hn50Hnc56LcRtbhuKy25/wqivE9KbfJEbyaW/7AucD6SSd4YZZ+xYUWtv0T8?=
 =?us-ascii?Q?V8DY3EWJBm+BHlwO3zIOnsHZADHYBkEdk/DkJZEJQ+FsySSa8M0/AtSbm/HE?=
 =?us-ascii?Q?FsoFt8X9dEEnUnuSBftuImq6OcTgms3bbJN3Ad8b6J+gAeC+i+RbVERWB6D6?=
 =?us-ascii?Q?8aAdn8JK5nSvgrO605FHmkJg3ufpjjtme5a0doN9z8kjMxOTXIazyWtvb1hK?=
 =?us-ascii?Q?V3oERhHNy1pL/wXfVg9wWMOBwVwWekqWHmQG6enO4O4vcmUZ+P/PVJ9Ic3jb?=
 =?us-ascii?Q?Vek4GsYNeIn5IYX/LuXGwz+4TtbA/xu/EFOwMbMkMjbjfmc7hmLkFx4Wg4lJ?=
 =?us-ascii?Q?XUd10IcWPjGp3twiMqg5irpURMU5TJjPTEoKMG/uWxMSa3EgAjNRS2zK7lrJ?=
 =?us-ascii?Q?lGnBxp+MsodeedN0Hw9PETm6xvRvtPcY4b7qP1q3UEDdF11v/+zT19Jx2Sxv?=
 =?us-ascii?Q?yj4jMdeK6DI60Q5Rb0C+zlBE+3HU7QjniOhWSjsJu+MioFHwQNIprj8IAd2F?=
 =?us-ascii?Q?6JTbKqQNu90TeHOsG3gpcFcKUsA72XkGCxtrR8OCDKKIad3bEZ8FjuC73i78?=
 =?us-ascii?Q?Xa76Ij/xg+eoPL4cqQfsC0BGCaYUnA9ggegW2q4Q64XMHoqXZ6oBI2dVYojt?=
 =?us-ascii?Q?65v2Y3iW6MevpDrx8Dst4475G7WFPDPWocQdnMiHndDG4bhmEf3s5zLBDVQv?=
 =?us-ascii?Q?hMsYGZQx+m0caajMKS1g5vkso2lCp4AL5x4JHDx0FyY36c+r1npSF2r6O7/8?=
 =?us-ascii?Q?l/58vLXxQ5o4R+6Fo0qmKKu7QKTYdXnEXsvy41XOyIBCpzs7mFf+yA4UATme?=
 =?us-ascii?Q?QylEqS3PEUd0l9vwAsJcm2jRteTKVcFEB6iCtkCJvAoct9Gyr5bU1CsHZErU?=
 =?us-ascii?Q?3vMZuk4kTn2mS3jGqkbzEYZSpuN4/fxt1Nkkd2joHyp+YN3xQe+4SuEvRSbi?=
 =?us-ascii?Q?Jg8AFjJF66xkqRCs+lDvS9vjb0zFf9nSS60vsPG3RVTMOXJD3h7dY93boVUf?=
 =?us-ascii?Q?sDdXD8sY9rR6RoyvpHyMyybtdgJIFNU3ZArYeHr7I36LismOhoMCEVUukOKp?=
 =?us-ascii?Q?k741Lrex/OCTKf1znZ8dQInzW9eXD+GR9eeroNJr9qE/EW9AR3qeDXO1L4Mq?=
 =?us-ascii?Q?mgo4Cm8B3fH/ruTVd7IHSiuQbNBaQi/05qT5xl58ImoHH4jN89AiLG8A5Br3?=
 =?us-ascii?Q?mUzEuBldCII1BRRUCSTPpaJISYIggDQNo821p4zN/v8aOEzmTaul7x44HI2k?=
 =?us-ascii?Q?QpOeFIpU6Gizpr+U+r8l7OveL/Xl0BKhsbgjjv2P1qu0x3exU3ZyhFKttS56?=
 =?us-ascii?Q?TFO2IMnCzanCW/UsFAdDf7a+o4tCkDDISHaDrpe+BwkXHbq5G5N3wd2Iuqw9?=
 =?us-ascii?Q?dA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40027c9d-9cf2-4024-daaf-08db422b8d8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 05:45:02.8265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Phxo3z3dadolMOi1Gpqq8O/5GT7wE59curpiurNeWytepmEIyaH3Fsb0te4E17OvszT75f+jrMRo0dOI0sFMlZFi2SxL8rXnxjSVywFzDQ7ydIKAWRO/slgcM4T446nL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 21 Apr 2023 16:01:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682055918; x=1713591918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f/x0suYDRge7XMxFLVkAcMicfWQy4238ip2n/dRKx28=;
 b=klErMZl02Ns/vWoKpD0NtwiKTXm/rblOEZpRG+P8scAEjJ6oTxFNLxon
 36Y/FFNbHMP4wuEWaqq6IIBzKb8CJrJ56f4g0HAys6Xh7XWtXcy8ddAG+
 rqYVADRF7mKKGp/rP9OlT50WHiZGT923EWJ/STmrZ1xk3wbJy+6uBkelX
 6gXBUvsISp5ea1xQFVi8L2sv+xVO+FfCfnFC5Kk23LpQ8w9ji2Uv+Q9zT
 q7YPQiG77b0jPxsDTSWgIVG3AntYjd9TyUkfxH9oIyAzw3yiSPOrIHalF
 zB/7b8w99wkJhFlHttL32Mft0WTdH0iddLGNwy2E232lGGT7Wg4aG46AD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=klErMZl0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/8] ice: use preferred
 MSIX allocation api
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Swiatkowski,
 Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Raczynski, Piotr
> Sent: Thursday, March 23, 2023 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 3/8] ice: use preferred MSIX allocation api
>
> Move away from using pci_enable_msix_range/pci_disable_msix and use pci_alloc_irq_vectors/pci_free_irq_vectors instead.
>
> As a result stop tracking msix_entries since with newer API entries are handled by MSIX core. However, due to current design of communication with RDMA driver which accesses ice_pf::msix_entries directly, keep using the array just for RDMA driver use.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_idc.c  | 29 ++++++++++++++--  drivers/net/ethernet/intel/ice/ice_irq.c  | 40 +++++------------------  drivers/net/ethernet/intel/ice/ice_main.c |  6 ++--
>  3 files changed, 37 insertions(+), 38 deletions(-)
> 

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
