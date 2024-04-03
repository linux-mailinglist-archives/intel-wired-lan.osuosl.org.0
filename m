Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B94896664
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E36660D64;
	Wed,  3 Apr 2024 07:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lW4jA5jlI0Ov; Wed,  3 Apr 2024 07:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A57BB60D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712129257;
	bh=NW6ykIgyf3tYEHD0Omaf1AQpmUl/yk1Z81Y3JJHjDeo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yB9/M+cTld5yqqJJ1IwHPf/6QiGFJQ7pSWOGF+GCp+bQX9bjAiAtpjBQenjzVyTh2
	 0m0svsQTXRkoVRhmwpbdyEP44TcLqX5nlwfdcSAsf92kIiq3yVkGd3GeHZZRzI1L/n
	 CY5U3IjVbB8TtUj9EhxgLvvEjvFM3G2kY9yfHDGHB9Qf5O8/YGt2WubbMBiEnuj7kh
	 Ma8g2nWj+wjlcRr3qZgXaLxYsA+h8zJnvSLtIRzKE5LRmXBKNkKKt66QvhDLAZNm/S
	 gyUeeZKBM0IV0JzZJAiyDJl88/R/FVA05DuGSZLCwiYt/zEIAFpgOgjkmgAPEJYmMY
	 Xjy1mrZViLVoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A57BB60D65;
	Wed,  3 Apr 2024 07:27:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C83391BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B377260D61
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7prs8QlhMxp2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:27:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C9EF60A4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C9EF60A4C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C9EF60A4C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:27:32 +0000 (UTC)
X-CSE-ConnectionGUID: RJKtRHnRQdSMsMhCojyrCw==
X-CSE-MsgGUID: lRvKJo8uQJavbiBEkXCEzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7241037"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; 
   d="scan'208";a="7241037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 00:27:30 -0700
X-CSE-ConnectionGUID: FiSV0xarSrGDdjLVrPtJLA==
X-CSE-MsgGUID: d2ycOFy2R6KY3mGgY1t2Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="18443865"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 00:27:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 00:27:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 00:27:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 00:27:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 00:27:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4WLn+w0bs5lU/iSG3IMFgTIVPb1dCNhjIIHhWvLzK/w7+8OAuUnd49UOHubZQvQxENy3BdkiB3gvWXQts+JhGuqFMZU5qsmNaSk/CCK7D/cCQZQTgNNe8/MVMZVUYM+9MYHxHYeR3G9EWxBgWmCbyJAuoZ9lh0ZE64BS8LXt2ew5e2bbiLiwAgiK/L31oXEh2pGJvHiSK6DxBoXC9gK7kPNLBpBUkHwVbRB+SWjUAy6W+KC2KPwkO0o63Oh32cEfXfhG1LEeU007fBp/YrkHwheMEmjucVy+iP86WSSEy3MTLQBZcZmdjgzSRgpI8yHXU9cT3Kea9PLLO/ogR0ihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NW6ykIgyf3tYEHD0Omaf1AQpmUl/yk1Z81Y3JJHjDeo=;
 b=BTes+2lRqbV3qkHsSrVLIMbFnjJqtsfptZB6r5Id76f1cOeEgUChTKUWVpa/eeJyDo+uWtuhw53LChLj2pbe3GrkkqrZEknMDxfnwq9RlkkkQRf5dBi/Op8l5qfLLsy3q5duYSu2mRVG+AuTHgaXll+9n6PsHxNDrOIWpNr0HZ7/Ne4roqAR3fdW2T9Q5f955Nzjg88ZLIwap+1+6u81EK/sr2DRDrnM37eu30XX4SUSdFz/vMYPMPPEWv5jcTwZqCUl9gZ/pgewLfRAnoNZb5oiDgyvUgCtCtWxKKeHpJr3qlTy9zopikk81XLIsFz3lC3G2bo4UXqAnP/wzZpJuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CYXPR11MB8730.namprd11.prod.outlook.com (2603:10b6:930:e3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 07:27:21 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 07:27:21 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v1 1/5] ixgbe: Add support for E610 FW Admin
 Command Interface
