Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3CA435D43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F22C407C5;
	Thu, 21 Oct 2021 08:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7NdqVepI4d3; Thu, 21 Oct 2021 08:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19546407C3;
	Thu, 21 Oct 2021 08:46:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D13271BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE38560EA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltv789DKGvL0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:46:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27E97606BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:46:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292444137"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="292444137"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:46:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="445260698"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2021 01:46:43 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:46:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:46:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:46:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:46:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FxRf8MHLZYro1hSntdiOYqWGcqAjOJPLF7tpVs8W2LLHp+oD6mOOm5vEjtfzfDP8Ap5jFN+T0xqHC0VBCCBZigF6AjG7rql//D5PBnQ0F+mA/HtS7b5mDj8dQhjKJHsrj0dqX8qhIw4T5urmvSoqUIVsawZPpk0+IndwdEhWVDzXuARbX62TmK7nxZqG+LsSo7FJwU7KV3x3Y80ctSCGOID5vtAa6zpgSF0ruuTZgcEK3xjQhvwBlblvRWx+rgt6DUi4aLnjjrBkyKyUTO/AlnkqHyhsu1nO9DGBNhUxjdwrTORbTs5GqfJZwVetkrG9YDP9hr+3C++UL4nyFTYS6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rpsAyNuDKywi9pTp7TpzKQps6Ics8lzxE08ZD9pSxW8=;
 b=hGPvTl+ud4dVcjVN7jez3HE9qQOFVLrnYySMxtY8A0+vdcK2pleWtu9NesieuDIZBZS84YoONForhyQ+v4VFJ2DYeZDgAbLsua3brJLPaoepgv2Ag/q8y1LwddsSX542kZrTJetPLlPVSVg6j0VP8NIoYk9syOtzR0ab80ABP1n9IW9ZnzR82W3VmxxJtqN3Dgs6LH5fUCSGiVCMxkKlBnKGUr5REDY9cLra5bwH5yco3HDiBAMz3rq1I1H3SjThIuNEJ2PFiYVeHv7bcNhZZ6DoOXLD22SStqmwU28GkTcc0TT0LyJC2ZrrQWGZx3ls2E/xRASYMpzFK2YfCo+5vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpsAyNuDKywi9pTp7TpzKQps6Ics8lzxE08ZD9pSxW8=;
 b=jflAefcVTDuSPM9xOgW1PmRDSYfkHHWXpLFJUL/a7xzP0XjBQZuAcnwQ0j1iJMHudJpCGxxwX9poTkXz77fdL1KIV0f36jgJZfqPt+m1q+DkT0+dukN51D2uJHwqwyWBDvydZAsk1Bed0EYOSVHkGFkRrU8Y6OtQWRIFZxx5/rY=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL1PR11MB5221.namprd11.prod.outlook.com (2603:10b6:208:310::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Thu, 21 Oct
 2021 08:46:42 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:46:41 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 5/9] ice: convert clk_freq
 capability into time_ref
