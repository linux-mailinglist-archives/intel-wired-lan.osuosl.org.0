Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EAC767B57
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 03:48:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 067FB40236;
	Sat, 29 Jul 2023 01:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 067FB40236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690595297;
	bh=NOnkxCXD4xI48maq/X+XmGVNVJC61u2txyaRDo/uIBk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jzd+xb3qwylXrf1Hc1B8h26ATMn5tXSxaPzaAgD0VgebksdyAZahCm/roMPNVC5KW
	 6rtYs7RcfFxNIhJ2WIv5/F96jEscnlLv7T62SsD36Ykl1GMourK4Ucee9qZDxTwoj5
	 U0LM6Mpwd23QxtKehjkGUWHhPQbE2+0RvOEwkgywOfFhFZacp4TrZ/YeC8YwFiFlfP
	 5Z0aUOwufUTcA31bLkizVpjoUe8F+HjkoQC+HYTUwOVEYFiWQJu6fPCrs7ZDInfY1N
	 cLSYekcb0ES1PJCl492koRS8jypG97LsAiQKtRuowUKOa+MMxgUUxkROzAXxp4/78+
	 wF9iWZvAXjD0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gvLgqMHdoRHG; Sat, 29 Jul 2023 01:48:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74A05410A1;
	Sat, 29 Jul 2023 01:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74A05410A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0691BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 01:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CFEA83F9F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 01:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CFEA83F9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVWrmojFNrFA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 01:48:06 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D5D683BE2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 01:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D5D683BE2
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="435010414"
X-IronPort-AV: E=Sophos;i="6.01,239,1684825200"; d="scan'208";a="435010414"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 18:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="762764928"
X-IronPort-AV: E=Sophos;i="6.01,239,1684825200"; d="scan'208";a="762764928"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 28 Jul 2023 18:48:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 18:48:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 18:47:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 28 Jul 2023 18:47:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 28 Jul 2023 18:47:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/P+c7U8H5MTjMz9u4VW5iENiICWzsJlXRWMBXoPo1FotNQOZomwpmTzTmvjJdSjEi2rp4J4SWAh8o0Bs+KmTzqo19Paa3EyacCS2Pi/IkcMQcLuSgyaWDACoJIGttJ9+8r2nehC2QzLyDp1nOmWwGRCwTvugexqPU5YZssVvAM232Brym1RnJahesimBaKS+Is2GWJJqHhc5O2H2Kbiu728RgF3KNLrSEGMekcd7brvvfeXX8fkO4qs0BmSNBTzfgBV9Q0LSEWhi9h5xAImHwGLlZp3PsjtX3/5RrpIuWv8SaChkOkdmFTdj1gHEfncl1M6N6FT1ZqLlT5FQiiOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLsXdD9d8tnfJPpTgl6VwDynApvI4TXaG0w5ytBUtwk=;
 b=DEN3l/Ts6HV3571LE6tZBUtuXrvaF+Z3Nf0fj40TqRWg8rodKBfjNXYqDUGyqK6ubkozPXaxZpkVgAiITQXPnXIWhKc2K6DreQmEFRyqEmkLDP2UYDkq4pQ/pMghcehgmKSlTjQfcLemIYwHuRz2JU0dPam7hC/8EAetH29pkVCEURADHnd5h/2e7gxrV34WAaqlZAvDzJsHgfjOSa79HMEm4Ice74Ctr39nFntJzwqtGnU3qykhqU84QCURPL6ZtxUHBYEcST8otbzzo2nZFoDj7FDXTnNsjVqNKWlk+rc3KpdqKoNpSzUF3pTY8W0YPxLBW1CgK+voBcFlNBnCWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Sat, 29 Jul
 2023 01:47:41 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe%7]) with mapi id 15.20.6631.026; Sat, 29 Jul 2023
 01:47:41 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for
 multiple in-flight TX timestamps
