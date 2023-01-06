Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D4965FB87
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 058B760E25;
	Fri,  6 Jan 2023 06:35:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 058B760E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986949;
	bh=93jqiC7U7adZ0lO9TVJ6Rs777k4kLlcSsNOQ7pcIan8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jxl/inoVBhQ+NxbCi0d5xuitB6rYxm9bYXtqJuH8if2bldGQsmutdQjUU7yH4wKMs
	 QsMYgOHdLNUpmJVJTPUSsIfnc0eWmHsmfROfs9InyuCeMuqrU+LlwyN1ZFUxzEbVqr
	 VoM3hQxuAmO0Wt7CpLY3z2UTIFp5RrwFwqgyQl+Dxp81CpzXQv3HXYi+w0FGHGn4Od
	 QUrjW5+e66x4cpoAjUB2Zt0QhbvIEd9JjHtJ/HJn2b96oDO3sU/SszROJG9L3LOHqb
	 hrduChSri1TwOoO7NHJ/p1V7ON1f0PlpNheJbonlG/fTPrwkHba2ymJsU8IOZlzYIL
	 /P3qvdBGKacwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYqlCn8ub4dn; Fri,  6 Jan 2023 06:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0650860BAB;
	Fri,  6 Jan 2023 06:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0650860BAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 084391BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5B5082173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5B5082173
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmpqh8GtqcNW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92A308208C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92A308208C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="384724311"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="384724311"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="901193272"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="901193272"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2023 22:35:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:35:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:35:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:35:37 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:35:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQ4kken/Qm1Ii2N/dVq8q0uWZqtd1H3kYn0EGHd/nVXj439reGcmgMi+yAVVDsRG2KsHquQwoUZN8u/xt2BLPA5Dyz+pq64SJvoLnVweUHgLKLDmh/rR7BlnAJs2qbLs5ERBFcyhO6TybcFxGTCbfeJxjWZn66VeEdJaZBihFFPAopwFvtGbmNZ987V7QVaYp09X4rC2QwKIqkfI2xFRnZpldCINfroQ77F71kBIUlnXo/zPxKQtfG3rKuLI+bVAP8rgtX1rGmM1z9zg3JHxVXkNih+EAK1D4kiPh+peMgEk4b0dJxbz+0Kg9zucCZiClsgy0ezt6Paz+FI6xQgaqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZouLTsYYSfcZfSPDC7OEIRsNu48NfmfB4a0ieqR9Uts=;
 b=DkSI/kxi2FWCGo02mOT0EG8ax6L8TuTyRlouxE9yWPxOYmGz9IkSdMJOpLzUtEELspBW+2GL9Pe9eZUfi4yHgxdofKHptwGHOj/Yhdza5M+0z7tzfzJb4UySizdN+mXztxiSqVHddt/DFZXwoM9EXaErAYH/3+ljYaNWPRqM9WL3yGVq5f2Dod6phWBV72CLXEJA6oi67sUxahtpzrFqozba5mSB6FqMkYF7N2lWll+xcv1ThYFoIZg0Yj9yOIpiH1P0FTH62J260S+b66B30erXXliC1Q5eQTBCMqlN68VmSQrWGodnN3FaUj1zSLFA3oDsQY8uBD5gogAQcvF6yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:35:35 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:35:35 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 07/10] ice: sync netdev
 filters after clearing VSI
