Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE988B885F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 10:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B15240B23;
	Fri, 19 Sep 2025 08:16:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lcIO37iKCMHz; Fri, 19 Sep 2025 08:16:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC72D40B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758269801;
	bh=joD811mRMoQxr0Cp6LZd8ZzaNWtxY/bpWvAJry/ZG54=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=igrKuNdVWqMoBPLfIZvs5VZQhqJucuQLbi0OU4Jo/iiGW8dKHbgh5gjxYHOaAQy5Z
	 QzfY6znlYiTnU8lqg3ne2nDCsREZ9Mj6VfRdisWrPCOuzlJkBrKIEdJWWHdfexbZMJ
	 zXxeeIJNqkBksGL6YarbziOLCFHOn0ShAZBMlokPgZaKdeVnrGI+D4MncgziKTCbi3
	 1/MKVAaLFV4Puzn+hyp5imPgj+ZFq3DdCI3sYL19DU55zefPcH2L/bMC3CHjLXzLNw
	 EZqPYAv928Z5pPfHrgfeovLiDDlMW3+vxEYPmsIwsG9c2fVKMBzpzSqtVXjpFlsDyw
	 N/xyuwSTaGVIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC72D40B3E;
	Fri, 19 Sep 2025 08:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93290150
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7957C40A7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XR8AbEKPnOmI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 08:16:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B12540B14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B12540B14
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B12540B14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:37 +0000 (UTC)
X-CSE-ConnectionGUID: qXLbhIVbQEuv8HRE/NvrwA==
X-CSE-MsgGUID: sozFKjNPTNKazppTq5Wzxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59653557"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="59653557"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:16:37 -0700
X-CSE-ConnectionGUID: emVbIKbCT8+Sx14hAv8Ygw==
X-CSE-MsgGUID: Za4wheXRSXWCbpQMPDfzkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180194416"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:16:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:16:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 01:16:36 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:16:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a9hI9YO8pUX/gwHT9Cg0aoTrWm3Mb2h1K5GCG2PubjvWQkSDW7u29J0pyyNYEY5sOZOQiwJcA49n7Dt1b47hwsN1sF6EppRuK4ja3+oqfLCOAm/n6iz17rHrhnr8DCYbzEAERYmb+VjXTVmx4hcVC52wWEoOAMFKvlMfPiLaUQMsxV0ISXmukKSHG9d8Ej62AFGXJW0ofdla02ZKZEjQHUQHvJGrIZ7rMFqxxJOebXAXpb1jztOF2Fha02nt6LFSgChRnfMQnjgXkh53finLlcYL/ahOZkgVuhx5ZzXCheEVFffV+jwqv0exE+ltWbqGBjb2vQDesrhCvbGykX0buw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=joD811mRMoQxr0Cp6LZd8ZzaNWtxY/bpWvAJry/ZG54=;
 b=Q9rR8J3AQbs+toUb2JkbDSvxx5ijYKQgsv6Ct3eOVijDxKES56vBGI3RVVIyjIkGilajmXTx505zc6UVk8BhaRM+loSLJqiaC0TQkipYOJSK0+acx0645b2CwPiIa1NT/YcukJch5lYSX+55v/VxDHpjRHsecu7yOEtMFUR064+O88JE1NApUmLypZk0DEsbxrRaALTngA2jmA1JOeKGyaIlsdZN7Yf++yEmatfWw/Hvv15TRW+m+RCzQluq7slbHVD0QSCxQIRoqdMBAJH2cTzSMJW/H1UY0HcHaK9+RM3ai9Dt/9llpWzoTAcgzhD/0ZrTI5DRZ23yXFnf5tB3nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA0PR11MB4638.namprd11.prod.outlook.com (2603:10b6:806:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 08:16:34 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Fri, 19 Sep 2025
 08:16:34 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 4/4] ixgbe: handle
 IXGBE_VF_FEATURES_NEGOTIATE mbox cmd
Thread-Index: AQHcGATifTJonM386kG/5cC9eqg3xLSaS1Hw
Date: Fri, 19 Sep 2025 08:16:34 +0000
Message-ID: <IA3PR11MB8985120D7C4A167E3172738C8F11A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
 <20250828095227.1857066-5-jedrzej.jagielski@intel.com>
