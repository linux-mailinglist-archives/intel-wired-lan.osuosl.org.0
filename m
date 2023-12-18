Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853A7816615
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 06:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37E1E404DB;
	Mon, 18 Dec 2023 05:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37E1E404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702878021;
	bh=Zr9Eg6ITtgVQ8nEHNF6TOLmLE6WblwdQO9TxKLhws/c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MO5Vvprq6rJygnKWlCZnQTSRlEdojSDrpNIZHCWtV8sX6IEvejA9MbmoXK4Xa5JRC
	 CTHKTlRTY12N2idsKCyvEVYveo13MrepRvfJGY0kx4NntRtWz8IoHjX53U3byf0xPV
	 ylIdiJu8+02qBacaFwfkgFexOVzLdHBFy2mgN1x9HwePuUzkM8FGvK7/Ue/7pyVwM6
	 r5d5haW7oCN5F4q8+fd7/OaaLrntkdkZ6IJmnvU2S+wXK0ISsokt3IrlaQRQPXI6pV
	 UxaM332/nNWBcTZZc/krVe42en9mgcgL+rMXl0eSZV2DWN4GgjKglshCvUTi+pb8t4
	 yeCCL0b7/AtWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSmJprHhrMSm; Mon, 18 Dec 2023 05:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86A89400BA;
	Mon, 18 Dec 2023 05:40:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86A89400BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CE601BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0368641684
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0368641684
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gkh2-pWdGmy1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 05:40:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A666410A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A666410A2
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2285497"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; 
   d="scan'208";a="2285497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2023 21:40:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="893691184"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="893691184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2023 21:40:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:40:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 17 Dec 2023 21:40:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 17 Dec 2023 21:40:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dORc7BiDjzec+oznRGR8KA7QRYCUTyGLMFjsIziOrLG64wtu01YG3GbwejnkY2iuue9PCA/pGo7u8UybHEs+zsr0UrrnvQYqOFl6QZIIlNMQFR4lUPAR8tOAhNcwQFz4hkHyDlCf4krlH+VUBrpwGlTSlVGntttCyMf6IA1GkWQw93PcOpVA7HE1CUQkzbXnBjhwcs3OqYRIcB0ofHROw7OGHsEtqJNDqnZK4d1317TOB37vtqNUI0RTLpzp+ZaSimhVTOrxxL/276K6LeVT30WzkmdLMJUkVA+rmFNtOqIKv0T7YV46/eR6FdWvWI/PZB5Bx99TUerw9NY8hoKqsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZTZX31a4EzUluzTX/pHlu8eRYk49oDTY/tT1ZkPmfl4=;
 b=Bd6j70EXypwZWPxt6stWXawrIxlD5v4/bTEZIHwmu3qayNOaLDHJEJHbgTY8/Sb5QDAm3oxjfDKgzkaiSwrwM5NELpQVSxowurmRmu7SunpWbGCV7lvxjMH/iabQt53kUy+LerUJluSS/ZrO3jbsCC3k+veuabsaEohT9TOHXw5RDuDt1FpCcIa3z1O/HBkj0YAqBvOM2DcIdOju5/0XUpkhnusg6627wP0T+tDJWMcZQPbq8k++5xZ9wqX+Etj4pKCfyh7FOWch1+W9VkyfbySBtL+2BuK4Mm4HlyzGS2kWaeh5UbE4gS87OaRnBioAJD8HT0IeYs3nAhlKPBZQEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BL1PR11MB5553.namprd11.prod.outlook.com (2603:10b6:208:31f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 05:40:06 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 05:40:06 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 0/6] ice: fix timestamping
 in reset process
