Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A00733576
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 18:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E60DC40488;
	Fri, 16 Jun 2023 16:10:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E60DC40488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686931810;
	bh=jibrRrhZyiC2EkER0UKOkbpOe3yyD+6IhdQs+nRT8dU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rA7Em2rxl8DJ32OxCcZgK69O40Yoo/O3qsubL6yZjwbu3UJh8muwvpojq7itOFImp
	 eyTgjb9K+oIqGeb+bB89QDqlv52+GOifnYh4fYfaMai1ESn3rFtNKG5SHsDz3g3ZH+
	 m5hFpa565773eSxtd5H4AO5Xu39IiGKMjwEfpH5LNSyEChekqxLFDjuyHij2yLDItf
	 tQSrXtyJOp26m9WjEMa17aOKcoDqpPbtXJxNkyR6GnBeLiTLtsq48nsVbzEyhvdoDQ
	 zuVj5yJfhXey+rkciFqW59oX77YfWyOb4sExh55gzpRXB6XcSLErgFdbMj7WLwEdFo
	 fFK8onb/ZWHaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2eaWQqh0s00; Fri, 16 Jun 2023 16:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A10EE400C1;
	Fri, 16 Jun 2023 16:10:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A10EE400C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A7AE1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E97E83CA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E97E83CA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFXDABfD2D0N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 16:10:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71AFB83C9D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71AFB83C9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:10:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356741966"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="356741966"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 09:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="778201624"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="778201624"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2023 09:06:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 09:06:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 09:06:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 09:06:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 09:06:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6+4Quz6t5FZsWgLI/M0t/W9vJ3RDqFgtHi/ZyQhKLo0opd70GuQXZU5wEWvd10Sqjx+q+C9BQnuMumlO9GrPafwWCVTZS3UnMpYPlOHLUQOaxjOgkn7nXWhg3kQvzjGctKuXAh5uv8Y9hWxMuyz1JVMM/QRnqpc0gNUzp0M/oMV/lvIwyS9Q3VVbURqnFa70cMAjQI+tWZZhg8KvvPqiehYD+bWoTpD9CZtm75I3cMp4hQwte9Fj/XEze9Bu6hNoyKb1Gkp+N2xF+vFUzvEMCLYAUQOmJk1LMRt0rKDRBPsw8ghD/GMpnNwOseRYr3EWc3vTjef3wCQ8khJyJxBvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TO5E+VbhfTk2j/QWzIMIxwKuo5TsnGyNzjZKthSAELM=;
 b=RK7CUg8wtMdrMkk/2GB34IH3vyc1fMCpYGs3ofUD+4M2VLSzq7FdwgWTqfAOduHPBNxKDqWqT4Q/p+oS0S2i8sepR4h+ceMZEAPw5Dv7F1NvxdTAR++3BfAKhOCXfd0Q6SrFYkufUR/txSAREQM5FQlzojQ+TkXVe39PkzPtwoisdCTquj5fKTn5KkdgX3WZfTQOJLzprltI26KMKG/19dFhYri3uu90jCCz1c34TuwhRCm50c8sMlpDKrl62x8gTbh4RNq+8ELigvE7MoX4ZagrTK8liVqv5Zkoh16qpFSCFZ/reEmHBP0LDdcgtQURFrMeBJG1eI55+5drQGsSsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Fri, 16 Jun
 2023 16:06:14 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6477.037; Fri, 16 Jun 2023
 16:06:14 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Tan Tee
 Min" <tee.min.tan@linux.intel.com>, "Gunasekaran, Aravindhan"
 <aravindhan.gunasekaran@intel.com>, "Chilakala, Mallikarjuna"
 <mallikarjuna.chilakala@intel.com>
Thread-Topic: [PATCH net-next 3/6] igc: Handle already enabled taprio offload
 for basetime 0
Thread-Index: AQHZnsmaW64TyiErrEqDiGUn7XvA66+Nmr3g
Date: Fri, 16 Jun 2023 16:06:14 +0000
Message-ID: <SJ1PR11MB6180D857F9169FB6C3E1146CB858A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
 <20230614140714.14443-4-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-4-florian.kauer@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA1PR11MB8279:EE_
