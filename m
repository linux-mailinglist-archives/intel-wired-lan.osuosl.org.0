Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3246B401E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C4704119E;
	Fri, 10 Mar 2023 13:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C4704119E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454395;
	bh=eccLtfEuyBtZryXMH+w9XKf1dJOYhncFsllD/cKHguA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=osLzy6nz9HveSHEAiOtiavY5A7KjVtfOi1Y84szxTvRvzny7ZXtnSoL5D8eYHSQcm
	 mJpf6XAZXlJXKIC9MojSIPAv9lRFXXmglYKPCy8ONV8C6xRRtyUlPbqj7JgGoRXRnD
	 BXZqsN3gT0Lo5xPh3DI4LlwNFF6pjPc+0jTZDoCsTyZ19JiH/zbyy16rhiZXNtW3cJ
	 N3gQfDtnDZZDW4HanTm6hTinThZrG6W7zDMecgGWpyWYOts2wb2WjzDMXKN3+0N705
	 pqAjK2ilBa6DeXTU9YAIAn1Z/AdolxU16axgZLwnFEmhKPojpdhGBhW9aaAsW2rtw5
	 o/hN+ZphACSZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQy4-_beeBva; Fri, 10 Mar 2023 13:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B35A4119A;
	Fri, 10 Mar 2023 13:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B35A4119A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11AE21BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCAFF617AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCAFF617AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DwI5Ejl0-HH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ACA3617A8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2ACA3617A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399323926"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="399323926"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766826439"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766826439"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2023 05:19:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:19:46 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:19:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:19:46 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jz74f+Q1M2u+FNpO3Wmivpweydw8nIJb/N4cYX1jJ28/7Rgikx1QXjWs6IlL4imJJmhjuLW/MaM8DhgthaPEUU5J64vdDBHRFtuF5Ndga8Su47RJ0bu5Q0vyTlpMOws3iZs6t3WJN3dGeyLKVVvx/dc0S2pET6XdNBlgPLO9UC2WoBKkZk8GtXSOIUd8WzW5L+Y2RwTB8izUKDEulzWlZyHFMXYwKmT+6ij3dj6VMoL3084XSN8I0K39O8pXR4dtUDJL/jmtUwhn1LiscvIgAW6uCflySbLhSApf9TyGGxyw0SgL0b+Q5dQH55nLU2/8rT9/tkAsOu+pjeCzR7Yk8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lls+8jzxV0vSxNy+WQrWMwHTvXa4Lm2wCdNHExp4ZDA=;
 b=cCn8GXRhsVpuBMWNSfr/OI6mbGShEh/4SxUTIpFbGFcJrrxCR5N4+O7iECcugpwkYvQYFksqEudbCNR6UlXXasiqy9bLECabT5KBMHDzFmrx89HZk4P2gtn17nqz3wRvH8uekyAmpho/DWl9L3pWLv/kO50xQ4IgP9nod09CSCwALbgN78nb0t/MBHsUyon1c0v7WTxMyRwEmM92yaqCQGqORGs1J4ceXFe+JRX20vLAnNMW/6q92CSularpBqcptWdHd8U1CunAP8LvDuhsFOcax93poEjVtGsQ0UqAl49j74Yo4hZQYgTInEhRDVHmCyCn2xf99jm8QKpMfeakfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 13:19:39 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:19:39 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 14/14] ice: call
 ice_is_malicious_vf() from ice_vc_process_vf_msg()
