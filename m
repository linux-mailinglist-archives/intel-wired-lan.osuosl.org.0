Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 326F6731CE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C291F8340C;
	Thu, 15 Jun 2023 15:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C291F8340C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686843804;
	bh=R/8CfpIfd7K1wgaA7T3CTFkzIKrsp3HULttQHRqnKA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ICYNMHz8sgAvZS1plD3MKF4FRm6eLh1jAekerAXNcRVCamNWz6CdLsJD/AECpvD+4
	 cH+ygG/NqI4XI2dEfAB8eB03og49IVPmWRgaqUroMneFAf6NDRET0+FRW465CG6/cW
	 ZJD8xMDJ7PGWhc5PHcvbFmQxfovFFsA7AzczJgRHnosaIoy5gXtN9jsYN9p1p9pH89
	 BiSoKNAsuIbHHIbE2Rg2yioIMQRYAoqAGo++Wr2B6kbqYucu0QOVhzPYoeFa6uxx+i
	 zTKZmwNZyzzLfjLvC+CbNvCjmKxTLcLbSRZ0e9aVoiZbTtAk/gHxVZvxGK1RTOb5W4
	 D4qP/VNILCVtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJcQ1lWu5eQe; Thu, 15 Jun 2023 15:43:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABF628322E;
	Thu, 15 Jun 2023 15:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABF628322E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31CAD1BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13DA340145
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13DA340145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdlkWhUVHgSg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD6E400D6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDD6E400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424865413"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="424865413"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:27:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="802435829"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="802435829"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 08:27:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:27:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:27:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:27:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOQjSvPQ6s9ZUf0yva3oRYduH3GUTj1MVhYCObp1qnf9YaknaW34ubG10voSVXzZ2qIRh2BmpDh5duF47yTaYfv/vCgNGoUkMtdcuXpjQ2gYGnymcYbsGWD1RmapsH8ZOjk6Ufqg1jpYelU/Rz9sycKKlZJOWBtuVr5D+1pLd+WZfYeBZizEBQk/MMrtBdBSqUc05oiV1kD77jHcgiu7X7nq8ln2fdgXKqprytjOAOdMmRHxGDnQjGxplYfZiavneL2xMS0XUhUiIe+WCQXMxtv6fGUjBKv4NgQZxI/bUN1EsnN1Wly0Cj0TsLEyA95D4ET/uQkryPd0tYr0l7Mzwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CRReZ/8wXHHftXPdnnUFbDA4CWE+m6C9WEypMmZ/vLo=;
 b=AYcuFmQTShfSxLZXN5Z8YhRLf2PGigcfZsy/s2LVEANPX0EEQAQWx5u9gVh3SAb5LLyRsS5th6DGFih35zYoB4z8+2pduZ5meDmWIFIEmMDth2Emm4XTKq2HJroV84FiN+MaAJ4RNrTdOaCoYThtbdhLjNiWYlKzNqC5436DDw3sw4uI0RVRTFIwOrKdxe0I2O/0WKrapfGOVyo0BUARmmBGEnrk52F7stf+XFQLCHMMeusX17bWwZARElvT6TsMrg5MRW5ZSvyg0hcPZGJWw2cLbzk/6Sw5KEVcJxCxN3f1nNkDto2IINWfFFV0mnR2MLi50A8mmA2UD/05thKahg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ2PR11MB8449.namprd11.prod.outlook.com (2603:10b6:a03:56f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Thu, 15 Jun
 2023 15:27:16 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:27:16 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v10 4/5] iavf: fix a deadlock
 caused by rtnl and driver's lock circular dependencies
Thread-Index: AQHZl75DbOvTktWwoUqT+SDO+uIsWq+MDACQ
Date: Thu, 15 Jun 2023 15:27:16 +0000
Message-ID: <BL0PR11MB35212733A2C094A1678833C08F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
 <20230605145226.1222225-5-mateusz.palczewski@intel.com>
