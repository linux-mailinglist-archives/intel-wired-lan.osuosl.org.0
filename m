Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1BC494311
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jan 2022 23:33:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 500054095D;
	Wed, 19 Jan 2022 22:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4fvCyF7ih9Da; Wed, 19 Jan 2022 22:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B6A540907;
	Wed, 19 Jan 2022 22:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 758541BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 22:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 602BC823A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 22:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzKNWie7YQiq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jan 2022 22:33:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 613D781C04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 22:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642631594; x=1674167594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ui0jFl75SC3LbuspwO147BpIw45PcDInFiMQVXMTYwA=;
 b=MwMN+xpl1zjX4m63Q8P9HKhHpZdEAz9OmMKqxu8DqvsQNwIwsV6oiqbR
 AgdrOdWzyW9OUVNOPSbjCYo9QqJbebRO1zTIGwXCzgwq4ZjKXXUATHh6a
 417JCH5Z67iVDNUc/h07yaffr9iTseG+XbPKJ+DyMHlWLIsCkuGXr14ca
 kseX//i2925z9vol4W/XZOGXv591uQXzebeXQnno1xC1jDuuZrI0MsXM4
 BECxs/RZZ2FvFUX7CbveuNGrBdleHF3nBIcpVYT6QbV4/JsxIBKcQgsG8
 knzcOnquoX0Rlf2WcAKTb0bmWjy6YMoRJyBbmlr13z4AbJT7u6l50qa44 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="232575813"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="232575813"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 14:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="578992447"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jan 2022 14:33:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 19 Jan 2022 14:33:12 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 19 Jan 2022 14:33:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 19 Jan 2022 14:33:12 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 19 Jan 2022 14:33:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdLz1n+DY/txHHNotoOKamBVhTtFssWYlxyjwDvvinAuL1i00M4iMGfOd5PMukU8+/VpWVHenydx3Z9RHWcm9ZRmoY0puMoybBFFjhRgXXFGgoyCqf3CKa1aQHpna+eSW8BO3ied1j0JkyRlHzuvFAJvm8eSs/ety/TVur/0/3PzBYeYA9OnPdqgUH9c9DgYPUVFwFcOjicB+u1UgMG3oJO7fWiVF29vscggS++bS/wISa5cRjfDHslXMAENPm+wm+K5qJZRmvgA9Ya5XlhkPagB6QAzcECl8uQeUxaTNc7tQ38OmRrwNYeqPo6qSeEPfhRWCIuTmLffxU+yej5ZjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ui0jFl75SC3LbuspwO147BpIw45PcDInFiMQVXMTYwA=;
 b=QRyxHD8vnW0Xp/xH2nDK0cJ8l0Ab7esK3wDDhAmYL9vcFsP42ujvV9LovR/FW74YIQ7tgOnfGcOdTwJ8S/QrtcWYIt+IuhiirPPMtpndI6fMq30olhiJBLanG473WJPDGtQkhbs0/OzGTTg0dBagPpwlnVCwN23Khr5KllgA2ycu3gu7eTEjbO2t6q6Xp2Aw8xat/Iv0jWhZnIaEgl2Cg2h7wTUnuhayiHXi9dw0S6b5OQ/tOqkPusWDyfe/8L8AJJm2EcIBa6WzFxXaAf6czMQmU810jZLyvycxDX9jx/NlfqWnpjtx2A1RtrjWHe+yYbeL78OpKuWTS39aiRCfoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BN7PR11MB2657.namprd11.prod.outlook.com (2603:10b6:406:b1::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.12; Wed, 19 Jan 2022 22:33:08 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::a0d2:ca74:e0f3:7b5]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::a0d2:ca74:e0f3:7b5%5]) with mapi id 15.20.4909.008; Wed, 19 Jan 2022
 22:33:08 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Vadim Fedorenko <vfedorenko@novek.ru>, "Machnikowski, Maciej"
 <maciej.machnikowski@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH v5 net-next 0/4] Add ethtool interface for RClocks