Thread-Index: AQHaLEMnUghcVi5AvUSUX0G7XDH4CbCujszg
Date: Mon, 18 Dec 2023 05:40:06 +0000
Message-ID: <BL0PR11MB3122E2EF359D73CBEE071233BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231211150226.295090-1-karol.kolacinski@intel.com>
In-Reply-To: <20231211150226.295090-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BL1PR11MB5553:EE_
x-ms-office365-filtering-correlation-id: 409c844a-d18c-4698-f478-08dbff8bca30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jr91EEWfp8Jhv4jHt8x23RP6Tam4o4akFajRbZHWo+xNqnu+wb4ahLRV+H89tmrZMi74/VEFyMMX8hk5PHLhTUkIwylUi0Wl3sIc6vWHXepeoA4S5CfHorVA9jDUtHO4qTpH8+JcUB9r7aa91XT9isU17r5hIFsxxDCg6/GHp97nJ9eWE4rbCZi3hhcOhhAOdni4Vy/6LN6dzDK/50L64N2t5lWJOdiJzNIUzbWcsGCdkfeHm/XDBDpV6io37A2eTlwvB3Bna2WjrdQLDre7XbO7r3vNWfn/Mqiq+ZkqxH8w5dpch5jjZIwrymTvepyAX1mvUQDid3mFjer8+qLPdQEfVnw3Ax18BcWEM2uC4byIjGZwvJ7rrTkiM9WJGy0QHi8+Fd1bb0a0OxFwCUvpHC3g2uZo96bn7l4C4hL6DGliqX3u13lYOuFSpR4mf8+V3o4h921kzGMxn6UPhZAC/Fx+Jy4PK9K0Lszzs16tYpfiU+6UU4qD9ROEkDF++H9h5o5bbQpxT5hpkGXg++jqHj3YTdBhw2Suihb00XKwe45aPFkHkB9KmT8QS5ruah14NsxL1jbg+TV5TD86DW4Ov3Mgoz/RbYqiaUxk79FKFmDXceX7FoG0zjlVeTTVrGO1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(376002)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38070700009)(316002)(83380400001)(66946007)(55016003)(76116006)(66556008)(54906003)(64756008)(66446008)(110136005)(66476007)(2906002)(122000001)(52536014)(4326008)(8676002)(8936002)(5660300002)(38100700002)(71200400001)(53546011)(7696005)(9686003)(6506007)(107886003)(26005)(478600001)(86362001)(41300700001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kxuFKaHghNMxC+fTtqaoPAjhKz1bHAgoHfNy3PUf2OH5Y+MhhS3omnHqA9lE?=
 =?us-ascii?Q?/2JV8wRfPslfyLyYaRrggBf6jw5/WSuO8jB4FEnPkhK4iSLqdQ1uEcVpqNUY?=
 =?us-ascii?Q?BlFPWHQyOGKPUI2mdTJnHwFG5ZJ5xCdrNxJloZ9PhuZMsR8dH60I13MZcfzQ?=
 =?us-ascii?Q?cdEqZ06VQkcV9CO05ollP1DghUf3tZpOixB37GmSJg7LRHcuKj4Xi3sn7KRi?=
 =?us-ascii?Q?PqGZ9EKGbN7YP/95Vw0gSr5jPOlNhk+tDLqLAosN6ZCB5LhSBX9CxJFYjiOg?=
 =?us-ascii?Q?KL6cHdVTzuTQFjiP207w1Ea9poHZzHL8gq1Fr53Pwsrq5LPEzLd/lHi0qCki?=
 =?us-ascii?Q?Cz1Dm7qtvseX550zLLZTfaVWHofl1y4c3hykVZiVsxloqk8ZC3vWNNk3uzTd?=
 =?us-ascii?Q?S99gyKPsw9dFLylSHYVk8Mda4D6uETpjFXQfXpSIrw+jAUOMXiuoXyEoKc+N?=
 =?us-ascii?Q?4Tpr9o96OP+j62JxAeJ5n8LTs/nE52Pcm0QM3EUV8NrppOHB1EUeGPzIM0ld?=
 =?us-ascii?Q?jRbuxcM5h7zIYWc+M8rMe6uva2kaLEzYGEfWwmGuShRilxWUWibBBDfPqhxc?=
 =?us-ascii?Q?CTTXF8a7FkcQ9FO6JSrvefWC7TiOVA/rOC0f6Km3NF7omqlR+fhGkh2VOc/5?=
 =?us-ascii?Q?HSthK1W4svCVDuadG7vLSUlod5qaRNnnjhthK9JA7deSetKB3bHAin8h3aB1?=
 =?us-ascii?Q?NrgBuxMRVXJ7wdFYPkPLcS+7xY2gH3D4rpgbmW/JdVZbRhn84PIgS3L0HeI+?=
 =?us-ascii?Q?HzYcutfXsSnY6NZ10Ej6cv7rvey5lywPp0eDyPB8DHqiRPwP2j7wOzG02lqW?=
 =?us-ascii?Q?c8p+D7n/dmC3b58yGpVmnA3/Esgxx6EjzmVJHPUBWzSY0R6XJw+Nhk1Qrtnv?=
 =?us-ascii?Q?Xj/vMl3nkyjGHoZ/f9ZSRe8GhK6f2zuYUIy6TIjTwTevvQcme8XaSQGQzULR?=
 =?us-ascii?Q?F0hK6YD8jrincMHJ7q6QqHRq3lc/120SEWr4GhW1mo3rURNbtw+1VD6w/MxV?=
 =?us-ascii?Q?CZCdAB4FJ+xWejWmBjGjsRe/KK+7m9CoHjj0rnIW+O7kntxdgCT+O5RQWaIg?=
 =?us-ascii?Q?SemS0OyoiINM1G6hDhjnaxI7GJmsQEQycRfoVL5Hx0Cf1pNjXO26I97iObAU?=
 =?us-ascii?Q?2hSRpcHg4kl6Gnv0zzf1cLnh+MeUB12rgyGZ/+J060y4M0AySJOTou7+TaWx?=
 =?us-ascii?Q?1DGFpL2GwXYJpSe7rH+z3Mze/mhJF3vHRYINoJkrm1GL8Cbd7vFZJ/LOHB9n?=
 =?us-ascii?Q?wkctFEYByHmvaKfQQgB+ab3tQrSX/1dUHtySbAZwWKpMY6M0t320D1t+poS1?=
 =?us-ascii?Q?rwqWgEh9dNl1ktoT9Iken5txWlHvWyupLX7ATDggw+E+WRsg/R5qTzm+bdfX?=
 =?us-ascii?Q?gIKeEOVu//kjtYgdNAy8vp8Zk1yDpdd6S1uE0w/CIXZrKt7CTbKxBCSnUz9y?=
 =?us-ascii?Q?O6PQA35OWBySeYLF0/aIO+xNWsBo4H6RPXyuQuGZHJTDiszCQL9uRvr/Cap0?=
 =?us-ascii?Q?E4d6t4i0HReFnKCkOFrpth74e+F8YoRfnS2C7Kqa88dCVewKNoiUiMWpVjlN?=
 =?us-ascii?Q?xZQiGH+SHAlMhM07EUj8PEOtLCRxkZ9dcziHlsp0F7bSCe+Xe8vhHj81GHz0?=
 =?us-ascii?Q?jA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 409c844a-d18c-4698-f478-08dbff8bca30
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 05:40:06.0514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+F3X5k9j72OWyX+p5cghemIDhhw0y2+jbcTn6v9MOi15YVgP2nXjx9UYFg7wvjogetI48uH4un6vSGJcx/jA4fjNOmkNhr9M/B3ckZ+LA/TYp9HZNXcPp+t3t73n2IN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702878013; x=1734414013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C9w0eY2y+i8mTWvxT09Dlgph70UhWqDKnJDYf+FDRXk=;
 b=Lw5NmAdn0BL4Cze25HYIkoL1rn+vDTABIUWNgUbZpnZN8q/D05sMOCp1
 yJVfJ1kCdhpkQ7ptApkShQikiUp/qGoB1KxAVXajeJG0KzmmWrocqk0VN
 brGfC7liaKJ/Lvkju8DtxDLXqjkbBvguw983ZYc9VzUrleVlva5Xt0EUH
 NIPoZ0eGyI3yveK5JQLhCT2a4yGPF8tDLRM8QDOnbg0Oki4i+SKw93TcI
 AV3IKCNcpj+IyAOWcfKwo6kXmIj9gS+VavgLydSogRouIHiae30mIAghq
 SzBD688Cgp+JeQ7JLpNiwZj3/jLthuQTl+a8vCFJ/jVPSiB7Txzfea/Cy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lw5NmAdn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 0/6] ice: fix timestamping
 in reset process
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Monday, December 11, 2023 8:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/6] ice: fix timestamping in reset process
>
> PTP reset process has multiple places where timestamping can end up in
> an incorrect state.
>
> This series introduces a proper state machine for PTP and refactors
> a large part of the code to ensure that timestamping does not break.
>
> Jacob Keller (5):
>   ice: pass reset type to PTP reset functions
>   ice: rename verify_cached to has_ready_bitmap
>   ice: rename ice_ptp_tx_cfg_intr
>   ice: factor out ice_ptp_rebuild_owner()
>   ice: stop destroying and reinitalizing Tx tracker during reset
>
>  Karol Kolacinski (1):
>   ice: introduce PTP state machine
>
> V1 -> V2: rebased the series and dropped already merged patches
>
>  drivers/net/ethernet/intel/ice/ice.h         |   1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    |   4 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 226 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  34 ++-
>  5 files changed, 163 insertions(+), 104 deletions(-)
>
>
> base-commit: 9615a96563f03aef04320cb9b4c33f7bdabac5af
> -- 
> 2.40.1

