Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C57C80C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 10:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0256E82907;
	Fri, 13 Oct 2023 08:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0256E82907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697187146;
	bh=owypTnsG6M50O/08SZ0fj/UmIpzjFsKfUGbf635yZG0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7nkp3K2XsoyVLZ/5qmR8fyGn1VPN2TdsgoYSbtVobNmFmfDe3sdUnKEiOLUiueSIF
	 qsh9vdPUThu73GtexXSo5oA5TdYwUIIyT1hol8wWbS67LaF3n5fO/CF1OclJAMnGEh
	 bt2kOTyEmR5Am3QH06h/K0pMRA48S/uY12Abb9IfMlp23jEA0zdTjYLNS3DirNjzpO
	 g9UikNT4jt+vqspCseDaJxOh/BW8Ze/3L1VJ0HX1JwojfzxltoNCoIe5M3ySukF7eA
	 jI8/hhJhB3FhGq7FCT4z9T7w1CwJzUcE0Ett14Q8GaxqdYA0a82zEbU+y+h2jCzHiU
	 hTuuwFsk9ISvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcA8oLm3bgyt; Fri, 13 Oct 2023 08:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F17DD827AA;
	Fri, 13 Oct 2023 08:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F17DD827AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5E2C1BF348
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 08:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AA1B82861
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 08:52:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA1B82861
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3K98QzAOPkw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 08:52:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DE62827AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 08:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DE62827AA
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="387986441"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="387986441"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 01:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="748276342"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="748276342"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 01:52:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 01:52:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 01:52:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 01:52:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i8HbhW881202x5LED1YP2K8AAEq2TTDbc0ITE1dMc6HKk0gYf9PnLY87dSS91OnDcQE68RjILXWCrfSTkLTetv9OqptYhEzlwx+R07DalVgGgHyEs190JgDqHC9Jwxzo7kUsFbbMbYv0X+jrNPh6Qih5XvmeOkt0s3z0XRCX2HAc92Nz4oiXFh/4FO8U1sURl9BJSZFdWFEQ4nHnTuRwsuB0kLgO/wTy15nZOEz6gdbzubpcwSRq+MO5GI5gXDWkliuUr8zZOTHHImHhuNI7SeQwRRcIxt2c8oShXbx/KGHyOMSe+rpHBwsAwI4aG+WL2IKBKQjAoN8cFKdPPk2vOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fK5eXXK6p+Z4YnvP+2JngVWnnxtdIZsdzHRs9WaWf+A=;
 b=A1+0UXrHZTAVSBqEJAa68pcQbxW0RfqAA8Z8lGkBsPDMfuHgn5iFcys1VQ61Xi0KHaQyQgleZAFM6sSBknKw14jc1EHtRYFC40myzqTGg6LJwlXNuzQBL5LC1d+bq2NAqbYoZXqH4E6kxXmIVbJusn0ml6jVQOHt4Yfj2ZN3qL7kTGgda0VIB7vDnbAER9Yp8lUbrilSSIPzswQ8gFizqlVJwDNsuxGnvKw5R/mAqqGdIp45yudIK+F+ifomvrAudgGQSrh/0d8GVlq8UWDAhvvADuEQwQdzGJjdTZkXXspoMI8cC+4YI+P71PsE17MqgRTyVl7aOD24Qd8BMwAtKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 08:52:08 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::7116:9866:8367:95b4]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::7116:9866:8367:95b4%3]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 08:52:07 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Cao, Yahui" <yahui.cao@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v3 13/13] vfio/ice: Implement vfio_pci driver
 for E800 devices
Thread-Index: AQHZ6flqZD1UOTQKXU63YTaA4XkWubBHjNTw
Date: Fri, 13 Oct 2023 08:52:07 +0000
Message-ID: <BN9PR11MB52763EABE64389B5FBBBFFC68CD2A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
 <20230918062546.40419-14-yahui.cao@intel.com>
