Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0646FAA0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 07:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50454257A;
	Fri, 10 Dec 2021 06:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQ6Gk9vKcTc6; Fri, 10 Dec 2021 06:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4ED842547;
	Fri, 10 Dec 2021 06:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4185A1BF847
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24E2F8521E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="KptYtkiB";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="uls/8ai7"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2A4xTgKPaLx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 06:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 483518521D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 06:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639117617; x=1670653617;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FYTrv5n+r1ulVoTnayfQHrHrNmBIiAMfy5IYIM3ydV0=;
 b=KptYtkiBwpokXjSKm9udTY0Ytoq8emaKzii37lLKGdrjpW5sE4ZfyGbE
 wZ8K/no4jzhG7IKKkNyeon60+hGohE9kDWup02SGhfjwrG6EBLiIwYVyE
 clMakGoRihxWRKDFPjxbxmnZYAsRncaO62J9120WqoFSvm5CZ7hUByrt5
 gEnh+gsK4EJGRU1yJj7XUN6JdxzCIXgW0eWM58dJ1RpRp1JHWWUIQnM+G
 tBq9IQK/WzbyMshhid2JS/uGi7qs8KD9X7t8wOeMCYf9avCRs3a6qx4pW
 Tb88O2U+XQHqUGKmK5QmhoRruvh4+NwGypLpYEAGEDFhsjRtG2Vprf7Jl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218308748"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="218308748"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 22:26:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="659460751"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2021 22:26:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 22:26:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 22:26:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 22:26:55 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 22:26:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GF/Fn2HAUG9yqARwXhOS7qNoizxKy1LOj9oFQA9zhrNlC88lcP9Hu2kzJnuZyOIpadDdL0dW3reiRFU1HuuTzSFx0rofTjruwZvgN/DjHY5YeKXR/m4+Bmf/IqwnGygHBhXsPE4xt/VvK2t/A/Z6iwgBXUGJy4JFYPjCZ8TKvHkbJiMaxM8Cbb5jTzPEa/Fq1HshpYv5o7apZsp9Z5QHuAUL6h/Zk4lbT4jbCyo1ojCZsW4FZ14WdLugPMY9BOO9P1+SxbHuAX4BoZ8VtR+luA9CtymqOHO35e/zutbidfCf1uAkFvojyKhwylHtto95WUq1EHCC5cWfNy6GFGEsuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJOPyfx5EefKDIsGDy7Z3OA9DcUwYXSkfef//77rxr0=;
 b=nb4WMTNKMtp3QU+rcGxVjRCg6Sxa4+xDN/CCAjwP42WIUXgvFXij3hUIisqYPh72IwdF6VATuzjEGytLvxKzdX1U7t0ym5I2Fe9FKSFgibd29fFHNPm8DDp6azC+Yt+V2/GSogsxiuXx6KwjqEei/+0obtNrbeP5e45vcPluj15CeVw8G748ZGstZXIu9OG7NqrXFtQHyf9xgIKNNYt2NV1GRPHDZRlU+4GeqvCUxFx8q82PzK/YPviOmVIeQO/j+sCpOI7VE1Sp1XZwBPmpdd/JsVTpxu2LCsriR4ZE0d001f7v7k8/5kFvZbkeD6ujvRcMyope+L2bng1D3nIsVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJOPyfx5EefKDIsGDy7Z3OA9DcUwYXSkfef//77rxr0=;
 b=uls/8ai744RgSmZTz+4GCUFoYKSfLVx0bIVchS9aWtMlTskS2kOr4EUGDek7fAsXOjPXJPmC9QI7NqI5uNllu5+lUbHGCHCTN9fHKD9Il0x/Cdons40GplJfbcNLEquuDiBRNqYS7dTcL9qQYkHCn0eU414nzR2HLSxlbG23C8w=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2742.namprd11.prod.outlook.com (2603:10b6:a02:c1::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Fri, 10 Dec
 2021 06:26:54 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Fri, 10 Dec 2021
 06:26:53 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 04/14] ice: Introduce
 ice_vlan struct
