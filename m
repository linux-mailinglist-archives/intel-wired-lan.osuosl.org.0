Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DCF875E6F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDCDE41B3C;
	Fri,  8 Mar 2024 07:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EhXHFAuGVZ3k; Fri,  8 Mar 2024 07:26:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7D4841B5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709882816;
	bh=B/868M5XLfoCFQu71oJzl43ntK6fPbc5FXvscGT06Bg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sEY3pXZeWOhGwjjnZ0eykZ+3ooJ6I6gZzg9qDVNo9L22fINu4BBUGbTzzKlXHY+et
	 6vbH+M5IB22fJqhaq4cjHddQJQAyCau57/oMImBpCRzLhFxa8S3YAtp/QUIbQlf8YK
	 otghH/e8H/V8Utqxyz9vmgP775Kg6bBMN0PHdzP9i/sA6PdcZZdtobCQXiwfo0nz42
	 Q5IndsKJE0OGkLIulaFg/zsw9du1CGFMUhYYENXRVYEsKlxVSH5pGBXcPVGQzDIyAY
	 g+DWtk6TwjcDxWkv3wPIkJeB5pgGV4iVYRDoI51gm60ZqlMTJ+XuDJxuhJKmGBgmT1
	 +zIkYh0/DK5Zg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7D4841B5F;
	Fri,  8 Mar 2024 07:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F04EC1BF325
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA49341B19
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xm0ZTFHiWXDT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E7DB41B13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E7DB41B13
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E7DB41B13
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:26:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="8345897"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="8345897"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="14944310"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:26:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:26:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:26:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:26:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNepFW8fkDNj4Trgj9+PMMcx/HmlZ7E9tJ099m8dtABCG2JmQiVLZdfLvof96vxXpUHEIfbQ+ckfKgaFVXEUzkTjr5KGMG7bfeDRM70+Fzz8bSMyC9u+RYZ8q9451M8iVyuG57pQA8vIJJeRREIY/TAgiBFzPLNNyaEO54geT7h7qkiHECNtpErLtjQ2lh6oK1heLKEE8ZgIoLUpYLuXOAm5I58GG4AvtRu9Bp0odygD9I8Jm6m3DvkKef1QOJXCHdgNt6pTtmxq4E1dLXa+Z/LmapqQvP51w4nSC1f57IXeYBrWsfbW3LWLBrzswbPHmKSISeYJFVbXFPChqLR9mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/868M5XLfoCFQu71oJzl43ntK6fPbc5FXvscGT06Bg=;
 b=Kh30uvMl0q0fQYAr2O0/Wzh2M6nuOfjkrbgo9wrEMsDvuJJRH+XBPolrifsSL5O//MKkjE9B+x0UI7V0aSgn0cF+XW+G9PqNMWsnhyX4Q80mQLVOqbjknlr8T6hvnmIei+ITmMhaRdDx2bj0dr2WoLj+k+Jquj78twkpbm+GfULsURwmTp1cMYqTiAF0PpFwKd40n6fnoeHTujCIIFPw3eXOBIuyRfaa+Eb0h5g45DsrEO0FW0FtryisRiV62hE96VsuD9QYZsHLclOyZlpL3G7lY6HSTgNAkZW6fMI7kXIuExCQmyPcqtjGS5WdGfxeZVmmeKJrpsTFU1C335SUWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.8; Fri, 8 Mar
 2024 07:26:49 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:26:49 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [iwl-next v3 2/8] ice: do Tx through PF netdev in slow-path
