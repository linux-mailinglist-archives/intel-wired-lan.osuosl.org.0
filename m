Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4F1624BCC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 21:30:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E204B417BC;
	Thu, 10 Nov 2022 20:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E204B417BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668112212;
	bh=Xoxujz2KsLj3t5aHfzzxzppLyFgeJCzPRIEQwKiobvs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qEvN+75OaM+k3TBzToxAaxU/22MX+VN8CiwaOB8EEUwvjZ2vPo+tlIkyRp7a8xriW
	 VVVL60C0QGD4Pz8phFl4gmiKYveplbnaIG5AjpD49uY/fCC/6aAbdRfd3sK0SpxKAZ
	 kP08MkMY3Zcc+64frBXoubbEyQiZm1flwl5vNtfsRnUZB6iAY5SVPxxBzkTI9jHLkH
	 x4QOzR8D4SScg6nIm0FAJ3BXjxUbDiqQ3SYCM6mvZgHzKROAI6uAo6PqWD/jW6V9tO
	 Wbogxq16rITalhhGrDLRLhplze7szi/05zBeiwFXuHUqtav14EL9CXRrkI24fKm9P8
	 gDeGxfJ4QlvEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmjJ94NSLsFr; Thu, 10 Nov 2022 20:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0F8404CA;
	Thu, 10 Nov 2022 20:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD0F8404CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC81E1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A277381291
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A277381291
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYEgVNWu4ljC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 20:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABA3D81259
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABA3D81259
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:30:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="375689392"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="375689392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 12:30:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="615247010"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="615247010"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 10 Nov 2022 12:30:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 12:30:03 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 12:30:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 12:30:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 12:30:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KILmIEeSZlOWZCKlN7MhiJJ7D5TXPsLH/594xyAh72z+0oKqJJSgHNwt2AnBgYZKrkiwnHhg2qJzH3bOosoSo3wkqHPxm6A67oI6Qd/7EuOioGbzqzL+jDY83zIH5EL0pTFKjWvMUY9afUZZSQvAM6+r3728OB4i0cXeyniB/sC9YEhGaj/KQS/vhIU048jXZFUUEQZ0Rur3eDYVuGscO96TlnpGH6rhDrB9p15LRjvhso149HBtVKhR3O3pyM34FHIZfkm6Mk8jCZafyZKQaagObAoiWagniShCT22La02QE2A24xofyiq1hBGpVm0jmdwMCmnD1ApWQXq3XKPUug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+xY+yue+bxWyPhb+ZIGGTXpMa0KsEEuwN2SrxmNqmgc=;
 b=aq2l9sd+GGOVinOOKdI/syI/3xZAkCVTEJ+FPis22PmRkflRTIwkajLrZl9gfpNaz/uGFBYXjq84GOK3iVSNBv94P5w9y5SEvTa7ZlH6tX/a110WSQrGyyJ37UA6GEca6LoD5XjkLvAQHk7rNtjC9TmNmc8BLRclvroNrHCDrhBID2EESm3IExAztEQmVW4GPS+X4cy/7VCOQ0FhQz5Q+71gX8IyzcmPvPnFah8eobrvr869Vo7HciKkQaAxn9WSrpr42nKUiHslcoX3EscR7bLh6fl6+H71pk3TuaX1237aWJPLlBSJ8fAbcNzCevG6HOg1NiLn6ft3RKc/pr9vGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CH0PR11MB5251.namprd11.prod.outlook.com (2603:10b6:610:e2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.27; Thu, 10 Nov 2022 20:30:00 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a%8]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 20:30:00 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix configuring
 VIRTCHNL_OP_CONFIG_VSI_QUEUES with unbalanced queues
