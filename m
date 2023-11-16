Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A4C7EDCAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 09:12:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAE2A42138;
	Thu, 16 Nov 2023 08:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAE2A42138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700122347;
	bh=NXEFnariUkC9eHR47UhIDejrHdn8lIqMGB7hZtj/3M4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hX0b/0p+6fyZ21JdfFqjK7FvRUe4aJkPcnMN6Ux7q/5rDdm4w9D+8OIF1Cjl0hvfN
	 QpjkzNMTYCBVfPULzKzhp8WXfvFLWY9+igJTLoA6nIzkk3O1RloOooOkyCnogDbE47
	 /DL4gSEFsUsh/jGnqdt8yStbwbm8dqya2303ym3V11PyJ+iyv65DCm0lHTVyOIOpIS
	 8Yu+2VHYJ6roitBUR/rkBnN5wtuATmCKpaohCAdUbo+iPLurcrsxepIbaNa7hmaL7y
	 a1iemOJ7uqQg8Axgzj2OpB3S7Ykw20T4l7TO9drzsbbAmMTcdqjH372Ju35AtPldzx
	 8oKFlAHsHubYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7O_-OIqryGRR; Thu, 16 Nov 2023 08:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DCF841FE1;
	Thu, 16 Nov 2023 08:12:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DCF841FE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F38401BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBAD141FE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBAD141FE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-pL_AEWuEAf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 08:12:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1292A41FC5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1292A41FC5
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370399959"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="370399959"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 00:12:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="6447003"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 00:12:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:12:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:12:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:12:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKCH0f74FByQlD4IwniCOGLItHFTQ1hbMpHsIEMMZXhEUtBw52RoHb4NB9nt6SNt5jQ58Zq///xtfz1IQmaWMsGFpE59F88SZsBWIZr+vDySgWS+bezZ7bpDALV99O0BxuP3I0gpYUsaHN91/dieSjMGBbseyDIzfezhGv6Hlk7N/8p20mUjWJgOb5yXL/bO4/QhjKfDZ3RVFfKODoQzHA8IbnRnKhXTVSTBcNcW9S52DaWFvwoojMv/zC5dpLLrAovLSmyjJAVGwsL9aGm78hB2PIR9sq3TBNAi14EIbpYql3G0Zx1d/p5FvvPfJ6OMu+6SnwhMlKMKh4EH0cLLbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=en3jeqCKaYslATslqxjtvYi3t8nqBHt+fAYBhJ6WHnU=;
 b=LGOD+tV/ZgTa8KNonzobFziLZFtseU3n6BRPo2h9AApSBZG7lgexd0vp0gSG7zGiHysZbtUggOvRW6zaAwxHsSM9IJeSua7JpGhtN86VZEAC2oj3qBOp/QGhPzcDop7bQBnvKVGPBcjpANh/fpLw6xYGqlpgJfqTz3aoWLb7o9CIMS9d+HZQxM7dOB4frbv9qKGCuPK9SlugtQzO3K3jVB6DEAEjzLpyzzDuDMozGLmI7i2IfajoJnYyeJeTJEuAO/KRA8VD/+3wkBwk1mGaWRflOhIWnvq8QS4oE2ZPQ+mAdeHm3azqscy9br54V6H5wcu10ermkxl3aU5gXVpZWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 08:12:15 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2%5]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 08:12:15 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove ptp_tx ring
 parameter flag
Thread-Index: AQHaDrAk7UkK7lbybUCxRt9E+bGa5rB8qXrQ
Date: Thu, 16 Nov 2023 08:12:15 +0000
Message-ID: <BL0PR11MB31223F6AC7303A16E93D80FBBDB0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
 <20231103234658.511859-2-jacob.e.keller@intel.com>
