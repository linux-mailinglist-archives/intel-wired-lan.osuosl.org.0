Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EBDBCC6AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 11:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFABF611F5;
	Fri, 10 Oct 2025 09:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XY5keDzAgJkC; Fri, 10 Oct 2025 09:44:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51F0F612B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760089495;
	bh=OkWJYVnJ66aRjEzhk8gSrYf/iZK6DG8bK5AmnueEF5U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DRqf5tlk4DjZDes+b4PJ41ZMlBE8p7/wqplE5uZBZmLni07E1bxldzMdcjlebKxnp
	 XA7Sp4Z6JNrtsT7M55idHmpD3Lj0r4fQO+fCS8tGinaZDl8jWgWjkiSKVRqfen4bF4
	 uVvmS05pjRAdDgU3PFkPNDLZS7knemdWAtyh2dp4LWKPAMwGLsHKxqiamz1FqemR+0
	 f7pKbHureppU1uDtZbRj7XTQch4NRHQ4y6emgjLbCBdutRzGlEP4i3wCgA5B2w3Cum
	 ny4DumSr0n3KvkbsuSuPD8QmzedkOemEkq71Ytesji+5toGaUU0WZAMTw52/Wghoyy
	 M0xMP/pOg6M4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51F0F612B5;
	Fri, 10 Oct 2025 09:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 717E2226
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56B0260D89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKpOiiFjQt3Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 09:44:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C3EA60D56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C3EA60D56
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C3EA60D56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:44:51 +0000 (UTC)
X-CSE-ConnectionGUID: 6MX5LwoQSECifjWE05qX7w==
X-CSE-MsgGUID: 6t/nZmphRl2xb3n4K6B+4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62407692"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="62407692"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:44:50 -0700
X-CSE-ConnectionGUID: Yc1w3cmhRFuu8FARykRxBw==
X-CSE-MsgGUID: weR9OvIpTjaWG+Pyedi4ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211891806"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:44:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:44:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 02:44:49 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:44:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=icS6qj2Ys8H428jPJbzhNr5msOGe2F0NLGRkD0Ns3AEHsrUs798l3WE8/82McZsEv/tSXN4a5GMQ8zjlNc0llM7/KoOplegFZ4nEj3S0GNdeEy7mBnQitiDn7Ncz2t+rO9+V4ROS9Svi3rjSLbVCY9GjNMQsX/0xd+7C6dGVJOqZtU6mfQREaN+G3DICmMjeuniSZshWUgTCLl4EBvvsVgPFm31JJbYF7O1FLFx0JWFK0QE/pDmyOForU8KUkrvll0/SInA8Ss4vrQ2Wjf1h5dgKYCdCFAwlTrxHGtmSVeE8cyvYxzlVVa9hWuOKT7dNymoqZ+sD/DZx0AdKVyAgjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OkWJYVnJ66aRjEzhk8gSrYf/iZK6DG8bK5AmnueEF5U=;
 b=IfuxY08n5eefTdB7UziAHf9J29+xkwfGFpiRRuA1eN1Nww7TWcwS5cAleTKzpaIRNJplOe7JqSzPSAipkkSCJU9R46KIcTR7cOyOscQW2V+n7oJUcOWwtKL69ZoinzEQkfuajDJYEPTGM8vO9tBhUChSQannbbviWRAGKHA1EtzxhRO0MU7SKCDgnXsZFM6tbOQ4ZCG7EZVt08nrN2r/mDiHdYw+n3pNVO3jTTObB7cPNTwuu2XrHo5AeT/ll4N+PsKz7o1iKMvj3/pBkHcydIqmFbcxpsbXWvrSdu4fY0RF3gb6Dl6lMG5adPKvcg7N3Aah1IqiMSI5YklR7146nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 09:44:47 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9137.018; Fri, 10 Oct 2025
 09:44:46 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Schmidt, Michal"
 <mschmidt@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Nowlin, Dan" <dan.nowlin@intel.com>, "Zhang, Qi Z"
 <qi.z.zhang@intel.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/5] ice: add virtchnl and
 VF context support for GTP RSS
Thread-Index: AQHcJkZAH7KEOxwRgkuSjzH2dIcnf7S7SFfA
Date: Fri, 10 Oct 2025 09:44:46 +0000
Message-ID: <IA3PR11MB8985B0C39D56031006B147248FEFA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
 <20250915133928.3308335-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20250915133928.3308335-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BL1PR11MB5953:EE_
