Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D647E8D451F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 07:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A77E66102F;
	Thu, 30 May 2024 05:57:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ahGS7eLf-DwW; Thu, 30 May 2024 05:57:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E359D60B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717048648;
	bh=LxJTHB/1hTL4Aw5P2fL8q5y33PH+9SaA8zdTmWIrzR0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1BEsZz5FocuQCic5ENxrQSOizAvV0mehfAlPJwUG8U9XLUu2bC0qdcPvgkF+gYFU5
	 YokYeheDnOAPtLaNMtJGi9XGhOvJvwKCHZW+moelKatBsMuakE8kV+Sv9LfateGiIm
	 eHmR4+51D8s89w9DLPj5g/LOwoDNDKvJMqO/BlH34sWDf5p1K982ul2n5vEHriuUVw
	 9rCiLthyPqUNR2eBg3YrirhMeDhJRd/UI3oDVd48HtSzT2/B/BLoTd68pJ92WipKFB
	 uzMmifm1RllUH4V4N/URBtUfPTYe+FV7yCNLfh2eHQk7YMrD66qvqx4bTHDB9egVFz
	 xZlAFizj59V0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E359D60B13;
	Thu, 30 May 2024 05:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF4C61D4236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C71E283641
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:57:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XO7aY1k7_rw4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 05:57:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB2408356E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB2408356E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB2408356E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:57:24 +0000 (UTC)
X-CSE-ConnectionGUID: ELAudZGPT0qdf/BfL2IM9g==
X-CSE-MsgGUID: zOX1UzD+QjuqEUHptzbz7Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13633032"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13633032"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 22:57:24 -0700
X-CSE-ConnectionGUID: 9M1fKmSmTbun/zBRG8jdpg==
X-CSE-MsgGUID: Rtb4YV7QTKavZhRBaK782A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="40566825"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 22:57:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 22:57:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 22:57:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 22:57:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5Z265/0RGQDdgaFraVB3tHz+UBaaKbntI2Qive9zIxNbvD4Psfx5pp+jzuUdlFVcC1Msz5NgdGf15zpRwaqReF3atQN0Kbxm2kDOh7Pou4S8YTVqqmspIuAruVmPwlKN0zBXfh19d3EvMxXbYCtHxEyJgAstlZsck8GpoWN31TWM5dEUpWjTsAGqFvZOGmdUfjWorhElEFPDQ7BpxvmQjKEzl5PM7X18zRyeouV9s7fxC+UtiLwQq4VtHd2aWdCJCU1sToequFTED4WiZz9rn5KXfa/vWf6G00JY9baXqqL0HISHHLKmvJ7ZhSjRDbhaRnuGoFguh2i8qArXnwhww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxJTHB/1hTL4Aw5P2fL8q5y33PH+9SaA8zdTmWIrzR0=;
 b=fEgxKsDcnNJkavBbU4Zb9skg7B2+ASTNXgs3/M271d6HB0jjVtz6OT1KTkYtj7XE1utENgqI8N707/zQpPGPZaYnafluNvY/EnNaAufB05UCV+yfLJI2Wg3ps1/WYllXIcOqGpJjCXlFxNqX1xmrKjpDAyMt5llcDupC0J/woUn948G3u/dxNb80IFP5Ss2nuREnwmVde8J+w7Ep2Ru+lmDXmGSPyUqPIIMC40sUhegL/r8EGZ8zUfq4jgQbJw/n/mIejtrGS3sTqzT7I/2RbyWRfy7qx2J9hxy7vhigqRvdzrb/HI4KEGMyR8gwLNYO1A+WZYe0bZ0ZL6R12soG1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 30 May
 2024 05:57:17 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7633.018; Thu, 30 May 2024
 05:57:17 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to
 vectors in ice_vsi_map_rings_to_vectors()
Thread-Index: AQHapuJhTByGvJMbykuLo11n4VFJRLGvXlKA
Date: Thu, 30 May 2024 05:57:16 +0000
Message-ID: <CH3PR11MB83136BED89135F5F702B2756EAF32@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
 <20240515160246.5181-4-larysa.zaremba@intel.com>
