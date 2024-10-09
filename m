Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 567EF996A19
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 14:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF7EB40632;
	Wed,  9 Oct 2024 12:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_yNPpny5hfm; Wed,  9 Oct 2024 12:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9D5F40650
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728477195;
	bh=l0NKWNxqixinr19f5DxxgFEvS1oDeWNG17bRRouL9Mw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2Bk55GCu0eznN8XWGMi9j+HZoHzYFQSiqSnBXcEVHiX30BzhpWDIntBeYRe6Soa/k
	 8Ac6EstzWn0LPw44ZXnC7rAvTn5u1309U5NJ8qjXNtG76S60I0awvDLQstkg0cKQyZ
	 dt5eWtEq5n4qWFiwdzclb8T+ZJ74vBa0UMeTJAP0mUfEsluX2uPM1J6Mu3V6F+LCCX
	 QPjCA1Y+jcv47ha0v/THkoPQZAu0xpbp+z7Ek9GeCYNBgsaUJUPHKyGiq4TDNDxiKa
	 xTfiBxx/nnHgP2v1uxvlM5GPu1XcUO4dunfacos+WKhwKzH1dp1d0VOVjlrl/yvQMO
	 STV91RFkHIsgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9D5F40650;
	Wed,  9 Oct 2024 12:33:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECF511BF476
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7B9B6073B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTnwr-iIW_b2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 12:33:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E3BCE6064F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3BCE6064F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3BCE6064F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:33:10 +0000 (UTC)
X-CSE-ConnectionGUID: Ju0hsJohRAiqzrejLPxwvA==
X-CSE-MsgGUID: SFYe1RR6SmW378qyTB2H+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15391258"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="15391258"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:33:10 -0700
X-CSE-ConnectionGUID: +liu3BLhTOaYhecFMBaSrA==
X-CSE-MsgGUID: rMxDCAsgToqVZkNE0r+ZJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80746792"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 05:33:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 05:33:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 05:33:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 05:33:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 05:33:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SzDDsxyM7lUInZ2K6mD/5I9TwgW4gBCVmufjtzHJTHj7/s6//IbN+1TiKvg9Y+AEzQOv98ihYEY2Ezv7pwOUknPVBkYD6z+yubkFhgArt8qhDec1niXTn9vVjJ7VMxJNBNGSV9QtJ4hG2gJ5mPCyqKryx0z/oOwG6xakhlTbCqKWI+bvCPVkHQR/Loxla1z+HHEJvDVe3ZXgWJlh5iNOTKbs77S3X1lUOuh+8QKFmvUnb9xzxu5XaCsWPf2H1+XEXcIKT8hZonKT8by95enKdFEqpkX/PBNyGc/vFptQgU1kATZxiMHl59L/X9hK+DLGvXqn/lLBEFV+U/g1vQw7tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l0NKWNxqixinr19f5DxxgFEvS1oDeWNG17bRRouL9Mw=;
 b=Uqim65sibsEeCpVuBpzeejOcpJgOuu8y2SedHtS1IAhQJzjNbpEdadoq7DqKpqSgboUHvRTF/hdZ/+mx5cTwQT1cXsOFNHdRn8nDfmnbOs8shKAdpitTh/WRk0muvj5EE1Fn1UpB7gT48Yt8AFeWhXpAjKgASgJwnQUiGgSlTHbtyZBMUhh+i7dHfLsDStZzSXgOikXXYSXzfUMrQF7GSFfRAeV46ajbk/npbuXGiyhvnmmphSt2JkGv2htDlV6W+n8IMgWB/4QAtVWnyEhVEhCVtVwBJQ0C1qyiegb4RK16WBjocuuCK/H6Dt4hUFWRWKnFBID1FrEyVYXgBHwrKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 by PH8PR11MB8014.namprd11.prod.outlook.com (2603:10b6:510:23a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 12:33:06 +0000
Received: from IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f]) by IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f%3]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 12:33:05 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next] ice: Add in/out PTP pin
 delays
Thread-Index: AQHbGXI122XOrTKkbE+IqW8r3TyZ+rJ8tCUAgAGkzQo=
Date: Wed, 9 Oct 2024 12:33:05 +0000
Message-ID: <IA0PR11MB838047CCFB30DDB6ED31DAA6867F2@IA0PR11MB8380.namprd11.prod.outlook.com>
References: <20241008110626.1745728-2-karol.kolacinski@intel.com>
 <6fb25275-8490-42cf-b07c-c15298bc943d@molgen.mpg.de>