x-ms-office365-filtering-correlation-id: aa304427-35fd-4193-c319-08de07e1a61c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RYvFc6SaAyUGQnmhQaILvUVcSy6BXrwYOvOrYQS2IrONMnxqr6KvbUcbS3wW?=
 =?us-ascii?Q?+ew4nTpTFbKERsYxFltslWMYTE9Yyyt1Ignc78aINy/tEAwr5xMB62J3WrhZ?=
 =?us-ascii?Q?cmL6tHv6LYRp0rTcH2nDg6LH7NyLl3j3Yq8eoke8u9bvi0i+J8TSi87EElYE?=
 =?us-ascii?Q?RawTPMQBSR65jGlQ2KZi9C3e8ep5jTT0DRFS4Nwqi9H+Fx++Mm7SUVhfm9Ga?=
 =?us-ascii?Q?D7zNLyt046MFNoO0unlafaLzg6uDPxi6TD3PorrUz6XdU9EIlHyr5OHaVS/v?=
 =?us-ascii?Q?EDs278I0jcByiEmqf1uiOCTF1uM1biqxCKc0sNfd/qhLXw4OuYMY45JhFFL9?=
 =?us-ascii?Q?PbP6pWVuXYo53G0UmWvSGQzadq0AQaTxC5pOzn4nl6OD+ufPaltFuQ7gGVbu?=
 =?us-ascii?Q?QlyuugMBf2am+sVR6wJID+/GaGkTKYxd2wYLVG4PRzlO85J4Y5zzqKJg89Wz?=
 =?us-ascii?Q?6tzWk+lmR4l0uTJx2LuYc5rSHq4OEDxfIlwsgZ77seVHzxj7udR2e66ZIEFm?=
 =?us-ascii?Q?BjvBwWBhNIDwuMVIKqbfcqTItE7PtV/UeOivYMg4HG5GosJZEBtO3lW+cfT8?=
 =?us-ascii?Q?FDKqUdJ6NvjvGbr2e/zOGYAdd+6ZBoAiRlurS+PYU4RkkjdY+f3AYxlLgXbe?=
 =?us-ascii?Q?fViXWs7HMJGEjJ0ZlEARvUdaGyTO6FZeCpzRwV19AoBCgW7tzsSHdsGIdeo5?=
 =?us-ascii?Q?Tq/jRSad01jm7Sd2OY+POSBWnKhPwb3pJ2k0GBTbquGlIRWy81UBMiawinNG?=
 =?us-ascii?Q?j3ohiypsEp/05PsDIkwldY8GvRtEImHIHLqFm69QWe/zPAo8YUMvn8iel5rd?=
 =?us-ascii?Q?qZtYgYW+i8eBe7NJf798uuvnEOmeWXvkO7US16imUd6C7JMlRLiTrNb8Wgos?=
 =?us-ascii?Q?sIcJbQZDKNAAk28QYwAiwrm4gxU3vrDyVFw6NIIyxyIexs2OBNkaV5Zv3cNi?=
 =?us-ascii?Q?WuYnEbppZoMcY0Etv+/uv0VjzSrTWyYAKSfjPF6SeLz3TCnWAg6Bg+/8yKzA?=
 =?us-ascii?Q?Wvo+ApR7td4CmLg0jgS2ZKeP2TxsPONynn55xI+U7LlveW05sNnSBi3hWBiQ?=
 =?us-ascii?Q?DGDYdQJvb2XMvL1jKFmQ+OPs63V1dajqwGFfQKl5nd43+0AoOIyW3jxC+G3C?=
 =?us-ascii?Q?M8klwwVX/GjZ1qvmX1sEFwSSevMqf7dv+VbBRBOwi6BPazWRjaEchdq8WV2N?=
 =?us-ascii?Q?GRvisVuk4cRleYp4TEx7nzYm+LFF/zgd9sMsP7TI4DWJtpAlshJchKpRU3Ps?=
 =?us-ascii?Q?9eTeBaSjYz/TXNUa46sBPTiR4KDi+o6N+mqd8+luJPuqu+Z/KmjliJYnIGhX?=
 =?us-ascii?Q?VmS+StjMPgTwAlBI6ys3P27MmSmXZaM+tz+Jq6mBlUew7/qtHHAfZC1F1WkE?=
 =?us-ascii?Q?83yQmrF/+86eJAqwac0vOaMmYWCxls4b6Ay6v2FXBhHJ7dBufRQLp+rzh82G?=
 =?us-ascii?Q?HkuDbIku7kidWIbqyia47emUAvTZ5IC9k38eRJ+eGTAYa+OH5+zARAizgrj1?=
 =?us-ascii?Q?tQ14LjlQqb84QWZlynJi5I5cY2yHdtAFNFAKQHNfuzExXOP0EyX3C72rNw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ih0iIH8CAQqE6aVDH16x4SPj+0FOLfzhCbPd7GJUJ6jSRgHX6moNhnns6Eg9?=
 =?us-ascii?Q?Edj6cwYex7JyUjpD1aEDYBNBzCrC81OGhIOa5mheC30esgXDg52PpmwOvFT0?=
 =?us-ascii?Q?ktuiCU4AdAn4RDTQrdJjPeclddYUx8UzQhkAPtDhre7puFT7x+i+wqT49+de?=
 =?us-ascii?Q?NMEd+caBMK8siLH4k+wDHWNRuXAkMxoFaMJneQH8CAztqKiWCzt/LiTDjP1s?=
 =?us-ascii?Q?4/CIij6/gms3HhKXU5WXuyDl/8mVSlNbJ4apv+CzqGa8B1bsBks1mNch3GWf?=
 =?us-ascii?Q?kIIEjDLYHGiEzV2IrQ+Bhe1YTqX1G/lh36lRQSYmyt7JRHd3k+6IqEWafW46?=
 =?us-ascii?Q?9pHC6+o76ZaT8RMcbrFXhC7NIUdknUJw57hduiPoOXq/M0SLMEpFY+i9rUN0?=
 =?us-ascii?Q?CZDk5RifJHKjC3CfVaOTnmF90nNefiV94DQ0zR3a3hTsAH+YNxli3Gd+VlYt?=
 =?us-ascii?Q?ge7lXUH+eSzqW7NRQbLzQfmG2togPoZVFpbQAkXsmPlhIlmk95I6okZmqLXG?=
 =?us-ascii?Q?TUcu593p1h0ZeT0Z3OKAPwewrEHeSEZUfTdLWlV49FBQRFhiFCbdiPZRaEbj?=
 =?us-ascii?Q?EpzNeFKYgCmF4kr1d030h/aW7+7+kLXfhWqmoV8U4ukRNgwZs/LMeZLF4R5K?=
 =?us-ascii?Q?CvMPXVplHKbQgpDMDg+nyQmw1XY++5apxW7AkAbHCfb7k3z1DgIpx7MCWRkT?=
 =?us-ascii?Q?2V0uHtmdFPywWevJT9LvSV78coK6ssQVBbrh4QMvFXo8klgDMArLVyC6LhyD?=
 =?us-ascii?Q?wiH3iEs5qf8OWCGua0CWJpPS6LlpNNxAawWzV6acdRmypfGlq2QE47d7Xye2?=
 =?us-ascii?Q?pPKoyti4TQiwhZOMj0z9Ov3zIWptmK3wYE0r75rNBOE9uaSN09rGN3NMB7au?=
 =?us-ascii?Q?Zo7x1h9vgFsY8yIgKd0r4BHOanJxb1j1psDUnXWCS9Cp4XQruAOINsstgK8e?=
 =?us-ascii?Q?sj/sesAJPUIrF5/+uaC4dDCLpGSv/9sxOY/MX/PjAqp5uvyfHA3YAOl6Z0lK?=
 =?us-ascii?Q?4LbVal0Tjh8BRg7YI50zpN08kt5z+PQECmMWhPKnDZp58UFmu0e9P/aj3CKG?=
 =?us-ascii?Q?KVmzh3zh27PU4A9OLLLodj0CC6VriIY6UWLWxu2TzQPJ2eZZ3TgSp275bMhD?=
 =?us-ascii?Q?78bNWjJ6kwicvvdWSi3oux8IWEhfWxKQrGzuXomL60SGyjdQzwHyL0YsLh5A?=
 =?us-ascii?Q?YXtmAcmrx//hJywss9xwIC0bkYnM1t9JTD5ialfJjSzbkmQEZDgdqMYZ5k1A?=
 =?us-ascii?Q?0iIvY2Op54ZgMyze2wQ95aDl1L3GxURls2qcYg0p4epFtwBbpif3OexixQFB?=
 =?us-ascii?Q?+wucCFsEVZLooHUtvRJfTKuO3T5I90wy/kKtLrKxDvw+eTUmy0I5ogc2rFvW?=
 =?us-ascii?Q?6Chg6R8oSnN/PhbSTwwYclvcy3DQz9w7IQwLvnvgzutpdZPYY+R9+9r3vvnT?=
 =?us-ascii?Q?1ouonu7He2aAp0IPbvxlDmLC5qhiSOIQY9B0KduP9DMc79lSERseIUtw6ab5?=
 =?us-ascii?Q?Z4dDWjJqGY078innvVj1JdibwjW7DQta7Qq2+UZJDZrOivQOnwxBnKl6cfht?=
 =?us-ascii?Q?BMzg+4WMr7veQoukKPwt31oShiFsxwl5z/iReY73Se0jtGyyG7lstWVX7puN?=
 =?us-ascii?Q?dA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa304427-35fd-4193-c319-08de07e1a61c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 09:44:46.8702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KppP7w/40gWdGZ2WXwGpdcEIFVHAeGsKLQJxjwtoOqqEuH4mE/CVTFtKpLD5U0mJgMwFsgaxhDUTpL27NyPGjlB9lZLBwjCZY6reb382mRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760089491; x=1791625491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WSzW+KScLsx2EJm4Y662Av//kK+MkxGDxAcGW7YuOYs=;
 b=oETUZmZcRCdNlz+m4Frh9FVJksoFfFVeKoZVRvaOAGRopmX0BJu7b3CU
 THopqqcFWGC1vwnm1ZYhdlCWospC+BeNTkPxrUAOqUwe3XrKxcffjN3GL
 +Xcd1A/YLM2RG5eXWIt6pQWyDE7IGMYhz/yTJ8SUe14FfCLHP49qUUQ59
 exQeTpWPrXyDG+wr/cQk2AvPXsiinTX4p2KGNcWQDIutD56kb3C2DruRK
 XDoFCy6zR1DMZI2qkK1rCzQuvgeX/3y7DUk8LniI4lnCx6UmmaFWU+SvY
 xX9EFisVBIEdNSEuMvOkTDbFh+Epdgdaq0TI8x8+RWqgfRJhFA6dre1SI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oETUZmZc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/5] ice: add virtchnl and
 VF context support for GTP RSS
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Monday, September 15, 2025 3:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Schmidt, Mi=
chal
> <mschmidt@redhat.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>;
> Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/5] ice: add virtchnl and =
VF
> context support for GTP RSS
>=20
> Introduce infrastructure to support GTP-specific RSS configuration
> in the ICE driver, enabling flexible and programmable flow hashing
> on virtual functions (VFs).
>=20
>  - Define new virtchnl protocol header and field types for GTPC, GTPU,
>    L2TPv2, ECPRI, PPP, GRE, and IP fragment headers.
>  - Extend virtchnl.h to support additional RSS fields including checksums=
,
>    TEID, QFI, and IPv6 prefix matching.
>  - Add VF-side hash context structures for IPv4/IPv6 and GTPU flows.
>  - Implement context tracking and rule ordering logic for TCAM-based
>    RSS configuration.
>  - Introduce symmetric hashing support for raw and tunnel flows.
>  - Update ice_vf_lib.h and virt/rss.c to handle advanced RSS
>    configuration via virtchnl messages.
>=20
> VFs can express RSS configuration for GTP flows
> using ethtool and virtchnl, laying the foundation for tunnel-aware
> RSS offloads in virtualized environments.
>=20
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c |    3 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h |   48 +
>  drivers/net/ethernet/intel/ice/virt/rss.c   | 1307 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                |   50 +
>  4 files changed, 1353 insertions(+), 55 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> index 664beb6..a8fec1c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -2115,6 +2115,9 @@ struct ice_parser *ice_parser_create(struct ice_hw
> *hw)
>   */
>  void ice_parser_destroy(struct ice_parser *psr)
>  {
> +	if (!psr)
> +		return;
> +
>  	kfree(psr->imem_table);
>  	kfree(psr->mi_table);
>  	kfree(psr->pg_cam_table);
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index b007089..7a9c75d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -53,6 +53,46 @@ struct ice_mdd_vf_events {
>  	u16 last_printed;
>  };
>=20
> +enum ice_hash_ip_ctx_type {
> +	ICE_HASH_IP_CTX_IP =3D 0,
> +	ICE_HASH_IP_CTX_IP_ESP,
> +	ICE_HASH_IP_CTX_IP_UDP_ESP,
> +	ICE_HASH_IP_CTX_IP_AH,
> +	ICE_HASH_IP_CTX_IP_PFCP,
> +	ICE_HASH_IP_CTX_IP_UDP,
> +	ICE_HASH_IP_CTX_IP_TCP,
> +	ICE_HASH_IP_CTX_IP_SCTP,
> +	ICE_HASH_IP_CTX_MAX,
> +};
> +
> +struct ice_vf_hash_ip_ctx {
> +	struct ice_rss_hash_cfg ctx[ICE_HASH_IP_CTX_MAX];
> +};
> +
> +enum ice_hash_gtpu_ctx_type {
> +	ICE_HASH_GTPU_CTX_EH_IP =3D 0,
> +	ICE_HASH_GTPU_CTX_EH_IP_UDP,
> +	ICE_HASH_GTPU_CTX_EH_IP_TCP,
> +	ICE_HASH_GTPU_CTX_UP_IP,
> +	ICE_HASH_GTPU_CTX_UP_IP_UDP,
> +	ICE_HASH_GTPU_CTX_UP_IP_TCP,
> +	ICE_HASH_GTPU_CTX_DW_IP,
> +	ICE_HASH_GTPU_CTX_DW_IP_UDP,
> +	ICE_HASH_GTPU_CTX_DW_IP_TCP,
> +	ICE_HASH_GTPU_CTX_MAX,
> +};
> +
> +struct ice_vf_hash_gtpu_ctx {
> +	struct ice_rss_hash_cfg ctx[ICE_HASH_GTPU_CTX_MAX];
> +};
> +
> +struct ice_vf_hash_ctx {
> +	struct ice_vf_hash_ip_ctx v4;
> +	struct ice_vf_hash_ip_ctx v6;
> +	struct ice_vf_hash_gtpu_ctx ipv4;
> +	struct ice_vf_hash_gtpu_ctx ipv6;
> +};
> +
>  /* Structure to store fdir fv entry */
>  struct ice_fdir_prof_info {
>  	struct ice_parser_profile prof;
> @@ -66,6 +106,12 @@ struct ice_vf_qs_bw {
>  	u8 tc;
>  };
>=20
> +/* Structure to store RSS field vector entry */
> +struct ice_rss_prof_info {
> +	struct ice_parser_profile prof;
> +	bool symm;
> +};
> +
>  /* VF operations */
>  struct ice_vf_ops {
>  	enum ice_disq_rst_src reset_type;
> @@ -106,6 +152,8 @@ struct ice_vf {
>  	u16 ctrl_vsi_idx;
>  	struct ice_vf_fdir fdir;
>  	struct ice_fdir_prof_info fdir_prof_info[ICE_MAX_PTGS];
> +	struct ice_rss_prof_info rss_prof_info[ICE_MAX_PTGS];
> +	struct ice_vf_hash_ctx hash_ctx;
>  	u64 rss_hashcfg;		/* RSS hash configuration */
>  	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
>  	struct virtchnl_version_info vf_ver;
> diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c
> b/drivers/net/ethernet/intel/ice/virt/rss.c
> index cbdbb32..1f3bed9 100644
> --- a/drivers/net/ethernet/intel/ice/virt/rss.c
> +++ b/drivers/net/ethernet/intel/ice/virt/rss.c
> @@ -36,6 +36,11 @@ static const struct ice_vc_hdr_match_type
> ice_vc_hdr_list[] =3D {
>  	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
>  	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
>  	{VIRTCHNL_PROTO_HDR_PFCP,
> 	ICE_FLOW_SEG_HDR_PFCP_SESSION},
> +	{VIRTCHNL_PROTO_HDR_GTPC,	ICE_FLOW_SEG_HDR_GTPC},
> +	{VIRTCHNL_PROTO_HDR_L2TPV2,
> 	ICE_FLOW_SEG_HDR_L2TPV2},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> 	ICE_FLOW_SEG_HDR_IPV_FRAG},
> +	{VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,
> 	ICE_FLOW_SEG_HDR_IPV_FRAG},
> +	{VIRTCHNL_PROTO_HDR_GRE,        ICE_FLOW_SEG_HDR_GRE},
>  };
>=20
>  struct ice_vc_hash_field_match_type {
> @@ -87,8 +92,125 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
>  		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> -	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_ID)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
> +		ICE_FLOW_HASH_IPV4},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_ID)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		ICE_FLOW_HASH_IPV4 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
>  	{VIRTCHNL_PROTO_HDR_IPV6,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
>  	{VIRTCHNL_PROTO_HDR_IPV6,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
> @@ -110,6 +232,35 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		ICE_FLOW_HASH_IPV6 |
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
>  	{VIRTCHNL_PROTO_HDR_IPV6,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG_PKID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_ID)},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC) |
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST),
> +		ICE_FLOW_HASH_IPV6_PRE64},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_SA)},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_DA)},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC) |
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
> +		ICE_FLOW_HASH_IPV6_PRE64 |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_SA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
> +	{VIRTCHNL_PROTO_HDR_IPV6,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_DA) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
>  	{VIRTCHNL_PROTO_HDR_TCP,
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
> @@ -120,6 +271,25 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
>  		ICE_FLOW_HASH_TCP_PORT},
> +	{VIRTCHNL_PROTO_HDR_TCP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_TCP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_TCP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_TCP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_CHKSUM),
> +		ICE_FLOW_HASH_TCP_PORT |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_CHKSUM)},
>  	{VIRTCHNL_PROTO_HDR_UDP,
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
> @@ -130,6 +300,25 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
>  		ICE_FLOW_HASH_UDP_PORT},
> +	{VIRTCHNL_PROTO_HDR_UDP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_UDP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_UDP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_UDP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_CHKSUM),
> +		ICE_FLOW_HASH_UDP_PORT |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_CHKSUM)},
>  	{VIRTCHNL_PROTO_HDR_SCTP,
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
> @@ -140,6 +329,25 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
>  		ICE_FLOW_HASH_SCTP_PORT},
> +	{VIRTCHNL_PROTO_HDR_SCTP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_SCTP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_SCTP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_CHKSUM),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT) |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_CHKSUM)},
> +	{VIRTCHNL_PROTO_HDR_SCTP,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT) |
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_CHKSUM),
> +		ICE_FLOW_HASH_SCTP_PORT |
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_CHKSUM)},
>  	{VIRTCHNL_PROTO_HDR_PPPOE,
>  		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PPPOE_SESS_ID),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID)},
> @@ -155,8 +363,56 @@ ice_vc_hash_field_match_type
> ice_vc_hash_field_list[] =3D {
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_AH_SPI)},
>  	{VIRTCHNL_PROTO_HDR_PFCP,
> FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PFCP_SEID),
>  		BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID)},
> +	{VIRTCHNL_PROTO_HDR_GTPC,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GTPC_TEID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID)},
> +	{VIRTCHNL_PROTO_HDR_L2TPV2,
> +		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV2_SESS_ID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV2_SESS_ID)},
> +	{VIRTCHNL_PROTO_HDR_L2TPV2,
> +
> 	FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV2_LEN_SESS_ID),
> +		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV2_LEN_SESS_ID)},
>  };
>=20
> +static enum virtchnl_status_code
> +ice_vc_rss_hash_update(struct ice_hw *hw, struct ice_vsi *vsi, u8 hash_t=
ype)
> +{
> +	enum virtchnl_status_code v_ret =3D VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_vsi_ctx *ctx;
> +	int ret;
> +
> +	ctx =3D kzalloc(sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +
> +	/* clear previous hash_type */
> +	ctx->info.q_opt_rss =3D vsi->info.q_opt_rss &
> +		~ICE_AQ_VSI_Q_OPT_RSS_HASH_M;
> +	/* hash_type is passed in as
> ICE_AQ_VSI_Q_OPT_RSS_<XOR|TPLZ|SYM_TPLZ */
> +	ctx->info.q_opt_rss |=3D
> FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M,
> +					  hash_type);
> +
> +	/* Preserve existing queueing option setting */
> +	ctx->info.q_opt_tc =3D vsi->info.q_opt_tc;
> +	ctx->info.q_opt_flags =3D vsi->info.q_opt_flags;
> +
> +	ctx->info.valid_sections =3D
> +			cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
> +
> +	ret =3D ice_update_vsi(hw, vsi->idx, ctx, NULL);
> +	if (ret) {
> +		dev_err(ice_hw_to_dev(hw), "update VSI for RSS failed, err
> %d aq_err %s\n",
> +			ret, libie_aq_str(hw->adminq.sq_last_status));
> +		v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> +	} else {
> +		vsi->info.q_opt_rss =3D ctx->info.q_opt_rss;
> +	}
> +
> +	kfree(ctx);
> +
> +	return v_ret;
> +}
> +
>  /**
>   * ice_vc_validate_pattern
>   * @vf: pointer to the VF info
> @@ -271,6 +527,11 @@ static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
>  	const struct ice_vc_hash_field_match_type *hf_list;
>  	const struct ice_vc_hdr_match_type *hdr_list;
>  	int i, hf_list_len, hdr_list_len;
> +	bool outer_ipv4 =3D false;
> +	bool outer_ipv6 =3D false;
> +	bool inner_hdr =3D false;
> +	bool has_gre =3D false;
> +
>  	u32 *addl_hdrs =3D &hash_cfg->addl_hdrs;
>  	u64 *hash_flds =3D &hash_cfg->hash_flds;
>=20
> @@ -290,17 +551,17 @@ static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
>  	for (i =3D 0; i < rss_cfg->proto_hdrs.count; i++) {
>  		struct virtchnl_proto_hdr *proto_hdr =3D
>  					&rss_cfg->proto_hdrs.proto_hdr[i];
> -		bool hdr_found =3D false;
> +		u32 hdr_found =3D 0;
>  		int j;
>=20
> -		/* Find matched ice headers according to virtchnl headers. */
> +		/* Find matched ice headers according to virtchnl headers.
> +		 * Also figure out the outer type of GTPU headers.
> +		 */
>  		for (j =3D 0; j < hdr_list_len; j++) {
>  			struct ice_vc_hdr_match_type hdr_map =3D hdr_list[j];
>=20
> -			if (proto_hdr->type =3D=3D hdr_map.vc_hdr) {
> -				*addl_hdrs |=3D hdr_map.ice_hdr;
> -				hdr_found =3D true;
> -			}
> +			if (proto_hdr->type =3D=3D hdr_map.vc_hdr)
> +				hdr_found =3D hdr_map.ice_hdr;
>  		}
>=20
>  		if (!hdr_found)
> @@ -318,8 +579,98 @@ static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
>  				break;
>  			}
>  		}
> +
> +		if (proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_IPV4 &&
> !inner_hdr)
> +			outer_ipv4 =3D true;
> +		else if (proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_IPV6 &&
> +			 !inner_hdr)
> +			outer_ipv6 =3D true;
> +		/* for GRE and L2TPv2, take inner header as input set if no
> +		 * any field is selected from outer headers.
> +		 * for GTPU, take inner header and GTPU teid as input set.
> +		 */
> +		else if ((proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_GTPU_IP
> ||
> +			  proto_hdr->type =3D=3D
> VIRTCHNL_PROTO_HDR_GTPU_EH ||
> +			  proto_hdr->type =3D=3D
> VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN ||
> +			  proto_hdr->type =3D=3D
> +				VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP)
> ||
> +			 ((proto_hdr->type =3D=3D
> VIRTCHNL_PROTO_HDR_L2TPV2 ||
> +			   proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_GRE)
> &&
> +			   *hash_flds =3D=3D 0)) {
> +			/* set inner_hdr flag, and clean up outer header */
> +			inner_hdr =3D true;
> +
> +			/* clear outer headers */
> +			*addl_hdrs =3D 0;
> +
> +			if (outer_ipv4 && outer_ipv6)
> +				return false;
> +
> +			if (outer_ipv4)
> +				hash_cfg->hdr_type =3D
> ICE_RSS_INNER_HEADERS_W_OUTER_IPV4;
> +			else if (outer_ipv6)
> +				hash_cfg->hdr_type =3D
> ICE_RSS_INNER_HEADERS_W_OUTER_IPV6;
> +			else
> +				hash_cfg->hdr_type =3D
> ICE_RSS_INNER_HEADERS;
> +
> +			if (has_gre && outer_ipv4)
> +				hash_cfg->hdr_type =3D
> +
> 	ICE_RSS_INNER_HEADERS_W_OUTER_IPV4_GRE;
> +			if (has_gre && outer_ipv6)
> +				hash_cfg->hdr_type =3D
> +
> 	ICE_RSS_INNER_HEADERS_W_OUTER_IPV6_GRE;
> +
> +			if (proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_GRE)
> +				has_gre =3D true;
> +		}
> +
> +		*addl_hdrs |=3D hdr_found;
> +
> +		/* refine hash hdrs and fields for IP fragment */
> +		if (VIRTCHNL_TEST_PROTO_HDR_FIELD(proto_hdr,
> +
> VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID) &&
> +		    proto_hdr->type =3D=3D VIRTCHNL_PROTO_HDR_IPV4_FRAG) {
> +			*addl_hdrs |=3D ICE_FLOW_SEG_HDR_IPV_FRAG;
> +			*addl_hdrs &=3D ~(ICE_FLOW_SEG_HDR_IPV_OTHER);
> +			*hash_flds |=3D
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_ID);
> +			VIRTCHNL_DEL_PROTO_HDR_FIELD(proto_hdr,
> +
> VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID);
> +		}
> +		if (VIRTCHNL_TEST_PROTO_HDR_FIELD(proto_hdr,
> +
> VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG_PKID) &&
> +		    proto_hdr->type =3D=3D
> VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG) {
> +			*addl_hdrs |=3D ICE_FLOW_SEG_HDR_IPV_FRAG;
> +			*addl_hdrs &=3D ~(ICE_FLOW_SEG_HDR_IPV_OTHER);
> +			*hash_flds |=3D
> BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_ID);
> +			VIRTCHNL_DEL_PROTO_HDR_FIELD(proto_hdr,
> +
> VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG_PKID);
> +		}
> +	}
> +
> +	/* refine gtpu header if we take outer as input set for a no inner
> +	 * ip gtpu flow.
> +	 */
> +	if (hash_cfg->hdr_type =3D=3D ICE_RSS_OUTER_HEADERS &&
> +	    *addl_hdrs & ICE_FLOW_SEG_HDR_GTPU_IP) {
> +		*addl_hdrs &=3D ~(ICE_FLOW_SEG_HDR_GTPU_IP);
> +		*addl_hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_NON_IP;
> +	}
> +
> +	/* refine hash field for esp and nat-t-esp. */
> +	if ((*addl_hdrs & ICE_FLOW_SEG_HDR_UDP) &&
> +	    (*addl_hdrs & ICE_FLOW_SEG_HDR_ESP)) {
> +		*addl_hdrs &=3D ~(ICE_FLOW_SEG_HDR_ESP |
> ICE_FLOW_SEG_HDR_UDP);
> +		*addl_hdrs |=3D ICE_FLOW_SEG_HDR_NAT_T_ESP;
> +		*hash_flds &=3D ~(BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI));
> +		*hash_flds |=3D
> BIT_ULL(ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI);
>  	}
>=20
> +	/* refine hash hdrs for L4 udp/tcp/sctp. */
> +	if (*addl_hdrs & (ICE_FLOW_SEG_HDR_TCP |
> ICE_FLOW_SEG_HDR_UDP |
> +			  ICE_FLOW_SEG_HDR_SCTP) &&
> +	    *addl_hdrs & ICE_FLOW_SEG_HDR_IPV_OTHER)
> +		*addl_hdrs &=3D ~ICE_FLOW_SEG_HDR_IPV_OTHER;
> +
>  	return true;
>  }
>=20
> @@ -336,6 +687,871 @@ static bool ice_vf_adv_rss_offload_ena(u32 caps)
>  	return !!(caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
>  }
>=20
> +/**
> + * ice_is_hash_cfg_valid - Check whether an RSS hash context is valid
> + * @cfg: RSS hash configuration to test
> + *
> + * Return: true if both @cfg->hash_flds and @cfg->addl_hdrs are non-zero=
;
> false otherwise.
> + */
> +static bool ice_is_hash_cfg_valid(struct ice_rss_hash_cfg *cfg)
> +{
> +	return cfg->hash_flds && cfg->addl_hdrs;
> +}
> +
> +/**
> + * ice_hash_cfg_reset - Reset an RSS hash context
> + * @cfg: RSS hash configuration to reset
> + *
> + * Reset fields of @cfg that store the active rule information.
> + */
> +static void ice_hash_cfg_reset(struct ice_rss_hash_cfg *cfg)
> +{
> +	cfg->hash_flds =3D 0;
> +	cfg->addl_hdrs =3D 0;
> +	cfg->hdr_type =3D ICE_RSS_OUTER_HEADERS;
> +	cfg->symm =3D 0;
> +}
> +
> +/**
> + * ice_hash_cfg_record - Record an RSS hash context
> + * @ctx: destination (global) RSS hash configuration
> + * @cfg: source RSS hash configuration to record
> + *
> + * Copy the active rule information from @cfg into @ctx.
> + */
> +static void ice_hash_cfg_record(struct ice_rss_hash_cfg *ctx,
> +				struct ice_rss_hash_cfg *cfg)
> +{
> +	ctx->hash_flds =3D cfg->hash_flds;
> +	ctx->addl_hdrs =3D cfg->addl_hdrs;
> +	ctx->hdr_type =3D cfg->hdr_type;
> +	ctx->symm =3D cfg->symm;
> +}
> +
> +/**
> + * ice_hash_moveout - Delete an RSS configuration (keep context)
> + * @vf: VF pointer
> + * @cfg: RSS hash configuration
> + *
> + * Return: 0 on success (including when already absent); -ENOENT if @cfg=
 is
> + * invalid or VSI is missing; -EBUSY on hardware removal failure.
> + */
> +static int
> +ice_hash_moveout(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int ret;
> +
> +	if (!ice_is_hash_cfg_valid(cfg) || !vsi)
> +		return -ENOENT;
> +
> +	ret =3D ice_rem_rss_cfg(hw, vsi->idx, cfg);
> +	if (ret && ret !=3D -ENOENT) {
> +		dev_err(dev, "ice_rem_rss_cfg failed for VF %d, VSI %d,
> error:%d\n",
> +			vf->vf_id, vf->lan_vsi_idx, ret);
> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_hash_moveback - Add an RSS hash configuration for a VF
> + * @vf: VF pointer
> + * @cfg: RSS hash configuration to apply
> + *
> + * Add @cfg to @vf if the context is valid and VSI exists; programs HW.
> + *
> + * Return:
> + * * 0 on success
> + * * -ENOENT if @cfg is invalid or VSI is missing
> + * * -EBUSY if hardware programming fails
> + */
> +static int
> +ice_hash_moveback(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int ret;
> +
> +	if (!ice_is_hash_cfg_valid(cfg) || !vsi)
> +		return -ENOENT;
> +
> +	ret =3D ice_add_rss_cfg(hw, vsi, cfg);
> +	if (ret) {
> +		dev_err(dev, "ice_add_rss_cfg failed for VF %d, VSI %d,
> error:%d\n",
> +			vf->vf_id, vf->lan_vsi_idx, ret);
> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_hash_remove - remove a RSS configuration
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS hash configuration
> + *
> + * This function will delete a RSS hash configuration and also delete th=
e
> + * hash context which stores the rule info.
> + */
> +static int
> +ice_hash_remove(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	int ret;
> +
> +	ret =3D ice_hash_moveout(vf, cfg);
> +	if (ret && (ret !=3D -ENOENT))
> +		return ret;
> +
> +	ice_hash_cfg_reset(cfg);
> +
> +	return 0;
> +}
> +
> +struct ice_gtpu_ctx_action {
> +	u32 ctx_idx;
> +	const u32 *remove_list;
> +	int remove_count;
> +	const u32 *moveout_list;
> +	int moveout_count;
> +};
> +
> +/**
> + * ice_add_rss_cfg_pre_gtpu - Pre-process the GTPU RSS configuration
> + * @vf: pointer to the VF info
> + * @ctx: pointer to the context of the GTPU hash
> + * @ctx_idx: index of the hash context
> + *
> + * Pre-processes the GTPU hash configuration before adding a new
> + * hash context. It removes or reorders existing hash configurations tha=
t may
> + * conflict with the new one. For example, if a GTPU_UP or GTPU_DWN rule=
 is
> + * configured after a GTPU_EH rule, the GTPU_EH hash will be matched fir=
st
> due
> + * to TCAM write and match order (top-down). In such cases, the GTPU_EH
> rule
> + * must be moved after the GTPU_UP/DWN rule. Conversely, if a GTPU_EH
> rule is
> + * configured after a GTPU_UP/DWN rule, the UP/DWN rules should be
> removed to
> + * avoid conflict.
> + *
> + * Return: 0 on success or a negative error code on failure
> + */
> +static int ice_add_rss_cfg_pre_gtpu(struct ice_vf *vf,
> +				    struct ice_vf_hash_gtpu_ctx *ctx,
> +				    u32 ctx_idx)
> +{
> +	int ret, i;
> +
> +	static const u32 remove_eh_ip[] =3D {
> +		ICE_HASH_GTPU_CTX_EH_IP_UDP,
> ICE_HASH_GTPU_CTX_EH_IP_TCP,
> +		ICE_HASH_GTPU_CTX_UP_IP,
> ICE_HASH_GTPU_CTX_UP_IP_UDP,
> +		ICE_HASH_GTPU_CTX_UP_IP_TCP,
> ICE_HASH_GTPU_CTX_DW_IP,
> +		ICE_HASH_GTPU_CTX_DW_IP_UDP,
> ICE_HASH_GTPU_CTX_DW_IP_TCP,
> +	};
> +
> +	static const u32 remove_eh_ip_udp[] =3D {
> +		ICE_HASH_GTPU_CTX_UP_IP_UDP,
> +		ICE_HASH_GTPU_CTX_DW_IP_UDP,
> +	};
> +	static const u32 moveout_eh_ip_udp[] =3D {
> +		ICE_HASH_GTPU_CTX_UP_IP,
> +		ICE_HASH_GTPU_CTX_UP_IP_TCP,
> +		ICE_HASH_GTPU_CTX_DW_IP,
> +		ICE_HASH_GTPU_CTX_DW_IP_TCP,
> +	};
> +
> +	static const u32 remove_eh_ip_tcp[] =3D {
> +		ICE_HASH_GTPU_CTX_UP_IP_TCP,
> +		ICE_HASH_GTPU_CTX_DW_IP_TCP,
> +	};
> +	static const u32 moveout_eh_ip_tcp[] =3D {
> +		ICE_HASH_GTPU_CTX_UP_IP,
> +		ICE_HASH_GTPU_CTX_UP_IP_UDP,
> +		ICE_HASH_GTPU_CTX_DW_IP,
> +		ICE_HASH_GTPU_CTX_DW_IP_UDP,
> +	};
> +
> +	static const u32 remove_up_ip[] =3D {
> +		ICE_HASH_GTPU_CTX_UP_IP_UDP,
> +		ICE_HASH_GTPU_CTX_UP_IP_TCP,
> +	};
> +	static const u32 moveout_up_ip[] =3D {
> +		ICE_HASH_GTPU_CTX_EH_IP,
> +		ICE_HASH_GTPU_CTX_EH_IP_UDP,
> +		ICE_HASH_GTPU_CTX_EH_IP_TCP,
> +	};
> +
> +	static const u32 moveout_up_ip_udp_tcp[] =3D {
> +		ICE_HASH_GTPU_CTX_EH_IP,
> +		ICE_HASH_GTPU_CTX_EH_IP_UDP,
> +		ICE_HASH_GTPU_CTX_EH_IP_TCP,
> +	};
> +
> +	static const u32 remove_dw_ip[] =3D {
> +		ICE_HASH_GTPU_CTX_DW_IP_UDP,
> +		ICE_HASH_GTPU_CTX_DW_IP_TCP,
> +	};
> +	static const u32 moveout_dw_ip[] =3D {
> +		ICE_HASH_GTPU_CTX_EH_IP,
> +		ICE_HASH_GTPU_CTX_EH_IP_UDP,
> +		ICE_HASH_GTPU_CTX_EH_IP_TCP,
> +	};
> +
> +	static const struct ice_gtpu_ctx_action actions[] =3D {
> +		{ ICE_HASH_GTPU_CTX_EH_IP, remove_eh_ip,
> +		  ARRAY_SIZE(remove_eh_ip), NULL, 0 },
> +		{ ICE_HASH_GTPU_CTX_EH_IP_UDP, remove_eh_ip_udp,
> +		  ARRAY_SIZE(remove_eh_ip_udp), moveout_eh_ip_udp,
> +		  ARRAY_SIZE(moveout_eh_ip_udp) },
> +		{ ICE_HASH_GTPU_CTX_EH_IP_TCP, remove_eh_ip_tcp,
> +		  ARRAY_SIZE(remove_eh_ip_tcp), moveout_eh_ip_tcp,
> +		  ARRAY_SIZE(moveout_eh_ip_tcp) },
> +		{ ICE_HASH_GTPU_CTX_UP_IP, remove_up_ip,
> +		  ARRAY_SIZE(remove_up_ip), moveout_up_ip,
> +		  ARRAY_SIZE(moveout_up_ip) },
> +		{ ICE_HASH_GTPU_CTX_UP_IP_UDP, NULL, 0,
> moveout_up_ip_udp_tcp,
> +		  ARRAY_SIZE(moveout_up_ip_udp_tcp) },
> +		{ ICE_HASH_GTPU_CTX_UP_IP_TCP, NULL, 0,
> moveout_up_ip_udp_tcp,
> +		  ARRAY_SIZE(moveout_up_ip_udp_tcp) },
> +		{ ICE_HASH_GTPU_CTX_DW_IP, remove_dw_ip,
> +		  ARRAY_SIZE(remove_dw_ip), moveout_dw_ip,
> +		  ARRAY_SIZE(moveout_dw_ip) },
> +		{ ICE_HASH_GTPU_CTX_DW_IP_UDP, NULL, 0,
> moveout_dw_ip,
> +		  ARRAY_SIZE(moveout_dw_ip) },
> +		{ ICE_HASH_GTPU_CTX_DW_IP_TCP, NULL, 0,
> moveout_dw_ip,
> +		  ARRAY_SIZE(moveout_dw_ip) },
> +	};
> +
> +	for (i =3D 0; i < ARRAY_SIZE(actions); i++) {
> +		if (actions[i].ctx_idx !=3D ctx_idx)
> +			continue;
> +
> +		if (actions[i].remove_list) {
> +			for (int j =3D 0; j < actions[i].remove_count; j++) {
> +				u16 rm =3D actions[i].remove_list[j];
> +
> +				ret =3D ice_hash_remove(vf, &ctx->ctx[rm]);
> +				if (ret && ret !=3D -ENOENT)
> +					return ret;
> +			}
> +		}
> +
> +		if (actions[i].moveout_list) {
> +			for (int j =3D 0; j < actions[i].moveout_count; j++) {
> +				u16 mv =3D actions[i].moveout_list[j];
> +
> +				ret =3D ice_hash_moveout(vf, &ctx->ctx[mv]);
> +				if (ret && ret !=3D -ENOENT)
> +					return ret;
> +			}
> +		}
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_add_rss_cfg_pre_ip - Pre-process IP-layer RSS configuration
> + * @vf: VF pointer
> + * @ctx: IP L4 hash context (ESP/UDP-ESP/AH/PFCP and UDP/TCP/SCTP)
> + *
> + * Remove covered/recorded IP RSS configurations prior to adding a new
> one.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_add_rss_cfg_pre_ip(struct ice_vf *vf, struct ice_vf_hash_ip_ctx *ctx=
)
> +{
> +	int i, ret;
> +
> +	for (i =3D 1; i < ICE_HASH_IP_CTX_MAX; i++)
> +		if (ice_is_hash_cfg_valid(&ctx->ctx[i])) {
> +			ret =3D ice_hash_remove(vf, &ctx->ctx[i]);
> +
> +			if (ret)
> +				return ret;
> +		}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_calc_gtpu_ctx_idx - Calculate GTPU hash context index
> + * @hdrs: Bitmask of protocol headers prefixed with ICE_FLOW_SEG_HDR_*
> + *
> + * Determine the GTPU hash context index based on the combination of
> + * encapsulation headers (GTPU_EH, GTPU_UP, GTPU_DWN) and transport
> + * protocols (UDP, TCP) within IPv4 or IPv6 flows.
> + *
> + * Return: A valid context index (0-8) if the header combination is supp=
orted,
> + *         or ICE_HASH_GTPU_CTX_MAX if the combination is invalid.
> + */
> +static enum ice_hash_gtpu_ctx_type ice_calc_gtpu_ctx_idx(u32 hdrs)
> +{
> +	u32 eh_idx, ip_idx;
> +
> +	if (hdrs & ICE_FLOW_SEG_HDR_GTPU_EH)
> +		eh_idx =3D 0;
> +	else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_UP)
> +		eh_idx =3D 1;
> +	else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_DWN)
> +		eh_idx =3D 2;
> +	else
> +		return ICE_HASH_GTPU_CTX_MAX;
> +
> +	ip_idx =3D 0;
> +	if (hdrs & ICE_FLOW_SEG_HDR_UDP)
> +		ip_idx =3D 1;
> +	else if (hdrs & ICE_FLOW_SEG_HDR_TCP)
> +		ip_idx =3D 2;
> +
> +	if (hdrs & (ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6))
> +		return eh_idx * 3 + ip_idx;
> +	else
> +		return ICE_HASH_GTPU_CTX_MAX;
> +}
> +
> +/**
> + * ice_map_ip_ctx_idx - map the index of the IP L4 hash context
> + * @hdrs: protocol headers prefix with ICE_FLOW_SEG_HDR_XXX.
> + *
> + * The IP L4 hash context use the index to classify for IPv4/IPv6 with
> + * ESP/UDP_ESP/AH/PFCP and non-tunnel UDP/TCP/SCTP
> + * this function map the index based on the protocol headers.
> + */
> +static u8 ice_map_ip_ctx_idx(u32 hdrs)
> +{
> +	u8 i;
> +
> +	static struct {
> +		u32 hdrs;
> +		u8 ctx_idx;
> +	} ip_ctx_idx_map[] =3D {
> +		{ ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_ESP,
> +			ICE_HASH_IP_CTX_IP_ESP },
> +		{ ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_NAT_T_ESP,
> +			ICE_HASH_IP_CTX_IP_UDP_ESP },
> +		{ ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_AH,
> +			ICE_HASH_IP_CTX_IP_AH },
> +		{ ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_PFCP_SESSION,
> +			ICE_HASH_IP_CTX_IP_PFCP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_UDP,
> +			ICE_HASH_IP_CTX_IP_UDP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_TCP,
> +			ICE_HASH_IP_CTX_IP_TCP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_SCTP,
> +			ICE_HASH_IP_CTX_IP_SCTP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER,
> +			ICE_HASH_IP_CTX_IP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_ESP,
> +			ICE_HASH_IP_CTX_IP_ESP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_NAT_T_ESP,
> +			ICE_HASH_IP_CTX_IP_UDP_ESP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_AH,
> +			ICE_HASH_IP_CTX_IP_AH },
> +		{ ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER |
> +			ICE_FLOW_SEG_HDR_PFCP_SESSION,
> +			ICE_HASH_IP_CTX_IP_PFCP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_UDP,
> +			ICE_HASH_IP_CTX_IP_UDP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_TCP,
> +			ICE_HASH_IP_CTX_IP_TCP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_SCTP,
> +			ICE_HASH_IP_CTX_IP_SCTP },
> +		{ ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN |
> +			ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER,
> +			ICE_HASH_IP_CTX_IP },
> +		/* the remaining mappings are used for default RSS */
> +		{ ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_UDP,
> +			ICE_HASH_IP_CTX_IP_UDP },
> +		{ ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_TCP,
> +			ICE_HASH_IP_CTX_IP_TCP },
> +		{ ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_SCTP,
> +			ICE_HASH_IP_CTX_IP_SCTP },
> +		{ ICE_FLOW_SEG_HDR_IPV4 |
> ICE_FLOW_SEG_HDR_IPV_OTHER,
> +			ICE_HASH_IP_CTX_IP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 | ICE_FLOW_SEG_HDR_UDP,
> +			ICE_HASH_IP_CTX_IP_UDP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 | ICE_FLOW_SEG_HDR_TCP,
> +			ICE_HASH_IP_CTX_IP_TCP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 | ICE_FLOW_SEG_HDR_SCTP,
> +			ICE_HASH_IP_CTX_IP_SCTP },
> +		{ ICE_FLOW_SEG_HDR_IPV6 |
> ICE_FLOW_SEG_HDR_IPV_OTHER,
> +			ICE_HASH_IP_CTX_IP },
> +	};
> +
> +	for (i =3D 0; i < ARRAY_SIZE(ip_ctx_idx_map); i++) {
> +		if (hdrs =3D=3D ip_ctx_idx_map[i].hdrs)
> +			return ip_ctx_idx_map[i].ctx_idx;
> +	}
> +
> +	return ICE_HASH_IP_CTX_MAX;
> +}
> +
> +/**
> + * ice_add_rss_cfg_pre - Prepare RSS configuration context for a VF
> + * @vf: pointer to the VF structure
> + * @cfg: pointer to the RSS hash configuration
> + *
> + * Prepare the RSS hash context for a given VF based on the additional
> + * protocol headers specified in @cfg. This includes pre-configuration
> + * for IP and GTPU-based flows.
> + *
> + * If the configuration matches a known IP context, the function sets up
> + * the appropriate IP hash context. If the configuration includes GTPU
> + * headers, it prepares the GTPU-specific context accordingly.
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +static int
> +ice_add_rss_cfg_pre(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	u32 ice_gtpu_ctx_idx =3D ice_calc_gtpu_ctx_idx(cfg->addl_hdrs);
> +	u8 ip_ctx_idx =3D ice_map_ip_ctx_idx(cfg->addl_hdrs);
> +
> +	if (ip_ctx_idx =3D=3D ICE_HASH_IP_CTX_IP) {
> +		int ret =3D 0;
> +
> +		if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4)
> +			ret =3D ice_add_rss_cfg_pre_ip(vf, &vf->hash_ctx.v4);
> +		else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6)
> +			ret =3D ice_add_rss_cfg_pre_ip(vf, &vf->hash_ctx.v6);
> +
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4) {
> +		return ice_add_rss_cfg_pre_gtpu(vf, &vf->hash_ctx.ipv4,
> +						ice_gtpu_ctx_idx);
> +	} else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6) {
> +		return ice_add_rss_cfg_pre_gtpu(vf, &vf->hash_ctx.ipv6,
> +						ice_gtpu_ctx_idx);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_add_rss_cfg_post_gtpu - Post-process GTPU RSS configuration
> + * @vf: pointer to the VF info
> + * @ctx: pointer to the context of the GTPU hash
> + * @cfg: pointer to the RSS hash configuration
> + * @ctx_idx: index of the hash context
> + *
> + * Post-processes the GTPU hash configuration after a new hash
> + * context has been successfully added. It updates the context with the =
new
> + * configuration and restores any previously removed hash contexts that
> need
> + * to be re-applied. This ensures proper TCAM rule ordering and avoids
> + * conflicts between overlapping GTPU rules.
> + *
> + * Return: 0 on success or a negative error code on failure
> + */
> +static int ice_add_rss_cfg_post_gtpu(struct ice_vf *vf,
> +				     struct ice_vf_hash_gtpu_ctx *ctx,
> +				     struct ice_rss_hash_cfg *cfg, u32 ctx_idx)
> +{
> +	/*
> +	 * GTPU hash moveback lookup table indexed by context ID.
> +	 * Each entry is a bitmap indicating which contexts need moveback
> +	 * operations when the corresponding context index is processed.
> +	 */
> +	static const unsigned long
> +		ice_gtpu_moveback_tbl[ICE_HASH_GTPU_CTX_MAX] =3D {
> +			[ICE_HASH_GTPU_CTX_EH_IP] =3D 0,
> +			[ICE_HASH_GTPU_CTX_EH_IP_UDP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_UP_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_UP_IP_TCP) |
> +				BIT(ICE_HASH_GTPU_CTX_DW_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_DW_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_EH_IP_TCP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_UP_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_UP_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_DW_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_DW_IP_UDP),
> +			[ICE_HASH_GTPU_CTX_UP_IP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_UP_IP_UDP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_UP_IP_TCP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_DW_IP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_DW_IP_UDP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +			[ICE_HASH_GTPU_CTX_DW_IP_TCP] =3D
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_UDP) |
> +				BIT(ICE_HASH_GTPU_CTX_EH_IP_TCP),
> +		};
> +	unsigned long moveback_mask;
> +	int ret;
> +	int i;
> +
> +	if (unlikely(ctx_idx >=3D ICE_HASH_GTPU_CTX_MAX))
> +		return 0;
> +
> +	ctx->ctx[ctx_idx].addl_hdrs =3D cfg->addl_hdrs;
> +	ctx->ctx[ctx_idx].hash_flds =3D cfg->hash_flds;
> +	ctx->ctx[ctx_idx].hdr_type =3D cfg->hdr_type;
> +	ctx->ctx[ctx_idx].symm =3D cfg->symm;
> +
> +	moveback_mask =3D ice_gtpu_moveback_tbl[ctx_idx];
> +	for_each_set_bit(i, &moveback_mask, ICE_HASH_GTPU_CTX_MAX) {
> +		ret =3D ice_hash_moveback(vf, &ctx->ctx[i]);
> +		if (ret && ret !=3D -ENOENT)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +ice_add_rss_cfg_post(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	u32 ice_gtpu_ctx_idx =3D ice_calc_gtpu_ctx_idx(cfg->addl_hdrs);
> +	u8 ip_ctx_idx =3D ice_map_ip_ctx_idx(cfg->addl_hdrs);
> +
> +	if (ip_ctx_idx && ip_ctx_idx < ICE_HASH_IP_CTX_MAX) {
> +		if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4)
> +			ice_hash_cfg_record(&vf->hash_ctx.v4.ctx[ip_ctx_idx],
> cfg);
> +		else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6)
> +			ice_hash_cfg_record(&vf->hash_ctx.v6.ctx[ip_ctx_idx],
> cfg);
> +	}
> +
> +	if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4) {
> +		return ice_add_rss_cfg_post_gtpu(vf, &vf->hash_ctx.ipv4,
> +						 cfg, ice_gtpu_ctx_idx);
> +	} else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6) {
> +		return ice_add_rss_cfg_post_gtpu(vf, &vf->hash_ctx.ipv6,
> +						 cfg, ice_gtpu_ctx_idx);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_rem_rss_cfg_post - post-process the RSS configuration
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS hash configuration
> + *
> + * Post process the RSS hash configuration after deleting a hash
> + * config. Such as, it will reset the hash context for the GTPU hash.
> + */
> +static void
> +ice_rem_rss_cfg_post(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	u32 ice_gtpu_ctx_idx =3D ice_calc_gtpu_ctx_idx(cfg->addl_hdrs);
> +	u8 ip_ctx_idx =3D ice_map_ip_ctx_idx(cfg->addl_hdrs);
> +
> +	if (ip_ctx_idx && ip_ctx_idx < ICE_HASH_IP_CTX_MAX) {
> +		if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4)
> +			ice_hash_cfg_reset(&vf->hash_ctx.v4.ctx[ip_ctx_idx]);
> +		else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6)
> +			ice_hash_cfg_reset(&vf->hash_ctx.v6.ctx[ip_ctx_idx]);
> +	}
> +
> +	if (ice_gtpu_ctx_idx >=3D ICE_HASH_GTPU_CTX_MAX)
> +		return;
> +
> +	if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV4)
> +		ice_hash_cfg_reset(&vf->hash_ctx.ipv4.ctx[ice_gtpu_ctx_idx]);
> +	else if (cfg->addl_hdrs & ICE_FLOW_SEG_HDR_IPV6)
> +		ice_hash_cfg_reset(&vf->hash_ctx.ipv6.ctx[ice_gtpu_ctx_idx]);
> +}
> +
> +/**
> + * ice_rem_rss_cfg_wrap - Wrapper for deleting an RSS configuration
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS hash configuration
> + *
> + * Wrapper function to delete a flow profile base on an RSS configuratio=
n,
> + * and also post process the hash context base on the rollback mechanism
> + * which handle some rules conflict by ice_add_rss_cfg_wrap.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_rem_rss_cfg_wrap(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int ret;
> +
> +	ret =3D ice_rem_rss_cfg(hw, vsi->idx, cfg);
> +	/* We just ignore -ENOENT, because if two configurations share the
> same
> +	 * profile remove one of them actually removes both, since the
> +	 * profile is deleted.
> +	 */
> +	if (ret && ret !=3D -ENOENT) {
> +		dev_err(dev, "ice_rem_rss_cfg failed for VF %d, VSI %d,
> error:%d\n",
> +			vf->vf_id, vf->lan_vsi_idx, ret);
> +		return ret;
> +	}
> +
> +	ice_rem_rss_cfg_post(vf, cfg);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_add_rss_cfg_wrap - Wrapper for adding an RSS configuration
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS hash configuration
> + *
> + * Add a flow profile based on an RSS configuration. Use a rollback
> + * mechanism to handle rule conflicts due to TCAM
> + * write sequence from top to down.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_add_rss_cfg_wrap(struct ice_vf *vf, struct ice_rss_hash_cfg *cfg)
> +{
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int ret;
> +
> +	if (ice_add_rss_cfg_pre(vf, cfg))
> +		return -EINVAL;
> +
> +	ret =3D ice_add_rss_cfg(hw, vsi, cfg);
> +	if (ret) {
> +		dev_err(dev, "ice_add_rss_cfg failed for VF %d, VSI %d,
> error:%d\n",
> +			vf->vf_id, vf->lan_vsi_idx, ret);
> +		return ret;
> +	}
> +
> +	if (ice_add_rss_cfg_post(vf, cfg))
> +		ret =3D -EINVAL;
> +
> +	return ret;
> +}
> +
> +/**
> + * ice_parse_raw_rss_pattern - Parse raw pattern spec and mask for RSS
> + * @vf: pointer to the VF info
> + * @proto: pointer to the virtchnl protocol header
> + * @raw_cfg: pointer to the RSS raw pattern configuration
> + *
> + * Parser function to get spec and mask from virtchnl message, and parse
> + * them to get the corresponding profile and offset. The profile is used
> + * to add RSS configuration.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_parse_raw_rss_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs
> *proto,
> +			  struct ice_rss_raw_cfg *raw_cfg)
> +{
> +	struct ice_parser_result pkt_parsed;
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	struct ice_parser_profile prof;
> +	u16 pkt_len;
> +	struct ice_parser *psr;
> +	u8 *pkt_buf, *msk_buf;
> +	int ret =3D 0;
> +
> +	pkt_len =3D proto->raw.pkt_len;
> +	if (!pkt_len)
> +		return -EINVAL;
> +	if (pkt_len > VIRTCHNL_MAX_SIZE_RAW_PACKET)
> +		pkt_len =3D VIRTCHNL_MAX_SIZE_RAW_PACKET;
> +
> +	pkt_buf =3D kzalloc(pkt_len, GFP_KERNEL);
> +	msk_buf =3D kzalloc(pkt_len, GFP_KERNEL);
> +	if (!pkt_buf || !msk_buf) {
> +		ret =3D -ENOMEM;
> +		goto free_alloc;
> +	}
> +
> +	memcpy(pkt_buf, proto->raw.spec, pkt_len);
> +	memcpy(msk_buf, proto->raw.mask, pkt_len);
> +
> +	psr =3D ice_parser_create(hw);
> +	if (IS_ERR(psr)) {
> +		ret =3D PTR_ERR(psr);
> +		goto parser_destroy;
> +	}
> +
> +	ret =3D ice_parser_run(psr, pkt_buf, pkt_len, &pkt_parsed);
> +	if (ret)
> +		goto parser_destroy;
> +
> +	ret =3D ice_parser_profile_init(&pkt_parsed, pkt_buf, msk_buf,
> +				      pkt_len, ICE_BLK_RSS, &prof);
> +	if (ret)
> +		goto parser_destroy;
> +
> +	memcpy(&raw_cfg->prof, &prof, sizeof(prof));
> +
> +parser_destroy:
> +	ice_parser_destroy(psr);
> +free_alloc:
> +	kfree(pkt_buf);
> +	kfree(msk_buf);
> +	return ret;
> +}
> +
> +/**
> + * ice_add_raw_rss_cfg - add RSS configuration for raw pattern
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS raw pattern configuration
> + *
> + * This function adds the RSS configuration for raw pattern.
> + * Check if current profile is matched. If not, remove the old
> + * one and add the new profile to HW directly. Update the symmetric
> + * hash configuration as well.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_add_raw_rss_cfg(struct ice_vf *vf, struct ice_rss_raw_cfg *cfg)
> +{
> +	struct ice_parser_profile *prof =3D &cfg->prof;
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_rss_prof_info *rss_prof;
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int i, ptg, ret =3D 0;
> +	u16 vsi_handle;
> +	u64 id;
> +
> +	vsi_handle =3D vf->lan_vsi_idx;
> +	id =3D find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> +
> +	ptg =3D hw->blk[ICE_BLK_RSS].xlt1.t[id];
> +	rss_prof =3D &vf->rss_prof_info[ptg];
> +
> +	/* check if ptg already has a profile */
> +	if (rss_prof->prof.fv_num) {
> +		for (i =3D 0; i < ICE_MAX_FV_WORDS; i++) {
> +			if (rss_prof->prof.fv[i].proto_id !=3D
> +			    prof->fv[i].proto_id ||
> +			    rss_prof->prof.fv[i].offset !=3D
> +			    prof->fv[i].offset)
> +				break;
> +		}
> +
> +		/* current profile is matched, check symmetric hash */
> +		if (i =3D=3D ICE_MAX_FV_WORDS) {
> +			if (rss_prof->symm !=3D cfg->symm)
> +				goto update_symm;
> +			return ret;
> +		}
> +
> +		/* current profile is not matched, remove it */
> +		ret =3D
> +		ice_rem_prof_id_flow(hw, ICE_BLK_RSS,
> +				     ice_get_hw_vsi_num(hw, vsi_handle),
> +				     id);
> +		if (ret) {
> +			dev_err(dev, "remove RSS flow failed\n");
> +			return ret;
> +		}
> +
> +		ret =3D ice_rem_prof(hw, ICE_BLK_RSS, id);
> +		if (ret) {
> +			dev_err(dev, "remove RSS profile failed\n");
> +			return ret;
> +		}
> +	}
> +
> +	/* add new profile */
> +	ret =3D ice_flow_set_parser_prof(hw, vsi_handle, 0, prof, ICE_BLK_RSS);
> +	if (ret) {
> +		dev_err(dev, "HW profile add failed\n");
> +		return ret;
> +	}
> +
> +	memcpy(&rss_prof->prof, prof, sizeof(struct ice_parser_profile));
> +
> +update_symm:
> +	rss_prof->symm =3D cfg->symm;
> +	ice_rss_update_raw_symm(hw, cfg, id);
> +	return ret;
> +}
> +
> +/**
> + * ice_rem_raw_rss_cfg - remove RSS configuration for raw pattern
> + * @vf: pointer to the VF info
> + * @cfg: pointer to the RSS raw pattern configuration
> + *
> + * This function removes the RSS configuration for raw pattern.
> + * Check if vsi group is already removed first. If not, remove the
> + * profile.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_rem_raw_rss_cfg(struct ice_vf *vf, struct ice_rss_raw_cfg *cfg)
> +{
> +	struct ice_parser_profile *prof =3D &cfg->prof;
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_hw *hw =3D &vf->pf->hw;
> +	int ptg, ret =3D 0;
> +	u16 vsig, vsi;
> +	u64 id;
> +
> +	id =3D find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> +
> +	ptg =3D hw->blk[ICE_BLK_RSS].xlt1.t[id];
> +
> +	memset(&vf->rss_prof_info[ptg], 0,
> +	       sizeof(struct ice_rss_prof_info));
> +
> +	/* check if vsig is already removed */
> +	vsi =3D ice_get_hw_vsi_num(hw, vf->lan_vsi_idx);
> +	if (vsi >=3D ICE_MAX_VSI) {
> +		ret =3D -EINVAL;
> +		goto err;
> +	}
> +
> +	vsig =3D hw->blk[ICE_BLK_RSS].xlt2.vsis[vsi].vsig;
> +	if (vsig) {
> +		ret =3D ice_rem_prof_id_flow(hw, ICE_BLK_RSS, vsi, id);
> +		if (ret)
> +			goto err;
> +
> +		ret =3D ice_rem_prof(hw, ICE_BLK_RSS, id);
> +		if (ret)
> +			goto err;
> +	}
> +
> +	return ret;
> +
> +err:
> +	dev_err(dev, "HW profile remove failed\n");
> +	return ret;
> +}
> +
>  /**
>   * ice_vc_handle_rss_cfg
>   * @vf: pointer to the VF info
> @@ -352,6 +1568,8 @@ int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg=
,
> bool add)
>  	struct device *dev =3D ice_pf_to_dev(vf->pf);
>  	struct ice_hw *hw =3D &vf->pf->hw;
>  	struct ice_vsi *vsi;
> +	u8 hash_type;
> +	bool symm;
>=20
>  	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
>  		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS is
> not supported by the PF\n",
> @@ -387,49 +1605,40 @@ int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8
> *msg, bool add)
>  		goto error_param;
>  	}
>=20
> -	if (!ice_vc_validate_pattern(vf, &rss_cfg->proto_hdrs)) {
> -		v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> +	if (rss_cfg->rss_algorithm =3D=3D VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
> +		hash_type =3D add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
> +				  ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> +
> +		v_ret =3D ice_vc_rss_hash_update(hw, vsi, hash_type);
>  		goto error_param;
>  	}
>=20
> -	if (rss_cfg->rss_algorithm =3D=3D VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
> -		struct ice_vsi_ctx *ctx;
> -		u8 lut_type, hash_type;
> -		int status;
> +	hash_type =3D add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ :
> +			  ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> +	v_ret =3D ice_vc_rss_hash_update(hw, vsi, hash_type);
> +	if (v_ret)
> +		goto error_param;
>=20
> -		lut_type =3D ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
> -		hash_type =3D add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
> -				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> +	symm =3D rss_cfg->rss_algorithm =3D=3D
> VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC;
> +	/* Configure RSS hash for raw pattern */
> +	if (rss_cfg->proto_hdrs.tunnel_level =3D=3D 0 &&
> +	    rss_cfg->proto_hdrs.count =3D=3D 0) {
> +		struct ice_rss_raw_cfg raw_cfg;
>=20
> -		ctx =3D kzalloc(sizeof(*ctx), GFP_KERNEL);
> -		if (!ctx) {
> -			v_ret =3D VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +		if (ice_parse_raw_rss_pattern(vf, &rss_cfg->proto_hdrs,
> +					      &raw_cfg)) {
> +			v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
>  			goto error_param;
>  		}
>=20
> -		ctx->info.q_opt_rss =3D
> -			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M,
> lut_type) |
> -			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M,
> hash_type);
> -
> -		/* Preserve existing queueing option setting */
> -		ctx->info.q_opt_rss |=3D (vsi->info.q_opt_rss &
> -
> ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M);
> -		ctx->info.q_opt_tc =3D vsi->info.q_opt_tc;
> -		ctx->info.q_opt_flags =3D vsi->info.q_opt_rss;
> -
> -		ctx->info.valid_sections =3D
> -
> 	cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
> -
> -		status =3D ice_update_vsi(hw, vsi->idx, ctx, NULL);
> -		if (status) {
> -			dev_err(dev, "update VSI for RSS failed, err %d aq_err
> %s\n",
> -				status, libie_aq_str(hw-
> >adminq.sq_last_status));
> -			v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> +		if (add) {
> +			raw_cfg.symm =3D symm;
> +			if (ice_add_raw_rss_cfg(vf, &raw_cfg))
> +				v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
>  		} else {
> -			vsi->info.q_opt_rss =3D ctx->info.q_opt_rss;
> +			if (ice_rem_raw_rss_cfg(vf, &raw_cfg))
> +				v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
>  		}
> -
> -		kfree(ctx);
>  	} else {
>  		struct ice_rss_hash_cfg cfg;
>=20
> @@ -448,24 +1657,12 @@ int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8
> *msg, bool add)
>  		}
>=20
>  		if (add) {
> -			if (ice_add_rss_cfg(hw, vsi, &cfg)) {
> +			cfg.symm =3D symm;
> +			if (ice_add_rss_cfg_wrap(vf, &cfg))
>  				v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> -				dev_err(dev, "ice_add_rss_cfg failed for vsi =3D
> %d, v_ret =3D %d\n",
> -					vsi->vsi_num, v_ret);
> -			}
>  		} else {
> -			int status;
> -
> -			status =3D ice_rem_rss_cfg(hw, vsi->idx, &cfg);
> -			/* We just ignore -ENOENT, because if two
> configurations
> -			 * share the same profile remove one of them actually
> -			 * removes both, since the profile is deleted.
> -			 */
> -			if (status && status !=3D -ENOENT) {
> +			if (ice_rem_rss_cfg_wrap(vf, &cfg))
>  				v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> -				dev_err(dev, "ice_rem_rss_cfg failed for VF
> ID:%d, error:%d\n",
> -					vf->vf_id, status);
> -			}
>  		}
>  	}
>=20
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 5be1881..11bdab5 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -1253,6 +1253,17 @@ enum virtchnl_proto_hdr_type {
>  	VIRTCHNL_PROTO_HDR_ESP,
>  	VIRTCHNL_PROTO_HDR_AH,
>  	VIRTCHNL_PROTO_HDR_PFCP,
> +	VIRTCHNL_PROTO_HDR_GTPC,
> +	VIRTCHNL_PROTO_HDR_ECPRI,
> +	VIRTCHNL_PROTO_HDR_L2TPV2,
> +	VIRTCHNL_PROTO_HDR_PPP,
> +	/* IPv4 and IPv6 Fragment header types are only associated to
> +	 * VIRTCHNL_PROTO_HDR_IPV4 and VIRTCHNL_PROTO_HDR_IPV6
> respectively,
> +	 * cannot be used independently.
> +	 */
> +	VIRTCHNL_PROTO_HDR_IPV4_FRAG,
> +	VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,
> +	VIRTCHNL_PROTO_HDR_GRE,
>  };
>=20
>  /* Protocol header field within a protocol header. */
> @@ -1275,6 +1286,7 @@ enum virtchnl_proto_hdr_field {
>  	VIRTCHNL_PROTO_HDR_IPV4_DSCP,
>  	VIRTCHNL_PROTO_HDR_IPV4_TTL,
>  	VIRTCHNL_PROTO_HDR_IPV4_PROT,
> +	VIRTCHNL_PROTO_HDR_IPV4_CHKSUM,
>  	/* IPV6 */
>  	VIRTCHNL_PROTO_HDR_IPV6_SRC =3D
>  		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6),
> @@ -1282,18 +1294,34 @@ enum virtchnl_proto_hdr_field {
>  	VIRTCHNL_PROTO_HDR_IPV6_TC,
>  	VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT,
>  	VIRTCHNL_PROTO_HDR_IPV6_PROT,
> +	/* IPV6 Prefix */
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_DST,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_DST,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_DST,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_DST,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_SRC,
> +	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_DST,
>  	/* TCP */
>  	VIRTCHNL_PROTO_HDR_TCP_SRC_PORT =3D
>  		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_TCP),
>  	VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
> +	VIRTCHNL_PROTO_HDR_TCP_CHKSUM,
>  	/* UDP */
>  	VIRTCHNL_PROTO_HDR_UDP_SRC_PORT =3D
>  		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_UDP),
>  	VIRTCHNL_PROTO_HDR_UDP_DST_PORT,
> +	VIRTCHNL_PROTO_HDR_UDP_CHKSUM,
>  	/* SCTP */
>  	VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT =3D
>  		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_SCTP),
>  	VIRTCHNL_PROTO_HDR_SCTP_DST_PORT,
> +	VIRTCHNL_PROTO_HDR_SCTP_CHKSUM,
>  	/* GTPU_IP */
>  	VIRTCHNL_PROTO_HDR_GTPU_IP_TEID =3D
>=20
> 	PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_IP),
> @@ -1317,6 +1345,28 @@ enum virtchnl_proto_hdr_field {
>  	VIRTCHNL_PROTO_HDR_PFCP_S_FIELD =3D
>  		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PFCP),
>  	VIRTCHNL_PROTO_HDR_PFCP_SEID,
> +	/* GTPC */
> +	VIRTCHNL_PROTO_HDR_GTPC_TEID =3D
> +		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPC),
> +	/* ECPRI */
> +	VIRTCHNL_PROTO_HDR_ECPRI_MSG_TYPE =3D
> +		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_ECPRI),
> +	VIRTCHNL_PROTO_HDR_ECPRI_PC_RTC_ID,
> +	/* IPv4 Dummy Fragment */
> +	VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID =3D
> +
> 	PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV4_FRAG),
> +	/* IPv6 Extension Fragment */
> +	VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG_PKID =3D
> +
> 	PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG),
> +	/* GTPU_DWN/UP */
> +	VIRTCHNL_PROTO_HDR_GTPU_DWN_QFI =3D
> +
> 	PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_
> DWN),
> +	VIRTCHNL_PROTO_HDR_GTPU_UP_QFI =3D
> +
> 	PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_
> UP),
> +	/* L2TPv2 */
> +	VIRTCHNL_PROTO_HDR_L2TPV2_SESS_ID =3D
> +		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_L2TPV2),
> +	VIRTCHNL_PROTO_HDR_L2TPV2_LEN_SESS_ID,
>  };
>=20
>  struct virtchnl_proto_hdr {
> --
> 2.47.1


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