In-Reply-To: <20230918062546.40419-14-yahui.cao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|BY1PR11MB7983:EE_
x-ms-office365-filtering-correlation-id: 53f80e08-c18e-4ce8-8dd0-08dbcbc9ae24
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rkgyAn3fix+Bxxr+fN3UEzp/e9A2p5VETnUY1Hxu8ULSjvW5wlLIVqrKD+nQzem8/xIDSdBhQ56a/E8dMo6Kr3Bkc+UV1mqSQArORPBqE48R/unVZIfVCHxy22NI8rA1VBzqfBStntd/EqZkC/cLL03QPuESkcF7JCZn6WO3YfVpKD4yF727SISt5XRX2Ud2mAUK4AC4mdVgAwTqgN8nvtwr1kuXn5RlYVXBCUxtXUxz7QVJrtRmVxODYtb5fHJYO4h3p7I4yn+W4FgGySunIKinOJPIUuiyw8I8zxFjv3ojI8ncuE/enrdVPT/4/+S9eSL7NgfPMsBubSLpsAeL9XXAy9jZXyJAs4DOSj9dMMT/DdB7/7TdZeXfoVdqDNZ1Xbz70A7Ktc7AP3qK50xigMo5d0VgL94Fw07/TsFc40FEP8c+KsYezvFewqSbQ6ZBUwZbv5Oy+AuPm4Bs0/jxwKqr30NddePwkPU9mtBdOYGkVjKpW6d3sVkEB19nBp4Xm3wx7D5tE2BDmn5AZrOYWN1tLOBmNYKfkNgsROjvU86PvF0mbyzzyO5niGjY+ypNDHKzJJnHOSoseGIB8yyQJhXfrR22hctm64fyuuKZaphs8x2yrcdYlw6EP8tRKfM8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(396003)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(55016003)(122000001)(9686003)(38100700002)(38070700005)(26005)(107886003)(82960400001)(478600001)(5660300002)(8936002)(4326008)(52536014)(8676002)(86362001)(33656002)(7416002)(2906002)(4744005)(316002)(54906003)(64756008)(66556008)(41300700001)(66446008)(66476007)(76116006)(66946007)(71200400001)(110136005)(6506007)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZklnRGIoPbWMPPnusIcZG7iq6dh4Ro6AjHCwoqs/Y4yum5K8CTQJLeiN+KTL?=
 =?us-ascii?Q?fWo0Un7+Y+EFQz18SZi9XEr4lsMlTEoYPvbaASazrXZ/nv6zPB8MkPrgzhrM?=
 =?us-ascii?Q?pupS6bHFU0MjNSRd7jhALeXbP2sMcN4A6R20tZjzlCIaPcyPBoJOD5n6jR0n?=
 =?us-ascii?Q?GryhiBEQVxbJgoo9/TZqHoSor8EGu9cIPnUR/NP1UTTjLOy35obPRYOt8nox?=
 =?us-ascii?Q?gaRfpZGG6nkAOXZrT5h9CWHE65FvVyQV51A10RQgTjkh1uvm0VJJltTm2c3+?=
 =?us-ascii?Q?s2DWl8Ggikmo5iBG9tK2Nz8aF6y7gREdkEDR38LBvN7KizoJ4mYBmr5mEY0N?=
 =?us-ascii?Q?bdafS1NOtDgyY5PuKAvnqJex11nTfQNhhzrDXLCsHvrbIIs7xgFGU9AAssK2?=
 =?us-ascii?Q?TDt3mN7TFBMmX3ymfgJNNWMIZZ7x686YV1kGAnqEfzJ7eP7V0cLC9I5VGVx1?=
 =?us-ascii?Q?H7EhpYGn2Dbm7vqcqgdaC7EAXU1xC57XVkotxga37UZplRuepKKezZHxVp47?=
 =?us-ascii?Q?LdUwQDzOxiS5IpExAY/b5gfud9GBkWSEBGUxIXMbsCsVxFqWaejixn7AkrzN?=
 =?us-ascii?Q?7nOsga0z0Vs08XXodGncMBdqQxXcDGxHnVRY5tDV7OpFaL0g4NTbtA96FeWf?=
 =?us-ascii?Q?ve3rGfMZrjIMc8ZBBeFqeU5Hj6i2zDKZSJ7K/NZe+M4nMKJAcOwdUNaJlrZC?=
 =?us-ascii?Q?1DzabxMfhT2uH/TMh1nNBimBguvFgbsahyZrzh7i4gq9CtpXuAaWhtFVNYJi?=
 =?us-ascii?Q?tArRNwWaGuD0uQh/RvifgwxQDxRNhW8te41sqeOJdfdoM26s+bujkuMsVcrG?=
 =?us-ascii?Q?nMelHuIRpoilPKrxCBS5dUtymGMVjn4sQ6pQy83QPCCrKxm39MizXY4Ptv19?=
 =?us-ascii?Q?DD8GxFTEWMsPylkiPFJ4LOBHiPN2SQ01KqmzAbmW91zqdgX1mejXv6TcrpMy?=
 =?us-ascii?Q?Sb5X0R3KG83lbXbSacAAwt++5rsmjOa+rnrPa6ru8JOqN1/5+hrAQZpB8a1R?=
 =?us-ascii?Q?Z5uZzhJ0B+Ci3yzKK04I7mZKKvy4jWgOhI4B53o8N/l/2TKc0Tj/GI+q7+z/?=
 =?us-ascii?Q?3qI4Yw6NmWdOigRoNh75nKrKtZ2deBsKD6+6zJjvE2SOUJNNrrvxTjDOgZk9?=
 =?us-ascii?Q?UWCZ5rx72iCBoZfdV46XvNw3OOB98T1Gg8VKXmBqz5QsnFl720mH6xlIHGk5?=
 =?us-ascii?Q?pgeL6Gu6YmfVygKfMDtxVW3jbxRv8bf9PPyQLdHBhept5TpcjJTjm4ZuwhMt?=
 =?us-ascii?Q?5oZ5DI5scFWnzVZDsNWQ+a1ZlUQpSlzKWE580AiLHmRNtu8NNcJtw3vpQY9Q?=
 =?us-ascii?Q?btxhuA9nFtnXVyO00sbfYSTvZn4jysNk0gqR/XIxNNsXttdghk3U/XW0o2pQ?=
 =?us-ascii?Q?vz8mzMVX8v/w5N9fbDhyqnmQDEsGxzgT+HdYXJ0Tliu6sMxlstQ50+yEdOU1?=
 =?us-ascii?Q?RVbLg8dgQYYlV6syF12P0hnhCPYxfWfnrKCEGdLlTzYJMUtb6/Fsz2pvOkzi?=
 =?us-ascii?Q?eNoeBhNCxfQ+uEZ6ZFU3lOcQdx2reDEhemi/RY5EY9nJedj08ou2e4XNbQ0c?=
 =?us-ascii?Q?Sg3ufZJiaz7sndd39lEk1W4Nk8CJ2r3szFU9KwNj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53f80e08-c18e-4ce8-8dd0-08dbcbc9ae24
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 08:52:07.3425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kLZWwVxqYVq2LuT4sh/7FhBdQ2voxDS9UnTgVBtuE4KudYc4PEO9IAdelgn9+wScoAQOKsMS7MVavVTrLgNSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697187138; x=1728723138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yge2ITZY7OxouufajCyPT+FnG2nLE0hNskpB/ndy1dQ=;
 b=R9ilvUjyZgdOMka4BCSg14pxt1v3IDXokTVRgKA8MgfEKbFpBBnBLJHf
 0WHLgrwH3QfG60gx4R0/AD2iw2x1ZQ+w2CBsaIGVypwKsHuVsd81lGs32
 fWfLsXeLdi+p3qwo5oYPsrWm7bH6ut+4uuAYYhVSEWGAKHLCTf92N46KX
 PsBP7K9VzEX+ijmG8aDwBYn/7Vq7rEpKW1HF1TtlryABtdDeHUkdHOqKJ
 T6cojsQNEFnOsjo7RdxyztMxiKwd3rxqcRbBRXGx5hhGKL/EFzfKNZIcW
 1WLYdYotECua8DvBFpzFm5BbDPstDrt7Bjvdrx157Evw9H1XO0tnt2dsc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R9ilvUjy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/13] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: "yishaih@nvidia.com" <yishaih@nvidia.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>, "Chittim, 
 Madhu" <madhu.chittim@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Cao, Yahui <yahui.cao@intel.com>
> Sent: Monday, September 18, 2023 2:26 PM
>
> +static struct file *
> +ice_vfio_pci_step_device_state_locked(struct ice_vfio_pci_core_device
> *ice_vdev,
> +				      u32 new, u32 final)
> +{
> +	u32 cur = ice_vdev->mig_state;
> +	int ret;
> +
> +	if (cur == VFIO_DEVICE_STATE_RUNNING && new ==
> VFIO_DEVICE_STATE_RUNNING_P2P) {
> +		ice_migration_suspend_dev(ice_vdev->pf, ice_vdev->vf_id);
> +		return NULL;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_RUNNING_P2P && new ==
> VFIO_DEVICE_STATE_STOP)
> +		return NULL;
> +

Jason, above is one open which your clarification is appreciated.

From my talk with Yahui this device can drain/stop outgoing
traffic but has no interface to stop incoming request.

is it OK to do nothing for RUNNING_P2P->STOP transition like above?


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
