Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A097B9BBE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 10:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B99F942138;
	Thu,  5 Oct 2023 08:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B99F942138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696493468;
	bh=rQWPmk2gtbnV9uJzdKvOCoftM2NT9z0hzi0BbWr0tw4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CuDhsORd8KfiGt8sPdIzsQDrOwxEFqDf76mwFxNGOJ3ISui0cA65JGeFgFdS3LMHq
	 K+CDDHQ057v7X/GI0zjDMU7mgC4QIqNudwKr3nDzuW4L4vb38H81Eg5bHLB0tc4UH3
	 0dEbBiLnXCFDx2rkcc0WWCrwVYKrGzYy3IBiIEWeF/QSQrUF3cmGwyiN/geH0uUxAJ
	 EFXvRSc6CcKKzoMNNlfyvU9Uw0T+oFxiX+/nrq+QQcQuKM0oBV9UDPYS3UWkCJ7OgS
	 zgPk9YFLp/6zNHJspG17U8eNFuhBkWhXiIW3f//1AWTZ5QPYiqMOrsXkSYPvzzTl3R
	 2bHek0SywkVdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUtnysZPCgJc; Thu,  5 Oct 2023 08:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8ED741D6E;
	Thu,  5 Oct 2023 08:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8ED741D6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28F601BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEB7441D6E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEB7441D6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hEXgCVl_qexR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 08:10:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B43C4417D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B43C4417D7
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383338291"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="383338291"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 01:10:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="875473872"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="875473872"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 01:10:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:10:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 01:10:56 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 01:10:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mm1T9aJikQWdeLaUw2ScD04N8QVkE+xCY78g9VjyRlco51fEWsRAfE2vi2HzrukkvYrr3/Gc7i7QHuwfFRwTc7ccW+MG4HPcnx/xNPkBZ/RrqPP1wDo1Nj7awnJXetsmZjsB8NKP7SrXOIxIhs+RedfHgNbzp6bjjGELd/C8CWl0KSGSMrieZuBMU1xoYlgmZ85jOCxHFGnV3QhtBwjsyQO58uWwSUXHjzfWy1jGPA/Cp6WWxukCePqRnJoXOKbfdlFeGTOLLMBLacBWJCpAQjpfy47shOpc3v28CLWcw7CSq0yE4tXCKuJE0CumqyeomHMT3eOA4SHoW1f7sbhylg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKto3yP3T8IBQG6HyJPtUx3mD5sokZrK07W5tid75xs=;
 b=eYup8bDdXXRpxruW5/s73OYxStsnVAKzuOMPCpHZaT+GjRapzQmrDqZ21EYN2D6bVyBfnlzg5dmOoStdtBMimoWktI2DmrHPBdBQoKgIRf+xyi9wy7pwF81mFzbMqPWyo+2UOBxxYaYK4ARyg3D2pNcGaaUiAK7ZuBy9u0LEVbru3wsEXIdk3eZig4O8MVB5R1UEHVUqusuVLN0ZSlwyI/e/kiDzC/BSeQNBdUCWRFTk/OzSlJx6hALVUsesIeQIMM0igOmENFVrdwMgLROsZbNKnD9eNSRIzmISz2ox2GdoiWvVPq87S8I7ESLrMBClDQJt+lwTCgl9RXmRbMsdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Thu, 5 Oct
 2023 08:10:53 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Thu, 5 Oct 2023
 08:10:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/9] i40e: Move I40E_MASK
 macro to i40e_register.h
