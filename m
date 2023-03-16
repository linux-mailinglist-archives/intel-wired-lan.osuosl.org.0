Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 373ED6BD314
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Mar 2023 16:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3F2C8176E;
	Thu, 16 Mar 2023 15:14:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3F2C8176E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678979649;
	bh=SRuNzVMtSMoCqYTcZOJJpT4fTaJEHLdRJ5f3E7G8w8k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SJTIoTfIjiZHVeBWCkrtelUL210vfkF7hJvzeWDd/x9CSWBVKGEgKk5zVxOGvh18L
	 RSJJNRFhHnucG/b07eTNyVPwqQWEVRh8WPF3fs0FBw7HHcEY/58gswKJamdxlmGbNX
	 ELFrJ6ybK6AOXHRQ962KAj5GZaw74ODE1Mb3FwcpJKkWDki5OmC/iSvBNYqxSZ7qEg
	 VDbuGvaHmFtPVutO8X391i89qv5gbJfgrbJFGiD01xLvG8PuJCLrMAXguK+RdXY0rR
	 NHaEeZllrg+Jtlu8PguCiL6jFyGvzC43OzyPf04Yy2imh1fIFyNSsLjc4a5yNeYRuK
	 V0DhyvVEouHbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCjWrTgWmuz8; Thu, 16 Mar 2023 15:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA38881F84;
	Thu, 16 Mar 2023 15:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA38881F84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2DB1BF406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 11:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1767C400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 11:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1767C400C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g1lt5WXLzKGZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Mar 2023 11:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5177415A0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5177415A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 11:20:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="321796194"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="321796194"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:20:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="682278331"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="682278331"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 16 Mar 2023 04:20:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 04:20:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 04:20:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 04:20:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 04:20:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cc90+3KrZ7/gZIlUxQuw2AQG/GNVx1E/iSx7yTTLhHqNnJJsAN2R7VCBLf4JJMLLKTwYPbkzqt1GPTF+PG0hh6EO0CfKU3EQLIFdO6RwmGTZMNDztbb9WxrruZff/4O/KrOcb+5cFr5Q9ruU+BD3+pe4oHxgkN8GHA4/lPxHVwqyxZlT87QxCZUUTYgggpvzdhsIDLXj5iEZMSUNl9Fkm3YCNEZa7i+Qm3WTJX0dA9cRH9TXy8HsAHv+LOGXoseAsezIafKkggMZAki70R4eoE5CXL1TemQ3l9Xv6nF1iOI/UcVIQKag3um5xmvWJAHMsuR0CvO+e1xkROWKxwgdJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLm5blpVSNyWlhSMeS6zbys9Qt0Gnt3c0LsFMWehvLo=;
 b=et4O+IIY1LdMWB0OYiPa6PP/iC5Dau9lgHK31YHcOnWrKseLJ6vVlmPX1hZFdZn7sEFJEEY9u6xPnjEpqR7r7AvkX29SyxGMzOPBQ+ISmeLr2uGblNmJq0KQfxh9tDsifb3hUDCH2bKQDIhNJbEsJhooemZkCJGAzh2FtVrG03BqiY4/nOA/Ihoiu2VIjqIo8GgPawIM30ZH16Nlwxdjxjsl1gFGEEq+O+Jwp9vH8bwobBXJUk41JU7NLpq2+/UzJ/ZvxAXZJH0QIoGI8maLLLktEgooriBxvd98wtuGgkh7XR0L/EcSwZsb9UYohWs9AX/faChZWK23oboSY39FDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Thu, 16 Mar
 2023 11:20:01 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%8]) with mapi id 15.20.6178.033; Thu, 16 Mar 2023
 11:20:00 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Raczynski, Piotr" <piotr.raczynski@intel.com>
Thread-Topic: [Intel-wired-lan] [net-queue v1 1/1] ice: fix rx buffers
 handling for flow director packets
