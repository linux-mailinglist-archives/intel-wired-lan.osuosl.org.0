Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DD8831E9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 18:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E74D808AE;
	Thu, 18 Jan 2024 17:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E74D808AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705599802;
	bh=w37gJNtEYvdHZPlwRKc2hpqFLoMMCFzKEgD+RxBzFoY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WSTVAxEhmfOlDOQOjPJ/QFJ8RWYuNsGnuZCVpMSwbgnbv6CRsbt01ZwOxNolChPZ9
	 TRrlVSN3rU5/dEwzV94WYjjnaHOXCV1mEIMJExXAsbgI5kb6jk7NolqajUPnN9+6eJ
	 RQwo/CP2glK6NIzL7FLKdkn7Qv2gTSSRf+NmI2CPledVr2d/fpbPgZXlT6sXH1hmNw
	 uDcw+6VzWVVn64gY7roFy+H+1v0e1sQVfk4M/F+XERTlUXN9fRZI1Qk/ICi5p0JLpo
	 aDDzB0y5NxvCcyd+5Ybh2aWfau+uIq7GAzLLW5rgKzcpbUjKvAjCf9HLWnHHRrD/qI
	 YSs5OWifSrbiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oa7_DLEwH77s; Thu, 18 Jan 2024 17:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D2F283FB9;
	Thu, 18 Jan 2024 17:43:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D2F283FB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86E0A1BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67ADD43841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67ADD43841
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1oUr7ByfvEEc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 17:43:15 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 18 Jan 2024 17:43:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD16408BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CD16408BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:43:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="406788"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; 
   d="scan'208";a="406788"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 09:36:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; 
   d="scan'208";a="387191"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 09:36:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 09:36:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 09:36:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 09:36:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gc8JcMD6o+MZXCmpUeMWyGlyuEsU6AC5P21zlfqMQakZX/POBzsa1fVepcoXj1FDhJQiue8fAi9rkr8oX0hH5I7P5pKVGqhw+sM1gD9WsmhMam9KVTJQ+8rhmjlWzwvLcs4FBHKaz41OPZH/8RxqHRJboOxqmAzLNx1FuO8GvKHMxahAo60sI+ql+H4LkFoi0d2O1xLowyQbQsmTDexTLytqNdrxs1c5S5WQucgwCWlRkrF3V9msUsnMWASAff5oKM6vfsNFySx4ErOFDuosDvXmhpof8wIkbGZkNY/6LiXO0ci8mWgSLQ1NDkLRv0REYC5G1GttvyEpfCXv6OM18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w37gJNtEYvdHZPlwRKc2hpqFLoMMCFzKEgD+RxBzFoY=;
 b=hul/kCkabtQpw3ZmFxlDXg8RpMl5TwEaOMeE7d2wk1R2uE5EmtWSJbGAyjYNi0rKGW4VgVLGLW3HSw/2YMaszYg6no/W00wG5Naw2j5AJV8Auygc0hWolYS1YaT9ykGUQ2lTYCEtV3tXmx/zSPr+DEHyq5DG4QZUEbtvHsSaqQSzAkfLbRnL58Y7zNkUwnIF/OBvr1l0e3CgzRr97k3sGGztHHdXU4oUEprBsFXkgukNFyP4Jy+oY/bPx+u7j8iD2qgBBF5x7fbErHZaP+iArO+OlxuaRTmFOxIOFZwHQdUqpvd/dKni7EG9i72SxvIq0iGtMRb8gXpHMa/7eEa50g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 17:36:03 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::24ac:802:1c95:df01]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::24ac:802:1c95:df01%5]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 17:36:03 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH v5 iwl-next 5/6] ice: factor out ice_ptp_rebuild_owner()
Thread-Index: AQHaQjDe+CgpIuqK3UaLP2tVMSU5R7DauecAgAUldgY=
Date: Thu, 18 Jan 2024 17:36:03 +0000
Message-ID: <MW4PR11MB5800A07A871D0EF78AA87DBA86712@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-6-karol.kolacinski@intel.com>
 <20240115103940.GN392144@kernel.org>