Thread-Index: AQHagFzu8rp4PKVdekq//eh++MEBobFPDQEAgAceC0A=
Date: Wed, 3 Apr 2024 07:27:21 +0000
Message-ID: <DM6PR11MB4610B0DD83E935236A0674CBF33D2@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240327155422.25424-1-piotr.kwapulinski@intel.com>
 <20240327155422.25424-2-piotr.kwapulinski@intel.com>
 <20240329182816.GP651713@kernel.org>
In-Reply-To: <20240329182816.GP651713@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CYXPR11MB8730:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b2FtqTxJ1bsHy0m4XVIagjRFMSArY9cEWPZqJxym3P/13i+sAyvLs93a31crElGE0jCTeVHo8mHsWiRhKdu6mdDB7zy6LwPbWTvqpTywweqbPh7vENTsYeEpno/8fUONaCpmUL49K/GZOS5/TwE68T/dQcDYTlbX6qAmki49f7QjuZ0bEmFsOQgNMoGP4vj/WaIej67ZkwmgsHcT7YwccAC0GWE4OX39KdFVFpRjySDuwPVH9K/5nJAkk/mgyfkNBBj0eyGidb/Sukl6p4gvxXfb+HACl2ABR56our6sPjkplfkQ9AO+jAg0rJAh9UWwIekXu8ksLKSpZhTTitlslaWYlQUwCNpOcmgRaMCLlZ3WM/R/dCCMMbpxOmEvqsPqWMHBne8P8l/YUNlOlyMxf8tEbk6XN3LToCEqgLto8zuncF4RQDjx0OyFRdhyQO7r57AVSPo7zUIl1+CXzkO5PCcFQYAv9gF4CUmle8+4CK2Ern/v0rS7cRwBPqXmps0oCECGSaTVwc+5jP/MtI3C0+D5iu5La7/k5h1QJEI/ErWfDV+HXhH+PNrirBL0VzoMgwA0AAuX9HIVYPMA2AQSBPieisGxaWMc16DmPjXSVXZ/MTM5L0RjOwOvDjqmndEX7bbdruNqpPVGfpTjSXSx/x6V0yHt38snpIAw3p6TbQ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nQSVwcNjJKuYQG6MclFozkGbQ3laJS/xEcP23F6ESFM6Q21a1Hj4NA5SqjLe?=
 =?us-ascii?Q?8Z8Faogsgc1wdX/cpRa47BkALixk2+V08gaYg5v/HqgXLYdz4OuJDJy2AG6j?=
 =?us-ascii?Q?WPjOdmLUtjC7jHkrN5D6aRMN7xpYthvx+f1MNQbSGdRFfyIAdC5OtMg3KK7u?=
 =?us-ascii?Q?4G55LYs1yfdjXAmb/V87nD4mV8xPMgokl1osFZtnjE+WH60dG7GC18vOfDvT?=
 =?us-ascii?Q?BT7Jhwju69I/b03Yk4xYMrUI/7yEh6FboJ0KHBP5Xibr0p2teKiVzh0jXIeF?=
 =?us-ascii?Q?mIR4ojTPItmUcm0tmxPfT2e4eJxXw13KPUGdsA7HXWoF2tI1QVjL65zKpa+e?=
 =?us-ascii?Q?XUazJrd57Y6ga3GuhVjNd8p5rhcOoYmQgqfy0qW74FXZ27H7JrwvOsHiszQ8?=
 =?us-ascii?Q?g9jxLKJF0Hm3FaT/01zOkKMnIdWTZEg1aM21n2MDzA90ct4o3qqDRJaq+aM8?=
 =?us-ascii?Q?ddduKvMJHXlfIz5z/tkMDmhlib2J5+NJoXsvRjp9bQWLOWePUIIMSquv58OL?=
 =?us-ascii?Q?ZJ/aI4DN44QIlEDR7FCqxk7YZum5pBCfw0r05Lj83UnCmrkJx9WOI6oXkBkw?=
 =?us-ascii?Q?gbovaqsF6uFR/vqAheklym4HQERV7yJMtUunMnom53fEFWj8TWXr3E91DiWy?=
 =?us-ascii?Q?gdVTymZkDWBA8iVftQO9dcuffDNXKNBKaZBPDV0B29RrVA5mPBzIC9iceA6e?=
 =?us-ascii?Q?UZ2yHyt/nWOxA96+OYukoSNatIeR5GeAg/lbNCH3OtBQ8bkZHUpbATjXLe7P?=
 =?us-ascii?Q?LPKc+WsL1Yr1vdISw9jz6T4vIL8b2IQJslTjKj8e7lhPatWk12rW4AYyNGku?=
 =?us-ascii?Q?6nEMzy7G6K3KELwOjk1rZJfR4Q/BAxA+EQ56kWUTxd8ny4OykuVJJjptjo9h?=
 =?us-ascii?Q?XWXD111zgZrciD3rJJ9Sp/Yz9s3SCdZGDXi/2/5HS+QmqZCAZ5P4oL6ORubS?=
 =?us-ascii?Q?gq863blZZJs2WSvGTEYyTuNrMzhCp5TTnQdMPv1KtfBOBm5bFwfRRTFYRIXa?=
 =?us-ascii?Q?KR8I+9NX6EV+WP4CDtG8CgpHGWz3mWwALAGy7wOoiyzDeBRD8nmfiGAH8N4X?=
 =?us-ascii?Q?dLNWxeHr23J0jxvK080q8dN5UpTG72ltd2nDOZOdZstXAO/cyhPwD7Pi9tfa?=
 =?us-ascii?Q?nZA7LnneLgKvDWRKUtta5/cL6hO23SYIAGMmcjDiwsXhpHAIjh2omSaK/Nfb?=
 =?us-ascii?Q?QsnSQ19PVa4Z/FR9rIYx4u5Ry2Wb/2eWv0lzPh7pn5pAPaViu+Au4W59fFTp?=
 =?us-ascii?Q?JEZMAYkNjh0bpM1e5svmu5tpcbNfpZTwx6+m1k7WNZXf8n7ii1DtzyFwN6Tn?=
 =?us-ascii?Q?O93VZ9HzCxDpoIALAWEWd17D7YP4/5O8pTN9V7fGjvLl9Cwmm7Hr5pr4uDkv?=
 =?us-ascii?Q?HhmOBb8mMgbuhFO07MzMg4J/AUn8RStw5dBQ7pMpcJsKqZjZU1kgK3NLcMX1?=
 =?us-ascii?Q?lMpwGSs9Pekg8e+onnsECxibbNA/+rlR79YqsDXOaCASSVg4Rc6ycXCRop3f?=
 =?us-ascii?Q?ULWjmwgcAAr2V0ppqxL2uyKcHoFMQbHGNjS003ezsa4UoAAW0eufPy0L9INn?=
 =?us-ascii?Q?StPhP8RObC75egRLFeVm4/vr8JWnBdJRbVBveTak?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58f98133-5d99-48b7-ac41-08dc53af8024
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 07:27:21.3460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5KyQKNDsgSVSuHdzcGTCb556u46YskCAyX3s7htKrZ2GtOE+eervxno2oH7dR2+Lh3Y8fteb7li13WyLGj1y5z33eF+p3ZnlqnFaH8CkSsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8730
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712129252; x=1743665252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wVdMRXo4qhcFhEILuEOi2aWVjdejNW3LMl7cLTEotug=;
 b=aYCKobwqiVGgasYUA6XabALsDRrG1rgi2suJ/02vD4LurHy6bx/fk5q/
 5iZPmGx+Q1h7Oz38d2yj+foI/4ZR88k1zlPN+kLeq6D8QzsnAvIkk44T/
 DVzTMRiLrUPqkhPKQ0cueGoOuNY5BOoNsF+RWo+CqjvVsFQmYPLXfSeN4
 9luxrq5HDVPSADM7IZ2H0M9fZUdhH0aBNUtH/jBFY8B+xb0AEMDvp57Id
 algEy/BvOjBZntzhq/9pSAWnHTnylCYSaQPlvXbw8lZULvU41ncp8S7bQ
 51Y8/GvKjZI5DZT5OKXxn/tfP999f0oRMeBZJHINDi0seOpkNbq2I3j49
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aYCKobwq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] ixgbe: Add support
 for E610 FW Admin Command Interface
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
Cc: "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Simon Horman <horms@kernel.org>=20
>Sent: Friday, March 29, 2024 7:28 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Wegrzyn, Ste=
fan <stefan.wegrzyn@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel=
.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Subject: Re: [PATCH iwl-next v1 1/5] ixgbe: Add support for E610 FW Admin =
Command Interface
>
>On Wed, Mar 27, 2024 at 04:54:18PM +0100, Piotr Kwapulinski wrote:
>> Add low level support for Admin Command Interface (ACI). ACI is the=20
>> Firmware interface used by a driver to communicate with E610 adapter.=20
>> Add the following ACI features:
>> - data structures, macros, register definitions
>> - commands handling
>> - events handling
>>=20
>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  505 ++++++++
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   19 +
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
>>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1063 +++++++++++++++++
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   15 +
>>  6 files changed, 1671 insertions(+), 6 deletions(-)  create mode=20
>> 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile=20
>> b/drivers/net/ethernet/intel/ixgbe/Makefile
>> index 4fb0d9e..e0444ae 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/Makefile
>> +++ b/drivers/net/ethernet/intel/ixgbe/Makefile
>> @@ -1,5 +1,5 @@
>>  # SPDX-License-Identifier: GPL-2.0
>> -# Copyright(c) 1999 - 2018 Intel Corporation.
>> +# Copyright(c) 1999 - 2024 Intel Corporation.
>>  #
>>  # Makefile for the Intel(R) 10GbE PCI Express ethernet driver  # @@=20
>> -9,7 +9,7 @@ obj-$(CONFIG_IXGBE) +=3D ixgbe.o  ixgbe-objs :=3D=20
>> ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
>>                ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
>>                ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_p=
tp.o \
>> -              ixgbe_xsk.o
>> +              ixgbe_xsk.o ixgbe_e610.o
>> =20
>>  ixgbe-$(CONFIG_IXGBE_DCB) +=3D  ixgbe_dcb.o ixgbe_dcb_82598.o \
>>                                ixgbe_dcb_82599.o ixgbe_dcb_nl.o diff=20
>> --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>
>...
>
>> +/**
>> + * ixgbe_aci_send_cmd_execute - execute sending FW Admin Command to=20
>> +FW Admin
>> + * Command Interface
>> + * @hw: pointer to the HW struct
>> + * @desc: descriptor describing the command
>> + * @buf: buffer to use for indirect commands (NULL for direct=20
>> +commands)
>> + * @buf_size: size of buffer for indirect commands (0 for direct=20
>> +commands)
>> + *
>> + * Admin Command is sent using CSR by setting descriptor and buffer=20
>> +in specific
>> + * registers.
>> + *
>> + * Return: the exit code of the operation.
>> + * * - 0 - success.
>> + * * - -EIO - CSR mechanism is not enabled.
>> + * * - -EBUSY - CSR mechanism is busy.
>> + * * - -EINVAL - buf_size is too big or
>> + * invalid argument buf or buf_size.
>> + * * - -ETIME - Admin Command X command timeout.
>> + * * - -EIO - Admin Command X invalid state of HICR register or
>> + * Admin Command failed because of bad opcode was returned or
>> + * Admin Command failed with error Y.
>> + */
>> +static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>> +				      struct ixgbe_aci_desc *desc,
>> +				      void *buf, u16 buf_size)
>> +{
>> +	u32 *tmp_buf __free(kfree) =3D NULL;
>> +	u32 *raw_desc =3D (u32 *)desc;
>> +	u32 hicr, i, tmp_buf_size;
>> +	bool valid_buf =3D false;
>> +	u16 opcode;
>> +
>> +	hw->aci.last_status =3D IXGBE_ACI_RC_OK;
>> +
>> +	/* It's necessary to check if mechanism is enabled */
>> +	hicr =3D IXGBE_READ_REG(hw, IXGBE_PF_HICR);
>> +
>> +	if (!(hicr & IXGBE_PF_HICR_EN))
>> +		return -EIO;
>> +
>> +	if (hicr & IXGBE_PF_HICR_C)
>> +		return -EBUSY;
>> +
>> +	opcode =3D desc->opcode;
>
>The type of opcode is u16, host byte order.
>But the type of desc->opcode is __le16, little endien.
>This does not seem right.
>
>Flagged by Sparse.
>
>There are a number of problems flagged by Sparse in this patch-set.
>Please make sure the patchset is Sparse-clean..
Will do, working on it.

>> +
>> +	if (buf_size > IXGBE_ACI_MAX_BUFFER_SIZE)
>> +		return -EINVAL;
>> +
>> +	if (buf)
>> +		desc->flags |=3D cpu_to_le16(IXGBE_ACI_FLAG_BUF);
>> +
>> +	if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_BUF)) {
>> +		if ((buf && !buf_size) ||
>> +		    (!buf && buf_size))
>> +			return -EINVAL;
>> +		if (buf && buf_size)
>> +			valid_buf =3D true;
>> +	}
>> +
>> +	if (valid_buf) {
>> +		if (buf_size % 4 =3D=3D 0)
>> +			tmp_buf_size =3D buf_size;
>> +		else
>> +			/* Allow aligned PF_HIBA access */
>> +			tmp_buf_size =3D (buf_size & (u16)(~0x03)) + 4;
>> +
>> +		tmp_buf =3D kmalloc(tmp_buf_size, GFP_KERNEL);
>> +		if (!tmp_buf)
>> +			return -ENOMEM;
>> +
>> +		/* tmp_buf will be firstly filled with 0xFF and after
>> +		 * that the content of buf will be written into it.
>> +		 * This approach lets us use valid buf_size and
>> +		 * prevents us from reading past buf area
>> +		 * when buf_size mod 4 not equal to 0.
>> +		 */
>> +		memset(tmp_buf, 0xFF, tmp_buf_size);
>> +		memcpy(tmp_buf, buf, buf_size);
>> +
>> +		if (tmp_buf_size > IXGBE_ACI_LG_BUF)
>> +			desc->flags |=3D cpu_to_le16(IXGBE_ACI_FLAG_LB);
>> +
>> +		desc->datalen =3D cpu_to_le16(buf_size);
>> +
>> +		if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_RD))
>> +			for (i =3D 0; i < tmp_buf_size / 4; i++)
>> +				IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i),
>> +						le32_to_cpu(tmp_buf[i]));
>> +	}
>> +
>> +	/* Descriptor is written to specific registers */
>> +	for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>> +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
>> +				le32_to_cpu(raw_desc[i]));
>> +
>> +	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>> +	 * PF_HICR_EV
>> +	 */
>> +	hicr =3D (IXGBE_READ_REG(hw, IXGBE_PF_HICR) | IXGBE_PF_HICR_C) &
>> +	       ~(IXGBE_PF_HICR_SV | IXGBE_PF_HICR_EV);
>> +	IXGBE_WRITE_REG(hw, IXGBE_PF_HICR, hicr);
>> +
>> +#define MAX_SLEEP_RESP_US 1000
>> +#define MAX_TMOUT_RESP_SYNC_US 100000000
>> +
>> +	/* Wait for sync Admin Command response */
>> +	read_poll_timeout(IXGBE_READ_REG, hicr,
>> +			  (hicr & IXGBE_PF_HICR_SV) ||
>> +			  !(hicr & IXGBE_PF_HICR_C),
>> +			  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_SYNC_US, true, hw,
>> +			  IXGBE_PF_HICR);
>> +
>> +#define MAX_TMOUT_RESP_ASYNC_US 150000000
>> +
>> +	/* Wait for async Admin Command response */
>> +	read_poll_timeout(IXGBE_READ_REG, hicr,
>> +			  (hicr & IXGBE_PF_HICR_EV) ||
>> +			  !(hicr & IXGBE_PF_HICR_C),
>> +			  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_ASYNC_US, true, hw,
>> +			  IXGBE_PF_HICR);
>> +
>> +	/* Read sync Admin Command response */
>> +	if ((hicr & IXGBE_PF_HICR_SV)) {
>> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>> +			raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
>> +			raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
>> +		}
>> +	}
>> +
>> +	/* Read async Admin Command response */
>> +	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>> +			raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
>> +			raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
>> +		}
>> +	}
>> +
>> +	/* Handle timeout and invalid state of HICR register */
>> +	if (hicr & IXGBE_PF_HICR_C)
>> +		return -ETIME;
>> +
>> +	if (!(hicr & IXGBE_PF_HICR_SV) && !(hicr & IXGBE_PF_HICR_EV))
>> +		return -EIO;
>> +
>> +	/* For every command other than 0x0014 treat opcode mismatch
>> +	 * as an error. Response to 0x0014 command read from HIDA_2
>> +	 * is a descriptor of an event which is expected to contain
>> +	 * different opcode than the command.
>> +	 */
>> +	if (desc->opcode !=3D opcode &&
>> +	    opcode !=3D cpu_to_le16(ixgbe_aci_opc_get_fw_event))
>> +		return -EIO;
>> +
>> +	if (desc->retval) {
>> +		hw->aci.last_status =3D (enum ixgbe_aci_err)desc->retval;
>> +		return -EIO;
>> +	}
>> +
>> +	/* Write a response values to a buf */
>> +	if (valid_buf) {
>> +		for (i =3D 0; i < tmp_buf_size / 4; i++) {
>> +			tmp_buf[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
>> +			tmp_buf[i] =3D cpu_to_le32(tmp_buf[i]);
>> +		}
>> +		memcpy(buf, tmp_buf, buf_size);
>> +	}
>> +
>> +	return 0;
>> +}
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>
>...
>
>> +/**
>> + * struct ixgbe_aq_desc - Admin Command (AC) descriptor
>
>nit: ixgbe_aci_desc
>
>     ./scripts/kernel-doc -none is your friend here
Will do

>> + * @flags: IXGBE_ACI_FLAG_* flags
>> + * @opcode: Admin command opcode
>> + * @datalen: length in bytes of indirect/external data buffer
>> + * @retval: return value from firmware
>> + * @cookie_high: opaque data high-half
>> + * @cookie_low: opaque data low-half
>> + * @params: command-specific parameters
>> + *
>> + * Descriptor format for commands the driver posts via the
>> + * Admin Command Interface (ACI).
>> + * The firmware writes back onto the command descriptor and returns
>> + * the result of the command. Asynchronous events that are not an=20
>> +immediate
>> + * result of the command are written to the Admin Command Interface=20
>> +(ACI) using
>> + * the same descriptor format. Descriptors are in little-endian=20
>> +notation with
>> + * 32-bit words.
>> + */
>> +struct ixgbe_aci_desc {
>> +	__le16 flags;
>> +	__le16 opcode;
>> +	__le16 datalen;
>> +	__le16 retval;
>> +	__le32 cookie_high;
>> +	__le32 cookie_low;
>> +	union {
>> +		u8 raw[16];
>> +		struct ixgbe_aci_cmd_get_ver get_ver;
>> +		struct ixgbe_aci_cmd_driver_ver driver_ver;
>> +		struct ixgbe_aci_cmd_get_exp_err exp_err;
>> +		struct ixgbe_aci_cmd_req_res res_owner;
>> +		struct ixgbe_aci_cmd_list_caps get_cap;
>> +		struct ixgbe_aci_cmd_disable_rxen disable_rxen;
>> +		struct ixgbe_aci_cmd_get_phy_caps get_phy;
>> +		struct ixgbe_aci_cmd_set_phy_cfg set_phy;
>> +		struct ixgbe_aci_cmd_restart_an restart_an;
>> +		struct ixgbe_aci_cmd_get_link_status get_link_status;
>> +		struct ixgbe_aci_cmd_set_event_mask set_event_mask;
>> +		struct ixgbe_aci_cmd_get_link_topo get_link_topo;
>> +		struct ixgbe_aci_cmd_get_link_topo_pin get_link_topo_pin;
>> +		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;
>> +		struct ixgbe_aci_cmd_nvm nvm;
>> +		struct ixgbe_aci_cmd_nvm_checksum nvm_checksum;
>> +	} params;
>> +};
>
>...

Thank you for review
Piotr
