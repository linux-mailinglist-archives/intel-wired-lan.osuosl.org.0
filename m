Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6834081C587
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Dec 2023 08:31:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01D7C61033;
	Fri, 22 Dec 2023 07:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01D7C61033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703230284;
	bh=+3fCWviJKIE8r1lb0FE6E7O4Y8iSaR4tb8C+NlV1jMU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oMgpS0RpSg6L4O0L7rwI4OxR8pFoDNOf74B0bJnP53GJ8EetKK99D9Y6WFMIbQEP0
	 lP8VBgOpakqtPIBDWmMhWU1QlXzu1FLAZBtZZYwwOwgKwMpyFUS6X418xpEiIbgpkn
	 wKMO7XWPZIuEOBF6rrVcTfGl0Tuz1RFdb9kx7SruxRvFY69qAdVa4LCo1Dy2Ut/UIP
	 YwUog+EAj72wrj5gFXVn1Hie1ISDFA+1hb680tvJsPBqEd0dhQ0zx7zvTdC4GZWI4y
	 uU4SAJjQC0owPw9Zr02tjRsRsSibwX3MsmEGnh3tOM6ulbDQ6tcQUwCXKuKVsybYd/
	 3ELg5crHQkldg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LhhEDfJRJoD6; Fri, 22 Dec 2023 07:31:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C924260B00;
	Fri, 22 Dec 2023 07:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C924260B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 468651BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B58C420F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B58C420F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPJlU_BbtOtp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Dec 2023 07:31:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D854D42098
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D854D42098
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="395821613"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="395821613"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 23:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="753186578"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="753186578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 23:31:14 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 23:31:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 23:31:13 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 23:31:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zb18LAMAJV7/hR37LFBYlZfDUObLRj1NyYCpFlYXbRtvvWYwHI4ozzdXO3G4Dt/9i+eQg9ytvkNYB6TeHuqkonMhhiYjoJW6ETSGed7EkQvVrDImPtAEeK2dbS2fzWvuNo0fZ/wm9q7YYgLkZpHv3A2NDYANStfZ7pHtiiD69yooJA9eWsTeBtjJL5NvWtYtIhfwNf7al0sFq78cGqkTKoLf2ANiWqULnoSEa8ejBke43jKdiSVY34ppJw8XhzDzfRfsxzC2UmrTVLmo9nbdHt0L0o7ZLsZGIBgLVqM2wTkmySVbSFkJbPnqjHgCddHOBqQH35NX9SzzHQK5zGmbYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sRgl2q48cY04UwafnAHS4KGx+y/Ii6J2/xhiE0Ry/h0=;
 b=QJ/a9cqtwTdvXO2e82aXx6W99nW4LJaRcZSEA0Knz1wL1E4uCMckdUg6SrTnVco64iY4KEWHoTNQd2q/IP02l+SWDB4ZSfWZTHKNaDAeidZvbklvnJXGi+ER69RuZsm47kfzK207pkCCpKwOSRcySbM6vYuIHOdZBCRnztEVIRVOk+qybhkFEoP0lOtlCiSEhe4CkTBIRv8ybiV8PXzh7t7P59qQ/4mHizUS47QsRyXfalf5etcaflnPETZCHuqE2Jz35TFI9qroydi8XkFsf7JIDxQAgeI2VoI/AJatYnYGHdCEumXuKK1Cs5foY7WNLsN90ur7z/gubiSMr8ehwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 07:31:07 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a6ff:804a:56fd:90c8]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a6ff:804a:56fd:90c8%4]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 07:31:06 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input
 checks to prevent config with invalid values