In-Reply-To: <20240115103940.GN392144@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|BN9PR11MB5258:EE_
x-ms-office365-filtering-correlation-id: 352e3593-a4cd-49d2-138a-08dc184bf1bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RmPStdZiTgoJUneFsk+KCBDUAeB1H2Fpj4FdGlDUWZvXzyDudUEa41g3KmGXo0VQ2YmzP03aXGuUaUrNx5X4XCFOx1qbuFuZZLdm0y+RZNrIx5eWFFQtGIxBGOFUi3FSJ+6EAe54qG5b3jBDAxXoDCvyIxmwRwUvwC9mhR2KDBQUdKjS0jGoczDGRaB/uw+AOxtnc4lzwxlXWLh3dIORGuNHRse2KTTO7cs4V//HjotSqAoHL5q2biOtkEOVru3yGew40mqtV5gu/kXKWH5Tm6RgUzTvHTJrk6FfL3bRLyxWtuT/iTAA4LeKB/D6eC4TcQdNSojZxuW9GlirnEsOzLHZ2djJm2yh2X7NeWqISIME92KLw9Q5DTmwVBJNNbLNiwAD8jNNDXi5Aj7T/It3IqbOsZv2YZC0MPl/h0JLmCGTpbF87yn/LpbCqkZhEcD1iVKk1zlfXRdX/U56hJVDzW+bYQ87oFVx3jBhcqOwkk89NYFJ5d9usnf+TVSSzWy7hLxx8VuROUZKDkfV4wFlUkRv6DLFNbOnpLzucby74OEbSHN9aMxTPDRFVMqvg1iF2S4AYTkHrL28jAvE5kMVw1Zt8gG8XXzZPlrOiEyHqXCo8HHngfG06ALFUdVzGJ2i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(39860400002)(396003)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(52536014)(4326008)(8936002)(8676002)(38100700002)(82960400001)(2906002)(33656002)(86362001)(38070700009)(41300700001)(122000001)(5660300002)(6506007)(7696005)(26005)(478600001)(71200400001)(83380400001)(107886003)(54906003)(55016003)(66446008)(64756008)(66946007)(66556008)(66476007)(316002)(6916009)(76116006)(91956017)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?xd9mPEeKMc+2RKE3B8hm5GYeqzdnRKXKQYaQ8/IBG3KP1QyfL5xNiktsbk?=
 =?iso-8859-2?Q?a4pTFqlqQOPq5y8dVi8QXk0cAhMzd2Agpa9X0h3N4s6IPKGISjDhKqqgEs?=
 =?iso-8859-2?Q?O1AZMmj3OcoA7M+rWyrCm24seTiFHyVMli6JhjRbx92yp5wU49yRuFDV9t?=
 =?iso-8859-2?Q?gd7/nnY1bNZvcFDxcsGE1TfmFiNfs6Lhnsc1LHeYPidw40iwvM9E5PDX6r?=
 =?iso-8859-2?Q?HIYRS+RpbfD6u6noNR2I/vtkkPfthxbZml0rJoQu53iUe6OsSWjakqUSDC?=
 =?iso-8859-2?Q?gQb+AKSB2eDCX+nfRRHL+PDUe5zvu83J2sclqwncfbRRz5b/z8wbJGkTdr?=
 =?iso-8859-2?Q?JbR4u1Bd2DIa8WnkWEhVYyXc8NGlFpOcrBQhYTF7/h5g4ik/gWY6apPA2R?=
 =?iso-8859-2?Q?DBS1DUvGjblU2BSHSIYDV5TFJfU3J0OEO71w4Ztr35ZW5amWY3gpZUFDmz?=
 =?iso-8859-2?Q?6Sl+ug/H+rvwxJzgB0i1dX35Y02sHOucCprLNlbxYHMH9RTfAABuyzJi6+?=
 =?iso-8859-2?Q?nGg+nprJfieOJMDpOY8Viec/gvNtHDwB8nwm/eLHuB+X7O6QcI5Bo422in?=
 =?iso-8859-2?Q?3sLfi3zkRGVI2d8HXD5sv3VexIFTD21rMKPpgkmMYImFZ7iReMZvrbDhpN?=
 =?iso-8859-2?Q?oV3AGaLI+Mg0toomZGNxSrQ8mIP3ApseyqMYf9RZV/EqXD9HA9x73FtDgY?=
 =?iso-8859-2?Q?RpF8J9cSYg10GrUN1al5vBRXUSVDpadE4D4/FGG71kXHcW/Q6e3CvdWRuL?=
 =?iso-8859-2?Q?iuLWsK0ClJaNF10kHkx10GAhU+V5rU0a11MHa6MCn3JgmP4s+3rPF2fQVA?=
 =?iso-8859-2?Q?NVWxMcLQoQX3Ll8eeXIUJ4V2PGZUNcs1lVaGLTK7EzaYWH7PTQjCzPxpzl?=
 =?iso-8859-2?Q?RFIlEyts/rTxRwRQP7AX7zR9/YATc+MAwsf2jYCTBfcWwvFHINYQwQ8Yhi?=
 =?iso-8859-2?Q?nRQ2py1KMo9V17g0W7KXrza/uMJE2Ard/QiQUOooIlpJ1I1CRkj1cJY+Zf?=
 =?iso-8859-2?Q?63u1v+hHIgBDEFNeTGPzlr3j8upCzmElRWJdiyS4RQT9qDzPI0xCiiJZ4b?=
 =?iso-8859-2?Q?IDzWJUvQEB25Hb+3BWET6ItRLZEug7Quc0RzFc6TgfsDmIimGbjrwpdRWr?=
 =?iso-8859-2?Q?mhtDV8z+2IahMiIttkXJh4nTEKsXloqwEZe10K8rNVHl3V7gbcOpjF94Nd?=
 =?iso-8859-2?Q?fHEw5bDK2eK2ChCBF+buzuGyOlYsz3X3Gqd9Grz6Anaxj41NdwzHNp88ZB?=
 =?iso-8859-2?Q?h6lOeDZki4BLpruPcSiDCyRELwl/sD3QeNXk5LdDqDzO2GYAb1TE6AGx+r?=
 =?iso-8859-2?Q?aYhCdBdMZTWj6udYwjBPGVCYOLGMFZxNSeeXUowSH5uRwzVFZ+RDrX6u5R?=
 =?iso-8859-2?Q?DmG1C6HqIdOeh2VIwIqVB8/rMG5/OdwVAv/HNzEcdX3CX/xEdOUntPhBqa?=
 =?iso-8859-2?Q?PLiQj1DsKUcrMttzB0Lx9OIONcWX1Qgd+PD15Kw6RaM/F3jz3//j6KjLAy?=
 =?iso-8859-2?Q?6Zg9F3bIp2ZVVc/XH5YdrO9O3oDJNuhIohMYTcO6bjKZcQhLPHN0zM4D6E?=
 =?iso-8859-2?Q?OsaNBi1NuGQ+hYFrLnRZDPhy1b5bZaAVStxisVq8ahV3HmkpLPHI/7BSIJ?=
 =?iso-8859-2?Q?LVACIDkLfFNwxN4fqnZ08eLofZgTLG+3pgfardGuGLf8CCDMXWfHXmDg?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 352e3593-a4cd-49d2-138a-08dc184bf1bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2024 17:36:03.6915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Fa7bY1EbcBKetbcMwXNbeWKByy+SWaep2Ic9Gqc7Gxra/gEx1+m8EgN743OmnwBz9XO3y+fAPiq6gSOFM5Zd4Y0bBSdJOaMwYMXrUIIBhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705599796; x=1737135796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w37gJNtEYvdHZPlwRKc2hpqFLoMMCFzKEgD+RxBzFoY=;
 b=RXDO8PZuMGKR+ikhqJ0nQQLG/UKkTC/4jbdI1Sg446hCKooQy2ix+e93
 9wFVGBMahpMTwiV0o9op5O0wyAJHZqD0EvVljERc1OZI8RR+RulZdJVGI
 SAsHa2wcVsSyrPngkv/8HAhdnqBsysI75TLy6f5+5aqnOM9Jr5z4zTuQg
 +tIfwHG1ZM4BVyCcy8KUbKzghC9KzMJJfrKbSmq86MtZaMdpv8TMtXemU
 uoyIMdSIvMxN7YZSveCCUTmKqZgOZS5MyiWYr4GhE3ikpvezoyWhyBNzo
 A+HJ2MnGIEjhLzYUKH1L0gkO+rI9Z0fYcufRHN19xu2zNs/d6wx8hsRkB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RXDO8PZu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 15, 2024 at 11:39AM +0100, Simon Horman wrote:=0A=