Thread-Index: AQHZRuGe4IEgCcWiJE6nXykn0+ntwq70GBMQ
Date: Fri, 10 Mar 2023 13:19:39 +0000
Message-ID: <CY8PR11MB736451D58657E1510555BF3AE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-15-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-15-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CO1PR11MB4996:EE_
x-ms-office365-filtering-correlation-id: 1524d118-f96e-442a-f992-08db216a1a44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OUgx9MZUopALIEFW94I1tMWPEwDrvBfJa0f3nv6FRg+zgLjVTt5ZnS7qIr8rHm6oOdrYdrwZvnWF1m2TkW11GffFsh5M8YEW62U79N61S5QDsnnz8Vw2txbKtWyqJs3dAccy3b1eByUZCOr6PTm0EjPp9biQbGbEa9aiuoCqviM3VI4rr/6dToNq97Ue7IbqfQmzEuD4CynDFMyF8zylYCkAihCXiqXBrMNgz0Sc1fzda1QKrFprMBV2hN0s1PcXpbT/+LzMQW/vNTFZ+a3p/Mde6HvqYsOSb+9bFqbvzXk9ssvi4zYzv+GnS+bi+Nhk/kfnoS3X/GfUjcMwiDYGe2k3rK03MVK7fKXF/jOJsgE9Uo42nCDq9nEoh19e/va95kQo2x8Y1GLdg7nw+ooK/fViY2Zu2REyyxmpIG+M5JEWwiJ/eXSXuLTjcIhzGd0vePJWVJy42Qf4nrseETXnyUkSiLPU3il3x7pqYtb7UxFuMxE2TIj78B/Pqr6uzVzhQ14lLZZJf4kFfBWUubnY5B7qP1pWd21F1zgkcSu/gqjQeRlPMk1jzvdubedNqviKlmuRJ4HfyCSAYel2VZYE70eDjv3LFKT5YX686ElBnU44Tg57bv8ffJgxIfaLy6Sooz7CNf8JJLHAOemfwgjVHJeVOlkaAv1k0JE+4iMOr1RmYTxqHyHru8pnKrmf9Uc/tU/6qRmKSnG0yVP830OYBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199018)(83380400001)(55016003)(2906002)(6506007)(7696005)(52536014)(71200400001)(53546011)(5660300002)(316002)(186003)(26005)(9686003)(38070700005)(8936002)(33656002)(86362001)(41300700001)(66476007)(66556008)(66946007)(66446008)(6916009)(8676002)(64756008)(76116006)(38100700002)(122000001)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?TC2GC/oGtcx5YLTChymj6FTYITkui3CuT7BkK6s15FJHiMYj+ze2g2Yp/G?=
 =?iso-8859-2?Q?8EqRC5G95jbzaeuNKkEkf20XrYDPTuIKwTL/NKmA+BzkvBgIjhVgzCeoNP?=
 =?iso-8859-2?Q?i8hnr5XSF0mNxZ8wA2SMSK44ByYvAD3LPA/VKbfbQO6lKzTzOOMnfse8Wl?=
 =?iso-8859-2?Q?65M+9hFce54Ji234QrDrAaZ1evH/rwYUqLYbrz71Orpvo9N06IVuY7yrlL?=
 =?iso-8859-2?Q?6TEB9yZaEmAcqaRmTY1Ge+tCjyHv6XGk/rFwyOCEi+bfmKEHvLg/cVbABe?=
 =?iso-8859-2?Q?PNouCVEnjYzl/Zk0az32lHB4ifl06ypXwNafCiWlD4kIdrrCnN0qLXMtq5?=
 =?iso-8859-2?Q?SOxGONiK8s8+agpiENU2Cs+j8UZDqZK5zICgcm1U5Wy9VTny77Jl9mvAQr?=
 =?iso-8859-2?Q?BrORbnslkGeUORNwZ5Zo4hAaRl0EQ/jNZRtfc85vR9ofsby5mtQFy0bLN9?=
 =?iso-8859-2?Q?Eci9ujJ2qtQ6sFiVvwo5XuRfhM5BuARm2M7XdXgUh3a7T7yrQOjNMkPft9?=
 =?iso-8859-2?Q?+A3bhspHbl1o3RRN5djY7N+M3TX9rOjrXbtnob+PqJPsm1S3s+okhk+4pk?=
 =?iso-8859-2?Q?f81gvx9o4bwAeLDjJL3t/lVySBtHgaDjkKJM7Y30TjWW3T4DQuBFEH0U+O?=
 =?iso-8859-2?Q?mgS4NbXsY6Ht+EHCWOiw+/6QKXy55TwN2xjgo3wyfuEsUMNMqjtlqcQnav?=
 =?iso-8859-2?Q?MqWk7m3bKvge7p1ub5vqjjYwNbcMIoDhx0+zPxRGmoQv/sfR8tOUyDqKDP?=
 =?iso-8859-2?Q?zq14Pd73V1nhwxPNPbjcx/AD+E45AIT6qNE27bJEmOCUN1+0E6FP6oCmTd?=
 =?iso-8859-2?Q?LSH3hloxBahn+tjcKPMBTFu4NEsuJoZWP7DiOaAQOBrWYD8v/tSpZeYLuo?=
 =?iso-8859-2?Q?ASc9+Ro7IASVjRZzio/9qYkYk72N4YUYyOsSqVCavtHVI+0WzLaXsj1BcE?=
 =?iso-8859-2?Q?q75H4EyRKJ3z/ywvTR5DidHucdjFGDoc4oX6y1CRX0ZxBTV1y5j6iTcc3b?=
 =?iso-8859-2?Q?nU9ShOCicW91gXi/aUqgbwUDrgS89AqI8rGckJkq2tTxXcQvRV22qRvdfV?=
 =?iso-8859-2?Q?YmXTG85FoPhr+IC64IIZ+9PfnuBCtUi09RHiQc0o1dPonNvrlEHd38zIeg?=
 =?iso-8859-2?Q?5vtKPJIozKdJ+i7r4KZrbPI5ZK30jcEyNw6PegiyrjRoH+ie2hBpUdWioL?=
 =?iso-8859-2?Q?tWd4PuvP+ETp6p9RI4QkEDHRDMUTMnVMF4Gz4DDd2XFwos5sBYE70NiBNb?=
 =?iso-8859-2?Q?PbOt/YJJH34tMENDclrUznRCYTELbZTnu9MzynDLyEQVaiz0QGxrW/2IBB?=
 =?iso-8859-2?Q?Oyj0K82JjObbPje9LKZzSHjIbrbDc1O1XlTUZEa1onJnq987b8cjbituTt?=
 =?iso-8859-2?Q?Co4RQFPeP7EU9rhGK3xPwBvlN8LKKLP5OFuGPcBt05HTDr0PIsc7TlgYlM?=
 =?iso-8859-2?Q?1yjAVm8PFmN0rsCD4HOSfrXeQcykCFcRFyqIp/fYb6UboisR2TwoRuF+A2?=
 =?iso-8859-2?Q?CCZVVBjpbCa9sFUlsk+GHMrirrhKrMbnJj0e5Acn9sul18wjdFGaWXWasV?=
 =?iso-8859-2?Q?AcJ3M4Psp3qXJn4LIyZ/5qlMwUlsrvHlcxWN5DTwu+oZZ6vQJlj2EXr6wg?=
 =?iso-8859-2?Q?kY3aYhUZFZ9wow1T+PM0ZCUdZiMONfykEK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1524d118-f96e-442a-f992-08db216a1a44
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:19:39.3566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b9L2gYfsbtFHS7SP8X9yw9LY0ykB/Cr6XFzIvWtMpg02ueCa+PGj4VFYPYCFAaRJElp/UM27/3moHDUOLLZhHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454388; x=1709990388;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yHVMYHTyMxacxJchKKQXoe6dWdoaVXtYsNuOREtulio=;
 b=SGdjHeoP1h7QBI09p2N+OoLgBvm5bx+MXPa4s97Mjpoh8d04dOoO8RM8
 tV5nR1XFfIteaAWiVz+9/JXsDAr4qZu1ZkvjBQr6KigD/xl757pxoQ1rh
 20MdsOZaD1tY7FAcYbKXOhiOO6f71T6fStqjfblUElqcLNFtKmmH2n1Ja
 a21GxdWcUxJwNNrVDQMptmxNGpWxUuWO69bxfcIajjMdeFNbWRU3riU6F
 Efs6y6SpsZB0BXk/QyA54L2vOn+EXyY8tP1hFKZkJDs1eUMTajHtedh33
 UlcFwQjgRw/jDpwLcmjlQfQnA0ormgY5RaB3B9xJNFRXI3wm3rGLaqkRv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SGdjHeoP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 14/14] ice: call
 ice_is_malicious_vf() from ice_vc_process_vf_msg()
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 14/14] ice: call
> ice_is_malicious_vf() from ice_vc_process_vf_msg()
> =

