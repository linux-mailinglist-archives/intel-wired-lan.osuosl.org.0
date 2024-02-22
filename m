Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4450985F5F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 11:45:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D080C8211E;
	Thu, 22 Feb 2024 10:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIHZQb8Fi_Wx; Thu, 22 Feb 2024 10:45:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FF45823E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708598754;
	bh=OtP89FP2VtAdKgj26HGo9VeKA/QIjS8XN6RH8DaECrM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0D/hnV1MWLflwyT6V+Vt35DLoYXAgQRkaJNHXbrdDTaoBB++Qwgx1vPaDN68bny/8
	 Ohs+Sc8NBClpFuZ6f+PYAqGVLB5zrGCkXDB0QRGf04G+yUUYsKebK8zTNQ+ctT5SBq
	 cWMN0dora1vwH+fIdN3bn8cUvtY7JkzewaL+lBHntZDv+3vHRn/fcRCRzf92M6Tbq4
	 Ya0gF0vxiNXmOicfMMEpJveOJ4xQ2gawZv2RbayTWJlqHwFzx+qxt100Exet45WbNY
	 AT9KULTY3dDsHgUcVl2vqnwkDAXfjV1EqaMcA6Ml+ClP79zhunM67E3scl5+j8TDN8
	 Cz5iEiqsev2gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FF45823E8;
	Thu, 22 Feb 2024 10:45:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E091D1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBDA44187D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_mH2EUrYKfW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 10:45:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0F054031D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0F054031D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0F054031D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:45:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="14231786"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="14231786"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 02:45:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="936832333"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="936832333"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 02:45:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 02:45:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 02:45:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 02:45:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaXEIEUvfzVqxRS5LIZzHSCHOShlvdcNZe+UkFFOkSRpTkrdti+fQz2l2kjJ8YzwdIs/oVNhQ+yUJf6F7m+WG8PEr1Kh5vT54YXFSi4Y34XK9pD0tKAhXSVgqG4GZRZ6tbLgGDPPDJ9T0x9wWx2TnzKF6XytyulWNLsLkleCV+dqd868eCJPWTGyCDyzEMTJhYj5V7+ndleMyKbYLiCQB9NIdn+fm56OoxAJs75r9LnfpACpT957FoEUHxtVRKEXaI6PqML8KUwDn51vej6siBn6SjOFT8QFuScYDKqwfbfjMr5zoSnd5tqQT1SIUnoymLtbDnC+BLJb2/nbuOfykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtP89FP2VtAdKgj26HGo9VeKA/QIjS8XN6RH8DaECrM=;
 b=PfrtNP7sdDdo9Nm2bMF7UDn0IkZ4yPrvqjLROsh4nxPBU4d52DTDKZ1lwIzb8ytDRUuaNFZc6JgxsUat3T9l0jgKdcsxfmVqSgc4cOtOEDDkxlCL8hsvv99Fleag4E2K5Rs4VKrgAyWaoymvtBc3/yACva/KeveuAzkXTuVa8NuqHjDvapIhNjb5e9Uq2Tkj2l/uZVgzGD0D3dqM02fpF4Ypd6jrarwvl1ypX3sFCsQes8WifKvaS1Vkb6HKLlqptpxO2Z9P07s9ECXRay2ZVcSa/gfbvTdgvCPyldqU10ncyzjZDzbNkKt0qfRyobxRiVctmfSJJEmt3AJm/ukovA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5808.namprd11.prod.outlook.com (2603:10b6:510:129::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 10:45:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::d4ca:a743:64d:6324]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::d4ca:a743:64d:6324%4]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 10:45:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/1] igb: extend PTP timestamp
 adjustments to i211
