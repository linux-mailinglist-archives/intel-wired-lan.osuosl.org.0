Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF158A3056
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 16:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C673B41F9B;
	Fri, 12 Apr 2024 14:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ul8ghIE--sM3; Fri, 12 Apr 2024 14:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E71841FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712931577;
	bh=iPiaipxQNokhT6DY7FX2IwWBnkr+nBwHtcG/21iuthY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2+05j8a6s2lG9mS1ytW/xIQHfo/KcUfgTi2+j/IQZEysRtYjOXzcFkfnN4nQaF5s3
	 FL7boXs/YuUGlKaxWnEMIFpa0g0QnixmpfQiQrKotzgZwuglrps3TDLZTFk3M8BaOA
	 8/1ARajpGlTxhO7VHbU9xTdYnnprTMFIGml25Yi3QfM8x5Dh1ffmzRNmzKnQtyLsew
	 c8YEtFmms6yI7ZblFp1fWesE31gRxS92bsSMJyDS13qvDc5v+3Ej3sVV0TSAyWMUGK
	 UcY94lCUFzoTF3A2wYRQdoc3mtC8YjLwULL2CaRnaAGAK7Qjt+RYJkgJWtCYK9AFp0
	 4rBsprn4EaMHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E71841FB8;
	Fri, 12 Apr 2024 14:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC7C81BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 14:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C765941F9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 14:19:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bAEXZtkFU-pu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 14:19:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5574841F9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5574841F9A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5574841F9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 14:19:33 +0000 (UTC)
X-CSE-ConnectionGUID: KCVOSbx5RG2NHW0I1zhVHw==
X-CSE-MsgGUID: Cd1iw7e2QwSzPd1SOq8hcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8942453"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8942453"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:19:32 -0700
X-CSE-ConnectionGUID: kaFhoXo3TUWFInDy/KUpfw==
X-CSE-MsgGUID: 7RnWzQi3QRCDZ8XgjnU2yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21326675"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 07:19:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 07:19:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 07:19:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 07:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1ix0byF6tgX6xrKhqdlhaoPjoJq0qTD+cuCB2OrHdFdnKBMEaBefXNltDD8ehsUWl3ZG+AK/xTzxM5qE3i1fTzUMFJgg0UlGkpQo2vK+C/rfRikuHXEv++Vqhz8w4b1ZSS2t4cZtTv+NoEmN+KJ3104wj+tExyitQbpMmoldElQoOHpOLxzZM4b79Q3V9XVP4+O8rkG/NM1cZRsiwYzeM9oSub0UDF7kHo92bghMR+h2xaDUzhQkEzSatVqUJMoFxXJj4a/Ga8ARniJwXGzcFN+aJ9jiNtlgLzj+45fzFsq8fYumEW1jupcLldNvuICvmjuIUz16WWLyp+CORRk+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPiaipxQNokhT6DY7FX2IwWBnkr+nBwHtcG/21iuthY=;
 b=GYr8maVEo9IIOn2FfV1DqbUFK+IhRmKNdSPNmA9zeXpbs3+7Ce7lhH1ME1Uy6tEV+dSUs0bdwN0QUaRn0NkJWzbFs6qgp9Ak9UdWkmInfCCWMUuJY21rOvlMehw/1K7Yd+7uE91AZkhgSAp189wzcDmlNqbsKxwQZ2k424fhXtUQBdRRzRRqpNpTx8/muH2KcVH0+knElYMfSGZDobPebkKbTo68FRqGGPBIICUF6JK78PAtTbLQ846YMor+UYkBrgKeFlXCCu0aFtCFjYg8KyKXt8j06wr8wxdVbI1zufOkGKdmWLO6KBb5pulrRD5ICLhe8B/txrEpwJYb5xmCMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ2PR11MB8450.namprd11.prod.outlook.com (2603:10b6:a03:578::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 12 Apr
 2024 14:19:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 14:19:29 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 7/7] i40e: Add and use
 helper to reconfigure TC for given VSI
