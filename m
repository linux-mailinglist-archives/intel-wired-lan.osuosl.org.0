Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAB76CA8D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Mar 2023 17:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E652D61093;
	Mon, 27 Mar 2023 15:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E652D61093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679930449;
	bh=M1OIFiWH+FCkS5H6k2ii26x8W0yiWq+GGk9r5/w75LQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XcgApzoA4FC4OugAekTOlxPtpW+Yg+rT42XyJzgMrHrmN4K/FCYxfNzMJRct4nfwG
	 90I/2ek6fFCWCiWwWxM8rxx43/J8+3Cs7Nuns1TcgOK6YkdHgNXkv/JFC3oB0rCxE0
	 ukUQpnsp+oy4HmYcmah/pYNK3QasYj0O1C53DIYKvdo7uOojGElCW+Meb3EiGxSC0O
	 GE4LRcyGZdadAiOq84YzAgnDGWTAU3HF4DnT+5v1iTyQuu4ZlFWkiVqLmwKOOphPcg
	 nsiDMjK4cbMgcdxZP0+xO/Z3NmZ/8AT7u/AU5DTcbYcKHGM4Y576VgvHmyTuKKOE88
	 EW62QoAophvxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tikMev5N2Ohq; Mon, 27 Mar 2023 15:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE67A61085;
	Mon, 27 Mar 2023 15:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE67A61085
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC18E1BF281
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 10:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCA8D81E5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 10:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCA8D81E5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nU27FduyP0DE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Mar 2023 10:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A94B281E2B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A94B281E2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 10:59:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="338956282"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="338956282"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 03:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="1013069853"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="1013069853"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 27 Mar 2023 03:59:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 03:59:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 03:59:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 03:59:54 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 03:59:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPjKf+m/Xe15GFgOfEmWl+HOxm6kiZcr0xnVHMEQSu6VKihvwk6E7CHPlyZIJN+fIuwkW9lADfmAYwdipKRu50JlvnLgwiID2yU/iYq4PWNjuVx0oymjeYBpEJ9VAgjiKZt4XQmcS4NUzGQuGUZFX81UgQ/0k7I6uEmTUeHH17E5//kzrr9SKA+qKK1ywYteMJ5Iirs3krcSPt9X5CyMC8EZXqsdhWrwgbGZmT4JYK6VHB9pm3MsE34NLMNB56oWisjLDkImky0ZADYCp0awszNl1Q212nr9p31zsPrAvtfA1BlLs1m3KwwPqbORnPfHIo0Yyeuy+ZFzT2+cHEXwkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83Ty5cdQJvdrBocpgk5J2TXfTH8efOdL0lxdleTNP/M=;
 b=FxdCLVhT6A+9AVlHC3VWPl2idMj+Y1ByShpLX/KaKy9Jy0ATR5pL4jdGlLjAgfxvy3xZAJACiS+5dezYxAbsf8Qx4B65egpz9gUUMCETlii1BdcfH1lkJZ8eQSNE4pFl/J8DrlxuXXrZm/2pw0AUgalviMYfaTncdUTSfzy3RsT5Tzp8qzEm8tT8hINJBltP/1I4XGeUox4RVgF7JlsewgFzoa9EDYEds8AJJ8K9jMJ0tcF8g6nYvQvPOj51ZELjHew6bKyMX0IUgn9MeEl1CInfbFsYZxBkN9XdjBaG8BCBkjs9CJcYjtoa+7HxqoNdFFHFz3QtvD1PoYegg0WOGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 10:59:52 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%9]) with mapi id 15.20.6222.028; Mon, 27 Mar 2023
 10:59:52 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Jakob Koschel <jkl820.git@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: fix invalid check for
 empty list in ice_sched_assoc_vsi_to_agg()