Thread-Index: AQHaXnX7LHUJjwhdN0+PA/6ztTiNULEWO1Fg
Date: Thu, 22 Feb 2024 10:45:42 +0000
Message-ID: <CYYPR11MB8429AA8901034899AA2681B7BD562@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240213115410.415573-1-o.rempel@pengutronix.de>
In-Reply-To: <20240213115410.415573-1-o.rempel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5808:EE_
x-ms-office365-filtering-correlation-id: c4f0b9fd-910c-4b93-2e23-08dc33936aca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3vNbNe0blhDciuODPPD6ScMLW0HHLK7xHw+GXkusyJs/x7SVW3XSzKZxf1YRPTBzGCMy4Q06XNe7jZAi8Y5x39EnljRnXUfZwqHprmjlY12VuS7NMQiNKa4v2UqtDtH2zULDbtH0lXj3CzIU5sxJYEYlhmAFTx/7pRVvk2jVuIDzg1Y5HLC9aqWEdQerfpoewucW0vKdrhgAc0j7dzHQnxSrJvha8gI7f/uxOatAN7r+WHC/qnOXC/AMWWZL6Y9a7t0JIVmTtAvnq/yk3l9KdMW5l/0rXTbo0dw4sss6NKVuluZJrw+/3Lpas0eSbOZhft+J+ANWa8fgy1V/QKYxLNwW3MSAh8PRjckjE1uCII0EVFjSWZ0q60Yy5650yC3+g14ZH1rfCUz3THcBw7elezZ8sTo2RBnpERNAh/eOhv6I8MCyYsCI93WnI0flv8PLS076d8EBGBYgLCSuyKOoXzOgapUTeTP/JZ3qLtY892xH4+J+KVSe+QZO12hVE+5zN7sj4vlZT8gTEjIU4dxh3We38nv0p6SOs3bDt8wZAH5eDFaq5cn0mCcj8pvSRWEunK70ok47JWpadjvPJAVETAkFhFolU4c5r2CAOkBxQzdgVT/XHezKp8YX9gJxElVT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009)(921011); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0sGGgnEENX0PKvfh3sVztLlkxOk3rdX5UpJpVr0cFsOI+mrwAav6l+97f0aB?=
 =?us-ascii?Q?djhpu6Y6ErkInNoSSeoydzVjYqEsw6TOJ1o4ozw9M2naDFr9nTMCxOPNi7C2?=
 =?us-ascii?Q?6afVo0Tmtfv0533yugs/3gPb7kKC/Y3UBsIWT2pdWbnEfLksJHUEXIlQHr1W?=
 =?us-ascii?Q?hMEZ1NzRdSBKWyD50QTqhby92YfgxrqG6LvakmqnxO2rnSXgLTUsd389miQO?=
 =?us-ascii?Q?FUunQb9YtMRb3S+Cjb7a52T6QFkxzSqp0H/r/UVe7ffuqfRj15K9e1sEE+cd?=
 =?us-ascii?Q?yntCvcvGPgtwEnfaE/O9UG7s5RnlywB+r2kU7G2lTXyijPKgVxMmS1D2pf7B?=
 =?us-ascii?Q?kHWGpBTsSOw1Ji8g13tEIflqYtzi8VducMIqqkaHBP6UbpvlcQYyhx48ps8k?=
 =?us-ascii?Q?mVqwaf77qamKegbT8xT7bWK5q0YY6J8/G3rvAuGmMVJI/XbUZMvPznSp2yl1?=
 =?us-ascii?Q?Htt5xD90D/PmujBclVeZW46U5TrNMEgd9EyR3Y74TyRFUXQsmf6V2DxrvrF2?=
 =?us-ascii?Q?ZRjKeOtILPQA0aUT83tjPmONbd8U3+fVoorEWJrN3eiy8JgArbR04PlK01Zh?=
 =?us-ascii?Q?bUC3jafrM1kFqAHf1rbNYZeni4mc8/OUW4n77DSkGEu+Uvok132bGfdpoK8b?=
 =?us-ascii?Q?OETsK9/bRwzHz8hlB5ac41MbBENuraZwD7i5gEaOjcyYxqu9nfNIPnY+44iw?=
 =?us-ascii?Q?/v3oiW/ZBMnDGYzQ2UFsJzPDvnxj3hhW0lEkGdOdpYBvtkCJSLP97TAQT3Kq?=
 =?us-ascii?Q?OadojG2ctVZrifwLj3kppz0SuLuyvovOkAEm4bQfyYVQfc5J8AX1YRe7ksP7?=
 =?us-ascii?Q?v/iw4EVNI1i3ExxmPgxdFBQ8AnTJJKScMdjyzH/d8TrHln6Xxz4WLXm16/Fk?=
 =?us-ascii?Q?n9qdtQX76w3uIRvUAoBhYjK+0Vn6l6TKMlOHZZnIFtYsh8+l+oGhBgo/49+0?=
 =?us-ascii?Q?0uyzi3Y0euY1zBhG8wfNV+vjb0F9ZBkFHsUN8RO0AyxlbH7Zk9ZXGpE/khnp?=
 =?us-ascii?Q?prcKaxb3lniuxpSwfjdLbwNwkAyuG2lbUz9Z/jwzKVgCWJ6rnfCseNUa+TGS?=
 =?us-ascii?Q?kXSnmqNpkgES+hJIen8XoYu5HK9NYMRHPoWJb9F8L3/Ortoz46JyJWXGrI/H?=
 =?us-ascii?Q?96oYhkrbR76Vyfl/aljfvz1YbMUMDta0XnPovW6HKq+Brva1qg3NyITTyQwA?=
 =?us-ascii?Q?OQZR36R7qRAjSPmt5TLlroQ8LtsUKvpxDfbm4pyD6yxlNBMttMQzD4rv6gP2?=
 =?us-ascii?Q?fFeTcBbFxQz7dXESRpWjwVHyWh2lMu5IMNZtB1xFixV1ckjvNHKUtE/WRbih?=
 =?us-ascii?Q?d1H3AMVSTq/qch1h+9cGM4/5/zlX1HV3TxH0V8cEQyoVc9DWCadVdFGtDdb/?=
 =?us-ascii?Q?J3SsuZTIJS3YWnmj6EiGYsJUA5dXmFX3hfnGFquWJrCkS6oOyYMuQWh18Shq?=
 =?us-ascii?Q?+OI5QEXBSaJzo8Cg9gUrFwbbvfGBm3jHehAMPFL5WkFVNZpZBuQZjLzZSOG0?=
 =?us-ascii?Q?mP+KyHi0iH9xawHOiYNZKpS+w+piLwQvmzjfg78lx4TnUPVTCxPWYYZwsLSD?=
 =?us-ascii?Q?LmgncpIeK4+DopZjIr65YPH9fnHLjvBFA78gj97op5IhSnbBA8uQeqB1Wdw8?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4f0b9fd-910c-4b93-2e23-08dc33936aca
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 10:45:42.4538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7gfsPGPo2bsJQ7xiFvJyWWnBK6YmfARwXf6vPz4MwKMjK99LE1OdGSGrbmlSJJo7zwefIdIy9a0uP+cqJsDmMTZn0oIzdI0Lr/PLJXtUHYIS3/LcNJMbHe4vsbAYCZt1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5808
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708598752; x=1740134752;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TG/377xVTkJwhrgDKWseFFbFiLwzVl3YHpEb53TPFQk=;
 b=Qr2sRjCwWK17mRfqIcMwzxx8F2dzkkYpIhozuJbpR43TR+MukpMrxfix
 GR3p3Njzndb+FtgqThj+BZCnpMWA9l0Y0+rYifHZSBVBy+Dmws1sApZa3
 nu/qQW+o1GfCUOEUlDuZi76NVu2d5EGpnGvvdBCNzbd3jkYILLkmfUYfx
 d4S/fpNG6sPAbltJhs6r2NINTYcKaLRx4cpMY0aSetv7LCDtHCMkcUVEQ
 NRAoz/P6bNAdSRJBmsbiy3J853QgoA3YPXtoWbxd1iq/B6Z+nmXBVOYl5
 iHBJZzbMTtYxoeol95vnoYatRWXd+pqADfQ/0IylI3cLlvzQIRKMbRMLv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qr2sRjCw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] igb: extend PTP timestamp
 adjustments to i211
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of O=
leksij Rempel
> Sent: Tuesday, February 13, 2024 5:24 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Duma=
zet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <p=
abeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>; intel-wired-lan@lists.osuos=
l.org; linux-kernel@vger.kernel.org; kernel@pengutronix.de; netdev@vger.ker=
nel.org
> Subject: [Intel-wired-lan] [PATCH net v1 1/1] igb: extend PTP timestamp a=
djustments to i211
>
> The i211 requires the same PTP timestamp adjustments as the i210,
> according to its datasheet. To ensure consistent timestamping across
> different platforms, this change extends the existing adjustments to
> include the i211.
>
> The adjustment result are tested and comparable for i210 and i211 based
> systems.
>
> Fixes: 3f544d2a4d5c ("igb: adjust PTP timestamps for Tx/Rx latency")
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

