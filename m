Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2D7DB3C1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 08:00:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C11C283CAC;
	Mon, 30 Oct 2023 07:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C11C283CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698649214;
	bh=CFRZhoWXDYx3lQnqi7N5hYFH4cAeKikVAVZITadQ8Do=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8AtuAWTtPggNZsEtZFqGIBTlVVMwlPPwUcNlBRF6YAv13CllQOWZ7qGm2hfJep7Oc
	 PdBKkX6IzizX+Xp9VumfYZp3Bp0+ZxwbUVbg9YZCB8JvSHuthG4TOoPY0QUQRgk6x4
	 r4rNL4b3hKk/A/mQKA3ucum7MJuoXdjSjjb4KKj74IZqI5zflYmC6bg5VRBWoj1O5r
	 2cETf216bdtJyGg1F8O/29kS8/sxwcBsn7xus9ZeavvFrHo4S6MOm5LDq2BsFFBZCJ
	 v8/+KhKzIFJgolElmEC3EenyeRe8wk77zVVCbu/TcEFk4kSkwWSC/dxm0OzvJ2YNNW
	 bGsWwvIx3B8OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WlymglammtpK; Mon, 30 Oct 2023 07:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 879BC81404;
	Mon, 30 Oct 2023 07:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 879BC81404
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7611BF954
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13B9670AA0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13B9670AA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYzHS4O2Asle for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 07:00:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B9B970AA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B9B970AA3
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="419132349"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="419132349"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 00:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="1091535589"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="1091535589"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 00:00:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 00:00:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 00:00:05 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 00:00:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLETjnJR2BvKzqqBruqC6TPZpE22Cs0S+Vnh7WoKKbhJiRwtchuuwY3l6VEf916gg/CzqGQ4F5YQJgA/YUEwuZt21sEbIoSJpgz2J6uOcvC1W57zEv1eKF01hTUDI4h5vE51PBM7xE0KwQsgl/NkKP/jbNvp2Yj6tNgRSh9vZW3ikdD+XT5epPsgxEKCe+yCU0/iiUZokcfbl32Ub3pOC4CjVQbD1j1FKQY8BEkb+ZLz/pN/8tEpKFl/tUsXPNfNo+eQbfWFPu0rc29Y4EaElSIMQa3Yi6e1xzjTDbLCNi63yo4t7fIKWYjjNkiki5Nzu+T/AH459yxR9b1iLU0omA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUAvZZvx6aJ9NbpIQPvzItwl/rH8zYEEfD6IBE7JCaU=;
 b=LB0PuC1q7S/RrTqPJqICGJBb/QE/HNbRMsXKtDdm8sYuQy7n0XznSteXCDLOXgXqV996Mnoz9jPfESUONkGruzRUF81T0CiOvMkvZAo2eaefJaTclAEZF/8Ohdmq0n+4f+C80A7dKp+bMWQiT3FGM5dW2/3tIjlLvxCLXr0ydKRDRw7jAyTTU4gXxjJZ9e8bzOPU3pzGQQ9k8fZwAIZe/Xd+/P6KKxPBYypxEdNt9w/OuFAZYYAQ5uGSWAGmh8A9B1jTdIgTe9hloscmrKG73mcij/i6GKCrvrt+wurHfRbcBQB45LWSv/sSGJwnSHopUtoGnul8sEjR/+tao1RozA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Mon, 30 Oct
 2023 07:00:02 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Mon, 30 Oct 2023
 07:00:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Delete unused
 i40e_mac_info fields
