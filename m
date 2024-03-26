Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2B888C74A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 16:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16A1F41518;
	Tue, 26 Mar 2024 15:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZyZDvvd8G9Rf; Tue, 26 Mar 2024 15:38:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E084B414FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711467502;
	bh=O9+17YK++F12uCdwyNPwpnFW95lEljiM25Z4r2aMy64=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NPET5/5jUp/YH9brCba0bq/E6lPztdLGIfxffc/F3vTtbJQM0TCZY3gL5uEpTKboQ
	 HQxQFYJ2Pn8dyyzbTfSSVCAcxoQOL515/1uas9QE++np3RHXyy7LOSq78a6Jh4S7Tg
	 /bf+7zMKYTkSmgbBUCAD9iNcDgGzh7s5gEVE9NfdZPkS80zxxp02KD7wsPwV1UR1gD
	 2zay/+Ctk/YcXaWGURPfvgDWBPl+Fha44ZJav2cKvgysy4/Tmu8U59wbAHjCnDFnYX
	 NKhvvq4Sfkhbxv1Vq5tULeg2WNhd6fb6sEN8ZW6EUcfgZ0qKaAxsEgw6d2drgRgn1q
	 lNJwbRHY2ZEow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E084B414FA;
	Tue, 26 Mar 2024 15:38:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0F021BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C9D9817AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:38:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qoTTJVBgyQEV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 15:38:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F0EC817A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F0EC817A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F0EC817A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:38:19 +0000 (UTC)
X-CSE-ConnectionGUID: FhBhkATvTaKdGUii5nwJ+w==
X-CSE-MsgGUID: g8uanDlXRy6+m/DJ2HcTfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6642460"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6642460"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20698389"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 08:38:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 08:38:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 08:38:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 08:38:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 08:38:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbOl2+9/w9mRaxfzIOntg6Qu0rTcJi9Z1XGjrwY6gAH52RV2vxtcnAn9tTIweYsWt2TibG5YwqiISEZjghzRmWQ4YinHyVUqqBJYpZPROn/l097aWDxgtZJW98c/QpQJXKmxot2ISK4o2lfhGpNQCtY5XEv0Ixb8eja+aCR/aw1LuQfm0QohvW5D76nFje9WwSekSnWD5HErHq+u4/f/8IMmKj/8SZlowAVZOlVoEHNK2TIy683WXNg5tW6/JJGX2k9BNDINJZUMWZZbSkNFIsObJGjHG25vWyNZmX8PfGYshh/9XkStmGEJOPn4R8/SRsbG6FmQUUlCs80PdnH4sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O9+17YK++F12uCdwyNPwpnFW95lEljiM25Z4r2aMy64=;
 b=c5IgDP1ox7CkU+uvPz858wa9+Tp21DsA94mb4E4RG5vyTXdiL1P9counPaXkxX/YnCA2DtVahgGGCb+DHqdjVu5bJ5OZQ3x1wYubUki/oaAK13h8vDFMno1CNV7d938gJtMRJgzBpXTMOGWI+jJ5LIDGquHxPg1uHdytYzPNXbTzCNxAjj5bWlpy7xokDzezgTPnCL7uJA4JZLIm8r1C6XszCtnMXca8KWXWMr4rWvafEtKXLe5z/1+0nY5I0pqwKCBJ4uomfK4EP34h1I9p/qFEUkCGwyYCcGb+CkVdH7Ppdg8e0SSAiB1BMMMpcQWu+nkrrSp06dmZ7OLzavgyQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by BY1PR11MB7982.namprd11.prod.outlook.com (2603:10b6:a03:530::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 15:38:15 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7409.028; Tue, 26 Mar 2024
 15:38:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/7] i40e: Remove flags field
 from i40e_veb
Thread-Index: AQHaeUD928WY4jyDa0CC6tJsTuW2g7FKNJXg
Date: Tue, 26 Mar 2024 15:38:14 +0000
Message-ID: <SJ0PR11MB58666E6D308913A475BC94F7E5352@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240318143058.287014-1-ivecera@redhat.com>
 <20240318143058.287014-2-ivecera@redhat.com>