Thread-Index: AQHX7c5gkbjtdDkUvk2JrP1IlaGkc6wr5xQAgAQ7IwCAA0az4IAAwXAAgAGsOSCANVZUwA==
Date: Wed, 19 Jan 2022 22:33:08 +0000
Message-ID: <DM6PR11MB46578F4AEA8EF56A880E542B9B599@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
 <20211210081654.233a41b6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <MW5PR11MB58126A8F6466A8EAD1293D5EEA749@MW5PR11MB5812.namprd11.prod.outlook.com>
 <DM6PR11MB4657CE134223B65B5F2EF5F29B769@DM6PR11MB4657.namprd11.prod.outlook.com>
 <4d4f5c27-90a3-c411-ea2f-e6f44ec74148@novek.ru>
 <DM6PR11MB465758ECC87273A56CA2826F9B789@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB465758ECC87273A56CA2826F9B789@DM6PR11MB4657.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed7d47e7-c75a-4558-6502-08d9db9baae2
x-ms-traffictypediagnostic: BN7PR11MB2657:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN7PR11MB2657797087E1EF664D3B3B6E9B599@BN7PR11MB2657.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sklkkRu+cpRBAHgZ7ZEJ69bx2QANPIJVVfDLgTSUXcTJ3plwQT5hwhcLEoFwX7KJH+HrOqLSBPQl0ax5+RXz3XX3nbzE+4XTyZCcyURuevDNuXfA/O6lTjf5hQhe5Ot/0j1MkNq5SjX0Qqq8KVvP/N6hCg6oPHVZHY/ZPfQHIWC73eES+rzed7bNxYLupXpJLkwcjX+9W/CHh0KIHNmsdrxhwl03PJh0HLrVACFQ8IJ9M6pTGe2fQbsHG9/pRQm+ZbIjii1Wsjo5zzo2uvo41xHOOyAqA+HgdhM9Gkpu+SWiZqYMUApb0kDtumqNa9M+eZDX+tTZmPzgBez0qmoMSDcDDcB/YWCDESCsAr3qBoTbCjo/YZZeFRkHiW6GUKC3oPcJaGnnMv6jmLR8W5iSPacoE0sRGhNgMRIf3a+FW2ExRQTNCKoSDHGSedgSjJEYV5wtq8H6z9A9GleIz6CC5eyinHzQF0//HomMS8XzpTF+wN46lIfzoeKB5c1yqc6UKoP55j4KjDKAYykayLCCgVd7A3KQ/oMus4HYES+E/A70rNZ048NSdaKIqngHxDB9uF6WqeEE5e+C5Nz4EcW6tEa5mRtIZjnX/XzP1uOdqD8A3GgNdUPUyjiqs6+qy482uwM707FuIb63ZqYyfqBjEe1VL/pYX6y1Mgcx007QiwZwLDrxvyBRprJL8yCJvzlqvL7eAN9aLcZXRqBI+LACKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(26005)(8676002)(186003)(5660300002)(38070700005)(7696005)(55016003)(52536014)(8936002)(9686003)(38100700002)(86362001)(508600001)(4326008)(6506007)(7416002)(53546011)(83380400001)(122000001)(76116006)(66476007)(66556008)(66446008)(82960400001)(33656002)(54906003)(64756008)(110136005)(2906002)(66946007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?+IB7T8Bh72c2WUoRIMJpR4bicDtR9L7Oc2sF3UtfqZN56/XJaTDDwjtZJ8?=
 =?iso-8859-2?Q?V/uyCHKinA05E4sYFC2xdL+VS1Tn5KDOuVKsybSygQLaQ7tPUUYy/rWYYt?=
 =?iso-8859-2?Q?pkRbyTnE1VUKJhrpcG3fJly3iNSaimAbIJSma5pGoL5N2EkaPAnrxXXLGa?=
 =?iso-8859-2?Q?LdPY7d60pCfcHeY+jlun0m/m62uIRawhFa17r90W8lwePRjf0WoGjW9nD5?=
 =?iso-8859-2?Q?Rt/qkeX7haMXi+dacH7XusXtzaTQWcCItPibUG3PvAkZhKw0py9sWbitZg?=
 =?iso-8859-2?Q?GiP0ZpmTqxI4slQH7dgIA3LvtDGwCK6UdnUgCvrn/ITfqzOCV3YKqudtZp?=
 =?iso-8859-2?Q?BimveUnHG6kP+W+mrPwJnL0FSsdRv8WV0Lz95eGpAcUj8meXl56PZXAKp1?=
 =?iso-8859-2?Q?tt9X1IClUduGRFsYFzoVafl3tQUiKl7LwmHSaBnAidi3FImqP85oReXbff?=
 =?iso-8859-2?Q?8QXoOr4zoeCi//+jyY+DvJss4SxMQYwkIVtgzV4oHpfT9IxOWA9TflWfq2?=
 =?iso-8859-2?Q?rKV4+6rA+p+MqOwUDMBhxmoduwqMKHS3kbRLg4ua/pZM0v0D73PBWn1BiJ?=
 =?iso-8859-2?Q?FVZB0OK2Rh73TfWzNO3Lo11NecNOR4P7ERMnAvUZ4URNR6SdDiuDhvzYYD?=
 =?iso-8859-2?Q?BZCBveuBfbhsq3wcrffNuPRg8woYihJ0bOhdly2+BchXHN2KpqRc3IdkRM?=
 =?iso-8859-2?Q?q9L7f8V3dDXSOYLzUTjggKC5HBDbSYiRdujnBtKe0PsRDLS0twPTNEN4K3?=
 =?iso-8859-2?Q?sGQC3/w7Z8HkDyu5vdDYueZhzn0jkHqYH3g26ogs12JyFCjoLTx8bSN1lo?=
 =?iso-8859-2?Q?sx0RGrlMFW+lU/pDQ3+F3LvmLuKcMP/qrdqWrJ7J0iyYG+gSDHp/FrtTcf?=
 =?iso-8859-2?Q?d/OOrQaIIjnSJaY0rnIg8L7x4j75oheOwfBl/NpSX4S0ihl/rQjUNWQhGU?=
 =?iso-8859-2?Q?YH5hKaFU6qYZNCFvOSA6Uu9E0mD0xcS+KNwbxLx7eUvhSmjyVzw7ZMUSb/?=
 =?iso-8859-2?Q?aaN5HgxyLzamp5sJOC2MHt2vNhxl9WCAkf1LtYOcRuHFJEd4L1moN9Q37f?=
 =?iso-8859-2?Q?sz8BCVGXUB9wJFBvB5t6nqWsL95Nk4R/j5g7BQogxaCGXU3eHYgPaKWkIh?=
 =?iso-8859-2?Q?r/2lubK000pBWAR9o4cSbmsjZYk1oyhM8BbQsHa7Q/iENG72O0wxNIe2PR?=
 =?iso-8859-2?Q?afVYy7LuNMM7NazlgN/s7WIFR8wxJ++J9IHUDrOp2MHZVZxKy4/dnasbmz?=
 =?iso-8859-2?Q?rVjB8JE6eF3IcnCh2nzzrwN+EpgCdD4hNi28IeWile4C+yZp3wTL2W0K1h?=
 =?iso-8859-2?Q?VqbpFYZKLaAkaxwEfHnxWjulzD7JSpRHMIztt/zFko5rFSP1MiCpAwwsJq?=
 =?iso-8859-2?Q?JvdvW0aSs+7D7E0ieJI/baIjUWrC/y58CgjObplTPPnglK5/+xDWnp9tIa?=
 =?iso-8859-2?Q?wtRzGto3DVZf5RZcLlH3zNM37vlCjMZ9+/xKxNLMRNbafrsMwp4OtKE/oW?=
 =?iso-8859-2?Q?oA60fm3A3zvsjagopzoaN0+cJJI1tPMm22MOhMPpbEykjyAhNervELx3mf?=
 =?iso-8859-2?Q?mtLDsapfS48FjL4QISoi+o2ha+jAkoERg2bES80Rs9t+EuapV8wj8k1KAo?=
 =?iso-8859-2?Q?8MtT7Hd6MuUsB4GpVtYkPiHAJvV2vgwXYbtxE8fTLDw3MH3nYNbnK7yxu/?=
 =?iso-8859-2?Q?nxQFHOgnBDpLxnE3rNVoTacPhHETH0prx/j6PA+DWE+IrtE5s1CV9CjcK7?=
 =?iso-8859-2?Q?PTOg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed7d47e7-c75a-4558-6502-08d9db9baae2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2022 22:33:08.2388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YvYg/jLjaXATGcpfTZ+B0YVZb4c+7lhj9eEe7nCHUahM9b07yxPx7v2RMGwv5jRMpsivxiLBJDpa0NWqCbvVW4iGBN7SvO7okYO8FiRyx2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/4] Add ethtool interface
 for RClocks
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "Byagowi, Ahmad" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>>On 15.12.2021 12:14, Kubalewski, Arkadiusz wrote:
>>>> -----Original Message-----
>>>> From: Machnikowski, Maciej <maciej.machnikowski@intel.com>
>>>> Sent: poniedzia=B3ek, 13 grudnia 2021 09:54
>>>> To: Jakub Kicinski <kuba@kernel.org>
>>>> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; =