Thread-Index: AQHagByzggR7TttIg0OxIBSRWnLKXrFkyEXg
Date: Fri, 12 Apr 2024 14:19:29 +0000
Message-ID: <CYYPR11MB8429538B7E55600CEF5C6937BD042@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-8-ivecera@redhat.com>
In-Reply-To: <20240327075733.8967-8-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ2PR11MB8450:EE_
x-ms-office365-filtering-correlation-id: 7875c2a5-191e-44f6-ebdc-08dc5afb90bd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e0+MMb3Y0l22NCXHlSZE0vwMdbPT0skWi9FguOV09TLOGTYPO0sQMSBkn4Ae7K0CZ6pA479M2jhf+IxJkwMZmENiGhzUsAH7U04TT76nVQ/A553VdBggMUqHEe2ImXtDeHFbvCTAvLOSf8ZTj7f0DdEbmmJ9ywP2Zav75aq88SOr7pN/aFBl2Lt4A7ej2WGYC5XP+je+fT0HzBTIcE3deWMFzc6trQXvkn+/OwW/7aUWgVx8wE3Mj1XmCUVhR67W2e8UnHFhxeka3n3aQqJeB+N7Ljj/v+f3bsdM+QvrNQJx5qNH6H1Uf8xzxs6AHpbMaRIXmkYPkCAFGA3wlToay9fRlk8Q5uEP+pL11y1kH6Z3fWiJ6yFTdnJWNhyF8zBM4kHKk9UC+fD6ST1pa9lgsXNQXcjoXxr69YOraHQlZejWZLv98Ei9K6yDTPvFaf6ksWNB5sPxWZfH94pmvJAXy7cgWPLEv9xWi0tmeF3Tnj+8txTD6AcrhTolV9EWe7mb1Tj3VUK9bHYbWAzN12og2SB47C9JHNddockWgZJgN9E+1O9KUhnJASlchUFqi5p4qSCMEqShQGHS43KbnClOtnx/FqZl5XWO23qi918Z2nxKMKwbJ0iSift6zrxZN6C52Z5DpwT/gAHWTifBgzHwF0EMFQWNyFGeAiwoO+M68OE4bM+v1LwKh+/2ezlV85lPGcVg4+mCuZrjxq1/0moVXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DdK8MGQQxh7FGWvoAbBfFs0IVtKAtmUHfCRGYvmEr8/Py2R18q37EFSAWufi?=
 =?us-ascii?Q?dlS0XtX8S/uNNjoA2ETrM144/cnSvSVu+3qkzTfIsACAiVYknnd0l01Yi5/l?=
 =?us-ascii?Q?EQnHC3fgN7chlpFSXhPf3HMNM1ZZReVtMlK+gstJ2pyOr5/ngIKii8SS332g?=
 =?us-ascii?Q?Kzi1s5nnAIJuoIptviR/haLhXPCQ5Rh36SjpHRsiHjIxPxfQ/ZsnRbOs1HAP?=
 =?us-ascii?Q?Ml2LaOrLvKlT92TtrLzefY4hGzYwXi1RCXH9kuvz3fAYvt5WX5DPY/s9eVPZ?=
 =?us-ascii?Q?04Vf85/ahRBAZUCWVOzomCuPF/jV0syelg8+NX4OgNvoIJSu21ghcb0oZPeE?=
 =?us-ascii?Q?vm5R7YMMWmegcCZiflc2jOVqNVTTbd7MomKvZB4BLkqxN1bsKoLq0tLFoN58?=
 =?us-ascii?Q?0Rq25cQ/JtF1jNOlV6XlzBk3q0PsLYSma4ts7j1Ju0ThRBEK1G3TXGt+3qlY?=
 =?us-ascii?Q?nFHysL1KKh70lZr1ePel4n8e/det9WVKGhXF84IEaYwsOsmDqbKD04zMnXjU?=
 =?us-ascii?Q?URF5iZbf/auP/lO4Lrq27ttOkBVSrdfm0VDFnWXCetyK1q4mLqd/Ff914K0w?=
 =?us-ascii?Q?j7i+9h9q4Kg4YvuX6M1AhxRG6enXc3fZmLFCRP0INY+rnePNMvbUCYAkhGz+?=
 =?us-ascii?Q?2/7XagJlumZWgXsC02/Tnl+yxR5PBFRZOEtDrVdytKmki+eHaaqu2S6iSrmY?=
 =?us-ascii?Q?EJq+LsUNJnubmx6PNMMZMVXG0gmAhp9VtKt+TRAJNgIl6Qqo9bJ0kxIEewwF?=
 =?us-ascii?Q?a5HwNBUd8sojLPyQI9xZI0K6yCkdouY1Dr4H5pvpA0d9Uuj7feDCAnJs6CNS?=
 =?us-ascii?Q?WCGKVe6D7pXROg9IISq3iSwL7cnnklp9LrVjP0rXYedEHACqFmmCllc+iYJG?=
 =?us-ascii?Q?PEGgzHHS3pVs6HT4U3TbrGAfC/JramDvaw6sYCmG8ZJoftIYT4aAgkIavlpd?=
 =?us-ascii?Q?5p9+EaujA+V/4jz+KIpznQxxAnQB65rbXKoxm/A9x5Ns+yUrCbTo7Lxzeeh7?=
 =?us-ascii?Q?geLo6+FL9ZlQfAPElBScXwuvOcI+jFtV8e+SQTY9Kqmn3Lj6IDrjcy+/rJoZ?=
 =?us-ascii?Q?X85Rm4yZOqOOmtJ+TjFTe2sfbbUYUWB2Zd7xyF/Oa54UAl/lPvWiqrob6jrX?=
 =?us-ascii?Q?ZOzugzTGabXuIt0V0GtM7wtKN0Ywg97tz8o4lup8myohMwRORBAQkmtsIXq4?=
 =?us-ascii?Q?+MtWWQlp6SqNDkYl5SpVPHzDbsV8DjV8+EE2CXI92SXPYiRXflm4OSAwxJ4Z?=
 =?us-ascii?Q?AncYS0G1h4oVm9Ycxfu7RRVBuIFL9ZwhSfeORf1G+18BNAG5jWGWtVW0M59z?=
 =?us-ascii?Q?D71wsK6tybSqaxYLJpilOpBUTqrEn6JZAUWewC1DUiGhBa4orrZ6zXniaZXB?=
 =?us-ascii?Q?s11pujx4acZ9FJtkhZ1UrLkeHnyyw3K6FOEd7wWLCgO6vv7zZGoD4De1MH5L?=
 =?us-ascii?Q?d30UyQ4ZkjCnhJyx39iEfr4sDbtPBD4wqRKlyMwh09p+XRCXVqlvuzAuAFh8?=
 =?us-ascii?Q?OzdDWY2Z0fZnIUzUtCrvvGLG4MeHJo1R8O3GKxtNDQdnR3dIikx/y3V9QWWb?=
 =?us-ascii?Q?fLNsdZEG+n0JfVosKoUMxq+Df2lRi3j0JfJWU2eGShqhF+gOy7U+Q3HaW1ii?=
 =?us-ascii?Q?eA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7875c2a5-191e-44f6-ebdc-08dc5afb90bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 14:19:29.1277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OBK02+1er/CcrgAZ8W3SwRWevIzMF6eyjxv0slfMp7ayc4cwQ+7Q+POli97MgYvXPdGiYMMYAmme0vzeah7CeirrWl91r0Z+KfEjfHD8ha93qQM8zb6hX8dd9YQur4MO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712931573; x=1744467573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jQEwNza98EertlHrxSRxY/UXbv2TB2d3ZMV2VinFiCM=;
 b=B/Bur/pU6160zLupDTsw4wYKXasgeaWpMqsxw4HBfAw0vFWx+2GqQ4P3
 2Ge6EfRA/SJrwZaE/ypnhsrYI4lxlZiBNdfkmGaC7drN7YVFTBucvYM3c
 rLFqJQHWb430v5/KW+fu6yWWJ49SOZvEN3OV03Ananjvbp+MD12L6QPHh
 aJTJYOLuMOEPlrbrQGJqdK0uObgwsz5vvaQvoeUtSr2Cfz/m1BCIESXkI
 pVXxTD190G24xwhx7St8gkU3Ov/JYf2nXFF6S4rJErapxktTCx2bPnyyS
 cu0p/qq3I/G5nXrP/Y5DlJjooQZ49uB/C/cL8ta8hEzdefqqliuXINbvw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B/Bur/pU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/7] i40e: Add and use
 helper to reconfigure TC for given VSI
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of I=
van Vecera
> Sent: Wednesday, March 27, 2024 1:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Loktionov, Alek=
sandr <aleksandr.loktionov@intel.com>; edumazet@google.com; Nguyen, Anthony=
 L <anthony.l.nguyen@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@=
davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/7] i40e: Add and use help=
er to reconfigure TC for given VSI
>
> Add helper i40e_vsi_reconfig_tc(vsi) that configures TC for given VSI usi=
ng previously stored TC bitmap.
>=20
> Effectively replaces open-coded patterns:
>
> enabled_tc =3D vsi->tc_config.enabled_tc;
> vsi->tc_config.enabled_tc =3D 0;
> i40e_vsi_config_tc(vsi, enabled_tc);
>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 31 +++++++++++++++------
>  1 file changed, 23 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


