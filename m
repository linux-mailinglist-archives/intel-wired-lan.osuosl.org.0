Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E13FA67C787
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:36:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF12D81F67;
	Thu, 26 Jan 2023 09:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF12D81F67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674725812;
	bh=o7CadRzw/MbeG1CjEUUOrdMtbDz6ebjJU0k9+EW4dw8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1NgW3zPoyqtpCElpvCS4KMPu09fwh8t+RetokmH7QAR47z9+CucI0urB2JZp4NA04
	 e+XX5baGGeWyPRCjECqesE4sK+1PE5yBD8QkXQOWsOaar/cenoDDfCB+HSugEYgSiP
	 Au09VegLuiaZJI7/0q3kg5V/OXRrS4vdnhk79+7i15UkRIvTYf2B6Jgr0dzQLrSA6Q
	 j7tD+TXDf04Q3EkywUYVBT7THu02XyVdondrekhLP6M4eZf16emU4E6WJRDoFlTKoQ
	 RYNBAgk2671bvQlY/ma8HRKiW750Tj+dHxuzhJnvXVtMBeTTWdTc7mBU6g2mGw9KS5
	 5JzNWkYs36bug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJYQlDR1J1Qz; Thu, 26 Jan 2023 09:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4B2C819F6;
	Thu, 26 Jan 2023 09:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4B2C819F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C52F01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A87E44091A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A87E44091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xNcmaPEh2kX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DAAA40908
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DAAA40908
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326804749"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="326804749"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:36:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="612741082"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="612741082"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2023 01:36:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:36:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 01:36:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 01:36:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AsAwdix84MynBUEn+F2IeYwp/fFN6piOwAeEqLNPyGEC0z75lUzv+6nRLd1NyY3uCJr5kdE8aeWMRMqz4htxw+jyd+MLMx/4u/HEG65zUbqjvhV7BUAs5KPXuFPlpH9px9ojxAdGeJtuDr8ihJ3g6SihKBzFcWP1Whn3/J5fF7CbAzBV/PeGlRw80OlH6pdvvlUir9ckJI2zbryJzPjJxnwzP59tD5KLwpD5Bjno9JBJBwd3GWJXeLUvZKMB9VmZvjEKE1cuYcrEwq+ooW0a6xfQW868h3PLJvTC4jYXuvQDOjxSeyOKgy3AGgEaPEbUg5vJeYMjPt3cOfZ1FDJdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpEIhpheb5SOwf9kv8J9OT2itL21ak/Kkr+mw3FpuCM=;
 b=bZ7S8Qt99U5yIf4mklQRzWbrvfmHEx8tCcI7MWsHqsDVfeu4M+hsdPbBKRh5WZwdLP8OWpRihFwkqha0TQ2cgcL7eYu1xr9J6SpO8c2pCFBIhMAiiI95GigByEg7ue3xMbbuYVograWeMTZg8LcgkxUfRIjHYRd7rO6yaeGwDP5dIesDwXC3IsQw5mPUO5X+7aI05yGy+05DMzvMswPY7saZROzoQ3Ua/OhSwMMiopioRAFmjYelbPPMdvaR0xnEIn3ro0yfP86L9Rj5v1zH7BiHlUdzlp9AhaTTXBjctxgmm5xoeKrrz2+hMRtD5e2u3AbLtMGgyNND+GCCKANJZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM4PR11MB5470.namprd11.prod.outlook.com (2603:10b6:5:39c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 09:36:22 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 09:36:22 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 02/13] ice: drop
 unnecessary VF parameter from several VSI functions
