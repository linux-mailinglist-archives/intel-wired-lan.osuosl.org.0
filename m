Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12751894A67
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 06:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0C6560A47;
	Tue,  2 Apr 2024 04:23:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QFUEEYmfp2qC; Tue,  2 Apr 2024 04:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3609605A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712031836;
	bh=v5OldAeX5cn0E5UqiRjNc5nRZ9ydczCwy8akbI24LxY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wGp9pbVHCxMwOCwystMFmuUI0oPJnQNqOySAWp4pcIO6w6sOvKa1wAbVlqJ2x0df7
	 r+qH6AUpzZcWjqWhfXn5wMOc/pacwPeIy0ztN2svdwnYFt3eUA0wG4FckD3H6vHFV9
	 QGoLxTeTtOxbC3ebKpf3uZbKE+5trMuAwhSArRa0q9heT8KbwQJkbVyF9ouTvxVWlp
	 joFf0kHTaYuYlA0YV4sIAUl3D8C1z9aDQ6TJdJU6zivI6Cp+W/3ZFFqgGSskPThaqf
	 LvuspI1ROaL6046aUadDrlUExl5ZcyNw5W/2HpGwqIg/sGhg4jTwFJwj3aWxW4VjJX
	 RnDfz0JcWz6pw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3609605A7;
	Tue,  2 Apr 2024 04:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8376A1BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B5AC605E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cxlJweodQvRx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 04:23:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 276DF605A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 276DF605A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 276DF605A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:23:52 +0000 (UTC)
X-CSE-ConnectionGUID: 04WDyg9HSQmrKpXFcTgGDw==
X-CSE-MsgGUID: MJVhXNDaSAeFvzEsVOlcGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7369039"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7369039"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 21:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22595216"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 21:23:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 21:23:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 21:23:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 21:23:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 21:23:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLRDFQ2tEFa1QdGeil5vWGdJdZfvB5vRkFr2FU1z9rkG8L1vwjhzlP1apNGnaq34aF25W45hI/Y5CubzRNbKv6YL2NXacjZUOxU73FPqH7+LOzn9n5F8WPQjlxbgIkdzIZK2fmymTqFvu19WSEGuKqCj8yOuE70h4t/FeDZsvbsxdq+rBMMVxsBaJjRaWF4lAxm+eFmenh54zzq2jU5bi9dOvGUEe7Hmor/UX+fwTrCeGbw4oAT9Vugdqve+rrtGIUVP0SoP8vHV1ri3Nz8Q8ICiqfx1Scbh4ya4sIOcJI1wzn/n6eZVIFDxQZOj27wl4mY8iN2/J/Xnfpq2j1eZUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v5OldAeX5cn0E5UqiRjNc5nRZ9ydczCwy8akbI24LxY=;
 b=CXaed6KruEbIlN9odsOk4muS3uYEoKPd9NI1uCJlnT9Sco2Rrp0LU0pXJRnKnZxUAr6hTng0x8dz0G7nq2RPjb6+vQtNwYzlrGq7He5CRSEFKZoL/Oa3OWDeeSINvfjUXzS3mgJSTpkJ3vD+xdrZf6UhPf7vjv7IYxnz4sTiQ6WaYuDFn3lb7WGEHW1/QMlBSii/FK77JxafSOfe+lqd9p1/7ENgucIaYxyszo9MvrwAiOZ/dwKyXPLa/rXdU7+mDSGNKXVv9BHcjGSFWQHk9+pjG4xR4HPV8PzXwuOQ05042z3fsxDWXcZzRMVk/fOBgRQs9HfiB115Uri7CX1OCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 by PH7PR11MB8455.namprd11.prod.outlook.com (2603:10b6:510:30d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 2 Apr
 2024 04:23:42 +0000
Received: from IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d]) by IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 04:23:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/7] i40e: Add helper to
 access main VSI
