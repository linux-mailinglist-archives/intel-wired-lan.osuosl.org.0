Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 706B14E80E1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Mar 2022 13:41:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25BCE82A29;
	Sat, 26 Mar 2022 12:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0g9hNBeqkHkU; Sat, 26 Mar 2022 12:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CAED827A1;
	Sat, 26 Mar 2022 12:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BEBF1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Mar 2022 12:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43FCC415CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Mar 2022 12:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lys_DbSdoQl6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Mar 2022 12:40:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2920C415CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Mar 2022 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648298452; x=1679834452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3xJ+gxB+pRqjdEUBxd2umai1P82m6pDk38GyO8IA5FY=;
 b=Bl/Dc09UUsoiUP07QASqwWySXADoCuP/947T8k63rxh7P2ED2RpliGFk
 PgJsHpZPBxj7hY6dscVLngVyPkGN0T7UHXPv/4i5knBcm95RcJCR/su39
 0ks7i4CvqfPtaS732f50NgOGNlcNt/Wng/qA/ZZ0RtRiIvDxhrmYtB3J7
 yLm+rWvE+JZrTNairfLAGBEIAI3yHq2lyXCTHGomPhAnXYtUFdUtrZ6lO
 GzhL10z1xlFab2SrV5iKmfBam+80YMXjXcmw0ycfkEfSJubwgR83jha+/
 cSMf4lSVPyykv7bRN//Sm64spyrFJuOlzl7DeH2095Rw6V2JU4tiF0r8q g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="258496568"
X-IronPort-AV: E=Sophos;i="5.90,213,1643702400"; d="scan'208";a="258496568"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2022 05:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,213,1643702400"; d="scan'208";a="648537485"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 26 Mar 2022 05:40:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sat, 26 Mar 2022 05:40:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sat, 26 Mar 2022 05:40:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sat, 26 Mar 2022 05:40:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQyPvbkjoT95lROiaWgZWkSTa8FeXuSDO1jS/2QtDzPvw/AW2tyqRNjnLScJBEs7takshlQ6WxclFD7zaQlwwjrqoqQ3qTOd/+NqnWW8lqmoXQQ44nNkUrzAJpCzAWIdi0ZXJYUph4wH9/IiCsE6XwwXzGcMNOpbGKRyCDgc6gJd2SMrAwQEXUfDDjalmsITzkUPkbcKtaUg2DGql9XPREKQuKTNx4ukrvsQT2eBom0DlnT7+8juX0CqYHBqOrXTpNHRCg1ZytU02ddTAMGfYC0gPahFWvFfs7RrR13ZoLPbBpvS1qtbpzga8yjAdSdgx49w3CYeQkd5zzMmNI3Y9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xJ+gxB+pRqjdEUBxd2umai1P82m6pDk38GyO8IA5FY=;
 b=g85f5NGo4CUbp2+HMhGsredQnZRnUTMR+RpqlK5YqWbJgqPrzUuQgRt2Tk9g68yN87nQBWGW4xcwK/4qKOi3lWivob3rJdni5JRRyCYD3/+Giz6EJ2zBNZRjF4QmZpSRmhjUh/AM8gG4JU8DcuqmlMqIdnqXv0g2HgGyaFOpaaw5CNhbCBvolu7W73o9lx89k/GKYLaZEG/1FBmKVwH8oObHP2j8P9SpTieWOdNwd0gRPV4fYHRZ3iSbsw3KGDB7CGzRMoes0wzGNZDbJ6tK497Nl0qSlsc8QIe9m2DHVZs1MD7kRbgKFCyeLtdpfo/+K2Q3jNXoo7gSC3JGazbT7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4268.namprd11.prod.outlook.com (2603:10b6:5:204::32)
 by BN6PR11MB4083.namprd11.prod.outlook.com (2603:10b6:405:7a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17; Sat, 26 Mar
 2022 12:40:48 +0000
Received: from DM6PR11MB4268.namprd11.prod.outlook.com
 ([fe80::7155:2dd0:f424:d146]) by DM6PR11MB4268.namprd11.prod.outlook.com
 ([fe80::7155:2dd0:f424:d146%4]) with mapi id 15.20.5081.025; Sat, 26 Mar 2022
 12:40:48 +0000
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next] ice: Add support for
 double vlan in switchdev