x-ms-office365-filtering-correlation-id: 8db5d197-b734-4235-3365-08db6e839c42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wb8+VbmObx+JMrdGLDc178aepnEyMuWIu5Z213+QCOgDNLC6dtFbstz96hcjQ+/PNy+9jkih58vwFQ9PefgPb5UQF5FcyZCa5UYMZ0qSx72U5pR8cmtBaxrekb6CnmVyWy0BAR8FAK6hvHKnWG4ufCYl/4VQzxE1WO52DeU8UERQTROJLEe1qOiE6jtYcXM9BtlL6+4CTFswUwjeX6bj4uLz5DysbW9ab3fhq3vIRHgEB6lr8Ut1SVsEWYPJMQtIFxRdBVCQDi7oCzBHVUK1fPQRZnoIdc/fBOI1oF35AzUsYLYE6MW73/PCwfxmX6elFq88/bDc2Jf5K7uXPzeVLbvKSkHximewfhyMhNWGbFPuTG5EAqC3I+2s2029n7mEyA3Lv/zN9DVY7kLpyodJjuONHV/Q8aPFDtXSrMs/HN1Bb/9qI+EoPj+Urt0/MOKJBzL8Li3hlZjv2AlABzJASIQgHateNIW6zBuJrexBtq2htTke1ZNZ9yC279sqAuCSf/XaiBwE7PBarjrAn7gIpl3OBucIxUlozGMWvxoLr/CXJQCvHvWDJRQlLmAmwnnTfb0XmwSvRK8JZYP24brHO6Q0+6NK/DST6jCFvs748iGSnbNJLtgHiciqoBq1zczIHNrzvpDC+twUGu3MYKjw8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(346002)(136003)(376002)(451199021)(110136005)(54906003)(41300700001)(8676002)(86362001)(7696005)(64756008)(66946007)(66476007)(66556008)(66446008)(8936002)(316002)(33656002)(71200400001)(4326008)(6636002)(76116006)(38070700005)(478600001)(7416002)(9686003)(55016003)(26005)(5660300002)(52536014)(83380400001)(6506007)(53546011)(2906002)(186003)(82960400001)(38100700002)(122000001)(921005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0PXd7xjfG5gaPOK6CkZUY7B6gD4CZbptlKyNZ/QUnHZ+Nwsf51oaGwTi5XmI?=
 =?us-ascii?Q?XNEZ0yhQKTFNclVvGZ+JTk2xoepAKPHh+dU+bY6aUISDR7iYwvqEsavcJ4uk?=
 =?us-ascii?Q?a8KWKbr/xvVcK0cB2S4KlZ0hqqgkOSQELnAgAKAclcJefRsQ2QIZvGa65bJv?=
 =?us-ascii?Q?t2nxGn0qUNGjYuuL0QgWRIKxkhlHLGmkCsYi1A0P8K89nsUNL5fhMwz7E4PV?=
 =?us-ascii?Q?ueEou/PP6sluWQONXw/XDf5OoheT0wd72KTavPU1BrNqi7dOPGcNjjpwpreV?=
 =?us-ascii?Q?BPfmH+m2xms2xGz7JLUC1bpSNGs8qiOBZWJWxP9r7ixqRXeZjwbQ1XE9tueo?=
 =?us-ascii?Q?1KJiig51TADStRlOtXWhJqMViPmi5+SXE3kOvgFJPoCKEFfz7wejqCFg3EDX?=
 =?us-ascii?Q?QkKPLYQe/0cYonRRIM6FjGab5ez0BIyoS7VDypH+DN/7TsvFQ0TP2yqon8fq?=
 =?us-ascii?Q?fb5zcoDtTUo5Gq9swpZ+3CUB8mumr4bPwHtOtlDPEnaQ1Vr1vexdpVQxtd9A?=
 =?us-ascii?Q?EdB6uUsz8bq3JmQ2VydWD9NAMNO+gCPAsiu20v6lnzJBYHr4At3t/nHa0lmH?=
 =?us-ascii?Q?qqs9igDftJE07SH3zFj+dZnCh41dU1kX2pIDdZsKMcYDfNVWO640TZsizn9E?=
 =?us-ascii?Q?Q//QN8Lr6L2kDZS8Xt4ltlrTsN+JUjnOHslTIUlTSE/XgcHBVJHQi7YrpQ9D?=
 =?us-ascii?Q?p0kvLFq8oF0JGzEv9LhzxMXYiPXQhtd63xsEaMSdBG2G1hdXl+9TkFj9DhtC?=
 =?us-ascii?Q?R5KF5Rp1BCq/F6ChPmkjUquzttXlpZlIEGYpKY5Kg+iSIFLvdkDZslsf9AXs?=
 =?us-ascii?Q?1jnfMxHaGNYVKq9u7xBa7I7aJOJlyrsvnH6SwnU7gBr+G56uOFjuknE2Nu9J?=
 =?us-ascii?Q?8WWymGGRofsJ1scQOf0I89Ng7dKXtNIw46ZWIlUjEfxwQNECte5ZzqxHKBEs?=
 =?us-ascii?Q?q95ZpqZJyTLopeBjfUx3rhTgnTnEkjZpoKThw/rGYg4VX0XBoSxb+OcyrCcY?=
 =?us-ascii?Q?mVM3MONp4Z1V6SjO3fO4QU4GmENzr0pzl0S8yJotQiOQez5Y6hDodim4KG9N?=
 =?us-ascii?Q?xWG9xXTS+ABXt6Hgz3HR4Fdyg3YrylX4Fi5/w+9UWrx8riQEss2P543EacXl?=
 =?us-ascii?Q?4M1hXZIr+dHzQ9Tdlr3mILkyZtEQDX0c3BwMwlt+CC1c5M2gI1Lhhd6AB3Eo?=
 =?us-ascii?Q?W3fwh2T4GH1n9vOnIW/MmClCNSUI72HnfGyvl76UQqE6DT209m5B7+l2Ec2q?=
 =?us-ascii?Q?6zQBbtgnYGLZ/5X066Il3hoE8fl9lThJ7G8thnerbNM9THaiyRl0Fq+jQKG+?=
 =?us-ascii?Q?tKi7XDD6kn7Gm4cylr0ksHU+5/dfFKsjyyRuFE4LnIIRyG3QD+7MhY3/M++o?=
 =?us-ascii?Q?lFEL9F06SZqLWfwAoMs7QA7BnlJY3e6tDdSjpU/e6kTJekr0HyHvxai40Clb?=
 =?us-ascii?Q?ExA8pT4tlZ/zXyrJWke8xEkyezAGL7tdawWU++RgQT36D7jlVdTJXVZwCrZU?=
 =?us-ascii?Q?OD4OKYksQehE1x+wwlMMHimFxI/gwSBoK0u6LHQW0rcJcNZ90wiN9W5EJ+Hx?=
 =?us-ascii?Q?9L7TEycd4PUI5Y+0nuHY1upCOT0kfQweFs6Tg2ZMGCxMErVXJg38FiQ+MRWb?=
 =?us-ascii?Q?UxWmRB6pPSLI0049Q3p8bus=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db5d197-b734-4235-3365-08db6e839c42
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 16:06:14.4149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L79XoYdvcaSXAbsdkxF7ZstDep/JKC2pAF9CVC94ENh1/BypvzQE0BQh/gKpU1O8q9h1IQ5vK71RLkS3CnoN/pBIZGAJEPystKZLMC7uDdpNfPkn0Hflp2mHCzkipICZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686931803; x=1718467803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=adzUVMij1JPXtDamCxlUzuriz05K7kwBw3xqLM9geVM=;
 b=Z2gvZUJGoXEBIxqtvMsmscNTlFT3AG6L5DsydI5+A0d94IReo8UUqszn
 XX0pAqVy2fZvWzdsVpgu7z9PHZ0gJozzPWL04FQ3Yfg2Kpq9IVR+SxNii
 RBEdMe+iDhoX572emRnI47VtLNOK9p8YUogKUxkuH4ylTFjt+A0BYQx1N
 JNYY8PRhOMfDg5RdTRzDWdyROJUVfqdDnMx0ogBZt66BQ54a3sTlO/JhY
 c7pGSA5Em5pEiXxtnIh5sD0PU91UHaMls8bTg4ta+1MXB7Rf7AiwPAxmj
 +KxowgO0CniXPI5/3CjboBofchx8K08z21BH05CHKYEgn81aNrgFREjRs
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z2gvZUJG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/6] igc: Handle already
 enabled taprio offload for basetime 0
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Florian,

