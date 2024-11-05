Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA429BD8D2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00BB340258;
	Tue,  5 Nov 2024 22:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mALqikce9-UX; Tue,  5 Nov 2024 22:36:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0786040203
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730846190;
	bh=FX7wb2/HLDNmuYognpUaRW3GwqsXzWo7/+kjxewRaMI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hZKR8HFpnqtoeApAd6132UPEqt9FbIqbVYSr/HuNqICiTDC97YMlRpKSuZZHuewHK
	 svRKtK/ETITtWcsf0/MRwlwYEDj/J6M6PgWWTBY/dE5WO3Y3uqucEDAukWwJqmO0Hg
	 4DMydjPYkzt2cdbOhfbM/zRsInG8Il0o06tfyIOuWYnMmm0CSz/8IgFuHCaz1jh4AL
	 q4MQWxwo3F/Estg2k1VWK1nS6wFNUMjNMI99FzDTT9ValfizV9HGj984WHvX2xhAbl
	 ds0PW7Q/Bv9/XveW0iAoJKQls/hxV5S+OYaEYw+AD5dqj9qA3tmuxdcdr2eEaEQDXT
	 uEGGyniUfDmPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0786040203;
	Tue,  5 Nov 2024 22:36:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 477AA3B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25FCA60685
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVx-9qdfscLJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 22:36:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 221DE60671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 221DE60671
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 221DE60671
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:36:26 +0000 (UTC)
X-CSE-ConnectionGUID: 3gXUaKmvTPGcyI04fVTC0g==
X-CSE-MsgGUID: b9TN6kK9SU2pBGxqZe6G/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34405539"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="34405539"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 14:36:26 -0800
X-CSE-ConnectionGUID: jKBr/Vw7S7yvIPXco68ixA==
X-CSE-MsgGUID: 2cYYFyUnTBKu8tV9/P0aFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="115000741"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 14:36:25 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 14:36:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 14:36:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 14:36:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ixnKR3dA9IGqPn/leuqaonpOF5iJ2YgbJDxSNvfvAMQ4zYvtYqdRF/9/qR0V9jKI3U2mvDd+yw8i7iwy4ll3MRUOinJyjEEcRrh04EkE047GAcM/dv9Aqun7vp6k6ddh5zhAl3zL6g2sdzc8PtlUO6d8E/Y4u8Gz/PDsSNx2a+id+8Vtz9UgpHiOpWDdqS24R1m6EHJfw3lgWz3+XWwFOfmr3tZLog71G/TswPEzTdit7C1a9rHZy208yQzUrVg+s7yBmU8dAglLtT8tCVSzFEuNFSiH5EQV6V78qx/QVbQ1019Az1mm7PwovSC80Z/suyKDy7vHkq3Oapg995HIVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FX7wb2/HLDNmuYognpUaRW3GwqsXzWo7/+kjxewRaMI=;
 b=Aor2jF0rtgvNRYIYLgz9tSAfE28MVnMVv5V3cDFcJhSwBqgq6Umuru2YNLHG+BfBev1h9b62xP9Fzh+K63dvcg7GjMBaz41hYmop2cF6Lq/CzupfTARmAFVBqU12njKKoyI0zRJM02hIJoq8wSzgwroQ8LqUg5UDHuWGAMMX/uHhbGYudakoMq7l6wpMRtPHzJaLIszw7If3ZVcIOpNIrrYihO370fQHVze23kCSm61jvwZavJkPisOiaykHOM9tJBQhCW+xx9uQPd8fuPwwQF8ty4gW/Ix0ivOWKYVE73k90jcJHRWNcfr+F3GNi4AbGaU8xVDfrpV62YjcXOaiSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6928.namprd11.prod.outlook.com (2603:10b6:510:224::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Tue, 5 Nov
 2024 22:36:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 22:36:21 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
CC: David Laight <David.Laight@aculab.com>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, "Chmielewski, Pawel"
 <pawel.chmielewski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] Small Integers: Big Penalty
Thread-Index: AQHbLpmv9SR3uvlraEWqhSnU0f/rJ7Km+xAAgAJNybA=
Date: Tue, 5 Nov 2024 22:36:21 +0000
Message-ID: <CO1PR11MB50893FEBA44135EB812682C9D6522@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
 <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
 <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
 <840b32a0-9346-4576-97ba-17af12eb4db4@molgen.mpg.de>
 <478248d8-559b-4324-a566-8ce691993018@molgen.mpg.de>
 <Zyiu9phq8/EchHxd@mev-dev.igk.intel.com>