> The main loop in __ice_clean_ctrlq first checks if a VF might be malicious
> before calling ice_vc_process_vf_msg(). This results in duplicate code in=
 both
> functions to obtain a reference to the VF, and exports the
> ice_is_malicious_vf() from ice_virtchnl.c unnecessarily.
> =

> Refactor ice_is_malicious_vf() to be a static function that takes a point=
er to
> the VF. Call this in ice_vc_process_vf_msg() just after we obtain a refer=
ence
> to the VF by calling ice_get_vf_by_id.
> =

> Pass the mailbox data from the __ice_clean_ctrlq function into
> ice_vc_process_vf_msg() instead of calling ice_is_malicious_vf().
> =

> This reduces the number of exported functions and avoids the need to
> obtain the VF reference twice for every mailbox message.
> =

> Note that the state check for ICE_VF_STATE_DIS is kept in
> ice_is_malicious_vf() and we call this before checking that state in
> ice_vc_process_vf_msg. This is intentional, as we stop responding to VF
> messages from a VF once we detect that it may be overflowing the mailbox.
> This ensures that we continue to silently ignore the message as before
> without responding via ice_vc_send_msg_to_vf().
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 36 ++++++++++---------
> drivers/net/ethernet/intel/ice/ice_virtchnl.h | 17 +++------
>  3 files changed, 24 insertions(+), 32 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index a7e7a186009e..20b3f3e6eda1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
