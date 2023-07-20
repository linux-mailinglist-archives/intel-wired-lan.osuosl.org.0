Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 630E975ADFE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 14:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006C68213E;
	Thu, 20 Jul 2023 12:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 006C68213E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689855191;
	bh=Xzj99xzaqCoI1mbFYcfI9MvXdIUH2RndRROwor78iZg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n4D7c42Dcv0n1D7yU7OsD5mZs1uwopNhP9vr+5IocagCnaM5pne1b6h5fKK0c5O2/
	 TOiIDNl4MPu9W3qxEP7ZhZV5C74X0Nsthxg8bMZOEolMQtFOxMoBVeBmi798ukEaPQ
	 +/m/Xb3Ima1iAyOclOWXwitnHRMn7S0Hs8sO1cILYtCsA2/1+H9smcfJz7kJ0Xcr3K
	 br0TTZ7DlDqavUYahBDJlyxcl9x9SO+JaVxitwDdObtc/bTwMzl01kRaM8+xs9l/Tg
	 0WUJie4n6/hWnyGB4sOBGhCjM3SxLIeDGED7uvxeNBvfevJyFK3/Qx3MA1bwudg4Vc
	 sDl2PHVp+2Bgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UXnGVWxmL3q; Thu, 20 Jul 2023 12:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1DE78213C;
	Thu, 20 Jul 2023 12:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1DE78213C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B84501BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D2F341AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D2F341AFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zsF_wG8aKKp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 12:13:03 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 990B741977
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 990B741977
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397587389"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="397587389"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="971012342"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="971012342"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2023 05:05:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 05:05:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 05:05:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 05:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCN3Q4sgcbc6J8JfsiSh5qc+P8Qcf6VcZ1BALJkEyP4XZIuSvI19qS/Rsc5VqKbSY3SnimRV4Hs3O6jwHiKCBHkuif+g2XcBZ5UPq4JPM7ODjHYf96eUdneeONmHZQdDCS6Va6nOPLWxrxuHo7hQF0I0BuCDhpWqvXlDiXXs/7TxZa71DDY56eJsrZZPesDad6e7DbopGPqWMm3/od5iF8aCQY6yfLk/+buLvf75RUujTlJhWLGmnk+Cswapd6uWVPdYVglSbEBXiunjK39mY4u12E/kLa/nzC+NNqSJ2TO6b26HnXyayGBSklU0qL0zxftguKiRplBMYoOGoGZR5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJAESmvCa7j8kSN3Mdm7zKiqGaiyzvHqVA8Vf0a5RPg=;
 b=c3+apRTKsWCwIZr5j2QwYoZjkboOnfZQ4qPnoV5qURnbSsE7iLSU1hZeMT5rPEf6uelduwhV5GbennrL1lBcuFQ2Fi/UhueipCLxP9e6p/XXm15D/utWfgveWuIFe9TS7bbdpstgT5MPRJcTw98rRca+vahUf5C5MbQjY40Zv8z/9BPerzJF5q70kRNOQje1LV7h0+kbHkhSKgXNOV1ok2ZGbnQzsAbrTkPhm9xp4QUShCjtImw7q96BSssV+uX8dIAGN/FSPTSAQJBTF0kf7G6A/6IdzcJmbccrkMWss2M0i0yJ7nKZJIApnPSpm74hhyCyX/5DmjuGDQhXdCbjKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Thu, 20 Jul
 2023 12:05:20 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2b55:774d:2fd0:59a9]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2b55:774d:2fd0:59a9%6]) with mapi id 15.20.6609.025; Thu, 20 Jul 2023
 12:05:20 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] iavf: check for removal
 state before IAVF_FLAG_PF_COMMS_FAILED
Thread-Index: AQHZs28DfTXcQTzgr0SLUGu14XZvPK/CnfJQ
Date: Thu, 20 Jul 2023 12:05:20 +0000
Message-ID: <BL0PR11MB35212A673C418686C0602B658F3EA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230710204128.34847-1-jacob.e.keller@intel.com>
 <20230710204128.34847-2-jacob.e.keller@intel.com>