In-Reply-To: <Zyiu9phq8/EchHxd@mev-dev.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH8PR11MB6928:EE_
x-ms-office365-filtering-correlation-id: ea23a185-b125-4d7b-a9a9-08dcfdea45bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3aPP/AvIZpv9WsIK2c7CNpLDAesi7YA3NlsoXXyBLe6HUZ+xaTwht+mktfrk?=
 =?us-ascii?Q?yScw5SDQBAxBHlCx6Hz/ji6WU0jG+it4Q1roBJifJ0aNGSSkDrBbAYP7GCBs?=
 =?us-ascii?Q?Em09f0M+GJfS/wPX9PGni7uaeVzoypKwOOFP3fWFPdZJ4bgBDGS4lzRzeAai?=
 =?us-ascii?Q?g88dWDLHaEI32Eo9IrL6el58quAkKZZLddwh5kWZGgmGpYFTeMx6NeIjHLgM?=
 =?us-ascii?Q?39KBbrSB5awKjZPDC6dzy4/JFUW5GjOwcbFT865d/viBqBULHEV9WgB3plFV?=
 =?us-ascii?Q?Yx4vUNSW25sECcYB0uW+FIjD6pVmZLKAEkKGApMgFYLCjvnfD9cX09qBLTux?=
 =?us-ascii?Q?Qr3n1rt0A3866u3dGHDLKGQY5FyquzF+f3kNgItxdkLWPD9HgQsC1GBOOOhs?=
 =?us-ascii?Q?9AjtsplAkt1O7ObE36/vk1HWsZlcSxtB9qoazdDM6YygHEfK+kQ9z+sv7/P4?=
 =?us-ascii?Q?RVjtzyl7XuNPtgaEQUUb9ldUIsU7YPmM/muBv7VgcCjVQ2cl/3FiTyF12nbf?=
 =?us-ascii?Q?fzFFdv7V5Xc1xAqRTRk0FmFiMezdx2SmUUY7RYMpl3E2cUiOIgU9YX103aqF?=
 =?us-ascii?Q?jpAYLqqN5USeUmXbdwLMXBaEBaTCTEikP6oqTPFwtLSmWBmvuaikEK63PNbh?=
 =?us-ascii?Q?WdTm99wMKpGZFtDYIN3p5ldfx1h+pqORuzlhgJir7kxHBHLphnxGJWdqqPgI?=
 =?us-ascii?Q?/7eILaCw1ZcBT5niGTHmYkl9rnU+s2oUEVH1v1WPelQVsymVpcUsyPS7le7q?=
 =?us-ascii?Q?SfAqmpB4dweVQYzIXTrLCsRr+PamjKibr9n3X46wLxLxZ7l/nKzd4m5IYBu2?=
 =?us-ascii?Q?xBL3i5cQn+dMWw4944AnZ/Su3mWVNxLOKpAfLvSW+52YAhf0XQCSMw/H9Jjz?=
 =?us-ascii?Q?ky8HLX7SIDhnlZJW36zMvuJER3zUXyd+Ci74mR9q4l2ggCvr+aXBDvXM+w/x?=
 =?us-ascii?Q?saPovQS7eHWnHiGVnHSX4qWUVCtXMPNeQhXSh15CZM7jvqKynhc38rZOD9wh?=
 =?us-ascii?Q?rVmD61z8VfgRgoMMN1nr8Juj/ZUdTsaxIwaY0RywTJX/1YlxLgILGl1gNJSp?=
 =?us-ascii?Q?whnUmnvg56n4rNs6Tj+3YTGsxMFYAHeRFfK5wD63qmJqNMMFYLVFsBVskEFn?=
 =?us-ascii?Q?a+gJDTwHoAyVveGhQ4ofc5Exum0buCJHWfDNFPH5PUf1V4VyXAwHl4fLSvse?=
 =?us-ascii?Q?QtVebocTcF1cbjWICMEpMI7xZSzxLNSA+fGoLlsW+F9RuCcPTHWs2E6DzV4p?=
 =?us-ascii?Q?24EHNX6b3om1DWHgXJWKUEyZIKQxJXsg6QLl8xTTmpm8myQ0+J3GDekSwHyh?=
 =?us-ascii?Q?Vm6zxkzC67rrfHDlOROy8UTgjkzec+n1i3yrBASrjpgG4AfYtFN9HV2qyJaK?=
 =?us-ascii?Q?KAiLMHk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DVQ+fLV5OGZmPIXLqkjaB2X76PXRhnv8TqsmmG94iK9uy/fErkQ58TE2/Ze6?=
 =?us-ascii?Q?SDr4RqI6n1mkpue/DpuY6AMmzlbBM28HdbI7/zz2pP7kkyTEAU8+iwWINsX4?=
 =?us-ascii?Q?nMVBqnypjkDzPym3hGuhtU+FHJ7jm34eu57Fj/czKI1eF4zhzW6PfxnoIgLa?=
 =?us-ascii?Q?4hH7YbEcs7OtRyLx+V1weeyC6If0/lr9Zj8UfDlV+zMyafE60/oH3Leki99q?=
 =?us-ascii?Q?FgoW0O1PqYKE8I+O9vhZOhlkB4krs0k9FXvBeZkjfMYCjxsSgaVRV3FKFzCa?=
 =?us-ascii?Q?iSoxjllIW3f5QJA59GdURS0PZcznVYUh1MYUtngN/0CHouRi2SAaFmaQG9Nx?=
 =?us-ascii?Q?QOzKQrYx8uBxviorbxEYtaIwxrL3k8N1wbjUfI4xo0+w5LpdCwODv+3nlqvk?=
 =?us-ascii?Q?yX0yVL1JLb83LsU2U/KBN7tNN6u4kFutG4gZhjWaA75yBca25Z3gJhgOp9Y0?=
 =?us-ascii?Q?DlVf3JeRFn2LEN9EKes9OqT8ApxBRjpRUp3dL38kfj8k63mIgGBJmisjWBMM?=
 =?us-ascii?Q?jcCCUQ+xQ6YducJWXtcYz0Rbmn7lZf6URg8l2EbMEmkxw9yyeecXr7h0zblz?=
 =?us-ascii?Q?JMN0ChXLebEbiChG8RcdsOcAaT9PT+wVfry3UlmWEA92fENM7p+mrH8RdUyw?=
 =?us-ascii?Q?QXflaMhlEUJTfnto1nKGCtx93Mahoca5XWi/GBtVhoqON9oNrg2ighP1bcCo?=
 =?us-ascii?Q?ZYsG3C9ZVRUvUr4fLV/An7/z6QtREBjYfUvBIvFAKZ05ousiXOGlYZYy5DT3?=
 =?us-ascii?Q?/i+yOLgRgKEG4/Fqny4kNWT3bgwtzDuE7nSGlCj2wnI+DdQvUGSgvtC2+RG/?=
 =?us-ascii?Q?WEbTaNz9SbxB6HLrDkffwXYV/kps5Hlu6t5Pw8Yw6Wb6RNNgmtZ4KyH0qsDQ?=
 =?us-ascii?Q?bdxFpxr116j/c3yt811mANVO6k+W0IZ/AEemkUVd9p98u6/kqxXB53JnO1I6?=
 =?us-ascii?Q?A92PHblzkiFVTulHBAPVGvpSJAFE7leqz54vISB5sDaNudVtnsi3bKwihQKO?=
 =?us-ascii?Q?it0kat2AE1ZN6gE1+aRlHArQBEvEbOhG0FOY9BbMay6VbOWE7KDsTfx2l7WJ?=
 =?us-ascii?Q?EWKLLEB3aOyv9n4k56us//seHllYc/IR6sLZaj0Nnt7Qn23p0/3gnAegnjvP?=
 =?us-ascii?Q?q/d/pT2IpbZ0L4+44NDWg/9cK58MWDlihSd4MKMtXqb26NrjHZzWVXkUavgT?=
 =?us-ascii?Q?Ya32Hvd4UUnvGrFvW+2E/Sqb9kdnVyETQqoFF7qjojui4ph51TJDxISMFIU1?=
 =?us-ascii?Q?0/BOnpc08fNHGJoMzKgurIi+xYwt6aH3LNELbI+XVP5QpAB3jtEtZJtZZRYT?=
 =?us-ascii?Q?ZwdCIbkm/Y+ha+uErY2dMGbg1o6AGUXAxWUsVBqNyZOvYPzeNV0IufY3yXr3?=
 =?us-ascii?Q?iuUv9YcHda7JDYW18QzsO5/vOMkys0lgbIp/Enkrozusp4Qu27CRb+NcCeME?=
 =?us-ascii?Q?O64/fHarA10zzmR3USUn9WX4OvtYrK9zukqulnvd3pctNjUgbrqqUbw3DVD5?=
 =?us-ascii?Q?Qu0Imb6dFvtfNLSHjhlL9j9FMTP4TdfGmlNuCXs2hCJg8CEUgK55pk4mUn4i?=
 =?us-ascii?Q?S3DFlCcNH+AOIfYx0FfjxD2xpNoK8/OBdh+7qr3X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea23a185-b125-4d7b-a9a9-08dcfdea45bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 22:36:21.3783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v6WSEnlV/Mpy263QB72gGr8SlRXcKVDEAm4iiNvw1Kd3bAVOBJjH4N7MPofuK8x0JkDT+gRed3LQihM6ca9nZbTvhzfMNgvOqeqRyQlmTIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6928
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730846186; x=1762382186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FX7wb2/HLDNmuYognpUaRW3GwqsXzWo7/+kjxewRaMI=;
 b=TGNHqSujYXZWGOXw2iU7HKGANM1FF9hvKcXmnXQSoTZ3XwjrkPpeUWRL
 St04MgOMLbDuvfMNMfZv9JCk5pd1z7flV4D2TxOruEmwgwTtJg+6LnPYE
 dyYvFZg9GrzOMrMjmzZ/7DRQ2Z5PYv+22Xz+s6hZATb8t8iHg1bVbG4Lb
 wSplWSoWHO/H9UfEG9DjR9cFvi5J92VG2BV8PFW7uJn8/nd8H0wUoHpfv
 ZjmHChSTC6+lY6SV6gMC0ROn0GOm0GRZa0ZeVRSylSrZ0re94w6CY/HnZ
 NcL4+C+tROtOu/uVuy26Eva0SgqE2m3oMhGzdCQ/D6X5rd5BB3Z5+LiFa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TGNHqSuj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Small Integers: Big Penalty
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
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Monday, November 4, 2024 3:25 AM
> To: Paul Menzel <pmenzel@molgen.mpg.de>
> Cc: David Laight <David.Laight@aculab.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Szycik, Marcin <marcin.szycik@intel.com>;
> netdev@vger.kernel.org; Knitter, Konrad <konrad.knitter@intel.com>;
> Chmielewski, Pawel <pawel.chmielewski@intel.com>; horms@kernel.org; intel=
-
> wired-lan@lists.osuosl.org; pio.raczynski@gmail.com; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> jiri@resnulli.us; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] Small Integers: Big Penalty
>=20
> On Mon, Nov 04, 2024 at 10:12:14AM +0100, Paul Menzel wrote:
> > [Cc: -nex.sw.ncis.nat.hpm.dev@intel.com (550 #5.1.0 Address rejected.)]
> >
> > Am 04.11.24 um 10:09 schrieb Paul Menzel:
> > > Dear David, dear Michal,
> > >
> > >
> > > Am 04.11.24 um 09:51 schrieb David Laight:
> > > > From: Michal Swiatkowski
> > > > > Sent: 04 November 2024 07:03
> > > > ...
> > > > > > The type of the devlink parameters msix_vec_per_pf_{min,max} is
> > > > > > specified as u32, so you must use value.vu32 everywhere you wor=
k with
> > > > > > them, not vu16.
> > > > > >
> > > > >
> > > > > I will change it.
> > > >
> > > > You also need a pretty good reason to use u16 anywhere at all.
> > > > Just because the domain of the value is small doesn't mean the
> > > > best type isn't [unsigned] int.
> > > >
> > > > Any arithmetic (particularly on non x86) is likely to increase
> > > > the code size above any perceived data saving.
> > >
> > > In 2012 Scott Duplichan wrote *Small Integers: Big Penalty* [1]. Of
> > > course you always should measure yourself.
> > >
>=20
> Yeah, I chose it, because previously it was stored in u16. I will change
> it to u32 too, as it is stored in structure that doesn't really need to
> be small.
>=20
> Thanks for comments and link to the article.
> Michal
>=20

Yea.. ice driver code has a bad habit of using smaller size values in struc=
tures when its unnecessary.