Thread-Index: AQHZ8R1EkIslCyq9bkiNuAqcNmXTprA65DHg
Date: Thu, 5 Oct 2023 08:10:52 +0000
Message-ID: <BL0PR11MB3122F0459852D93094E5CFECBDCAA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <20230927083135.3237206-3-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-3-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB5245:EE_
x-ms-office365-filtering-correlation-id: 79f718c3-825e-4b74-b6d0-08dbc57a980a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iSQKNmg7xZbnh6xIEZ2F3THhTdVcoBO3Xgd4F73ql5SWOoD8a7zF/7xA2J6WBHyF0JnEkRZY+MYCq8oP0SKe936wuNe/X5ImCkF1GH36cgO8g4tqzcuBlMmQfl5A2/82zFXhc1tYCmr0eQS5Q30MWqJBAkT7zdf0AaOPPYwzoUdT3hwETvbKr0N9Qj5etTFMSQjPp9mTBP8XwgEJsXtwKB4wCWDfflRJ/lH3NZ9dUNmMyRPIyBSoN3/BT3Ak2moQOLNSvhr1UL8FQXF8oVOVxeuuKhAb73mcrmLxHza0YBzKMDNq3MA+sTLE8LEP+rEL+NDUtImWk4WnQmtT/bFlPoyfDryzFq8Mty8L/4fxkqVA71M/HFme9efmqHPU6V4qZU7ha21Yt3ZAx3OtYHqH5S4CIS++gcvH+pj5zcl/7UFm7B7bQGP7HVqwrDSMERfzoHDEZWPmsZOlbDRSpyeKgol8ne9Ak5Dae0iTFTQxu3KKq0mVqLURO4CcJjMO3GgRLwcL+vUPCTT2wT6I8kdiQ+ufQsRac330m+lli5Meg60OTAcWscyJEgYpxAw5K60a+zBIzqYUAHabFxpttX78/zOekjea9mLKsXS86yu2moBGyQtfLQmmJ3HWpuR0Ubp4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(66446008)(64756008)(54906003)(66556008)(66476007)(66946007)(316002)(41300700001)(76116006)(9686003)(33656002)(26005)(71200400001)(7696005)(6506007)(478600001)(38100700002)(38070700005)(122000001)(82960400001)(86362001)(83380400001)(110136005)(55016003)(4744005)(2906002)(8936002)(4326008)(8676002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TMHTcSruiKL+3QF6aAkdXbwCpw4JTkmAQBED5R/bExxN0w4w+6Lm+ZpgIZwd?=
 =?us-ascii?Q?XJ0u4LjvyaWRCraiN/0keEAd2UnAnbsqjP+RlohcDv/iAA5RuyQlqCvYsoTD?=
 =?us-ascii?Q?IdDTwUpwgOYm+I7yfR0i0vLbhhzYKtBNGoIBrkMo+FIf3RwA1yTZzJxDefnq?=
 =?us-ascii?Q?D6jZUoLFIaPr7cQb9XpCBRxlOYpd20qu0dF/ATN9kCeSecmqsNCDMYRDJGWP?=
 =?us-ascii?Q?n4LQyjYnvjnwjIEfv2sCmxsR9X6r738R5w3rKY8qo/VZFyUFaZKHsU+BB6tz?=
 =?us-ascii?Q?zw9cyIhDB/oFr3DTNMuL+jDLGPwSgbfInhfZ36ZNgDeuS8L8rATyw/95fzCD?=
 =?us-ascii?Q?QEl6p4iXlY/g/wC58IcK4oiU0J46NTWXPIxN+IeEM8By+x1uvJVUmrm1TupH?=
 =?us-ascii?Q?Jncb35DU6+CcETzy0NFgRsqdDUwa0i25ZbtceyZAulnk8N9Bcglyxd0uqUP7?=
 =?us-ascii?Q?M6f5K19JoOSa52L4yU56FPfVMuCpBavP6r9kYukZDQRtpsBlXybQwq8H0k19?=
 =?us-ascii?Q?WgYTN2/riLL8ivOjRzd3SrFeLx+R9TfXFmpJjBnu3ew6sc9Ns472Xf6kC0ui?=
 =?us-ascii?Q?BvqTYNKK55JQBG+WaRIa80HQNGz5241C1ntL5IrG28GgSuxOKtmtEOUxQrrs?=
 =?us-ascii?Q?kocVRs/QpoSK2UKk5CjRrey0DmfwMT6ynBOENX2OjHGL/idXJxl6LAVGVQgD?=
 =?us-ascii?Q?40GnxjhfC23O28u0hGHy9pYLNTbFE+cm+IAL1mcsRqbCVcQ0nURlPlvZzNiS?=
 =?us-ascii?Q?9aUf8frixYP7pgbwrjwzopUBbBl/A111vltd1xevfZxazJ2efy72PHfHQKZB?=
 =?us-ascii?Q?0IXKhGlOisNwe2GIm1AqwHKR/4LHCtkC6FQA/JJ+AaC/XbMTIKG7UotyX8gZ?=
 =?us-ascii?Q?JMSZvoAgFBTyIF9h4WVUXqA/nJbY1Wig5x5p5zXXqKH7Vpxu1mjFDPXX1F+t?=
 =?us-ascii?Q?J2hp00ZMZELibgf8OXxdrTAHYdq/B7y6v8vlIwFzoK0uDtYTIHJP1BDulgTR?=
 =?us-ascii?Q?9EluzrEixD3q1fZbhB1mBKmG0YIBWa7TAEbN9jgipzI/uQTQK12ooxGF2WTJ?=
 =?us-ascii?Q?D1/lM9LEss7qzmjOieGBzybSPoeSD+bq6asLrZY5JeJH+nFFFQcU5SWk0Dfb?=
 =?us-ascii?Q?3rpJhFHodZfd3z8LvhxPdBVL1tWW9vw0wdE2G/bGnlGNbnf82sPuTT9i3RMh?=
 =?us-ascii?Q?II5xWfg6+wkuKHAxpeBsHlARqcQZlMDmoPNyzxrFh3GEd+AA68JfCRqvZhJx?=
 =?us-ascii?Q?nNmsUMIVCfvc3nr24wOcwPYa/maiZZdvu3nv37pSneAj0+R7GBO5v9I95I1r?=
 =?us-ascii?Q?CuvkAqhE6xW5NgCv4t4sKpNE/1ttrjBCSfxURULlUgN/hgJ9EZ2hXvxskiMk?=
 =?us-ascii?Q?U8y/lxBtyqcGBgupnvXtQ6fySDOGiRo0v+9YqKsxCoft2Pn2qOXKw5iPb9e4?=
 =?us-ascii?Q?nRPhYeK0du0e1qnz7DwL6ht43HO17jlvadR5xsD8p69h26DtdO4cZrnFv/tX?=
 =?us-ascii?Q?m1MbNwLB5MelXxNwfDz5Q/SdkdcLHlSwEuQTOOEMxzIciCX14ZkPceTZ1ISa?=
 =?us-ascii?Q?neWC7YRh/cQW7QmWNxBFKC4VrwatK4lYVjAPdm7ovOFV83W2uLxaO/IQVi22?=
 =?us-ascii?Q?cg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f718c3-825e-4b74-b6d0-08dbc57a980a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 08:10:52.9990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oy28xA+h4iBIh4zcf9zm4kQ6NHo2//ZB4l9jVEN3z4HeWHPTFA9rxMWqGC//1/Ehsd5Xnu93yhqzHi4eJOSVBYu2Vh7WKM/pkL/sDTU35RRcYZLJEOhjAvdZXLKrRd+Z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696493459; x=1728029459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j7ezo2GsjdPYtugNDtlq+ArH3PuIjLniCYEwnoZzvao=;
 b=KSw0Sn3C0KSaTvU26ZIqJFn9Ry8Y3hFj8OzpNO+Y3WIHV6AWPLrBF6NX
 5hu2cRqPLoR38RuvHgBk9Nm84ebxNkIGQmFF7+RJcqrk3PD0Kr0RbKvqJ
 VrfjJRJ0uQwtgOcddZsFUAwShlI0oFSahnIAKLkBR3E6cndAF3WzZloBr
 r3tUZ+6OR4JbGzeorAveq1f/SlgMBJ2FBfTe2hQmxoVGIx1SiNqeR/K7n
 dp38mwjmDJq0Vo6W5SyVlpuzxAwLC4cxr7RLdURF2VF5wGISli6bz5wLp
 TsXN1RPbiqbY3Zo8hmkFCmogIpvx6VzrRkAn62qQjAdsFjkFOZyR3Gbuj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KSw0Sn3C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/9] i40e: Move I40E_MASK
 macro to i40e_register.h
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
> Sent: Wednesday, September 27, 2023 2:01 PM
> To: netdev@vger.kernel.org
> Cc: edumazet@google.com; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/9] i40e: Move I40E_MASK macro to i40e_register.h
> 
> The macro is practically used only in i40e_register.h header file except
> few I40E_MDIO_CLAUSE* macros that are defined in i40e_type.h
> Move I40E_MASK macro to i40e_register.h header, I40E_MDIO_CLAUSE* macros
> are refactored in subsequent patch.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_register.h | 3 +++
>  drivers/net/ethernet/intel/i40e/i40e_type.h     | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
