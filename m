Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CD067C78B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:38:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 461C481F28;
	Thu, 26 Jan 2023 09:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 461C481F28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674725892;
	bh=CjbkQ6laVGGVjdeAAvIyfNx5FHh222RVKnyZqQzQZuI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ex5Ze1qPyzM7ENXlWcz5ufurdPPCqw2sDDFCrBMlrQMExJlwawFa/lddUBPtda6j9
	 WhSIW1ifmosk12xWiFwt/vXurbAy+VlUpaRRSfLhjg9ObdqLYzZCDaSqPuWK0l7AEs
	 aIHHgz/HCBmRGBD/usP74omTAwU8o0vYaLFmUDzB3nwT6RGH1rNMqtLfn6mBuVsH2+
	 MJ+GpZ2Vx2fQ12SBBo+yhZLDKgg2fVbmsbAP3hCwb1dJLD9bO0TR/3+27F3N0ofwK3
	 +ZxCILZHc6U+F+9qUrM9D5glSaBBJ68P7ad1RA6fmqjHuNUbpDo2IaxAUNsPwK3cgn
	 Noi/CaBwilLYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKF_t4D0eZi0; Thu, 26 Jan 2023 09:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 431E381A24;
	Thu, 26 Jan 2023 09:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 431E381A24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D4C01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14D3681A24
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14D3681A24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lP-2HlRi0Pmd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:38:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C8CB8197D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C8CB8197D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:38:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="310356127"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="310356127"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:38:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="805319195"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="805319195"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2023 01:38:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:38:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:38:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 01:38:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 01:38:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eL4Eon7y/5Bz5V1YM4GNHHM+XJO5Wjqh515J+FkAVNmYY1nkvGlCRE9kgP1QVe2qi5UYyiSrVmKGpx962bTzVPAhTVu3PRuzj0UM95C8LLy9m3mR+t1Omg06WbGCyc1cjA2xiS7c+QGASpflW2dY9wip3cn0Amz/dO7YMJAoUnCrcm8cmKzeYwD8Qrba1Wm7s0AJQUWJzAtFs07EaHxMwvasbu52zmS16/s8Gc6X2arlK+ra//bfSP9gSnfiDrliM001XKCJLcqlFAaICzUawKLPrMumg7ripv3q7mvk+Nxg18Gym/KtHBP3nFLnT97NSUXkjZD3OuzjoQzw0jMUZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpY4KHGIhC4Wj+Dc26e/aVblCHSbf4ad292r4w4rcy4=;
 b=f+5HaktLvOjdYXqvGrXMeTgX0yM1DCR3bUzUZGSQPHQ23Lnq8SgaKkuO+UxHrQI93dGs5ald9/kZ58gOWsjZYvzb4JyK+gfuoFob3UKBuP9/2zJXj6Gx8LPoKcNSYDTboQVkgrAxgo63VlzfkdgznFtpClKL6P7AIkst/qs5FXew1k+eAGTvmB7UnUsyWbqhLOr9B4cf3BRRqS3DqzKssO3qEkmXqBEfdbo5XuEMnOYrBGvCknfGUDZIl4l10Hci1B+dLEnA0tyPCPhiflIG9fllYxpV4is49e2J18cKDS7mD94ITTLgbobly9FEp5tzrlMWP33RBYMXChOLxuhdlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM4PR11MB5470.namprd11.prod.outlook.com (2603:10b6:5:39c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 09:38:01 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 09:38:01 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 08/13] ice: add a function
 to initialize vf entry