In-Reply-To: <20240515160246.5181-4-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|CH3PR11MB7204:EE_
x-ms-office365-filtering-correlation-id: c1ea5151-0171-4887-dc12-08dc806d5c6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|7416005|1800799015|376005|366007|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?s8eGgW0KZmQweJaVXQ1jXGLVoAgZkozuMqoVj+i5gn3b9eDnuUm4hF885KMO?=
 =?us-ascii?Q?wW5lAf164y2Wse3SUbJmBFgEmDNH8w4E/lnPysR6nLZXGSwPjxHk+aThneik?=
 =?us-ascii?Q?RSi8Jde3DCNeFt9sNgQlHgIIArSQaRVVFlcyex2cTnf7o5gPP2L51m8t4L86?=
 =?us-ascii?Q?zpm54JbXOHHpGTmklj8yfw7cNdtPCtMlYlfRm5y6VCxth9xFwZSxJWKcwtvC?=
 =?us-ascii?Q?mkXAm+oemFfeh/gEY/CSp263RzqaXRHhqS6dWMcFvQCJaeVo8+zz5O9ZSMHm?=
 =?us-ascii?Q?+mdBotJcZw6qy5oG/Do/XeNTIv5dY8T4Jf56CRUAupCG2w8WEN+rVmK7/cTr?=
 =?us-ascii?Q?LyGgVTG2dYyBAibDXkeGyPahJbeyexO/dOSROELZw9PQ6UDPRky46axraQnG?=
 =?us-ascii?Q?OoN/j+IfammqgAj1EzeSsajLqstr57e9re/NSEVRqw5AILGMdMmTV0dxWQ5e?=
 =?us-ascii?Q?kw+Ll+MtL/2G+Wrz3RjTsAQuJTqJjH/RTMOn+uTO9UYfqp1+Pty3uB9Bkr6f?=
 =?us-ascii?Q?aTVB5VczE3mkc+iDMF21nLneVBkrgGlGUuse0RAYCmNzlwa53b/N/U08LUtQ?=
 =?us-ascii?Q?H5nlmz1VIBlJafSExgwSmJFR1gexQ640QmVWn21BTSIhn6QGJvOuBIaGrikt?=
 =?us-ascii?Q?eEZGtA8x71aJ31ShjRUvK3ASuUcTFWCcXpiNKhiaDAVIQ37B6bl3y2qfIt1Z?=
 =?us-ascii?Q?cux/oALAJshvU++rxntzYVv67nYNk3kRWRyxzYnC+kvlHcFiFsZEMyHbOW+e?=
 =?us-ascii?Q?BJcpIyLV///f25rViAa0sByh5NO7OEPUVRiKav3f6KM/tzF34J8NP1F+0qPy?=
 =?us-ascii?Q?uXTa90WVHcKW0zyQyp3VHQ+uunR7WCn7kd2QbYhzkKpFWj2XFQMkOmNeOJdY?=
 =?us-ascii?Q?9DdFpy62S/Ic+7VXo81dpoTPPC677DOGqcJuzjvCe77qlfNYbXQejKN0xV6Y?=
 =?us-ascii?Q?lkQ7RW1MhywRKhQ1JVpcSE0edexdNi8k1vVPTSdlYR+VrDngvhZGN8oHNMzK?=
 =?us-ascii?Q?hRUukxuwZHkP6HMIGcREVxbDPaQAWRpJ9iwbT8WvxBgEmkkZQY0oqJuxod/J?=
 =?us-ascii?Q?UP7M6ZerdEBWYzTyx5b1pExiv+7La5mYX0XvjNZ/o6jsP28eMcPFbO3c9g4W?=
 =?us-ascii?Q?1FnEInLfALjxjR0Cp9J1lHGQWk8auFsMiGwekxlNuWB4BBl61ffz3QM0MK+2?=
 =?us-ascii?Q?PPd5ZvKA/JhNzc7Of2SMk2FivCY/N4vijMSHdvKTX58f4tcWjTWMUa7rdnlV?=
 =?us-ascii?Q?62DiTWipJ8q081YFncGqT9koewyfXdNjKpPs3N1zS/OQNpCVTy7XJxau4gZT?=
 =?us-ascii?Q?mXYZRLlldrasPUz7kI2BJ+ve?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kuwIQ3APXBGxn6L606Bvv7b+jI2X+rEp7bDJAswNLYxIh7DWqNfQkv1IC+zk?=
 =?us-ascii?Q?5cShLFYbaK73+UtFrsB2twjgDeY67JH2LrMA1Q0UaxiZofQoRlEYDytpu78B?=
 =?us-ascii?Q?Kjj8s9SiszZeT/bnfuTDw2F3kq0DVE514tFc12lTNKwGQCDLOzKXjWlsSdQM?=
 =?us-ascii?Q?uABFkcj3uvNKDaxB1/PDxSXFJFj9U6z/AJva7VLfDOyIBEeWI331rr43Pd8p?=
 =?us-ascii?Q?ZME3khZ0W3tufU1jE6mg6yWl+2YbDkUSC1mMWczFHxCjiloGb/ssM431zXUE?=
 =?us-ascii?Q?zPKq3LF3fP+m4gFgnwTKmyxy63QbNouZVxd6NU9YSKpH6lxi6SFe4Hh7vKE9?=
 =?us-ascii?Q?Rpsv3cGEVBWb+YgnDvrgSLh3O2FALd3Qr3+d2VvOpfZurSxq4B1Me5kvhj8M?=
 =?us-ascii?Q?vYuQb4RK6i+xSOfuD+4CgOrftYpoTa6lxWICXe5CYx+QIYykblI976ujpyon?=
 =?us-ascii?Q?t1QiPLX+bjNWPBqbuiBxBwh4B7hJQdzJOEax0pjzKTkKiijZCxbG69MydG98?=
 =?us-ascii?Q?ftIj00Y/ildbHDPgpfJTHu/MDgHXT9Nm5bYbMlnOER2atfWold32rgx6CXva?=
 =?us-ascii?Q?v8VbomSP0QA7S7jbrtW3xyAQQqkMwu9PFKBJa0xt+qHTH/MmnBwxArauqva+?=
 =?us-ascii?Q?zgHqmZ6STLd4ZOZUvmcc7RKsvW2YHogcmD5IfQGK9mHrrLHUMPp6uvLemBtx?=
 =?us-ascii?Q?CK5mhCm66lB7lJmV0oHO3YYXuj4sgSkl4uRnwvNYR+yj1dN1j2lIxyzOz1fG?=
 =?us-ascii?Q?9nF6h/oiAacViCLLcgYeg6rhZYdpFqHiKy9DvvH3874yKIaBMgL6cdIR/JsL?=
 =?us-ascii?Q?puT/ui3IItkLGVO8e9/rRpy7iGbnP0ghFrmaXcLu/+bk7C9gkrj12QfKLdiF?=
 =?us-ascii?Q?D4FoCuxPDmLKQuK/ka0RTvCKPlcRq+OK6qI+wA+E1Thfm7VQu4O4duWtnqDQ?=
 =?us-ascii?Q?OgAejbMkL83VnT7o+Wz7qzhf+nZRfEguA1GVsDjFmet013W+6jxyeIYSjIVY?=
 =?us-ascii?Q?5sOJwbBHYTg1We6AP9ym3GbkL9Wr3QSIy0mmwel9xTD3TrxPjYUOK3Ct6blS?=
 =?us-ascii?Q?76ePmoWbx8vo/YzUhVPTnArGt9CnKCOPGrNrW9/vddVysMFSi/gK3QS8Flao?=
 =?us-ascii?Q?+XWDWPD4eKcTRaq3/J7kKsI+m7qPWt0HMjuZDNE06d/T7HTPd6QbFHIZzI3a?=
 =?us-ascii?Q?tvNBb74/hEE9IqGDwlK3qI/SXWXG+E5MbYFtddH1uhOWcBe+ckh24F+uRqRM?=
 =?us-ascii?Q?IUoQ5eTRMrBtty+HahKNmzxxhtA4HN0BA60Hc0ENQv6NA6MdiFixF8NtJftZ?=
 =?us-ascii?Q?XT0WTU4U/t3GokEckmDP9W7qdDtcof/QS85toY7afJxK/1iQTncW9l5ISGLh?=
 =?us-ascii?Q?DdcOS/2RkErPsiiyMKfwndCln6eauKy8CmQ07vTETVlEEgUjUCFkGXwrQiwU?=
 =?us-ascii?Q?dtZlyXtCYvKyTvj5lQ+64fHGq5ptSjiIfQ1peVEIIeVewkYiYacOeMZs7izj?=
 =?us-ascii?Q?Kz/exCeKV8dy9B8893FNuYJq4coJ1EKpVdHl+F9vGICY7MgOxJuQw3FoRhCR?=
 =?us-ascii?Q?XRC0k2bU6MNVZTcVWd+ef/hKkzJhAMHFIBQ+jO9H?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ea5151-0171-4887-dc12-08dc806d5c6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2024 05:57:16.9971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THcErkv4XhZxMF4JmYY0h2PV/0QdY9cgRonD0X0LqMqLc4dOF0JClkZbfBzOBDbjxi5ZRJFnBsLjiu8kzuuF+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717048645; x=1748584645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/8knkel7pMjm6F15/k1mXHFhcQAujwISgCEaJX5vIrI=;
 b=ZW4NPNSfmkzJM8gYQ9GxkxjaxISgYHsu3HHPuz5whZTMUTCNfZ+DM/gt
 LSjo4AmFeYkfEJJOh1hwULeW2jv5hO3cUxyZHSgHGpEQESPTY2MSYx+33
 hgPtq8ken/HbfC2E/V4+Zj/TWmWh3t9AqX4+3+giBdC6bdQlU6FNx4tdK
 6lV4B8TT+nWtjnhPC6ZigszhWlA2Tq4unhO1a3OEBEKr+SdQuMx4TZfkm
 n3ADWMmO4lf6A21tDMu1PSpRQL5iHfrCd5T72ieq/eE850tahzHXqjnda
 uMMTaMy4myoHMviUXTzc0zVFu+NEktiGdH/URKLbdGuPyS84SUHq2MNK9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZW4NPNSf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to
 vectors in ice_vsi_map_rings_to_vectors()
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, "Bagnucki, 
 Igor" <igor.bagnucki@intel.com>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Magnus Karlsson <magnus.karlsson@gmail.com>, "David S.
 Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Zaremba, Larysa