Thread-Index: AQHaB1JrXltoG8XcZEOpdN8gkzD+tLBh7dlw
Date: Mon, 30 Oct 2023 07:00:01 +0000
Message-ID: <BL0PR11MB31229E718986D5F0F7C7098CBDA1A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231025144838.1827302-1-ivecera@redhat.com>
In-Reply-To: <20231025144838.1827302-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM6PR11MB4676:EE_
x-ms-office365-filtering-correlation-id: 5bef2ef7-e95d-468a-2456-08dbd915d661
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yPtkoKOjGgHKneyJg50stc79QUBPT7QJzGFKPpsLJ7Hqijz3ftJoFKU8pVlxJxt0kcPm84HQrTHQZ6hIM+zTpTgBltJoxcTomZ4V8YbRxBURQBecjD8L06QekJVaOrGn6/KZxZXjWizpSsJCP26eLOvLCNCZY9kz38lpn4zm5lcgn7qoJz+pJNPSarYvI6ZAkMqqm325BKRa/yjTglFBsub0J5jpPuViH3bfvp9/6T0W+4cxNjOng2aEKsk51wGeP3o+ANKZCCswXCIYrYQJl1MfRsD13ZCHqYk9KcurrJdMNioyHX2ZtyfqgxgSg7kU8YEA4PVl1aLUv/aKggwOFT5LqOWnnujnCHacqRlrZ37vIb3aLUiNuDbfgrW83FMHQcBaFKKoaUyXqEjiW3S26uryB91pncAR1YZvDIQi2nJOoNRWjO67d2jc2uOqmSW3MlvA2O5GF0A+ba0w4bBbRkKvOy5/tOoZ7lH8DRq0GwsLMqo4wwzBIp7Ui++V1UY9PyMKd4kFqecjI68qrNJ2oF0D7yIvWQyGg22UwsNLxZGzXx9jT7fNQw3bmz9ylTdFIsqvsEOBz0M/ZtaQvxLvBkckbXLLLQZyzROXEkHnzJM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(316002)(26005)(66556008)(66476007)(71200400001)(110136005)(66446008)(54906003)(66946007)(64756008)(53546011)(6506007)(7696005)(76116006)(9686003)(4326008)(8936002)(8676002)(5660300002)(52536014)(41300700001)(33656002)(2906002)(38070700009)(122000001)(86362001)(82960400001)(83380400001)(38100700002)(478600001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2/sWxQwdIIBCk+W0fRH2zrTLYeGokGwIipaK2FPYqy4OXvKj/ziSHxphdhdL?=
 =?us-ascii?Q?PStPUpW8/Z4lnawKNPrSeioTxHekKGFTYQB493di0RiQMXd4qPL1IGRYuJkp?=
 =?us-ascii?Q?V0ffQWXq6tW/DV8RS0LxvU77GVdO+b/DjYUYx+SI+NU+txyo2jJQbyLEk+2G?=
 =?us-ascii?Q?qOGlqUXkyiK6NpJFNcb3rhrdQznXMhZ3foaSweJId0sMzP3P8pSFdhYT9zPI?=
 =?us-ascii?Q?B7yvgdG3l+A7NQah7P+3eqnG/f4l1ADQYMzmhqlAPUH/fldusP2ppNAYGUhm?=
 =?us-ascii?Q?sm+7KlIeX+tCufKuCqcMeg7KpHD+mLsg7YLqwIbpPWj6MeIvAN0vTZi7y3/T?=
 =?us-ascii?Q?BIFsIcj3QxMS76S4TxRU7Y8L1job/5CPnItKhopKMbXA8B0ABD7CbYIpcdFm?=
 =?us-ascii?Q?4rGo/64DEwcKfy5E8hqgP8FUkY1yr7KGriy6zheCBOI/rRzDW20oxILgBhAr?=
 =?us-ascii?Q?EmQWz6DqQALCzboIwRXsQmtxzIiB6EBiJSOo7Y+KoLUW/e81HAS5dsH9cwyg?=
 =?us-ascii?Q?LBbux/+yhJujUP4Ev9PyCxSE4EIq5iXgEGZspF4z/BfTe9Yp2bQgtsoqdUNY?=
 =?us-ascii?Q?dUva8Z1XzcMYvOAvSvEIMuLbk/PF/QSphHPIi3Ww1E6Cw3i9Yo3ad+5QUlkk?=
 =?us-ascii?Q?OyWSy8S/dfKeZDqo1jZmwPSwZt+Bbc7MKi+OxIsH5tialss+GyVqfp21wxW5?=
 =?us-ascii?Q?FDciKjKpfII+LisQNYEk3IH6kUgOD6C29oDGayoYdXavU70b4wREYQag6sFt?=
 =?us-ascii?Q?R3JVQbL0ckOf249XwFyWYWfUk65IcDYZCbMX1AHnCp5a/HbTlhM6ciPN8hxE?=
 =?us-ascii?Q?/pncCHTMcgGPYY1jXYIC1hk4lBdvFVaDseG/GOosVfrHH5ZPwT4dkglREYcJ?=
 =?us-ascii?Q?JGmWSk43EeQr2uzLRkbXiEF8g92dYe09KBK/HlxXcqAjG/RtO6ZpS3Wu9eXw?=
 =?us-ascii?Q?I22zd6kjMjMo9GBM/5PlL/UcmKCFR20ddePos09eJvCYOJWxtWF9QQacSIj6?=
 =?us-ascii?Q?Mmmz5Wf/L+FOj++o0Cymfhr2xtVJ4B07xpiwpsqiomle4bZ9i1QiT4pinPTX?=
 =?us-ascii?Q?rPep5fMk2a58bU0RontkQvUCfvMU9PORWeYEYt8MHxwBry9GNkQsFDIYJ3YM?=
 =?us-ascii?Q?4bDiR6idg72Ib0PsHrCc8sJYnq9Y26aHazXjqIJ0X9nPtXh7IsiQ7RziSDzk?=
 =?us-ascii?Q?HXNIokkcE03/HEorSG6Jh3mxKwlP7sKEY3KLBMjw0zS6sgWxk/hJJPeIajiC?=
 =?us-ascii?Q?FqdB+Vkb4hNkPMkPnLfyN7cTO547I3nX16PsiU88XgYb4OMeX7icH3gPLJ+U?=
 =?us-ascii?Q?KbxACaCK4ZGsDKfrYEjTdVGeOGo9dmYfxKJGZxGoNso0sqU37zk+9XYATucl?=
 =?us-ascii?Q?5c13E+q1Cz0Xl6QmMdUTTbfKYIaRVTLksrQZA6OwYEY3ASTid+aIVdXKJfDT?=
 =?us-ascii?Q?ktqNrapCpn/CHwEdJbYNrxD6ceP5ylAttXcsA2askI7+iUl7lE9+BRpZqyNm?=
 =?us-ascii?Q?EqqqbYEhcp2iOtY9d9tNc4br8TIA9rPQXB9WXL7KzjvXkh3Gzw5Lhx8WbU1T?=
 =?us-ascii?Q?cNPV/9AlWCrz6GhWxB2MG5EUOQlLdHm8JL0eIJMyHojyusII89MvK1CLn4S6?=
 =?us-ascii?Q?MA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bef2ef7-e95d-468a-2456-08dbd915d661
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 07:00:01.6700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4hY2v+BCSoO/YqNbgrkj235ZjMgRYCUHY/BfPFTUQ0AxsBuavNRCdDu2iUxEWFLShJR8nV6WI1twD3WKqnj8go30YOI3cPf2RNidpNlbHKl6qVAje/5NQBEyFIunUHso
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698649208; x=1730185208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bMqFOOvotAUihvkOr52w1Zh5wtT4EUnBvDMoH5spaUI=;
 b=MyQF4TeJAfgh91DkXPlg7JJRbG4ZSmnT+teMaSA5tGgabvyPEnVDu1c9
 DdFhXvZXCd/69Sn0qBTgoHYbCzRweIl40iTd2eqjvuN5qollr06qwDtfp
 30wauhkd+Ak0EqPavkc3xK06WM+sl17+e8XBLAwH6uRrIZFzeKhm0nk8f
 SzgVPO5EMTO3Ei5HhWuhi5bpnNi/6tL+0roDfExAKLt6fR5uHpatsMKJt
 Yy3jGHJcATP+hlmWPlE+aEfEZN8bAWIhB0EDdHg7GiRMn7DL3JJT99qJi
 PnkHCev7RXFaKw/i1vu+pNHKabuEZ80GpaNyIupce+3FYCdJdcnoKorpX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MyQF4TeJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Delete unused
 i40e_mac_info fields
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Wednesday, October 25, 2023 8:19 PM
> To: netdev@vger.kernel.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Delete unused i40e_mac_info fields
>
> From commit 9eed69a9147c ("i40e: Drop FCoE code from core driver files")
> the field i40e_mac_info.san_addr is unused (never filled).
> The field i40e_mac_info.max_fcoeq is unused from the beginning.
> Remove both.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c  | 5 +----
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +--
>  drivers/net/ethernet/intel/i40e/i40e_type.h    | 2 --
>  3 files changed, 2 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