In-Reply-To: <20230710204128.34847-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|PH0PR11MB4776:EE_
x-ms-office365-filtering-correlation-id: 444d797f-aaf9-4789-bcd5-08db891996d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C8IxWIUK7lDrbbCL2tOLP/j48eg5PcrilmhFEGWcjccGHbDVwZmOxDGn0I14dgBE4fBSqnkYZN+5H4gKFOCZb0+yr2Vr3lHkWrRdNAQkAyWLmG4Wu1P7QcvLPpX2Ug1YnZLv9u7NehcYZq+1cb+gTHMSl5de42M+J63QMDq1ZX0olpPZxpIbO1e+HFrJnOGsHAOkMI95ahJjWY7S0a0t4OXB/Ne5OV2lFdhR8iKKtl8GmXb0/1QJdEzMAOTwRT7BVjV+e1VwtRaAvt4JRcHxupvCgwrPv0YSITULIdxsrVvcIl9wjlnEEb5tJJY9NDPDsxaK3+6wp68bhvJK7rC4zbX8DaSfgSzdQ/eQlbB+1nXeY+gr1WPUm1c6aLLeN7VAu6WQZHp2mGML3mGGxdbJJwVI4PhR3bsv38C68zT8HHHschGzXbAihXlb/HGeGNyWdux+wfjS3jpuxCrpSpC85XtxQucQs1zn6rPS8NtqgwLxKRp46Z9XBsxtmHurBPUmL4y1ybH/n5UXmxROojgDcBP2vc4x+dDPdXMaPnaa+qOCA0LSdmXFYCGkjB+vTSqRw8zkzztqBXwxHJpyRIGoDS+ak/h0B9qqIejtndkDWxUFla72f4To4B8shTOsRddN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(316002)(76116006)(66946007)(122000001)(86362001)(38070700005)(6636002)(55016003)(38100700002)(66446008)(64756008)(110136005)(66556008)(8936002)(66574015)(8676002)(26005)(66476007)(6506007)(41300700001)(52536014)(9686003)(71200400001)(33656002)(7696005)(186003)(5660300002)(53546011)(82960400001)(83380400001)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Oppk8FEmUHz7EUHHdEy+SY1wPDi97P53G7ZuLm0hXdkdEacBstVrhOLudN?=
 =?iso-8859-2?Q?xBITxazQsJtmCM4tOOdbxw9ru2g7baKrDUEQMNvEUcj837RkAN/WoBlWIF?=
 =?iso-8859-2?Q?mutIzhHIQqTtBsFk61h4oy//Dfw+4J8MQWw54cBXkELQnab4ubsuctZ7SU?=
 =?iso-8859-2?Q?Jm6ktEpzh8ctYBDpDJ2C7+E9KogR8vfLgEWrRNxT9MnFbIsZ9+ilWTu6Le?=
 =?iso-8859-2?Q?5/N8Ox1hD0/DymVsjl4iqK35g/toDEihpqk+MS83lh9+hSie0u5wO1MqQk?=
 =?iso-8859-2?Q?G5ZbbZHVazUgGw4/TELA/AivrC9UGj77Qb2+/Kk6R+2wqTRSBqdVHee9Cm?=
 =?iso-8859-2?Q?NZkSudh9xM/Vi2sA3MzKOtgv0A8vNmkYIEiYgVrCsS2J7Rbwon2jJ+JGMB?=
 =?iso-8859-2?Q?YxfONp9doofqOHhLJQ9A5h7ypwDRIgy2c55Nws95te90FFCwVkTURTGzu0?=
 =?iso-8859-2?Q?q9KuXhRFm4aLMvudAHINUPKVmtqWI+YzDiWDGdnwO1WUqZpYsG+KRPeUhI?=
 =?iso-8859-2?Q?bRxT3gF/82XDGovHgc6wTaPiMjdfQ1Ixjn+HhvkshKVDNm7hPZc4HxBDYC?=
 =?iso-8859-2?Q?i229fzZB390yZ061eOs+QYFKZoW0J9hw2z9TbE1v4BTX5n6Ay8HMCKZRa+?=
 =?iso-8859-2?Q?E9toQsVN11SdwuJVgFX6oFljixGMeLc+Ej3ykOChVJSP5esAi0nsaSOuPo?=
 =?iso-8859-2?Q?6fxkO/pjVaDoS77iU5LeED6b2Fq63yvi4I94iBOq7SaSYY3Mtm+Hvaos50?=
 =?iso-8859-2?Q?aDn0vvsmrYej9SWbpbj4W3G9tb9p62XzmJEUn5QFitOrcqFkGiTq8xdvSv?=
 =?iso-8859-2?Q?ivqM4emFkqZ80NY7kel2rNx2CPxaNoGQN8QSEP9ls9a2bG3AlQ5Sr/nPxp?=
 =?iso-8859-2?Q?n97jCMXh+aPoYjBxruSe6167u8zBj9lQcTWaLBqlAMIYjjuJdKrQWjs3uJ?=
 =?iso-8859-2?Q?CpN8NQ6PPUnBtGuxxB8dI70evbU6Vp64ejby+2la3dvYbPMAnTM8QiwHWS?=
 =?iso-8859-2?Q?PyIEm9MTsrMFDtRfULs4G66q89d+lb5cfQfCpLGcJbKgsnhwP1eSdhWHYR?=
 =?iso-8859-2?Q?T5CAKnZYT+HsmunujTqh6w5kxuQLG45bpwhjQVhTggj7kfN45/n6hcyQ4Y?=
 =?iso-8859-2?Q?MjzsZbg7vOIulawwIWJp0lxF6NDZlZohErE3NVsf5F97vebtHaBLm14TjX?=
 =?iso-8859-2?Q?cpypXYfcjPCWbHz0q7GodW66aYl3Q5AoSo8LOHPJglypgnFuFjYDvVG/nf?=
 =?iso-8859-2?Q?KKucPXQcceLjIagLPl2TK4CzzXmFsLibVHrE36f30tejSQMVXn5rupJKzF?=
 =?iso-8859-2?Q?1cLuXD+jP0iECzsSUq8zCdZVttOsT1/uNXXtAPjw9LYzN/obbQyWF9JPjQ?=
 =?iso-8859-2?Q?iNwhZRzQ1MtwZfFdkl2cRBjYk8k3UbwKMltlZnMIDeHDjoboWbJ41cJUNe?=
 =?iso-8859-2?Q?K1LZJrIpvI/A06prqY79W6d1YTwfj48+1ppMXcPCD+2p0fabfAZM+lyv9t?=
 =?iso-8859-2?Q?DCl8xf4Z99Up16tvhe4OXVN4LPzlLXLtleZm9HvnFIP4Ry24sQ33v7bad4?=
 =?iso-8859-2?Q?4NEEIz+V57v95+KCWlL4tL3xTn+NMfSXOSnnNjVxq0r39SLxHqwjqfDlJI?=
 =?iso-8859-2?Q?2PTLu94m6IZSKph4K4gQHvUrZbfCym6IDr1upKmf6nxTpe8JfWRy5WAA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 444d797f-aaf9-4789-bcd5-08db891996d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 12:05:20.0368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aVLiIORnr9L8yIs2EEnTmuUY8qEWiuNSPE23JjnQ9UysfXlzKNE4X/Dtmf417yZAFEdoOEiqBWe78Bk9oeqkEesfB5cvTA6lQ03KtyYdxF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689855183; x=1721391183;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qqs/+o9QtlDMmsZLUStieHKTQWK59p9yQgdMcWg3h/4=;
 b=hkRLQwNpw7n6P7OL3fWrNnxuLJTNRq8fECpGtkdNEUYROLRqo55aNE38
 Gal5nXmYare/uslx3m+QFRTTaQGWIC5AOB1W3TKyNBRloPEOwxTzXF+4i
 cw9ELEicKSw1aEYOsL0Eg66mOCg7UonUX5Jnw/tR8BjAxFo7A94zE3Lq9
 x2pRPN2fvLuU6ZEO7xllNulWy88AqeRYHmC7HIyA5D/udPoOWhOrRKB+A
 ItngNL+vnp3sQ0D3s5pttY3ww2wFKYM6usjVBJ72EWZep9XGMVF36ACpo
 jCOazTgvARqbEn37UlBU6zukbRp9vU99zPPF/OVOh0+qqqUFYhKu2Q6ye
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hkRLQwNp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] iavf: check for removal
 state before IAVF_FLAG_PF_COMMS_FAILED
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
> Sent: poniedzia=B3ek, 10 lipca 2023 22:41
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Chittim, Madhu
> <madhu.chittim@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] iavf: check for removal st=
ate
> before IAVF_FLAG_PF_COMMS_FAILED
> =

> In iavf_adminq_task(), if the function can't acquire the
> adapter->crit_lock, it checks if the driver is removing. If so, it
> adapter->simply
> exits without re-enabling the interrupt. This is done to ensure that the =
task
> stops processing as soon as possible once the driver is being removed.
> =

> However, if the IAVF_FLAG_PF_COMMS_FAILED is set, the function checks
> this before attempting to acquire the lock. In this case, the function ex=
its
> early and re-enables the interrupt. This will happen even if the driver is
> already removing.
> =

> Avoid this, by moving the check to after the adapter->crit_lock is acquir=
ed.
> This way, if the driver is removing, we will not re-enable the interrupt.
> =

> Fixes: fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6d2f647066fb..f329f81c793d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