Thread-Index: AQHY8sOZhpAVDEQO5EqENvWZoGl4Z644oMHA
Date: Thu, 10 Nov 2022 20:30:00 +0000
Message-ID: <DM8PR11MB562143DFB030EEF34C5C658AAB019@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221107161038.7097-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20221107161038.7097-1-marcin.szycik@linux.intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|CH0PR11MB5251:EE_
x-ms-office365-filtering-correlation-id: d966e449-e5e3-4fa5-ea0f-08dac35a5744
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CATVH+J4UY+RwX4zhQ/GVRymNFLUvq1ctZb1chps3b5WcN/oIS11rW1pPBAUlaGUKJ8rLIAZTtLv0eJfMMErcKWck2Zh1QEEpSdwzhVeAb0wuW+GaDBJNgly5yI2i2BNwACSat5/hCuGKkewy19IthSrKIb2RA90RxvbUfr0jJOiiPPlTA15rAWE6r3CThsqbLFv9GS99sJByaLKs65lJf7gyrisf6Q0tnyCxjSlqYL/Z1pDWJrdsrS+x/u4qNGmSAr1YZ8HhFbtIk4K35u2KgaU6cYNzuWbUhd+RZItg3XZoyLWwcdYT7GbTtXgURd3iSuN91+xBobHVbQUNDBQhNI5HVvZsXFK0x6q59WnLao2dldHg4/sO0/whPOO7zcsvJEdV2sWu4jeyj8fDqBsfyrK5f/V75CSXvMSr9QRE/OgY2uvPGmgk6tP81PR8ZnQx2UX+nOLdxvWdVulDXS5e3AtmVhWJtZT1ziod7P+bsO7LGATlxPashKbpYETiR/OvHx7Drr3s4cfEjNI7ExIhEGrarRmm7+0tzvwZH2/+d2S3vEJEzS5jJjNvW7afO237Ct10SJoeT+gZGZQU6EvpbAojmlyVT4eN2/OpoD4fCQuZVig59BQEXDtTLTjS+Vif2tVinsAJF8SKuV8hI8sAJmXjT4CGlFq+5s71zws3f+hvmS/xeCiwWPwj6XP/CX5uoWhTTHkVSo64i+nLkV/Ei1iLPcEU2vNTCAsjDvgk4XIr9NIvOSjshEeVgoLK4rTgfy3+Irewm+XSwCpFASCow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199015)(83380400001)(186003)(110136005)(66556008)(316002)(66446008)(64756008)(41300700001)(66476007)(8676002)(4326008)(66946007)(38070700005)(76116006)(8936002)(122000001)(55016003)(33656002)(38100700002)(82960400001)(52536014)(5660300002)(2906002)(26005)(86362001)(53546011)(6506007)(478600001)(71200400001)(9686003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x/QDYbpZEQkrMpKfcEAf7RKxEqwpCvcQ4ns9ISgKn8Uh2yDFsUM1BS2IiwHt?=
 =?us-ascii?Q?ulfajwOeByKvzOQFlRgKeBCcXmJuuZpebrHEh0NYyMnh9Um1fuv3At7N7iDL?=
 =?us-ascii?Q?zjhho7I27SKVxXtr4tPpPMtHib3zY6SdMP9PiA88enuiqiVJOtDAdBWd1ua/?=
 =?us-ascii?Q?VsuT7CyF8FDo8ZtENWrCMhxEdIZyUl66oT/4SH5LCCrawDSKrtFvd1M6q0SV?=
 =?us-ascii?Q?YyOEQHh91J4Yy3Ht0CYhtr3FJgAL40KSL7UhvfFlJHPnoJNGst2wggNAVnCs?=
 =?us-ascii?Q?Rqg6HKmOQdRb1QeZg4+A6ljtK0Xf2zcemK1fLIfsiZmz3yvrYG97dxwzHByq?=
 =?us-ascii?Q?TQstCwSyeyVk7qwjoaFSswyCd9fV3WUjtnRgven7OB3AN5VSbPd7Zt5K+7te?=
 =?us-ascii?Q?4VduuYWO/bMs4g3XUUmwE1u8m2ErBz4FWjiQaH5/TfhDmcL5GsT0nftddFqh?=
 =?us-ascii?Q?OYQPWX1PDo7qyJEPuXQ3ZXuhCNGgiv0gFiABwdWGjdU+uQ4RBIoCWRfcQDMS?=
 =?us-ascii?Q?SBUjTALmDrDdmjkTZuZqHqn8CdQjcezEjiU4K+QwvI9cskCZegsJH16jHEVz?=
 =?us-ascii?Q?9bVB9Qsw7XJ2NfWCTLZblZSzaayDeALioYBY2DuZSfsaidXh9HDkSOyqAOg8?=
 =?us-ascii?Q?fCkvggYm9vMigHi50RZcPDbkFGNtzZyDHx0D9+Oa9tsESjZ0n6UKF7i8PcVY?=
 =?us-ascii?Q?nNGqnf7e0RSxJRUlMKHDberJjmgDzme12/1mKTEe2vjYivqiQT11jyjF1AnV?=
 =?us-ascii?Q?ihDe1i+U3qDvNYpWBGA0Ji2WYm9G0e4CMjb3NxY6vqutBG/r2Xxi45Ij6Upp?=
 =?us-ascii?Q?EA28DEbtHne5sNq73fK1dXO5jy/KWaEnZ8AElt7n3wLjMt9yCLxbZDcsDUQF?=
 =?us-ascii?Q?FYTBJ/YkapP5JqXbi6ZlxZeJXL7oy+bU5HCS/OP+QRufYNLZIte6LcbIpF/u?=
 =?us-ascii?Q?d7qfdIztJG1UEmY5ESh++/tRDbDh3Myb3yrHTJsVPI+D1AhMkffrfcLw07CB?=
 =?us-ascii?Q?D6bngIc+M5+eZJw+B/503/gGek1ooIoLYWbcIZK2Y6xnVykfOXxutvgD99A0?=
 =?us-ascii?Q?KeQioWz+qlPDnFbXeg6LbRCxQ7Zmn9L71uYjcOmo8k4p+u/YfRY2cfxoCfqj?=
 =?us-ascii?Q?XeuRJatodI8rPKaz3gR2BSHj3MI629PZsjABNXY+kKhqlTP/WC52hxyG3Iji?=
 =?us-ascii?Q?f7tX1fVsSW7a4iWnKR8d+7DQlSV5anHgZZegN041/548xSB1CXY0TWritKvA?=
 =?us-ascii?Q?qZfAf6sgWFxk7/Sr8oi2X+BRImkKHRrG13NxMT90GQYWrZ4eI62V/La2gbxT?=
 =?us-ascii?Q?Lxv4fHXf+g7eI6XqyyCpWOO7Fs08yby4yRN6OhHYEle8sXTERSeJtRuYYCXW?=
 =?us-ascii?Q?g0y0Qw7BOYEpuY+C47NQc46oKceBDaaY537GF446ZDOWam2g2xqIMny1nBaI?=
 =?us-ascii?Q?CkciREUxMseeHt6gDa8MJ3/VY6pXpfS5H8wGFXj8j9T0Jk3rjB3Hxb4Eqco8?=
 =?us-ascii?Q?Kft7cq/fK9F0Dp2rPri83/ZhekNTM7a7+Hg5WxjjT/TCociymzGKliRFmv7s?=
 =?us-ascii?Q?EUAFsqvODbQYsDZOrsF1vCnp2qfUwlupbOdRfPIfyctxnKarFuvhuUTIbStw?=
 =?us-ascii?Q?2w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d966e449-e5e3-4fa5-ea0f-08dac35a5744
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2022 20:30:00.4797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 82KZ16vTbjtHqcUjig0vxe++1XaVBy0kbZEyc9Q0SGeWMGo+kQN2/Tyf56c7Yaj7Ta/ksXJFWa+gh+cFdIl0VkdbmJ+ru9zrTFMedxEQ2sU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668112204; x=1699648204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6yLDnmtgQb2t3vyZ7i3MAThDoOTh/E4x/BmIoAbtDjs=;
 b=L3dzozKV8zTHZWr5rNIF3SQ+U4cGf4cx0+ee+PrfpWrLkDddjb96RGem
 jD6iqBQZCdNeFxhnk8OU9XqDNVoaeU4CwqLTztcJokAkgWsEeFYNshlo4
 zkw7LEVeZi6irhXvuYCsgMvF/KxvynLlpWURkmdG+43vu+8AfjNXn4YQl
 49HWhTOdo7iaOgR549yfco3i+hVyCZN+1cH2WHCn9GHeezEigIIk4KYQ6
 7EzHY6QaBURtyjSOdfWB4jhzvOuZIjk43TDl+e55yqRIxSJps+PuYtSfT
 duLZTIr1T9c3QjRjO4Ak/plonazRigrLk/O7y5vp48LyPjWv2g/3wBpYM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3dzozKV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix configuring
 VIRTCHNL_OP_CONFIG_VSI_QUEUES with unbalanced queues
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
Cc: "maxime.coquelin@redhat.com" <maxime.coquelin@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Marcin
> Szycik
> Sent: Monday, November 7, 2022 5:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: maxime.coquelin@redhat.com
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix configuring
> VIRTCHNL_OP_CONFIG_VSI_QUEUES with unbalanced queues
> 
> Currently the VIRTCHNL_OP_CONFIG_VSI_QUEUES command may fail if there
> are less RX queues than TX queues requested.
> 
> To fix it, only configure RXDID if RX queue exists.
> 
> Fixes: e753df8fbca5 ("ice: Add support Flex RXD")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 37 +++++++++----------
>  1 file changed, 17 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index c1fa94381f4e..d27ddce5d1c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1621,9 +1621,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