In-Reply-To: <20230605145226.1222225-5-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ2PR11MB8449:EE_
x-ms-office365-filtering-correlation-id: fed2c4ec-b733-4aba-8a1a-08db6db5007a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qSwKomhDrnNaJ5Wk5jLwiuxMw8pMwMxDVTMAq/Xr0efzJLky9WQP6iDri8EgdLjPBXNw37Uk8d956hs3jIFVH7YngZd2R60ieGenxJCYZBBBSS3BWI3yLyNnrEGQy0R54+GIOM16dO7pVj/IHOdQ/IEUTym+4YF+4SpGNerN+T4O0l2u1rRmRP/8tQXYkNHe9BZgYx7yEYOjxZCYsITPX/2rM9fwrWS9zfbRbaPdD9xP4iXf/N+BzbpSpf2vdtEK095iJ7lEjv47R5nIF3JkGmAllmlz3sVtdJxWIx3i+Baks9j8nGhRiV4/Qgd33jti8vPr2Iq6YAOjAE7ZOpJycyKVfV61cyeEd8+NfVMOT3b8RG0rq1v8Bnicg7FFK4df2IsOYF33I8xI7pgYIkaBDa0A5gI0E1qezXoD6d9EVTpJzezQ8EVCXbD4M536CjBXwcge+gzUA+JrhZa0N3MEzuWpjMm66cVJfgGsrNnrkLmDCdIJ92zB44kkS9yvgxRd1tDvzu+EmLj6aEf3vwr96eItR6REadMwmNLdZT1GM6tY9JoD5VOYjL+u1IvRpcdbYmnVRoPWyXZV4YFNsEbSP/oODmXi8jJNFr22c7DmB4gulDW2qxWAzDTuWHR13wYox6ObE33YCH02wu2Zc6pxhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199021)(38070700005)(33656002)(86362001)(66556008)(66476007)(64756008)(66446008)(4326008)(110136005)(478600001)(76116006)(66946007)(966005)(316002)(7696005)(55016003)(8676002)(5660300002)(52536014)(30864003)(8936002)(41300700001)(82960400001)(38100700002)(2906002)(122000001)(186003)(26005)(9686003)(53546011)(71200400001)(83380400001)(6506007)(66574015)(84970400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmUzcVFUVTFUZU5IQzRjWHY4T0NZTWU5QXpnWVFsRmVibldjcmRuZ3VuNGdP?=
 =?utf-8?B?aWIyMjFnelJtalRCa1NqeEdBbXVyamVTUVNYcy9vVDR0RTZVL04reTJrMC8z?=
 =?utf-8?B?K0UyTmJSUXhQZ3pFNk9Lb3BnWmNmUnBHRER4L3hvWERYbUMxdm5JYU9aRlFj?=
 =?utf-8?B?MUZxUkxyN00vWXhHaFE0R3BVdVBsRFlSQmNsSCtScE8wQ2RrbE9LTDUzWC9p?=
 =?utf-8?B?NVg3SERJTUNyRmdpcURwdTQvOGN3UGpCNkhBdEViM3NnVGR3SW8xTm5IZXhI?=
 =?utf-8?B?ekgvSXFFVEM2VGFnWjZUREFPbFJ2TGJUVksvbURHSlQwUnh6UHJpVmZjL01q?=
 =?utf-8?B?SW45cWtSMXFRbmRXVlJCcEJBZFNnUHppSnlaam8zQkJraEExbWw4N2xNUkVJ?=
 =?utf-8?B?ZlFvL1E3WmcyUmNuNkhKS3dSeTM4V0dFZk5FbzV5d21OMmI0S2VtTGd2WnNB?=
 =?utf-8?B?b2JaaUVMTkprLzdqUVJPVFc4K1BObGJpMENaZmx6RUNLWk5jUHdsMjg3TEJt?=
 =?utf-8?B?UEQwS3FkanZqRzZ4dThtc0tGR3NUdXg1WWluRW1iUUo0VkFMSjh6QWtTWmps?=
 =?utf-8?B?UCt1NFBCSDY2WXpjMDFmeGM0LysrOE8yLzIzYnFzOFQ5OXRTekhLTzI4d1VB?=
 =?utf-8?B?R2c0TEY3M1Q0eXo1U2l2ay9qSVIxWlJmSkh5SlJNOFJzTDZsNUZCa1lqOS9y?=
 =?utf-8?B?dDZyZlRhQ2hnRVdPaGtNVnNaN2E5M09uMzRzYzNJQ2UwQXgzVUYwUFRoR2dB?=
 =?utf-8?B?cU92ZEtQZDJkaHY2SDAyUWtEZGMrY05peksyTElyRFkwZGVmeXBvQnJhcDVR?=
 =?utf-8?B?WU5UK25PcU82UlpTSmwzMWxyb05sbFZvQVBMdFp1NnFRQXQ1N2J6RysxVDAr?=
 =?utf-8?B?YlhlRlRBYmRZSy91V0FpaXkyTDZxL1RhN0ExMXFYM2dheUFGNmhEY3Vubisw?=
 =?utf-8?B?ZkFJV1JzOGp3Tit4alptOExBYmc0V0dFSWE0TjBFTVcyOHhJNnRzOHpzM1Bt?=
 =?utf-8?B?WlZsQURTaHZiR21Fb2hQaXUxZU1ZNDQzQmhMdWhwQmM1dVZiQlhWZ25CS3hS?=
 =?utf-8?B?RFR2MXZvOXlObWRyME9ZSjVCOHlBd0NLS0N0UFNmYWd5TlZaWlh4bHAvMld5?=
 =?utf-8?B?dGxBMmpIek5maTFXT21yTFlKQ01jbnFHdWFQNmN2bkZaamgwOXJ1NGlWczFT?=
 =?utf-8?B?SElSWDI5RVFObkxaQ2lFbitvMzRNMnY4eERtRzRORytwOEVRM1BXdUJWQkJh?=
 =?utf-8?B?VDFNTWhQcis0aXAzUDdGQ0xwdFlzelYyTjdhazd2VDRnM2hmczNZRlk0UnhR?=
 =?utf-8?B?eCtMdk5KMlpQTnhTeFdWZDBlUXFSNzVxeUZ0Zy9KYUt5cTVuUlNITkpMYitG?=
 =?utf-8?B?UHFXb245c29VSTRablZMdHRpbDhWSmp3dkJHditSNDBoYjhVUy8rTDdGL05j?=
 =?utf-8?B?RlRZaS9XdGU0S1R1TkJUNnR1OTNNaDdOMDBiOU5kUUJGYjVkKzZ2UFdHdlZK?=
 =?utf-8?B?em8yc3pNdGFSK0YzMEQ5aUd3bmg1R3FXdWVzQitMdGQvUEd2L2xoS2xzUzR0?=
 =?utf-8?B?T0lGcU9RN1F3WTJiMnpYeGF4dVNaMkl6aW9QeDZYSkNxbU5hazFaK0VvNUZl?=
 =?utf-8?B?ZkdxcXNmb2dVTkN2K04zU3FtMlBTcmd0aGk2ZEdEZEZDazlSUlRHdExtUWI1?=
 =?utf-8?B?NTNmdDU5cnBoVVJaRkU0Ly9XUWdPVmlScGIwZTFaNEt3eHF5dWhlRU9yUzhN?=
 =?utf-8?B?UUFqMW5FbXlXRTl2NGVGTG5YcE05bytCOEd4bXZBd3Y0SUxZcHloRHNLUWxM?=
 =?utf-8?B?bmxlbmwxS2NFcENOazJNWWJUSy9BWEd0alEwL3p4aTVUdjRJSjYrQzJlbUhH?=
 =?utf-8?B?bW02WlNHajdkTWRtNzlpTkJhUEZ4SEZBRGR3T21GWUo3ZCtJbXZzclJZOFd2?=
 =?utf-8?B?WHo2UmJ3ZW9YbGEzSmlLQy9CekNmV3Vqc3d2elkwVVZhQ2lSLzBtM29XWE12?=
 =?utf-8?B?RVExMFFNb3c5Z3FobUJDQ2RFenRxZDQrdWRQWmd0MlBjUEUwQUo1d0U5OVM5?=
 =?utf-8?B?blJyQnhyMWJaMndGZmJoOGU0bEN4LzRKT2JjQitmQmFTcks1YzNBMytPZjd0?=
 =?utf-8?B?dGVwVE9xN0RIckUwU21FM2MvV0tsczcyRDdIY3ByZThDb1JqSTVQOG0xY3JK?=
 =?utf-8?B?UlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fed2c4ec-b733-4aba-8a1a-08db6db5007a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:27:16.7473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qRDT9hBCYkBdiBLkloPCm2FYrExykpmOhBrU5rQhf8VCZ9KTcn2XdGDeUWYzDFtpaoKBkYmtVmqvkZJyeqlylLa+SFvIwwhZd1kagSlqXq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686843794; x=1718379794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CRReZ/8wXHHftXPdnnUFbDA4CWE+m6C9WEypMmZ/vLo=;
 b=dEZwxSM6/Qki0TArR3+XWB33jzT3iG6Q/CXhCQ8pflSi+r2yGSUanx+Z
 TJvnG+7NzJZ+duwRdFEUg0zaqhtxpx2crAXpXyvYHNtR2Pa47/y8oZtyz
 xHzJ82SAe3e4o54COFVXzUksvnArsY6HjeYLmibeol3gQzqHkN4//AzVQ
 UU5p6V70o58zPeCjQfWuhtypzQNPEMEtIe9KjWeaPPfS7w8EKlPZYqZvl
 l7FqJoO6cWZyDLn2VtuNh+sBdWwYSNKk+LiETRGmiYAnGMs+sXdxo6g3l
 tNLbj0KHe+LbAmFPY6pAFADRZJvDrwm7GZAphFtvzkmUyMzWHGotS5rIx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dEZwxSM6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10 4/5] iavf: fix a deadlock
 caused by rtnl and driver's lock circular dependencies
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
Cc: ivecera <ivecera@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBNYXRldXN6
IFBhbGN6ZXdza2kNCj4gU2VudDogcG9uaWVkemlhxYJlaywgNSBjemVyd2NhIDIwMjMgMTY6NTIN
Cj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBpdmVjZXJhIDxp
dmVjZXJhQHJlZGhhdC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBp
d2wtbmV0IHYxMCA0LzVdIGlhdmY6IGZpeCBhIGRlYWRsb2NrIGNhdXNlZA0KPiBieSBydG5sIGFu
ZCBkcml2ZXIncyBsb2NrIGNpcmN1bGFyIGRlcGVuZGVuY2llcw0KPiANCj4gRnJvbTogQWhtZWQg
WmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+DQo+IA0KPiBBIGRyaXZlcidzIGxvY2sgKGNyaXRf
bG9jaykgaXMgdXNlZCB0byBzZXJpYWxpemUgYWxsIHRoZSBkcml2ZXIncyB0YXNrcy4NCj4gTG9j
a2RlcCwgaG93ZXZlciwgc2hvd3MgYSBjaXJjdWxhciBkZXBlbmRlbmN5IGJldHdlZW4gcnRubCBh
bmQgY3JpdF9sb2NrLg0KPiBUaGlzIGhhcHBlbnMgd2hlbiBhbiBuZG8gdGhhdCBhbHJlYWR5IGhv
bGRzIHRoZSBydG5sIHJlcXVlc3RzIHRoZSBkcml2ZXIgdG8NCj4gcmVzZXQsIHNpbmNlIHRoZSBy
ZXNldCB0YXNrIChpbiBzb21lIHBhdGhzKSB0cmllcyB0byBncmFiIHJ0bmwgdG8gZWl0aGVyIGNo
YW5nZQ0KPiByZWFsIG51bWJlciBvZiBxdWV1ZXMgb2YgdXBkYXRlIG5ldGRldiBmZWF0dXJlcy4N
Cj4gDQo+ICAgWzU2Ni4yNDE4NTFdDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KPiAgIFs1NjYuMjQxODkzXSBXQVJOSU5HOiBwb3NzaWJs
ZSBjaXJjdWxhciBsb2NraW5nIGRlcGVuZGVuY3kgZGV0ZWN0ZWQNCj4gICBbNTY2LjI0MTkzNl0g
Ni4yLjE0LTEwMC5mYzM2Lng4Nl82NCtkZWJ1ZyAjMSBUYWludGVkOiBHICAgICAgICAgICBPRQ0K
PiAgIFs1NjYuMjQxOTg0XSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gICBbNTY2LjI0MjAyNV0gcmVwcm8uc2gvMjYwNCBpcyB0cnlpbmcg
dG8gYWNxdWlyZSBsb2NrOg0KPiAgIFs1NjYuMjQyMDYxXSBmZmZmOTI4MGZjNWNlZWU4ICgmYWRh
cHRlci0+Y3JpdF9sb2NrKXsrLisufS17MzozfSwgYXQ6DQo+IGlhdmZfY2xvc2UrMHgzYy8weDI0
MCBbaWF2Zl0NCj4gICBbNTY2LjI0MjE2N10NCj4gICAgICAgICAgICAgICAgYnV0IHRhc2sgaXMg
YWxyZWFkeSBob2xkaW5nIGxvY2s6DQo+ICAgWzU2Ni4yNDIyMDldIGZmZmZmZmZmOTk3NmQzNTAg
KHJ0bmxfbXV0ZXgpeysuKy59LXszOjN9LCBhdDoNCj4gaWF2Zl9yZW1vdmUrMHg2YjUvMHg3MzAg
W2lhdmZdDQo+ICAgWzU2Ni4yNDIzMDBdDQo+ICAgICAgICAgICAgICAgIHdoaWNoIGxvY2sgYWxy
ZWFkeSBkZXBlbmRzIG9uIHRoZSBuZXcgbG9jay4NCj4gDQo+ICAgWzU2Ni4yNDIzNTNdDQo+ICAg
ICAgICAgICAgICAgIHRoZSBleGlzdGluZyBkZXBlbmRlbmN5IGNoYWluIChpbiByZXZlcnNlIG9y
ZGVyKSBpczoNCj4gICBbNTY2LjI0MjQwMV0NCj4gICAgICAgICAgICAgICAgLT4gIzEgKHJ0bmxf
bXV0ZXgpeysuKy59LXszOjN9Og0KPiAgIFs1NjYuMjQyNDUxXSAgICAgICAgX19tdXRleF9sb2Nr
KzB4YzEvMHhiYjANCj4gICBbNTY2LjI0MjQ4OV0gICAgICAgIGlhdmZfaW5pdF9pbnRlcnJ1cHRf
c2NoZW1lKzB4MTc5LzB4NDQwIFtpYXZmXQ0KPiAgIFs1NjYuMjQyNTYwXSAgICAgICAgaWF2Zl93
YXRjaGRvZ190YXNrKzB4ODBiLzB4MTQwMCBbaWF2Zl0NCj4gICBbNTY2LjI0MjYyN10gICAgICAg
IHByb2Nlc3Nfb25lX3dvcmsrMHgyYjMvMHg1NjANCj4gICBbNTY2LjI0MjY2M10gICAgICAgIHdv
cmtlcl90aHJlYWQrMHg0Zi8weDNhMA0KPiAgIFs1NjYuMjQyNjk2XSAgICAgICAga3RocmVhZCsw
eGYyLzB4MTIwDQo+ICAgWzU2Ni4yNDI3MzBdICAgICAgICByZXRfZnJvbV9mb3JrKzB4MjkvMHg1
MA0KPiAgIFs1NjYuMjQyNzYzXQ0KPiAgICAgICAgICAgICAgICAtPiAjMCAoJmFkYXB0ZXItPmNy
aXRfbG9jayl7Ky4rLn0tezM6M306DQo+ICAgWzU2Ni4yNDI4MTVdICAgICAgICBfX2xvY2tfYWNx
dWlyZSsweDE1ZmYvMHgyMmIwDQo+ICAgWzU2Ni4yNDI4NjldICAgICAgICBsb2NrX2FjcXVpcmUr
MHhkMi8weDJjMA0KPiAgIFs1NjYuMjQyOTAxXSAgICAgICAgX19tdXRleF9sb2NrKzB4YzEvMHhi
YjANCj4gICBbNTY2LjI0MjkzNF0gICAgICAgIGlhdmZfY2xvc2UrMHgzYy8weDI0MCBbaWF2Zl0N
Cj4gICBbNTY2LjI0Mjk5N10gICAgICAgIF9fZGV2X2Nsb3NlX21hbnkrMHhhYy8weDEyMA0KPiAg
IFs1NjYuMjQzMDM2XSAgICAgICAgZGV2X2Nsb3NlX21hbnkrMHg4Yi8weDE0MA0KPiAgIFs1NjYu
MjQzMDcxXSAgICAgICAgdW5yZWdpc3Rlcl9uZXRkZXZpY2VfbWFueV9ub3RpZnkrMHgxNjUvMHg3
YzANCj4gICBbNTY2LjI0MzExNl0gICAgICAgIHVucmVnaXN0ZXJfbmV0ZGV2aWNlX3F1ZXVlKzB4
ZDMvMHgxMTANCj4gICBbNTY2LjI0MzE1N10gICAgICAgIGlhdmZfcmVtb3ZlKzB4NmMxLzB4NzMw
IFtpYXZmXQ0KPiAgIFs1NjYuMjQzMjE3XSAgICAgICAgcGNpX2RldmljZV9yZW1vdmUrMHgzMy8w
eGEwDQo+ICAgWzU2Ni4yNDMyNTddICAgICAgICBkZXZpY2VfcmVsZWFzZV9kcml2ZXJfaW50ZXJu
YWwrMHgxYmMvMHgyNDANCj4gICBbNTY2LjI0MzI5OV0gICAgICAgIHBjaV9zdG9wX2J1c19kZXZp
Y2UrMHg2Yy8weDkwDQo+ICAgWzU2Ni4yNDMzMzhdICAgICAgICBwY2lfc3RvcF9hbmRfcmVtb3Zl
X2J1c19kZXZpY2UrMHhlLzB4MjANCj4gICBbNTY2LjI0MzM4MF0gICAgICAgIHBjaV9pb3ZfcmVt
b3ZlX3ZpcnRmbisweGQxLzB4MTMwDQo+ICAgWzU2Ni4yNDM0MTddICAgICAgICBzcmlvdl9kaXNh
YmxlKzB4MzQvMHhlMA0KPiAgIFs1NjYuMjQzNDQ4XSAgICAgICAgaWNlX2ZyZWVfdmZzKzB4MmRh
LzB4MzMwIFtpY2VdDQo+ICAgWzU2Ni4yNDQzODNdICAgICAgICBpY2Vfc3Jpb3ZfY29uZmlndXJl
KzB4ODgvMHhhZDAgW2ljZV0NCj4gICBbNTY2LjI0NTM1M10gICAgICAgIHNyaW92X251bXZmc19z
dG9yZSsweGRlLzB4MWQwDQo+ICAgWzU2Ni4yNDYxNTZdICAgICAgICBrZXJuZnNfZm9wX3dyaXRl
X2l0ZXIrMHgxNWUvMHgyMTANCj4gICBbNTY2LjI0NjkyMV0gICAgICAgIHZmc193cml0ZSsweDI4
OC8weDUzMA0KPiAgIFs1NjYuMjQ3NjcxXSAgICAgICAga3N5c193cml0ZSsweDc0LzB4ZjANCj4g
ICBbNTY2LjI0ODQwOF0gICAgICAgIGRvX3N5c2NhbGxfNjQrMHg1OC8weDgwDQo+ICAgWzU2Ni4y
NDkxNDVdICAgICAgICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Mi8weGRjDQo+
ICAgWzU2Ni4yNDk4ODZdDQo+ICAgICAgICAgICAgICAgICAgb3RoZXIgaW5mbyB0aGF0IG1pZ2h0
IGhlbHAgdXMgZGVidWcgdGhpczoNCj4gDQo+ICAgWzU2Ni4yNTIwMTRdICBQb3NzaWJsZSB1bnNh
ZmUgbG9ja2luZyBzY2VuYXJpbzoNCj4gDQo+ICAgWzU2Ni4yNTM0MzJdICAgICAgICBDUFUwICAg
ICAgICAgICAgICAgICAgICBDUFUxDQo+ICAgWzU2Ni4yNTQxMThdICAgICAgICAtLS0tICAgICAg
ICAgICAgICAgICAgICAtLS0tDQo+ICAgWzU2Ni4yNTQ4MDBdICAgbG9jayhydG5sX211dGV4KTsN
Cj4gICBbNTY2LjI1NTUxNF0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2soJmFk
YXB0ZXItPmNyaXRfbG9jayk7DQo+ICAgWzU2Ni4yNTYyMzNdICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBsb2NrKHJ0bmxfbXV0ZXgpOw0KPiAgIFs1NjYuMjU2ODk3XSAgIGxvY2soJmFk
YXB0ZXItPmNyaXRfbG9jayk7DQo+ICAgWzU2Ni4yNTczODhdDQo+ICAgICAgICAgICAgICAgICAg
ICoqKiBERUFETE9DSyAqKioNCj4gDQo+IFRoZSBkZWFkbG9jayBjYW4gYmUgdHJpZ2dlcmVkIGJ5
IGEgc2NyaXB0IHRoYXQgaXMgY29udGludW91c2x5IHJlc2V0dGluZyB0aGUgVkYNCj4gYWRhcHRl
ciB3aGlsZSBkb2luZyBvdGhlciBvcGVyYXRpb25zIHJlcXVpcmluZyBSVE5MLCBlLmc6DQo+IA0K
PiAJd2hpbGUgOjsgZG8NCj4gCQlpcCBsaW5rIHNldCAkVkYgdXANCj4gCQlldGh0b29sIC0tc2V0
LWNoYW5uZWxzICRWRiBjb21iaW5lZCAyDQo+IAkJaXAgbGluayBzZXQgJFZGIGRvd24NCj4gCQlp
cCBsaW5rIHNldCAkVkYgdXANCj4gCQlldGh0b29sIC0tc2V0LWNoYW5uZWxzICRWRiBjb21iaW5l
ZCA0DQo+IAkJaXAgbGluayBzZXQgJFZGIGRvd24NCj4gCWRvbmUNCj4gDQo+IEFueSBvcGVyYXRp
b24gdGhhdCB0cmlnZ2VycyBhIHJlc2V0IGNhbiBzdWJzdGl0dXRlICJldGh0b29sIC0tc2V0LWNo
YW5ubGVzIg0KPiANCj4gQXMgYSBmaXgsIGFkZCBhIG5ldyB0YXNrICJmaW5pc2hfY29uZmlnIiB0
aGF0IGRvIGFsbCB0aGUgd29yayB3aGljaCBuZWVkcyBydG5sDQo+IGxvY2suIFdpdGggdGhlIGV4
Y2VwdGlvbiBvZiBpYXZmX3JlbW92ZSgpLCBhbGwgd29yayB0aGF0IHJlcXVpcmUgcnRubCBzaG91
bGQNCj4gYmUgY2FsbGVkIGZyb20gdGhpcyB0YXNrLg0KPiANCj4gQXMgZm9yIGlhdmZfcmVtb3Zl
KCksIGF0IHRoZSBwb2ludCB3aGVyZSB3ZSBuZWVkIHRvIGNhbGwNCj4gdW5yZWdpc3Rlcl9uZXRk
ZXZpY2UoKSAoYW5kIGdyYWIgcnRubF9sb2NrKSwgd2UgbWFrZSBzdXJlIHRoZSBmaW5pc2hfY29u
ZmlnDQo+IHRhc2sgaXMgbm90IHJ1bm5pbmcgKGNhbmNlbF93b3JrX3N5bmMoKSkgdG8gc2FmZWx5
IGdyYWIgcnRubC4gU3Vic2VxdWVudA0KPiBmaW5pc2hfY29uZmlnIHdvcmsgY2Fubm90IHJlc3Rh
cnQgYWZ0ZXIgdGhhdCBzaW5jZSB0aGUgdGFzayBpcyBndWFyZGVkIGJ5IHRoZQ0KPiBfX0lBVkZf
SU5fUkVNT1ZFX1RBU0sgYml0IGluIGlhdmZfc2NoZWR1bGVfZmluaXNoX2NvbmZpZygpLg0KPiAN
Cj4gRml4ZXM6IDVhYzQ5ZjNjMjcwMiAoImlhdmY6IHVzZSBtdXRleGVzIGZvciBsb2NraW5nIG9m
IGNyaXRpY2FsIHNlY3Rpb25zIikNCj4gU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQu
emFraUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdGV1c3ogUGFsY3pld3NraSA8bWF0
ZXVzei5wYWxjemV3c2tpQGludGVsLmNvbT4NCj4gLS0tDQo+IHYxLT52MzogY2hhbmdlcyB3ZXJl
IGRvbmUgaW50ZXJuYWxseQ0KPiB2NDogYWRkZWQgc3BhY2UgYmVmb3JlIG9wZW4gcGFyZW50aGVz
aXMgJygnLCBmaXhlZCBjb2RlIGluZGVudA0KPiB2NTogY2hhbmdlZCB0aGUgd2F5IHRoZSBzY2hl
ZHVsZWQgZnVuY3Rpb24gdXBkYXRlcyB0aGUgbmV0ZGV2IGZyb20gew0KPiB0cnlsb2NrIC0+IHJl
c2NoZWR1bGUgfQ0KPiAgICAgZGVzaWduIHRvIG9uZSB0aGF0IGp1c3QgdGFrZXMgYW5kIHdhaXQg
Zm9yIHJ0bmxfbG9jayBsb2NrLiBJbnRyb2R1Y2VkIDMwbXMNCj4gZGVsYXkgaW4gc2NoZWR1bGlu
Zw0KPiAgICAgdG8gYWNjb3VudCBmb3Igc2NoZWR1bGluZyB0aGUgcmVzZXRzIGluIHF1aWNrIHN1
Y2Nlc3Npb24uDQo+IHY2OiBhZGRlZCBhIGd1YXJkIHRvIGlhdmZfZGVsYXllZF9zZXRfaW50ZXJy
dXB0X2NhcGFiaWxpdHkgZnVuY3Rpb24gdG8NCj4gcHJldmVudCB1cGRhdGluZyBhbiB1bnJlZ2lz
dGVyZWQgbmV0ZGV2Lg0KPiAgICAgUmVtb3ZlZCB0aGUgZGVsYXkgZnJvbSB0aGUgc2NoZWR1bGlu
ZyBhbmQgbW92ZWQgdGhlIHJ0bmwgdG8gb2J0YWluIHRoZQ0KPiBudW1iZXIgb2YgcXVldWVzIGFm
dGVyIGFjcXVpcmluZyB0aGUgbG9jaw0KPiB2NzogbWFkZSBpdCBjb21wYXRpYmxlIHdpdGggbmV0
LXF1ZXVlLCBubyBjaGFuZ2VzIGluIGxvZ2ljDQo+IHY4LT52OTogbm8gY2hhbmdlcw0KPiB2MTA6
IFJlcGxhY2VkIOKAmGlhdmY6IERvbid0IGxvY2sgcnRubF9sb2NrIHR3aWNlIGluIHJlc2V04oCZ
IHdpdGggIOKAmGlhdmY6IGZpeCBhDQo+IGRlYWRsb2NrIGNhdXNlZCBieSBydG5sIGFuZCBkcml2
ZXIncyBsb2NrIGNpcmN1bGFyIGRlcGVuZGVuY2llc+KAmA0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oICAgICAgICB8ICAgMiArDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jICAgfCAxMTQgKysrKysrKysrKysrKy0t
LS0tDQo+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jICAgfCAg
IDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmYuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQo+IGluZGV4
IGM1MWI5ZWQ0ZGMyOS4uZDhmOTgzM2NkMjg4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmYuaA0KPiBAQCAtMjU1LDYgKzI1NSw3IEBAIHN0cnVjdCBpYXZmX2FkYXB0
ZXIgew0KPiAgCXN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICp3cTsNCj4gIAlzdHJ1Y3Qgd29ya19z
dHJ1Y3QgcmVzZXRfdGFzazsNCj4gIAlzdHJ1Y3Qgd29ya19zdHJ1Y3QgYWRtaW5xX3Rhc2s7DQo+
ICsJc3RydWN0IHdvcmtfc3RydWN0IGZpbmlzaF9jb25maWc7DQo+ICAJc3RydWN0IGRlbGF5ZWRf
d29yayBjbGllbnRfdGFzazsNCj4gIAl3YWl0X3F1ZXVlX2hlYWRfdCBkb3duX3dhaXRxdWV1ZTsN
Cj4gIAl3YWl0X3F1ZXVlX2hlYWRfdCByZXNldF93YWl0cXVldWU7DQo+IEBAIC01MjEsNiArNTIy
LDcgQEAgaW50IGlhdmZfcHJvY2Vzc19jb25maWcoc3RydWN0IGlhdmZfYWRhcHRlcg0KPiAqYWRh
cHRlcik7ICBpbnQgaWF2Zl9wYXJzZV92Zl9yZXNvdXJjZV9tc2coc3RydWN0IGlhdmZfYWRhcHRl
ciAqYWRhcHRlcik7DQo+IHZvaWQgaWF2Zl9zY2hlZHVsZV9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFw
dGVyICphZGFwdGVyKTsgIHZvaWQNCj4gaWF2Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRzKHN0cnVj
dCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOw0KPiArdm9pZCBpYXZmX3NjaGVkdWxlX2ZpbmlzaF9j
b25maWcoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7DQo+ICB2b2lkIGlhdmZfcmVzZXQo
c3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7ICB2b2lkDQo+IGlhdmZfc2V0X2V0aHRvb2xf
b3BzKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYpOyAgdm9pZA0KPiBpYXZmX3VwZGF0ZV9zdGF0
cyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+IGluZGV4IDUwNTIxYmE4ZmJiMi4uNWNhYjA5
MzhhYTg3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9t
YWluLmMNCj4gQEAgLTE3MDUsMTAgKzE3MDUsMTAgQEAgc3RhdGljIGludCBpYXZmX3NldF9pbnRl
cnJ1cHRfY2FwYWJpbGl0eShzdHJ1Y3QNCj4gaWF2Zl9hZGFwdGVyICphZGFwdGVyKQ0KPiAgCQlh
ZGFwdGVyLT5tc2l4X2VudHJpZXNbdmVjdG9yXS5lbnRyeSA9IHZlY3RvcjsNCj4gDQo+ICAJZXJy
ID0gaWF2Zl9hY3F1aXJlX21zaXhfdmVjdG9ycyhhZGFwdGVyLCB2X2J1ZGdldCk7DQo+ICsJaWYg
KCFlcnIpDQo+ICsJCWlhdmZfc2NoZWR1bGVfZmluaXNoX2NvbmZpZyhhZGFwdGVyKTsNCj4gDQo+
ICBvdXQ6DQo+IC0JbmV0aWZfc2V0X3JlYWxfbnVtX3J4X3F1ZXVlcyhhZGFwdGVyLT5uZXRkZXYs
IHBhaXJzKTsNCj4gLQluZXRpZl9zZXRfcmVhbF9udW1fdHhfcXVldWVzKGFkYXB0ZXItPm5ldGRl
diwgcGFpcnMpOw0KPiAgCXJldHVybiBlcnI7DQo+ICB9DQo+IA0KPiBAQCAtMTkyNyw5ICsxOTI3
LDcgQEAgaW50IGlhdmZfaW5pdF9pbnRlcnJ1cHRfc2NoZW1lKHN0cnVjdCBpYXZmX2FkYXB0ZXIN
Cj4gKmFkYXB0ZXIpDQo+ICAJCWdvdG8gZXJyX2FsbG9jX3F1ZXVlczsNCj4gIAl9DQo+IA0KPiAt
CXJ0bmxfbG9jaygpOw0KPiAgCWVyciA9IGlhdmZfc2V0X2ludGVycnVwdF9jYXBhYmlsaXR5KGFk
YXB0ZXIpOw0KPiAtCXJ0bmxfdW5sb2NrKCk7DQo+ICAJaWYgKGVycikgew0KPiAgCQlkZXZfZXJy
KCZhZGFwdGVyLT5wZGV2LT5kZXYsDQo+ICAJCQkiVW5hYmxlIHRvIHNldHVwIGludGVycnVwdCBj
YXBhYmlsaXRpZXNcbiIpOyBAQCAtDQo+IDIwMTUsNiArMjAxMyw3OCBAQCBzdGF0aWMgaW50IGlh
dmZfcmVpbml0X2ludGVycnVwdF9zY2hlbWUoc3RydWN0DQo+IGlhdmZfYWRhcHRlciAqYWRhcHRl
ciwgYm9vbCBydW5uaQ0KPiAgCXJldHVybiBlcnI7DQo+ICB9DQo+IA0KPiArLyoqDQo+ICsgKiBp
YXZmX2ZpbmlzaF9jb25maWcgLSBkbyBhbGwgbmV0ZGV2IHdvcmsgdGhhdCBuZWVkcyBSVE5MDQo+
ICsgKiBAd29yazogb3VyIHdvcmtfc3RydWN0DQo+ICsgKg0KPiArICogRG8gd29yayB0aGF0IG5l
ZWRzIGJvdGggUlROTCBhbmQgY3JpdF9sb2NrLg0KPiArICoqLw0KPiArc3RhdGljIHZvaWQgaWF2
Zl9maW5pc2hfY29uZmlnKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykgew0KPiArCXN0cnVjdCBp
YXZmX2FkYXB0ZXIgKmFkYXB0ZXI7DQo+ICsJaW50IHBhaXJzLCBlcnI7DQo+ICsNCj4gKwlhZGFw
dGVyID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBpYXZmX2FkYXB0ZXIsIGZpbmlzaF9jb25m
aWcpOw0KPiArDQo+ICsJLyogQWx3YXlzIHRha2UgUlROTCBmaXJzdCB0byBwcmV2ZW50IGNpcmN1
bGFyIGxvY2sgZGVwZW5kZW5jeSAqLw0KPiArCXJ0bmxfbG9jaygpOw0KPiArCW11dGV4X2xvY2so
JmFkYXB0ZXItPmNyaXRfbG9jayk7DQo+ICsNCj4gKwlpZiAoKGFkYXB0ZXItPmZsYWdzICYgSUFW
Rl9GTEFHX1NFVFVQX05FVERFVl9GRUFUVVJFUykgJiYNCj4gKwkgICAgYWRhcHRlci0+bmV0ZGV2
X3JlZ2lzdGVyZWQgJiYNCj4gKwkgICAgIXRlc3RfYml0KF9fSUFWRl9JTl9SRU1PVkVfVEFTSywg
JmFkYXB0ZXItPmNyaXRfc2VjdGlvbikpIHsNCj4gKwkJbmV0ZGV2X3VwZGF0ZV9mZWF0dXJlcyhh
ZGFwdGVyLT5uZXRkZXYpOw0KPiArCQlhZGFwdGVyLT5mbGFncyAmPSB+SUFWRl9GTEFHX1NFVFVQ
X05FVERFVl9GRUFUVVJFUzsNCj4gKwl9DQo+ICsNCj4gKwlzd2l0Y2ggKGFkYXB0ZXItPnN0YXRl
KSB7DQo+ICsJY2FzZSBfX0lBVkZfRE9XTjoNCj4gKwkJaWYgKCFhZGFwdGVyLT5uZXRkZXZfcmVn
aXN0ZXJlZCkgew0KPiArCQkJZXJyID0gcmVnaXN0ZXJfbmV0ZGV2aWNlKGFkYXB0ZXItPm5ldGRl
dik7DQo+ICsJCQlpZiAoZXJyKSB7DQo+ICsJCQkJZGV2X2VycigmYWRhcHRlci0+cGRldi0+ZGV2
LA0KPiArCQkJCQkiVW5hYmxlIHRvIHJlZ2lzdGVyIG5ldGRldiAoJWQpLlxuIiwNCj4gZXJyKTsN
Cj4gKw0KPiArCQkJCS8qIGdvIGJhY2sgYW5kIHRyeSBhZ2Fpbi4qLw0KPiArCQkJCWlhdmZfZnJl
ZV9yc3MoYWRhcHRlcik7DQo+ICsJCQkJaWF2Zl9mcmVlX21pc2NfaXJxKGFkYXB0ZXIpOw0KPiAr
CQkJCWlhdmZfcmVzZXRfaW50ZXJydXB0X2NhcGFiaWxpdHkoYWRhcHRlcik7DQo+ICsJCQkJaWF2
Zl9jaGFuZ2Vfc3RhdGUoYWRhcHRlciwNCj4gKw0KPiBfX0lBVkZfSU5JVF9DT05GSUdfQURBUFRF
Uik7DQo+ICsJCQkJZ290byBvdXQ7DQo+ICsJCQl9DQo+ICsJCQlhZGFwdGVyLT5uZXRkZXZfcmVn
aXN0ZXJlZCA9IHRydWU7DQo+ICsJCX0NCj4gKw0KPiArCQkvKiBTZXQgdGhlIHJlYWwgbnVtYmVy
IG9mIHF1ZXVlcyB3aGVuIHJlc2V0IG9jY3VycyB3aGlsZQ0KPiArCQkgKiBzdGF0ZSA9PSBfX0lB
VkZfRE9XTg0KPiArCQkgKi8NCj4gKwkJZmFsbHRocm91Z2g7DQo+ICsJY2FzZSBfX0lBVkZfUlVO
TklORzoNCj4gKwkJcGFpcnMgPSBhZGFwdGVyLT5udW1fYWN0aXZlX3F1ZXVlczsNCj4gKwkJbmV0
aWZfc2V0X3JlYWxfbnVtX3J4X3F1ZXVlcyhhZGFwdGVyLT5uZXRkZXYsIHBhaXJzKTsNCj4gKwkJ
bmV0aWZfc2V0X3JlYWxfbnVtX3R4X3F1ZXVlcyhhZGFwdGVyLT5uZXRkZXYsIHBhaXJzKTsNCj4g
KwkJYnJlYWs7DQo+ICsNCj4gKwlkZWZhdWx0Og0KPiArCQlicmVhazsNCj4gKwl9DQo+ICsNCj4g
K291dDoNCj4gKwltdXRleF91bmxvY2soJmFkYXB0ZXItPmNyaXRfbG9jayk7DQo+ICsJcnRubF91
bmxvY2soKTsNCj4gK30NCj4gKw0KPiArLyoqDQo+ICsgKiBpYXZmX3NjaGVkdWxlX2ZpbmlzaF9j
b25maWcgLSBTZXQgdGhlIGZsYWdzIGFuZCBzY2hlZHVsZSBhIHJlc2V0DQo+ICtldmVudA0KPiAr
ICogQGFkYXB0ZXI6IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlDQo+ICsgKiovDQo+ICt2b2lkIGlh
dmZfc2NoZWR1bGVfZmluaXNoX2NvbmZpZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKSB7
DQo+ICsJaWYgKCF0ZXN0X2JpdChfX0lBVkZfSU5fUkVNT1ZFX1RBU0ssICZhZGFwdGVyLT5jcml0
X3NlY3Rpb24pKQ0KPiArCQlxdWV1ZV93b3JrKGFkYXB0ZXItPndxLCAmYWRhcHRlci0+ZmluaXNo
X2NvbmZpZyk7IH0NCj4gKw0KPiAgLyoqDQo+ICAgKiBpYXZmX3Byb2Nlc3NfYXFfY29tbWFuZCAt
IHByb2Nlc3MgYXFfcmVxdWlyZWQgZmxhZ3MNCj4gICAqIGFuZCBzZW5kcyBhcSBjb21tYW5kDQo+
IEBAIC0yNjUyLDIyICsyNzIyLDggQEAgc3RhdGljIHZvaWQgaWF2Zl9pbml0X2NvbmZpZ19hZGFw
dGVyKHN0cnVjdA0KPiBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+IA0KPiAgCW5ldGlmX2NhcnJp
ZXJfb2ZmKG5ldGRldik7DQo+ICAJYWRhcHRlci0+bGlua191cCA9IGZhbHNlOw0KPiAtDQo+IC0J
Lyogc2V0IHRoZSBzZW1hcGhvcmUgdG8gcHJldmVudCBhbnkgY2FsbGJhY2tzIGFmdGVyIGRldmlj
ZQ0KPiByZWdpc3RyYXRpb24NCj4gLQkgKiB1cCB0byB0aW1lIHdoZW4gc3RhdGUgb2YgZHJpdmVy
IHdpbGwgYmUgc2V0IHRvIF9fSUFWRl9ET1dODQo+IC0JICovDQo+IC0JcnRubF9sb2NrKCk7DQo+
IC0JaWYgKCFhZGFwdGVyLT5uZXRkZXZfcmVnaXN0ZXJlZCkgew0KPiAtCQllcnIgPSByZWdpc3Rl
cl9uZXRkZXZpY2UobmV0ZGV2KTsNCj4gLQkJaWYgKGVycikgew0KPiAtCQkJcnRubF91bmxvY2so
KTsNCj4gLQkJCWdvdG8gZXJyX3JlZ2lzdGVyOw0KPiAtCQl9DQo+IC0JfQ0KPiAtDQo+IC0JYWRh
cHRlci0+bmV0ZGV2X3JlZ2lzdGVyZWQgPSB0cnVlOw0KPiAtDQo+ICAJbmV0aWZfdHhfc3RvcF9h
bGxfcXVldWVzKG5ldGRldik7DQo+ICsNCj4gIAlpZiAoQ0xJRU5UX0FMTE9XRUQoYWRhcHRlcikp
IHsNCj4gIAkJZXJyID0gaWF2Zl9sYW5fYWRkX2RldmljZShhZGFwdGVyKTsNCj4gIAkJaWYgKGVy
cikNCj4gQEAgLTI2ODAsNyArMjczNiw2IEBAIHN0YXRpYyB2b2lkIGlhdmZfaW5pdF9jb25maWdf
YWRhcHRlcihzdHJ1Y3QNCj4gaWF2Zl9hZGFwdGVyICphZGFwdGVyKQ0KPiANCj4gIAlpYXZmX2No
YW5nZV9zdGF0ZShhZGFwdGVyLCBfX0lBVkZfRE9XTik7DQo+ICAJc2V0X2JpdChfX0lBVkZfVlNJ
X0RPV04sIGFkYXB0ZXItPnZzaS5zdGF0ZSk7DQo+IC0JcnRubF91bmxvY2soKTsNCj4gDQo+ICAJ
aWF2Zl9taXNjX2lycV9lbmFibGUoYWRhcHRlcik7DQo+ICAJd2FrZV91cCgmYWRhcHRlci0+ZG93
bl93YWl0cXVldWUpOw0KPiBAQCAtMjcwMCwxMCArMjc1NSwxMSBAQCBzdGF0aWMgdm9pZCBpYXZm
X2luaXRfY29uZmlnX2FkYXB0ZXIoc3RydWN0DQo+IGlhdmZfYWRhcHRlciAqYWRhcHRlcikNCj4g
IAkJLyogcmVxdWVzdCBpbml0aWFsIFZMQU4gb2ZmbG9hZCBzZXR0aW5ncyAqLw0KPiAgCQlpYXZm
X3NldF92bGFuX29mZmxvYWRfZmVhdHVyZXMoYWRhcHRlciwgMCwgbmV0ZGV2LQ0KPiA+ZmVhdHVy
ZXMpOw0KPiANCj4gKwlpYXZmX3NjaGVkdWxlX2ZpbmlzaF9jb25maWcoYWRhcHRlcik7DQo+ICAJ
cmV0dXJuOw0KPiArDQo+ICBlcnJfbWVtOg0KPiAgCWlhdmZfZnJlZV9yc3MoYWRhcHRlcik7DQo+
IC1lcnJfcmVnaXN0ZXI6DQo+ICAJaWF2Zl9mcmVlX21pc2NfaXJxKGFkYXB0ZXIpOw0KPiAgZXJy
X3N3X2luaXQ6DQo+ICAJaWF2Zl9yZXNldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eShhZGFwdGVyKTsN
Cj4gQEAgLTI3MzAsMTUgKzI3ODYsNiBAQCBzdGF0aWMgdm9pZCBpYXZmX3dhdGNoZG9nX3Rhc2so
c3RydWN0IHdvcmtfc3RydWN0DQo+ICp3b3JrKQ0KPiAgCQlnb3RvIHJlc3RhcnRfd2F0Y2hkb2c7
DQo+ICAJfQ0KPiANCj4gLQlpZiAoKGFkYXB0ZXItPmZsYWdzICYgSUFWRl9GTEFHX1NFVFVQX05F
VERFVl9GRUFUVVJFUykgJiYNCj4gLQkgICAgYWRhcHRlci0+bmV0ZGV2X3JlZ2lzdGVyZWQgJiYN
Cj4gLQkgICAgIXRlc3RfYml0KF9fSUFWRl9JTl9SRU1PVkVfVEFTSywgJmFkYXB0ZXItPmNyaXRf
c2VjdGlvbikgJiYNCj4gLQkgICAgcnRubF90cnlsb2NrKCkpIHsNCj4gLQkJbmV0ZGV2X3VwZGF0
ZV9mZWF0dXJlcyhhZGFwdGVyLT5uZXRkZXYpOw0KPiAtCQlydG5sX3VubG9jaygpOw0KPiAtCQlh
ZGFwdGVyLT5mbGFncyAmPSB+SUFWRl9GTEFHX1NFVFVQX05FVERFVl9GRUFUVVJFUzsNCj4gLQl9
DQo+IC0NCj4gIAlpZiAoYWRhcHRlci0+ZmxhZ3MgJiBJQVZGX0ZMQUdfUEZfQ09NTVNfRkFJTEVE
KQ0KPiAgCQlpYXZmX2NoYW5nZV9zdGF0ZShhZGFwdGVyLCBfX0lBVkZfQ09NTV9GQUlMRUQpOw0K
PiANCj4gQEAgLTQ5NTcsNiArNTAwNCw3IEBAIHN0YXRpYyBpbnQgaWF2Zl9wcm9iZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwgY29uc3QNCj4gc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gDQo+
ICAJSU5JVF9XT1JLKCZhZGFwdGVyLT5yZXNldF90YXNrLCBpYXZmX3Jlc2V0X3Rhc2spOw0KPiAg
CUlOSVRfV09SSygmYWRhcHRlci0+YWRtaW5xX3Rhc2ssIGlhdmZfYWRtaW5xX3Rhc2spOw0KPiAr
CUlOSVRfV09SSygmYWRhcHRlci0+ZmluaXNoX2NvbmZpZywgaWF2Zl9maW5pc2hfY29uZmlnKTsN
Cj4gIAlJTklUX0RFTEFZRURfV09SSygmYWRhcHRlci0+d2F0Y2hkb2dfdGFzaywNCj4gaWF2Zl93
YXRjaGRvZ190YXNrKTsNCj4gIAlJTklUX0RFTEFZRURfV09SSygmYWRhcHRlci0+Y2xpZW50X3Rh
c2ssIGlhdmZfY2xpZW50X3Rhc2spOw0KPiAgCXF1ZXVlX2RlbGF5ZWRfd29yayhhZGFwdGVyLT53
cSwgJmFkYXB0ZXItPndhdGNoZG9nX3Rhc2ssDQo+IEBAIC01MDk5LDEzICs1MTQ3LDE1IEBAIHN0
YXRpYyB2b2lkIGlhdmZfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQ0KPiAgCQl1c2xlZXBf
cmFuZ2UoNTAwLCAxMDAwKTsNCj4gIAl9DQo+ICAJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZh
ZGFwdGVyLT53YXRjaGRvZ190YXNrKTsNCj4gKwljYW5jZWxfd29ya19zeW5jKCZhZGFwdGVyLT5m
aW5pc2hfY29uZmlnKTsNCj4gDQo+ICsJcnRubF9sb2NrKCk7DQo+ICAJaWYgKGFkYXB0ZXItPm5l
dGRldl9yZWdpc3RlcmVkKSB7DQo+IC0JCXJ0bmxfbG9jaygpOw0KPiAgCQl1bnJlZ2lzdGVyX25l
dGRldmljZShuZXRkZXYpOw0KPiAgCQlhZGFwdGVyLT5uZXRkZXZfcmVnaXN0ZXJlZCA9IGZhbHNl
Ow0KPiAtCQlydG5sX3VubG9jaygpOw0KPiAgCX0NCj4gKwlydG5sX3VubG9jaygpOw0KPiArDQo+
ICAJaWYgKENMSUVOVF9BTExPV0VEKGFkYXB0ZXIpKSB7DQo+ICAJCWVyciA9IGlhdmZfbGFuX2Rl
bF9kZXZpY2UoYWRhcHRlcik7DQo+ICAJCWlmIChlcnIpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jDQo+IGluZGV4IDFiYWI4OTZhYWY0
MC4uMDczYWMyOWVkODRjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiBAQCAtMjIzNyw2ICsyMjM3LDcgQEAgdm9pZCBpYXZm
X3ZpcnRjaG5sX2NvbXBsZXRpb24oc3RydWN0IGlhdmZfYWRhcHRlcg0KPiAqYWRhcHRlciwNCj4g
DQo+ICAJCWlhdmZfcHJvY2Vzc19jb25maWcoYWRhcHRlcik7DQo+ICAJCWFkYXB0ZXItPmZsYWdz
IHw9IElBVkZfRkxBR19TRVRVUF9ORVRERVZfRkVBVFVSRVM7DQo+ICsJCWlhdmZfc2NoZWR1bGVf
ZmluaXNoX2NvbmZpZyhhZGFwdGVyKTsNCj4gDQo+ICAJCWlhdmZfc2V0X3F1ZXVlX3ZsYW5fdGFn
X2xvYyhhZGFwdGVyKTsNCj4gDQo+IC0tDQo+IDIuMzEuMQ0KPiANCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdA0KPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPiBodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCg0KDQpUZXN0ZWQtYnk6
IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