In-Reply-To: <20250828095227.1857066-5-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA0PR11MB4638:EE_
x-ms-office365-filtering-correlation-id: 232beccf-47a6-40a5-9251-08ddf754d91f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hIyTvbllyHjRRbau3ClF949N99bEeZ/RMb9Ysh2OX3IPlUYc+mboTLQB7FqX?=
 =?us-ascii?Q?rFKgObwAcZtYivH+KTpc8MYwrVDO+W6WYPqK3OQDcdRsr347gsAww6DOpR2M?=
 =?us-ascii?Q?wnNauIWfWNBIGPaaszZxzLIGQFlYeOOa+iE+ut2bvcQtk9Cnhz6uGRL9NipY?=
 =?us-ascii?Q?2fEImusF1xMrT0cn29UXTm+a4Q6lLnhXfe3q/qMdm3QTBFoxlPqZZYoIIF/3?=
 =?us-ascii?Q?8vIA1M5wFiY1py4bftPtsEGW892e9L79PQrkhJvQYcEQWIBAm6yGqSkgeVeq?=
 =?us-ascii?Q?cl4IQBe1CzejzEJcr8sKqidhJTDOSoMbypBDIidC0CMf9RyZgF6tnRi2vv2B?=
 =?us-ascii?Q?6C8b4cN9H2I4JHnaYjDx0Zd+RNhHq/6c+IcqaOVqXLD0659e5eCHjIJm205+?=
 =?us-ascii?Q?8xupbLZ2MkcRDvyUdv9fgALG/NG9UehOsujtN3Xiob3icjqFOCXZoCHOe4TQ?=
 =?us-ascii?Q?NHIttnr9QN2u8bK4l5w+cvy2UPFThp4cDBC5TPoDg9pnBXmjkxKaoScYt7UU?=
 =?us-ascii?Q?52aa3jKRCbOlA3YNkzwitNuUhrvTZ/gp+6jceg7Hb8yAOPALsgh7Iz+lEIM+?=
 =?us-ascii?Q?2W1Q6NhONV/x/HtQ8oNEfNA4gT1cxfqTm3860hgQLFqF3aFInYFffOjzd01W?=
 =?us-ascii?Q?iOgEbmF5GXKYdkaxn+3+SfFLDa7VjxMLjjKIjxBQsySKsLtwJDB/WvLqh3f0?=
 =?us-ascii?Q?KdtmQXTm2V/8OsVF/NieMkyXQrJW2bwBSJl2LsJsNRTfbi8qIySH9API+7UK?=
 =?us-ascii?Q?coJWBHZz/b0IkKo6q5ybJRTU5zjZ+QQt/Qc5s3OBe9PSYWR4yuF15vDqbY0K?=
 =?us-ascii?Q?/bGtuTnE7a2+l0CZfy4uhKYhOYioQliWHY8b9ykzQwNim1dBYdGULXlWifJo?=
 =?us-ascii?Q?6dDvLL1G4mm75I+us/24JxHNATTUIOp062jQ0E76EXthlOhCNoNAh26g2tB9?=
 =?us-ascii?Q?RJh0gQ1mqL9JXbMVNpSA4qFG61XUL/HvE6BiRifkXHDE0/bNacAoDAkrW5OB?=
 =?us-ascii?Q?Xnq0MSJ/I6vLMBJQhbcxr4hrQexTN2HKfYQ9tWh+RdAze2Vg4LQ+iwP2ATpi?=
 =?us-ascii?Q?fFEhsMlthHzBcUBdB84VuhArLEarOF36Tnml5HsN364t+GJQW87+ZmEJKFyk?=
 =?us-ascii?Q?o+Q+urcRBeeT/g9sNzJuoYh/A3P+Z4Ux8+cj1wO+fuE2/esUhPoM84yIE20S?=
 =?us-ascii?Q?pdgSPyBD9Tlqz2kpxA7WVY20/SPl/Qn/+NccZhKa7tIbCQwzOg2tFujaYID2?=
 =?us-ascii?Q?PVSGV3SZxLSxnTuGaqdw36qd09hH7M1yIFLkLWMSzw1gMyejnGVlkECeQ7wV?=
 =?us-ascii?Q?2iI+4C7BZ2RCJmjamBLu6ZY/MelXjStjrBj+NzDxd9v82voO5ZIc6czVup/V?=
 =?us-ascii?Q?UnjhpGzQCnzqd29hHmpKfNze7ka5jS1Sin1Kr5c7FvT+fZ7D1jaWgOmjv1vl?=
 =?us-ascii?Q?McAP+Iz4FXpK5z9hOY0RJrrizP4yyd2vZvz56Zy3iZ8X/y0QXyhs7A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OS4Kw8JSGirPYCGb2DfRPoACf/lLn+v8jMIhkvMNU0W/xyC2WLmnhN1cKKLO?=
 =?us-ascii?Q?34IAz8gtQPQ/fiaMbKl7Hrru4PcKVZZ2BqaHv1/EaPliwtXFHVN0kJOl4iBZ?=
 =?us-ascii?Q?Q+RNEf4ACDWRKdVIhJ9T1oCGDQfBmpk6JtHiVH4QeMHguSKHkoX5B8kTIEaY?=
 =?us-ascii?Q?9job/qtzoRU1uX36vScvR/en4Xtvmshjtz4qeKnN2kLr4d1266ShUMeo+dTN?=
 =?us-ascii?Q?UTKAHuVJY0gGJDW7UYLFOViddFEYzjtCNIZ5+7u+gR2GbzRXgwqd7x4r1lRl?=
 =?us-ascii?Q?QqLV0loDVZ74rfmr/A2TtDD14dRqwjp4Qkyjn12tGVOVMfDw31DVVkiK8KE+?=
 =?us-ascii?Q?DGS1ANgGFQWKRUyYyyvbyzKS5xbLthIBGSdGWajw+7LfKUDGCbL/N23QawHW?=
 =?us-ascii?Q?EoRU3kt9zWgnF3Jb7K2IWzRyBoDEX7w6XBdcmWbpn7wS+uDr2ZoK3BMdYqw9?=
 =?us-ascii?Q?A7wpsOhsoGc5ioKPSOvhDgGBKzaP70i1WVMymQk5VsmlYOLoPldfmIEsTONa?=
 =?us-ascii?Q?Qd8Z3Q6gYMjy6wJFw7SgQ/x/325OSWnO5VLyg19FjQKX7O1ezyxhyHxczoJ3?=
 =?us-ascii?Q?FVG+VKHpL+1/13sx9yEKsviocKwdjsb3gLnQPvJXh6qoeRUIfZGrRL7kmHH8?=
 =?us-ascii?Q?eN55krGe4m2JL9Eih0Mx/MQpQb0EJhcmPiMjrOU/LtK5i/DQKsjpRnvAYeFS?=
 =?us-ascii?Q?+Uwe9Pc9Xi0NPRFZQDuSLZ0E3lT98rbOcF6g8pl56e5iZrEtCzQTZ1f6Sad/?=
 =?us-ascii?Q?OXZGshDWmNfvprqTX4jlHmS5yY/V+HLmpK/PMo84pzuuYglSw0DBFKIC8Uw2?=
 =?us-ascii?Q?hFFHDUG5XCCMblPpBK6n6gPb7xV/1IYyn6/Puo7opHYcd3PS6blzFpQ0tLPT?=
 =?us-ascii?Q?cRmL/Wlm50y387TfIp3V0Ur+/rKMK8yQLgDY5VMwVhYLNGTM163EOzfwWMio?=
 =?us-ascii?Q?XZIvo1qlREyznWdISfj3Q7ZuvzoDFs7lzgaXmmo2CjiNyEbA+VoskuDXSuu8?=
 =?us-ascii?Q?KYy6lvoTJXOJPnXDIVdonaterDY/3ds+inKqGzvMkXhpvyCvuNEOpjcdeM3b?=
 =?us-ascii?Q?x4L0Qym7PY3Dn8xRS0bGMvUD6gJN4oUV+V2bexAdu8JM9b+4MJd9GaC14iYz?=
 =?us-ascii?Q?jhIfpkX1IXbRYRpH9iEDb9Vj/CUSiSj2D8N1OLFnoZOal83xfrs31UDe3G1Q?=
 =?us-ascii?Q?ssfgRHswHnSeAFUNuL8orEzd/yZHBbDvvr3YGE/GP/yfEK23/N/DoA8PwQD9?=
 =?us-ascii?Q?KDvYSV7/WyWP4ouSbC1TLcdCFKyf10T79GGKnoEu33oX+68odhtYCG0ySlUc?=
 =?us-ascii?Q?d0++q8ExgpnbhFWeNqfbFvue3lrLVp+a37SWYZq3D1XhJ+9i8XXqty+nYYRs?=
 =?us-ascii?Q?zU8Q31LnzdporA8btrK3DXffsABsGQ76cMIUqRNX/dZSIYbJicgqPj+aR345?=
 =?us-ascii?Q?2+7gyJoR+9poAJrjvEKD2VFCwk4o/C+lpBcEIJCWaHnbpnVx3gynyJjKB/Lg?=
 =?us-ascii?Q?7HAyCSyIiLkZtTWmbAp0qiEJZh1GQnWPFyE0ETzPj/PZtfQgKzt3jqBLjXEq?=
 =?us-ascii?Q?lcxl23WE34vIjW/VKJ3/zhjMmJHVoveXr8mN5XCHzC/3PdCrr2pG8CaCsYiS?=
 =?us-ascii?Q?JA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 232beccf-47a6-40a5-9251-08ddf754d91f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 08:16:34.8471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O/q8n3ON0ntHwivqr3i7LWmfkaZCy+FFMse/Q1cKNFlZvaEd7P15r493mqdYzcdQgJJvFycZ7NfeZN1aUd9W7bxRG4htyX/+nbnJpb0xKBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4638
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758269797; x=1789805797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ty8XL09sZsEL5bOS6RjkmPDNq1C6rInzMeAPTgCGpZI=;
 b=WWw4XQQ/rON5A1oOdigqFYnV12l+yMoItT+wqzSHmqdkjdRBRjdI/QwG
 fzPSRYPZqN/DsymZW2GMKJnDc3T/UWdG2wIpChb/E69M1wSy8SemJwWa8
 Yy9cCmPrb86+XOt5Df5b/VXQvbap1Sh1ZLoF9o7wrnFeve6cF31+HIC3x
 dmWLXQbX31kHxfAmH8hbkRkTTJtbRtA0orvsPHUo4OSGmF5S9GEV//6wL
 YrA6FZ4Kp6XWys191KUvqA6DAZeYI8NgQR0PKO3c7xiknuXoHx3sHVBaU
 9PWYMKgTECm8mLlBKh/tMAbLLQ4amty8qhTTFLw4Ej35MGZGAEEFwF84i
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WWw4XQQ/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 4/4] ixgbe: handle
 IXGBE_VF_FEATURES_NEGOTIATE mbox cmd
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
> Jedrzej Jagielski
> Sent: Thursday, August 28, 2025 11:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; stable@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 4/4] ixgbe: handle
> IXGBE_VF_FEATURES_NEGOTIATE mbox cmd
>=20
> Send to VF information about features supported by the PF driver.
>=20
> Increase API version to 1.7.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  | 10 +++++
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 37 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> index be452856531a..8a2ba77d1493 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> @@ -52,6 +52,7 @@ enum ixgbe_pfvf_api_rev {
>  	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
>  	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
>  	ixgbe_mbox_api_16,	/* API version 1.6, linux/freebsd VF driver */
> +	ixgbe_mbox_api_17,	/* API version 1.7, linux/freebsd VF driver */
>  	/* This value should always be last */
>  	ixgbe_mbox_api_unknown,	/* indicates that API version is not
> known */
>  };
> @@ -91,6 +92,9 @@ enum ixgbe_pfvf_api_rev {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