Thread-Index: AQHZK6PWclTyz5AhxEKypuRD9pZI7q6wfF9w
Date: Thu, 26 Jan 2023 09:38:01 +0000
Message-ID: <CY8PR11MB736403C593949B4100E23D03E6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-9-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-9-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM4PR11MB5470:EE_
x-ms-office365-filtering-correlation-id: 178d2e4b-8a95-4c47-f931-08daff810434
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VFtOMvGwr1Ad9nMUXXj00E9dHbM33NhFH4Sq+VdO/W2mdOxzhb1isVR+8hoRiQm3ChtbhG138O/v9ibuCG6q+GlWVGADaCN/mEVqePirKTY9THNziTwr62co8PMMfBz4pAldYhfek0VdAuixPmzIVN1CNvQzP0A+Pz7J7F3YfgmpHkk8/Lv2dFlvQzCf9tl/5RerzTD0epk0bwmGaBs+6u4LLrw8zUgxMk63jucC8YgNaqG8ZaEfPbVoDROJfB/7W7yKTmgSSOv3Fr/gv9NqWXx4ajfL7COFfFJ78mOcYr8d4KvluOBVKB9tXAhV8hQam0YffAy0VXHs2NKzLS8zY5B8BNtzJ1Vd0gE9nnHntllH2uLeU/nVm2p0WKVY0U9U2B5cgWfOEFCG8Mf9/PB6gXCCwFB9LcyAzi5FBqkYpTIUjHbjIDXFAathPtJXf1CMV/WwkTKu5noO377W8NUbTonTvuql3JBLir/IAxM7vgP7VA0vyoh7CUgSy5CpM9wYkmZphmK9jZG9bGVuTECOu8q+h91qVO07JmmygFCqD5EQcstp4DTQ92Qwlr+E+PLH3K65x5JS8iiow2TC3s8jbMNArzkaFl07RhrsXKwK2gsMCZ/LP5wb/CBKDQwV3DMSYgj1iL71GCWEoBm5R8KUtiJF2UBx+YtVSRL5IJtXKDdqKtCpVqkw0ObQE1qxyF8rWOOGKdcYBqR/3JtwDl8qKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(316002)(38100700002)(122000001)(41300700001)(8676002)(6916009)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(5660300002)(33656002)(86362001)(8936002)(38070700005)(52536014)(55016003)(2906002)(82960400001)(53546011)(6506007)(26005)(9686003)(186003)(478600001)(7696005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zWrGlShdIdJI4xK9FDbxRoVVv8NcpED6sdqO06GRZiFhhtEVym+K14D3TaEE?=
 =?us-ascii?Q?4jLunzcRSA0hdYdAkrYpY9m+r4S58C4hhk+zN1x1Nenew63mKB0degwn8Y7W?=
 =?us-ascii?Q?/PEsefSq1GEs1FkjLZTmVqYUhNgkj3wiKQbWHa/9S22NOP50ntsm7uxAFN6F?=
 =?us-ascii?Q?/Pv49DUU2pVkjhody4wQSe28yc18plv8wttZ6iZ4x3lWxkKnXAhhvFMh7Ajn?=
 =?us-ascii?Q?dEL3JS68SMmaIIxaopEuJwDrXHnTCyosBIPWDRHAfTfRIHWrpX8LgElL+MKJ?=
 =?us-ascii?Q?vJ/YUmtzSUqGosZdd3ufl89Awk3bsS/fCOj0srG0rgmDsviqMbQ+Z6e3mSFe?=
 =?us-ascii?Q?cNJkGQRtxMWypffO+wVfUfogPQOCo9eruk9mV1RJcErPva0HqxEqVwGdU54W?=
 =?us-ascii?Q?pPDxEi3NcUmJbfy4fTp7WRBCTWHXyn5B265r9XAbD9qo8WbMEm/pfV4q7lRy?=
 =?us-ascii?Q?vBWUqvT+a67Qbw+ypr4vO9XT2VDYbmI5NDuLTAyAjGkYWh5ecKZ5nbARAP5F?=
 =?us-ascii?Q?RH/PIeqz4O8NtxKajMkOzPTPrDeGILvpGVhp6ie6AV5Qnx8ywgGyQbyN6qEz?=
 =?us-ascii?Q?bEZTqP+zE6Pkquf1L+ShIbPdCpfUdJH9+oNzD2/w7xPP+IrO7BByw5bkInGR?=
 =?us-ascii?Q?fqtDPXsxt4qh+wTL7iGWbnozMGeTYFcXINNWaz3pHZjLW/uDMOJv8oms2VKY?=
 =?us-ascii?Q?NzNEqoR/dUXev+9B5kyx44NcoES1ujQiqvdRJWcA49FEKiB9RwAoEavNwLep?=
 =?us-ascii?Q?uQq3TrGrtPvZGICXUhUSxqvbAkyDAYMTrnzhMX6ghSTjgBWyZumLXexACgxW?=
 =?us-ascii?Q?765L6vV4CWjpkOjm+7e3q1wFUAKTPX55BltRNqNj6RrSx/xpszWjveML6lCy?=
 =?us-ascii?Q?2zPQoYO10FSWiTg5nlX3s8a04WTQbTZZNKXAWF1vaU7IcczimEofRRGtlVY2?=
 =?us-ascii?Q?xe1/kNTz8+TxcZ68ik8maYVj7oQzc6qzv/YdEAgMtHL/M6jJssye9jHZG8bi?=
 =?us-ascii?Q?XWCBN+o0EhvWD154KWGppTgdJwTe3pHhXyF15NSHXcZRqW4DKvHMVm/Y3RK1?=
 =?us-ascii?Q?c963hGtz3jDLpiyphvFCvJ9kg69LsxImfHzbZiHwC1nDn7dcxPAOCbdd1Zqy?=
 =?us-ascii?Q?NBKLTZ/mZ3pwjAYo0V1liS8yHkt54K1zdQP0EraMkTueLdB5Oqv6SQZIX3HW?=
 =?us-ascii?Q?Ozv65yQB7l8BoVcSSCEXEG40svg+zr2ubOVRS8azMb4yT1n651NtlLmY7CUG?=
 =?us-ascii?Q?gQAOFp6mSF818Rr+xephgWXnPGli7yrgBa3GqpaIu4xSqNEn2DggSo9fSGnu?=
 =?us-ascii?Q?Hc+5jk5+Jn8IIERhFbRC7sTs/oxnKEsIhr6KrQ3N8fBphcC83nDQRxjswZ5r?=
 =?us-ascii?Q?YeqHnJ22pQWDTsDWGXmxFWwXLM62wDkb2zEPoeSHztKgYSbD8CwlkOsJlf2J?=
 =?us-ascii?Q?3xdqlJniTSufegDGxM3CuX2wFp7Y0AXZFQl3quD/MrNiaUC4WORpHlujJyjS?=
 =?us-ascii?Q?oLemAiY3HVb/fqoSkICqZqjCkGw9WWK6kJKALEWoYvYTv4sPm3hc104dDQO1?=
 =?us-ascii?Q?CaLuaNzqL47n9Xmf9FbkD4ObHC20Fr0R2+gMbrtY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 178d2e4b-8a95-4c47-f931-08daff810434
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 09:38:01.2322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I4mcTJfURgORUKBwGfCoVLIvfD3apfkzJikECj7P4/XAdp4mdo01BmzV1qJZvW6j2eQu1RXKak15q2/3j2x6YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674725885; x=1706261885;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tX743FtCS5j06O4cz/tZu/k3r0mBuq+K8zei2mcXenw=;
 b=jw1EQglj7iR8h1OuY7uZMBrQ3V/7AK5+HGgLla9cRxt1jjUrFMCHHroa
 hS6edoPbLG+6xdpXEn/5CIGAkBnz8CZgWpAv/+sqbxYBfewwlXXvsST9s
 GQApAGhjskRx04yElrCC48R8a0zUBpegkuPbaLeLkq5MjziHBVe67Zf29
 v2HvtCPCkh1sd5LbT9c88kGZ/kKowqH+Kc/xNG+MlNblv/qDgOynrm62U
 sONeu2HAGSrisdBmccPAPTfuDqhynO0BICZxYEv/rBy2KYux+GKE3WThQ
 7jbIp1JTbvd8jgWta4LDyatg60CYbmhcNi6aBthXxg5TnAfeVgE/54Bh+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jw1EQglj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 08/13] ice: add a function
 to initialize vf entry
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
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Harshitha
> Ramamurthy <harshitha.ramamurthy@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 08/13] ice: add a function to
> initialize vf entry
> 
> Some of the initialization code for Single Root IOV VFs will need to be reused
> when we introduce Scalable IOV. Pull this code out into a new
> ice_initialize_vf_entry helper function.
> 
> Co-developed-by: Harshitha Ramamurthy
> <harshitha.ramamurthy@intel.com>
> Signed-off-by: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * Added Harshitha's Co-developed-by and Signed-off-by
> 
> Note that this patch was originally authored by Harshitha internally, but she
> no longer works for Intel. I took over authorship with her blessing.
> I've added her Co-developed-by to indicate authorship, but her @intel.com
> address is no longer valid.
> 
> I did not think it right to have her be the "From:" address since she will not be
> responsible for addressing feedback.
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 16 ++----------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++++++++
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
>  3 files changed, 29 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 6ff29be974c5..6c07f661d44c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
