Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B041662D84B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:42:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25E5841901;
	Thu, 17 Nov 2022 10:42:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25E5841901
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681734;
	bh=fgIU5V89MtdzHVgNsyuxrUa6FgbdDlxDkRz1OVrV0R8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8UrjxS8Fzu4Phd1HCTvycEKLmm+N2Q6Z3oWEA4eJbz4WqjyphtQ3UsopJCe551i7z
	 bjkBPjogfax8cAKSJ8cTOQJu8jEklkjRdZr/joVdO4ZusM+D/Q73OceNuO2lRn9cwl
	 69kTz7PPYhMBJpCUXPqXkgfu4GlEbWefs1X0BwWlyZqIU2/ivNLXKsuXyFB3xc9pxr
	 YqnQqMRYmGGics0akxe5PoGgEseDHcUcV4xo8/uzDDUzjBqEIXLD0k3hEHfPIFgi1X
	 TLwyg9si6GV6snsWKgGbWmF1LGgjSZk5EU3MTVnkK/vQm1JaMqp45yU8O8DP11eYpF
	 BP+zS9OlKk6uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRcWG54mBczd; Thu, 17 Nov 2022 10:42:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB40F418F0;
	Thu, 17 Nov 2022 10:42:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB40F418F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0FB1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24DF4405E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24DF4405E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXWglKofxvmz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:42:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766C6405AD
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 766C6405AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="296181391"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="296181391"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="634013227"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634013227"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2022 02:42:05 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:42:05 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:42:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:42:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:42:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcXk5WlU60F3TNNnWT3G0nopR119s7ncUleiggZ0ZGKV3MEdFei0e8inn6WLZi4GWKs1tjPvKZzqg6Q2PF/TGC/u7dpG2Kvvj16uVkdk/2jvx0TB+XgxhscHV0HWhwklVjiED3K7hrsCtywPMHgXMofciwZFawhU2400VVS9SyuCVLqHwWVo301j88PWt3j/luRQ1vVfgL8oFXyaa3QQReU95LKAJLUH4Keu8ADjHRMQ8/GXW1ZfJXezCsDjrqlO6aJA62q5K2+QCBzkL7d8PdM0ty8cPjYh723f5TAlVchKRyG4OuHLxkHIy+E7a5Tpl/6L6V/EficyB6weOIpgdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KYftkW0fzGU9JoWqCY7v/To7BMnaBW1sOxKI0J9DSUk=;
 b=FqJr5M76+E57ADkk/Edb/5i5M8MhW/S+d6pAVm43cyun1iRCM8DjgniOSlMqJCRglKDGSLHczAgtFbrd6JnNvdXd4A3A4udp1JICwzQpVwNU09GTjPF9KxrlAZgo3C+PhKT3PG7U31ms3VJKLPst54vnwhdJ4XyPq7MKy6I2mhZutEYWDuKschNIbgq+z58RvLzXcR+d/oH3nLOovN1qfXtzmTTsZQtjYWyRh5K0qrhdmRrAQE92EaDr6r2QKIpKHajIo6eeKD3+9bzdGWdbqSRNvd2sQc9TgtP1aKne0rAQ50EpGDIkUmcgShqOqQBMAfkyEA4OHEuJndWkx0W4Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:42:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:42:02 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 03/15] ice: Reset TS memory
 for all quads