Thread-Index: AQHaNKjSCH8HssBM0k2/rOIRw+E2eA==
Date: Fri, 22 Dec 2023 07:31:06 +0000
Message-ID: <MN2PR11MB36140810362EBE002109F50A8E94A@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|MN2PR11MB4583:EE_
x-ms-office365-filtering-correlation-id: 16bf0dd8-7c1a-4493-9664-08dc02bff609
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hlHKy+5Bm8qkErE9nFubrVUJzmMzbWdwgyXbdBM7+SasaxK+H1Z8HAm89azTdQEoCBSl5SIg2xNdS76TaEJJ2hfCu4BUtPimfYk7S9BoYyci4O7laWUx96IifDBKbl8D1K1hjlq/bl/JFzwwM9ObH/xPQQvF+VQkp8PoogMZ0NITQttSrWCtByk2CNeZ2xUk6TX1naME5a0bBAC3NCozvA3UYVMw/YECD34GPbkP06Fhx1vAHnbqZTO+pzGxVqBsgDug3ggidLhaoicQbH4VLcfjZwyDSpN20DyqqKTbvIOrFyNZz8SOqy+PVV5ZgHYw8heuvJ9ReoFRCh9Xp6B1aCT3iS5xMPGZaCEgOg1TZIYLvij2frcbqlUrfbYtg+06dz7wnXG+SSDqqJHQ68k6LwwGeZemAkTgvXQI8OYkzo6e2R8ihQV5w9j51Tnk5H03GhkfXqzmWJtk62QhnwXs7DXFo4pGYsaD34Sze4wsOdqvTc3yk3D/lR8i5kB96oLeWK5OQY89I6StnM1SHyI7udpjEdiqsJGDay0PAfYJIHpfeJvNh1wyYtmKq1UC6FytHZWVkimglRqabqCGJN7ql4W7DYbVtTIFaSnpoUYdo9yAxklff0fgWzsUvCXMlohm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(8676002)(8936002)(64756008)(6916009)(5660300002)(76116006)(66946007)(66446008)(66556008)(66476007)(316002)(83380400001)(26005)(7696005)(55016003)(52536014)(122000001)(38100700002)(478600001)(41300700001)(33656002)(86362001)(4744005)(38070700009)(2906002)(82960400001)(6506007)(53546011)(9686003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WKyBhw1ntmv9K2iZpjlx24nL1zm7rA1bSVzTIjezZsR63U0P8Isdm9Ns+R8r?=
 =?us-ascii?Q?ePuPg5F5LmL1FrIhrm866kfJtVAkzNr/rNaZELl+pvnPQPPzZqsMjoSQMFnk?=
 =?us-ascii?Q?GV19hBnh5LvGqhXcVm70PjI6Ax8uuqFwfYK7UZSia56W64JtxYJlwWYdzBbH?=
 =?us-ascii?Q?79h3sc1puzDDTUBY5R1vSt2oIsDYlp5RPceDi+5nTNTNgg8iBESMN8DyDcK4?=
 =?us-ascii?Q?6xa87R+uBwfOHFtX2rgCOk2hY5twU4i11cuaFkRkOaO5pC2eTAOyU17/FWR6?=
 =?us-ascii?Q?U/sP8KindENgS+MgrHIVMN7Fvalt53AgRcpT5yeEM81I3ijND9a5MlUY3mbE?=
 =?us-ascii?Q?pKbrtJGi2weW0cwgzFyCoBBxCx8U5YL/54gmBm9k9rXI2d/kVNSvVY8JQWln?=
 =?us-ascii?Q?oWbJy1fPnjZ9BJv6YAqOugyHDGMp1f2Hr7yXNPlSR5QeV5wZnnMfYxZ58kkn?=
 =?us-ascii?Q?NKwVj7IYqxUDGC2QglDEhCY5KJqDazxnxPC/yLY+x94WZWz4HU9bpoQerP6O?=
 =?us-ascii?Q?2/jEggVT0d8TDYr4QzeUq7fK3cakhDeKGD5Snra7ZYRGP9hTEXut/zXqah1X?=
 =?us-ascii?Q?z4JTidEZaLQGeWlmIhsXXlO2xVxqoBeTHy5zGZEDAV6TtsQVZEq0vhwf108s?=
 =?us-ascii?Q?o5CzHXxtVSfKdJ/au74shMosTe9usTmqajPbMfOdhRNBuRfNDWw1QyxMVrMR?=
 =?us-ascii?Q?gM2F+8ZpbZddYKkBhMzffyFzyavlio1rwARbFrVE/uHxeF8kXTMwSGZ4mQYD?=
 =?us-ascii?Q?GFOa75AQ0fqB/TEm8aOtMnbM9kJHjIrb7UFEEjb33ASwsfeUXMCmzw1s1/cM?=
 =?us-ascii?Q?xi/dFbsI3qL95kQCUL2y2cLn0KdGfAmSNEinl3J6G1WseMy49m/qwPu+ZAxl?=
 =?us-ascii?Q?PyHHk+S14t6xjpHtj0/V3L9JkLr9psYcvOvQWJilAFNmZuYfCN4Fp//RYASq?=
 =?us-ascii?Q?SLzEehLXTfMebYEzBMg7/E+ov00/NoBkL2VtK1IgDjKzHnjKmq3G/l0RpRi1?=
 =?us-ascii?Q?0nkurWMYiRbHBjcFWNGw4x3B29cyudOgoWktmGbRjF0zsKro1vnjdAvFxMu0?=
 =?us-ascii?Q?9fMb/U/yVP0f/T8PW783FSf5wdB/At3CkYckbW6xAMTju5l1PGUP3vwvnh1T?=
 =?us-ascii?Q?MQmwCPxq1PAVQbdqdB5qkXruuRQGssum7g90LFD6ED9c569cvspdLV2e1mJ6?=
 =?us-ascii?Q?pu2uXJOeR3qyBeEvX8faZXF9XES9L7CYX6mxPnnMDGLp6SdenBUYiglcmq0H?=
 =?us-ascii?Q?tmE2pvfzUiq09M53O3hns79t5iFeNlElhVyYQYECKaKmzSnRmorfGYr87Jty?=
 =?us-ascii?Q?ZdApKgbqo1A4DpXpBTEBFk+NjYUxlPVpl0oViiCyOZ031qteSNARIBgLuYN8?=
 =?us-ascii?Q?ka9Zv9x8euzL97fdZ2m+LBtaWhPjcQkdOGFPAl7t83TYOBnIUiYKnA0eYuIW?=
 =?us-ascii?Q?5/RHyvQTLJQbcwp3ejCFZSULd8CiBMar1WWxtiKSGT6b6mvyFH4KMRUXcNOM?=
 =?us-ascii?Q?j94CIUWvHz7N453XAtXj4rtkrmZgw700nkGnEgmiLA804oTRwSYubWLShTWi?=
 =?us-ascii?Q?iJa5wMA8RUUdSzLMhXTgcdjI/8+fRCfD/xv15z9P4RJBa8rP9LlGTDc8PVws?=
 =?us-ascii?Q?KA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16bf0dd8-7c1a-4493-9664-08dc02bff609
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 07:31:06.9128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +n4lprw1RtbGNUVr2a4VhAoQ/Fl37iUEsG95NPrOgg0s4FB7e+XR/LnP1U3zT9+izr8zWiJf9MFMeVA8WCyKsbqHCbGickGMNjIUhaCBRIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703230275; x=1734766275;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hykxNxxcEGaC7/KKQuWgkhvpnu0t85AxeAj6BdQaf40=;
 b=RcqKEcv9nLMPdlM6CyPrG1Ffd+e0biN+uEFk1x8iVO9KLkookCNFsg2F
 JZcNk2tqaG66Cq8eWd2oPo40IcOYGlUt6+2TLS/WK1HnVtCX/M9o85Jy/
 VVbp8NF08fg1EHkc4pLNQWNctxvTRu+y7SLDPK6R0pX9EQLKaXg98M/+8
 UtHaH+BQyfYCHWl1LEkeXpDtjf9eW7ehqyf3dEfVZKOL9NiIwdWVrkvSs
 dWkYrPoACUmbI9k3cVhNIatJT04tih6adIEAOnrLPIimYST7dd4MF2ns1
 pL9Ij2QB9aGPnDBmGDBGVvFFYlA6ZRxeHtPVl5EV1PUx5UyLDYxXvlYRB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RcqKEcv9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input
 checks to prevent config with invalid values
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Wednesday, November 29, 2023 3:53 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Staikov, Andrii <andrii.staikov@intel.com>;
> Mogilappagari, Sudheer <sudheer.mogilappagari@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input checks to
> prevent config with invalid values
> 
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Prevent VF from configuring filters with unsupported actions or use REDIRECT
> action with invalid tc number. Current checks could cause out of bounds
> access on PF side.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 add 'Fixes:' tag into commit message
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
