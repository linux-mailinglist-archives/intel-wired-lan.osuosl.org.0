Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B307B9BCD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 10:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CF9D423ED;
	Thu,  5 Oct 2023 08:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CF9D423ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696494247;
	bh=z2IEBWgxPSVIq4QI1YLbjaIWdI8Ghte476pznVFWwcA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bbWda19rQ7REuRL+1nmu07D7AAm+o8DV03sGdwLqsv+U7ECrBW4Zte9MZVHQ/MI83
	 hdKUSM3qQJrgkKlCGRmWhfm0M2eA/3y3zvB1b5AsoEnw5K7U6gJLqYAWF1TRJafC65
	 e/Qjkn9vkhJHYse4G3fVN0T/70WmD/+/KPv0izeGwV7yrAZubkCa3glCqXFogEOeoo
	 2o+9rwoYlvCqX1e6BDCRuzLhKAEBWEG/T85Ap83rJl0gYPmMthB/pJBRFZweHdwnj2
	 tYbs1avG04pgdd74bdDdgraMwu6FVWALOKhgpgOXqVfjKEjLDEZWIKvVB5fT3lddkj
	 h4Ydg8mvEKhzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j2oiPdXnj9my; Thu,  5 Oct 2023 08:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3533F4241C;
	Thu,  5 Oct 2023 08:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3533F4241C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 973651BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E2B48143F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E2B48143F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UF57lMR6cwwf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 08:23:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8833D83410
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8833D83410
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="447623624"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="447623624"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 01:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="998884571"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="998884571"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 01:23:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:23:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:23:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 01:23:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 01:23:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNZ+K8ILQ9ex5oUJk1ebDbvRAoc7DruNjoSDSapCeRwQWEOy80R55m2vbnathsxt6lhA/gcgmLA3QMLmb7yw7C06+ka4CLD6U9r69Zr7y9gkPtEmdTRl3dzMe54epxDIYrA0ACkLVCLq3nZWIIHqqGFydPohTHf7YXY7bTwX2mprKTFHIuV1QhQqJsVB7VDY9CUuQRIR7hXMP0GRc9Z7Z0nxnZ9+uETXz2Cki7G8T9bNWtNy6EVx41zBxwawWt+207cLKV6g6h4rXSmqAOLG3j8ovpKXwnTtMuSK9PKu0/2OldOmWcYB7dYmRuFO9a/Yh1VWE20pAm3gEbL4018b8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJgTUkuX4nIr5YFu4beOb2Vxo02W0GEmyNOC8rrtlxQ=;
 b=TmvT+6bo8Qb4LRyDjtWYFDKJ9w1AprbNlt2vw11BYh5iF97BCfD/I59d62It2GyYGlIZQWVMtwIGIEgVRDbQ3JYUeb8sB2WREl5HTJbHZ3bgq8UjaY5h//nE4HJ8pvRTxzve9n8TvUHtOMgaj/GJdGqWEjAozuwlnKmstivbvTG3crfj4fXKDiN8QN6JzbLsCKbr7zFGlbe6iHqFKyrGJQ3WuFuPhX0rkyxxBYlKUSQ/lvIMchK0/XxqePNVYUK/fAG9DlG4Rk6toMi6ThHsmfrUVF8uEyajWoSBZTuPwv/bWm5rlF3aJ6cUCKJvM1jYelnuNiAzHf7idIg2vXqr8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB7264.namprd11.prod.outlook.com (2603:10b6:8:13b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Thu, 5 Oct
 2023 08:23:50 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Thu, 5 Oct 2023
 08:23:49 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 9/9] i40e: Move DDP
 specific macros and structures to i40e_ddp.c