>>>> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; =

>>>> richardcochran@gmail.com; Byagowi, Ahmad <abyagowi@fb.com>; Nguyen, =

>>>> Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; =

>>>> linux-kselftest@vger.kernel.org; idosch@idosch.org; =

>>>> mkubecek@suse.cz; saeed@kernel.org; michael.chan@broadcom.com; =

>>>> petrm@nvidia.com; Vadim Fedorenko <vfedorenko@novek.ru>
>>>> Subject: RE: [PATCH v5 net-next 0/4] Add ethtool interface for =

>>>> RClocks
>>>>
>>>>> -----Original Message-----
>>>>> From: Jakub Kicinski <kuba@kernel.org>
>>>>> Sent: Friday, December 10, 2021 5:17 PM
>>>>> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
>>>>> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; =

>>>>> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; =

>>>>> richardcochran@gmail.com; Byagowi, Ahmad <abyagowi@fb.com>; Nguyen, =

>>>>> Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; linux- =

>>>>> kselftest@vger.kernel.org; idosch@idosch.org; mkubecek@suse.cz; =

>>>>> saeed@kernel.org; michael.chan@broadcom.com; petrm@nvidia.com; =

>>>>> Vadim Fedorenko <vfedorenko@novek.ru>
>>>>> Subject: Re: [PATCH v5 net-next 0/4] Add ethtool interface for =