>Sent: Wednesday, May 15, 2024 9:32 PM
>To: intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@inte=
l.com>
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Jesper Dangaard Br=
ouer
><hawk@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>; Zaremba,
>Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
><przemyslaw.kitszel@intel.com>; John Fastabend
><john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; David S.
>Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
>netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>;
>bpf@vger.kernel.org; Paolo Abeni <pabeni@redhat.com>; Magnus Karlsson
><magnus.karlsson@gmail.com>; Bagnucki, Igor <igor.bagnucki@intel.com>;
>linux-kernel@vger.kernel.org
>Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to vect=
ors
>in ice_vsi_map_rings_to_vectors()
>
>ice_pf_dcb_recfg() re-maps queues to vectors with
>ice_vsi_map_rings_to_vectors(), which does not restore the previous state =
for
>XDP queues. This leads to no AF_XDP traffic after rebuild.
>
>Map XDP queues to vectors in ice_vsi_map_rings_to_vectors().
>Also, move the code around, so XDP queues are mapped independently only
>through .ndo_bpf().
>
>Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h      |  1 +
> drivers/net/ethernet/intel/ice/ice_base.c |  3 +
>drivers/net/ethernet/intel/ice/ice_lib.c  | 14 ++--
>drivers/net/ethernet/intel/ice/ice_main.c | 96 ++++++++++++++---------
> 4 files changed, 68 insertions(+), 46 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

