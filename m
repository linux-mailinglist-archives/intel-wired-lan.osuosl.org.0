Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AF4A33CD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 11:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7681D40BB8;
	Thu, 13 Feb 2025 10:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ANGhSDUZGHAg; Thu, 13 Feb 2025 10:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B76F40BD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739442978;
	bh=ebHCKZJ0B+XAdEXl+QaipuVrfHXzeM55QiJZmL0u108=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qz0+OH+fIrfIspD2FrT70VeT6ZjMnYEPlZwI9veUt26KcUVwahCBFsvyU9DfUesgc
	 Q742q6PUvPomriQEI6wgTliQAU/qF+KqUfGGIzVFIIb1MjS5kwR6M8PAbStyMAPBAX
	 AOH5GvFJDP5vWrJ4LhHs4CRKytrxC7/L3F8lSt/zLcw8BXQl0ulfE4oPcolUuJS+k1
	 HpweC634r2NKJqEZSrC6BFPyzhYwZSQ8qJ6A1Fwb0T6+b5pBSJF1N0+rLoe7MNEFwb
	 5JmGyYGIACly045iBGCtuILHtzh/1zxv74EaB3pL5K9GFMOKK4pFxrGmizgp4qQQnO
	 adEkO6hyn3I2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B76F40BD9;
	Thu, 13 Feb 2025 10:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DE5E4C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C195F40BD9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8jDpozsgHbV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 10:36:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A29B040BBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A29B040BBE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A29B040BBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:36:14 +0000 (UTC)
X-CSE-ConnectionGUID: Nt6ZQPkTS7irQMhgeNluLg==
X-CSE-MsgGUID: zKILvvR/S46J7xasJGcJYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40259924"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40259924"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 02:36:13 -0800
X-CSE-ConnectionGUID: Vj3Fr9TPQselWQak7MSD/w==
X-CSE-MsgGUID: tlUrY+X1Rb+siSH6aFOQhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113636539"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 02:36:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 02:36:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 02:36:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 02:36:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dmlw7KFZlhDE1fwvyFvV3GZu0FCIm8f1Fm9bB5JkcDqVdGxrb1ny2JRLf4udi1pFCs0nl5RWpN1HR+JOLM47kcaz1T5CloZ+mDHDCeRQKbJCUWm34TEFj1UricNACouysRCE4Yu+32VqBi/9yWYm0j/GsJFMnZoZyOpYk9ELYeY873kC1Hzf8XKoRgQ/uaP5rq84DCvh+G4KYuUOu1+osrKM8Hv7GqA+nSz005aVniSabE2qYB9NQ8KRaGUNsCxKB1TfxS9YUx3LudI/zTBweJjSaNd85EDTcMqmjeuBY2T9DgLYgfAXYBvdBJ5VwdkOzaG8Z2ugflMsGWZlfLr+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebHCKZJ0B+XAdEXl+QaipuVrfHXzeM55QiJZmL0u108=;
 b=BYlLuOP3GVqaimzQTuhxZsCJ47ddTP+MYLTTXOTFMhDvHPNj6EeG1NJvNMUZzcsnby/IKKmeSnFcaKVTcjczCkZbuHfHqXBme+o/tNt60UgwmBPs1TcPpvX+dZqkRFNt4SSfjpwOOUwZFT9QE0xwW0wTnKLQF8+mhzTr05+PD6odMuGb+nxBfXoAbrtyBPBtCQ7D6Z3w/a02Lou+Awh3GOOOvj6Jg8gH3j8hCgDH4kUELJbo//Fp4MJnVNlHPSHkXocv7grrXsPQOjMLWqFGmR7PRjZ3m6nTJxpyzrt72eXsHoIKFVbKiahg/9y4zquqqIQ105w/J1NGPdOciZhFOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 MN0PR11MB6277.namprd11.prod.outlook.com (2603:10b6:208:3c3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 10:35:51 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8445.008; Thu, 13 Feb 2025
 10:35:51 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>
Thread-Topic: [PATCH iwl-next v3 03/14] ixgbe: add handler for devlink
 .info_get()
