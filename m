Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD18C86EEA3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:39:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B3A041FB8;
	Sat,  2 Mar 2024 04:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8oHoBsWsdmc; Sat,  2 Mar 2024 04:39:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFE6B41FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354356;
	bh=betsUej6YFzMqZLbtb8K9IMGlpciiQmyrgaaPlmHVFw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=INU9wGsCkkWDxIowVLofE8CzhPTQ5uFKN0UYTLfv73cqigispmfEZw7Mw3AbW3BdG
	 eKKoGPUBDLq7nP/Vnw00gXUm2kcbjSPK0j5vaWV2G6Q5KF/9LM4VW4uaiLfxm6gucy
	 FodLvbF93p/U2H9KQtW8YnYPz5Ujwf7J+aUuqjT3GnObU4+ULpzPaTcaM5P3eAOAQq
	 Tz3PXXLmpPM8hy8BrwftSPz48LGBMkz5eQCF355NYe1DpLS98Qel8VwjoSjWyo88GX
	 nxHu2zaA1G6hJClPJjES5XLySMCbZyB4WjQFjKrm0VYseXOewyo9rFi3JLQOBaQ+VE
	 xYxT9zH0CqXJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFE6B41FAF;
	Sat,  2 Mar 2024 04:39:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CC6A1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A55183C14
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMq-72lHXdyi for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:39:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77C6F83C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77C6F83C12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77C6F83C12
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3834325"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3834325"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8343336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:39:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:39:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:39:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:39:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cg28wVUyy8t/Bxmp2YT0JO87aMMLAhBUHYZdJIWLShUtFkex6aULhxmG/9ikaOzMLH3Nc4fP1ZipXFwvNC/5n2mNcDdseQ1AiBahOZytlRTt29Qs5wNmManrtGM4Kr8/sd63b156zCNL1ql/aToXydj/XHJ0XK82pjP/0kNI9rSK991Z7sIm+rPgvXjjPI3wZ2HzisDxQ0IZe8hippjKZCK3eBrGDAraauzkQN4i+yAk4TPVS0cF83e8Mz5HP76hXSYJtjdI0DH2EsrqPKey/3jCwpnd2eIsBpYET6VdKQQJ79zVdREdtH6GYcztpSRsxxBGtswRYtjEU6trD7bgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=betsUej6YFzMqZLbtb8K9IMGlpciiQmyrgaaPlmHVFw=;
 b=WR19JNhoy5NcT+7aWOJ2yrdZjrlFfG2b1rtQWoCx8ZdUIb14g/zwODT4CzG5blr2C0MJWWA89U9MZmSwWT68X9jgdtk8w3lUuTY5S2mIs/JoBdfUC4kRzGjlSeR4/XYLgcoaUgJkBDdicZDP/jeeyfbRSU157ywy29wwDAMNOI935TPAr1KmVw65ZTPv+YmNi7JuoA30w7uO1MmoalzvfmATBMeIPvalB3w8P0Lby908jLms5iGjDAaF2oo2u/GeeY1e8b8MTd2EMMUFMV3GyaCrSook4Fr3JO+DBsc0lptt2HPAfhoBRyTWdcpqREvNSsZGnoLDqiUDRkAyYz4Q2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:39:10 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:39:09 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 08/11 iwl-next] idpf: cleanup virtchnl cruft
