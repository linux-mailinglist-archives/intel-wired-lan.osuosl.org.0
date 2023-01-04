Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B449965D9ED
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 17:34:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC4CF81BF4;
	Wed,  4 Jan 2023 16:34:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC4CF81BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672850082;
	bh=wnOJdG0PKyTSM9Mv4bnCias/UxFXP4OX42302oaIELQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6U3jtXf/cKLIyJMEqCfZiX+4S3bdFxYguUjdofh/c6u4XHZ9Gi7LMZxzb4xtuqpgR
	 0uPXKj8YUgY9c30JEFqGIiYH5YJVBMtOyUgSe+uyUBNG12nmPKjkMVPsaxR0qzyODh
	 x/U4bpaYMK6FHqcYkzEfp/gKlAyin5iqF6SxrZQ2vVlI+AVTwyUxHCp65fxmns44jH
	 ERDY9VF0gOORnIPCmGsc36t8wJFkJGsGrDsvhZilcT74k/EskuiofUPvEMACnBQZYi
	 0fXydncP2mv4IQigw6tqbLlyPafXTziI2pmht2wEuOYeB2wBRcWeD0oNx0T86F5nbw
	 fMuebPhTbLFuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Tm5em2976Cf; Wed,  4 Jan 2023 16:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA12C81B10;
	Wed,  4 Jan 2023 16:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA12C81B10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BF361BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E57F1404EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E57F1404EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wR3rQb2EU-AN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 07:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEAA04010E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEAA04010E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:00:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="321924161"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; 
 d="scan'208,217";a="321924161"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:00:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983815687"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; 
 d="scan'208,217";a="983815687"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2023 23:00:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:00:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:00:36 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:00:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yc1VlW6T2ocZC5bfm+9EYs31u0heKH6nbihvXAJKRAGzHBV/lenlILgUKTjXOKiymSc8rCutFGxVYubxV8BFpKkgbsUJdPvS3zB7B3Ml7aUAh1WZwoHLAhzbHAE3DckgNaOiY0m9cSFBecWndJDuh4jqfXx3SsXm+d+O2JVWw4RP6aPyhdB0uxz7WT/AVazRA6zToE7cpr9xLVWu2+/R9o8+CYYy4gvkicTwJWGFdHo3G6LyIqcXyLQBBfhrFIiIDt87KbtPzCvG+Du65wrG4EQaIinMnQfLzCRG5JBig9r9w5eYFHA3JUbVdVZL60EVPWCd/xRWUt04NNIKyxqOxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqURt4onjLy6GI+2tVzrzfxypGWsxpXXv4tiGC1Btb4=;
 b=CY12JrPuHAXawCUCHT5zjZWIbX308CSn4/Zs737ySa8aXacko0KTtbXr46VyzIGk1hwbPNFBGzNd7addny8MHf8HGTNcwGIsRGsxrkALK/qaWTTuvisTJxBo39LyLXJERKrBvQ0cqLr9ITWLiSU/+vuBRy1/Gx44LxactXiEnmF7AtYRRtFk48RRdVzzwIxDwhIjWAsQw1St/tLVljZc2RG2XY24F1NcKduNdOsaQGUI8aZsgV6+NH99ZUwdxz4qmgnwB7UzMnN3e5Wr3dcbYE+hk26kVcjz0xqXLIkNHuy+u/uYxu52LG3aNBB+XEOWFfTg2wKQNz22UjRK7O3/ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8)
 by MW3PR11MB4747.namprd11.prod.outlook.com (2603:10b6:303:2f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:00:35 +0000
Received: from BL1PR11MB6026.namprd11.prod.outlook.com
 ([fe80::b5e4:f18a:ba6b:55c1]) by BL1PR11MB6026.namprd11.prod.outlook.com
 ([fe80::b5e4:f18a:ba6b:55c1%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:00:35 +0000
From: "Stany V, Vasanth" <vasanth.stany.v@intel.com>
To: Yuan Can <yuancan@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: RE: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak
 in ice_gnss_tty_write()
Thread-Index: AdkgCjscDsytE1xHQCCpXKAoi3Y4Mw==
Date: Wed, 4 Jan 2023 07:00:35 +0000
Message-ID: <BL1PR11MB60269BCA60850BE10D747990BFF59@BL1PR11MB6026.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB6026:EE_|MW3PR11MB4747:EE_
x-ms-office365-filtering-correlation-id: f00320c5-184f-44f8-5b14-08daee2160d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eZ218jgmFCNcwxc8v4t1NZYr0JEGP3OxyBY4Q194BpRSzzArtGGf/KjouvHmbvWefm7XAMpXGlX5jGVWav/OTfQnR1GeqCVxwM6TlNYQQs24z0NxXweocWKsDgxW5AIWs2XBp1Ndug9RNaaiStKXYvbwLuKO1tzeTSe9VLdgLrGC0DarkodTfeamAhi8D7dW9BtAI7oVpzF8WKgohDMRyJ+39Wjc80/d9+7uD+o94iMjbOlafms2wq2udHEDheY2lwGqnn1NJ9Wd1mWPHMib6MBKOQvCD/ZCx1z0KEHSEk4UFmHgW/bnFzMbkJ1WUpUipW9DRMFaoyq4yBxqYNTtaY11OFoCuXcU0JYt8y/GNh5+gQBfh7lrSrOynLVpg3QcDHpUt17BroXg2Lvw7WxQ52/X2GqMYlGi5YXQSkc+x4RqkLz1kigu+mK2s7cG7jN5agURRqG79131ov8Xs6cN7tmwpwdHwUbr0Y+0Qj8d73cQjIk+X88VZQ95ZX+/Kw/sYp7zcgRkzfbcDUnA/wTqhGxpyJg8l4zhLTuAY9O4aB98X/tTRWLK7ZYs/6lAHHskr2l+qVdJFoZ0AZcF3xV20isqptHfjj1n+YS9kY+gyLkn7METzmOzJRYedCdDlDFF1mdBdDLl53Uy4Jdo10AOzyTwopR11idDbYHkr3+ARI4rjfRIVNRH7PpeD+XfbLXLAQuy3JqrzPVb5UQa83ISzUWobNOF6iuphqBkK/ARctA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199015)(5660300002)(2906002)(4744005)(41300700001)(478600001)(8676002)(52536014)(76116006)(8936002)(66556008)(66476007)(110136005)(66446008)(64756008)(66946007)(316002)(71200400001)(53546011)(186003)(55016003)(26005)(9686003)(7696005)(33656002)(6506007)(83380400001)(122000001)(38100700002)(921005)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W1M7sJMVfcCCKBbkWCbMlfFIFJ+krHzUH6odf0w0PSVtFE8SNQ6NUUpjCr+Q?=
 =?us-ascii?Q?cIEODUCTO4GjF7tLfGVAqMO6iZHq1Z2f+6An8W63wMf+drqxpMyp8FyUIpjF?=
 =?us-ascii?Q?VjSUIiolG6W3ElIcbnxSgQRkGTFNIlpNDCqPNRlzN3rnYcCwg79GPD4OxRM1?=
 =?us-ascii?Q?EjKzBghx5vLTZxZgsg8KBcqfQS35k2kmeWp9ehFZe8FH3b5h1ElWrh9zaEEg?=
 =?us-ascii?Q?dWbXo98c9He4I65x9ivYcIsBkMzOoUZAmeDMY7ubx+fDiB9vFrX4gTG9U/+4?=
 =?us-ascii?Q?4inc0rR8ev8zJ73kUWD1mceLEuGK4obzaylsgKimgZJgUZHrv8D1JPXIE9WF?=
 =?us-ascii?Q?VHj3ddjpGlvLGrwz9CJ/h+U+MEuk3kqkiJyYIaa1YmJe/E7goKp4VBxbbtXW?=
 =?us-ascii?Q?ad/qh0Jy7XVgwhf7ZuLO2UiyKNbVno8d9VT2Qc/196aWvexwYyvp88Ux2Uho?=
 =?us-ascii?Q?TcXBxslhtISRDcIFfEE/7r1vgnAiZk5VgT9PDQRX1UinCSlAj2rMriYqfkqs?=
 =?us-ascii?Q?WRt1K+5OB5TTH7Pcldev9i24tjwkqFVjOQXbqmlicEkKM2EVVp26Ajtrtg07?=
 =?us-ascii?Q?rema6o9Ud+0xE3cwEgKNUvAGPR0xt64whxahOYJGHe8CvLXVDu0nANC4+J2i?=
 =?us-ascii?Q?JDOy1Mo7W/N+uDw6f6THYsUUKOiusQTTtOQqHSoEnYuRw7asTHE7wrArzD9n?=
 =?us-ascii?Q?K9uYdmhUUpGbmVHtiDIfpJ7A85tfYiv9b9ir8zt71p8Zkw3VFbYaDcIiRYXb?=
 =?us-ascii?Q?pFRN2e7kIl8U5+CPax7EVihY1mCKg0n0Xw7h4Gldrcqa+DY+hNwj05WPSAf9?=
 =?us-ascii?Q?tw11O++PpcvokhhsE+3VECX/e8nt1sE7Q7Zcuf4Tm33OK/0gJEWoNCebVHKT?=
 =?us-ascii?Q?sQgW5iP5Lg+wt2FNxsap353e9VAxSPsagQcYAjw60wJStxi6QNDPHVquyHeH?=
 =?us-ascii?Q?OeZuJBeZwyUlIk4kTDk3mNDvoyzC9Txhdmnv1iDNEKZ/reWYkqBaUHRLO+oM?=
 =?us-ascii?Q?ajfSrvTLKThGV+MtRWXqxUXtCkXnpMjxO2U2pYvytieAJ3lhdRfTvehe+bby?=
 =?us-ascii?Q?jZ/IMWOPuVKIJSgD9CBvTESigm/SVy42XSgFisFXaAw7bGrmtJlkxLlrc1iJ?=
 =?us-ascii?Q?AgDLjAeIl+KgK8dB+Xnt0IHYsWs1relwpjPhTS6iXUWefO5Y0OibF1iu4e9V?=
 =?us-ascii?Q?GxB4LSLMZIHCJ03TGht0rLJvElJ7n9XQ+9WmAm7W9SOn9NaYbQJDFeZW8YHL?=
 =?us-ascii?Q?u2q/fYnPFK1cWvFs89xsWcxJlcOkGZU1adwpskA7nILBQNcGHmsatxLXFRJE?=
 =?us-ascii?Q?5OZbh4EAKIrdpcHfF3owBT/UC6RQyEoEQkz35pqIKlYWd9jkCB0f0tn1wViU?=
 =?us-ascii?Q?XRDX9U4+SO75oxshEFJyp/lsQxquaYC74LkpfELoD6sLw+WR8EXk5T3CPRGj?=
 =?us-ascii?Q?wqFPuleegA4VR/QYGE8Vf5X9TZZDUNrQf+4hmvOTExJsJtbmvI2KN++z4niR?=
 =?us-ascii?Q?vO22eqAxCYh06pjH1+u50u+7Ke8XSha7NaoxrDveUGp371S8IBO/gq1e167Y?=
 =?us-ascii?Q?nlkxyJSASVXDf4z/NSD98C7L1piflZvQ5wX+xu1Bl4AFWL2JPORMDVBzAVki?=
 =?us-ascii?Q?Fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f00320c5-184f-44f8-5b14-08daee2160d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:00:35.1648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IkBBJXBPa2Zi/nTKQ51Ts0Jt4eXvSS1vZEPdb3bzuWof7bjAl52FKvIZhYIg11ucYI+5Nq5sr1V3HoDOtjbaq8rYgpr2scaTFFckRQP/Fe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4747
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 04 Jan 2023 16:34:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672815645; x=1704351645;
 h=from:to:subject:date:message-id:mime-version;
 bh=0qMu7khmUa36gCzPoY5ZCYGGBnvJF5TtzBzem9WemPg=;
 b=lgbHLpg0uQRTwEV+kdt+intx5jltT76LkMfVo8uJTNBFGGXSk2rZMQUT
 XLWLRJ6oh/QUXfGdSFe+fII+wHiK59KES8MSsMOUOhZr3Zvph+6c01kfs
 oivmOJDqoRACf2cRyN/d/Z1gKmcEblb0i/u2OfXXB+Me8EvRkv40zgYrc
 sOr08gCGssSZ/4XgjOhtnNYzTJ1YOVAyCdh9JE28LpVGbIvf42asuaAQe
 jemoxeFY+0Y7Vr/sOpElirEG4IpHH5yZvBYfgLih+3OR2Mw3HVs9PEhAT
 deghTAoxafOXvF8EP0XTsYJZDC1NJPIQyFhm43I2K/RgxY1AUUaLGu6s8
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lgbHLpg0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
 ice_gnss_tty_write()
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
Content-Type: multipart/mixed; boundary="===============5436753739792566306=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5436753739792566306==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL1PR11MB60269BCA60850BE10D747990BFF59BL1PR11MB6026namp_"

--_000_BL1PR11MB60269BCA60850BE10D747990BFF59BL1PR11MB6026namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wi=
red-lan-bounces@osuosl.org>> On Behalf Of Yuan Can

> Sent: Wednesday, December 7, 2022 12:55 AM

> To: Brandeburg, Jesse <jesse.brandeburg@intel.com<mailto:jesse.brandeburg=
@intel.com>>; Nguyen, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.=
l.nguyen@intel.com>>; davem@davemloft.net<mailto:davem@davemloft.net>; edum=
azet@google.com<mailto:edumazet@google.com>; kuba@kernel.org<mailto:kuba@ke=
rnel.org>; pabeni@redhat.com<mailto:pabeni@redhat.com>; Kolacinski, Karol <=
karol.kolacinski@intel.com<mailto:karol.kolacinski@intel.com>>; intel-wired=
-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.org>; netdev@vger=
.kernel.org<mailto:netdev@vger.kernel.org>

> Cc: yuancan@huawei.com<mailto:yuancan@huawei.com>

> Subject: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in =
ice_gnss_tty_write()

>

> The ice_gnss_tty_write() return directly if the write_buf alloc failed, l=
eaking the cmd_buf.

>

> Fix by free cmd_buf if write_buf alloc failed.

>

> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")

> Signed-off-by: Yuan Can <yuancan@huawei.com<mailto:yuancan@huawei.com>>

> ---

> drivers/net/ethernet/intel/ice/ice_gnss.c | 1 +

> 1 file changed, 1 insertion(+)

Tested-by:  Vasanth Stany < vasanth.stany.v@intel.com<mailto:vasanth.stany.=
v@intel.com> >




--_000_BL1PR11MB60269BCA60850BE10D747990BFF59BL1PR11MB6026namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:=
intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@osuosl.org</a>&=
gt; On Behalf Of Yuan Can<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Wednesday, December 7, 2022 12:55 AM<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To: Brandeburg, Jesse &lt;<a href=3D"mailto:=
jesse.brandeburg@intel.com">jesse.brandeburg@intel.com</a>&gt;; Nguyen, Ant=
hony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com">anthony.l.nguyen@i=
ntel.com</a>&gt;;
<a href=3D"mailto:davem@davemloft.net">davem@davemloft.net</a>; <a href=3D"=
mailto:edumazet@google.com">
edumazet@google.com</a>; <a href=3D"mailto:kuba@kernel.org">kuba@kernel.org=
</a>; <a href=3D"mailto:pabeni@redhat.com">
pabeni@redhat.com</a>; Kolacinski, Karol &lt;<a href=3D"mailto:karol.kolaci=
nski@intel.com">karol.kolacinski@intel.com</a>&gt;;
<a href=3D"mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.o=
suosl.org</a>;
<a href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a><o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: <a href=3D"mailto:yuancan@huawei.com">yu=
ancan@huawei.com</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH net] ice: =
Fix potential memory leak in ice_gnss_tty_write()<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The ice_gnss_tty_write() return directly if =
the write_buf alloc failed, leaking the cmd_buf.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Fix by free cmd_buf if write_buf alloc faile=
d.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Fixes: d6b98c8d242a (&quot;ice: add write fu=
nctionality for GNSS TTY&quot;)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Yuan Can &lt;<a href=3D"mailt=
o:yuancan@huawei.com">yuancan@huawei.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_gnss.c | =
1 +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 1 file changed, 1 insertion(+)<o:p></o:p></p=
>
<p class=3D"MsoPlainText">Tested-by:&nbsp; Vasanth Stany &lt; <a href=3D"ma=
ilto:vasanth.stany.v@intel.com">
vasanth.stany.v@intel.com</a> &gt; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BL1PR11MB60269BCA60850BE10D747990BFF59BL1PR11MB6026namp_--

--===============5436753739792566306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5436753739792566306==--