With ice: fix timestamping in reset process patch series, PTP time sync not happening. Observing missing timestamp on transmitted sync continuously at master side. Without patch series PTP working fine.

Observing below logs when running ptp4l as a master:

#./ptp4l -i eth8 -f configs/default.cfg -m

ptp4l[13259.050]: selected /dev/ptp7 as PTP clock
ptp4l[13259.065]: port 1: INITIALIZING to LISTENING on INIT_COMPLETE
ptp4l[13259.065]: port 0: INITIALIZING to LISTENING on INIT_COMPLETE
ptp4l[13265.651]: port 1: LISTENING to MASTER on ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES
ptp4l[13265.651]: selected local clock 6805ca.fffe.787776 as best master
ptp4l[13265.651]: port 1: assuming the grand master role
ptp4l[13266.652]: missing timestamp on transmitted sync
ptp4l[13266.652]: port 1: MASTER to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
ptp4l[13282.654]: port 1: FAULTY to LISTENING on INIT_COMPLETE
ptp4l[13289.267]: port 1: LISTENING to MASTER on ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES
ptp4l[13289.267]: selected local clock 6805ca.fffe.787776 as best master
ptp4l[13289.267]: port 1: assuming the grand master role
ptp4l[13290.268]: missing timestamp on transmitted sync
ptp4l[13290.268]: port 1: MASTER to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
ptp4l[13306.269]: port 1: FAULTY to LISTENING on INIT_COMPLETE
ptp4l[13313.261]: port 1: LISTENING to MASTER on ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES
ptp4l[13313.261]: selected local clock 6805ca.fffe.787776 as best master
ptp4l[13313.261]: port 1: assuming the grand master role
ptp4l[13314.262]: missing timestamp on transmitted sync
ptp4l[13314.262]: port 1: MASTER to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