In-Reply-To: <20240318143058.287014-2-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|BY1PR11MB7982:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T414RrgmciVi5Ni8T9OvUpj3mtIR7UX6vCSrpdoUZGxCaZMIcWMeF596XpN77KF0PyiypUUbji+rCJ/k8ZdQNIU0zypPosCHx2giBrGnymMy55NU4DkcQDlzaghJ5MZ+OQkPEg3cJCbSGuO+54OlfUgaDPIqfvPKgC2LSIG+bkkT8fz8jvpUfNIA/8B0+croqKUqUlmGGKoVTNTklgpcqKlQMNUL2AyuxiLlXGOc+9xkTxV9haEdVdBBEtkx5sILSDf1ffeJnZjhNhJqxSakMneJo7GdZX+YXsqW96dXDrYxP6+graxcgKZzoiUVpAFp4VnKa6epE0QLidcG7Ad+DA5lmgLqj5baSn6aghWF+Jbdhl3eS7ZnIF3FA2N42DVbn0XvYPJIbEPMq5kiTeDB73VbztqOdYdN4KW86bgpwWUauDlCFBJWXFHEtPZ6eFAikWF3GStj89ts/pGWLylkl7dKpYOs+Taa81Kr+i5DqHav+fETAeKbuInDKMY/7kHTsLcJXWBtKS6ceC004MbmooRSSXx8nN+RwZqma0bfySs+npDXkrv5O23GTih53rdkziUL5uy6O/8WF5QY00IHYHhPMAJ0iRUbFQsBOjq4akHF/q9PAwUbI6y6T532LEnTuTarsQ2477ZhedY/+pOlKBdNTzn7EayfMmqqKiQJ7Vs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R4aOtDobZvq2JnYtpZSHQT/EpdLDxI3qWb+kpuhAj6yq9NbgPhDSUi/4thbS?=
 =?us-ascii?Q?3uJdunb5xw+OOJ+EbaJ3hCdZJvq8IF5LrB4qkr3dTiYo7x9XocADtyqzsiha?=
 =?us-ascii?Q?aObPrwQtgr2p+g+OfirJEDKRySwmZr1uud76Od290vSsfUMXSl8WP5O5A36h?=
 =?us-ascii?Q?OQPgvkAaD0yIFXP9XMp0KjFogVo1SsECqupkwrRMfoVlJQzoOfEa6+/6fFeg?=
 =?us-ascii?Q?m9oqgGHL/BuFTiZ1VEqwNLek0TVufaMNo9rqA7r3nykDLaQH16KggkXhvNOP?=
 =?us-ascii?Q?wO16YaQkfE95+XCcfjyi48EqCXMOf6KZyCQzPiBBm3bcnNx+63/DBfzticq9?=
 =?us-ascii?Q?rhmXJQyxyM10EEkUkUSXV74hjHXz722rd5ATo//aHU0SGfEHylCIks/Z9t6Y?=
 =?us-ascii?Q?lHIFG/2k6vRHGpmrouiVqFaeL7wYPTltSnyxS8Btp9CI8f70ir2fcvYImyRa?=
 =?us-ascii?Q?RMJfcJFogvOYa1RNVFk+cVUzTUh9t+hWu8etBkM5uYq3BXLTtUey1KPBq7ht?=
 =?us-ascii?Q?ICnsiBcso4PnyBJ3x2AMfaKPmPe0DumYEEScERADnLVYyEaDXlM5u5E3B4cb?=
 =?us-ascii?Q?QNg1p7nzZvbo8anoz2wlgBXqPeDMNCkucjEtm1ZY01F5uW62YfgUEiFp2gSk?=
 =?us-ascii?Q?TkJnGqbRfAa4seorPPWQe4xEJ++2aIfSCOd8mv9WcFyQtKDALf7CkjYSleXI?=
 =?us-ascii?Q?pqGsKzkJUI4B9vsppyhgx3jkMGa7TFRn7FvVx2O0msvNyQnuTiEroYaZ1gLb?=
 =?us-ascii?Q?7lfvnSFJivtR39LFllAq4C1N2KkOkMs74zAqromOiSqRDl5VuQv0srHxu6AE?=
 =?us-ascii?Q?zHCnYOL/+jnY3Rgp7WJBfUtElOMZk2XLrCbOr+2kcyIsSekwhoBdqXADJhX/?=
 =?us-ascii?Q?Aaa6mFnVPYgnBOHOvc8upaFUurfks/Vrh4mqhTo46YrlfV91vO42LbZYEhMy?=
 =?us-ascii?Q?dwb858k500IfeMQiAD+aNDwVzLLUJPNpPLBJ5cLFlr25c12wR3eQN5mtd/8L?=
 =?us-ascii?Q?WZYUJze9A3v+QsrhjMz81DdgZBMlnzxByNe6wuhN5M0lfVkV5e88LNj5fumZ?=
 =?us-ascii?Q?kjhjI9F64N378yOsDL8hZi7exiFuYfaFVJP95GXC4XfnP9+SwfD7ShpojyVS?=
 =?us-ascii?Q?EX1sKuI3uu3D6x/P9EXZgE12LvpOXcY7/yF4cKzPCp004C8l5w4CT0unQvPU?=
 =?us-ascii?Q?/oDtaQZrBqE7KrT1V65HmXiMbNqNTEvZfF3FObi+X1I5Mzzso/KRGcD0cdQr?=
 =?us-ascii?Q?kyu66ddsgsBVyqWbEeL5EwUxK1kYLKe+KbD4Ga9RKq3ek6T/90CX0Yqj/fdy?=
 =?us-ascii?Q?lqokMwU4BL8nilQNPv9M0JE9ZCDSSBxkQEslH4AWIBlcSYZ10SusckeLx+HX?=
 =?us-ascii?Q?Gaon+5UQCHUrjK5sPJdhEDOqE/a/jqGj3HN4h5pMyTzAiZ9f+sWKvmJl6fpa?=
 =?us-ascii?Q?4tZRd2C7oCPzNyYlVO1LyYdWc4a9Slv4MY2aXscuQFxjUTetRf9Y/awn92QB?=
 =?us-ascii?Q?rjHc35A6qow5CUFrvpcsavKUYxp1x+LZNDaO265InJ8AsMEcyCr4a2hs5MxI?=
 =?us-ascii?Q?N3YzOmRD+104dtP7xmdXaNa8x2qmEHkXEz+3Zyu/MHRuykcUAWoj31qJiWJ4?=
 =?us-ascii?Q?pQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b4d8ac4-be96-49e1-432e-08dc4daac082
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 15:38:14.8945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LPvv0Z38bffE2zWxjBneN37WT9H1QrYzr7E9dIwWywYYgLcO4gX31dJQGrrg9IjdDQfoZHNxhRB1ObHyJDYtMf9bUjJVda5rzarNwbzxscA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7982
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711467500; x=1743003500;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SIqjbEibrVVq7AqJzVVlJCwDDq0ntr6rw7S3r+XvM+o=;
 b=NNyyHbJZKfv+Fxi+IMqroIUfBnpNTLiwI8oz/PcUc1tzqbOIVA3vqVRB
 /WKep/g12HQey5tT0iuSphFiCMtbbI/cz4oLdPZwYYc0jUoxagzGa0LAg
 3SecEj6h3u2GglDQLl28v2fmKIhOtXdMuRjzl0QHkonzX2kaMcu6r6yE2
 VZmkgjFxSOnppGz9AHGjxv6gFPv4cQhqqiF93h8diDsHFq6GB64mSD0mv
 vsTUwr3ehyMSh5lY1wir2oh/A1lG85DAnUhqZu8xEU7znKsKEaK/tdZjy
 U2VaHBxAXt92vBCwKEdf8I171v0XUR5l5eBLF8Nya21LYN//Rta9/mZ9n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NNyyHbJZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/7] i40e: Remove flags field
 from i40e_veb
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf Of Ivan Vecera
> Sent: Monday, March 18, 2024 3:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open
> list <linux-kernel@vger.kernel.org>; Eric Dumazet
> <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/7] i40e: Remove flags
> field from i40e_veb
>=20
> The field is initialized always to zero and it is never read.
> Remove it.
>=20
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>  drivers/net/ethernet/intel/i40e/i40e.h         |  3 +--
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 13 +++++--------
>  3 files changed, 7 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 2fbabcdb5bb5..5248e78f7849 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -788,7 +788,6 @@ struct i40e_veb {
>  	u16 stats_idx;		/* index of VEB parent */
>  	u8  enabled_tc;
>  	u16 bridge_mode;	/* Bridge Mode (VEB/VEPA) */
> -	u16 flags;
>  	u16 bw_limit;
>  	u8  bw_max_quanta;
>  	bool is_abs_credits;
> @@ -1213,7 +1212,7 @@ void i40e_vsi_stop_rings(struct i40e_vsi
> *vsi);  void i40e_vsi_stop_rings_no_wait(struct  i40e_vsi *vsi);
> int i40e_vsi_wait_queues_disabled(struct i40e_vsi *vsi);  int
> i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count); -
> struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16
> uplink_seid,
> +struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16
> uplink_seid,
>  				u16 downlink_seid, u8 enabled_tc);
>  void i40e_veb_release(struct i40e_veb *veb);
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index f9ba45f596c9..6147c5f128e8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -867,7 +867,7 @@ static ssize_t i40e_dbg_command_write(struct
> file *filp,
>  			goto command_write_done;
>  		}
>=20
> -		veb =3D i40e_veb_setup(pf, 0, uplink_seid, vsi_seid,
> enabled_tc);
> +		veb =3D i40e_veb_setup(pf, uplink_seid, vsi_seid,
> enabled_tc);
>  		if (veb)
>  			dev_info(&pf->pdev->dev, "added relay %d\n", veb-
> >seid);
>  		else
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 663b2237eb4e..2f1604ae78c7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13138,7 +13138,7 @@ static int i40e_ndo_bridge_setlink(struct
> net_device *dev,
>=20
>  		/* Insert a new HW bridge */
>  		if (!veb) {
> -			veb =3D i40e_veb_setup(pf, 0, vsi->uplink_seid,
> vsi->seid,
> +			veb =3D i40e_veb_setup(pf, vsi->uplink_seid, vsi-
> >seid,
>  					     vsi->tc_config.enabled_tc);
>  			if (veb) {
>  				veb->bridge_mode =3D mode;
> @@ -14394,10 +14394,10 @@ struct i40e_vsi *i40e_vsi_setup(struct
> i40e_pf *pf, u8 type,
>  		}
>=20
>  		if (vsi->uplink_seid =3D=3D pf->mac_seid)
> -			veb =3D i40e_veb_setup(pf, 0, pf->mac_seid, vsi-
> >seid,
> +			veb =3D i40e_veb_setup(pf, pf->mac_seid, vsi->seid,
>  					     vsi->tc_config.enabled_tc);
>  		else if ((vsi->flags & I40E_VSI_FLAG_VEB_OWNER) =3D=3D 0)
> -			veb =3D i40e_veb_setup(pf, 0, vsi->uplink_seid,
> vsi->seid,
> +			veb =3D i40e_veb_setup(pf, vsi->uplink_seid, vsi-
> >seid,
>  					     vsi->tc_config.enabled_tc);
>  		if (veb) {
>  			if (vsi->seid !=3D pf->vsi[pf->lan_vsi]->seid) { @@
> -14791,7 +14791,6 @@ static int i40e_add_veb(struct i40e_veb *veb,
> struct i40e_vsi *vsi)
>  /**
>   * i40e_veb_setup - Set up a VEB
>   * @pf: board private structure
> - * @flags: VEB setup flags
>   * @uplink_seid: the switch element to link to
>   * @vsi_seid: the initial VSI seid
>   * @enabled_tc: Enabled TC bit-map
> @@ -14804,9 +14803,8 @@ static int i40e_add_veb(struct i40e_veb
> *veb, struct i40e_vsi *vsi)
>   * Returns pointer to the successfully allocated VEB sw struct on
>   * success, otherwise returns NULL on failure.
>   **/
> -struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
> -				u16 uplink_seid, u16 vsi_seid,
> -				u8 enabled_tc)
> +struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16
> uplink_seid,
> +				u16 vsi_seid, u8 enabled_tc)
>  {
>  	struct i40e_vsi *vsi =3D NULL;
>  	struct i40e_veb *veb;
> @@ -14837,7 +14835,6 @@ struct i40e_veb *i40e_veb_setup(struct
> i40e_pf *pf, u16 flags,
>  	if (veb_idx < 0)
>  		goto err_alloc;
>  	veb =3D pf->veb[veb_idx];
> -	veb->flags =3D flags;
>  	veb->uplink_seid =3D uplink_seid;
>  	veb->enabled_tc =3D (enabled_tc ? enabled_tc : 0x1);
>=20
> --
> 2.43.0

