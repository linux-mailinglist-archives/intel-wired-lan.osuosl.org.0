Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mH28BR1rFWoBVAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 11:42:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E035D38B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 11:42:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A20AE40F74;
	Tue, 26 May 2026 09:42:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuWLQp6usdZY; Tue, 26 May 2026 09:42:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E992B40F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779788568;
	bh=1nn7AUupkN/NSaLASz81qTi1sAPRk5lRdRh21dA7z8U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CJu10CTFb70CCGkE6odvcekPuJjio53WhjP8sCfVpBTUK4WbhNRhoAB9u0fv/zaex
	 tatiJ7K+0XWaQ+1Otaz85s1HMyyFf1BshZ/4cgtv+87Uo8ay0uyZG7alBQmcADEiOH
	 NcneTKLpU/4HbII4oqKGpKSUGiLJg/h7L0DGHucqYk6n93BkcFj5J/sZvf9E8navXl
	 eK/YoEs1nrKRWGr7nPyK67W4pTSzdfhRqbma1Hm04ftNPxvMixZ6L7UL7lchBHuc4+
	 qlflrgrUdmF++vBK+DhuMYNXbw+3w2CJ7dzGSpgvFCCv8MmqIIk9T7B1pPnD8u5OVg
	 RQbEvhSHMrBoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E992B40F6B;
	Tue, 26 May 2026 09:42:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D87221F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BB02407BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:42:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qWq5DdrxXBQk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 09:42:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 50E0140183
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50E0140183
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50E0140183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:42:46 +0000 (UTC)
X-CSE-ConnectionGUID: l0CEv/tIRdCcTFD6oHwbKw==
X-CSE-MsgGUID: zkFBKiXrR1mKSB+o3WffNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="92068419"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="92068419"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:42:46 -0700
X-CSE-ConnectionGUID: 10CgvIu5Ti2EbLtFnBjL+A==
X-CSE-MsgGUID: u8X7kvNbRqCAtQ0jN3iYyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="237454803"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:42:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:42:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 02:42:44 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:42:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EXTKRzHsGD0PBlNLYPboWE+RxyMSM5Uxw/TU1LxM3v52usomvmLnk2dQlfF0yO1tyAyd1+wm4MSQ1JV0A76wRFjGeTOUrqmaiqLFXuUgMq1OoaW37IMsIZrhzi5ER8Fw4ybca20LdECCUccBFsERetA7uIyWUzKbcFcmE0PpBhUTUTb1PYADMMncQasGc7nyIr+iKMMfVDup4Bwlod362bqhfeFvLS2kWdxLue4BqHrlWtkDAll/yiQWmzU+DtZtp001gn9/o1Xg6njrkrhXT3hN5dtor4/6ye3kHbHIb2AwqjyOjK0ywLYMV5TKRQHSVKNJ8tBB0bvmhsARPL+JNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nn7AUupkN/NSaLASz81qTi1sAPRk5lRdRh21dA7z8U=;
 b=LRw6/p2BRX3pikz77Q1Ns5Z6tryRo+3GoRrjUC0oSFdIbc5yhbyiniD+R9Pyvtv1U9MHq80b+vaPvHv9muAYpEZhgQrpVrxr1rhFhZZCxneerP+e5emOrV1Yx0Zv5aAh7veRpDi13EG5ufDXUnlhcPuCqghAR7kp6EvTC/Qfghkqd2hzDOnqosWSC7xUFEWgYx89l7r6d4t14MgEnhaLw1vsZH/Nl7umJmOb5Leyyztc6dFgKYvGc15tLvXh69a/iOSdtsNOhlGLjiDn8wYou18oD9xWvZHSWnndtXFsv/BHrW/U9mTQgrCVa/petlFHujBrvSop0dJ/d1CZ0ngUfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 09:42:38 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0048.016; Tue, 26 May 2026
 09:42:38 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v10 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
Thread-Index: AQHc6D414cb+am6eS0GRknMI2tbQz7YW1vKAgAlAXqA=
Date: Tue, 26 May 2026 09:42:38 +0000
Message-ID: <IA1PR11MB621921F1D42E54263072AA34920B2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260520094618.3934384-1-grzegorz.nitka@intel.com>
 <IA3PR11MB8986654A0580BB728596FDCDE5012@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986654A0580BB728596FDCDE5012@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SA3PR11MB7555:EE_