>>>>> RClocks
>>>>>
>>>>> On Fri, 10 Dec 2021 14:45:46 +0100 Maciej Machnikowski wrote:
>>>>>> Synchronous Ethernet networks use a physical layer clock to =

>>>>>> syntonize the frequency across different network elements.
>>>>>>
>>>>>> Basic SyncE node defined in the ITU-T G.8264 consist of an =

>>>>>> Ethernet Equipment Clock (EEC) and have the ability to synchronize =

>>>>>> to reference frequency sources.
>>>>>>
>>>>>> This patch series is a prerequisite for EEC object and adds =

>>>>>> ability to enable recovered clocks in the physical layer of the netd=
ev object.
>>>>>> Recovered clocks can be used as one of the reference signal by the E=
EC.
>>>>>>
>>>>>> Further work is required to add the DPLL subsystem, link it to the =

>>>>>> netdev object and create API to read the EEC DPLL state.
>>>>>
>>>>> You missed CCing Vadim. I guess Ccing the right people may be right =

>>>>> up there with naming things as the hardest things in SW development..
>>>>>
>>>>> Anyway, Vadim - do you have an ETA on the first chunk of the PLL work?
>>>>
>>>> Sounds about right :) thanks for adding Vadim!
>>>>
>>> =

>>> Good day Vadim,
>>> =

>>> Can we help on the new PLL interfaces?
>>> I can start some works related to that, although would need a =

>>> guidance from the expert.
>>> Where to place it?
>>> What in-kernel interfaces to use?
>>> Any other high level tips that could be useful?
>>> Or if you already started some work, could you please share some =

>>> information?
>>> =

>>Hi!
>>
>>I'm going to publish RFC till the end of the week and we will be able =

>>to continue discussion via this mailing list. I think that netlink is a =

>>good option for in-kernel interface and is easy to implement.
>>
>
>Oh, that sounds great!
>Thank you!
>

Good day Vadim,

Hope you are well!
I have been trying to find a new RFC on mailing list, but could not find it.
I guess, it was not submitted yet?
Could you please share your current schedule for this task?
Or maybe we could help somehow?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
