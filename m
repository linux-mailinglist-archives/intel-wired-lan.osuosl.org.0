Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83565B528EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 08:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D07C40D1C;
	Thu, 11 Sep 2025 06:36:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NL2SvgSy3UMs; Thu, 11 Sep 2025 06:36:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 835BE40D39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757572589;
	bh=6BUcDRgZjYn9X0WULxUO1F1Y19T6QrnsGV4dRUhT4yE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y4yheQIdPo06BSSeABOUyEs1oXRO+GOzOpDNTlY4sGI/WS5EMTsFnrCViyD9A401I
	 2OFUenIsDYW1IURCg2cYPDoPT58fHza2J7O4TBVQhHYW4+B5XBEGtyc/fe/8Q2+qBT
	 McHxHJth69UjJZTPxAcFTlMP+q6rhxhFwSejXEuGn+SdACH7kQfgSw0Tag8CdOEK7h
	 K9dM72RrGiMhQ7PqdGopaEb0G0cUBzwqttBx2XthR73X28GC6Z+QT5GsPAKBHg/OyK
	 G2EyEQZBmyG70WvN6ntW8ndBee4N2NyCzLkEp5qwcXavBpSFSlK+l1Vlvh7sBA8+wa
	 bxz8e21yYx20w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 835BE40D39;
	Thu, 11 Sep 2025 06:36:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36861443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C61F40843
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRJkA_lS4aIF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 06:36:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0674540654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0674540654
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0674540654
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:36:25 +0000 (UTC)
X-CSE-ConnectionGUID: +gnet5toTPa6nX06BqBLcw==
X-CSE-MsgGUID: S5s3FfN6SkOuHaiLNUetpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63723660"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63723660"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 23:36:22 -0700
X-CSE-ConnectionGUID: HQJA6jmyRKSa6Aix+e2wbA==
X-CSE-MsgGUID: 7yshb7v5Rs+pEMfbcCwRIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="178808759"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 23:36:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 23:36:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 23:36:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.50)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 23:36:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmuxt2uqGpHshBxrvlYkUKyRhPIxIuJt/Rce0rLgxoQImf8mdGhViujFNzNLCMS7kdvowyWBOTv4hQxiH5thw757IgsTf6vo5euxvVfexuHPknOGbpRef9N7bcUOn8/uvoPdkOR9ABe33S/Drb4XesyNTofSYXJRRybh5ZgykhZ58lo+ZRIUcne0P44MwwkcjpUmymkggm+CY5A73wc4zLBHLi14U2oEGMevKK9zOkH/1naJhIpmJotl/W9LjFNXU6pZWtXwiShhvqlbRdljC6FFAyOKDraiayHu00BaQ4xbO89MA2yNQMnyutxb86x7cm4Bn0AEndR3dDa3VXXFOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BUcDRgZjYn9X0WULxUO1F1Y19T6QrnsGV4dRUhT4yE=;
 b=voOewWq7A08QnxfMfyvAhPTdbcPPYTSpc9NtEW79jLso4KWAwWw9BnRtEKzpxl3khWiGg1DqYAKZtaQq3ntGdgQU5Q3+/FhM4z9kd2S0S8e2tRulJF4LiU6a+dKN6pETyYHT3bgH7rHW2Hxor6FKFcwKQYExPV24gG2h1Hj8pH0J/x+04BK6BIpdObUqCplEiZ9Y3YAfYvSMTvkhFyMF15MqqtBnfCG4comiIdRebvPchg3YwEjLE7pqKsXH7oU5rGO44LXEJPQN7nBpnq+yD16g++6FfykvzHOODxmOtBvrt4Nyw6gKV0yH4c2TL1nZM+3h6uhZlIYAwPugZk8yew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7507.namprd11.prod.outlook.com (2603:10b6:8:150::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 06:36:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 06:36:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [PATCH v2 iwl-net] igc: don't fail igc_probe() on LED setup error
Thread-Index: AQHcIlmOEhM9RUZOb0i6DbdkbMTSfrSNh4qA
Date: Thu, 11 Sep 2025 06:36:18 +0000
Message-ID: <IA3PR11MB8986D670D2CD4C1543515308E509A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250910134745.17124-1-enjuk@amazon.com>
In-Reply-To: <20250910134745.17124-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7507:EE_
x-ms-office365-filtering-correlation-id: 11301a11-030d-4c13-06ad-08ddf0fd8408
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UXasWvR+MkMmTCKFt/KiKpjoyw58qGBErh7qyoME6fza1z4PBP2L8ySi8qko?=
 =?us-ascii?Q?pfjlfK5XFlhg3Vj1++WiYjFH2w0MIshjNnedTwyspBViHT8XBuFIyg+fmnIo?=
 =?us-ascii?Q?5rZF0V16kSK45x8PmwgnTn+bgaMkr+H4q/nM5H/LrmAARnqAYeaBn2qq78Jz?=
 =?us-ascii?Q?NDGby8j5ct7S8zrXbtMGBt3eUHdghzlloG2CJkl3eqzWw96A4y/4G7oEjz5c?=
 =?us-ascii?Q?0rWZeQFBQDX/nNAC4WwJrQOESpNd9GD7AY+oNvWHMJVNdRqHQWDCOD0afvhC?=
 =?us-ascii?Q?sPB0TOqLl36CdGor62s7/BYMXjsLk+HydlCT21H2hwpVdcR1hZ2Rbm5ZdOTg?=
 =?us-ascii?Q?bE5gVhbli3qnIJw2WYDuuEmkK4AAVhTJygk5mYEIJncBLZDOi5+zX3gOLpXG?=
 =?us-ascii?Q?DLRaxnu92P9czEUCgWEJcImaBq4gKQa8Vo35tiIneZHxCx4xlEpDweny4cvu?=
 =?us-ascii?Q?5p75B791BDe2PtH2+URhLOxQMZ/e5xAFbUj8jnRnv3Exmyrre0URSZkiZeTL?=
 =?us-ascii?Q?Y9KTDdt6kLOQBFRSi0YfCRptbXOTbFvwuZtsM9l8n3ZIYTFbUsYuRVClydkm?=
 =?us-ascii?Q?yLucLjY7wqAVSnV33fV/TaAOZsvRxFJKeWTJfn/F7MCWHT6H7sddsbiFvF5m?=
 =?us-ascii?Q?CyHTGxu/1k9LbjMnGQGyiEzJmSVAhBm5mnXQ/T3iuDHOUj2ss9AC/qdhJSJ8?=
 =?us-ascii?Q?fn563UOUavu444mPDz/hWZov2G4aJJZT6iO0uwEyC2Ev1biegzezpbWDlagZ?=
 =?us-ascii?Q?lrJGNOvcvs7ADykWOhwPGKHgumoooTdund/BJMfzbrvs1Pbhb2jd0Hnu8pIB?=
 =?us-ascii?Q?HaPCqFyg19fOU+0WHu7Nm7LeJk+JovWAkWh7wAw2dQ3EphItghWQ+urVgfke?=
 =?us-ascii?Q?LSF0nT3pEXjpU2eLyjn9bbPLXI5MfOzx+i/PuMBAolYKL1ZOE+vHGNVe236k?=
 =?us-ascii?Q?g9zSpaxS3ptAl751C7EEDKY4Qkwr1yC8wpBF75khrbxWRwZzF3QTfhoIQDjZ?=
 =?us-ascii?Q?Nk7dIJrbHsAg/vGkVHnVsKbpJtjWDLJjkwBXulXyTM7pDPl/O58Wodct/OK6?=
 =?us-ascii?Q?tZDAc39dJCXXWWjIQMj5N902HXgGJw67gY2L4PHjQw6p5NxSrkaLMoCqIPmE?=
 =?us-ascii?Q?Iw2PWhqJnJuq50U9i2SivTBtt853qtYmf2hY4ihw1UeVu+u7OeJMaLJbU1iU?=
 =?us-ascii?Q?R439UfLn5YVgWpcqVUeEoACoSENQ1IiUYfvywaRgtezlnw3EU+d8l4ERomcn?=
 =?us-ascii?Q?KKdZX66V8XG2TY6T4EFcwYg6YTpK46h5dgjKyZca2KzYi44YZ1W2Wvl3egQT?=
 =?us-ascii?Q?mnohBUV3vIecWbUZSltLbCmwyrAlZ7fs8UoreRYHUfb94mBJ2+RCfkffxqmd?=
 =?us-ascii?Q?HtRizFWqippo9OJR2fjLk7OaxgGW5RyCfO4QmaMRNrA0GLH41rGDbojJrUNc?=
 =?us-ascii?Q?fs3FEhC92wU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SSKAXl2YVoFojhKbtTv0BkR1uUUDUquyuUvCu7mOy9YGyYS9E+crjzdmr6ad?=
 =?us-ascii?Q?GsBJrysz+kN5k1B5y9Rjiuj+i3F4g9ONKYNzgWa2HSOzTwt4BW29Awh5sSt5?=
 =?us-ascii?Q?P3zy+VCsy3ArZQ6Oa1Y59IM4P7iL9v4D17ZOhardwR9/1kvMRf2/yhcKqv4A?=
 =?us-ascii?Q?9MeoWssRnkXzFnLyLvtUl+U8pWmeGkN2lWd+hBUbB4oCXhK9AMcuymEWYsNa?=
 =?us-ascii?Q?Y1m/+hMXKcehlx81zzusrvOi1SgLxyfew7VvCtXb8S02HlRhWJRfZVG2GODe?=
 =?us-ascii?Q?aeCU1WPtcv3YKMki24EIU1h+6qNj83uTUEnRfEPtjT6L8WJG8mexh2a4ho2t?=
 =?us-ascii?Q?QT4lOcuBoi15H7v3ipeSs7cLFUfQqkRaIjRmKa7Cyjt8aOfOsLUtmIdQyh1Z?=
 =?us-ascii?Q?dDfsRN1jd/RgDc2Zjp+MLz1ZqIqvN5lxH4JLFVd6zzVgJ0ODKqGvTOUp7/8D?=
 =?us-ascii?Q?Dvkn3M5nA8E37kPt78kXgeDn0Gq74GMwBg4H+HhXKVw2KBZYnwQv3utoVZ99?=
 =?us-ascii?Q?FNf4D9U6TFfpjDe+NmBuLZKCYW8dzHXIWXN+eJJ2f6JidVw77wOwhQ282EXX?=
 =?us-ascii?Q?eIQI6U7Bwxb08yGSRSInFx/qJAKdJ3AKFHsxActDO8gfzATPx1FxnHYBPeyN?=
 =?us-ascii?Q?cbS6GMANs7a+VLnK7fhRxT4VC1c1PPhzgzTkz4jyjPyqfSS5UrBaut+eXHdg?=
 =?us-ascii?Q?So4td1yAkCFyjkgjhVTUNaqbhuM0j2XXIPOdlIEGzibjWY2le0toGqvK5yN6?=
 =?us-ascii?Q?kQsADKImPMf2FIueTFBOISjxfGYRPAbnMBz7LLeOF3S0iR/USx+B9m4u/ySK?=
 =?us-ascii?Q?Klwx+NLyvRGbK9itJS3nxE/pMKrE8Trf6QE54xxdgkuOO9giXVmC0geeOtuC?=
 =?us-ascii?Q?RRRmWQT/CEOBcmgi6qWpOrrwi5cWjwo1zus3SW06WyLYKZfyGztBXzyiHLz3?=
 =?us-ascii?Q?uZWGqWS4ww4OWk429KitlwEHMK8u7P3JeSC7pJ+MvfROayHY1wXTldAalWB/?=
 =?us-ascii?Q?PJUqJsIW8YMKDhls5noGOJbujwDJxPu6NOUOb2bf8kea5zYW8WSwf8kvB1fY?=
 =?us-ascii?Q?aGYA3fgE2znzRErfmJIETjR+d4amRPncLfLW9tKAZ10hjFMqbzZUt2RQcNxk?=
 =?us-ascii?Q?CNkX158q8F4xVfwnuNJNnFIhDZc8hDfYhZ7BrEs9PFIVIgo3hgBFnOmRmIEi?=
 =?us-ascii?Q?QiCkxlJmOo1Ek1fyI6TFQ1mG8XWjC8LTbGhFiHnpSRVXKa4uKhMM+c95aY78?=
 =?us-ascii?Q?FRYDhynp4b0liJRxToY2DjXU2rfjGkARfTFdm8AHya7FE7v28U/K8tzaH9PL?=
 =?us-ascii?Q?vR/NPNnbCrz6B4uT/7tpj0t3Qx/rsqgqsmLL58ZwJQeTFutkrddZ8QSyhIqx?=
 =?us-ascii?Q?N7nzDjB/DJR9GFPmcG3R3c0CG8g77+mg2x7Vz11XxFzus8ecQMG0vm7vtBUb?=
 =?us-ascii?Q?aj165VrnSPa9RlwAIO1yOSwCXvblug5D7sFo25DXQZFJHgOCw7OtxSPJxEv1?=
 =?us-ascii?Q?eigAcKYPBCmCNt6s2Ic1kIYQl1E5mq2VsXt1EQbSLBDM9ZUD01UxoouuEG3V?=
 =?us-ascii?Q?0QIfbo44l+Fxy9JbrjP4Lt8aEMt+StT70iJihsBMZceW92vKNRxbb77zyz4c?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11301a11-030d-4c13-06ad-08ddf0fd8408
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 06:36:18.8727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lxflvLBEC5Z0N3CyAcuz2hAu1toip/vKkIIN/zZPJBt+gRyAX+7XIuuLbrNPNJfjzPTLFKHk9z9oVqi4BHoadF9kRrjV15e3PqKQIa7skec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757572586; x=1789108586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SEHMsXeMKNgic+D+sN2vomu6n8jay8w7ymPXEEAc6v0=;
 b=QC/vH6hmQeUpElFAjLXGL72/9fZxGT0gViPSmLHfHv44O4if4a+7tzVB
 8rSi+8mzfoCv7c0JPY3U7BCrOvxm07Ri7k7L32F5OJ+9v5elW7lpiB2rV
 aaa7DfIXSqf7YfGxagTeimHC1PKoFtd3UQibOajBQmElZitUqou885lNs
 fztCJD0A8XcX6HaXLwGwicUU6AY9jrnq2o0mb5TtPYX/U7i5GKUbAy+ct
 Lmcboe7/Q32zaG+u/mHSY2FZPSYBy0A1TzeVimiruj3jn1xiZ88jWwxwl
 CBirQIDHYKef+lnUBkQilsDoTxeKFGfpS3f5I18S1T/KgJqK5O3YWpZ2e
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QC/vH6hm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: don't fail
 igc_probe() on LED setup error
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
> From: Kohei Enju <enjuk@amazon.com>
> Sent: Wednesday, September 10, 2025 3:47 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Kurt Kanzenbach <kurt@linutronix.de>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [PATCH v2 iwl-net] igc: don't fail igc_probe() on LED setup
> error
>=20

...

>=20
>  FAILSLAB_PATH=3D/sys/kernel/debug/failslab/
>  DEVICE=3D0000:00:05.0
>  START_ADDR=3D$(grep " igc_led_setup" /proc/kallsyms \
>          | awk '{printf("0x%s", $1)}')
>  END_ADDR=3D$(printf "0x%x" $((START_ADDR + 0x100)))
>=20
>  echo $START_ADDR > $FAILSLAB_PATH/require-start
>  echo $END_ADDR > $FAILSLAB_PATH/require-end
>  echo 1 > $FAILSLAB_PATH/times
>  echo 100 > $FAILSLAB_PATH/probability
>  echo N > $FAILSLAB_PATH/ignore-gfp-wait
>=20
>  echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>=20
Using fault-injection test using failslab - excellent!

> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
>   v1->v2:
>     - don't fail probe when led setup fails
>     - rephrase subject and commit message
>   v1: https://lore.kernel.org/intel-wired-lan/20250906055239.29396-1-
> enjuk@amazon.com/
> ---

...

=20
>  	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
> --
> 2.48.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