Thread-Index: AQHZUtB7T5mkTlrfGU6u6hwxG4raT679Sr7g
Date: Thu, 16 Mar 2023 11:20:00 +0000
Message-ID: <BN9PR11MB5354D6DAC06A739102D6343B80BC9@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230309213856.1198788-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20230309213856.1198788-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SJ0PR11MB5629:EE_
x-ms-office365-filtering-correlation-id: 933ec4df-72b3-4621-0562-08db26106207
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EqIyrUcIIls7CtByeg6shXoOYns6fHgnlk5Far00i4QT0Fkb0arXzjjbkILpWMquw3EnOaor2QE6MVmAdih2sGnQ7EZDbjh6RtmvhxJ79Nu2uWxq07/YbriDeiRTnUVEoeYXSQvgsvd/THzHkGYRPS1eBIytLV7etobZU7WU1b1YgGJ0iET+W/r45dj+nT74DtNUkI2ZPNDW+ra0MTPeAZ0KsYedP9w+Qrv+zrxexejXUhmolmRYfIi/xa296w5skPKYg4GbcUi+r41c/31J7unl9AybOjqcLl78McxzfQGJPLVkOfqwz7z29frlgN/JZOdshJJkoThG8eLlaxpgzFassdLJWJsrqW5jlIkz/+JufTLtXJiMExg5Qi3SibkLWKy44o1KJyKXIc5vabkj/kmgPHVtEquz+GZFrIt32SA/bi95jf0JmllfCTknMhkzrFTtwcyh+Oz4ROddKlvNtMRLXzdNqo9uj+qn8OKPE10loja0StO9JQVIdybjixdMdlY3jT63c2TCnf43xMZCFLGc21v/5ENoxC8IwPk7VkFomQmlakdfxtpZYyR1S9kpwVVhAwSvAUeFqqbISwWOcvagHhOIqGX4Uk6fc+DiLsyNsCJMzwppwj1UZ1ZR8TIZ26CoOAm9uwaLi7QRCJGC20z8t06FUg5YEmSKCmx1T/1iaMdgY7AFxm0yczFE9THEla2go3lwpKR1p1WDv10D9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199018)(33656002)(86362001)(6506007)(186003)(53546011)(26005)(9686003)(71200400001)(7696005)(38070700005)(478600001)(83380400001)(55016003)(6636002)(316002)(110136005)(66476007)(41300700001)(64756008)(66446008)(66556008)(122000001)(66946007)(2906002)(82960400001)(76116006)(8676002)(5660300002)(8936002)(52536014)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?brkjGOAR2mW12kuZ7/d76t4oq9nY/LH6t4Iij5gmRih5DRP8B7Clyb7Tw0oi?=
 =?us-ascii?Q?TypGVJ1XqNd7hf02OpDDHJ8aXwLta2CwVn7GmfdrFalYivOjrHhNun3Q1lFX?=
 =?us-ascii?Q?SHpMqzkuOcj9fj/87TJw3lf2xqFZP1kwfWYYHUtRQUFpT2yzw04p7iGazKvP?=
 =?us-ascii?Q?lJBNG9dfC+ijRvw5967lkZd9yHETW1NQ71q2PtvjXu4vgYqHNpuNmRnB4WTs?=
 =?us-ascii?Q?rq6sJ6VVYZjBcvpVkPpu5ZPW1lShISu80EoA+6DWTcxRbPn+VAiqyLx2So41?=
 =?us-ascii?Q?I2LNTn3J/kFhEBhMY87YRy1aUqjPXYlYDSSCZyJDtCi/x8atAxqtmGSjVrH/?=
 =?us-ascii?Q?GIkKDBzS2NNAvRJyP5OQQobwlWzjdFkp9IpNgLWrfH/srx/KN3qZ9vrX1cqx?=
 =?us-ascii?Q?oNExALrYQTmwtnEF62ddD4Kr97utHaQMeKTpxgOXK5klgaKjti2v0MHRtq1G?=
 =?us-ascii?Q?oeSjk+M7lCWxfOnwbgk1lmhq1IABELVw6nXTNUJnf/Ut6r3pUKtliLW4pBJv?=
 =?us-ascii?Q?GkhbGlQJ7aTm1nBbshbeIvuxQwOwo4lgTbuWoDhhKFFQLB4sQZGgigQGr2LI?=
 =?us-ascii?Q?e46yz5Uebg9oI/lDhxS4u+IwOrH9sUSqcAj0xN6bDQWtq8WXPNOMqzo81S/c?=
 =?us-ascii?Q?wuYdR39mgpHE5m8RBEIfkSBoLvjdQIvJruG6nWNTnkFvO6rG2ThxUPG9iG72?=
 =?us-ascii?Q?fUr2k0MV9RVeVTok2N93l7Gmvg07NsNL6XisyfeZWBqaqS/7hmgLzF1Y3APo?=
 =?us-ascii?Q?O6NXVHxKTxdCAW/o/0Za3JNqU/IEI3zzFL0uvgElFFVytdNB46XC/SMm3sKj?=
 =?us-ascii?Q?ySULVyxIPwjE24268CdmEejGNspSDKdFNflhu/9670UC53VORU2jh+wf04wE?=
 =?us-ascii?Q?G8eGrDGLBZmHPb0+a1i7A22d2jNirVva26iFG0yIXB9G5gWSd6VrjDCUiA74?=
 =?us-ascii?Q?yRgiMv4V6GqlFg0JGn3QB8rKTC6XyMnhn9C5+L57GyzzFrpNgRjviAMvp6jR?=
 =?us-ascii?Q?lml+le6ZIqoJQBqB5pjrWaIVhGzv3v7eyCU0bCKDPtV+X/i9+rL0Gnkg3Pv6?=
 =?us-ascii?Q?Pbq4BnUGdTt188qk05TdaKHZIS/KrJDUZ/6DUQOzqw1Qi3kH5ujrFW99TE79?=
 =?us-ascii?Q?wgCsNByD9AFn/suXHdcXumevdoactW0t8xnsG2/U0CdeUF+XWMLCveOHe5fg?=
 =?us-ascii?Q?r/eEGjupbVaz+NQxNf/g6gVjS2WQ2BwvM5hp+p9z4xBKwQSEM44khNwaqdV1?=
 =?us-ascii?Q?JWEYI9ngLKrd4nBf65fn6HNcwWK9GJzrQmDUvTj8F/Ck+oMBE6V+zhE0zEai?=
 =?us-ascii?Q?ZC9+pmYKBjE9gFNBcvdCLUMSwRk5mr8t+9GD+HIBsZFo9tO/OpKuiNA2Hcjg?=
 =?us-ascii?Q?pIUyml1YeNnTh3uEQPX5cA3WmS0QBH38h12GOdFO7gxK7wOLJ2Hlq9jkPMT2?=
 =?us-ascii?Q?mWzWYfdXaOvuyy0eNrrwupPvbFqnBQeLoPA4UKE9Q6BbnLUMIow2CbuNfuma?=
 =?us-ascii?Q?dXHbx8A6l5V62H+nyftPE6js/7ejf16mOSTCeKpNRGjKZPZTsliaGbtCb1xz?=
 =?us-ascii?Q?Ha3+Oa1X83UiqZfF4ks9SDYnMajvRVBiF/1rxWvB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 933ec4df-72b3-4621-0562-08db26106207
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 11:20:00.8703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Q0jzw/w/mcOlxzpqoucKowSaj7hi2p9ZLi9kEEnlVmUy7ioJL21+yVsDmPKScZSEYDSG3a6VP+AZvSrD6j/S3If4Q2UEw3R/q+xhFMBmT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5629
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 16 Mar 2023 15:13:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965608; x=1710501608;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cvhiBHXq69HBWr8Sges4Ex5/2pjAc/+3oDFrh8gHXKQ=;
 b=evBEsoths0FRirpgG/JR2BqBTFwmCGBuXFV9BN7JXPlL32ft8L8dGBdT
 Cq6dNfTPkozQYtNctDMvIPKzuOsG3PXL19/LTXdvztMtFwIZ9/lwN4tPK
 61B+Sqxo7ZMIso1ElRXJhBJFyGZw1T8tX1/w+D2RpUxvxzD8SUev6xCLd
 ZmFFjzrNhrrxRfk+M+N7PMHXhXI8tdOyxrVr8OzQq4nqhlpDhCZULmfpj
 o/fvXQ21mxIb05eIzYkFmTr6zIiooU7a5GDZW2VqOKGb8VQ6B8klkuuXK
 p+Q7njGWDwe+MR3vJAlATARDzNV3GqNC4hqRWTljrhbYeIfB0I72UX5gE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=evBEsoth
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v1 1/1] ice: fix rx buffers
 handling for flow director packets
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nguyen, Anthony L
> Sent: Friday, March 10, 2023 3:09 AM
> To: intel-wired-lan@lists.osuosl.org; Raczynski, Piotr <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [net-queue v1 1/1] ice: fix rx buffers handling for flow director packets
>
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>
> Adding flow director filters stopped working correctly after commit 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side"). As a result, only first flow director filter can be added, adding next filter leads to NULL pointer dereference attached below.
>
> Rx buffer handling and reallocation logic has been optimized, however flow director specific traffic was not accounted for.
> As a result driver handled those packets incorrectly since new logic was based on ice_rx_ring::first_desc which was not set in this case.
>
> Fix this by setting struct ice_rx_ring::first_desc to next_to_clean for flow director received packets.
>
> [  438.544867] BUG: kernel NULL pointer dereference, address: 0000000000000000 [  438.551840] #PF: supervisor read access in kernel mode [  438.556978] #PF: error_code(0x0000) - not-present page [  438.562115] PGD 7c953b2067 P4D 0 [  438.565436] Oops: 0000 [#1] PREEMPT SMP NOPTI [  438.569794] CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 6.2.0-net-bug #1 [  438.577531] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022 [  438.588470] RIP: 0010:ice_clean_rx_irq+0x2b9/0xf20 [ice] [  438.593860] Code: 45 89 f7 e9 ac 00 00 00 8b 4d 78 41 31 4e 10 41 09 d5 4d 85 f6 0f 84 82 00 00 00 49 8b 4e 08 41 8b 76 1c 65 8b 3d 47 36 4a 3f <48> 8b 11 48 c1 ea 36 39 d7 0f 85 a6 00 00 00 f6 41 08 02 0f 85 9c [  438.612605] RSP: 0018:ff8c732640003ec8 EFLAGS: 00010082 [  438.617831] RAX: 0000000000000800 RBX: 00000000000007ff RCX: 0000000000000000 [  438.624957] RDX: 0000000000000800 RSI: 0000000000000000 RDI: 0000000000000000 > [  43
 8.632089] RBP: ff4ed275a2158200 R08: 00000000ffffffff R09: 0000000000000020 [  438.639222] R10: 0000000000000000 R11: 0000000000000020 R12: 0000000000001000 > [  438.646356] R13: 0000000000000000 R14: ff4ed275d0daffe0 R15: 0000000000000000 [  438.653485] FS:  0000000000000000(0000) GS:ff4ed2738fa00000(0000) knlGS:0000000000000000 [  438.661563] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  438.667310] CR2: 0000000000000000 CR3: 0000007c9f0d6006 CR4: 0000000000771ef0 [  438.674444] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [  438.681573] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400 [  438.688697] PKRU: 55555554 [  438.691404] Call Trace:
> [  438.693857]  <IRQ>
> [  438.695877]  ? profile_tick+0x17/0x80 [  438.699542]  ice_msix_clean_ctrl_vsi+0x24/0x50 [ice] [  438.702571] ice 0000:b1:00.0: VF 1: ctrl_vsi irq timeout [  438.704542]  __handle_irq_event_percpu+0x43/0x1a0
> [  438.704549]  handle_irq_event+0x34/0x70 [  438.704554]  handle_edge_irq+0x9f/0x240 [  438.709901] iavf 0000:b1:01.1: Failed to add Flow Director filter with status: 6 [  438.714571]  __common_interrupt+0x63/0x100 [  438.714580]  common_interrupt+0xb4/0xd0 [  438.718424] iavf 0000:b1:01.1: Rule ID: 127 dst_ip: 0.0.0.0 src_ip 0.0.0.0 UDP: dst_port 4 src_port 0 [  438.722255]  </IRQ> [  438.722257]  <TASK> [  438.722257]  asm_common_interrupt+0x22/0x40 [  438.722262] RIP: 0010:cpuidle_enter_state+0xc8/0x430
> [  438.722267] Code: 6e e9 25 ff e8 f9 ef ff ff 8b 53 04 49 89 c5 0f 1f 44 00 00 31 ff e8 d7 f1 24 ff 45
84 ff 0f 85 57 02 00 00 fb 0f 1f 44 00 00 <45> 85 f6 0f 88 85 01 00 00 49 63 d6 48 8d 04 52 48 8d 04 82 49 8d [  438.722269] RSP: 0018:ffffffff86003e50 EFLAGS: 00000246 [  438.784108] RAX: ff4ed2738fa00000 RBX: ffbe72a64fc01020 RCX: 0000000000000000 [  438.791234] RDX: 0000000000000000 RSI: ffffffff858d84de RDI: ffffffff85893641 [  438.798365] RBP: 0000000000000002 R08: 0000000000000002 R09: 000000003158af9d [  438.805490] R10: 0000000000000008 R11: 0000000000000354 R12: ffffffff862365a0 [  438.812622] R13: 000000661b472a87 R14: 0000000000000002 R15: 0000000000000000 [  438.819757]  cpuidle_enter+0x29/0x40 [  438.823333]  do_idle+0x1b6/0x230 [  438.826566]  cpu_startup_entry+0x19/0x20 [  438.830492]  rest_init+0xcb/0xd0 [  438.833717]  arch_call_rest_init+0xa/0x30 [  438.837731]  start_kernel+0x776/0xb70 [  438.841396]  secondary_startup_64_no_verify+0xe5/0xeb
> [  438.846449]  </TASK>
>
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 1 +
>  1 file changed, 1 insertion(+)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