In-Reply-To: <20231103234658.511859-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA0PR11MB4589:EE_
x-ms-office365-filtering-correlation-id: d6dc81f1-597b-4f75-5882-08dbe67bbe6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0GJS1rBU24EqxYzvGVi7b7q5Lx8udzVqIlv49maQIfzWtL9sNXLU+OxVwrzo7rGGotzOHRltf0pGGejMe7MJyjH7tIkCO8wSqbymzS+2ZHJtd+HyYNWAnEu8a7WIwZay+Mnp6at04nsTBexx8XNpviR/lZi4Zm7K8+mBlkGrYsJlN/XxeDsbQLBZZvqOgUQGtKlMeSwkZxfm/souEUYLUiWGRoRVexDg+Y2RcPw34ftsnX1w9u3iaPenik9wQDG8oUWCu8dFncRce1SbGHBm8ODDCjIH47uHaMIWhXXj+XElk0F6Jw9yj99Zf8R1FWfABiCK4w0CWd8TGGDmyN3ICYSf+q+Gyk1+Bw6JmOqBWb5+SDADzt/+wqppza53zCstnm5S0tmbVJf1Ntsbjfs6ivQuX2DrmUkxYpkyMDJgfUPptJtxr0AJ0o8s0+Owr+vamclJouVSEmGuuEfigOQkXGwM3zd8mQGVPo92g/rN3P+6ScNsxQ9WfOz5zY6SOUZRfH9VusdVRKh4jQKHX6R3YYM9Gi3N67zI08+SRpFJcXAI86SyYVie6F02NiLWrhHkA3p1+F+OdFKY792xBB4G7WQTt9HoREfHxKR8w5shDjeu7WdQfogfYNz+z951qVLG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(71200400001)(76116006)(52536014)(4326008)(110136005)(9686003)(54906003)(64756008)(6636002)(316002)(66946007)(6506007)(7696005)(53546011)(66476007)(66446008)(66556008)(8936002)(8676002)(478600001)(38070700009)(2906002)(55016003)(33656002)(38100700002)(41300700001)(26005)(122000001)(107886003)(83380400001)(86362001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VTEc7TfjjJ6F2Hv+OiQuT8Qwic1KqcZiBTT19tdqHH5WiYoatpsRxW75Zoi7?=
 =?us-ascii?Q?wNPPeFc4tV0sTVGI3KGAI1+fHXTwC0OpOa6Xp33xbppA/fNQZHpd2+UepiRj?=
 =?us-ascii?Q?zD5c0yRgXKNmoY2N9exhwh309jz2mWc1wJt8nHbB/cWXsCPj+VybqxD5mzgE?=
 =?us-ascii?Q?qwL8Q7A2LASKVbjml5WbfUD2dChDy10mAgYpp86FHIh0OPA8x02V7lM1aId0?=
 =?us-ascii?Q?B0lGdV2N8Nb5TVl1IpnZIB/uzpZnpBRu5Iv5eEqSML/4vPOpFOMy/cPqdYMb?=
 =?us-ascii?Q?AyQmFWpM/OMluyBSQtwSU9tkXkI9aeVcreNy7rUU1bSGdpyQL5GFTL0FvNTY?=
 =?us-ascii?Q?HmsVNIaI4GzQHymzweeYeKvDAmx39oeTr4wg9yFLqhb053NIZDrjeHt2hUI+?=
 =?us-ascii?Q?kHtYl6YelrfHpvT+/mUf4CZ8JT6RRnX+LfNSv4QjlqB5rpaHrr356qlIc7Ww?=
 =?us-ascii?Q?jP1hdApMR+PTE8epwNQ34HStc0HB0GtUNqzD8FSFkOaWdGDsi8sUBm6PNlmo?=
 =?us-ascii?Q?8CuUg7bmhMgDH50pXfzHiioFejZAfsBD1PHSgSczOEM8PlANRNvxFaJizeP0?=
 =?us-ascii?Q?bv/7q6vRpLtuE8zB1Q7zQOXTjiV8CzC8i9D60419EW5gbEwvw0C8nNVrjeWL?=
 =?us-ascii?Q?hfu/rK5gvZJGLxmm8q+7y8Xv7aYzc/Xz2tGIk7o6rocYacs34JZnpOqnekkv?=
 =?us-ascii?Q?ziY6b1rx3Dy57OxbAQCnZ4z1+uLi02YcF6nNrnCGeaCyygXhIRDj2kfRDy78?=
 =?us-ascii?Q?9C5c0ah2QsA5KYHRho9e0zZqej6nQIZtY6bW14m6t/0pmRPbda7+IiVPSg1L?=
 =?us-ascii?Q?qVgYWXfzXL0Xi8+DKCp+Lph+dEZ4Iq8bypmhZrU65RBT73NEDEeXqH9UUcSV?=
 =?us-ascii?Q?N3FO6kdiI+qhIQuTAc5uarvDlnv/i2prFMEgw2Ey4031b+isD9nSMFZAH55A?=
 =?us-ascii?Q?q4GNW3Tjue2hiTqvIDRc2bYlEsCb4MkXYMsWaawUAZAj1aXSPAoSC8PYytto?=
 =?us-ascii?Q?uzFJtABYm/KvzWEAZ05SugZrbngvkTtstXlqnbnJIEFvapIaFJqRiefQMh1L?=
 =?us-ascii?Q?1WyoBM1QRLZd4WSUk0DLpjG2DUq4GrXLt5SFSplfeP5WBjdzeQlVu0BOAOB3?=
 =?us-ascii?Q?wA8MCsnT223kssbtJH1GIPi0i5nVfTXw/qNZEerxo1N3X3S7uSM/1dxRfMvG?=
 =?us-ascii?Q?EbpcwEimzeF04U4P0WdPEdaxx/cWV8KhlH1DBI6Xcn9PANMbpGlJtG4kQj9L?=
 =?us-ascii?Q?y0bllu1XBYRrlFn6vxP4so+qPpNFR4R5yQrOg0wBkr5DlWkk7iyc757D3uWT?=
 =?us-ascii?Q?qNWCbiTGzsWwNG0W6eJhHWmIryicHlnufEbm2FPUOx4wV8JqFVdRo7IFTOkp?=
 =?us-ascii?Q?MDZZv8SdFdMlOWh5OixT2o8Ad4UX80NfXCRyO4Y3lXh3UZgDM488UquEBW8b?=
 =?us-ascii?Q?FwhORfCa4oApls1wDPCUOVLMETUtVuqzndFnn4hyfpCBlT/9ZtIVuwyv1liv?=
 =?us-ascii?Q?sRw/h9z3Kz2p265aZA0VtYO8fFLvKy8b0xiaS0S3/pYPImYrDIP8ofFK7lSH?=
 =?us-ascii?Q?svUN3DMxjrZjMwyzOL/XQTdhrWSRLkeqpt28gYz75YGa2/tzpVJCfu/afhc3?=
 =?us-ascii?Q?AQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6dc81f1-597b-4f75-5882-08dbe67bbe6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:12:15.2997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EgfVmYkqvGf+fEoFb4H2H36OnE9c0d4a5TTbTWWlr4PVQpsUcWZyYPII/8AMrYhotpcMneSutDPeLnGZr6tnOWckCg9kbrajVXJAXUozRa7MTqJue+9mhw6z9+fNuREf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700122340; x=1731658340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fUx0WezPqsnJHbpZNOYkhvA8x0H9UnqA2WVevLKs704=;
 b=RF8Cx4ZuOZ6GHqs1W4kjJrvrDUQtOxCQbcyLTvcqWQZ9hnHVqORqUhLz
 Nwj5hmpUoGE1PY6/wKBJpfHMTId1r36/sE29d/64ZihcBOUFs7GWa1lDQ
 WP0YZfTp+4ex+DpHyB91xN9ptpyUKkXePBhS4+kNyNfwBguF+k8GqEoml
 BPmoxmZF2V1JWyeJjqFh2DWj8PXJk0wL78Atv42Yet80PmDVxFuduJ/Gz
 0j07OriQ3OsPF1tibDIvYGFQxmzcMwC48sTV9rpHXRmruDDFiIYoIUC/o
 6A1UbN+segXGP3GsajwNYXNy3cbRuKJZKvIsw2ZAFYbTJvPxgLdmnYUuX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RF8Cx4Zu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove ptp_tx ring
 parameter flag
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Saturday, November 4, 2023 5:17 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove ptp_tx ring parameter flag
>
> Before performing a Tx timestamp in ice_stamp(), the driver checks a ptp_tx
> ring variable to see if timestamping is enabled on that ring. This value is
> set for all rings whenever userspace configures Tx timestamping.
>
> Ostensibly this was done to avoid wasting cycles checking other fields when
> timestamping has not been enabled. However, for Tx timestamps we already
> get an individual per-SKB flag indicating whether userspace wants to
> request a timestamp on that packet. We do not gain much by also having
> a separate flag to check for whether timestamping was enabled.
>
> In fact, the driver currently fails to restore the field after a PF reset.
> Because of this, if a PF reset occurs, timestamps will be disabled.
>
> Since this flag doesn't add value in the hotpath, remove it and always
> provide a timestamp if the SKB flag has been set.
>
> A following change will fix the reset path to properly restore user
> timestamping configuration completely.
>
> This went unnoticed for some time because one of the most common
> applications using Tx timestamps, ptp4l, will reconfigure the socket as
> part of its fault recovery logic.
>
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 14 --------------
>  drivers/net/ethernet/intel/ice/ice_txrx.c |  3 ---
>  drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>  3 files changed, 18 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