> > @@ -2729,11 +2718,41 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_=
reset_req reset_type)=0A=
> >=A0=A0=A0=A0=A0=A0=A0 if (!ice_is_e810(hw)) {=0A=
> >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Enable quad interrupts =
*/=0A=
> >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_ptp_cfg_phy_in=
terrupt(pf, true, 1);=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (err)=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return er=
r;=0A=
> > +=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ice_ptp_restart_all_phy(pf);=0A=
> =0A=
> The conditions for calling ice_ptp_restart_all_phy() seem to have=0A=
> changed (though perhaps in practice they are the same).=0A=
> And the ordering of this operation relative to the following code has=0A=
> changed:=0A=
> =0A=
> =A0=A0=A0=A0=A0=A0=A0 /* Init Tx structures */=0A=
> =A0=A0=A0=A0=A0=A0=A0 if (ice_is_e810(&pf->hw)) {=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_ptp_init_tx_e81=
0(pf, &ptp->port.tx);=0A=
> =A0=A0=A0=A0=A0=A0=A0 } else {=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kthread_init_delayed_work(&=
ptp->port.ov_work,=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ice_ptp_wait_for_offset=
s);=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_ptp_init_tx_e82=
x(pf, &ptp->port.tx,=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ptp->port.port_num);=
=0A=
> =A0=A0=A0=A0=A0=A0=A0 }=0A=
> =0A=
> =A0=A0=A0=A0=A0=A0=A0 ptp->state =3D ICE_PTP_READY;=0A=
> =0A=
> Is this intentional?=0A=
> =0A=
> I do see that the above code is removed in the following patch,=0A=
> and replaced by a call to ice_ptp_flush_all_tx_tracker()=0A=
> in ice_ptp_rebuild_owner(). But perhaps this patch=0A=
> should move this code block code to that location?=0A=
=0A=
ice_ptp_restart_all_phy() was previously done for clock owner on=0A=
non-PF reset. This patch adds only a check if the device is not E810,=0A=
because only E82X devices need PHY restart.=0A=
=0A=
ice_ptp_init_tx_<dev> location does not matter as long as it's done=0A=
before setting ICE_PTP_READY.=0A=
=0A=
Thanks,=0A=
Karol=