x-ms-office365-filtering-correlation-id: 0a403c86-4ff9-4e18-da9e-08debb0b1fd3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|3023799007|4143699003|11063799006|6133799003;
x-microsoft-antispam-message-info: iN/mjXnLBIIF55CRVetdZ3nyS30t1T7YES1voF5E5/1M0bHkEvzZ6J42e5s9hTI9h4QOzYLEyurDMXuywtG4qPsAmP3V6Opl1vqwe416Yel64g/RyfzYKjm+XiIeZOXLfXxuFBV8Vrmf+ZqWYJC2BaCdCQ12BorFGCnyKTmZQBk3IYiAp9yh22ZdKYGtJUwzknoojwyTuEHZMGYwOtdf30+VbmTJGl0SDk9Frte7dhHATsj8ESUPRE+zHduXgb+wKMEfmHWkuU8mSeblMwo+3jJ5ye50eJu9YYTBpnE+erwzEN5uPyToFtu1wUeWXQpclD2uuOcKQ5cR+8A56Uh21mlqzsQHCIfBvSyttyTxpOGZ9cx+GU215RQGL7eu7K2c/xOkKoiX+l92SkOVySw/fIhHBeUY+8zH0l4wYBFLjkn2H2ViPrKiUtFx7nJCRT9KzXUSK/529P26oPsyb9Hn2Z8df1z9YFp1Rk/ckKe6RthXJSOEr6+ZH3an0C9hIuCar3/aQ8B2EDG1pGGNatDiu+zpj5LqnIWkIUV9X5BX+8fwlC+ZdEvT2XHXEOc66ubSdodrMrqx0HZBn1ZfTT7r+N5nOhgJrmjhRWi87hIDmbdvFLxGeWWALaTk+SQC69GH3JP5JaocP2Cfju2pWYdNBhU7HFGDyA6x2fEVLHmZM5Gqvh0MBzbWQFKQa8K87Yq3JVLfQpC3/5eTDEC9Md0wRDifeoLfY8ifK0y2TGb/MkgFXLIs5yoyRuROzqlecs+8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(3023799007)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oha6C492Q+7U+aha+2vQt0ibQZfIRGqyrvhFgbFlRZSs/RcOGs6sEyDUBA/8?=
 =?us-ascii?Q?UFkRnj+ehoQWHHaUPc9xGCoTvIqC777xgg/8MHC1FhkMZO+9+Iso8GLf+qk1?=
 =?us-ascii?Q?Hbia2iu/v/qaZMP0JuONWCBTLyoEMhQNvsaC6rEf1qWoWhdUosv7tcGNggJp?=
 =?us-ascii?Q?Mgiy9lDJhsqyMY57UPBXLeBa7M0Kqh7/HS0vZP3aWa/QIkS5d8eRRtVNK2Bh?=
 =?us-ascii?Q?ckfzGIG46fsp15QISCgpdwGGJXLk0SPGEqc4B8TnbwJNu6onAGqSliGxbnMY?=
 =?us-ascii?Q?LAaXWpjdcrztacHuZB0x1j0J/dE+e5sVH+TXfvT+kbp5V39csxnD4oUZv49A?=
 =?us-ascii?Q?GuYZ8po8YTc1woGK4gmjvt9QTQ4B3Qz5dwiKpfJdBcJOfcvj7aaeZydhpKSz?=
 =?us-ascii?Q?2GkYdHlZaHUnRhlEzRcnYZc4vJivuXfToqDk+6ipuPqtRKauebLsWLFr7Mi5?=
 =?us-ascii?Q?YJe8BuyZ2Br5Cf2/+SR2hTBVKvd99vj48v7r6eMjtY5XdzmszJwZ+WyhVnOx?=
 =?us-ascii?Q?uDNYqjk0um8RqG+ijmMzEKucixLuFCzt1q500ToNtEwldSIyfScVwGafnCsx?=
 =?us-ascii?Q?ol50s7FZSIpyrvzWb2xXZOe9kulUa3M8h57akqyw0jq1UIj82qKTjpuWlrVI?=
 =?us-ascii?Q?veMN5vHj8AipD7h6rgZQx+8ruBocT+NkDlcL7QHIcwuydn4u+3BBjpyFDU4r?=
 =?us-ascii?Q?bID5e4ElDDC3UZMATZLabCRVX68RjnbD3Ny4SxGZUnNUNursEWzfTIaCxMnI?=
 =?us-ascii?Q?jG7yVwqUatGwCvzs7z05tQ29ZbNJdTPCw6bMuKru2QQhOs6U0J8YAV13IUfv?=
 =?us-ascii?Q?iDuleEAI2+PcQ+3xL7y19IKr62ATGzIZ3ErIMyca3qetGi7iumWfKLlPNFna?=
 =?us-ascii?Q?hovgur1M8PnVzDagEd+oRML6IvagnQhYdAPuXJbHQMtTsAodpu5bhXJsEp7F?=
 =?us-ascii?Q?3YYz615VcYkktOxWk5Jg8eqNV+6bFLp6YMdhqPGsZJFIKNVB2YwtF62MNmef?=
 =?us-ascii?Q?Gj6F7BSyrhP0faGQZxruzKQMGyCr2ISg26BJfIHuSXiCK3OXk7t2EU9T/aI6?=
 =?us-ascii?Q?0aa79nuIYFuNPlq26okRjJhLiHOzCuaiYHb5I74UfINWL8Cntw+2gxHCZBC2?=
 =?us-ascii?Q?1dYHTQjooVywQbTTfZHTAprbqkpoiSg+N8ihby9wQ3opcXLGGFOoqcG+CiPW?=
 =?us-ascii?Q?WcIosahYE9i0A/KxzNMJrRWKu4at9W12q06yoXbL++vkdGDG9MXLlBPbHV5X?=
 =?us-ascii?Q?WHOEXodEs71nuvYdgpstTf7ywsQM4dfS7N32/YhSYXZK+Ta/9xHig/0/zkvF?=
 =?us-ascii?Q?yLlK8Q43dx/jOocn6wlQoZHjFkMnhse0LQrOCjdBlIccy2w68mOFyt7Jy/LF?=
 =?us-ascii?Q?FxFLAVRo+o3rLqfVlxRp740eaYG/ykDYIcFZyboYHdkSyVCeJQjUgVvnUqOZ?=
 =?us-ascii?Q?i05G5WNhyA0YxJ5tArzyol4l6eU8uPx7/+Xz7kW4CqlwsiJ7+REqTrSDpMc4?=
 =?us-ascii?Q?X3mtGGM60m1Zd4o8K8SRidWC6M6P/3qw9oxl11M/G6eOw96QCtm2rNaWxeea?=
 =?us-ascii?Q?s36EGU14i9Mw2mkTGq1kc9XXHRw0+9r2UvIgtBra4Ivv8Bb6W8u4gqJt3wA0?=
 =?us-ascii?Q?q48KRAk0RDpK+oS0/xLi9wh7H/nH56W9d92RLLgyhoekm3J9WN0XL6kXilw8?=
 =?us-ascii?Q?PLJAldNdEsQCkhCUc7HpJVRJ3G4w5rfwH1ZC9b36UR1y/LjRk/putPwLthi1?=
 =?us-ascii?Q?MfY9GaCVig=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QgvEIAvSxmGI6i5PYdoeiAMYDE6aqzojIqU1UixZ2MCK59IBu2ypdCdbuxGovkdzFebPnLtHXLWEE2AqgUThXCis+e9TCKW3EZMQf2WJxK7rMGlTpbjL2SglL1wgxIX1rYzQS5zLIpH1bwJHt9Cz2xir8VWpdH9ULV/p+mewPJ6T0ZNHnq010Wx3DDWwJx9oSCRLXDRlglpwx4TR3QcaP7UTHvd79bMmx5ma731XcDxYbGjno/fkv2tDvkV76C6GdEZuUqNiFTIPcTLoMDtd1IYmH5cVQlarY9NxerQPPwxZ8rhXVizqh+mxuIgyN0hl6oCvHEH+W8nh0FPopbWZfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a403c86-4ff9-4e18-da9e-08debb0b1fd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 09:42:38.6040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LdGJ7CZDhIkdeS05NNKpUrihUsVpiGhdRwoGOprqjvfUJ7eY4x0Tp2hfbMJFQh8K6zNL+zA967ijH+lIFzdL5jM6n6d2PeGGIr/Ha+AZYnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779788566; x=1811324566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X6eXgL0yhf2cj4r0sZF6ovxgmyfm2fiYUy19VOtq5Ss=;
 b=fUU5WtHNH6B2At4eGawBBOHBVm8DGdP7z2OGAVTZIL0XRGNk+clmy4+a
 FTuw8iiFcgKVldlI2JdGMxFjA2d9Amc8O95pdhptFZVW0mMfu7Zg6yG96
 tH1fg3ZO1+QsSGE3uA6ncY3QLFr+La/7EoU8NDVFU+9WISzxPgKBn+SKm
 SEaRQIZWw8Xcz/x8zoc28yMcNf/WTjw58NE19QboL8TRgdSqZjR2qHqZh
 xwUD+gooxLhw2PuMoWA9cRB7mhad7OZSEHM0xnOZ78P/61x1jiRYaUdQb
 prnJ51B2H61RVHjNsDnc4iUo7T6Z0TGJ0XpCVfEx7/sLKYui2WtzS11Zw
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fUU5WtHN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 66E035D38B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Wednesday, May 20, 2026 2:25 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v10 net-next 8/8] ice: implement E8=
25
> TX ref clock control and TXC hardware sync status
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Wednesday, May 20, 2026 11:46 AM
> > To: netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> > Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> > intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> > Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: [Intel-wired-lan] [PATCH v10 net-next 8/8] ice: implement
> > E825 TX ref clock control and TXC hardware sync status
> >
> > Build on the previously introduced TXC DPLL framework and implement
> > full TX reference clock control and hardware-backed synchronization
> > status reporting for E825 devices.
> >
> > E825 firmware may accept or override TX reference clock requests based
> > on device-wide routing constraints and link conditions. Because the
> > final selection becomes visible only after a link-up event, the driver
> > splits the observation into two complementary signals:
> >
> >   - TXCLK pin state reflects the requested TX reference clock
> >     (pf->ptp.port.tx_clk_req). After a link-up, the value is
> > reconciled
> >     against the SERDES reference selector by
> >     ice_txclk_update_and_notify(); if firmware or auto-negotiation
> >     selected a different clock, tx_clk_req is overwritten so that pin
> >     state converges to the actual hardware selection.
> >
> >   - TXC DPLL lock status reflects hardware synchronization:
> >       * LOCKED   when an external TX reference is in use
> >       * UNLOCKED when falling back to ENET/TXCO, or when a requested
> >         external reference has not (yet) been accepted by hardware.
> >
> > Userspace observing only pin state therefore sees user intent, while
> > lock status is the authoritative indicator of whether the requested
> > clock is actually selected and synchronizing. This matches the DPLL
> > subsystem model where pin state describes topology and device lock
> > status describes signal quality.
> >
> > TX reference selection topology:
> >   - External references (SYNCE, EREF0) are represented as TXCLK pins
> >   - The internal ENET/TXCO clock has no pin representation; when
> >     selected, all TXCLK pins are reported DISCONNECTED
> >
> > With this change, TX reference clocks on E825 devices can be reliably
> > selected, observed via standard DPLL interfaces, and monitored for
> > effective synchronization through TXC DPLL lock status.
> >
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile     |   2 +-
> >  drivers/net/ethernet/intel/ice/ice.h        |  12 +
> >  drivers/net/ethernet/intel/ice/ice_dpll.c   | 172 ++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_dpll.h   |  30 +-
> >  drivers/net/ethernet/intel/ice/ice_ptp.c    |  37 ++-
> >  drivers/net/ethernet/intel/ice/ice_ptp.h    |   7 +
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
> > drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  10 +
> > drivers/net/ethernet/intel/ice/ice_txclk.c  | 320 ++++++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_txclk.h  |  40 +++
> >  10 files changed, 647 insertions(+), 20 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile
> > b/drivers/net/ethernet/intel/ice/Makefile
> > index 38db476ab2ec..95fd0c49800f 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
> >  	ice_vf_mbx.o		\
> >  	ice_vf_vsi_vlan_ops.o	\
> >  	ice_vf_lib.o
> > -ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > ice_tspll.o ice_cpi.o
> > +ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > +ice_tspll.o ice_cpi.o ice_txclk.o
> >  ice-$(CONFIG_DCB) +=3D ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
> >  ice-$(CONFIG_RFS_ACCEL) +=3D ice_arfs.o
> >  ice-$(CONFIG_XDP_SOCKETS) +=3D ice_xsk.o
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index 725b130dd3a2..f72bb1aa4067 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -1155,4 +1155,16 @@ static inline struct ice_hw
> > *ice_get_primary_hw(struct ice_pf *pf)
> >  	else
> >  		return &pf->adapter->ctrl_pf->hw;
> >  }
>=20
> ...
>=20
> >
> >  enum ice_ptp_tx_interrupt {
> > @@ -236,6 +240,7 @@ struct ice_ptp_pin_desc {
> >   * @info: structure defining PTP hardware capabilities
> >   * @clock: pointer to registered PTP clock device
> >   * @tstamp_config: hardware timestamping configuration
> > + * @tx_refclks: bitmaps table to store the information about TX
> > + reference clocks
> >   * @reset_time: kernel time after clock stop on reset
> >   * @tx_hwtstamp_good: number of completed Tx timestamp requests
> >   * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
> @@
> > -261,6 +266,8 @@ struct ice_ptp {
> >  	struct ptp_clock_info info;
> >  	struct ptp_clock *clock;
> >  	struct kernel_hwtstamp_config tstamp_config;
> > +#define ICE_E825_MAX_PHYS 2
> Duplicate #define ICE_E825_MAX_PHYS, previous one in patch 6/8
> ice_type.h:
>=20

duplicated definition removed in v11

> > +	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
> >  	u64 reset_time;
> >  	u64 tx_hwtstamp_good;
> >  	u32 tx_hwtstamp_skipped;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > index 24fb7a3e14d6..f7f82aef9f40 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > @@ -486,6 +486,43 @@ static int ice_read_phy_eth56g(struct ice_hw *hw,
> > u8 port, u32 addr, u32 *val)
> >  	return err;
> >  }
> >
>=20
> ...
>=20
> > /* _ICE_TXCLK_H_ */
> > --
> > 2.39.3