Thread-Index: AQHaa86a4d6AUDFyyEu+5HGPjvmiBLEtfEhw
Date: Fri, 8 Mar 2024 07:26:49 +0000
Message-ID: <PH0PR11MB501351B2FDF241C7B05C567C96272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
 <20240301115414.502097-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240301115414.502097-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: aa40ee6e-f55d-47ea-8118-08dc3f411e7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ydsfa7KiMNIegfHSj8S6QpYTGMRAFbKrqoT8VVpETG3EAQV2tdcdB9XCEI9u/wMXWX9IZfAmW+0xgkrikcDB0PR/y2poMWvrz0Ycd/dZs8gJotQSf4mCnoMH77sNuUCINJPoW55qZAQTFixsrKGb53c6lH4q8FnPL4h14acEtULNEiaEZFLSK/3Up4q3QnM3Eaf1Apmy+af397KxeGt1FWlaIQr9M1mEZVBdpbXsFDVcMJylHuWW4gBq2nhvZ9ao+xBCJ6b9HeXFM3qTe2TvMiEaWyL/Boiy8E8IF0SS0bPA8e9TRLj7HSJqaROjz86iPzA0Gcys1Gn63eCqy0mmnomeVVBqt4IiKTwIjEvgE+WzuktNbevUr3y/oFs+xkwZYdaBGTC7L0Nu+Fp7uj8cBCL7AXJPuxzSCDycxHH7bVFk+pqTGX8FMfH6QeA/4J392xn7P639x6GAa6YYpHBpUgGBQjXZw08o5PqVJXMqnXapQpcvqZLbfjhnQN+5umG8QUi3cyIrrie+7FwUoHQ+co0zA9O4yslEtaMB2CTBvJNAKimJx6km66wbrN42tgAWSpydERjzMgKECsvN8/SaVuIxQPppUiLmiZhyIX4/L7gnQRJ4jz0jcrHTfNPkYDVvbNdqDSSM+EFM3raoPMelOsMEXJFJL0cUT16Ur4zJTWgs8Fa7gifyyHSXOTOvLb1OXTLtYTS2nU+I5fyBbzK3+njyIavtYAyNPSrMqfp83aA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?81C8zujZOCIMYAL/1BFLMZYa0QbialoAC6Nx7w9J43470WqLGEbi0nJ6OsmO?=
 =?us-ascii?Q?CcQBQP6SR336hXpd8KERRvF+GNcJLJ4VdDOpX++vbfYjZcsiDa10/FMKjd/3?=
 =?us-ascii?Q?Qo5NVTg9BF2+LsCMdMo17cMZmu+NxXhQg0iXO3UrCLF1dr0hxDvxmmMkzUIv?=
 =?us-ascii?Q?bf9dEmC/35iahWQOr583FfoAvr6Z0WhU/BTFzpOv0EcCQotMW1SLsUs3n9ZY?=
 =?us-ascii?Q?Hd3UzVgH2Bp4XoGGkzEy5+gJz36lfzVk27qVkL/IyftJiyreF3nbYtiMhcuI?=
 =?us-ascii?Q?+bWsk+eoD/HPvyh/4sLPYoYrnz/GG1BMScEHWCYwD0mTUs4cAZV2GsuMbOyo?=
 =?us-ascii?Q?rQqqnV+EtK6srpJFrwGEnmviBAwN6vH/kMWCdP5zUX0Sse4agTzZYsj7ykkW?=
 =?us-ascii?Q?Sy2FfezuyvzkiLed7yovZShttIlmc1RqbLvzeBiVDob5Osf9OfIeQcPNJQZS?=
 =?us-ascii?Q?ueeVGxQ/+4cA9PfoqnJGuAfvDWZEQE89Afs7RPzozXj8HprdubIxpzWoqyiH?=
 =?us-ascii?Q?zEm4UJoPMCrIxp/qB8y/2BJoe3e6sDrOvOwrK/BOQbXhK/e22wxgKxHp4/hS?=
 =?us-ascii?Q?nELWJr4R4VJUYeyfhyHFHdHhqyirzMcsXDqGhu6rBANvFQvdJ+gtGSdclp21?=
 =?us-ascii?Q?JHRJbar7Mm4u3NGk0bu7onfEx9WaGimLiLkk0VllzA/fTjVNNqE1Htodcd0z?=
 =?us-ascii?Q?3K0REhzB7clz49Kqf20YUqLACUPc45jokK/hpRf/4MT4zXe4KJtVNUoVaiIS?=
 =?us-ascii?Q?NzfJ1kjKWQrN4FZWFK459jWT/GJ2xw6Ulp9hHjnGsMp2BBmhexYy27HZZXIc?=
 =?us-ascii?Q?UumxEQWKltkRMpt8iyj5FCenIFGbs3lFlNSViCd2obWZGkZpIXk1Rkislbwu?=
 =?us-ascii?Q?4yFD805i6NxYQ1EdD5ArPTMHBpEimmHd55TVaGLwIk+PgMxuoDDUNiJm2E0c?=
 =?us-ascii?Q?kuntseC6ZHjxwDdazFVui58Sf2EtnrxJg3jNel06lIN6D9gLv4KchbjFh9ed?=
 =?us-ascii?Q?85MnK0iAQxdgJntWAjsQ9qVu0IWZgVDdWokbXPQcYulbSkJhB5kPX4yx0cDo?=
 =?us-ascii?Q?FOVdcujEIEwwdLyE+0rFjPLFrdXBiL0YUOqv++gt47CdqAPOYcgU7AVZLxTe?=
 =?us-ascii?Q?VBwKhUjRC44ZQ6eGhRfY62wB4CBjxPktzjCQ/v+pYVSODuXstNH4r0NTBcYj?=
 =?us-ascii?Q?ENyrxSgWq54sGZ97DhX3mtKpB/ilavsktPKwYHHyrTjt5h3T7nxArirO+VyB?=
 =?us-ascii?Q?7U9SuBM9FyH2mWe0mC65V/gZ9snv6/wiJ+SYaUvs2BnvIxe88bWzIGCiGOSC?=
 =?us-ascii?Q?JIWPLS4HcUqqV/OlyevFTcJDm1hu2cfIS0x7KW2Et582fNgaqnNliC2muCMj?=
 =?us-ascii?Q?WM1xlQcQennbTH//YyXViLWJKTDj/xCIkp1lM5EU6KP11PLWiNncAx6VcgyK?=
 =?us-ascii?Q?ap3pVSyEvRM+0UQrd/szMeNd+oyvsLoMY4xVPkeOP5nSJUP9UWWTwdiaVeFs?=
 =?us-ascii?Q?ewI94vs/yFINDUCrenOqWFvtUfjsTBdJX/DYaFZFs+OOMDPuQ4twN1AtD1fZ?=
 =?us-ascii?Q?i7V3eRI1KsEhGf9jLVkjapwa5O9x67rdXlaKQSZeu4fRuq9qUgkyIWWIpkzn?=
 =?us-ascii?Q?IQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa40ee6e-f55d-47ea-8118-08dc3f411e7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:26:49.6711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xzF1n9c7Gk5ewzbccM4tCK3+B+AJ/BwzLUys7tCbWfRDj6Enn28mHHN3Mlp9tl4hJZy0UNQkCPwjbcmOXT8xfjRyEgxFLhIWfRLaY6K5e0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709882812; x=1741418812;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sbchJuoPF+mqAXnGd/1iZ8RQ1N0V7hlLPuzM1nMxxyY=;
 b=bAqabbBkGY/ujqT3W8AOnXms1byZ482L+BumN4vwZzcqgE5oFexNJXpm
 GsonyT/i2JixVa3/adhyCtElmo9L9I6xhICPJtVTnWa7uA3vhGgjOhb4c
 d9vLPAjQjGMqVMcSgq68U5plO2FH70vjvziNObHNxcL/OHfMYSg45HLfw
 PSEuAFPLO7Bz5MCJymLJrPDLSDfhga/i9NIrqImuZ8bHKJhmVow1j9vDb
 vLNiQlgqQlq8eaNS96DH2bWrXaeDRyjLTMLrjrWLwLyXCc+SpicfgxMOA
 S0TUyMVcpGiXJFqRmDixUWz+KM3JcQpPhHYcqVIZfjFBgI4Y1ry91h/Tw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bAqabbBk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 2/8] ice: do Tx through PF
 netdev in slow-path
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 1, 2024 5:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; horms@kernel.org; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [iwl-next v3 2/8] ice: do Tx through PF netdev in slow-path
>=20
> Tx can be done using PF netdev.
>=20
> Checks before Tx are unnecessary. Checking if switchdev mode is set seems
> too defensive (there is no PR netdev in legacy mode). If corresponding VF=
 is
> disabled or during reset, PR netdev also should be down.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 26 +++++---------------
>  drivers/net/ethernet/intel/ice/ice_repr.c    | 12 ---------
>  drivers/net/ethernet/intel/ice/ice_repr.h    |  2 --
>  3 files changed, 6 insertions(+), 34 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
