Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C46AC86DC26
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 08:34:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0173641BBA;
	Fri,  1 Mar 2024 07:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SN8-ggIN19VF; Fri,  1 Mar 2024 07:34:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FC9641BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709278477;
	bh=YHKPC1OhyHOQB2KpE5sHxZuWJ1ngPkqmrNN+JbLzh+Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DKdEbr+iFvZD4Z4MhAOiJJmgff8JZCueNUjMyXu9rZkZFel+bF7smoor8Ajezj6lZ
	 Q5VHNFNz4gRTGRmNBp70+J/naK3W4vPBtj63JFadxtdNHSyTsqw9+O1sEM2WvLXPPe
	 ze12igXjbumxkfo73lVBalfiWSUuwtZS3QlDQ75CR2WqHJ70BWftCKkFkHrJQDeMER
	 MxNmikMFt/g/wHZAeJ/kbk1AbegXRruFyq//zvs2QT5uV2XejmuPB6pUTqE/ncux3N
	 peTnax9BHuSgtiQg/cYJxDsf6SNuj0+7bPpOlYXmXxrLkCWMLAnE0vouNj/dReej9L
	 lARu5zV7nAzfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FC9641BAF;
	Fri,  1 Mar 2024 07:34:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 334111BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2735D4192B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZix9TWBfB6A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 07:34:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6B7FB41903
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B7FB41903
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B7FB41903
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:34:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="15214174"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="15214174"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="39132582"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 23:34:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 23:34:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 23:34:31 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 23:34:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJ2wGS6GctjDlSs+uzH6IrDcuWpjuxN21wKVTm8oYVVgGi7xVexKwe4DNylBr4aVKCJz640c4ICeWNvCS9ztjmap7X9/eMm7NsYM5cPL91DZFmRQ3Vh5juLAeiLwYHcg+8PI1yhwJmr9nB+ibFNZcFy1WlfNH6cGZ1ewdRZIaEYgiCWCmaAeiOgmimwBTkP4xGaxzrBFOrOI/NGsMQE3BX7E+RgmGGpp9QPNEirJb+idjXV5i1mxbCF0QuPueyIC4lGTajDNI7WJ2tmOsoaTo0zuym230nnYI7E4VtHi76KjyIGvkXeuuBQcCaqL+zgnFJAyEXrO9HFmDdTTSfLGWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YHKPC1OhyHOQB2KpE5sHxZuWJ1ngPkqmrNN+JbLzh+Q=;
 b=bl1fMBSitcA/yhROehZtcVLQwZF4M9ILgy8kIW5xUFGso5vO9FilsqT3iW7BgQE7asF7zfAJ+wk6LGasC3rtK4Lgiolr8afl1Sn8GOMinWpAq0lfgCh4+isASsl7zclqyzzef1+tnfxCSx1Ym8q5BwhN2ZmJMFlPrbi0qBhVHkdMHNl+paTJIrfUjGbnsCUmht7kyNYBouKLXE0zIMePMVnoH62IlmlCB1g6UO4J8ij9fHTB3dSDR/6PBp6nZ1lcXfmZnKeG0nvi6FXcTZsCOJhNfLvoDwCXkELU2NX0jbfiBZo13MmnGjN+k1ybiA8H9xPN2UuwX33ZsO2qrrDjEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Fri, 1 Mar
 2024 07:34:25 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.015; Fri, 1 Mar 2024
 07:34:25 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] ice: do not disable Tx
 queues twice in ice_down()
Thread-Index: AQHaZnJYwa10VgwQLESqUN1jusGr0LEiiHDw
Date: Fri, 1 Mar 2024 07:34:25 +0000
Message-ID: <CYYPR11MB842961B158708C36B8A3346BBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
 <20240223160629.729433-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240223160629.729433-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB5215:EE_