> -----Original Message-----
> From: Florian Kauer <florian.kauer@linutronix.de>
> Sent: Wednesday, 14 June, 2023 10:07 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Gomes, Vinicius <vinicius.gomes@intel.com>;
> David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Tan Tee Min <tee.min.tan@linux.intel.com>; Zulkifli,
> Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>; Gunasekaran,
> Aravindhan <aravindhan.gunasekaran@intel.com>; Chilakala, Mallikarjuna
> <mallikarjuna.chilakala@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kurt@linutronix.de; florian.kauer@linutronix.de
> Subject: [PATCH net-next 3/6] igc: Handle already enabled taprio offload for
> basetime 0
> 
> Since commit e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv") it is
> possible to enable taprio offload with a basetime of 0.
> However, the check if taprio offload is already enabled (and thus -EALREADY
> should be returned for igc_save_qbv_schedule) still relied on
> adapter->base_time > 0.
> 
> This can be reproduced as follows:
> 
>     # TAPRIO offload (flags == 0x2) and base-time = 0
>     sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24
> taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time 0 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x2
> 
>     # The second call should fail with "Error: Device failed to setup taprio offload."
>     # But that only happens if base-time was != 0
>     sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24
> taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time 0 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x2
> 
> Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 122158b321d5..35ace8d338a5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6123,7 +6123,7 @@ static int igc_save_qbv_schedule(struct igc_adapter
> *adapter,
>  	if (qopt->base_time < 0)
>  		return -ERANGE;
> 
> -	if (igc_is_device_id_i225(hw) && adapter->base_time)
> +	if (igc_is_device_id_i225(hw) && adapter->taprio_offload_enable)
>  		return -EALREADY;

I appreciate you catching that. Only i225 is affected by this; i226 is unaffected.

> 
>  	if (!validate_schedule(adapter, qopt))
> --
> 2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
