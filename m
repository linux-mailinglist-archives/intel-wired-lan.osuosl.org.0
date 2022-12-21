Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F44653097
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 13:12:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD4D541721;
	Wed, 21 Dec 2022 12:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD4D541721
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671624727;
	bh=0eKdxCCNvI2sNvW0cgbxoteQoSjq1dFSoB62mg7849A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XiiCNzq6tq9+WVqEXART7ma9RzccSu9wYRvEytRdDnCaLdKJfgpyiO+tFRm6olX9c
	 3XifL0QbRDC9k14wyeR+qWBqK15mm+MQGdQOkdZ4C8HjUxXRAUKh+TZB5HCD16WiER
	 N5Ms4QaJAEJbk61g+MDhuzy9xxl4BRLb/N2DiAnpzXFvTXqHJ1NdOt6kZVKQu6XT3J
	 JkEYwWnVEQDjZzGHTKry9OxOF4Q8YJBreZQEoXsMP4KLon2n74Kru2cP0SlGNTNwnt
	 rNqfE2vdmLlDu8+ObGWTZnBX+2q5cR7FGYA5jUR5bE98nh2C79zw6ViB+4G6DCrXIZ
	 9SxmlXz4kLOLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlDdVIn62Sgq; Wed, 21 Dec 2022 12:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADBB14171F;
	Wed, 21 Dec 2022 12:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADBB14171F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7C841BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C1E54171F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C1E54171F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 67qvzvVKvp3V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 12:11:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DCFA402A6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DCFA402A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:11:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299534199"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="299534199"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 04:11:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="980178428"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="980178428"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 21 Dec 2022 04:11:58 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 04:11:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 04:11:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 04:11:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8Y2NMma+M5lUmjjjFpHJhWz6XV6GtzWxCDxSflAHuOfWjLAi8LJJVZ1NECoTOoHJiMiivkT60RzlL7GUItbSNkiyy9yvmrNvbTfpqidA07XLlshpcmcQVIimrAurSAUqalwlhV9HYGV9rDcFABwss52iKg8WJTl/Wbbo85/ZHKM96+xMsrHqRtpbBCsp7621/zb9G2wPHb/at9Y4uUYi+P+59w/5us2qfshUoF5AUxdTyrj5QsSyp/IqBepU6RPu3wX1p4e8yJjc8QecHviatKd0t7yGJ+LJX/4CnlRqRoKimUWkffkUFBudV1eKdRB9blNyfbxqPg5LdRd2VHs6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cBncOhGD9e8Evl4NofcSlT/9p/4ht4aCpz7E/qck2LY=;
 b=Cf44r3ifPYkJTIm0Kd7VBHEXrB7OsEXQMqx8We5XMcz0N5hGTSoRnq0KTXD4OhR1ZFnjlCt4JwWU8I+wuMwFdXlDGj0YJOApUxVZlKmEsA2uBlJ9lweFs+uGc+p0PNn+ZBq0yey+boPNRduoNurxAMcm6UOgVEm0O8nUFtF3GADuRweKOX896TKBfMOrKzJq+YPS6fmzCiJ1omNvf3LSA254ciRVyAbgXeZMLrC587t1aAQPKqA/T8ojeNJsJUtm5agbeh3PRl5YS9zo4wmMuryMWlaYu1QL537w7yLLW/mUIhnmcbzjTxBEYX4XvlDPhwfwgdXyZukZyDy/MVFbaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS0PR11MB6472.namprd11.prod.outlook.com (2603:10b6:8:c0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Wed, 21 Dec 2022 12:11:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 12:11:56 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Introduce local var for
 readability
Thread-Index: AQHZEM2JIHfGVde6pEe/HtYaoUnWxq54SREg
Date: Wed, 21 Dec 2022 12:11:56 +0000
Message-ID: <BYAPR11MB336707A526DC79196017C3BEFCEB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221215213651.45135-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20221215213651.45135-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DS0PR11MB6472:EE_
x-ms-office365-filtering-correlation-id: 684ee0b2-bb01-4eeb-d61a-08dae34c8dbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PFyD+TGaRKU2tawgAjH0y1ngZC7yP90uD0JPR7gKimRKXJOdbZxvFmyYlvpsCAgvvcHMD3FT7lryigfiU1thomgVYJWmdVqYAzdhB/VMDMnBVi2IF/TljV7TRSyJcatCURYLz5aKbAGtSCVHMEhEEKN+1fn6m+BVFhefSp4PI6yckokZDsLCnZiOWm8EMXNGSOMap5aL7HnkVz9CbG1SDhJrPlQreI/qWv8hTL1zxreafb9gG2IkL2g3LWHsGQNH28xpAx7yjBQIUrs4Ky3eEa7eN2mqRWLPwT7nTXdfVrxOMoljDYtC0zsQvsMUuxsqjn2/j67d42KGye9f2w6X3JVQKtGn6kWunBRI0T10n8vvAUz2nv4VpFks3lJ4xnep/YizRt4dal/SCkgBEyMuax0lGaZpl+OAveS4terBCcQE/Lu+lIVgn2iD8L3jjcrQPWUmxJveRDzYZ30lYOPgcwXnu0rkcgjCOCv5JyhU4CDHvwvj7C6mUXam8WD5ku8mZIqsoXQd18laqE3aHeP0O1LJTda2v07OfTM1NQV5yMK/Z1m5bAkK9lCbz9zO/geb/7KdKGysEhOnd1TrgX/89+R94EzPAPYEgcTfb4N81kGid3bNqpOM6Vh8KrGAJi3OUknqYWS9ub5OXGelfu5jdyNcExO9bTX4N+teIVcaxhA6lmhDB+xnMcVyMKBOjNVvSYkvxbLMUMQnFOp1g0tfhQNmgQkhSBKVg7Ae8iQZ2y0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(396003)(39860400002)(136003)(451199015)(122000001)(41300700001)(82960400001)(8676002)(38100700002)(38070700005)(33656002)(5660300002)(52536014)(2906002)(4744005)(55236004)(83380400001)(53546011)(8936002)(7696005)(6506007)(66476007)(71200400001)(966005)(478600001)(66556008)(316002)(86362001)(66946007)(110136005)(66446008)(64756008)(9686003)(76116006)(186003)(55016003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dV8lsCePBjLxe7UnZGxEKwtr7e46kURmRTgsQp3ECC1D/HSF3YTZL8n3KwmU?=
 =?us-ascii?Q?tQQpbSTVScyGf4RFduy5ZIkyOvZrlheuwbfzDQItndU5vfSEFnpwiYC/SYFk?=
 =?us-ascii?Q?dao4R/jQJuyKLMbLw7k/jZ7/0FL2RxLpcKV3WQUuK3TM/DMwYkKzZPpfoyDO?=
 =?us-ascii?Q?eVtgrgrV2X+pet8hwkXQWDqpucTrlnFxCoYrhwKa/hxt3J1zqmdAYzxxZTqr?=
 =?us-ascii?Q?LziWcMrVP8XcNJmap93kOhTKXWnBw4utEudybkEXgWA4DwRRnm6tPeWSWtI1?=
 =?us-ascii?Q?m/aEI6eMQAq2rpGqFZztVjvPaVs6nG2+6qMai4f+lLhnjNjn5wKMVscU2DsQ?=
 =?us-ascii?Q?9+f7/but6x72nfOK+6eDVSAYtOQbRDxFDXEd4XQqb2tu9CYq1wGG7MVDz1Wc?=
 =?us-ascii?Q?1sXE73O4AfItrU3AuZsb4S9OSmW4ZH56M9dBsY501tbr5zvIWcsgRJ0Kj+n4?=
 =?us-ascii?Q?GdYHZigFgLH5/QYsPqWbHukl7SvJZcPdaXFdOJfa4KV12cCUGbCUdcm/wep6?=
 =?us-ascii?Q?c8wPP2esMexygkUG5kSj39yiQju3c2hmqzswjL4OFRYGIBGKhsh9aJUnvSor?=
 =?us-ascii?Q?swxCOwddShNWId91idrtTuVZrbGY78cziuqrkWlJm6csBEIPyMQBHqvxcOcI?=
 =?us-ascii?Q?o47Xo5KhKZZeldyRbku61ugCgKFvcAHaLXaT17LNbIQEFficOf4UI+sd3ka0?=
 =?us-ascii?Q?5vkimNqYbALqZ81TSLLY6HHzy/BUP4oFgyDefDlvJmevg9ak+9ChHVnJyss0?=
 =?us-ascii?Q?bakakYRPDhbNSRiYDuY4rGjxkDM3sNdabFEfxpQf5ATTzlY1HOrsoHnHhzue?=
 =?us-ascii?Q?2YGRXLOkC/9aDGiLvCIBVDTJE36cg5yilnf+VaN3EIJFKptBqRapnB5giEbw?=
 =?us-ascii?Q?4b46Cgn0I3RWYmfBggKEYafHjGHt/Ze/V/60NjdxBUE9hhFHLZLc5ldixzK4?=
 =?us-ascii?Q?GTezpY3x9F9wNHxm63sZSONQwakWTVcfJ0uurss8xTxao81qXoVfb584evf6?=
 =?us-ascii?Q?35K2OMtQ5w7/wgD8tD6EJdM+wSaJX8DhlL4NIO1q5ikBcp97tScPpntvtGrF?=
 =?us-ascii?Q?eECkSRkuGpKv271XvuOvxnjiwaIvgg9OApmNZBlB6r/GbCapHTM+PNUNfXCp?=
 =?us-ascii?Q?0jA11Vb5JYQPKwlmzACwfW7JlbliX57X1lxRMMNpbv5CB6M8SDMc0hatBhxt?=
 =?us-ascii?Q?E0m1XduYaXST/R/I2fBQ+hgyp5TULEJfhKp2slOHm8j2XsMPfR68B4XK2cDm?=
 =?us-ascii?Q?mphOy0DTHkKiug6HvgYR7EKSAhO0HWibBTMRrFXSker345B/H6kjfYnm/YhC?=
 =?us-ascii?Q?ptLciBR7GGY+R+lwLhURnEqzFz4m3SwH83zgs9no9S9Gca7yPhqcxwviadar?=
 =?us-ascii?Q?cly85VQMOzbIXC7iB20PkSBrNr89o+SGV8J9JV92cVB7W1zdEyCf1YXz7uVJ?=
 =?us-ascii?Q?2nuNyTPbcrQVnD/CAtwKWD+XoRrB8tX9MQ14nAmN0CmAuTWSB7QwjXaWmGE9?=
 =?us-ascii?Q?hFS0g+v7RHh2zLP8MpCGNidwA158XiQH4MQqwqH9xk+V9bN1uKKYGHiFu4nx?=
 =?us-ascii?Q?21o5PUOkktZIqloiw8zaIT6AS8OLTZS4gJ8gEFXf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 684ee0b2-bb01-4eeb-d61a-08dae34c8dbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 12:11:56.0951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SbmuLWEEpTO0N5c0pGxkTolC0bT/6MsEsvy5ZOUBEnyp3/j6HAwh2VL9pclrpzRxX03Om+wy5r6CjaGgg4hLkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671624719; x=1703160719;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1ADnBaINm8CIcDBMIVHXackijoGaRI2Z019GK8h+APs=;
 b=GxnmG4vf4Gz13Fa11ik16FtSmqX00csjydSsRP95fsPdxL0GRGSK8hkr
 OAqORWiYqUD7/W7fBRuQJlYiEWNk8eSKiiUCdeRaRhBuvO1QVfbwtLTYW
 4poHz9Sehe4Fq/arGEZC/7i3Zs13ltmPOul5jXLnZhN2d1K3+yljErifn
 eb4pl+j26KR7xXjTviSk1Rio+q/7Mpd2sC3rz2JKp8c4urxGXTh7gCJ7u
 KIuCOJ1//OIDZWbburPtwZXBttgS5KduRygQhUWwv6AsIFZsLrQ2Qgp8i
 dfyxkh1qc0sLIIzseE/zhUPVPEFwvEEVEqdR0Vrki5K9sdU40jILRWxHb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GxnmG4vf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Introduce local var for
 readability
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
> Tony Nguyen
> Sent: Friday, December 16, 2022 3:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Introduce local var for
> readability
> 
> Based on previous feedback[1], introduce a local var to make things more
> readable.
> 
> [1] https://lore.kernel.org/netdev/20220315203218.607f612b@kicinski-
> fedora-pc1c0hjn.dhcp.thefacebook.com/
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