Thread-Index: AQHX55uf23fUWKBLA0umBTDTu1By8KwrTnOg
Date: Fri, 10 Dec 2021 06:26:53 +0000
Message-ID: <BYAPR11MB33677DD083BA5676DF469445FC719@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-4-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f80dab13-518d-4c1d-ceba-08d9bba60ef7
x-ms-traffictypediagnostic: BYAPR11MB2742:EE_
x-microsoft-antispam-prvs: <BYAPR11MB274246C897A975042FAF95B1FC719@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xKQp+muxVBERGQbpzkxXX90vajqgn5ScIDC2lHr5hR5BDPeiwbYDsUm0Hb8DeFqpdSbzZUX+CmxL4LbVBy9dEkQWz1PP/uJqajHHgjIbMSOG4QFCEwlNfAeGwKSXvqQR4IJfxICqAKi33Az3s35Y72F/h/d2H6YhVfY+W3/FSQhNQU5MJwn6wlNXJfTY/HbDllRTI9Gkw9Q6zx9YFXXTccfxEZukyoy6UQ3/pXN0j8aFe05sc3oDGBS+CgYoYab7bWlN3oZuhkOEBwCZrH+oE6d1934sMrwaATr8d2I4+bIwi0iiE6UM4j4tzoIHrqF3QwA8XZtLGJFnfZxCtfjwS+zE5R5bRhCnBDgtUX53jd2gUkIzJj37KZqWNsCZMCx8zXOW9o+wxCbWC3lnmKnMLRW8TTKIJTIe+47IjceG18QPWetG+Pg41FbUuDHEfeLAPqMMlmUQyUHaEPwjIoa+XRa18xhMq7yr6GSJ6s0MpK9yVP0qmdeF+M0z5oxZ6NFyv2j3lH2kZizR0HJolkAWidyYqdT7Kzv8tqonRAos9W0SCRyB6LJFUclgX2Ina8lthonELlpPW2ury4yFrKLQpcuemGielDaMIa3RE0Zw+9jAt7Lt5RT3TBYj7J+Rjc3mt3aV2Yh4IJjEkK34hvRFdOmDJiRyACW8NYjqC6nlG7e03DOGD5s+uLcnsTmoSYzKDjk1LY0v4r6LwF73hJluZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(9686003)(122000001)(2906002)(52536014)(83380400001)(316002)(110136005)(55016003)(66946007)(71200400001)(186003)(38070700005)(82960400001)(38100700002)(76116006)(7696005)(508600001)(8936002)(53546011)(66446008)(64756008)(66556008)(66476007)(33656002)(6506007)(86362001)(5660300002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fXIq7W/vcxJ4UWeAfNslqVRhusXSPrkiW3mhE/yP9HjSP7aOxpz6ldDqpREB?=
 =?us-ascii?Q?h3jJn1ygieoheUbKwihqCYOlOp5fMCEKSK+GwHe1rjDKsLm0pbCqzwDSelG3?=
 =?us-ascii?Q?N511ghZlNCn+Cl7Ak6n65WEwJR3feIKiOvTUaPXEELyfF1oGGGzfr5aH8J/X?=
 =?us-ascii?Q?63SbqYdOO63XKGXdEzMQO1L0XDRYGHOWb1l0uIShpX5oawiLy2ChuEbNbUu7?=
 =?us-ascii?Q?cff1wbPrQnjrfJrDL11cdUy4r1TMH3+XQOJqapZQxSvkX2H605uwr1pmQMzj?=
 =?us-ascii?Q?IQDfKD2gCjyUPsBwU4J/ZY+4Xx5l99mQf7N71orOSu5T6buRag0TT052GbAd?=
 =?us-ascii?Q?gr1ThyoS6GdvYcppfaeh5sDtXjpAO8ygI12TWHcvWnnjRDX0/ijCF4AlWdmV?=
 =?us-ascii?Q?u5MkrD3ZzkxLvJK6lGSZ6gGSywsRqbo9QyHdfSzFc0O3eKtyrP3IlDhppNcY?=
 =?us-ascii?Q?zM4iFM8rY8XNbheSw9Wksjfrl9sBCEwR2uKU9rp2Gsiin0sH742irjlx7Jzl?=
 =?us-ascii?Q?/KPv1ZeudlyvUy3FJBmJJArFxxLdhJL8TPNaJTjaGd3Bj2fFqKDIOKPx14EM?=
 =?us-ascii?Q?U+wfYFxjtMc/ywwCsqAWBIaVLihNwebCEw98nf4X710X0rhvkMM6IIiKzzFj?=
 =?us-ascii?Q?v3h8KvpGDVQK/Lm99iKJApd5H3yRIudgGC2nj/1mfbNPObyrJhcHfTfRktru?=
 =?us-ascii?Q?SiIy8Wmj36dawrSXFB5wRT0CyPn6oee26PHRIyQYs8OAcw8cGpR8tAV+eRIK?=
 =?us-ascii?Q?Tn8iR1OkiRxvUjmh49Vsz6VsXppfp7HyFpNoSo5k5JVxBDNbmtFyjJRPtUCP?=
 =?us-ascii?Q?6Al6o/lxdG8O4nwLs8APmsY09+xRKkcVGEfJxHx1hIfuhAUNlGtIL5NAAeZM?=
 =?us-ascii?Q?anOXr3+2VlTcvROlsj2dSkmTmFF7giXjRYWYeHjoKUz6nqKF2+l/vI6wS5TH?=
 =?us-ascii?Q?mzIvPnR/11rowclglYbwfge4CBT5vldiJKjPYsJv/8DOVVdDk3r/XAB1sUpc?=
 =?us-ascii?Q?oVxk6jtreCS0TmmeyZL3II45bS1pS0tMG1J/vYn/0urhx7AC+ELfDxa9kWgN?=
 =?us-ascii?Q?6ocol36ACwzv7FmNcaAqKr/Lq1xlxkphxwPUB/4oXpQ472DVj1VZx5AhBYoA?=
 =?us-ascii?Q?ReabaGnojJsFldyV1ea7Maw0C+PQr9R4xXW+zlOvKqAB3A3OzKS4zHNfMJ95?=
 =?us-ascii?Q?Qvyd4iRidltJRtNUZuEMS6pN6lU+FLhxwBGQBO+4EIQNExu8o7UCf/3AdrE5?=
 =?us-ascii?Q?QfX59TUBN0x6EgAGlBlk2P6ysuipsea2ok35+hhFyu6BKcd8bsc4liy5ygp1?=
 =?us-ascii?Q?1Ens6IlBb16cUW5pQRPfqVkZsOOzo8emKNZ8e+qLcxX3apPULYwo/prTqlIF?=
 =?us-ascii?Q?qTtD8MIMu3ULpVPNsrI0HKFpiEWn+UBxp/d0p0SNC/JMdGZi7WYuT42H5UDe?=
 =?us-ascii?Q?4PzL+YCtOTJxICg4Xb8IZG0vpGqd7iMk+UlIG10xi8nCnpr+tKlXwQ34f5jO?=
 =?us-ascii?Q?p6hlPieRpVxusc1ZuQuXH6kwZ26J4rXXM+KUo6hT5p/BMlllXFUCiS/yG0Le?=
 =?us-ascii?Q?UlD6ObC6a6Z+WzfSO5Jt2tQ/CpJJ1D1jkJPoWkgWtLsv+9raCUX+Fk5ASS9e?=
 =?us-ascii?Q?jA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f80dab13-518d-4c1d-ceba-08d9bba60ef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2021 06:26:53.8472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ml8CFF0tmEh5Ubdsb/Uq7XMV34FXVQCoZ3CYZusaVkjjvlDBe0lmQ6fFLWu7bswT4sZNR5e561DodxHmK6bU0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 04/14] ice: Introduce
 ice_vlan struct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 04/14] ice: Introduce ice_vlan
> struct
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add a new struct for VLAN related information. Currently this holds VLAN ID
> and priority values, but will be expanded to hold TPID value.
> This reduces the changes necessary if any other values are added in future.
> Remove the action argument from these calls as it's always ICE_FWD_VSI.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c     | 35 +++++++------------
>  drivers/net/ethernet/intel/ice/ice_fltr.h     | 10 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  5 ++-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  8 +++--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 19 ++++++----
>  drivers/net/ethernet/intel/ice/ice_vlan.h     | 17 +++++++++
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 31 +++++++++-------
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  9 +++--
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  6 ++--
>  10 files changed, 82 insertions(+), 59 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_vlan.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