Thread-Index: AQHXv7DPRn32ny3dKEGajnnT752Z46vdMNLg
Date: Thu, 21 Oct 2021 08:46:41 +0000
Message-ID: <BL0PR11MB33635F5A6249F8313F4AAFFDFCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-6-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-6-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 619dcbd9-0753-4db4-782d-08d9946f4ddf
x-ms-traffictypediagnostic: BL1PR11MB5221:
x-microsoft-antispam-prvs: <BL1PR11MB522152346DD2DB1E91DBF234FCBF9@BL1PR11MB5221.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P9AerLypf4llWEfo275UaZjDgmcfu6JcawoTY9Rgh7hQR5yInpkGEIGJoVuuNSARwrNVn5fwkVwV89NrcFPwkhVnINxY23YUYEBaLTvL207NV+rjz+ET0QjwZ73hmhXio/D4BLE+l5gQb9ETrzamC/TqeqH54Z7IoNz+gjgHchnq0q0rmYll6WZG4k3DAXIGIIU2sURytMgs7wQg0JVN78XivBPQLyOFHDTT5KTV1UbGFYeOYryBuBHCxRLhY+POV3c2XrxK7lZNR9W3e73mxdXyeEl5I223ukt3hdVoyzXxyAer3qhhZbrwtlNXhbhFYdZSF2w/aFpaNmO0VRvqURQh0xuyr69EtoLDfgPyWtxKmivCw97dh1Oxs3Q165Rd6zpXJYNIaC+ut+2EZC/0+Jwe3ieBpHlcuMz129nKgFk/eQyNwxXpnMvSaME00qrrY51DaOpTXxGey6zTfeGgq8FkFg4kiXNk+tzBxKn9ijUfzyu6ODIeBTIIq/tcn4DFDFB/vV6l+s1l44Jpw+kWJiwhvq30WAxMA4s4pZB/2I9LG7ToyHuUztz3q9zgKuVL+xMLN+R1l1Q+KvN3kjxLMFaMh38+y6OAjsmeefUBLTheBvPYOZQLZ3SoJeTRCD52YDJ3D8UZE8sKa9hFDdXxNcZzTC9b8U6T7UmWH5LFvhvztOpjeHg3qKZlHd5JVrh0uIKy3dlnwUkAmojr+GkhcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(66946007)(7696005)(6506007)(82960400001)(8676002)(66446008)(64756008)(66556008)(66476007)(71200400001)(33656002)(110136005)(52536014)(38070700005)(26005)(186003)(5660300002)(86362001)(76116006)(8936002)(508600001)(83380400001)(55016002)(53546011)(9686003)(4744005)(316002)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X6AO6uLV6l10ZVcICtsJzf3hbwpMM2w7nWgXOdx97Bi2tjJNQSZCPDj3m4Bn?=
 =?us-ascii?Q?PIBX7hgRdwy/8oLKXOE1BkfHIaSQDjRw5X6DIj0X1iJZrrvaCOE8uGtD9sQ9?=
 =?us-ascii?Q?3uHnkq1Oe2f3iKaXg0ps1+3KDOoWNUmese/HVa3t7uwKf0iRaA7MvpSPpadU?=
 =?us-ascii?Q?1wazNK1Xbmj5TxkAmUELTyXHFR2OYQKC5pd39jdT+KvATwujwqUC5Apl+3qA?=
 =?us-ascii?Q?fIxLEskwnF+rXe2oUvnynzFhc7eYxuphUUlze+aIHGJNlRN5IJzfVC4JI7Qv?=
 =?us-ascii?Q?0zJo4vek0wfRvKlPuH5yUnEsrJXdHwQmKQmFs+PYOMxYAQNrKY6KIfCakexM?=
 =?us-ascii?Q?dXqT0lW5Sn/u+qZk+g3hQn+kutHJRTrbIqJ1fwylV0M2dcjf75dGcGjG3hFs?=
 =?us-ascii?Q?wSi02FLdRE1gq6kPAkf9DqHSZ/sswxFSteYl5bU3vW/8sEQ5fd2rIEbRNHER?=
 =?us-ascii?Q?nMUXg6RRihbPfC9JIRslR7arDNovZiHf5TU9NczcMTzdzzCarCS5aFux6n+X?=
 =?us-ascii?Q?Iy29VwqXdycFxP0bRk1BQu5cHE6abeRONe6nFAGXScyuzzyPbWz0htcdpSus?=
 =?us-ascii?Q?q8EnlzWW9o3eFFBRDoDPmJZTy0u8v7Qq1Sp2cCn7f71lTsZcNgiawS9YGiiD?=
 =?us-ascii?Q?2EhOz/MaD/P5zIcFGi0toIvHZli6a8z30EO5FC8YnekC/voG2kK23vCiNGpd?=
 =?us-ascii?Q?F3aNdGVA1om/5jKDOL5mqfeKyhoSXaDJ1TfsQ5wDECkqYmc4w6+uaH70crhb?=
 =?us-ascii?Q?T7fP9BKlx7U0MMgZxNWEJZAFMzFaOOQsCFWa5S3SqnHrSDHuNGFHNJK1LIV2?=
 =?us-ascii?Q?/2wYNfAzLK87PotyyyGN+XO6CurAcUj4kksVAJK9XTsHe2ltKBcI5dI4UW0k?=
 =?us-ascii?Q?GzwobsJfptmBLoMZXewjt11hS6MuIaEeb4X7tjkb/qnEjPj9yjYTC4qeNlV+?=
 =?us-ascii?Q?eoOFkHL5PaKH+Sk0mj3MQHZTWx3/9HdSlUPUdaYTD4fnWPjsT5g60lQk7nSA?=
 =?us-ascii?Q?DL/WbTRNtG92HgeDdItZzhWMoe6kuW8UIw4zklIrJ52DWHh095GiU7MzxeEf?=
 =?us-ascii?Q?1ILQ8Joxl80kVkFbumFQe4Elf86Du/j7/Pb0FxPYRbilcVEezAaHQxJ6CIn/?=
 =?us-ascii?Q?T3C/vYuKOG2EQw2iXEEPBpmbEuu0ew/ewWuXFkHme4AOjIpm1+UIFz5xqJn9?=
 =?us-ascii?Q?PXc62t2voZmHZ11uPnu8LPDKTAS9P86dv61opcRTJ7jUTpsmJ/LqkicPEMJT?=
 =?us-ascii?Q?gXx0TFrO57dGMHH8AspKoT68k2OFIug9bfiDAMrz/o4owDha4gGg4CSO3OCy?=
 =?us-ascii?Q?+5Hdp+TfCt2SNhuXdxGTCptQ73fyBTtqzxmDkTopPKcWOB4qvS7S1rRNwYpS?=
 =?us-ascii?Q?r9MfIiz0Mwn7LUf+uvJx51LUFqqU5UQHcZOHhL31rmgVvHuZ7Pz3yhOo1Du3?=
 =?us-ascii?Q?LoJk2gtqcjA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 619dcbd9-0753-4db4-782d-08d9946f4ddf
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:46:41.6668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5221
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 5/9] ice: convert clk_freq
 capability into time_ref
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
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 5/9] ice: convert clk_freq
> capability into time_ref
> 
> Convert the clk_freq value into the associated time_ref frequency value for
> E822 devices. This simplifies determining the time reference value for the
> clock.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 12 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h   | 23 ++++++++++++++++++++-
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