Thread-Index: AQHaZcI7LJ/GSm6EEEeA9/UYETGK5LEj63yQ
Date: Sat, 2 Mar 2024 04:39:09 +0000
Message-ID: <MW4PR11MB5911DAE5B0769ACCB381F0C5BA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-9-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-9-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 314aa334-8c3b-4ff3-8a26-08dc3a72b3f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UXF6lSjIiHpOMirmxcRVDTCtTXjMzLzwL2s54q63HxGmi5amqukeqBxbvECPnbRNYXZ0TfbRiif89rlHsZr5f11ItgbGpo3pytQn5pSUT5w8/5aymziSoo0u5mumroCAy1sOm0kJB8uc6QAT4zolnH5/p/6RexC4mwYkoI1BpMUtGztM62LnJydb5yYl7UTvoeAepDI0yZJrv++rrFUSsbHVAsiXOxWhlO4XctrFahl5NU2jDee1b52/kd6tLz4U3AbA/d866/S0Fr0ueRbvmBCZxzAUaf6EhkK+sCntTNwRqVRH8XK2AlezFdM/aDOQYt39VtR2hcTl7IOMcTYkUsI7E696Ycj43lUcPVwJAnYac3+5Yrx8C8MCwRSc/zsVQh5LYZBlikSHWYDiyWMsQeLlrpj0kl6g/2G2F8znD0M4+P5XkoT/rGTu6aXJXxZf9C0hDWY8tMUMVz5wtwFCYXJoaR9CUHN55s3WdoY8B7jMcWinjQaUlHn7CbGXisklbYRxUsUpTt7pgMFKNMnUt7RtNsO/8vJniiH0KgKKM8fBc+c4p1+v/+D6MTSP3JTIo4CUFINa5mAFQCOU+WRuAPFvUArU6xP0uQFtX5ySuAWjf8gQJAdKS/SoX4TwmtUqlOD5X7oTss61vykP8urQc0ZVV3D0NHezalTK+Fn1zUHtL4rbZ9/MUAOG7G3Bd5IgUIF3cH5P/oB7hHuFOvnyd58KdyuWfNtAuGqK2eo6Bo4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q4ySVgQJEdndt0XVtbG5wgqV87T6MYzwq2950pJYmGoLySbQkLGxYq59hpBS?=
 =?us-ascii?Q?HSn82L9D7tdmRn05jX5BpGo9Fo+OYf4j5EIN+W4gLEhVgZqGeYkWcO1swto4?=
 =?us-ascii?Q?ohUU4TJg06RMwiC3u04tVusRLCoeu+BjAz1kvV3HhGrIpc3vSLcJx/WtcesI?=
 =?us-ascii?Q?tzwoMHBGmKsZL7wqjlOdTLwgTPUg0P64+54z+Kr96XXPiM9Rm56Cn+AvufVo?=
 =?us-ascii?Q?4lEncCoSXJJaxcorWGrhuaCSs8H1SG3HxbiZi3ZtGlN+JbS2YTVjhgr2PovX?=
 =?us-ascii?Q?/FvV53JdrmlX7v+KTDD4dIu7APqe1Rz9z7dpZ7W7yU6FYNk/IlJKaEPIQ3h+?=
 =?us-ascii?Q?qpIntwdUqj+5NyINMxOHAPOmVAIe8v/n5gRhbURBrMhu1vgiK4+avyTi7ghO?=
 =?us-ascii?Q?Za3AN/r1WEffL39QQ0SZSqbJYOq6D5XmYKu7gC5EMg45rjGJ+gn0VqiIH0xM?=
 =?us-ascii?Q?wGgYP+H53m6/nZ4me67GFQ4ki7K7rkyWiZJcn0YUNgnFhjHJe3hq50pu8xUu?=
 =?us-ascii?Q?pFuP7lYVjLjOWMYt9Lfg/aGWjZv3PefUAUQNpA4jN9GkBkR1MFDFBZGwy0Nq?=
 =?us-ascii?Q?iVGDKHKTLRpoc4OhPih+7bSeONbcKyqp1TleNgGfXznb4H35baDhJ5qcC9kS?=
 =?us-ascii?Q?SsBH82b1DyhRK8RsxwN1gTNMlN0bPe8QfY1Rvsngyvx7pbwfFAm0/pAMbkRE?=
 =?us-ascii?Q?ukzrhpl45r7jT64dFlNq3BuNqkHkHxHAV7gKqa9NKhokKcPKeFPsjg5esLN4?=
 =?us-ascii?Q?+UFXpwrtaCWxxPcjkJ+4JEXMuhcV8Pt0q50yiDlcTBvFFhSB9faByCFh0dKO?=
 =?us-ascii?Q?/qEI/88Bn3eTP/Cgx/1TZ4AvCuOLKvYW8U/pRc3VQq2uMewJii3AkiOMyEvs?=
 =?us-ascii?Q?JetoDuQyhH8n4s3vTgc89RHc+VyY9sszAU0JHQT4J/XXFBbtXI8Mg25w3mh0?=
 =?us-ascii?Q?/WLbZ2WcEiPPucTqbWWL0qkVt2W1TWBnZ7byXq/e8NFXjjY0RxhF1R82DhMH?=
 =?us-ascii?Q?/9AdVGByh6G4iAlgBnvZx+paiBfkRAk890nXralmgUkph1/KJk9UqA1/rb1S?=
 =?us-ascii?Q?mlF+ZPuNTNwgiByzauVywAQHLmlbZHNEUjwLwOISQpVcx0zG4BBJnomPHXjX?=
 =?us-ascii?Q?0/HPEs2HCu2ebl7eRHwP6qvvDPE+9tktwqPXIloM9D/c0opcSuKmJ2ObU9I3?=
 =?us-ascii?Q?uMAv+o4hieEnXgkWxWpd8IbsKECjvKX4hoyjS9Uy0vmBSW7fe0gwCgwkqX8n?=
 =?us-ascii?Q?kK2NvrKjZOJv3zoV7Z300PyO3rOED6VP+7/mvtc8oM6cX3UsPv2XJjAtXI0f?=
 =?us-ascii?Q?wi1p8H3QkUJG2/cbDlMiYaVNhzlErvnvatnkRYAMX5QXqsHxbryZtUDbrEas?=
 =?us-ascii?Q?dxqb0xiD5ppk1yU33VSilB+1zFO7YPW9DAtVxxzpg7iC6mJ2hlB+tgSpRfqN?=
 =?us-ascii?Q?WDsG2gqwt/H1GCRtbQZ+ZDVMU/T5OQ4gsC/4eFneuC7ztjgiSzmnxI7OicrW?=
 =?us-ascii?Q?QACLzDZiIfNYb0TPhENKJN0h4fjCl7+pASxFI4s5GW4Sii1nhKY6Ww7szN0u?=
 =?us-ascii?Q?tmwWiveo4VpBZjKkDRjrdpF8eiksBTjRPgWjdZmNeeyZkwn8k6LgLXH0fI4S?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 314aa334-8c3b-4ff3-8a26-08dc3a72b3f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:39:09.9109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thRA4gwdkuFab6ZXVqWrUEfN4gc6jnuUbVipsNYQ9v0lPz4I0lfDPxhmlJkIzcVEb//POxbvY3piL31hoNWMm51DBC4guCmFpBCd4sj1X7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354354; x=1740890354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4NSG+3pCsW838Jnaa+2pAX4GkycQ4PcaWWB4e/lO45g=;
 b=ZE8+3Gmlzgn7gpXYbY9PMnnsbemfw1zor5Ffpolr/xHIqJ6k/ilsbmqQ
 ONNchnPavxkdKKWLqng+DUTivF1P2ogcDvPikIMBI07l64OCgJXCEmI//
 oAKGqPYjHUvJA27NTBIvt+IINR+E4Lq9gBWmIX4NYINNOz6a0qpVRLviV
 2vla8jnufi6noNGAz4r8WZh62IOzJUsApoLJxqCT8zhYLT4tCEQCU7hKg
 +A6D/HyDhusVCYKIedziq2eKceNcuuH0OKQo3rcAZ7NL9/8siqeO+y/ze
 bBKr0DqusEXWrHjTXIO8fCE5gqNnqTREGx/37StrMcrVBlctk7Mev65Xc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZE8+3Gml
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 08/11 iwl-next] idpf: cleanup
 virtchnl cruft
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>, "Brady, Alan" <alan.brady@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Bagnucki, Igor <igor.bagnucki@intel.com>
> Subject: [PATCH v6 08/11 iwl-next] idpf: cleanup virtchnl cruft
>=20
> We can now remove a bunch of gross code we don't need anymore like the
> vc state bits and vc_buf_lock since everything is using transaction API
> now.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        | 88 +------------------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 25 +-----
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  2 -
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 13 ---
>  4 files changed, 3 insertions(+), 125 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
