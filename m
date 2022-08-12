Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB1590BF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 08:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D34DC4098B;
	Fri, 12 Aug 2022 06:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D34DC4098B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660285634;
	bh=mSS6YFxmn2/tzvLZjsKKSjo0peEjcncf+M9fURRWCeM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Le5CKWCaVtn/1CQirl/N87J4lq1Xoj2qHkEOPADPvrjE8HWBYE6x0iod6LbZiYaMQ
	 PElWVMvooRycwzR5qM4T1sROZohOdoHynC3+a2TiJYJsGgbAPKmrPNHhzppcmIhdDF
	 qC8WWBHjmJMg2WTncncpWJKBvaEcyCmALYlOFhRK+sId0iYvWgWaTO1CILLLInrerE
	 XcmRJsmxtfzP+fW4ypPeSMM7JNdS3cvFVQkY3eodVPODPNRBt8PqVlDPD942IdbmZv
	 erOHj+E3D5Al5b3ok9onuJJGINpaHePuHH5YyG82oCp0+tTvSv9WbQ2LL5TX0otcLQ
	 szF+VT4oPU2Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gw25T6OUUxjg; Fri, 12 Aug 2022 06:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CDCD404D7;
	Fri, 12 Aug 2022 06:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CDCD404D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5F351BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ECF54053C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ECF54053C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LB0OOcQOKzg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 06:27:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88F634017A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88F634017A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274588818"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274588818"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:26:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="748096563"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2022 23:26:59 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 23:26:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 23:26:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 23:26:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 23:26:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCfrcNuVVK3xxHg8dj4byM8hBDi/iPz2PuxfH9akCwEWX7C9TbEmWZKoy1Om10gs4oI/ln08pvbNZbQKm1Ah+/O6AEhaVohq07k0pCcZ8GcvFsZUGBivTeMs6yt3u4QlB0WCfZ9To0FsxfScviNfg0CDj/oMS5r0OZZoRqS7Ta2ZJ7aHmZNykLCDh4sraUtqxQNnDNew2iCrnwtOexuIZZ7DLEp2vEzc157zPqviRvSjg8IGh6p9DYBXnAzGJ5rJo44s2HX/YObR1Qle9ic+tsu6ZmowClvMqWQ8gVb5NoDRWlMdFSDAITXNRKGiWDe/xESCGCfXGahX4shW5FEncg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxqA2BBUIzRF7AKv1fMCkhMKMNA9Bz8e3Brh0Ij4q/s=;
 b=B1zBwnRUVapy73Y6Z1dXGl+9mcJqbtSOHubNBWz59OWv/urMnz678ewtflVn9dFskOKmA6oU4bxWuHj2qt2tgj6Vk0eGKOVBCY3QazQIW6MEciTOyMSyCVo+NtdCqbIBf841gUVjK7tFUD7Op31wrMdhRPnyV3lRKTOwhwsjHAMbu2WtYXefdwluLPo+nkz5EcylcnAIfXjHSJdTfUEcPrCLi1XjPZp/e34K0z+KFq3F36cz9UkSYXzyFFfBNXJ29ynvKia1L/asbks7dDmcsKtCxMJDDVszTvbCNlNt/+UQzJaOaQEpCSyOAqH03Djm7mZEx8pu0XGYvKVDZhrg9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by DM5PR11MB1497.namprd11.prod.outlook.com (2603:10b6:4:c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Fri, 12 Aug 2022 06:26:56 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 06:26:56 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: Handle LLDP MIB
 Pending change
Thread-Index: AQHYplrHdpQW/vx38U+4Em0oHgRLLq2q2jDg
Date: Fri, 12 Aug 2022 06:26:56 +0000
Message-ID: <CO1PR11MB5028C829447CFAB9FBA44A7AA0679@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
 <20220802102618.31303-4-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220802102618.31303-4-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c108c9d1-fc34-4855-ea8e-08da7c2ba786
x-ms-traffictypediagnostic: DM5PR11MB1497:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: komYwAI53t6nVvXMbcv2fgsYmmuaZHnM2rWCAXqCa6D296M+Q2euMb8pX8AajhOdbLGAC34Pq6kKKZGQlq5FgZeV/N7Bdf/mwCP5oupUWUN+LRZO1h1Ll1EyKfIoXDoEiHhvuNaiU9c8CIz5EiyjS/QHhU1fgbqriYRtJ1XKoXmXEDrIi6Aiesc5A3m0KwboBj8LfbF2aJwg0qi4ooHibsc/9tw9EmosVOrpjnP6bmdeOa2jcbckyA3pfdomYQlINDobCp6fHzRugBObf/EM1r/Yco6Jx8KywaENckATj+1Pw8W5iEa1Qc3o0xBTFf5XCUYTP5AV9FYrZY/iP0WbPLF50E34U+O2Cj/TJPx823V75/aepLsxmeXtIvw+JsZkHh6n0ykexOkPLW1Xyj6+uYnBHHA7wV7D7aLyo9KPrPxzpRT0OkZNAVUyA2ZnU5Mq5GAar6ZabAEBhq9eDwMHMAFm4Bea1Uuq+vtKq4dLgLbmDAT/KWet5Efe96XjVFdKFnWC9uV/ZPTwAQBPDNTbOSJWYmpRV3AgDzxjj6eQWDNH4ZzPK19oTH/inHux0ark3YGN7AAPolJzlq1NNwf4ONzLy8n6qmhhHktnQeEl3VA/EPajFpE4OMaavEZPMaUa2gzIFbEfQDQDQwx8JCiRZZZc0ydkncH+PBBZpWkVbslBdbHifGD+5IDu34knJ1mvkg+PRQPt0xeNiijY9jSSIjrDdn/Htw5uHZxWOjTR+bRoDgWvSAoxz/YnuN1JgEQbDG4AMU0R79JjtPwjcVSD/aGFA7iJyYYa72MWcWHEdyZmG0/ddm15mLipTsXAXPDM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(376002)(396003)(366004)(5660300002)(8936002)(4326008)(66476007)(66946007)(8676002)(64756008)(66446008)(66556008)(76116006)(55016003)(38070700005)(71200400001)(54906003)(110136005)(316002)(2906002)(82960400001)(7696005)(9686003)(53546011)(41300700001)(6506007)(26005)(478600001)(107886003)(186003)(52536014)(33656002)(38100700002)(83380400001)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QKiQYUaj1GGX9JwU0rY5whvzjbdsEA9HhRkmghJCl2Ygxm2TxpMHtbWwWk7N?=
 =?us-ascii?Q?tssygUr/ZB3D/MphvS1Ef1DtJ7RqWVoqX623q4YJwhc2iWwyG7pIE61f0L2u?=
 =?us-ascii?Q?joIunwlbAjEY88PkG6XoWfXZvg4YAZO2ybaX/UM0eTsnnqaYgN7G1eqM8q4a?=
 =?us-ascii?Q?wd6UYdNjSQ/k/ZkYVx0/Bg2XIL31g4xKzw9ft9KMbnkgx/sOv7JtrtghHsNQ?=
 =?us-ascii?Q?d2dttN/YktVDoEDLZf0NhR7x9I2p8gXaeafuqKJ7a4g3yvdQJR2UNSmM2t7a?=
 =?us-ascii?Q?9aeYvS/gzVCPvl+m1W92TDd/AziqB6qcFxqNEK0AZ88viqdfGMjVYTRl1JEi?=
 =?us-ascii?Q?PQpDzp4g9ngGuBzn2KZqD4fN73IrTuUiICyktfv0mAx5MPpcKMOcj+wFdu5r?=
 =?us-ascii?Q?TiwQKF5VNWY+k8Pty2FKVhdtsXZDJ0LpBw35twkLV6d9rkjFrSCDAVDMN5L2?=
 =?us-ascii?Q?De+AtCaFykj4awyNEoWFXOwqVjrbQXL6xX54KoJwGJ3G46JNyAE3RJ3oGOKu?=
 =?us-ascii?Q?npaXd1XGrQ4Ky7bcdxC/fpB1osCPzglaAVLOB47oh79loCLdUVYZ4oqwDn2c?=
 =?us-ascii?Q?wGqieOtkQDVyieCEI+rcLxS9VUCYHaQ9tauND7HTUBOjVk726HusIMw294mg?=
 =?us-ascii?Q?jCzFY5zkWWUbrKAi9QR7migYSuc0sJCBySZRoD9lbkCf6yMg3hs5Yb+oUtXI?=
 =?us-ascii?Q?+VopwN31E0ocR+DaR0bEqCr1GsohFlvRIY0KN8RRM5QNOqbqMmlypcnCbBXW?=
 =?us-ascii?Q?PWb40mrptaRi/Tp0pl57oea/BYVxgOSSy9ClbWr2juTjR5qzTo4AHM30r/Q3?=
 =?us-ascii?Q?cBEwT+dz3MFPeIKPFB+ilo3SJGNVjq7Sp5o9xPerNiWqlfmYB7uMU8pAdJhb?=
 =?us-ascii?Q?iEseJcEdKZ1X2sDRktgqjCOSRNaYCuEPB+LZcVMV6KSHOuJvErYW2QvsfYMK?=
 =?us-ascii?Q?10oAr5dXboRsXRyd1K/4P9g3nDDStyxw89WpRCQuXhLBleyHlWE40IPINRPc?=
 =?us-ascii?Q?xespdsOSzLVNjsd9rnNBCd/ogNUN3ucI37PC/RtgWZy2WSzOT6geJdmee3qo?=
 =?us-ascii?Q?YQ4M5OMsd2gGRhfe2OSlJkUE2Uvgi3aB93gB06mB35zwDGSXsiOzFW7GXOfF?=
 =?us-ascii?Q?kZyTvIosW7Nb1olaMgh3yPDoepWnSmbmCKenk4mpoqIjuYYYiHaNQ0+zodxX?=
 =?us-ascii?Q?NiuRDxmsgSk6E4hNKARsOXhY9kNecISiOOT4hmBuZlzwOg5ZeAYGipdyJCqc?=
 =?us-ascii?Q?4H1t3hdF7drg/jsSlfLFDquaFLuHhvPhmKoblWsd1LDlAV1GtXPuEh2cTZX2?=
 =?us-ascii?Q?YaCJpKMyMHzoUdH8P2xSRBTeMNwobLl/9H7WZ6bjr5u/VyYDuOhTc8VnkGE+?=
 =?us-ascii?Q?N/552XuRaMF6aZH7gTNCv7bBdDl/b9ZOm68EDO6VaQ1gB5rwnQZ6R5ksu2a0?=
 =?us-ascii?Q?kpsx1WT6+ViAKY+nwZ0G6KaWTj9TLA1KLushA9AYpxW0zHiXuuhTrteyPROv?=
 =?us-ascii?Q?iWCKdrqVm4JT0XDsPwvkuK+JsMHBat37wVysERJFRLihkPKIQebfbvvBAKyr?=
 =?us-ascii?Q?HoGSkercTPBYqXm55OQy1oMfDbLkxGDLO+G97v4bb8GHshNFQwvz2UbcDdIQ?=
 =?us-ascii?Q?9Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c108c9d1-fc34-4855-ea8e-08da7c2ba786
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 06:26:56.1796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: waCLgQM3Lc1djjqQJzTLaAzV7SsQ4XwL5Cs0QQa+OMoZhWZNzoM63EoEtwmOXqTxZUC7rDt9HcgDXQNW6ynhhE8G9eTDm2qbj7cmNPXgYds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1497
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660285621; x=1691821621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JxqA2BBUIzRF7AKv1fMCkhMKMNA9Bz8e3Brh0Ij4q/s=;
 b=goykL2XCmktY/zkA8hQUkWDzPmRZ73JUoOBzPMYZ74eaW12r7LcBF3kr
 5iNSeXC0NsWLG8Z690bJ6y1qcg+VD05JGkkMwKmYmAo7trmrddACCDkcb
 jprJ3bhkxNZXbAvnk+x8JTZvvEkAyrO1pjshJCK5C7eKXMQ8RqZNNI/XZ
 Pg8KKEaGxL20PVvKv0g7ojiH4z1qdn9mPUGb19cMeqz0mAfiS1vGqFjmL
 ZL9KsZ5UXlGRZhFP+GwzGZ8xJlKmW0dzrMQ06XK+hTD+VsTTMJhe7ojTK
 15QhEbHWb/vRGy9uYg7q0k7YSrnUdMoGsGZnyaHoQB51RINGBdmlS5XVy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=goykL2XC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: Handle LLDP MIB
 Pending change
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
Cc: "Arland, ArpanaX" <arpanax.arland@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Tuesday, August 2, 2022 3:26 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: Handle LLDP MIB Pending change
>
> If the number of Traffic Classes (TC) is decreased, the FW will no longer remove TC nodes, but will send a pending change notification. This will allow RDMA to destroy corresponding Control QP markers. After RDMA finishes outstanding operations, the ice driver will send an execute MIB Pending change admin queue command to FW to finish DCB configuration change.
>
>The FW will buffer all incoming Pending changes, so there can be only one active Pending change.
>
>RDMA driver guarantees to remove Control QP markers within 5000 ms.
>Hence, LLDP response timeout txTTL (default 30 sec) will be met.
>
>Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
>---
>v2: Remove inline hint for ice_dcb_is_mib_change_pending()
>---
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 25 ++++++++++++++++++--
> 1 file changed, 23 insertions(+), 2 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