In-Reply-To: <6fb25275-8490-42cf-b07c-c15298bc943d@molgen.mpg.de>
Accept-Language: en-GB, pl-PL, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8380:EE_|PH8PR11MB8014:EE_
x-ms-office365-filtering-correlation-id: f564e97d-1a2e-4666-742c-08dce85e8652
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?6+AJ4IqOwu8syj5sIrsVf9cu4PlMtw45x7HBt68pGRehVJnVO9mq7pCK?=
 =?Windows-1252?Q?mPpWUsxQKUsYwXgloNsuf3QkRN0DuzKzWmsh+dEvE8s3M2vOCdk9126I?=
 =?Windows-1252?Q?MfmMzp/sv50vIQ6iiDwAek1vwORit4+lr0TfUpHG69WxaV1D6tHBso2P?=
 =?Windows-1252?Q?AZsdXI+R+Y1msz3VWDwAKo1rj76181MLIbN0FduiJgAGO8297suaEcf/?=
 =?Windows-1252?Q?gnuWLtbuLq5lUKxb6Q5P9Uia7imLkoToL7e+24IARw0D1YWGg0lETW+e?=
 =?Windows-1252?Q?yMdMCw1pYHmEHZYvErTkts7+akVP9Z4w/CuNHKtAvH7GXGrXDuyQLNYG?=
 =?Windows-1252?Q?imaNH3XL3Gv9mEmSAHHe5jKCrzkdY1WR9NdkXtyAWHYvFUbWaNhJem7g?=
 =?Windows-1252?Q?T+luD4WI5OVnOOaHIDwmnrAfdaXBUf/z2cW1O9aKDAoKYkZ5qUDaMxKz?=
 =?Windows-1252?Q?w4KadB0/+k9UNDNAkzgKSAQPewX7v2HMcfIPebtOQFw+otexG2KRg90K?=
 =?Windows-1252?Q?R7ztdkn5fZVgRQ1o8UDH7l3UGVYKpjM/VLqQaNtGMWzZ+X9jJX4u8ESg?=
 =?Windows-1252?Q?2eL48hGTwXxSxe3Rqc7VcNrVrZtl4bSafRvqw2SnTorY8nWz3WZiAILA?=
 =?Windows-1252?Q?QMc7EFtTCf22GS123fp+S4dy6pzdqG00X+NPBPBMiN0f6NiGlbfImo3q?=
 =?Windows-1252?Q?y55xeSg1bsi2fJT21/JPyAnaaWY50JIYOAo8uGzDJJnpzBO9c3rv/v8D?=
 =?Windows-1252?Q?AAmfHDT7QKbMrw0HtYwvhs5poAmjbO6sKiWYY7RwV4tX/Sm9qmErDIpG?=
 =?Windows-1252?Q?fVt+C6Q7fl+UMIZ5e6BGlGrr54fLcMVcRyrbY3kBBgmocMzXVyXE2Occ?=
 =?Windows-1252?Q?rsQBlQFy8G6tkBe1XXmg1F/bYf7nkNpM6jrzIMP5R2CboweVSEyXbZNc?=
 =?Windows-1252?Q?e51JqW1e3aR+rEKPHWaXeaXHYFaiLVXMhCFdixjJOzpZgEhFmXqGZeO0?=
 =?Windows-1252?Q?1/1+6LiUmtMf2ixjcOpERw4rfgZWofbi/5UebChbKVw3YRSk68cu0dVg?=
 =?Windows-1252?Q?oK/QBqLujAezCRv0ZDvXbOQIEvKBjpLlLxSRwvcirbNk8gIuR72OnHmD?=
 =?Windows-1252?Q?3yYl9kb5RdV272gulvCY1kxiBuQXNxDZBHSf1ciLJB80j80gH7u04gXe?=
 =?Windows-1252?Q?vMs/QOy5p5FBOI1aQoja64QOfwmNVnsTuAqUpb+rCgNU/5ccNtNWtlO7?=
 =?Windows-1252?Q?neaIjrrLrkY2IFbTXgQAXO72V3CRxjxPy+Mpvn+JK2i0UTE1Yu1X4gyK?=
 =?Windows-1252?Q?/f2ERO8tQa/ihUFEwxBUinKurYl7eveEJ+3fuqptox926Wk/VHv0Gyo2?=
 =?Windows-1252?Q?DyFVzGM6P7S15seSMdq+Nc7YVYrkmeO6570yCFOArzUYpB4l2NGYPIZJ?=
 =?Windows-1252?Q?qWqCswRPoPVztTd4uAKHSw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8380.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?echa5mbSgXq0llnq0rmEgSMsWgL4GXRET3U5h/bcsGSqwP1/NsJBlP8o?=
 =?Windows-1252?Q?F8i0oUVHYKdWFvPFgtQep9oYwPq9NoIBPPXlytKAbzIHzpsqGYbjxZPw?=
 =?Windows-1252?Q?gUDNPBvVy+3GpxGfccLKnU32swHGJcrIpenxn4yb9SCxVosNPKsqhouH?=
 =?Windows-1252?Q?a0MLNH2tbpZ0XlqyN622VzloUc5RfEL+UcNIrgpYL4sVFidsA2kNXxWf?=
 =?Windows-1252?Q?Sm7dX7JEsOea2AztQYnSefAnXXOBHyny3xASyOxoY1PDHlcIS8VXf5ov?=
 =?Windows-1252?Q?56DexFFE0t4RFjQs2Nbkc9wJe38ec8FuXm4cNTGcfxJElxEoZiz1hz5d?=
 =?Windows-1252?Q?gHQZ67j5iDN3R8yaoPluQAX/dvFocKLjOYfZe/bUh3YhGnXN/xM7DtO0?=
 =?Windows-1252?Q?ZPcswbSEM9i1KeJZc3v7Oo9Bp82LRqcHnIPV09hnHsM7YWLGBJ6mZKuI?=
 =?Windows-1252?Q?O2qsWfnqV4fauecogjDwcMXx4VzfarqewkWSr3+VtGlYXP9hdSa/uv3p?=
 =?Windows-1252?Q?ZMP9vorLkIoPwsLCNeuZ+NuPi3WIK9sLNN5FOxaMsKfjaXDolcFBQdQa?=
 =?Windows-1252?Q?qTUGRweHi7hkgaYSk6kzGw+SrbKBWLoF/M9QtHGyhnIloNYTZJdca7in?=
 =?Windows-1252?Q?iwAJv7mHzo+KZiiNQE0BYWxDgPcqPx/+6S+M+Cq0k7oZGWsINe7PHvYp?=
 =?Windows-1252?Q?fYebfyq4zv7SXhwLUjT1T50vG0qPBnPyaZMT7YAzIiLubk7jQR+ItkKs?=
 =?Windows-1252?Q?YOacLnRq5oH+CuJQKFIb3Jm8LEr48aexbgY2UrgyzlExfW2pXPs4ifBd?=
 =?Windows-1252?Q?9AZwn8PiE5Z+Yp0XCdc2vPXxpYrJwHAqiAii1xc/gw6KBTCU1+NSdmfb?=
 =?Windows-1252?Q?gBg79Mpq/MshRYMhvrbCJ5g1mFiW28ggYWRT5QzZLV2ld5PAWgC/b63I?=
 =?Windows-1252?Q?63dv2zXtGGQi43TD5AAuAIONQCBit0xKw7SM10YFQjs4YZLhAhAuGWas?=
 =?Windows-1252?Q?lesB7g/LiIHXlKZyfqw/95UyVcQu8MfFODtBnCIv0PITIwa+EpAmNsVU?=
 =?Windows-1252?Q?fSuB3ZZlaYsVci4qAsdrN8r3tPxx4xD0yUI7BtfXQK8c1py2ERHkE0EU?=
 =?Windows-1252?Q?KjHMj8dbl6ED54tnAinGhs9QnqCD85qSsIsf0wW3AkS9us3+DSsdscXx?=
 =?Windows-1252?Q?t/jA0uQtHzXv4fRRcZLg+dfjJAX8EeimA51gEw+M8p0PbxUbYOneIVRw?=
 =?Windows-1252?Q?WJBJYtJpyhKIO3x+mB14eBgQU1pGcyUO6CSt9DtLOXZSvUZ/d8WV9gmy?=
 =?Windows-1252?Q?UnOMbXB2Vo/6dWfBcSsja8HqKsgTSNg8oa8sme/susxaM1awTOrfaMkJ?=
 =?Windows-1252?Q?AXaH5Ep4Aia1ftXkkOtnT3Px9u+YFuUaESRXilHSc2b2mvVyf+PjHyQc?=
 =?Windows-1252?Q?Y361yti40EauxjG8doG4XrzaFV9kKpHvAwvHmS8O8b0zE+wCv+7lpmA9?=
 =?Windows-1252?Q?R/fQBrxmCsSWzoitxujoy2udliOhxouOmrc8Tyi4eV8c3YgZ0r3//D+W?=
 =?Windows-1252?Q?tOiWu6LKds9YNyaR7fHyTlnKRGrI+sfuk6xhFDxdmDVNLHtsPSCPQQa0?=
 =?Windows-1252?Q?GwJbeyoqCGCMxeArBXN0aWWSbqNhb2AbNgig846/vlRTDW9PxFV2xYXe?=
 =?Windows-1252?Q?GYhORT8dwor/yluevhKqC1hb4aaFsEgm?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f564e97d-1a2e-4666-742c-08dce85e8652
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 12:33:05.7848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k2rXtUgsnx9gDGRdzI+wo5XA7XqOa4ZIiPHqD3MxONEGj7/ug2va86cqCD1ImI7esFxOZLELkTbcBv5cIRuqnc+6XMyjv4/gm4fJK/EfVUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8014
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728477191; x=1760013191;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l0NKWNxqixinr19f5DxxgFEvS1oDeWNG17bRRouL9Mw=;
 b=VhUNeKOjVUj5c8Pr0TSqmFjD8zAhai/LEnv9IjKCDaX55I5Qzu/1udY7
 yRrc40fjI6y6W8jsbSG2OTbKWGAtIIW65WpmKjvFtx50r+a5/+9QRGbyo
 n67wWj2wAv77VXiAMnw4MxUypmd2wwMEaaVvL86H3jHJTD3aGO3sEGypr
 Vcj4T13jUyvq2zmSJ3Pw3eYykOarakinsaxEBAkZ9JfYXM2ZAi3zNkUrK
 m+ZtMMTN+XcYogXDzOKWtavoFitP7/dLlWKSUXXDyKJvWFrAX1BbODwz3
 HIcy0Cc5BFT1U9rtzk9sX/5aw0CvE1YVrTUic6Si4uvj5ga2PhR+V47//
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VhUNeKOj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: Add in/out PTP pin
 delays
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
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 08 October 2024 13:46, Paul Menzel wrote:=0A=
> Am 08.10.24 um 13:05 schrieb Karol Kolacinski:=0A=
>> HW can have different input/output delays for each of the pins.=0A=
>> Add a field in ice_ptp_pin_desc structure to reflect that.=0A=
>=0A=
> What is the current status, that means before your patch?=0A=
=0A=
Only E82X adapters have delay compensation based on TSPLL config and=0A=
E810 adapters have constant 1 ms compensation, both cases only for=0A=
output delays and the same one for all pins.=0A=
=0A=
E825 adapters have different delays for SDP and other pins. Those=0A=
delays are also based on direction and input ones are different than=0A=
output ones. This is the main reason for moving delays to pin=0A=
description structure.=0A=
=0A=
>> Implement external timestamp delay compensation.=0A=
>=0A=
> How is this related to the first paragraph?=0A=
=0A=
"external timestamp" (EXTTS) is PTP subsystem input pin function.=0A=
HW delay compensation for input pins was not implemented before.=0A=
=0A=
>> Remove existing definitions and wrappers for periodic output propagation=
=0A=
>> delays.=0A=
>=0A=
> How can this be tested?=0A=
=0A=
It's very hard to test it, values are based on approximate calculations=0A=
of HW delays and those can be tested only with external HW made for=0A=
those types of PTP tests.=0A=
=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Add delay compensation */=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pin_desc_idx =3D ice_ptp_find_pin_=
idx(pf, PTP_PF_EXTTS, chan);=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (pin_desc_idx >=3D 0) {=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const stru=
ct ice_ptp_pin_desc *desc;=0A=
>> +=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc =3D &=
pf->ptp.ice_pin_desc[pin_desc_idx];=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 event.time=
stamp -=3D desc->delay[0];=0A=
>>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }=0A=
>> +=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 event.type =3D PTP_CLOCK_EXTTS;=0A=
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 event.index =3D chan;=0A=
>=0A=
> You got rid of the comment `Fire event` correct?=0A=
=0A=
That's correct. I think ptp_clock_event() call is enough to understand=0A=
what's happening here.=0A=
=0A=
>> @@ -1767,9 +1778,9 @@ static int ice_ptp_write_perout(struct ice_hw *hw,=
 unsigned int chan,=0A=
>>=A0=A0 static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout=
_request *rq,=0A=
>>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 int on)=0A=
>>=A0=A0 {=0A=
>> +=A0=A0=A0=A0 unsigned int gpio_pin, prop_delay;=0A=
>=0A=
> I=92d also add the unit to the variable name.=0A=
=0A=
Will do in V3!=0A=
=0A=
Thanks,=0A=
Karol=