Thread-Index: AQHagBy7tyTWoKp9wESRnDcwE1a3JLFUaoNQ
Date: Tue, 2 Apr 2024 04:23:42 +0000
Message-ID: <IA0PR11MB8419AD852982EB278FBC9FF5BD3E2@IA0PR11MB8419.namprd11.prod.outlook.com>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-5-ivecera@redhat.com>
In-Reply-To: <20240327075733.8967-5-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8419:EE_|PH7PR11MB8455:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5U34VJLRtRxZWxG6317T8CU/qQwh3TDQgYyQkvFZDmtRfO8HpHzUwIxRzB+y1Tzoq/SwhicVxMGlqTdOV+t5fjol02VV4vS4a1oflC74nYM0cvlANdDUvTOr6Ew2u15rpcjMzAyTYopdj8x+VRYIOwgw1Zuy1sSDXEVco5fCJSrJtpxldeGcVBUdwjUHR7YGxhVbsPys5+zYna2ePEpXEHvAh7MpSWlKcEY8c7A16XAkpguH4jsEqmy3snyVbYymsS8h6RBs9naqbSo1DjTd4z8xdh8oLfEYqWwvavxNVumZtEamsLTrh3DJZRrF2jNKJxjJNBUn312F/iWhcHY9WwISE9VXXUR2vHhKUGtroISYg5xfiTvaJflSUX4uQ5lFSEpTEjzydsUNthvB68/cou099EsW3TkZVet+mJfIBYic8EIa+YAEAp9PAauxbRbFbVfQ6kKeapB09xmbzUeiO4MDtMdxJT+fL+MG5LPJ2kg56OjtgTHfbgjBwSqEbacex+4KnwyoqiJwnE/rUDO3B+piYS/+nj2A/mkBhbzUPwJsbZD07R72vv+qXh2H6CazcDT/MxUwQ8sdC/r7XoT73ldM9VUqmi6quB5bs+bPNJ2vdR9j/DNXT38ZDQPOMCYShgOfmVoBF/B/+4AERhf52jX+qqTzoB1B7hxAdtWhNmE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mxsqkUj2X6vRjY6nAxEAfrjpXXEgvwaJIraMVlQAgCdkwm+S2GPbngZbGATz?=
 =?us-ascii?Q?wLrXe1PwCQZheuUagO01wzbqAez4GpOrzlqnbMG+vXoJJWRWyIZzo4qhSQ8b?=
 =?us-ascii?Q?JNN+1Md5GepfPiGg2xq9kSHvdJA7Lm3wKsfJ7PoG5PiPTYBuNlQy6nvBTQ3e?=
 =?us-ascii?Q?r8fo+lSsT70JQPr24GayPgbV231cLiOiZFw+dnI0c8+IRg5FfsWaAoahaph9?=
 =?us-ascii?Q?9nsRpiRwRLPUT7Hev4uQZ7XacthINg+L3TuYB31Je2oKaMNHZuLKfoc4A4mq?=
 =?us-ascii?Q?HuZlLV3PCJMfBKae1MgxYfclXeChecKlSCfWJaR8VdC3JT2IaK85T3UO2IMl?=
 =?us-ascii?Q?jqngEffjbSUz52Edb4XqbtDCe84ACuiWzoIeYR5XgBRScKEfNBiFkEDyDQc+?=
 =?us-ascii?Q?/sKd0L3VbsTWhq+KHr+6NFm/ldx+bYMw44PQJRQgC3kikwtzl+50cASdExqf?=
 =?us-ascii?Q?cSBGhVi5mwgpgA1kWjvGk1P6UAoKftGRpQzs52T/WzvmsNsCZz1qdaRm2bDK?=
 =?us-ascii?Q?6EMIRzsto4x9b1h0kpr7HaNHuOKXwhRiYYz8B10ig0kIAuKDfs6UsoNaMBVW?=
 =?us-ascii?Q?qehe1hOs75EGR2VO59csuMKzj8WttphM9NAigEHAAU8RxuIsZuECymrjBh/X?=
 =?us-ascii?Q?G7rdW+vovmGx5skY22MwhC9cS3Tsy3E73w4fAlGYx2SIuWkLwc1l6JnT13ne?=
 =?us-ascii?Q?Dl2WbEZkSsQEVjExOYRBt6XnRjMw2UujzWhx+/OibsPDS7a55fAas3kp5I2Y?=
 =?us-ascii?Q?Idy0R9KyrIJtEiHAuU2HzsdADSjbcDgLJYkgG4XMHANQNcnMnYc92yEm5z2E?=
 =?us-ascii?Q?RFzAHOyumzwcJ5C1QH3kuejuWwUVgfU5e0dJbVGhncWInRs9ca75DnAxwUn1?=
 =?us-ascii?Q?qmFK4FjWOiCRKO1deckCAOo5b8BPTw7JRm17jaEJIa5rn7xNdgRwKx0QM+Q5?=
 =?us-ascii?Q?gqya5HlMsXwhaQvZg700Uy9L8gWY6SBL5QF4O7weCsyM8eJKL+FmKXUAgRK4?=
 =?us-ascii?Q?Gjp3+9xSske44Yjp1YHLxpD0U41ROvxyfsc3TdNSHIKmluOWIhumsgursdE1?=
 =?us-ascii?Q?JtHXMA+tpjJ55Nr0L6GZOSxv9fpWwg1T9EFSYff1a1pAn7kuF3gddwjY0XLU?=
 =?us-ascii?Q?PsQnErJzWYDbbvtDKt6nAVoXgQxmgDQgncIwALzEyNM17AoowcT7xEsKW5dM?=
 =?us-ascii?Q?oTled2moqE0BNhSjZdrIu61RsxAUROkuBYs90HK/GaBZwfR/cdaIquP2dO92?=
 =?us-ascii?Q?XIyJk8BSKamSSD/5R5tApWrkAFVhA7A23qrGl2vwTKejaQAAgjEXDzP1Ncr5?=
 =?us-ascii?Q?bbGSLKRFr3GL3Frd75Gh3Orjy4kSRJRqn57xtU2mGTKBQA+xyBgzsRUUASIv?=
 =?us-ascii?Q?h9UyYSIYNnlzYvZ8GHFKP3gCLwrXS6haJaLtk3UlksyGOnWZTw3d2BbQQQpM?=
 =?us-ascii?Q?IqJOhyte7CR7DjlffmreRYKwpYH+5NH2mHe9m7EIKnCkmONG0K9+55XiBWEX?=
 =?us-ascii?Q?/lp7H+hdGEQbVgOdDFi1eDqWkEQToRBFY8cp+Qw+jx1Q5tnj+cPiPBJYt30/?=
 =?us-ascii?Q?U6nrDGONV2+oJrPEZ+tIAAZ568z2m4ZWIlgjDrVeo6uy6VoJZ7p3tCKurAIn?=
 =?us-ascii?Q?Rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8419.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db8b0b6a-ff9b-4202-d30c-08dc52ccadda
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 04:23:42.3334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pt3wOesdvcAxGPfmTtko0tnhXcoSBvABX/IkQnh+3sv1wxNLc4Gi+HC2bRJjk7A4Behs4i3RcAkIN0FqeZZakiEJjwMOrY9V3+ypTYuc1RZ9uX6CVCc/lw+Uv3Z8iWsw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712031832; x=1743567832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/54bojvBZrBqDfk2Rb/p4UDKmzlwhg63T10IPGB84bM=;
 b=H5b85Jr3Trzzq3l5FvVwRK5yu7rmbCKuYOnmwuHvb16qObgoIb1KYYaA
 gH8oaK+3J0NKBvbwwhLxRMcxmMk2jeXfuCo9AlelBa91GdKzhleg9vpXM
 RIzrahH/xbDIBKHV14q0er7mfaMxTBnHa5PpDP+biHh0EkpKHh4l/jcYM
 6TJYrDHBJggpmRH2zNY8qb/nvfbXZmERX7NMK3Kivy9mjDoTZHEHHrs/J
 S+C9RVyZounJ1f+AYob6SZal8fP4jqHZGraUqGh/MRthYM47Rd7/jj5SS
 spvzyUX6O8ONBD4dNb7f84Jqpr6J+G1uew7OIgVlP2T1zOriMm24zWo6o
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H5b85Jr3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/7] i40e: Add helper to
 access main VSI
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
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/7] i40e: Add helper to ac=
cess main VSI
>
> Add simple helper i40e_pf_get_main_vsi(pf) to access main VSI that replac=
es pattern 'pf->vsi[pf->lan_vsi]'
>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  11 ++
>  drivers/net/ethernet/intel/i40e/i40e_client.c |  10 +-
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  32 +++---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 107 ++++++++++--------
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |   8 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 ++-
>  9 files changed, 116 insertions(+), 83 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