Thread-Index: AQHZwbJNbCnuXsl5EEWF15b0NZ+cT6/P+XuA
Date: Sat, 29 Jul 2023 01:47:41 +0000
Message-ID: <SJ1PR11MB618006A64E9AC9B5E0DDFE4FB807A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230729001800.227269-1-vinicius.gomes@intel.com>
In-Reply-To: <20230729001800.227269-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA2PR11MB5067:EE_
x-ms-office365-filtering-correlation-id: 4b0141df-6454-43b2-e5cf-08db8fd5cbdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fiZpg6kFUyKQEihG/3XLHSZaZe5ngIpCrXfd7tmfvr7KLUlpNz1iXqpG7opD3MmYS0+tvUuqJWV/bKyBLtF4rp0JbaPcJ0scp8R5b5wcYQ3uYle43clgNIEoGnjaSoxd+kdwcp9waMLVRSMIHPVSAWiTIKcIbI+6DjwXo/xKlXp72I4yDn95r05EFjkoHGkOYwI6thzvillh9g+4Bv4FRjY3hjwOE8pC87gk4d1NTSwgInPrSfgT51CEUUtp/j8R7wJ7VGyqtqwkNSVFM2MNKoFZhzhZm+/ag9DQ1K7wfQAAHyFr/5s7qa+2fU0/9F9DiuwBIC825Gh85nXc/u1W2iO3zG9Y9/KOHcm/AQF66MTFuT8VABEDCD9/+0JPDdojOe00KEcAw6wEbLGmd2pO5HJkT2eP+0VQY/e1ut3Hz+yV3UDtRg6j3GPPK/NGT+h940ANi7dRVeIV5nNM+yQ8er4JOkXgYL3SFUOvq9Ec6N7fsWSBqaftEZ4SbCfPQG2XE0y7mHC+GcEafkZqs6EtaprngB/GqX/49C9gB3zYuQX1wnFCUnfrW7Ro2C7JiDgtqXy/x7lRNTs5RMnDEB6IIjfLA6D2KNbqmcj6FFxyc82wHiUC9SptXo/v3Jwy45D8kEtsWWixNQoNL+YCy5IO5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199021)(83380400001)(54906003)(52536014)(82960400001)(2906002)(110136005)(30864003)(7696005)(38070700005)(55016003)(53546011)(71200400001)(26005)(9686003)(86362001)(966005)(478600001)(38100700002)(5660300002)(41300700001)(66446008)(316002)(186003)(66946007)(66556008)(66476007)(76116006)(64756008)(6506007)(107886003)(122000001)(33656002)(8676002)(8936002)(4326008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dNN2zwe4qxZxHyTSwG5+a6tAWyzdxj4GAT/wiebwOzlilemTainAheHDLYLr?=
 =?us-ascii?Q?bPDqMBHHoSrBhwPi+QHJ1OEuNr7CPmwRCxItBJWr6ISlch+1qGUFrTctnVSO?=
 =?us-ascii?Q?Mq0jkcyGSdOrXJiveSeHC0sDjOIkm4QtrA195LrhgsfSbJCXWdgUWtjqo74d?=
 =?us-ascii?Q?i0DHtNlfVWpm8nONoUjXCyFKPzLoKVmguQGSUqO3W6NNmtrXpnZcSTbgL41/?=
 =?us-ascii?Q?Mf4viX+J5W0RF3XPmWzjvGHK9EYS8Udr6a2lV0KpKPXkxPkIBBbjAR/Se+7D?=
 =?us-ascii?Q?P9Wni2mPXInfwqXr420PS4zTHb7q/voGUry9j/rpK3DiK02k9TXkU7i4pr3O?=
 =?us-ascii?Q?ZjGwlmpLwupDcIYwf5HnyewG10BMgFoFC7adzZQD38QoPDimHBs2ULsN53RH?=
 =?us-ascii?Q?eukBIztvjGSqo0RO0Hlp9CmWaMzd6da/uNvk5/sbnjxgtr6pfDN+mk82hk9X?=
 =?us-ascii?Q?U3SBVA7zciF8cySO7sRfkI3720e5jqeX5Fy0Rk+el11lvT6oPeVv3g6Awgj9?=
 =?us-ascii?Q?R6XQAe5lB2D5T4J81C8jvalXfNOCDdqrby50Wzpk5qEAAz+b7gxAJSz+UqUN?=
 =?us-ascii?Q?hh4wd5UvHcXyMXLljwuO60okGlC4eYBKLT2YMAG//MoF9Egh4ceoKaipTS9q?=
 =?us-ascii?Q?mQhsayIW9D9sftwuIZw857J6n1rim03Z3yMce/WXcHHdz/bwnGuT8JUzVc0c?=
 =?us-ascii?Q?MNZfbOpAkPN+1qjTd0QfaxxhdlNN0nh3kv0S/NvQQGI2s3r8nfFHz90TQ/tU?=
 =?us-ascii?Q?d9eQakjs7CIIuCD6PUoSL8Hs+w9JXU837UpDQR8EGFCMVZ84KxWYRFpYwZmf?=
 =?us-ascii?Q?h95vJ2S06wuLMoM0epW2sOxj3790VjccM/OMkxiJXvhUDqynHNzR7Z4ZIAm/?=
 =?us-ascii?Q?YbqbYL2xTJ3rabo/dYVANfaEL5QgFAI0tTs3S3/UmfYWUpF/8umhHmT7bAmA?=
 =?us-ascii?Q?FrADwDVxonASr1Yb61PCTtOOObz2g1y5eJ8xlp1awHGvBA6BtIA+AXdiDq6F?=
 =?us-ascii?Q?swcHnYHVyQYz8FA4C3TnyqRZoCuo3Gr8P+4aBIRjLzr6buxQ6QuTwSCOnHY4?=
 =?us-ascii?Q?pF/Wm1atu9D4CLljGxKp14I2q4C4CrpEQqOGRKuTBJwjzAW+g2nxa9ECeXyb?=
 =?us-ascii?Q?iJTVudve1Yn4HvIe8zk9GN8sLObfW95raCYzOsYhdJVpwc+l90geeuVDsPHi?=
 =?us-ascii?Q?oVkgxshnGxw5Gy1BNN5aVl6P1rHZHMGMTa1/E0hqeHtYbb9Y+LsSVPwoeVxy?=
 =?us-ascii?Q?Fdj/yXISrjpXh5mRZ71XUh5NhfMTy9XtJoEHw6eOdYBLCmL3Ui2PVlU3dIo2?=
 =?us-ascii?Q?l80w3RcDEGVcNUEwwPL42tnNXqxZJtLPw9xQcnf4GNwqyD6E1g0a6JQtu3B0?=
 =?us-ascii?Q?lkG4sieqqv3cTeVHUEuoCJcXJ1R7H9+gHqJCiOqsAMMiHpfRKYHEVxqGcvzf?=
 =?us-ascii?Q?NlJiCIcWsEMMqyQD2simImyQ+bYvejSihLiCFbZvg8SfNkapTPsh8tOxbEvu?=
 =?us-ascii?Q?AeGezkhhxKXpmh6xe0uE5n7rt1h2Oyjjdg0JHIP3w9U+A59vv2OeG8K+XSck?=
 =?us-ascii?Q?cx17XGv4f3tYW3oGV5pHyc37eGAk2z1luH7FXHd11ynfaFp0wUFtFH0Lrj1D?=
 =?us-ascii?Q?L4jGaYYCKEBtS6N8y2Thbu8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0141df-6454-43b2-e5cf-08db8fd5cbdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2023 01:47:41.3983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ScKp/DDykJPlQNlTA8xvr/zV8fUn/wI+DT4jJEeYsTEqiBE1AjNPIh7wc6JHgLMh2C4Iof+/gs6sadE4YTPg1c1UV0HuAR4iuNH+fbr/zrZkqGDvgaEG8TZ+OGTmst0H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690595286; x=1722131286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OjTgw6qqe/8eZqCI6Mpg3zHfMZQktu+spJZGN1T5BiU=;
 b=m8dFTyeX05MzPOynitqa6PA63T+4BPTSkT3mIhABVIlzRsqMsO5u3XoA
 XONYeRIAWR5LNt7ahBwdRLAuh5b972FLUwvP3lUslVg2ahxyEisnuG2K3
 RsK51dIo+s2ZN/a4PuMth3ujNVdlkBmDtLJor+BSiVy7V3xP6Ow05QofH
 8lk0NIxucplNFaQuzz28Vnr/16B7oXdzCv+OZH3hQ4m71AOduwtqJwNaV
 mBIf9D1Gkny+die3kHDJN/AF5ei3I7N2zB+F0Ux/sYuXyGk4ZWYXPE7SW
 ed0EVNvtVukTQbLoSupRbFBxa8o1BNdIGKGb6v9UZsD282f6bsa7e64Ob
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m8dFTyeX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks Vinicius for the patch.

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Saturday, 29 July, 2023 8:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: vladimir.oltean@nxp.com; richardcochran@gmail.com;
> kurt@linutronix.de; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for multiple
> in-flight TX timestamps
> 
> Add support for using the four sets of timestamping registers that
> i225/i226 have available for TX.
> 
> In some workloads, where multiple applications request hardware
> transmission timestamps, it was possible that some of those requests were
> denied because the only in use register was already occupied.
> 
> This is also in preparation to future support for hardware timestamping
> wwith multiple PTP domains. With multiple domains chances of multiple TX
> timestamps being requested at the same time increase.
> 
> Before:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16
> -I -H -o 37
>                |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%       +1     +41     +73     13
> 1500       150   0.00%   0.00%   0.00% 100.00%       +9     +49     +87     15
> 2250       225   0.00%   0.00%   0.00% 100.00%       +9     +42     +79     13
> 3375       337   0.00%   0.00%   0.00% 100.00%      +11     +46     +81     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +7     +44     +80     13
> 7593       759   0.00%   0.00%   0.00% 100.00%       +9     +44     +79     12
> 11389     1138   0.00%   0.00%   0.00% 100.00%      +14     +51     +87     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%       +1     +41     +80     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%      +11     +50   +5107     51
> 38436     3843   0.00%   0.00%   0.00% 100.00%       -2     +36   +7843     38
> 57654     5765   0.00%   0.00%   0.00% 100.00%       +4     +42  +10503     69
> 86481     8648   0.00%   0.00%   0.00% 100.00%      +11     +54   +5492     65
> 129721   12972   0.00%   0.00%   0.00% 100.00%      +31   +2680   +6942   2606
> 194581   16384  16.79%   0.00%   0.87%  82.34%      +73   +4444  +15879   3116
> 291871   16384  35.05%   0.00%   1.53%  63.42%     +188   +5381  +17019   3035
> 437806   16384  54.95%   0.00%   2.55%  42.50%     +233   +6302  +13885   2846
> 
> After:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16
> -I -H -o 37
>                |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%      -20     +12     +43     13
> 1500       150   0.00%   0.00%   0.00% 100.00%      -23     +18     +57     14
> 2250       225   0.00%   0.00%   0.00% 100.00%       -2     +33     +67     13
> 3375       337   0.00%   0.00%   0.00% 100.00%       +1     +38     +76     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +9     +52     +93     14
> 7593       759   0.00%   0.00%   0.00% 100.00%      +11     +47     +82     13
> 11389     1138   0.00%   0.00%   0.00% 100.00%       -9     +27     +74     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%      -13     +25     +66     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%       -8     +28     +65     13
> 38436     3843   0.00%   0.00%   0.00% 100.00%      -13     +28     +69     13
> 57654     5765   0.00%   0.00%   0.00% 100.00%      -11     +32     +71     14
> 86481     8648   0.00%   0.00%   0.00% 100.00%       +2     +44     +83     14
> 129721   12972  15.36%   0.00%   0.35%  84.29%       -2   +2248  +22907   4252
> 194581   16384  42.98%   0.00%   1.98%  55.04%       -4   +5278  +65039   5856
> 291871   16384  54.33%   0.00%   2.21%  43.46%       -3   +6306  +22608   5665
> 
> We can see that with 4 registers, as expected, we are able to handle a
> increasing number of requests more consistently, but as soon as all registers
> are in use, the decrease in quality of service happens in a sharp step.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> ---
> v2 -> v3:
>  - Removed unnecessary documentation that sneaked up from previous
>    versions (Tony Nguyen)
> 
> v1 -> v2:
>  - Removed patches sent as fixes to the net tree;
>  - More details to the commit message, ntpperf comparison (with the
>    right clientloglimit, as Miroslav Lichvar suggested);
> 
> v1: https://lore.kernel.org/r/20230228054534.1093483-1-
> vinicius.gomes@intel.com/
> 
> 
>  drivers/net/ethernet/intel/igc/igc.h         |  18 +-
>  drivers/net/ethernet/intel/igc/igc_base.h    |   3 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |   7 +
>  drivers/net/ethernet/intel/igc/igc_main.c    |  41 ++++-
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 178 +++++++++++++------
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
>  6 files changed, 194 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 9db384f66a8e..1ac85fc98e09 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -37,6 +37,8 @@ void igc_ethtool_set_ops(struct net_device *);
> 
>  #define MAX_FLEX_FILTER			32
> 
> +#define IGC_MAX_TX_TSTAMP_REGS		4
> +
>  enum igc_mac_filter_type {
>  	IGC_MAC_FILTER_TYPE_DST = 0,
>  	IGC_MAC_FILTER_TYPE_SRC
> @@ -69,6 +71,15 @@ struct igc_rx_packet_stats {
>  	u64 other_packets;
>  };
> 
> +struct igc_tx_timestamp_request {
> +	struct sk_buff *skb;   /* reference to the packet being timestamped
> */
> +	unsigned long start;   /* when the tstamp request started (jiffies) */
> +	u32 mask;              /* _TSYNCTXCTL_TXTT_{X} bit for this request */
> +	u32 regl;              /* which TXSTMPL_{X} register should be used */
> +	u32 regh;              /* which TXSTMPH_{X} register should be used */
> +	u32 flags;             /* flags that should be added to the tx_buffer */
> +};
> +
>  struct igc_ring_container {
>  	struct igc_ring *ring;          /* pointer to linked list of rings */
>  	unsigned int total_bytes;       /* total bytes processed this int */
> @@ -240,9 +251,8 @@ struct igc_adapter {
>  	 * ptp_tx_lock.
>  	 */
>  	spinlock_t ptp_tx_lock;
> -	struct sk_buff *ptp_tx_skb;
> +	struct igc_tx_timestamp_request
> tx_tstamp[IGC_MAX_TX_TSTAMP_REGS];
>  	struct hwtstamp_config tstamp_config;
> -	unsigned long ptp_tx_start;
>  	unsigned int ptp_flags;
>  	/* System time value lock */
>  	spinlock_t tmreg_lock;
> @@ -450,6 +460,10 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> +
> +	IGC_TX_FLAGS_TSTAMP_1	= 0x100,
> +	IGC_TX_FLAGS_TSTAMP_2	= 0x200,
> +	IGC_TX_FLAGS_TSTAMP_3	= 0x400,
>  };
> 
>  enum igc_boards {
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h
> b/drivers/net/ethernet/intel/igc/igc_base.h
> index 9f3827eda157..f7d6491d4c60 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.h
> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
> @@ -34,6 +34,9 @@ struct igc_adv_tx_context_desc {
> 
>  /* Adv Transmit Descriptor Config Masks */
>  #define IGC_ADVTXD_MAC_TSTAMP	0x00080000 /* IEEE1588 Timestamp
> packet */
> +#define IGC_ADVTXD_TSTAMP_REG_1	0x00010000 /* Select register
> 1 for timestamp */
> +#define IGC_ADVTXD_TSTAMP_REG_2	0x00020000 /* Select register
> 2 for timestamp */
> +#define IGC_ADVTXD_TSTAMP_REG_3	0x00030000 /* Select register
> 3 for timestamp */
>  #define IGC_ADVTXD_DTYP_CTXT	0x00200000 /* Advanced Context
> Descriptor */
>  #define IGC_ADVTXD_DTYP_DATA	0x00300000 /* Advanced Data
> Descriptor */
>  #define IGC_ADVTXD_DCMD_EOP	0x01000000 /* End of Packet */
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 44a507029946..c9fc86a12da4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -454,6 +454,9 @@
> 
>  /* Time Sync Transmit Control bit definitions */
>  #define IGC_TSYNCTXCTL_TXTT_0			0x00000001  /* Tx
> timestamp reg 0 valid */
> +#define IGC_TSYNCTXCTL_TXTT_1			0x00000002  /* Tx
> timestamp reg 1 valid */
> +#define IGC_TSYNCTXCTL_TXTT_2			0x00000004  /* Tx
> timestamp reg 2 valid */
> +#define IGC_TSYNCTXCTL_TXTT_3			0x00000008  /* Tx
> timestamp reg 3 valid */
>  #define IGC_TSYNCTXCTL_ENABLED			0x00000010  /*
> enable Tx timestamping */
>  #define IGC_TSYNCTXCTL_MAX_ALLOWED_DLY_MASK	0x0000F000
> /* max delay */
>  #define IGC_TSYNCTXCTL_SYNC_COMP_ERR		0x20000000  /* sync
> err */
> @@ -461,6 +464,10 @@
>  #define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /*
> initiate sync */
>  #define IGC_TSYNCTXCTL_TXSYNSIG			0x00000020  /*
> Sample TX tstamp in PHY sop */
> 
> +#define IGC_TSYNCTXCTL_TXTT_ANY ( \
> +		IGC_TSYNCTXCTL_TXTT_0 | IGC_TSYNCTXCTL_TXTT_1 | \
> +		IGC_TSYNCTXCTL_TXTT_2 | IGC_TSYNCTXCTL_TXTT_3)
> +
>  /* Timer selection bits */
>  #define IGC_AUX_IO_TIMER_SEL_SYSTIM0	(0u << 30) /* Select SYSTIM0
> for auxiliary time stamp */
>  #define IGC_AUX_IO_TIMER_SEL_SYSTIM1	(1u << 30) /* Select SYSTIM1
> for auxiliary time stamp */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2a10254edbbd..b0817b66c338 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1271,10 +1271,21 @@ static u32 igc_tx_cmd_type(struct sk_buff *skb,
> u32 tx_flags)
>  	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSO,
>  				 (IGC_ADVTXD_DCMD_TSE));
> 
> -	/* set timestamp bit if present */
> +	/* set timestamp bit if present, will select the register set
> +	 * based on the _TSTAMP(_X) bit.
> +	 */
>  	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
>  				 (IGC_ADVTXD_MAC_TSTAMP));
> 
> +	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_1,
> +				 (IGC_ADVTXD_TSTAMP_REG_1));
> +
> +	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_2,
> +				 (IGC_ADVTXD_TSTAMP_REG_2));
> +
> +	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_3,
> +				 (IGC_ADVTXD_TSTAMP_REG_3));
> +
>  	/* insert frame checksum */
>  	cmd_type ^= IGC_SET_FLAG(skb->no_fcs, 1,
> IGC_ADVTXD_DCMD_IFCS);
> 
> @@ -1533,6 +1544,26 @@ static int igc_tso(struct igc_ring *tx_ring,
>  	return 1;
>  }
> 
> +static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct
> +sk_buff *skb, u32 *flags) {
> +	int i;
> +
> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		struct igc_tx_timestamp_request *tstamp = &adapter-
> >tx_tstamp[i];
> +
> +		if (tstamp->skb)
> +			continue;
> +
> +		tstamp->skb = skb_get(skb);
> +		tstamp->start = jiffies;
> +		*flags = tstamp->flags;
> +
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  				       struct igc_ring *tx_ring)
>  {
> @@ -1614,14 +1645,12 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
>  		 * timestamping request.
>  		 */
>  		unsigned long flags;
> +		u32 tstamp_flags;
> 
>  		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> -		if (!adapter->ptp_tx_skb) {
> +		if (igc_request_tx_tstamp(adapter, skb, &tstamp_flags)) {
>  			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
> -			tx_flags |= IGC_TX_FLAGS_TSTAMP;
> -
> -			adapter->ptp_tx_skb = skb_get(skb);
> -			adapter->ptp_tx_start = jiffies;
> +			tx_flags |= IGC_TX_FLAGS_TSTAMP | tstamp_flags;
>  		} else {
>  			adapter->tx_hwtstamp_skipped++;
>  		}
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index f0b979a70655..928f38792203 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -558,11 +558,16 @@ static void igc_ptp_enable_rx_timestamp(struct
> igc_adapter *adapter)  static void igc_ptp_clear_tx_tstamp(struct
> igc_adapter *adapter)  {
>  	unsigned long flags;
> +	int i;
> 
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> 
> -	dev_kfree_skb_any(adapter->ptp_tx_skb);
> -	adapter->ptp_tx_skb = NULL;
> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		struct igc_tx_timestamp_request *tstamp = &adapter-
> >tx_tstamp[i];
> +
> +		dev_kfree_skb_any(tstamp->skb);
> +		tstamp->skb = NULL;
> +	}
> 
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);  } @@ -659,61
> +664,106 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter
> *adapter,  }
> 
>  /* Requires adapter->ptp_tx_lock held by caller. */ -static void
> igc_ptp_tx_timeout(struct igc_adapter *adapter)
> +static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
> +			       struct igc_tx_timestamp_request *tstamp)
>  {
> -	struct igc_hw *hw = &adapter->hw;
> -
> -	dev_kfree_skb_any(adapter->ptp_tx_skb);
> -	adapter->ptp_tx_skb = NULL;
> +	dev_kfree_skb_any(tstamp->skb);
> +	tstamp->skb = NULL;
>  	adapter->tx_hwtstamp_timeouts++;
> -	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
> -	rd32(IGC_TXSTMPH);
> +
>  	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");  }
> 
>  void igc_ptp_tx_hang(struct igc_adapter *adapter)  {
> +	struct igc_tx_timestamp_request *tstamp;
> +	struct igc_hw *hw = &adapter->hw;
>  	unsigned long flags;
> +	bool found = false;
> +	int i;
> 
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> 
> -	if (!adapter->ptp_tx_skb)
> -		goto unlock;
> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		tstamp = &adapter->tx_tstamp[i];
> 
> -	if (time_is_after_jiffies(adapter->ptp_tx_start +
> IGC_PTP_TX_TIMEOUT))
> -		goto unlock;
> +		if (!tstamp->skb)
> +			continue;
> 
> -	igc_ptp_tx_timeout(adapter);
> +		if (time_is_after_jiffies(tstamp->start +
> IGC_PTP_TX_TIMEOUT))
> +			continue;
> +
> +		igc_ptp_tx_timeout(adapter, tstamp);
> +		found = true;
> +	}
> +
> +	if (found) {
> +		/* Reading the high register of the first set of timestamp
> registers
> +		 * clears all the equivalent bits in the TSYNCTXCTL register.
> +		 */
> +		rd32(IGC_TXSTMPH_0);
> +	}
> 
> -unlock:
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);  }
> 
> +static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
> +				    struct igc_tx_timestamp_request *tstamp,
> u64 regval) {
> +	struct skb_shared_hwtstamps shhwtstamps;
> +	struct sk_buff *skb;
> +	int adjust = 0;
> +
> +	skb = tstamp->skb;
> +	if (!skb)
> +		return;
> +
> +	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
> +		return;
> +
> +	switch (adapter->link_speed) {
> +	case SPEED_10:
> +		adjust = IGC_I225_TX_LATENCY_10;
> +		break;
> +	case SPEED_100:
> +		adjust = IGC_I225_TX_LATENCY_100;
> +		break;
> +	case SPEED_1000:
> +		adjust = IGC_I225_TX_LATENCY_1000;
> +		break;
> +	case SPEED_2500:
> +		adjust = IGC_I225_TX_LATENCY_2500;
> +		break;
> +	}
> +
> +	shhwtstamps.hwtstamp =
> +		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
> +
> +	tstamp->skb = NULL;
> +
> +	skb_tstamp_tx(skb, &shhwtstamps);
> +	dev_kfree_skb_any(skb);
> +}
> +
>  /**
>   * igc_ptp_tx_hwtstamp - utility function which checks for TX time stamp
>   * @adapter: Board private structure
>   *
> - * If we were asked to do hardware stamping and such a time stamp is
> - * available, then it must have been for this skb here because we only
> - * allow only one such packet into the queue.
> + * Check against the ready mask for which of the timestamp register
> + * sets are ready to be retrieved, then retrieve that and notify the
> + * rest of the stack.
>   *
>   * Context: Expects adapter->ptp_tx_lock to be held by caller.
>   */
>  static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)  {
> -	struct sk_buff *skb = adapter->ptp_tx_skb;
> -	struct skb_shared_hwtstamps shhwtstamps;
>  	struct igc_hw *hw = &adapter->hw;
> -	u32 tsynctxctl;
> -	int adjust = 0;
>  	u64 regval;
> +	u32 mask;
> +	int i;
> 
> -	if (WARN_ON_ONCE(!skb))
> -		return;
> -
> -	tsynctxctl = rd32(IGC_TSYNCTXCTL);
> -	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_0;
> -	if (tsynctxctl) {
> +	mask = rd32(IGC_TSYNCTXCTL) & IGC_TSYNCTXCTL_TXTT_ANY;
> +	if (mask & IGC_TSYNCTXCTL_TXTT_0) {
>  		regval = rd32(IGC_TXSTMPL);
>  		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
>  	} else {
> @@ -742,37 +792,30 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter
> *adapter)
>  		txstmpl_new = rd32(IGC_TXSTMPL);
> 
>  		if (txstmpl_old == txstmpl_new)
> -			return;
> +			goto done;
> 
>  		regval = txstmpl_new;
>  		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
>  	}
> -	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
> -		return;
> 
> -	switch (adapter->link_speed) {
> -	case SPEED_10:
> -		adjust = IGC_I225_TX_LATENCY_10;
> -		break;
> -	case SPEED_100:
> -		adjust = IGC_I225_TX_LATENCY_100;
> -		break;
> -	case SPEED_1000:
> -		adjust = IGC_I225_TX_LATENCY_1000;
> -		break;
> -	case SPEED_2500:
> -		adjust = IGC_I225_TX_LATENCY_2500;
> -		break;
> +	igc_ptp_tx_reg_to_stamp(adapter, &adapter->tx_tstamp[0],
> regval);
> +
> +done:
> +	/* Now that the problematic first register was handled, we can
> +	 * use retrieve the timestamps from the other registers
> +	 * (starting from '1') with less complications.
> +	 */
> +	for (i = 1; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		struct igc_tx_timestamp_request *tstamp = &adapter-
> >tx_tstamp[i];
> +
> +		if (!(tstamp->mask & mask))
> +			continue;
> +
> +		regval = rd32(tstamp->regl);
> +		regval |= (u64)rd32(tstamp->regh) << 32;
> +
> +		igc_ptp_tx_reg_to_stamp(adapter, tstamp, regval);
>  	}
> -
> -	shhwtstamps.hwtstamp =
> -		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
> -
> -	adapter->ptp_tx_skb = NULL;
> -
> -	/* Notify the stack and free the skb after we've unlocked */
> -	skb_tstamp_tx(skb, &shhwtstamps);
> -	dev_kfree_skb_any(skb);
>  }
> 
>  /**
> @@ -788,12 +831,8 @@ void igc_ptp_tx_tstamp_event(struct igc_adapter
> *adapter)
> 
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> 
> -	if (!adapter->ptp_tx_skb)
> -		goto unlock;
> -
>  	igc_ptp_tx_hwtstamp(adapter);
> 
> -unlock:
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);  }
> 
> @@ -1006,9 +1045,34 @@ static int igc_ptp_getcrosststamp(struct
> ptp_clock_info *ptp,  void igc_ptp_init(struct igc_adapter *adapter)  {
>  	struct net_device *netdev = adapter->netdev;
> +	struct igc_tx_timestamp_request *tstamp;
>  	struct igc_hw *hw = &adapter->hw;
>  	int i;
> 
> +	tstamp = &adapter->tx_tstamp[0];
> +	tstamp->mask = IGC_TSYNCTXCTL_TXTT_0;
> +	tstamp->regl = IGC_TXSTMPL_0;
> +	tstamp->regh = IGC_TXSTMPH_0;
> +	tstamp->flags = 0;
> +
> +	tstamp = &adapter->tx_tstamp[1];
> +	tstamp->mask = IGC_TSYNCTXCTL_TXTT_1;
> +	tstamp->regl = IGC_TXSTMPL_1;
> +	tstamp->regh = IGC_TXSTMPH_1;
> +	tstamp->flags = IGC_TX_FLAGS_TSTAMP_1;
> +
> +	tstamp = &adapter->tx_tstamp[2];
> +	tstamp->mask = IGC_TSYNCTXCTL_TXTT_2;
> +	tstamp->regl = IGC_TXSTMPL_2;
> +	tstamp->regh = IGC_TXSTMPH_2;
> +	tstamp->flags = IGC_TX_FLAGS_TSTAMP_2;
> +
> +	tstamp = &adapter->tx_tstamp[3];
> +	tstamp->mask = IGC_TSYNCTXCTL_TXTT_3;
> +	tstamp->regl = IGC_TXSTMPL_3;
> +	tstamp->regh = IGC_TXSTMPH_3;
> +	tstamp->flags = IGC_TX_FLAGS_TSTAMP_3;
> +
>  	switch (hw->mac.type) {
>  	case igc_i225:
>  		for (i = 0; i < IGC_N_SDP; i++) {
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> b/drivers/net/ethernet/intel/igc/igc_regs.h
> index dba5a5759b1c..20e17f5fbce3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -243,6 +243,18 @@
>  #define IGC_SYSTIMR	0x0B6F8  /* System time register Residue */
>  #define IGC_TIMINCA	0x0B608  /* Increment attributes register - RW */
> 
> +/* TX Timestamp Low */
> +#define IGC_TXSTMPL_0		0x0B618
> +#define IGC_TXSTMPL_1		0x0B698
> +#define IGC_TXSTMPL_2		0x0B6B8
> +#define IGC_TXSTMPL_3		0x0B6D8
> +
> +/* TX Timestamp High */
> +#define IGC_TXSTMPH_0		0x0B61C
> +#define IGC_TXSTMPH_1		0x0B69C
> +#define IGC_TXSTMPH_2		0x0B6BC
> +#define IGC_TXSTMPH_3		0x0B6DC
> +
>  #define IGC_TXSTMPL	0x0B618  /* Tx timestamp value Low - RO */
>  #define IGC_TXSTMPH	0x0B61C  /* Tx timestamp value High - RO */
> 
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