x-ms-office365-filtering-correlation-id: a84ae215-800e-46f1-21f5-08dc39c20515
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: COKMMzYzrY4okxjI6VXlOGfjlGw7h9eomiVLjOCrZRZ5neCz+zrPQvX7a5hGn2mO3KHDPK/efCIRWfnycYitDuzFGFGP1ZuWeRVncGAcqlBhGSuBAMTGqs4YYYg0topNYtFNLm2iCkKZta3540hGu+oZt3VzJmC4YPL5WyGdko0n1+A7x7asAR1cvxgp2wTYPyOQop7VARTX9CValc6beY/wMDjA8W8cucQOKN/GD1EHR5dqeHxhi4O2B0hEEtRCX8z8b+V7LfAIr31ZKqeMw4sXznPeW4ZwIEHiVqZRtzTbs+pVDeQhNjnE+QjqydXn0TNe//DrQF554sSggF33akl8moTqzvLu2jpFWzOAjyJYVUGh9XS7gcvSRnc1NUj0mMpGm5vYTfSHOiEOBr2OUkOyIPbkHMDoeGVwJusCfgjow8UWN54afd6GORmdBkASmX3Li9BBd0SkwStfP1XB1PK0Zi6ttYbyLpTFrBpJS8rnxF/+yPlFyd5g2jwFAkUX5r/YcvVUoGwLQPqqQUnsaVLz2QmtivrTnA2oF5L4JzvGJyDcaIw3BJ59Er1Ysz3DFuXCdTytqPSPfYojQdfeAJAS+jXmFJwPFGqC+upDUvmQmQXkDb+BMTS95z8WmA/RkAb+2ajMvPr+JpfrCGAAQtaMJd8Vil0oUF/zj2bRQxWnBVghEj/CvlyTi96d4mYVD7p9C37fI1RrTkcvS3WkzzJOSGQkTd0qKatixBTEt6w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/9r+zKsbT3ic0swe6aWss5bHXQ/w7GFSzvJE94S5yYaY/aNsBd1DiF1hK4HB?=
 =?us-ascii?Q?q39nBSt8Ild0LHYkslbgDJnexv5FdP7uwm0JUAiYBqE2UULM5cajFvviRGn+?=
 =?us-ascii?Q?Em6V8yVCGWA5buwPp/joJFk2VRXaoswxH5v3SQMiyKqJIHQoqe9f6i8cZbP5?=
 =?us-ascii?Q?nshlEhYvjEdaYIFm4f/Y17vbsFiYnqLPzP7iRfCdBt+/M+TDmgaHEFB0BuKb?=
 =?us-ascii?Q?5iJn7hdLCpSJIWVJP9G4srtGnVaPAczDdlzXTTQUX2HxCGeaXmcC9KSMf50L?=
 =?us-ascii?Q?6KxkatAo8j/DDlGuZbhLVSjF2MU6xsn/Z5Edo8xZEzSGIRcGUDA/nyJOi2e5?=
 =?us-ascii?Q?jCe1MWvah5stH3PLGQj5lq1U3JbNY08aPpNJhHP28w1ClxEDtKGrQer64GK+?=
 =?us-ascii?Q?0f9WUpSWITZ9G1mN3eSAK03xUisgF3YNNtsOmmwqw3PQ6yb2tvh/AaUsWBGJ?=
 =?us-ascii?Q?0a4Qagkd2Au8NXJIj1vtM0KCJ4ph3J7gIji64ihj9wl8Vt98N8dwM4w6HNeA?=
 =?us-ascii?Q?loH9uAv456zyjhNgKenEz/xAtqI1YHdAtWRBSLbl/iDEayc8fHzryHqfmC8i?=
 =?us-ascii?Q?aGo1o2QnNWw/gvBhrWjUuzwmvgdvCfpjvkx5LioxYPURZUuEAIHq/joS+lLU?=
 =?us-ascii?Q?3yuZtN7v8yJtryIUC/OqjO0TMNSUmzkj69Y5y2sOXenUIsiO8LTzl6vSpMEm?=
 =?us-ascii?Q?3yHbRH6OYp3Z/RuEgtQZpQd8NYmkHjUIi/9qkzlhSvRgQ3U+no10EFzp6CJF?=
 =?us-ascii?Q?DgYX9/l4w+XtLSzs7WdZTXROCk4lKSd+bSWQ6Oo9Q3nmxrW2BS3TXH1XvD0j?=
 =?us-ascii?Q?oxD02Oi938hjY68YaHSUq+f6xXQlF12/NqrV2ATtEkWavAoPzA5Clz4BPGr7?=
 =?us-ascii?Q?gn/z6UrqwuDluNGXkjaQPPY+TYhfblfNXujHgxPI1x5pxOwX67I3AK96XHFI?=
 =?us-ascii?Q?MsPBbPdxokkh30LWsxplzrmoT3PdnbUKN/ZrIGnUAJ3YY2iHP4nj6uJjmD+U?=
 =?us-ascii?Q?aD/uLfz2ro3Z1jdaFRHxduK47shNuNsXUcs/kMNgbc+lM4EEGWBQ5oGHsqSJ?=
 =?us-ascii?Q?sCL9+vuH8a8DEri1N5llB6T/cYv1btKKeI3IZm4xnxvqum2LdGqxAXSokwkb?=
 =?us-ascii?Q?7MYc8rEn8nSRUt7KK0I5gsvZ1Us36e5BEGa+Hm2dp6HAGEXvNg8nCSuYC2y+?=
 =?us-ascii?Q?2Pa+Nf3pDOEaDClmApovLcs4jl+a8tLmDgh/YCL9FphRTAHPTniFNvi1kdYC?=
 =?us-ascii?Q?+rMxTz3XSPmefhMgxRgJNmTdvNSPhJ4AbDU/db4SyL9tStytrBBqLe5PKbPm?=
 =?us-ascii?Q?WdvBj2BkJtIlvYmn8vE7cJKiY718vlGT5LOqe6B2iepmDvWUiVX7mlXNhmRs?=
 =?us-ascii?Q?F7Sr8IQGleEMx96252dMZvDmU1XetfBoJVKTgt/H7Ny5TvxVfP/wFXDoqTh4?=
 =?us-ascii?Q?VmIej6/Ny+nq/w4b8W1UWpiqCVZyUPjutHarheDPPt5qzNdAuPZV6HzqsLa7?=
 =?us-ascii?Q?TFzvAUpde1Can/DA0eoF48/yDoz2FtDcAv7gjKHp/DZ7BM1u8oa9r1qrDVDo?=
 =?us-ascii?Q?eq/TnkWKYSGp6OB7fXIOHrTrVQAnO60nwxt8Hw5Z9XwUnfX1cN07DIzJb1oY?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a84ae215-800e-46f1-21f5-08dc39c20515
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 07:34:25.0979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /4zpZbATbanzB1dedlINqm8EqdZ/f1UBN+3IKaZPs6X/Ou/pKowpwhTozpCI7WIVDq3ihP8PVPhhimVKy6pe6sbZNCESM6HqWQ/NWvqu3GgcmirQP7bjtS+4zfEWYiFV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709278474; x=1740814474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fMvjzkNSw4qo7PhlaTAt4jgF2s6Sv8Ty+PjmGrWnsVU=;
 b=dp6wtv6/LOcnGv5yOV9J6/VZcZpjtGaJOdpYLyqQHesaRS7p4fvpsCKm
 MhZIpjY21ItCyNqqtkUeWzSqO5wIMMWYm3CcKjetM1YQdG6oaqrcoHDxa
 kO5eE/GpvWk7ZC+DP+TQDDWgDXPT64Ci+unWqJQ+2FeMdQ0AV9wERAJcB
 CxifPAZF+84TN1ugSBOr7dEuBw6wEeeHX09x1Ilc9+NygZWTDOicHcn0N
 b37x7H5LVs3dMKIhSnBG61LHq54maF81kwqWKcrTdJkRtB2Vs/Qg5uaBq
 QQUG+gYbo96n/ZVYKfIXZncvK9GMFHVgRQRnxp1Qfw1ApqqVFqUFr272D
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dp6wtv6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] ice: do not disable
 Tx queues twice in ice_down()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
aciej Fijalkowski
> Sent: Friday, February 23, 2024 9:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Fijalkowski, Maciej <maciej.fijalkowski@intel=
.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Karlsson, Magnus <ma=
gnus.karlsson@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] ice: do not disable Tx=
 queues twice in ice_down()
>
> ice_down() clears QINT_TQCTL_CAUSE_ENA_M bit twice, which is not
> necessary. First clearing happens in ice_vsi_dis_irq() and second in
> ice_vsi_stop_tx_ring() - remove the first one.
>
> While at it, make ice_vsi_dis_irq() static as ice_down() is the only
> current caller of it.
>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
 > drivers/net/ethernet/intel/ice/ice_lib.c  | 55 -----------------------
 > drivers/net/ethernet/intel/ice/ice_lib.h  |  2 -
 > drivers/net/ethernet/intel/ice/ice_main.c | 44 ++++++++++++++++++
 > 3 files changed, 44 insertions(+), 57 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