Thread-Index: AQHbfVH2E3ifmam+8Ui3qX9OUqsv/7NDxFaAgAFG5FA=
Date: Thu, 13 Feb 2025 10:35:51 +0000
Message-ID: <DS0PR11MB77853E17402518C2B56AF240F0FF2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
 <20250212131413.91787-4-jedrzej.jagielski@intel.com>
 <73u3dz34jdnsgoujbjdokzh7tvvdubqmsngaa77a2feedbtulm@v5lnrqvaethe>
In-Reply-To: <73u3dz34jdnsgoujbjdokzh7tvvdubqmsngaa77a2feedbtulm@v5lnrqvaethe>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|MN0PR11MB6277:EE_
x-ms-office365-filtering-correlation-id: b81ee16d-7da1-40ba-321c-08dd4c1a302a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IH6zFFaFAwOxTcnSPB1+ulsBj5hzCKXdi/3FUulXuDoiMWWIAsKwRUnWDKzr?=
 =?us-ascii?Q?Mxp9oEB/nyvPCctBmZBkxvo6/WNM7NTW+FR0CPnGdJDq8r+ltfv3CMLS/z2d?=
 =?us-ascii?Q?nq7+ZY57z88OZJjNBIVVkXg8oquvn42aGViTly4W72i/qhxTiG3uyrfUreRe?=
 =?us-ascii?Q?UoLZsxaazCn+2nneWanx/lQinUVlUC3ots1cePBMViS9y2XTprgoV3TO/faW?=
 =?us-ascii?Q?Ubu0FRGNLTia/Ci0hR9WJ3D7pRx7RpcHWkWa/F2KeL5/YXYyO4GnU93cryzh?=
 =?us-ascii?Q?ydsBGh+aKM24YwORdiKSNvDsiPDo/eNNmrkRGMJ4zbUCjUSw1Nwy1aLD/fbt?=
 =?us-ascii?Q?KMGEz6JnK/H335nilnP/IZDQLw3rVbny+YEAVlIFrbkJeDHFO8TODXGyl7rX?=
 =?us-ascii?Q?RowpG/v6s/pPmWRnF9e3ztKTMJa90vCAkhJ44jsN2Hv9+eITmjriS+2/mZfx?=
 =?us-ascii?Q?DY9CtYR/Wt0A6e2oUk/HtJ1IKw5g9eWKbWF9LBJ/8aaSI6MCh3paaVcuQFFH?=
 =?us-ascii?Q?De+qh8uAbMMfbdw3EJOPvYAptzLTBtOnH+mgfsWufkOQWkByQ6/XEiTjwNOb?=
 =?us-ascii?Q?/bHFSCWYoZy/6Zt8tjhMOKjd1QPUNGIsn9tRdCHXyIR2PlG2rs/uTTGQYoW6?=
 =?us-ascii?Q?lcWPaoTO+atwYmyylGpVKAXB7zZoluP0ZUq12S9nwWnm8jGuPR0IjeSgaD1n?=
 =?us-ascii?Q?vfxRSwjKEDvxb71q7U274jJK/ytiXPASk3hFoytgz1DrBkyeYap+qCelIngL?=
 =?us-ascii?Q?mXBbmptQTwjpLtprfT7A1BFkT+/XbH4zVk8EibVAZKj+RDqPN2++0NjwOn4N?=
 =?us-ascii?Q?52xrCV1A1wg3j0jmQzqymQOAzbI2Rb1RRY5w5xqaDYRNfaFI1WrQcowUMpPr?=
 =?us-ascii?Q?3/67OCSfF5vrIIvP00E++1ncQmZ/KaUAQPDGNy25pP9Ow9eCbEyuqfrI9Y4T?=
 =?us-ascii?Q?D5CXPpczZ1ixTOLV1rB/Rwn+oeVzKEYmeFpFyY5tMek2G5xN7tzSUPLwpxV8?=
 =?us-ascii?Q?VL3Ezo1/SJUH/6L3CkU9p43v31AGBqBq6xYBQjKdHAtr8bwwfpw4J/6Xexvj?=
 =?us-ascii?Q?IgzicvN2Bj8g8ogzykSRduXmeemQ7Fc1keBfAwGZpcAYPvh4P8yd60AWHD/0?=
 =?us-ascii?Q?oMFHj1q7q9fYq9QeWMXpZl17voQPQKyjouTP9LtQgiwCmF2Det1KyMTbxaZa?=
 =?us-ascii?Q?xadlG8slEEFCboJwbYx43nAiKkmeTCbWak7ulCx/jbDBOD27kv1D3QmQaE/s?=
 =?us-ascii?Q?iZvwyxjpLV3KSCqEQafbMhcDBkiPLlSTzgTb+WzVbuytT299r8ZSErzqFW9K?=
 =?us-ascii?Q?eEcsNnPKVp2s4klpgft2qOatUR11T25VYW5QLsV2/BGZoaFUVQlaXWfoRlE4?=
 =?us-ascii?Q?Cv4ebyRZ07PPMABnIYNz/P5Wwa+MrmkT4QfhSGAlDc5fb/Dk25vhg4ZIqsj6?=
 =?us-ascii?Q?vA82bkLZFNtmGtlXoVuuldCnOhH2duhF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7YZmVLu6cR2nqDuQquFpA69vVAGi0VET5cpkr/3FsmXbPh4MdOhTuBUafOqQ?=
 =?us-ascii?Q?wchT5zRz82m+q9l5nUw+BbbYLGH8F6LgObXfmRrpupQjbBbCzqaIVP92S79L?=
 =?us-ascii?Q?KgFf9uS+1eDCLoQDlie2qoEFPHthmrT1+apNwz4dgrDIzErA6iavg59MPyAq?=
 =?us-ascii?Q?khh/aHI2B9wkiW2yrItpo3j3diRcsZS3l5slm5eqO8jyHX8iXKTOqwvi6wld?=
 =?us-ascii?Q?aGthcrc3ISWPyoszYiAK9BHKW/wdh59rG6hB4zTr9Ttl2MTtXXm42qTgURNc?=
 =?us-ascii?Q?HzLWbwvYopvh718cqGWYz93TyV4VMo9PGrwiDmsaRysd9tVfGlaT4RIyjecv?=
 =?us-ascii?Q?kpHJUd3npYIIxA6868nk0TLyC0FEsJS9ebjL/eg959zSV4d8liMlkllN7gbb?=
 =?us-ascii?Q?Oeek2ba2Q5i+tqrQI23qaaccMFjN/uUgvhCc+yeZruT2YSqA8ufj+6C7sSFe?=
 =?us-ascii?Q?4WFe5hFmOvmByDlr06x7UY1lpspxp0GtcCJ/nPH6+4SCJDpFPCO51gnMy7yt?=
 =?us-ascii?Q?i40eDhrAX8VsXzYgblL+GsndYU+f5JGt1WVMdrtJvG6Q+49VVcFdrfyZNO+a?=
 =?us-ascii?Q?5EjmcgHHV+lXTYCmU6smtmnfzaQy0HtXPp6RidPygOF/6JqNo6qQgrUFLay+?=
 =?us-ascii?Q?qT/gXLbVyKrQMEeFR1G6w7LWXb+ET/lVES3FQ8+nMhFJ8f7lN7PTypOZDN+N?=
 =?us-ascii?Q?+Cc0QkVYqTtcNgRfAk1rIMMVe6Hk36nBvNMwn7sWCvihWpxrGCHTmkOTTQa6?=
 =?us-ascii?Q?8Hb/zcVumHbRlv7WnxJnxt3m5RTMrsl7II3FFi4TWsV2LwLrM1Nw3iEh50nl?=
 =?us-ascii?Q?pQXnRtM7kTKXXInd1I4BxCdOm4kv9Op/AmH3NTjKHbOVPv8VNlWXcby6aWju?=
 =?us-ascii?Q?cRDclQYWGpsam2qWqJs3za+EAIcFehfgWvf1cTPWFR7o7RPrFPCwnGkH1VGV?=
 =?us-ascii?Q?81Pby0r4D8/AXMiLP7cyXn0h3HSJkF4xFSNMH9vHHN7sGFMZMW99nA5eFDah?=
 =?us-ascii?Q?j+nTXStdrUxAUyjzt46LBNgQ22+lrSXgyjLCF6zl1o/Qm28GDJCw9OHtSJ0U?=
 =?us-ascii?Q?9ZqSwdwgt/aOzuO3YtvvsD8b0qw1oqrXaYH8TMAtp9F3gDlWhMtJDcVimT6R?=
 =?us-ascii?Q?EA+6UQN0wgqRNMIYF6RC7ctWQXffzjOFFnrpBVLszZCKSCOlTA0Ty5yFnyQu?=
 =?us-ascii?Q?cSvWWajmrTGOVW8MNiCC0UJX7ziZxw7wHb5STze/PzML/rRJYaZ/2AX67k9/?=
 =?us-ascii?Q?0VmVDtzod8C+bVPvGMFDpBDsGhyA20knkA1qcWBpgVpOrefTUKxAQvUxLEob?=
 =?us-ascii?Q?uN7xF/qdjpZhZt6Bc3YfyXu4FCq1KgX//0ltiB1wqgVEZ3c4JjLLegpoeLDO?=
 =?us-ascii?Q?5M2orX0i1AJpEsjzfFxiMxC3nKvxQN/QZIqelL0QGahcpwVpNZ2M+JZSLidV?=
 =?us-ascii?Q?9sK39wfZ7qbM2XguGUr7QMQ3EiCNZPjIa7H8EITQzS+X/QKlrCjMYQTTEE5q?=
 =?us-ascii?Q?Wk+6pwNNdptEpUtELe8CR/8PLZEXarU97pOifQnrWt38B+BTwrCUKNLe+BKv?=
 =?us-ascii?Q?3v1whtrYpH4uyBuVm0ePrKG4LRGORK068oPUZiS/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b81ee16d-7da1-40ba-321c-08dd4c1a302a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 10:35:51.6916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hm4Tp93aH0AQDE9Bt7HjKvoWjKz1tE+EG5P2ErDmBkdzqlOC5w+wzBRc/QOEelKLWokVTy9pcUHSjoUKJYw7ez53kPDfQ5sHrWL0L66zn3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739442975; x=1770978975;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ebHCKZJ0B+XAdEXl+QaipuVrfHXzeM55QiJZmL0u108=;
 b=ZuU3ETqXpYom4PG4qZRyieehnXezexziMKTgxpuw/kl96AF6CT+bvHy7
 fV3cTOqveJYASU2b2yT6trli3+eVZUbVfjTGaBkDzFX8/V0ITynB9IbBp
 AldhZpIndGv0QZm8TiwJRhYB1I/iWT24eXXHjEXkPwOnu0plcQiJ8yq8o
 +Obk+WSJkOUCO7OxAx783mGGMKQQGg0rFCy8VL73XM1FtyGTatr/fU0Vq
 6NOfZC48pHgNPHCKM/I9GFPdBpJt2r+OIueVD6W/9xDPBprprNUlcvLY9
 1IRyao4ZjuBAO73F8gniGlwYyyJYUvfwa5CiyEKnTLbROzQJr2WuYR0Wl
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZuU3ETqX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/14] ixgbe: add handler
 for devlink .info_get()
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

From: Jiri Pirko <jiri@resnulli.us>=20
Sent: Wednesday, February 12, 2025 4:05 PM

>Wed, Feb 12, 2025 at 02:14:02PM +0100, jedrzej.jagielski@intel.com wrote:
>>Provide devlink .info_get() callback implementation to allow the
>>driver to report detailed version information. The following info
>>is reported:
>>
>> "serial_number" -> The PCI DSN of the adapter
>> "fw.bundle_id" -> Unique identifier for the combined flash image
>> "fw.undi" -> Version of the Option ROM containing the UEFI driver
>> "board.id" -> The PBA ID string
>
>Do you have some board.serial_number by any chance? This could be handy
>in some cases, for example if you have a board with multiple nic asics.

Unfortunately i cannot spot nothing more for identification than
the PCI DSN number.