Thread-Index: AQHZW0BLlTZ3eq8RrkOhNPFwVJI9Ga8OfopQ
Date: Mon, 27 Mar 2023 10:59:52 +0000
Message-ID: <BN9PR11MB535442A326EDAD2FFAA1588B808B9@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230301-ice-fix-invalid-iterator-found-check-v2-1-7a352ee4f5ac@gmail.com>
In-Reply-To: <20230301-ice-fix-invalid-iterator-found-check-v2-1-7a352ee4f5ac@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|DS0PR11MB7577:EE_
x-ms-office365-filtering-correlation-id: c9534e6f-8e1e-4558-19b0-08db2eb26424
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I3x8+gT2m6wnsAWO4UIXfUzDsXCKi7A0XO7J3vxaQmCg9b3ZLpRa6c9dWCtBGCKJkL5h8J6TfQgdc6d3SDgNFwctQJn5c3WXzi+ZIAyOIWNXT8KfA/r9HKmVFU+KFyrwxdIQZplWuhMJqJuvS9Scyu3fs/GlyTc7oCLCL55dv7flZ5C0SIctNB/dAiymizO0zNlzwu0sHuVl2WR4KHy73wBcDjliBVXEDgWj/ZmsMf+kFX2rjF7YUgcVSNYs9sVBqHbfppjz5z0leGyzA8F7PbPkWSgHdExrEgbPE7EQngbmlAw8qx8aUSi9o6eV6NIBKGC3QNBFUHp8VCvV1lMu1GItRDlCAuqwJmCh19XW0+Ro327xcZGaZBK4LWWgxksFiyq6ig8moNZIXMkdFONgajVEg+XVlfYqEAkxb1bXS4FcZa1zKaDQaoqq4UA30yZPcMfyHXxxzjDOzrv8ebhRmen6pdCd28nbfOZDlb6urMBXHBmCHQ7IfxExlxMFmoFwi+Kzv8LgSXldHoIwwMxlp/ARZPcmW4R4SUvf8BEs1kJf8oPtRaaMnnNVJeHAWP+1ZvCIfZ6nA/DjRl5RGU6qkFPA8LvKViHVYK1JMNZ38yqBS53IhcRAzFw3jfkBEROr3fse8sUf3uCA9Hn60A7E3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(346002)(396003)(366004)(451199021)(966005)(110136005)(54906003)(7696005)(71200400001)(478600001)(52536014)(53546011)(6506007)(26005)(316002)(9686003)(8676002)(64756008)(76116006)(66946007)(66476007)(4326008)(66556008)(66446008)(41300700001)(82960400001)(33656002)(122000001)(8936002)(55016003)(186003)(7416002)(5660300002)(83380400001)(2906002)(38070700005)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yehqsQmanS+j/qNZiBaK5uSduNlnBVQ5bVbqN7HAVp3xADWnHDa5TW/5ezSK?=
 =?us-ascii?Q?KNzTqTiQ5xQfGNzli7MjDP5jwv9wZrvIHCMhqUksGYjEfUCJpTqf7T5ntV+s?=
 =?us-ascii?Q?2nb1TmBHN0SLcOFkGmeRmWZ0i6PUvogyB9sFVPFJvDLgiaB8ojd/6k8WMmoA?=
 =?us-ascii?Q?gmgQ2ddhxQTEF1oWPizjZD5B7X99cmwHDqKljZQMJbnsXTkYL9Jxk2hzH3QJ?=
 =?us-ascii?Q?8BmEDWrYRy7Wwk5K8IofyUMLh+smIwxyB+uXap5vwNAiemLUYBXfumElzuRv?=
 =?us-ascii?Q?v26lK5YJkinykyx3UnGM/4OyLMxf8TiyDcEA/T7hTMimjaiPoavfnn0Lw+ra?=
 =?us-ascii?Q?mlwUw7OT9khPT2oCfnqakfcNZApIYgJxMFXjL13NULpwj8Y4u+2LyhuJ/lAo?=
 =?us-ascii?Q?cVts3YTRfKWS63AjY35rTO1Oj7rOJ9pvaXt8XAUTAu5GqF3yLPDMolm/aTZ+?=
 =?us-ascii?Q?USsbdWTkC3eEx69//zkp6Rw58QwrqGKbdI/5j53UYfX06mU8xzCdLO6tFNla?=
 =?us-ascii?Q?6o9/DFFZHWiHKnYWGc5yK+qmFsqWQKaL9mTzoSOUQ3YTjWPU+ao+iqLTdE0H?=
 =?us-ascii?Q?KkNYJ3NMwxmvfhoGz8clRAah5+fxAabIAgRxm6vUt/m+0pzcV8Q2jOQX+5iH?=
 =?us-ascii?Q?oe6m1ufgaDfHVyM42IF6ETzMF/ACqdnJ2BIKdXHtrMdNS3nP1iuIAv0yIMyp?=
 =?us-ascii?Q?FOHM8krM5NiCXg6PbOXGP7zp2XasIWUtahHcUTnGRdBhhQxUAR6KCE58MJWq?=
 =?us-ascii?Q?sE3/fyUgI4bDTlbVD/Gsz4pcoSMIW/Et52hfiV25dpGsGV6052thldc2tSVb?=
 =?us-ascii?Q?UYX8MKzsZ1mxDjs2bk1Ap/hQxg8wNkZlL5UdfLM77CrcBVsgSiTH66RcHL3x?=
 =?us-ascii?Q?KfJVGXCq4JnnCeRsvcE0SOAk1kr5d4F+ZHv+USL4zDmWrZoNbKtqRuy2wLQs?=
 =?us-ascii?Q?QLx/ti3tR+sH8u3rZLCeJ8NR0+ATb63LMfgqNmE1KJZUS/QEQLg/NSMGiZyo?=
 =?us-ascii?Q?wT0XZCJPEc/jwSOQPQ133kblzzEq6RpBfExEIm5QQljGdyBA1lImQYOwIcDN?=
 =?us-ascii?Q?Di3ZZZqJTCtxyWW11bL5wy5MVa8plWClmgtdreMbnT3IyVblOSvFs8SIBfuB?=
 =?us-ascii?Q?fzKXcfLKP3mtHcpb/vzksphdTyxRkKyHi4hrLD9dwlQrS3LgGzNx0x9BRrWi?=
 =?us-ascii?Q?wuUxHpO+Cx25ChCrCzuuQOaeVwgRWxIiemLb7bq8vmMbstgItbzxwYFGWUiG?=
 =?us-ascii?Q?rPhrnQ//HJQCTOFzmcuDPA00am/uvs3uVqssy1P6BFevwamFvrm6hyKbQIY9?=
 =?us-ascii?Q?SRdOCA/v/Q/X2fGalYw91jlXtziX4olOdJnagd7FjbR+J/7rMklJUteEx3e4?=
 =?us-ascii?Q?AMlHugrOBpuiOheaJOg8+8PDX08S0t9ZYwTvLSQculksVp3eW1aUnUywPi5C?=
 =?us-ascii?Q?eY1cO9IZnj2aauDgNggLg1K1C4pFKBl84W4eqI6TfGaZpimjClpJlA6rdMym?=
 =?us-ascii?Q?/9JlJlCff01O5gLioidI6u/Qjrk////EwtVgJqlqRN44WlxpSLJx3uxpMB3d?=
 =?us-ascii?Q?wO9yMDnu1Ut1/+Ek0Tweyk2CL8kGyheI8FTMR0u3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9534e6f-8e1e-4558-19b0-08db2eb26424
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 10:59:52.1966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HmfzmnB9UtCtZm/YTleleL8lZPfnYo8pzUSlQqvzjsagKSCA0vxkQbQ1Yee4CGdTwepJAbu6Kysot2Tf8eCfd4S+4truPRb24sdOZfXPxEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 27 Mar 2023 15:20:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679914798; x=1711450798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ON4I5PtMunBXucfrOvf8QdAIsFXMKtannAGMTWJJbvs=;
 b=iP8mgBYbUxBvJakT8x+TETbFVcpH5aADxKDhQ2OrkSf/WssIhHgVa1wA
 nysQd92gIRL6gPgdoKyGAZzEKbXMUefbt7biWQkEQyPk4n3igYdvGg6sR
 ZmEt/sml9wD12gVWhQti8YOP9q3QlB0zrCgx0xhp9Wj/6rq9qb/QN+I/7
 aBPc/tFGngI+JPehAI6Muj9b9WL135g8D73vBy2qnJZr/a8/Q4bXk4XFH
 JW79Y1ie6CvN/aXjCW/pKDvx9aJ03NjsapJjF3G/YGJuAGPk0JGv8SLGY
 LIxk9LL4GT+cAhGjfJvMIIOWzM4u4ahK9YvfP8xANrEfMiiEuCpkLBkBb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iP8mgBYb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix invalid check for
 empty list in ice_sched_assoc_vsi_to_agg()
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
 Pietro Borrello <borrello@diag.uniroma1.it>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bos,
 H.J." <h.j.bos@vu.nl>, Cristiano Giuffrida <c.giuffrida@vu.nl>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jakob Koschel