Thread-Index: AQHZK6PZzjm9okqjR0OlkQ76XWg/Vq6we96g
Date: Thu, 26 Jan 2023 09:36:21 +0000
Message-ID: <CY8PR11MB73648BDC23BA146782326D6FE6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-3-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM4PR11MB5470:EE_
x-ms-office365-filtering-correlation-id: a48e3268-e326-4a0f-ad97-08daff80c908
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vNC9sWXZ+8BSjWCviFpyczsQiF1AkfFeZYVFbuwn50eLcqg4ZCCahfIWlOLu/98bczK9A1o/cPgf9KN1ZDDAVyJ9k7zriQqYAqmAst3J0MbA0t6yt2cDa3gKo6bCSjuAbQ+EB+wNphfKnrM+zpYYOmO70LlwNpuiqG75zzST6gIyHfCsKxggyVStthCbezwMSxGX/4aTpD+rUIJMyOsKpVUsIxdmy+sV59H2wWDLisDK/0g1YMEvBBj894yYaCOwhP9wuYzOvhhU26jsFYbHAbW3pj4wru/12pH+PrxSPf0OMrfh2OW/Z7qHRLCYWHSyZb0ktvMlYXDcTfRBUmbPEYAMdD7BgEcrmJnGoyTYAdCD1nVyby3Bz6GCESiMvKwkAiyxcD5zKbRoY1R3w5If8pZNXzy8ea0yrhWm6X2wg6R2eFxdSuI/lNhD2Jf/i3B3fdjflo5ieJGdYM1cseZ8gU0l8G5ZDJhTA9uxUutip9MNwpl9IusaotFGP639SglNceWpTJJlA71MlQj2OnuGAhIsXjryr9AXLuGkMVkpb7FswRSKznXXO5dBoBNOauZE441ihCumdn/6HWS7jCj7cI2wBPt71c+wYN2JY3L9boQ+oBh9tT7hp+sPOvvu3urOvNew30d8lAMZnICG3P/PrugOq2WjDTYKK98suv0k683lJqAn6ddFNs2TK4LuUGmc+eeII3xEegJdicQYgFb+JA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(316002)(38100700002)(122000001)(41300700001)(8676002)(6916009)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(5660300002)(33656002)(86362001)(8936002)(38070700005)(52536014)(55016003)(2906002)(82960400001)(53546011)(6506007)(26005)(9686003)(186003)(478600001)(7696005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hOCuY9VY/MYWB29rlc6UYpvbwBxARH5lpGggXImD8Fm4hgfr+3mZ39qfksop?=
 =?us-ascii?Q?nxhSS8wdspCN6gWq8+aI6pr2MKVTMWUTr0PYTrH4rCjNXub5OdMtsMbmr0hT?=
 =?us-ascii?Q?p4fSxA1F3HOQaY98WIaVHyoAXu75sFbnbKNztAeM6nTkVAmk/e+p8HK3Huvp?=
 =?us-ascii?Q?CZ2dKh0hKRmh58C6XTopkagEDJkqK1TdWhzQobRNNJcW2IRVkmrP7kp6F1lO?=
 =?us-ascii?Q?IcwRcc9zUF7V/RjXe2EdZru7ibqv2KdC35ec+R6zhUEhHaUKF2Uaybo3nDLY?=
 =?us-ascii?Q?of+XfRjG3Jg5jBqADV2Oo8YbkU102fel54QCGVsKiPVg87Woo+rj4bmGxGbF?=
 =?us-ascii?Q?z1IW3gqxfr92HiP1zBWLHo2HRVZCevTIxKilrFk50O3Tx5C9EhXQSFRDMxU9?=
 =?us-ascii?Q?GcUk1VYQdOgrqXPrLoT/7QzRwH5vCHnOkgfVv+BYkN2pT6gDMCSTY9wMHnjI?=
 =?us-ascii?Q?d05zb6x2/lb/sHJXDSbgCvyqLKnW4V8tjKA5yWcXaZTDqyutxluDk3mhGjCV?=
 =?us-ascii?Q?c8LhqA9hJUDneF4V9UR2aDGw0QUherDKWsgHFhgaApU2NReoOB5zzf7vJrkg?=
 =?us-ascii?Q?JEoAe4MLyV6yYbQj69Dcm6fSaMdKNk6gqKySguMLKpeD94OQS1xdcy02UAud?=
 =?us-ascii?Q?piXmhpSfeHooynvsERYX9M15mUaRHjx6d3szQccAC9CQWQbRF/66J0HWigrw?=
 =?us-ascii?Q?ooQvOXqArNW4oQsjjM4BAAkYAiZvx2+SxZtSZT1p8CioNJWIglLnAwtGTviE?=
 =?us-ascii?Q?4o04XqflvY7gED2G0SbDEgA8i44mEh4pOEv+etXNe9Djgt1fmWOtZloiwCZi?=
 =?us-ascii?Q?gpKedwLGuI9EjfrByN+JHD4KEFFfui/6yP7obUvtSC0yYH0LMeFHpI46MwvW?=
 =?us-ascii?Q?yWIG+f8j0zdeps1zlaPi9hiUe/sl4FSw2xM0HlLCUle9sZYL8wuBF9QsLVPU?=
 =?us-ascii?Q?bY6Z+iInPer7ATwa9DQ/2AHmNQh8fNRNIlcaOpcPiGm89aT025ZZgsgOxhyQ?=
 =?us-ascii?Q?e53+T15pUU71MTN3LEcDlrmMXcd/jQkOKWGtOu1a9tIXbCHC7v+WCcIvf55p?=
 =?us-ascii?Q?gjkqsZb4sLW/msILgZIxhdGJFlC+ec4LSSOAbxaeP53+tpNXU6q4o8rPuGf2?=
 =?us-ascii?Q?hzTel5Hc4j0a5B+0yMAhe9AUNXDFe7IS9QTi0i4L/5Y33UXYNGieEp6FkFU9?=
 =?us-ascii?Q?vdo8e8V1qRia3EH+LbTgta3NcdRIUrwzUhuz8rvQKUUXBQ3eI5GTQDLn7bPA?=
 =?us-ascii?Q?w15w96MZId7hwYjS6yRTiSGEsIfFvFTwbaW/3RiM7Z6wuv5Va5k5Hf0AHTBu?=
 =?us-ascii?Q?HvXBFrghZkgKoKgDcH5pTAXAbcGgsN+v83mtGxhrViHrbn0G5Pojh+hjshD8?=
 =?us-ascii?Q?LNGkl1vYwYu+sQ3g680EYkM7oW2BASco3uYMk4ilNWRBnCqoRa01D8nNl2Ou?=
 =?us-ascii?Q?dArr3WSrcrzMEQ5LosWOdNJZB1EFfwUAhkF5unSeb8cfLRBez1MSzMF6egWZ?=
 =?us-ascii?Q?E00C1Y7ephfHRcngCwiH07Pf6odvbgSuCDKfPKqJZerQJTwLvV1SHdzsmt8t?=
 =?us-ascii?Q?Rwt6M25CXE+rmEdP5HRI8bOeVALV4vsodVdvi4+W?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a48e3268-e326-4a0f-ad97-08daff80c908
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 09:36:21.9876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dkH4sSWfWcdUQrkepKdMoc3uG/8xzKNA/MxahyRysAdf1cgcJ0HRQzGKL4I0TM9I/Nr2sLQLhVFVwTc2oG9HKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674725805; x=1706261805;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DGl/fz5kuZRm+nXjmSBEgqGSkJw4D4nK5lNL/1Z8X5g=;
 b=nXM1pRxz0WpCQdlB2My7cWbg+Th8ReXf2kshyU/hkf/ldYfY+l3on3Pr
 lSFTOdCv0SFoOWxEO7MqBsLJlH+XPR1BGI44wEJT+tqy/hxpeUV+76uc9
 U/5OsQBzNEp1xta8CqIg6uPuDYZ1MRGQJJYSsubFy7TmzbKENWmOq3lng
 BxDBCV+o92lqI9kk4rKwNiF3CY4XTqT7T+mAeFuUlvl3mC/ugAq+oA4pt
 m7p+iS/gZFLrLTrurNqqcE2XSPzOfwJye3VZ2zNg/XyU8IFzPEBlfddl7
 Zl0nfmgf6cts0OvhnKZ0+l6tVqcJBL8a7LFqoJ4I4T5TZquA4Ppx615D5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nXM1pRxz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/13] ice: drop
 unnecessary VF parameter from several VSI functions
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
> Jacob Keller
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 02/13] ice: drop unnecessary VF
> parameter from several VSI functions
> 
> The vsi->vf pointer gets assigned early on during ice_vsi_alloc. Several
> functions currently take a VF pointer, but they can just use the existing
> vsi->vf pointer as needed. Modify these functions to drop the
> vsi->unnecessary
> VF parameter.
> 
> Note that ice_vsi_cfg is not changed as a following change will refactor so
> that the VF pointer is assigned during ice_vsi_cfg rather than ice_vsi_alloc.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> Changes since v1:
> * Add Reviewed-by tag
> * Fix kdoc warning about non-existent function argument
> 
>  drivers/net/ethernet/intel/ice/ice_lib.c | 21 ++++++++-------------
>  1 file changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 62d27e50f40e..46af8b2707b6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