Thread-Index: AQHYQDNh7pxL3Du/rkGteCyvrSL3BKzQj56AgAEMd/A=
Date: Sat, 26 Mar 2022 12:40:48 +0000
Message-ID: <DM6PR11MB426896E5EA49880819851D19BD1B9@DM6PR11MB4268.namprd11.prod.outlook.com>
References: <20220325102922.3320-1-martyna.szapar-mudlaw@intel.com>
 <06caaa26-d0ae-989d-d55f-6535ba30a117@intel.com>
In-Reply-To: <06caaa26-d0ae-989d-d55f-6535ba30a117@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76ed1bb6-c157-47f3-fec8-08da0f25daa9
x-ms-traffictypediagnostic: BN6PR11MB4083:EE_
x-microsoft-antispam-prvs: <BN6PR11MB40834E89CB83552D76104639BD1B9@BN6PR11MB4083.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0nAQCI5rn6sG/ZruqzQfWn22/lMlDeY8UUf01OfIdWs4MgQdiBlYNGBFWanqFBtZ4dcoRnAYMlO3hRbOc1GO5qCYmgXuZTEe6HEzkOQbLcgga8nzLQrKHVGjSjyc/G5MjmqqbXYOGdbxgBWhlseOqxdDzbhe91ezRbGu5jU2bFmFNOhJCO+nklgAY3ItbGvotsppFJNsyF6i23Nx/skcKQl1Eyyr9umcO0FYvU+PWQXz4wu69vM5uGmu9ivc2o5fTxUiqDkkA5vgDZqLVzjdSxr6E+qAn6iKAadpZYjoR6nmvn2T4M08G6NXEq+L2CLOdcMwTl9YxGYUS4P6AQJkZaAW8tiwyrWVBUomtx20eWBym8T5x9YStsLk0Wh71Dkxo0vxVl9J0chY66l32rmxPmcea5ZTZ9AlzDEwd33rXc3w3VYudAML4lhdZut6XoEF9d2YhfftSQxjN+7IuPWUWS8TPNkOTYhxQY0ruh/wsIdRnhKzlxNnoZbn4yC3XL/vCX3J3CM+42eWb6FYEmgF3qUTelMMgjrsB4PczQd9NgU+8xySh4AU70oEAGVpXqjuSkOlNZW6X2kII308QicQ8fUme+jvfhWLw//kn2abspaAE+ozpGwA2sLiKfRitGFHIPk8XhQOupQhxHGert/eolDDAJJVoFSOiM6E2BB4tL/rn88G91IPpLlZUs2IzcJt/InnBRHacCYuLVaXTvW1tQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4268.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(508600001)(7696005)(110136005)(2906002)(316002)(8936002)(6506007)(86362001)(122000001)(52536014)(55016003)(82960400001)(33656002)(38100700002)(4744005)(9686003)(53546011)(38070700005)(107886003)(26005)(66556008)(4326008)(66476007)(64756008)(66446008)(8676002)(76116006)(5660300002)(186003)(71200400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzY1R3JFZjY2aXN0eWFYTFk1cy9TQWVVV2JQZHNUUm9DZk45aGVwNXdjaGVk?=
 =?utf-8?B?ekFPZC8yV1IxbW9TQXZmM1k2c1VRN01ZUFJpMCswbGtQUWdNS1htekxuOGZj?=
 =?utf-8?B?UitxT2tyMDRTS3dLREFBOTVoWndWYTNlR1d3d1p1RUNQd0d3TzMray93alRy?=
 =?utf-8?B?NDlvR1JRWmRta3I2dHBGYVhWZ25QZFBQeWZZRTdmMUkzbWM2VHp4QmdNSmll?=
 =?utf-8?B?YlNBZG40eDdzOEQzdnkwb051Q0E4OTVIZGZkYWZTSUp4TnNLUXRZbmlycHdp?=
 =?utf-8?B?dUZ4dTRlUnA1Rzl2cDd2dkszMjZLZXFKT3JCZ1d4YmJKZjN4RUZtOE1hNjV6?=
 =?utf-8?B?N3RQcmxDUDdVT09KV3FUZkcydFNGQkxBSDJyRkVZQnMrdDZIeGhPN3NZeFBC?=
 =?utf-8?B?QkJrUXFrbHE4cGxQL09DcjdTbENkWTMwVThIUlhyb3gwOTZGNFhpanBGakg4?=
 =?utf-8?B?OE9wcHJpVVBEV1RZQnR4R1h4YytwalRZdHVmdjBpdHVpNUErL1lYOXplcGkw?=
 =?utf-8?B?Mi8xa1JrZGlRcEh3czNNWElLczRScTl5M2N6eFdPU3pMUGo3TlRXWVc1TDNh?=
 =?utf-8?B?cSt6S1E5QVJFZTExR01RQ0NGVDVKYW50cWVtZWxkanRmY2l0M3VCWUVaRW9t?=
 =?utf-8?B?Mjd5ZDF1R0ZPNmNXWGg0U1M5V1ovMGZqY1Y2WGcxSVgzeGJRSGRaM0tLcTRi?=
 =?utf-8?B?RG1CNXgxckY4TktOQnpodUJyblZEVzJ1elBEd1NWRlB5UEVvZWl5V1pXQWpK?=
 =?utf-8?B?c3BscnFnbjNCTFJ4NGdCcm53RUVnVnY4OFJtSVdReS9QYTFlbGR0U2Z6aThK?=
 =?utf-8?B?WWxuVnBINEp5MDRZcUl4Q2lQdHJEaWJuc0RzalpvYmxoc1BtTGJHTG0vNE52?=
 =?utf-8?B?R3hvOG9WWkk5Z2tOSFRvY0tYOEdSb0svMjRHZzRtdWRHYVpUNEVITGlsb3F3?=
 =?utf-8?B?d3ZuTDhyNlZqN2JKYlZiQXNHM3AzMjJIampHamVBdDlRTTNGMXp6RytLWGtE?=
 =?utf-8?B?YVZGNFdjQktQSzdhMUtsbXBnbkwyYjFtaVNBeXhianN2c0IzcGV3OG5uTEtn?=
 =?utf-8?B?YTNVcnJJNDliSnNFejYvZDJqU2tmRGllY0hXc1puR0lpc01YSTZzdXE2L1RE?=
 =?utf-8?B?V2kwT2tKcDBBK29abTVTUlVXV3RCTW52cHZXTTc5S25mdGhGWnFLRWh2N21j?=
 =?utf-8?B?d0ZNODlEQXJHK0NpRU93MEJ2N3RXM1pTNXpUMEJ4aUFLRDhjbXlyNkZwcnFj?=
 =?utf-8?B?emdLN3Q5cEpuakF3d0FiNEtMWHlneXd6QmxyMFcrT0JlcS9KTVBSdllTK1E1?=
 =?utf-8?B?TVVrMHhhc2lKL0ltMm9XdmlvN09pYTFvbzZoTHBGU0RsRWFHWHpwZ0QxSUNh?=
 =?utf-8?B?ZnJIOHVzL2p6dEhLK2llZFVNMmE2bE5VdUYxREtlNXRjZWlLVEppK09ySGIx?=
 =?utf-8?B?aGpYZC9ta0R2N3F3MGNBU0RoaGlSSVF3dG9HM1pzaTMvdUY1R1M2VWY4WHNU?=
 =?utf-8?B?bFlIcE10eUk0anFnRGFRcFdrWkRFdjZvQk1XdXlBL29qajhkSER2Mmlid0lI?=
 =?utf-8?B?M1llVnYvMDY0UnVTQXJHaU9vUnNqdUN6TzExTmJ1Rk4yU2twUHArbCs2RzV4?=
 =?utf-8?B?bFhDbGY5TlZNNHo4a1BYTzRCekRxdEdBWGw0ZEZ6QXhOeGFFMEc5WXhKSTBs?=
 =?utf-8?B?c2lpSzRXQkV0NXJ0RGhEYXBqL1Rla0dtWnJBNG5lSTJNdTk1UmJUZHkrWDY3?=
 =?utf-8?B?cEtUUExYVEVvWm9VZjV2VDZRNGhscDlmbWxiRTh6U2ZYVVR0cXoxaFJrQ2Yr?=
 =?utf-8?B?RCtvc2Y1STl6Qng5TzZ3ckc1b1RzbktnZ3U1c1hrNEd6VGUwRG5LNmxTeHJp?=
 =?utf-8?B?V2xFQ2NQQTFBdTA4Q0YvUmN1UnRkdnl1RXJZRmJoM3JXRGsrWlg0ajBQb3U2?=
 =?utf-8?B?clhwcTdpbm1zYjFGbE5ocEx3bmk3L0ZaVGZsSGQyS0JvdHFvYmdXanc0SEg5?=
 =?utf-8?B?YUhMRjVNbzBkdEZOS2RJYXJ2MzAyOVQ1OU9sT1BTdTRZUTNrS0tBTmhCNVBB?=
 =?utf-8?B?NWNmTDZ0a2htNzlXR3E0dnZGOWdiSkJwU0tRVm5Wamg0M2NVT3F6a2tTR1dw?=
 =?utf-8?B?VStXMERUODl1aThYNkE5cUk4a1FyN04rYVdzY3R3RkhqWVkzMW9aYk9uaW9h?=
 =?utf-8?B?TDlOQ3ljaDBYbWYwOFV6L2l2ZEJhUWtoOFBqUENsUkREOGM3NkFiaUJOb1RU?=
 =?utf-8?B?SFZMdmJocFozOWVXR0RlNEg1S3ZhTHNTdHJOTmtncHJnaSsrb0RLYjQyeUtG?=
 =?utf-8?B?Rk5raFlPMFNwaEFmeTRFSjVaWHZpcG13a3hQdHpXNkxWM2pyMTV2eFVpMW9U?=
 =?utf-8?Q?aHc5ALhJIuL+VGFQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4268.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76ed1bb6-c157-47f3-fec8-08da0f25daa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2022 12:40:48.2345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hWmuGbwAVMykhNN3Ghcd5Z1AIvapKh4bQKuToGk8qn5BaYtiH49hRsZkD+JeEZYv3xtF5fpZInt6xJU3g2BNr7U74sDZaeeqGbsjS2Xwn8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Add support for
 double vlan in switchdev
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
Cc: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQW50aG9ueSwNCg0KSSBzZW50IGZpeGVkIHYzIHZlcnNpb24uDQoNClRoYW5rcywNCk1hcnR5
bmENCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE5ndXllbiwgQW50aG9ueSBM
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4gDQpTZW50OiAyNSBtYXJjYSAyMDIyIDIxOjM3
DQpUbzogU3phcGFyLU11ZGxhdywgTWFydHluYSA8bWFydHluYS5zemFwYXItbXVkbGF3QGludGVs
LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQpDYzogV2lrdG9yIFBpbGFy
Y3p5ayA8d2lrdG9yLnBpbGFyY3p5a0BpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHYyIG5ldC1uZXh0XSBpY2U6IEFkZCBzdXBwb3J0IGZvciBkb3VibGUg
dmxhbiBpbiBzd2l0Y2hkZXYNCg0KDQpPbiAzLzI1LzIwMjIgMzoyOSBBTSwgTWFydHluYSBTemFw
YXItTXVkbGF3IHdyb3RlOisNCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGljZV9kdW1teV9wa3Rf
cHJvZmlsZSBpY2VfZHVtbXlfcGt0X3Byb2ZpbGVzW10gPSB7DQo+ICsJSUNFX1BLVF9QUk9GSUxF
KHFpbnFfaXB2Nl90Y3AsIElDRV9QS1RfQ1ZMQU4gfA0KPiArCQkJCSAgICAgICBJQ0VfUEtUX1ZM
QU4gfA0KPiArCQkJCSAgICAgICBJQ0VfUEtUX09VVEVSX0lQVjYgfA0KPiArCQkJCSAgICAgICBJ
Q0VfUEtUX0lOTkVSX1RDUCksDQo+ICsJSUNFX1BLVF9QUk9GSUxFKHFpbnFfaXB2Nl91ZHAsIElD
RV9QS1RfQ1ZMQU4gfA0KPiArCQkJCSAgICAgICBJQ0VfUEtUX1ZMQU4gfA0KPiArCQkJCSAgICAg
ICBJQ0VfUEtUX09VVEVSX0lQVjYgfA0KPiArCQkJCSAgICAgICBJQ0VfUEtUX0lOTkVSX1VEUCks
DQo+ICsJSUNFX1BLVF9QUk9GSUxFKHFpbnFfaXB2NiwgSUNFX1BLVF9DVkxBTiB8DQo+ICsJCQkg
ICAgICAgICAgIElDRV9QS1RfVkxBTiB8DQo+ICsJCQkJICAgSUNFX1BLVF9PVVRFUl9JUFY2KSwN
Cg0KVGhlcmUncyBhIHNwYWNpbmcgaXNzdWUgaGVyZToNCg0KRVJST1I6IGNvZGUgaW5kZW50IHNo
b3VsZCB1c2UgdGFicyB3aGVyZSBwb3NzaWJsZQ0KIzI2MTogRklMRTogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYzoxNDQ2Og0KK15JXkleScKgwqDCoMKgwqDCoMKg
wqDCoMKgIElDRV9QS1RfVkxBTiB8JA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