Thread-Index: AQHZ8R1NcMNzPiSAhEepKHfdmXdzwbA65/Yw
Date: Thu, 5 Oct 2023 08:23:48 +0000
Message-ID: <BL0PR11MB3122E03C8AC3AA18BF46D281BDCAA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <20230927083135.3237206-10-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-10-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB7264:EE_
x-ms-office365-filtering-correlation-id: ffecaeec-7f0c-4c43-5ab9-08dbc57c6664
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bXXGvJ3lncOHtXgzMwnN0TUezI3GvwJ/W46iU+SlFF9iiz7d0JlLnySKSstBYpCzizCh9jAruGIAKs1a9BaqjKtqRYPfE8P+h9ZZWssf2oYHxPqxxb9AjE6IlJL6aquvnzUioNTFB0/kIlWE9xWOnHOaO3v6pk8fzCgL9DRr5uVSBAWTbALqImyG4qzCd848Kei3LeCvNjZgUefz39+9rqRcuT0j2WRCTWMCDOvoPOaIWneA4wBags4Fn83tK2n590T2mInrQP5T8KOumVkkWEi5HiX2qDSdJT01QJ4cVWcTrhsdnH0WkYbETrRfM0pNUy5ooU6LWmSnUperXSwOOSBRhyOii2TblbaxSxXhBawPx1lXY6NBIm3hfWrakHVG65GyJw5H9ZZsDdWZHdxQxLW3tWqrH/S7bxpaJ5ryUTy43KmVajzeXucydfVtU6GHQ7APABPOTElcjzOlbdR1eFwAY6mjzosZTn4a2DLKQ5XceeTgZrtCoOMXD9gCcmKKQTVnet2HuypjRo1aCdbQlxMN7SowVJ6ouksBWZFzvW1rJx3DN4uZEm/YavhnnoEVk2zfE+BcTJeWG1EQbz50HbXILoBw1pvfgAknlnQ/eY0oEIIMzKeDCgQyi/W+M7m3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(66446008)(64756008)(54906003)(66556008)(66476007)(66946007)(316002)(41300700001)(76116006)(9686003)(33656002)(26005)(71200400001)(7696005)(6506007)(478600001)(38100700002)(38070700005)(122000001)(82960400001)(86362001)(83380400001)(110136005)(55016003)(2906002)(8936002)(4326008)(8676002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oymf5y/majqdEFzKcnwpbPqR58cXau6R+rfIIIv8cm664cLfa6AnyNIZ22my?=
 =?us-ascii?Q?Lk5YABG7ejwnDY1ezmHeN2cdzwTUum7kovdoCGVvvX8e96F/IowLnw47JTzv?=
 =?us-ascii?Q?Em0ik1jzW5MIieL3oZNmriwoqxfj/inUwVlqMPIDluP5oAbccpe0c/muJbH1?=
 =?us-ascii?Q?7sDTCNzIvD8aYtPyDaUhrkEutIti8r79LogPkTiRfbrWI4fT8qng9eZXT4m9?=
 =?us-ascii?Q?19PUq3skwoUcoaZlo268Je0DP+Xztum3jOSc08wT3RenFcEh4CjQ+EGk7gSs?=
 =?us-ascii?Q?cSb+5kQQ860IGnDzpo6sgIzoMtpKZ/v02KGbrEkRtOLwEZoCvrutSVyxaed3?=
 =?us-ascii?Q?6wTUwQyR75PSqLUzOp6PRBcbA0en6rcFV7tmE9mFYI/+sUAbAByBUrhl9Dc0?=
 =?us-ascii?Q?wMe3eXwnVzqDIx8+dUzigM+n2jdMOJv+oiCenTKObVq/8wVTElQE0Wcgl+WJ?=
 =?us-ascii?Q?ptEqCHx1MHZeeeukU/r8IGsaJCJY/XkeTguKd7wPD4yZHXYueb6R3BvAz0Xs?=
 =?us-ascii?Q?9KWDffcdgfKg1BtjEPexszHsKjCyeAJhCrUfRiBRW7etDDymuimZTLPJpedY?=
 =?us-ascii?Q?J3tGP/xZHC55bdf3HWQHzeck1GETpTb+LEv9DeLqayNV/JJhL3ij3ZpadcXx?=
 =?us-ascii?Q?rxory/lvs+JquTMc+agQ4o2VuxVLCBgZTpptr03fMRs4Fi5i8XrDq0aMQmxB?=
 =?us-ascii?Q?FxTGeIW1dybwu9f2DQISOM418f0PccdTzrDnbhMOAeyecpfQxA+v00qM69yS?=
 =?us-ascii?Q?IjhmnM1oxR3pvgXrPnyfcJkl+cGHzfSy4KooitrMFzApbsxg87kLy37f44OA?=
 =?us-ascii?Q?SzWmzMqFIEgoF+ur55J2XYUCw0X0d8dJ/U4WaLFq3A9kDl6jpLcqWP1kviJJ?=
 =?us-ascii?Q?CF3Xj/x09lB9EAMrk2Va/D6QSagRLKBQ9DZWBmdyI+GeUSYbvAOsJmEbjvzy?=
 =?us-ascii?Q?C0IsQQGqDCHZmKSYkFaWq6ZzBaiFIrLrSaxmSTgqBfhYNVL/luhBwTrfdLmA?=
 =?us-ascii?Q?f0iMC0Wi4uCiIxbmAqAlOx/xjDutltzGdSE1xPngbtoOzQDNJqRpvfRI5voC?=
 =?us-ascii?Q?OMY1aScHm9DpCpi4+Cv+haoK7abdqwD/QR+S1l3Ig9ym4GQUncsvgiuqr0Ox?=
 =?us-ascii?Q?5IddP3NtewyrQBCPTmA/y37Y+D+4WirRFqdXHRTGtDF7evVTRbpHHqOszcD9?=
 =?us-ascii?Q?ohcmzVHbe38E7lil/FWzlLtuCuyDyO4E4RFtikPqZ8VatAvUgdpYKiAtz6TT?=
 =?us-ascii?Q?Vu9mioUFG6BPHOg2mUniTz9RpzB9aiOtDcdXUnn5UBtpHhZ0Xns4fTbI3gYJ?=
 =?us-ascii?Q?zYGs4qul4kmn5MpCOcIYfULhHUGdwLls9sP0KpGUmwund4RnH0dYes4jP7WN?=
 =?us-ascii?Q?EV23m2Op3QMIbSAd2nWALboA8bSDxHUtcbX10JrC0fSyzCuzPfZjsQkGPDZq?=
 =?us-ascii?Q?ugMHCj3cSKuQjWkGJJ2+gDpU/HstWtWDKO+/uLwCSadN7MEUN4ik046Frsgc?=
 =?us-ascii?Q?pO/69YXetiugRlsrMmd7XMOsBjXexb3wBjHb0uNYRU1XQvVoCUG6VeeKpz12?=
 =?us-ascii?Q?O2HQ2N3CIVdnpEFx/QC+cofFr2nHLMsKlO4bezPK+Sfdj398SuIbi211ksGI?=
 =?us-ascii?Q?lA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffecaeec-7f0c-4c43-5ab9-08dbc57c6664
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 08:23:48.7423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Im6C7cYN7iL3E44SiVB7NrIkBZxPCFoGVD/XysKVDoe9PpNDl8jzDSGQufJvVq4HD0vC5+Lhsji/G9kJaAZ76HEaVTpkrccHujmuTu2bI+8Om0y337/B9hZaBfn2jd2J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696494239; x=1728030239;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Jy31VqMCblls5iT54njocQnUTlKi0Iyu7M3nMASEPs=;
 b=FwTmKT4rLcyMpbovz4et13gUVFPCms80K+lslUxGq2bY6nOsDcW/+Djj
 N09Mf4DSAkvfTaAslV7UgVRFdxL0baLniRF+WSgk4Np1k3cEC7gvlGdHP
 cmYcQr2lTndKnWknuh3fw4W0T+ZdEjo1G+lhFyIuypDgazntsdcYwXD6T
 tMKK13+XsS/QMTS9WfPvSbuqaI6i7x81h8PTJAWZ/MKUXlfm0BIL7ensR
 M4WcEIDp4wQoQx7Oh81SCNXykkJp0PJhEe0HjfgrcHkZSbRxdq7j8zcaa
 ISbAaUiwl2NmnIb67VlYdJL33vLZ7XRMou55+Rhao2vfZLFy3Kah55LBx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FwTmKT4r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 9/9] i40e: Move DDP
 specific macros and structures to i40e_ddp.c
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Wednesday, September 27, 2023 2:02 PM
> To: netdev@vger.kernel.org
> Cc: edumazet@google.com; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next v2 9/9] i40e: Move DDP specific macros and structures to i40e_ddp.c
> 
> Move several DDP related macros and structures from i40e.h header
> to i40e_ddp.c where are privately used. Make static i40e_ddp_load()
> function that is also used only in i40e_ddp and move declaration of
> i40e_ddp_flash() used by i40e_ethtool.c to i40e_prototype.h
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 24 -------------------
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    | 22 +++++++++++++++--
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |  5 ++++
>  3 files changed, 25 insertions(+), 26 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