> Sent: Monday, March 20, 2023 6:18 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: netdev@vger.kernel.org; Pietro Borrello <borrello@diag.uniroma1.it>; linux-kernel@vger.kernel.org; Bos, H.J. <h.j.bos@vu.nl>; Cristiano Giuffrida <c.giuffrida@vu.nl>; intel-wired-lan@lists.osuosl.org; Jakob Koschel <jkl820.git@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: fix invalid check for empty list in ice_sched_assoc_vsi_to_agg()
>
> The code implicitly assumes that the list iterator finds a correct handle. If 'vsi_handle' is not found the 'old_agg_vsi_info' was pointing to an bogus memory location. For safety a separate list iterator variable should be used to make the != NULL check on 'old_agg_vsi_info' correct under any circumstances.
>
> Additionally Linus proposed to avoid any use of the list iterator variable after the loop, in the attempt to move the list iterator variable declaration into the macro to avoid any potential misuse after the loop. Using it in a pointer comparison after the loop is undefined behavior and should be omitted if possible [1].
>
> Fixes: 37c592062b16 ("ice: remove the VSI info from previous agg")
> Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
> Signed-off-by: Jakob Koschel <jkl820.git@gmail.com>
> ---
> Changes in v2:
> - add Fixes tag
> - Link to v1: https://lore.kernel.org/r/20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