Thread-Index: AQHZFTMFDNdOVsKLjECtD1ErCsgMi66RB6sw
Date: Fri, 6 Jan 2023 06:35:35 +0000
Message-ID: <BYAPR11MB33672AA1A9A0AD7CB99EA416FCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-8-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-8-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: f55f5e7b-69f9-4231-c615-08daefb037c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Oyk48kolD24TMCbAL/3200t4J86ozmDBvo8q0/tkZOx8itAShmseCelkdvAQT4f5XhWRxJJ9e7eXDgs00r/SFcTbVx4lK4tNcXiWMPVzGDTYPdmsrypwWSSWZ5Xti5a7nywWxkQruzObg8GrYta7xrHV2oKfDC21txgHlEpUhOCg2+0eW0IfZlPl1EetSNlm3QcbrpUc6C1liyuRCASfJwi79fEkt2EHAfkEA/U45HNnBA04qXcAbC+hx0DJOPhB6YjyZMq5+md5jJTu1SJ3A9EPNwFPz4Jf7ePj/BHHfTpW48BQLK4IvfWA6Fcf6IEnYDVMYWAWvbOdVXETwjI15GvM0EyRHVKLeI5rQVlI2y1adno+/JBBwsPxeoaKR0EanV73FaJVaP6zuv3XzEtvBLf8WTXXXD3EgWjhirs91Jkt0Q1fuLdLonIjJD2GuW1wfN87DJ3D34OULZ3j75NK+xjIu81GZk6jWCl5klhFf52g/ZSqaMRFTRTw8v0zv0D6SCMMHatqHU/kr7GpAamfMPT0be3bN8JgiFByVIby2/4yH8VwTMJHdFFITsH4VagIDItzhK11lEoguGPx5GU12PUnI85xPJ4zbFyjYHr9/7lrLl3q3Dg/BkQcLvWBQpy0dAuZHOVgs+cNYgPKhQhEwNWoR0cpys2QvSWj+Hy/CVwsGgXHh9EygmwXI/FTh6J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(478600001)(4326008)(316002)(4744005)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dySZQxuGAVxWC90qQt2CfcZOrXicfBpRDxAnDrhPiWKRCLbTLqcf5M0JA9H0?=
 =?us-ascii?Q?rg5OjV0TtZOjOMwF9lvcxR917JK9r/djBj2sRpXWSKEFjHKF4Uhr4HTgpZT+?=
 =?us-ascii?Q?piAep/wCfuWONtyrcgu3gjudWYFLPc0gucB03v0phv2y17pp63NtAmj6xlcA?=
 =?us-ascii?Q?qDZM2dBnL0w405BiasZlLn15yQaJuNc3fMYvmZcEjjWxDYkRwB3WW1rduOeO?=
 =?us-ascii?Q?M5a+2NF4cm7BD6gTFTz+18aTe7BTLEtqhsTwyYCfG/kUIG9YDJjxjMAh9uNf?=
 =?us-ascii?Q?bLzPwzmMk7oeQmfcuWfSotDmlBn2KI90MrRByVxfAdd3yC1Eyf5KatMJubv4?=
 =?us-ascii?Q?Ls8ZMMc6jNRmaLTAIoQEz8rLh5a9oiN1jNXa2pDg+R3ew489tg5bxHGVEWla?=
 =?us-ascii?Q?XLil5ma3KWnkWdYmhZjLlRJwndeEV7muSkzr3p2AocW8bR+qDQ1eKqNqp2+m?=
 =?us-ascii?Q?Dt4XyysmqG96FRSkZ+9OIxUP4dGTm9a6+ZFMsfkcSwxhvhWEr0OR7pD1i68M?=
 =?us-ascii?Q?wQBETaQv5Pndzns5mLQ0cIJRuBuAXxU7o1AjyV0vjgQOWR7Bt4JmNqDARwV+?=
 =?us-ascii?Q?Z10sMwiIxTBphvmHACmQ2cjknWwdjXhCETzSJNQSEvdJ3TIYmuAAQcMms4la?=
 =?us-ascii?Q?c7MGYRYiH75wCMvbzVGfnWKfkOxA8IRHF5Dr3z3Dokl0zNF4EDYOvcBX1xk+?=
 =?us-ascii?Q?TPOW+lF4faCm905BkkkE5VH3Qbud2rJxctlF1XjUubmZpBXMPFrGwV0vLNys?=
 =?us-ascii?Q?aGxE1XS6nDn5Ki39j+QD+gnp/a/KiyZYpPk4mpOWt4hZCf+p06XDsQD49pxh?=
 =?us-ascii?Q?8VDOjnyRx6ebLo+vvK+s7cojg6ApDyWvLLu0NMuJ1RT7GjnGB1wxJyEHpKv9?=
 =?us-ascii?Q?v8/wX0m9CYo8OgFjupqCKzqIggPsNigsgcBEON6IrYAb//6Yy6PN9TsbtVQf?=
 =?us-ascii?Q?O5d28quw9wRPyV824pPudaVUNVTv1PrQ7zE26grhnRk+vsVCDG1Jo8uqZHvY?=
 =?us-ascii?Q?vElOh/FRuzsFIdkqVbfRqDAIvKYgMiDKscDe6kqmKKTi7bRBjX974/iy2LJi?=
 =?us-ascii?Q?4gRk4+vSu7y8bbQw+5B+emjOxXVufg++W/kxXlg1lKS34ZMKPnMOLucV7Xtd?=
 =?us-ascii?Q?VVorRHkSWHic4ST4OhD2ebi2AHa9OAQkWqWLs01Vl1GQVgmJGIUeQzCFhvHZ?=
 =?us-ascii?Q?/HmmSZZsbyqlVPRMT1yMFV0OkQbtuXdRisE50gRudz+mBnbhKu7Ly+JT9IZj?=
 =?us-ascii?Q?T11x+6YwLevs6PbBekDaae045h+hUtXHaK24c9X95BtSdhv2bbkcKcx5UDFa?=
 =?us-ascii?Q?Yxsda4sntIhj/jcE1bTe9ZkxPAUEBj5G2wz4BAsZ5U/O/yuTVIo94Nl4BSsK?=
 =?us-ascii?Q?Ik7Gu3ARywpQRR1LQZ7Gl/KIUPPAoPolZaM1WBo6URMxksfvSLK51oM6+8Yt?=
 =?us-ascii?Q?Ft/agldzQanohWrt5hd9DjTfJlW5AUN7CuSBEIOeFUT2HM6Njxk+U4hga4nk?=
 =?us-ascii?Q?PRSoW3jFv9yK9mAoDnhh1f05IYNaxRiBa8T/MkE+KDirg+kg4C+fUmwwmkhZ?=
 =?us-ascii?Q?tBJsUoQxhALSyTO8+iSRXY+JhRYOZyX1Z+79jyYh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f55f5e7b-69f9-4231-c615-08daefb037c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:35:35.4802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CqfCGDn3CQhQw9HOf2F5zOSyuoUAPIiaiRkvUQwSpLaHA6Et1/aeBw1R3s2bzf2tcB8gufK6xkGn9BrMSrJFrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986941; x=1704522941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=udQtuiEzDd/h06jxM0LrB8EWWYOSrH6JCBTyHe+Hyp4=;
 b=ZdI6USPISsuieFVA4bRuvayZ4gyFvvx58hxQhF35T5o7qgTnYK9r1ZFP
 oUw20GFm8/isVHAMu+e1FxGabDSIZ7y2RSjzesYw4+gKM/hypR6uxBAUK
 RPXPlObiVnAfJTru4LgwU+GHWYXOSG5Vbrg82to135dJ78T1JOWa5MZzq
 JG3KpyfPlZrc8l26rVsF4kKR3FVTpqfsFy9CA/intFjoWTsOsDBCawO2q
 JjzxEjvABPVpDkDP8RL+xjksQ09GWxDujc/fBMttTZtHB5SQigGBkUOG4
 JoqfnluvFNMkl4wlHMRH6vIh8G5RN80LjmxYm5XY7uJy1DV90n2ZfPBT2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZdI6USPI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 07/10] ice: sync netdev
 filters after clearing VSI
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 07/10] ice: sync netdev filters
> after clearing VSI
> 
> In driver reload path the netdev isn't removed, but VSI is. Remove filters on
> netdev right after removing them on VSI.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