Thread-Index: AQHY79ARv1QOB1cfk0CZXlHG8Ks/Fa5DAqcA
Date: Thu, 17 Nov 2022 10:42:02 +0000
Message-ID: <BYAPR11MB3367BE2D21B079BC49248FD7FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-4-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: f4ca7b50-5a00-416f-ecca-08dac8885ca8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ybMs4KVYtc6TkAR0eSwjynG6hgBMSvUhqeqVS9XOfS9K/OyJhh9VtOl6euI6IvtZkuuPjQiOD7Fzwi6Uo8xALsgCA2whfE/YznxAeVEXqcZ0UoUco1T/CgjUL9Xs6mSqZlS4wnn2ipaQ2J04JwJ1Nxt7KK/+37C/KYMzKVW9SAKCB3qNpKGDMcwqcU4V7JhjClzNmwpEJTSwwrGrEacur8qep6iuaKvS70uHZOBrlVN78kfSM3aQ96tkclRXQpV/gRpJ1hcUscqjsL1+VgMDmX4p50+WoJhdwmqHBlBQO44Jxt0U/EwkTR81atPYjOP2j8wBZazQCXs2NydCQkKZCxVeNoErpl8HmxFAU1++qzm2/6KPRfbTmIFoOfhQcmmoGKGOEs9o1u8LUv/VGXr7hIyH/LIcNPZn0vOdy/JpKvOgUMbS8jNBzXbTsrkOXH/ZyeJ9fPbp8VrDpIYwjtItgC4+JXgVFaityYD1g1uk9SOg2NB2Iix6JOigGaw6JZIENi8nq9MKZS58WC/XIZuW6B22v7T1myV40SU1flO8t+VrvZMC662rkVZAgUhRk5Qgy0mPrQLNJEIy62bBea96VtpukxnDroMb8snP89dbbv3k/UnYlJzBx6xD0hqduDokkCjqJ4ld7h9gr+yghw2Ob7urBNyF0PH9dARfiFBQ8u4YeUtMOfTjyITZUUOJCjM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(107886003)(478600001)(41300700001)(26005)(4326008)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(4744005)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ys2TmO1vC6sJ7jvelf20OiFh62Cmg8/uIJFcDBq7QA8ZDOFec4U0gRf+03gK?=
 =?us-ascii?Q?TqyK34bUcSG8McDrjPpaxLfoyobT58w5hQf+KkN43sT56X2iArzHqPiv4QE0?=
 =?us-ascii?Q?ezSFHpKlLAq11RxTDRu/118bJXs1/1mgMLbeDI3Z4Ew/nzREjSL2LDgu/26Z?=
 =?us-ascii?Q?FGJmJzpF+5Z5qOO3XoksUB9lYSCjvzNpWT+bex2nJjqct9BvhChzER/VV28Q?=
 =?us-ascii?Q?grlyoMbENpelCrJBEfgQaaGs3++rRwIHX8orYz9cTn0U1x3UVHlw9lkGp1OG?=
 =?us-ascii?Q?O7krLfQv+6MX4tjzp3n5oJPVbPYt/oNR1DQX9dRNE5OaxIxtQnaF+/BAhmng?=
 =?us-ascii?Q?qIndpCWeNG/3rHcGw6fHGznwjOkSYl0npZWF51TOw4kHb2ti8qxI9PCxis+z?=
 =?us-ascii?Q?uej8f3NpoL78n5mw3wIoCaU7yaoz4mj5xPw4QdHziIYkQyhJcj5z7pQUHy3R?=
 =?us-ascii?Q?X68ebS1GlC7MTkJI2zO7IPYW08QLVijyv/xTXjd2swSXpZw5eDO73RuFkAjg?=
 =?us-ascii?Q?Av7igSXH0yh6yfIv0f4T0eGoUp5aX3cu0NnOMdMlZbeGtehoktaJu1ku6L3l?=
 =?us-ascii?Q?1xdcODo2rQEg6B4bALQlNAIfnQNRPG/xciur+MVdv3BBCfjxAcBQwXuvpVlw?=
 =?us-ascii?Q?xrqvCZmP+WKO69OK4USOPeks5xf5eMVt0KN06cWlxAg0IT4sZS54NBfe6vK2?=
 =?us-ascii?Q?nxpNZhxGN0EtUE1yk0pi12Ug04azAdH9UmLTPn98U26aqCgOjL1oKSS/TVFi?=
 =?us-ascii?Q?VRFztdNbItBUJyGZAEmWxi+57GyFB9mFmjg8G6DDjrmYl11mMVXZOy2Qysqr?=
 =?us-ascii?Q?Z3NtyX2dpRDK/T039ZfSIPiA9EZGqjsx4azqry3OVZW/mjJioeIn+4sqG7Sn?=
 =?us-ascii?Q?jrgM5mS21+n/sGJl5GhW/pGokcZIFkXM1Bdiboj4+03/OMYKNZ5QIxUjBk1d?=
 =?us-ascii?Q?IkuxcaCcANCMpNV/fqpA2v41deBAKKoQ6aVagz8qCb+1fYUWUG5lz19t7x/y?=
 =?us-ascii?Q?h64mIYJ4t++i3lJj4Kh/AuN9sDeVCNyX9QC1tEWYeBuOCwDHhvgoFI6B4BZx?=
 =?us-ascii?Q?VCsQ85jq85vveYxm9oYhxfl1rx65flnxK2OTdbQ8ud+lGUlCNWsT9N2fVVv8?=
 =?us-ascii?Q?d22DfPDro0RC+s1NECL5hiM8iudWKbd1DHm/HQN3KGiBPn7fDX+UVSdqoqMk?=
 =?us-ascii?Q?S1F7XY8e79nnmQzABKYDN6LW4DfkmncSkYs+jYjdbmeKBeACwvSZ9K2KQb7U?=
 =?us-ascii?Q?z65esR44tA1FKtOTvPKg8OyzzvSzaKxRa7xRChElHBCO2KINoHmA9afckFTw?=
 =?us-ascii?Q?jJ4i8EGLW9c56hKwFX3FUf7hQxrapADs7EbGWxU96lDZikZGP0iVsYX4suFr?=
 =?us-ascii?Q?5QjDvQ2QrolKfGJNE5129bO0Nid77muRtgeP3qdns3PMGWzA8fjzDZPiyr+K?=
 =?us-ascii?Q?jX7jHAXoX6PeVXvWCVOZU2G7uv+Dl2VmYXGV3PLGSQCOZ6EgvMkyv+W9s9xL?=
 =?us-ascii?Q?s1l75fuQjWKunZCfJ+3AQEQty6RineC1Gd7cS1xT6jo3OUDKJ7gUTloYl/ZV?=
 =?us-ascii?Q?vOTcSVQP1E6Yh3twGiClRAFQv8WfEsZAJ2U4FAT/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4ca7b50-5a00-416f-ecca-08dac8885ca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:42:02.1872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhT8tMSvxfFk8wWBIq0IJjy60JG0aoIvHLq+AnJ4nIFZFWrhhZQeArxeGLsYGVi3lZhzZQd+Eb/C1VfCdZ7vYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681726; x=1700217726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jg0k+/qO+Pb4LzqWe49ufbX2hO36vOFr7VCgJrLpcp8=;
 b=TnAjhe91aIuTlnIM41qVN48p0sS0CrGVRvE3UpIO827DeOaXl1WRDUzF
 NtRIWC0tpr2gEh1zdfYqsp5QdTqwjEsnxnSsZmu75XC3SomUAWiqpXxA5
 cCN7Z6nAd32UpCmJ8+dRwZfSAe4iCun/fSA0yQZ0q18ucuV9Paprju9Fx
 qDTLNTUOOsYjIqpbmXwupRMT6DGa8SxTwcKDyKEhKDPwjKeEI4QG4ZuCk
 RweGyBSH/cy69Rq0pVy2dIAavpa2FtkL8ouhbo3y3euBHtWVkUiZOeU7F
 qDxY82iJRkZoCkgAAuseHsnRm2KKnO9O7JqEIpgThhdMVD9DCpJG4JcrO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TnAjhe91
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/15] ice: Reset TS
 memory for all quads
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 03/15] ice: Reset TS memory
> for all quads
> 
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> In E822 products, the owner PF should reset memory for all quads, not only
> for the one where assigned lport is.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 29 ++--------------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 38
> +++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |
> 2 ++
>  3 files changed, 42 insertions(+), 27 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
